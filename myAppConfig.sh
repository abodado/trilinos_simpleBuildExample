#!/bin/bash

export CC=gcc
export OMPI_CC=gcc
export CXX=g++
export OMPI_CXX=g++

export TRILINOS_MAIN=/s/bsweetma/trilinos
export TRILINOS_HOME=${TRILINOS_MAIN}/Trilinos-master-27Aug2024
export TrilinosInstallDir=${TRILINOS_HOME}/__INSTALL

export myApp_HOME=${TRILINOS_MAIN}/myApp
export myAppBuildDir=${myApp_HOME}/buildMyApp
mkdir ${myAppBuildDir}
cd ${myAppBuildDir}

cmake \
-D CMAKE_PREFIX_PATH=${TrilinosInstallDir} \
-D CMAKE_C_COMPILER=$(which mpicc) \
-D CMAKE_CXX_COMPILER=$(which mpicxx) \
-D CMAKE_EXE_LINKER_FLAGS:STRING="-lgfortran -lgomp -lm" \
${TRILINOS_HOME}/demos/simpleBuildAgainstTrilinos
make -j4