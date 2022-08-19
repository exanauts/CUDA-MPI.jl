#!/bin/bash

HOSTNAME=`hostname`
DOMAIN=`hostname -d`
if [ "$HOSTNAME" = moonshot ]; then
  export JULIA_MPI_PATH=/disk/local
  export JULIA_CUDA_MEMORY_POOL=none
  export JULIA_MPI_BINARY=system
  export JULIA_CUDA_USE_BINARYBUILDER=false
  julia --project -e 'using Pkg; Pkg.update()'
  julia --project -e 'using Pkg; Pkg.build("MPI"; verbose=true)'
  julia --project -e 'using Pkg; Pkg.build("CUDA"; verbose=true)'
fi
if [ "$DOMAIN" = mcp.alcf.anl.gov ]; then
  export JULIA_CUDA_MEMORY_POOL=none
  export JULIA_MPI_BINARY=system
  export JULIA_CUDA_USE_BINARYBUILDER=false
  julia --project -e 'using Pkg; Pkg.update()'
  julia --project -e 'using Pkg; Pkg.build("MPI"; verbose=true)'
  julia --project -e 'using Pkg; Pkg.build("CUDA"; verbose=true)'
fi
