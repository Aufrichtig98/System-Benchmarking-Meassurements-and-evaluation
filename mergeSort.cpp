//
// Created by manuel on 9/1/21.
//

#include "mergeSort.h"

//
// Sort by calling topDownMergeSort (a,b, length(a))
//


void copyArray(int *a, int iBegin, int iEnd, int *b){
    for (int k = iBegin; k < iEnd; k++) {
        b[k] = a[k];
    }
}

void topDownMerge(int *a,int iBegin, int iMiddle, int iEnd, int *b){
    int i = iBegin;
    int j = iMiddle;

    for (int k = iBegin; k < iEnd; k++){
        if (i < iMiddle && (j >= iEnd || a[i] <= a[j])) {
            b[k] = a[i];
            i++;
        } else {
            b[k] = a[j];
            j++;
        }
    }
}

void topDownSplitMerge(int *b, int iBegin, int iEnd, int *a){
    if(iEnd - iBegin <= 1)
        return;
    int iMiddle = (iEnd + iBegin)/2;

    topDownSplitMerge(a, iBegin, iMiddle, b);
    topDownSplitMerge(a, iMiddle, iEnd, b);

    topDownMerge(b, iBegin, iMiddle, iEnd, a);
}

void mergeSort(int *a, int *b, int n){
    copyArray(a, 0, n, b);
    topDownSplitMerge(b,0,n,a);
}

