//
// Created by manuel on 9/1/21.
//

#include "listGeneration.h"
#include <fstream>
#include <string>
#include <random>
#include <sys/stat.h>
#include "iostream"

void fileCreation(){

    mkdir("./result",0711);
    mkdir("./result/result10kElements",0711);
    mkdir("./result/result100kElements",0711);
    mkdir("./result/result1000kElements",0711);
    mkdir("./10kElements",0711);
    mkdir("./100kElements",0711);
    mkdir("./1000kElements",0711);

    std::minstd_rand generator;
    generator.seed(1337);
    std::string ammountZero = "0";
    std::string name = "10kListe ";


    for(int k = 0; k < 3; k++) {

        for (int i = 1; i <= 1000; ++i) {

            std::ofstream outfile;
            std::string createFile = "";
            std::string path = "./1" + ammountZero + "kElements";

            createFile = path + "/" + name + std::to_string(i) + ".txt";

            outfile.open(createFile.c_str());

            for (int j = 0; j < 1000 * pow(10, ammountZero.size()); ++j) {
                outfile << std::to_string(generator()) << std::endl;
            }
            outfile.close();

        }
        ammountZero = ammountZero + "0";
        name.insert(1, "0");
    }
}