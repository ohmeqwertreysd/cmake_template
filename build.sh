#!/bin/bash

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
# Clear the color after that
clear='\033[0m'

verbose_echo () {
    echo "------------------------"
    echo -e "\t$1"
    echo "------------------------"
}

if [ -z $* ]; then
    verbose_echo "Build all"
    cmake -S . -B build -DTARGET="all"
    cmake --build build -j 12
    GTEST_COLOR=1 ctest --test-dir build/test --output-on-failure -j12
elif [ $1 == "build" ]; then
    verbose_echo "Build"
    cmake -S . -B build -DTARGET="src"
elif [ $1 = "rebuild" ]; then
    rm -r build/*
    cmake -S . -B build/
elif [ $1 = "clean" ]; then
    rm -r build/*
fi