#!/bin/bash

## declare an array variable that has the path of every mtx
declare -a l1_dsizes=("32kB" "64kB")
declare -a l1_isizes=("32kB" "64kB")
declare -a l2_sizes=("512kB" "1024kB")
declare -a l1d_assoc=("1" "2")
declare -a l1i_assoc=("1" "2")
declare -a l2_assoc=("1" "2")
declare -a cacheline_sizes=("32" "64")


for l1_dsize in "${l1_dsizes[@]}"
do
    for l1_isize in "${l1_isizes[@]}"
    do
        for l2_size in "${l2_sizes[@]}"
        do
            ./build/ARM/gem5.opt \
            -d spec_results/spechmmer/"l1d_size=${l1_dsize}_l1i_size=${l1_isize}_l2_size=${l2_size}_1i_assoc=2_l1d_assoc=2_l2_assoc=8_cacheline_size=64" \
            configs/example/se.py --cpu-type=MinorCPU --caches \
            --l2cache --l1d_size=$l1_dsize --l1i_size=$l1_isize --l2_size=$l2_size --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=8 --cacheline_size=64 \
            --cpu-clock=1GHz \
            -c spec_cpu2006/456.hmmer/src/spechmmer \
            -o "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 \
            spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 100000000
        done
    done
done
