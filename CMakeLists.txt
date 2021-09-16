cmake_minimum_required(VERSION 3.20)
project(Seminar_Benchmark)

set(CMAKE_CXX_STANDARD 20)

add_executable(Seminar_Benchmark main.cpp mergeSort.cpp mergeSort.h quickSort.cpp quickSort.h heapSort.cpp heapSort.h listGeneration.cpp listGeneration.h ANOVA.cpp ANOVA.h)
