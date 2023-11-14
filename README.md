# CUDA-MPI.jl

Setup of CUDA-aware MPI on Moonshot. It uses `LocalPreferences.toml` to point to an MPI-aware library on moonshot.

Running `example.jl` should confirm CUDA aware MPI is enabled.
```
> julia --project example.jl
MPI.has_cuda() = true
```
