# Successful build of the "simpleBuildAgainstTrilinos" example in the Trilinos repository  
After a successful build of Trilinos, this config file can be ran to build the app.cpp file in the https://github.com/trilinos/Trilinos/tree/master/demos/simpleBuildAgainstTrilinos path

I did update the cmake min version in the CMakeLists.txt inside of https://github.com/trilinos/Trilinos/tree/master/demos/simpleBuildAgainstTrilinos as follows:

cmake_minimum_required(VERSION 3.27.0 FATAL_ERROR)
