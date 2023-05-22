#!/bin/bash

# Descargar el repositorio de Git y descomprimirlo
git clone https://github.com/ikarus23/MifareClassicTool.git proyectoNFC
cd proyectoNFC/

# Ejecutar el comando PMD
/home/alumno/Descargas/pmd-bin-7.0.0-rc2/bin/pmd check -d "/home/alumno/android/MifareClassicTool-master/Mifare Classic Tool/" --rulesets=/home/alumno/android/custom-ruleset.xml -r /home/alumno/android/resultadosPMD.txt

# Compilar utilizando ./gradlew
cd Mifare\ Classic\ Tool/
export ANDROID_HOME=/home/alumno/android/
export ANDROID_SDK_ROOT=/home/alumno/android/
./gradlew :app:build



#--------------------------------
#Easybuggy
#cd
#git clone https://github.com/k-tamura/easybuggy.git easyBuggy
#cd easyBuggy/
# Ejecutar el comando PMD
#/home/alumno/Descargas/pmd-bin-7.0.0-rc2/bin/pmd check -d "/home/alumno/easyBuggy/" --rulesets=/home/alumno/android/custom-ruleset.xml -r /home/alumno/android/resultadosPMDeasyBuggy.txt
#mvn clean install
