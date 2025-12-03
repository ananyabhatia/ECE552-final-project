#!/usr/bin/env python3
import sys
import re
from collections import OrderedDict

# ==========================================================
# CONFIGURATION
# ==========================================================
HALT_HEX = "0000000B"
PADDING_NOPS = 4
NOP = "addi x0, x0, 0"

ILLEGAL = {
    "csrr","csrw","csrs","csrrw","csrrs","csrrc",
    "ecall","ebreak","mret","sret"
}

RV32I = {
    "lui","auipc",
    "jal","jalr",
    "beq","bne","blt","bge","bltu","bgeu",
    "lb","lbu","lh","lhu","lw",
    "sb","sh","sw",
    "addi","slti","sltiu","xori","ori","andi",
    "slli","srli","srai",
    "add","sub","sll","slt","sltu","xor","srl","sra","or","and"
}

# ==========================================================
# PSEUDOINSTRUCTIONS
# ==========================================================
def expand_pseudo(mn, ops):
    mn = mn.lower().strip()
    ops = ops.strip()

    if mn == "nop":
        return [NOP]

    if mn in ("mv","move"):
        rd, rs = map(str.strip, ops.split(","))
        return [f"addi {rd}, {rs}, 0"]

    if mn == "not":
        rd, rs = map(str.strip, ops.split(","))
        return [f"xori {rd}, {rs}, -1"]

    if mn == "neg":
        rd, rs = map(str.strip, ops.split(","))
        return [f"sub {rd}, x0, {rs}"]

    if mn == "j":
        return [f"jal x0, {ops}"]

    if mn == "jr":
        return [f"jalr x0, 0({ops})"]

    if mn == "ret":
        return ["jalr x0, 0(ra)"]

    if mn == "li":
        rd, imm = map(str.strip, ops.split(","))
        try:
            val = int(imm, 0)
        except:
            return [NOP]
        if -2048 <= val <= 2047:
            return [f"addi {rd}, x0, {val}"]
        hi = (val + (1 << 11)) >> 12
        lo = val - (hi << 12)
        return [f"lui {rd}, {hi}", f"addi {rd}, {rd}, {lo}"]

    if mn == "beqz":
        rs, lbl = map(str.strip, ops.split(","))
        return [f"beq {rs}, x0, {lbl}"]

    if mn == "bnez":
        rs, lbl = map(str.strip, ops.split(","))
        return [f"bne {rs}, x0, {lbl}"]

    return None


# ==========================================================
# PARSING HELPERS
# ==========================================================
ADDR_RE = re.compile(r'^\s*([0-9a-fA-F]+):')
TARGET_ADDR_RE = re.compile(r'\b([0-9a-fA-F]{6,16})\b')
ANGLE_RE = re.compile(r'<([^>]+)>')


def sanitize_label(sym):
    sym = sym.replace("+", "_plus_").replace("-", "_neg_")
    sym = re.sub(r'[^A-Za-z0-9_]', '_', sym)
    if sym[0].isdigit():
        sym = "L_" + sym
    return sym


# ==========================================================
# FIRST PASS: gather labels
# ==========================================================
def first_pass(lines):
    entries = []
    addr_to_label = OrderedDict()

    for line in lines:
        line = line.rstrip("\n")
        m = ADDR_RE.match(line)
        addr = m.group(1).lower() if m else None

        if addr:
            angle = ANGLE_RE.search(line)
            if angle and line.strip().endswith(":"):
                addr_to_label[addr] = sanitize_label(angle.group(1))

        entries.append({"line": line, "addr": addr})

    # detect branch/jump targets
    for e in entries:
        line = e["line"]
        for m in TARGET_ADDR_RE.finditer(line):
            a = m.group(1).lower()
            if len(a) >= 6:
                if a not in addr_to_label:
                    addr_to_label[a] = "L_" + a

    return entries, addr_to_label


# ==========================================================
# SECOND PASS: generate output asm
# ==========================================================
def produce_asm(entries, addr_to_label):
    out = []
    in_init = False

    for e in entries:
        line = e["line"]
        addr = e["addr"]

        # Emit labels
        if addr in addr_to_label:
            out.append(f"{addr_to_label[addr]}:")

        # Find _init start
        if "<_init>" in line:
            in_init = True
            continue

        if not in_init:
            continue

        # Parse instruction line
        m = ADDR_RE.match(line)
        if not m:
            continue

        after_colon = line.split(":", 1)[1].strip()
        parts = after_colon.split(None, 2)
        if len(parts) < 2:
            continue

        hexcode = parts[0]
        mnemonic = parts[1]
        operands = parts[2] if len(parts) >= 3 else ""
        mn_l = mnemonic.lower()

        # Illegal → nop
        if mn_l in ILLEGAL:
            out.append(f"    {NOP}   # removed illegal {mnemonic}")
            continue

        # Fix zext.b
        if mn_l == "zext.b":
            # Expect: zext.b rd, rs
            try:
                rd, rs = map(str.strip, operands.split(","))
                out.append(f"    andi {rd}, {rs}, 255   # expanded from zext.b")
            except:
                out.append(f"    {NOP}   # malformed zext.b")
            continue

        # Replace numeric addresses with labels
        def repl_target(m):
            target = m.group(1).lower()
            if target in addr_to_label:
                return addr_to_label[target]
            return m.group(0)

        operands = TARGET_ADDR_RE.sub(repl_target, operands)

        # RV32I → keep
        if mn_l in RV32I:
            out.append(f"    {mn_l} {operands}".rstrip())
            continue

        # Pseudo → expand
        expanded = expand_pseudo(mn_l, operands)
        if expanded:
            for ex in expanded:
                out.append(f"    {ex}   # expanded from {mnemonic}")
            continue

        # UNKNOWN → KEEP EXACTLY AS-IS
        full = mnemonic
        if operands:
            full += " " + operands
        out.append(f"    {full}   # unknown, kept as-is")

    # append HALT & padding
    out.append("")
    out.append(f"    .word 0x{HALT_HEX}    # HALT")
    for _ in range(PADDING_NOPS):
        out.append(f"    {NOP}")

    return "\n".join(out)


# ==========================================================
# ENTRY POINT
# ==========================================================
if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 clean_dis_with_zextb.py input.dis output.s")
        sys.exit(1)

    infile, outfile = sys.argv[1], sys.argv[2]
    with open(infile) as f:
        lines = f.readlines()

    entries, addr_to_label = first_pass(lines)
    asm = produce_asm(entries, addr_to_label)

    with open(outfile, "w") as f:
        f.write(asm)

    print(f"[OK] wrote assembly to {outfile}")
    print(f"[INFO] created {len(addr_to_label)} labels")
