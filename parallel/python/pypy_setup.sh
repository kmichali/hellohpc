#!/bin/bash

ml tools/prod
ml SciPy-bundle
mkdir -p ~/venv/pypyenv
virtualenv ~/venv/pypy
wget https://downloads.python.org/pypy/pypy3.10-v7.3.17-linux64.tar.bz2
tar xvzf pypy3.10-v7.3.17-linux64.tar.bz2 
ll ~/venv/pypyenv/bin/pypy3.10-v7.3.17-linux64/bin/pypy pypy

