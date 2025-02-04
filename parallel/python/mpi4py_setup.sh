#!/bin/bash

ml tools/prod
ml GCC OpenMPI
ml SciPy-bundle/2024.05-gfbf-2024a
mkdir -p  ~/venv
virtualenv ~/venv/mpi4pyenv
source ~/venv/mpi4py/bin/activate
python -m pip install mpi4py
deactivate



