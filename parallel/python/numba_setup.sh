#!/bin/bash

ml tools/prod
ml SciPy-bundle/2024.05-gfbf-2024a
mkdir -p  ~/venv
virtualenv ~/venv/numbaenv
source ~/venv/numbaenv/bin/activate
python -m pip install numba
deactivate



