#!/bin/bash

## declare an array variable that has the path of every mtx
# declare -a l1_dsizes=("32kB" "128kB")
declare -a l1_isizes=("64kB")
# declare -a l2_sizes=("512kB" "1024kB")
# declare -a l1d_assocs=("1" "2")
# declare -a l1i_assocs=("1" "2")
# declare -a l2_assocs=("1" "2")
# declare -a cacheline_sizes=("32" "64")

l1_dsize="64kB"
l1_isize="32kB"
l2_size="2048kB"
l1d_assoc="2"
l1i_assoc="2"
l2_assoc="8"
cacheline_size="64"

# bzip
for l1_isize in "${l1_isizes[@]}"
do
    ./build/ARM/gem5.opt \
    -d spec_results/specbzip/"l1d_size=${l1_dsize}_l1i_size=${l1_isize}_l2_size=${l2_size}_l1i_assoc=${l1i_assoc}_l1d_assoc=${l1d_assoc}_l2_assoc=${l2_assoc}_cacheline_size=${cacheline_size}" \
    configs/example/se.py \
    --cpu-type=MinorCPU --caches \
    --l2cache --l1d_size=$l1_dsize --l1i_size=$l1_isize --l2_size=$l2_size --l1i_assoc=$l1i_assoc --l1d_assoc=$l1d_assoc --l2_assoc=$l2_assoc --cacheline_size=$cacheline_size \
    --cpu-clock=1GHz \
    -c spec_cpu2006/401.bzip2/src/specbzip \
    -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000
done

# mcfc
for l1_dsize in "${l1_dsizes[@]}"
do
    ./build/ARM/gem5.opt \
    -d spec_results/specmcf/"l1d_size=${l1_dsize}_l1i_size=${l1_isize}_l2_size=${l2_size}_l1i_assoc=${l1i_assoc}_l1d_assoc=${l1d_assoc}_l2_assoc=${l2_assoc}_cacheline_size=${cacheline_size}" \
    configs/example/se.py \
    --cpu-type=MinorCPU --caches \
    --l2cache --l1d_size=$l1_dsize --l1i_size=$l1_isize --l2_size=$l2_size --l1i_assoc=$l1i_assoc --l1d_assoc=$l1d_assoc --l2_assoc=$l2_assoc --cacheline_size=$cacheline_size \
    --cpu-clock=1GHz \
    -c spec_cpu2006/429.mcf/src/specmcf \
    -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000
    
done


# hmmer
for l1_dsize in "${l1_dsizes[@]}"
do
    ./build/ARM/gem5.opt \
    -d spec_results/spechmmer/"l1d_size=${l1_dsize}_l1i_size=${l1_isize}_l2_size=${l2_size}_l1i_assoc=${l1i_assoc}_l1d_assoc=${l1d_assoc}_l2_assoc=${l2_assoc}_cacheline_size=${cacheline_size}" \
    configs/example/se.py --cpu-type=MinorCPU --caches \
    --l2cache --l1d_size=$l1_dsize --l1i_size=$l1_isize --l2_size=$l2_size --l1i_assoc=$l1i_assoc --l1d_assoc=$l1d_assoc --l2_assoc=$l2_assoc --cacheline_size=$cacheline_size \
    --cpu-clock=1GHz \
    -c spec_cpu2006/456.hmmer/src/spechmmer \
    -o "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 \
    spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 100000000
done


# sjeng
for l1_dsize in "${l1_dsizes[@]}"
do
    ./build/ARM/gem5.opt \
    -d spec_results/specsjeng/"l1d_size=${l1_dsize}_l1i_size=${l1_isize}_l2_size=${l2_size}_l1i_assoc=${l1i_assoc}_l1d_assoc=${l1d_assoc}_l2_assoc=${l2_assoc}_cacheline_size=${cacheline_size}" \
    configs/example/se.py \
    --cpu-type=MinorCPU --caches \
    --l2cache --l1d_size=$l1_dsize --l1i_size=$l1_isize --l2_size=$l2_size --l1i_assoc=$l1i_assoc --l1d_assoc=$l1d_assoc --l2_assoc=$l2_assoc --cacheline_size=$cacheline_size \
    --cpu-clock=1GHz \
    -c spec_cpu2006/458.sjeng/src/specsjeng \
    -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000
done


# lbm
for l1_dsize in "${l1_dsizes[@]}"
do
    ./build/ARM/gem5.opt \
    -d spec_results/speclibm/"l1d_size=${l1_dsize}_l1i_size=${l1_isize}_l2_size=${l2_size}_l1i_assoc=${l1i_assoc}_l1d_assoc=${l1d_assoc}_l2_assoc=${l2_assoc}_cacheline_size=${cacheline_size}" \
    configs/example/se.py \
    --cpu-type=MinorCPU --caches \
    --l2cache --l1d_size=$l1_dsize --l1i_size=$l1_isize --l2_size=$l2_size --l1i_assoc=$l1i_assoc --l1d_assoc=$l1d_assoc --l2_assoc=$l2_assoc --cacheline_size=$cacheline_size \
    --cpu-clock=1GHz -c spec_cpu2006/470.lbm/src/speclibm \
    -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
done