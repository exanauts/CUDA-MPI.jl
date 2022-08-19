# CUDA-MPI.jl

A small script `setup.sh` to set up CUDA aware MPI on moonshot and ThetaGPU.

## On ThetaGPU

DO NOT load any other openmpi module than is loaded when you login onto the GPU
nodes.

## Installation

```
./setup.sh
```

Running `example.jl` should confirm CUDA aware MPI is enabled.
```
> julia --project example.jl
MPI.has_cuda() = true
```
The steps in the setup script have to be executed in your project.

