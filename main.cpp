#include <iostream>
#include "mergeSort.h"
#include "quickSort.h"
#include "heapSort.h"
#include "listGeneration.h"
#include "fstream"
#include <random>
#include <sys/stat.h>
#include "chrono"
#include "ANOVA.h"

int main() {
    fileCreation();
    std::vector<std::vector<std::vector<int>>> allToSort;
    std::string ammountZero = "10";

    for (int k = 0; k < 3; ++k) {

        // opens txt stream to write results into the specific txt file

        std::ofstream heapResult;
        std::ofstream mergeResult;
        std::ofstream quickResult;

        std::string path = "./result/result" + ammountZero + "kElements";

        std::string createFileHeap = path + "/resultsHeap" + ".txt";
        std::string createFileMerge = path + "/resultsMerge" + ".txt";
        std::string createFileQuick = path + "/resultsQuick" + ".txt";

        heapResult.open(createFileHeap.c_str());
        mergeResult.open(createFileMerge.c_str());
        quickResult.open(createFileQuick.c_str());

        for (int i = 1; i <= 1000; i++) {

            std::vector<int> toSort;
            std::fstream inputFile;

            inputFile.open("./" + ammountZero + "kElements/"
            + ammountZero + "kListe " + std::to_string(i) + ".txt",std::ios::in);
            int number;
            for (int j = 0; j < 1000 * pow(10,k); ++j) {
                inputFile >> number;
                toSort.push_back(number);
            }
            inputFile.close();

            int arraySort[toSort.size()];
            int tmpArray[toSort.size()];

            std::copy(toSort.begin(), toSort.end(),arraySort);
            auto clockStart = std::chrono::high_resolution_clock::now();
            quickSort(arraySort, 0, toSort.size());
            auto clockEnd = std::chrono::high_resolution_clock::now();
            std::chrono::duration<double> elapsedTime = (clockEnd - clockStart);
            quickResult << elapsedTime.count() << std::endl << std::endl;

            std::copy(toSort.begin(), toSort.end(),arraySort);
            clockStart = std::chrono::high_resolution_clock::now();
            mergeSort(arraySort, tmpArray, toSort.size());
            clockEnd = std::chrono::high_resolution_clock::now();
            elapsedTime = (clockEnd - clockStart);
            mergeResult << elapsedTime.count() << std::endl;

            std::copy(toSort.begin(), toSort.end(),arraySort);
            clockStart = std::chrono::high_resolution_clock::now();
            heapSort(arraySort, toSort.size());
            clockEnd = std::chrono::high_resolution_clock::now();
            elapsedTime = (clockEnd - clockStart);
            heapResult << elapsedTime.count() << std::endl;

        }
        ammountZero = ammountZero + "0";

        heapResult.close();
        mergeResult.close();
        quickResult.close();
    }

    anova();

    return 0;
}
