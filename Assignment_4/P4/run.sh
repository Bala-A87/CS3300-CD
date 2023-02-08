#!/bin/bash

green='\033[0;37m'
red='\033[0;32m'
clear='\033[0m'

if [[ $# == 0 ]]; then
    echo -e "Use -h flag for help"
    exit 1
fi

if [[ $# == 1 ]] && [[ $1 == "-h" ]]; then
    echo "Usage: ./run.sh [flags] <files>"
    echo ""
    echo "flags:"
    echo "-h                show this help message"
    echo "-j2m              convert java to microIR"
    echo "-debug            print my output and correct output"
    echo ""
    echo "files:"
    echo ""
    echo "all"
    echo "[1] tests all files in IR folder" 
    echo "[2] if ran with -j2m, will convert all java files to IR and then run all IR files"
    echo ""
    echo "<file>"
    echo "[1] tests tests/input/IR/<file>"
    echo "[2] if ran with -j2m, will convert corresponding file in tests/input/java/ to IR and then run tests/input/IR/<file>"
    exit 1
fi

all=0
j2m=0
debug=0
files=()

for i in $(seq 1 $#)
do
    if [[ ${!i} == "all" ]]; then
        all=1
    elif [[ ${!i} == "-j2m" ]]; then
        j2m=1
    elif [[ ${!i} == "-debug" ]]; then
        debug=1
    else
        files+=("${!i}")
    fi
done

function javaToIr {
    name=$(basename $1 .java)
    java -jar tests/J_M.jar < tests/input/java/$name.java > tests/input/IR/$name.microIR 2>/dev/null
}

function testIR {
    echo "------------------------------------------------"
    echo "Processing $1"
    name=$(basename $1 .microIR)
    if [[ $j2m == 1 ]] && [[ -f tests/input/java/$name.java ]]; then
        java -jar tests/J_M.jar < tests/input/java/$name.java 1>tests/input/IR/$name.microIR 2>/dev/null
    fi
    java -jar tests/M_O.jar < tests/input/IR/$name.microIR 1>tests/output/exec/correct/$name 2>/dev/null
    java P4 < tests/input/IR/$name.microIR 1>tests/output/RA/mine/$name.RA 2>/dev/null
    java -jar tests/R_O.jar < tests/output/RA/mine/$name.RA 1>tests/output/exec/mine/$name 2>/dev/null
    if [[ $(cat tests/output/exec/correct/$name) == $(cat tests/output/exec/mine/$name) ]]
    then
        echo -e "----->" "${green}Noice${clear}"
    else
        echo -e "----->" "${red}sed${clear}"
        if [[ $debug == 1 ]]; then
            echo "--------------"
            echo "correct:"
            cat tests/output/exec/correct/$name
            echo "--------------"
            echo "mine:"
            cat tests/output/exec/mine/$name
        fi
    fi
}

javac P4.java

if [[ $all == 1 ]]
then
    if [[ $j2m == 1 ]]
    then
        for file in tests/input/java/*.java
        do
            javaToIr $file
        done
    fi
    for i in tests/input/IR/*.microIR
    do
        testIR $i
    done
else
    for i in ${files[@]}
    do
        testIR $i
    done
fi