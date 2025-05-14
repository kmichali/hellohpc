#!/bin/bash

ml GCC OpenMPI

gfortran ./serial/pi_serial.f90 -o ./serial/pi_serial
gfortran -fopenmp -o openmp/pi_openmp openmp/pi_openmp.f90
mpif90  mpi/pi_mpi.f90 -o mpi/pi_mpi
mpif90 -fopenmp -o hybrid/pi_hybrid hybrid/pi_hybrid.f90
gcc -fopenmp -o openmp/hello_openmp openmp/hello_openmp.c
mpicc -o mpi/hello_mpi mpi/hello_mpi.c
mpicc -fopenmp -o hybrid/hello_hybrid hybrid/hello_hybrid.c
gcc -fopenmp -o openmp/for_openmp openmp/for_openmp.c

