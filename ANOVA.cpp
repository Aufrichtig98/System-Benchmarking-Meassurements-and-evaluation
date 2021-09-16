//
// Created by manuel on 9/15/21.
//

#include <fstream>
#include <vector>
#include <numeric>
#include <valarray>
#include <iostream>

double sum(std::vector<double> toSum) {
    double result = 0;

    for (int i = 0; i < toSum.size(); ++i) {
        result += toSum[i];
    }

    return result;
}

void anova() {

    std::string ammountZero = "1";

    for (int k = 0; k < 3; k++) {

         ammountZero = ammountZero + "0";

        std::fstream heapResult;
        std::fstream mergeResult;
        std::fstream quickResult;

        std::string path = "./result/result" + ammountZero + "kElements";

        std::string createFileHeap = path + "/resultsHeap" + ".txt";
        std::string createFileMerge = path + "/resultsMerge" + ".txt";
        std::string createFileQuick = path + "/resultsQuick" + ".txt";

        heapResult.open(createFileHeap.c_str(), std::ios::in);
        mergeResult.open(createFileMerge.c_str(), std::ios::in);
        quickResult.open(createFileQuick.c_str(), std::ios::in);

        std::vector<std::vector<double>> results(3);
        double tmp;

        //heap result in  results[0], merge results in [1], quick results in [2]
        for (int i = 0; i < 1000; ++i) {
            heapResult >> tmp;
            results[0].push_back(tmp);
            mergeResult >> tmp;
            results[1].push_back(tmp);
            quickResult >> tmp;
            results[2].push_back(tmp);
        }
        heapResult.close();
        quickResult.close();
        mergeResult.close();

        // anova implementation

        int sampleSize = 1000;
        int numberOfGroups = 3;

        double meanHeap = 0;
        double meanMerge = 0;
        double meanQuick = 0;

        double timeHeap = sum(results[0]);
        double timeMerge = sum(results[1]);
        double timeQuick = sum(results[2]);

        meanHeap = timeHeap / sampleSize;
        meanMerge = timeMerge / sampleSize;
        meanQuick = timeQuick / sampleSize;

        double overallMean = (meanHeap + meanMerge + meanQuick)/numberOfGroups;
        std::vector<double> means;
        means.push_back(meanHeap);
        means.push_back(meanMerge);
        means.push_back(meanQuick);

        double SSE = 0;
        for (int i = 0; i < numberOfGroups; ++i) {
            for (int j = 0; j < sampleSize; ++j) {
                SSE += pow((results[i][j] - means[i]), 2);
            }
        }


        double SSR = sampleSize * pow(meanHeap - overallMean, 2) + sampleSize * pow(meanMerge - overallMean, 2)
                     + sampleSize * pow(meanQuick - overallMean, 2);

        double SST = SSR + SSE;

        //degrees of freedom

        int dfTotal = sampleSize*numberOfGroups - 1;
        int dfTreatment = numberOfGroups - 1;
        int dfE = sampleSize*numberOfGroups - numberOfGroups;

        double MST = SSR / dfTreatment;
        double MSE = SSE / dfE;

        double F = MST / MSE;

        std::ofstream anovaResults;
        std::string createFileAnova = path + "/resultsAnova" + ammountZero + "k" + ".txt";
        anovaResults.open(createFileAnova.c_str());
        std::string description = "The value of ";

        anovaResults << description + "SampleSize is: " + std::to_string(sampleSize) << std::endl;
        anovaResults << description + "numberOfGroups is: " + std::to_string(numberOfGroups) << std::endl;

        anovaResults << description + "Heap sum is: " + std::to_string(timeHeap) << std::endl;
        anovaResults << description + "Merge sum is: " + std::to_string(timeMerge) << std::endl;
        anovaResults << description + "Quick sum is: " + std::to_string(timeQuick) << std::endl;

        anovaResults << description + "Heap mean is: " + std::to_string(meanHeap) << std::endl;
        anovaResults << description + "Merge mean is: " + std::to_string(meanMerge) << std::endl;
        anovaResults << description + "Quick mean is: " + std::to_string(meanQuick) << std::endl;

        anovaResults << description + "Overall mean is: " + std::to_string(overallMean) << std::endl;

        anovaResults << description + "SSE is: " + std::to_string(SSE) << std::endl;
        anovaResults << description + "SSR is: " + std::to_string(SSR) << std::endl;
        anovaResults << description + "SST is: " + std::to_string(SST) << std::endl;

        anovaResults << description + "dfTreatment is: " + std::to_string(dfTreatment) << std::endl;
        anovaResults << description + "dfTotal is: " + std::to_string(dfTotal) << std::endl;
        anovaResults << description + "dfE is: " + std::to_string(dfE) << std::endl;

        anovaResults << description + "MST is: " + std::to_string(MST) << std::endl;
        anovaResults << description + "MSE is: " + std::to_string(MSE) << std::endl;

        anovaResults << description + "F is: " + std::to_string(F) << std::endl;

        anovaResults.close();
    }
}

#include "ANOVA.h"
