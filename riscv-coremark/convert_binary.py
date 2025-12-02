#!/usr/bin/env python3

with open('coremark.mem', 'r') as f_in, open('coremark_binary.mem', 'w') as f_out:
    for line in f_in:
        line = line.strip()
        if line.startswith('@'):
            # Keep address lines as-is
            f_out.write(line + '\n')
        elif line:
            # Convert hex bytes to 8-bit binary
            hex_bytes = line.split()
            binary_bytes = [format(int(hb, 16), '08b') for hb in hex_bytes]
            f_out.write(' '.join(binary_bytes) + '\n')