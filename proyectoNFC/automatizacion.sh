#!/bin/bash

# Descargar el repositorio de Git y descomprimirlo
git clone https://github.com/ikarus23/MifareClassicTool.git proyectoNFC
cd proyectoNFC/

# Compilar utilizando ./gradlew
cd Mifare\ Classic\ Tool/
./gradlew

# Ejecutar el comando PMD
/home/alumno/Descargas/pmd-bin-7.0.0-rc2/bin/pmd check -d "/home/alumno/android/MifareClassicTool-master/Mifare Classic Tool/" --rulesets=/home/alumno/android/custom-ruleset.xml -r /home/alumno/android/resultadosPMD.txt

#--------------------------------
#Easybuggy
cd
git clone https://github.com/k-tamura/easybuggy.git easyBuggy
cd easyBuggy/
mvn clean install
