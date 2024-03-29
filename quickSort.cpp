//
// Created by manuel on 9/1/21.
//

#include "quickSort.h"

//
// Sort by calling quickSort (*a, 0, a.length-1)
//

void swap(int *a , int *b) {
    int t = *a;
    *a = *b;
    *b = t;
}

int partition(int *a, int low, int high){
    int pivot = a[high];
    int i = (low - 1);

    for (int j = low; j <= high - 1; j++) {
        if (a[j] <= pivot){
            i++;
            swap(&a[i], &a[j]);
        }
    }

    swap(&a[i+1], &a[high]);
    return (i+1);
}

void quickSort(int *a, int low, int high){
    if (low < high){
        int pi = partition(a, low, high);

        quickSort(a, low, pi - 1);
        quickSort(a, pi + 1, high);
    }
}
