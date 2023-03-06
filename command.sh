#!/bin/bash

make -C utilities

PPCG_INCLUDE="/home/elvis/graduate/PolyBenchC-4.2.1/utilities -lm" PPCG=gcc PPCG_OPT="-O3 -mavx2 $1" bash bench.sh

# "--embed-kernel-code --measure --num-record=10 --num-record-ignore=3 --verbose --unroll-copy-shared --max-shared-memory=6144 --strip --target=cuda --memmap --sorted"
# bash command.sh "--unroll-copy-shared --max-shared-memory=98304 --target=cuda --strip "
