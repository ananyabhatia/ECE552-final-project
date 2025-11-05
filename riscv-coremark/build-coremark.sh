#!/bin/bash

set -e

BASEDIR=$PWD
CM_FOLDER=coremark

cd $BASEDIR/$CM_FOLDER

echo "======================================"
echo "Building CoreMark for RV32IM Baremetal"
echo "======================================"

# Clean previous builds
make PORT_DIR=../riscv32im-baremetal clean || true

# Compile CoreMark for RV32IM baremetal
make PORT_DIR=../riscv32im-baremetal compile ITERATIONS=100

# Move the resulting binary to the base directory
mv coremark.bare.riscv ../coremark.rv32im.bare.riscv

echo "======================================"
echo "Build complete: coremark.rv32im.bare.riscv"
echo "======================================"
