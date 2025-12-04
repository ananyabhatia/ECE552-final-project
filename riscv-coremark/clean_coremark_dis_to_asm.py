#!/usr/bin/env python3
"""
clean_riscv_disassembly.py

Improved version: removes self-jumps like:
    L_80003b08:  /* tohost_exit+0x18 */
        jal x0, L_80003b08 <tohost_exit+0x18>   # pseudo j

Usage:
    python3 clean_riscv_disassembly.py -i raw_disasm.txt -o cleaned.s
"""
import re
import argparse
from pathlib import Path

# ---------- CONFIG ----------
ILLEGAL = {
    "csrr", "csrw", "csrs",
    "csrrw", "csrrs", "csrrc",
    "ecall", "ebreak", "mret", "sret"
}
NOP = "addi x0, x0, 0"

# Patterns
# Matches lines that start with an address like "80003b0c:" or "0x80003b0c:" or "L_80003b0c:"
ADDR_LINE_RE = re.compile(r'^\s*(?:L_)?(0x)?([0-9a-fA-F]{6,8})\b(?::|\s)')
# Matches 8-hex instruction-bytes tokens
INSTR_BYTES_RE = re.compile(r'^[0-9a-fA-F]{8}$')
# Matches angle bracket annotations like "<handle_trap+0x18>"
ANGLE_RE = re.compile(r'<[^>]*>')
# Generic address token (6-8 hex digits)
ADDR_TOKEN_RE = re.compile(r'\b([0-9a-fA-F]{6,8})\b')

# ---------- UTILITIES ----------

def label_for(addr):
    """Return label name for a hex address string (lowercase, no 0x)."""
    a = addr.lower().lstrip("0x")
    return f"L_{a}"

def clean_angle(text):
    """Remove angle bracket comment fragments."""
    return ANGLE_RE.sub("", text).strip()

def is_zero_token(tok):
    """Return True for tokens that represent zero target."""
    if tok is None:
        return False
    t = tok.strip().lower()
    return t in ("0", "0x0", "00000000")

def collect_addresses(lines):
    """Find all 6-8 hex tokens that look like addresses and return sorted list."""
    addrs = set()
    for ln in lines:
        m = ADDR_LINE_RE.match(ln)
        if m:
            addrs.add(m.group(2).lower())
        # also sniff tokens inside angle-prefixes or comments
        for t in ADDR_TOKEN_RE.findall(ln):
            if 6 <= len(t) <= 8:
                addrs.add(t.lower())
    return sorted(addrs)

def replace_addr_tokens(line, addr2label):
    """Replace standalone hex tokens with labels when they match an address."""
    def repl(m):
        t = m.group(1).lower()
        return addr2label.get(t, m.group(0))
    return ADDR_TOKEN_RE.sub(repl, line)

def expand_pseudo(mn, ops):
    """Return list of expanded instructions for known pseudoinstructions."""
    mn_l = mn.lower()
    ops = ops.strip()
    if mn_l == "nop":
        return [NOP]
    if mn_l in ("mv", "move"):
        rd, rs = map(str.strip, ops.split(","))
        return [f"addi {rd}, {rs}, 0"]
    if mn_l == "li":
        rd, imm = map(str.strip, ops.split(",",1))
        try:
            val = int(imm,0)
        except:
            return [NOP]
        if -2048 <= val <= 2047:
            return [f"addi {rd}, x0, {val}"]
        hi = (val + (1<<11)) >> 12
        lo = val - (hi << 12)
        return [f"lui {rd}, {hi}", f"addi {rd}, {rd}, {lo}"]
    if mn_l == "j":
        # pseudo 'j target' -> jal x0, target
        return [f"jal x0, {ops}"]
    if mn_l == "jr":
        return [f"jalr x0, 0({ops})"]
    if mn_l == "ret":
        return ["jalr x0, 0(ra)"]
    return None

# ---------- PROCESSOR ----------

def process(lines, addr2label):
    out = []
    last_emitted_label = None   # tracks the last label string (e.g., "L_80003b08")
    label2addr = {v:k for k,v in addr2label.items()}

    in_init = False

    for ln in lines:
        ln_stripped = ln.rstrip("\n")
        # If this line defines an address label (starts with hex addr or L_...)
        m_addr = ADDR_LINE_RE.match(ln_stripped)
        addr = m_addr.group(2).lower() if m_addr else None

        # Emit label if this address is known
        if addr and addr in addr2label:
            lbl = addr2label[addr]
            # preserve any angle-comment on the same line as label if present
            angle = ANGLE_RE.search(ln_stripped)
            comment = f"    /* {angle.group(0).strip('<>')} */" if angle else ""
            out.append(f"{lbl}:{comment}\n")
            last_emitted_label = lbl
            # don't treat presence of label as content to process further on same line;
            # continue to next line — some disassemblies put an instruction on same line,
            # but we'll still process the remainder below if the line contains code after colon.

        # detect start of _init (keep only code after init)
        if "<_init>" in ln_stripped:
            in_init = True
            continue
        if not in_init:
            # skip everything before init
            continue

        # Extract content after possible "addr:" portion
        remainder = ln_stripped
        if ":" in ln_stripped:
            # split only first colon to allow comments later
            remainder = ln_stripped.split(":",1)[1].strip()
        if not remainder:
            continue

        # Drop 8-hex instruction-bytes tokens at start of remainder
        parts = remainder.split(None,1)
        if parts and INSTR_BYTES_RE.fullmatch(parts[0]):
            remainder = parts[1].strip() if len(parts)>1 else ""
            if not remainder:
                continue

        # Clean angle-bracket annotations inside the remainder (we'll keep trailing comments after '#')
        # but we need to preserve comments after '#'
        if "#" in remainder:
            code_part, comment_part = remainder.split("#",1)
            code_part = clean_angle(code_part)
            remainder = code_part.strip() + ("  #"+comment_part if comment_part else "")
        else:
            remainder = clean_angle(remainder)

        # Replace address-like tokens with labels
        remainder = replace_addr_tokens(remainder, addr2label)

        if not remainder:
            continue

        # split mnemonic + operands
        sp = remainder.split(None,1)
        mn = sp[0]
        ops = sp[1] if len(sp)>1 else ""
        mn_l = mn.lower()

        # handle zext.b
        if mn_l == "zext.b":
            try:
                rd, rs = map(str.strip, ops.split(","))
                out.append(f"    andi {rd}, {rs}, 255   # zext.b\n")
            except:
                out.append(f"    {NOP}\n")
            continue

        # Drop illegal CSR/trap instrs
        if any(mn_l.startswith(il) for il in ILLEGAL):
            out.append(f"    {NOP}   # removed {mn}\n")
            continue

        # Expand known pseudos first
        pse = expand_pseudo(mn_l, ops)
        if pse:
            for e in pse:
                # After expansion check for self-jump patterns in expanded text too
                if is_self_jal_line(e, addr, last_emitted_label, label2addr):
                    out.append(f"    {NOP}   # removed self-jump pseudo\n")
                    continue
                out.append(f"    {e}   # pseudo {mn}\n")
            continue

        # REAL INSTRUCTIONS: detect jal x0, target and remove self-jumps or zero-targets
        if is_jal_self_or_zero(mn_l, ops, addr, last_emitted_label, label2addr):
            out.append(f"    {NOP}   # removed self/zero-jump\n")
            continue

        # Otherwise emit as-is (preserve operand spacing)
        if ops:
            out.append(f"    {mn} {ops}\n")
        else:
            out.append(f"    {mn}\n")

    return out

# ---------- Helpers for detecting self-jal ----------

def normalize_target_token(raw_target):
    """
    Given raw target text like:
      "L_80003b08 <tohost_exit+0x18>"
      "L_80003b24"
      "0"
      "0x0"
    Return the canonical first token (strip angle comments and trailing punctuation).
    """
    if not raw_target:
        return ""
    t = raw_target.strip()
    # remove trailing comments starting with '#'
    t = t.split("#",1)[0].strip()
    # remove angle annotations
    t = ANGLE_RE.sub("", t).strip()
    # if there is a comma leftover (rare), take first
    t = t.split(",")[0].strip()
    # sometimes target appears as "L_80003b08 <...>" -> after angle removal it's "L_80003b08"
    # lowercase normalized for our label naming
    return t

def is_jal_self_or_zero(mn_l, ops, current_addr, last_label, label2addr):
    """
    Return True if this is 'jal x0, 0' or 'jal x0, <last_label>' (self-loop),
    or 'jal x0, <label>' where label resolves to same numeric addr as current_addr.
    """
    if mn_l != "jal":
        return False
    if not ops:
        # 'jal label' without rd (i.e., jal with implicit rd=ra) -> not our target
        return False

    # parse rd and target
    parts = ops.split(",",1)
    if len(parts) == 2:
        rd = parts[0].strip()
        raw_target = parts[1].strip()
    else:
        # If form is 'jal label' (no rd), then not a jal x0 form
        return False

    # canonicalize
    rd = rd.lower()
    target = normalize_target_token(raw_target)

    # zero target
    if rd == "x0" and is_zero_token(target):
        return True

    # target equals last emitted label (common case where label printed above)
    if rd == "x0" and last_label and target == last_label:
        return True

    # target is a label name present in label2addr and equal to current addr
    if rd == "x0":
        if target in label2addr:
            try:
                targ_addr = int(label2addr[target], 16)
                if current_addr is not None:
                    try:
                        cur_addr_int = int(current_addr, 16)
                        if targ_addr == cur_addr_int:
                            return True
                    except:
                        pass
            except:
                pass

    return False

def is_self_jal_line(expanded_instr, current_addr, last_label, label2addr):
    """
    Check expanded pseudo-instruction text like "jal x0, L_80003b24" for self-jump.
    """
    # Basic parse
    txt = expanded_instr.strip()
    if not txt.lower().startswith("jal"):
        return False
    rest = txt.split(None,1)[1] if len(txt.split(None,1))>1 else ""
    # rest typically: "x0, L_80003b24"
    parts = rest.split(",",1)
    if len(parts) < 2:
        return False
    rd = parts[0].strip().lower()
    target = normalize_target_token(parts[1].strip())
    if rd != "x0":
        return False
    if is_zero_token(target):
        return True
    if last_label and target == last_label:
        return True
    if target in label2addr and current_addr is not None:
        try:
            if int(label2addr[target],16) == int(current_addr,16):
                return True
        except:
            pass
    return False

# ---------- MAIN ----------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("-i","--input", required=True, help="raw disassembly input file")
    ap.add_argument("-o","--output", required=True, help="cleaned assembly output file")
    args = ap.parse_args()

    lines = Path(args.input).read_text().splitlines(keepends=False)

    # pass 1: collect addresses and create label mapping
    addrs = collect_addresses(lines)
    addr2label = {a: label_for(a) for a in addrs}

    # pass 2: process and emit cleaned lines
    out_lines = process(lines, addr2label)

    Path(args.output).write_text("".join(out_lines))
    print(f"[OK] wrote {args.output} — {len(addr2label)} labels discovered.")

if __name__ == "__main__":
    main()
