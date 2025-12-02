#!/bin/bash

set -e

BASEDIR=$PWD
CM_FOLDER=coremark

cd $BASEDIR/$CM_FOLDER

echo "======================================"
echo "Building CoreMark for RV32I Baremetal"
echo "======================================"

# Clean previous builds
make PORT_DIR=../riscv32im-baremetal clean || true

# Compile CoreMark for RV32I baremetal
# Override PORT_CFLAGS so Makefile doesn't need edits
make PORT_DIR=../riscv32im-baremetal \
     PORT_CFLAGS="-O2 -static -std=gnu99 -fno-common -fno-tree-loop-distribute-patterns -march=rv32i_zicsr_zifencei -mabi=ilp32" \
     compile ITERATIONS=100

# Move the resulting binary to the base directory
mv coremark.bare.riscv ../coremark.rv32i.bare.riscv

echo "======================================"
echo "Build complete: coremark.rv32i.bare.riscv"
echo "======================================"
