#!/bin/bash

# unset to run binary
LD_PRELOAD_BKP="$LD_PRELOAD"
unset LD_PRELOAD

echo "Running benchmarks"
echo "Press any key to start."
read


time ./benchmark_model --max_secs=300 --num_threads=1 --warmup_runs=1 --num_runs=10000 --graph=models/tflite/full_model.tflite 

echo "finished running full model; press any key to continue"
read

time ./benchmark_model --max_secs=300 --num_threads=1 --warmup_runs=1 --num_runs=10000 --graph=models/tflite/EEA1.tflite

echo "finished running EEA1 model; press any key to continue"
read


time ./benchmark_model --max_secs=300 --num_threads=1 --warmup_runs=1 --num_runs=10000 --graph=models/tflite/EEA2.tflite 

echo "finished running EEA2 model; press any key to continue"
read

time ./benchmark_model --max_secs=300 --num_threads=1 --warmup_runs=1 --num_runs=50000 --graph=models/tflite/EEA2_EEL.tflite

echo "finished running EEA2 Exit Branch Conv layer; press any key to EXIT"
read


# reset LD_PRELOAD
export LD_PRELOAD="$LD_PRELOAD_BKP"
