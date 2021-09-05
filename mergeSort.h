//
// Created by manuel on 9/1/21.
//

#ifndef SEMINAR_BENCHMARK_MERGESORT_H
#define SEMINAR_BENCHMARK_MERGESORT_H

void copyArray(int *a, int iBegin, int iEnd, int *b);

void topDownMerge(int *a,int iBegin, int iMiddle, int iEnd, int *b);

void topDownSplitMerge(int *b, int iBegin, int iEnd, int *a);

void mergeSort(int *a, int *b, int n);

#endif //SEMINAR_BENCHMARK_MERGESORT_H
