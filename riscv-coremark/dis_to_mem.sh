#!/bin/bash

DIS=coremark.dis
OUT=coremark.mem

# Extract starting PC from the first line (e.g., "80000000 <_start>:")
START_ADDR=$(head -n 1 $DIS | cut -d' ' -f1)
ADDR=$((0x$START_ADDR))

# Empty the output file
> $OUT

# Extract exactly 8 hex digits after the colon and increment address
awk -F':' -v start_addr=$ADDR '
{
    hex = $2
    gsub(/^[ \t]+/, "", hex)
    if (hex ~ /^[0-9a-fA-F]{8}/) {
        printf "@%08X\n%s\n", start_addr, substr(hex,1,8)
        start_addr += 4
    }
}
' $DIS >> $OUT

echo "Generated $OUT with incremented addresses"
