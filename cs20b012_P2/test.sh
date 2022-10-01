#!/bin/bash

cd P2

javac P2.java

cd ../sample_minijava

for filename in *.java; do
    echo "========================================================"
    name=$(basename $filename .java)
    javafile=$name".java"
    microIRfile=$name".microIR"
    outputfile=$name".txt"
    cd ../P2
    echo "Translating "$javafile" to microIR"
    java P2 < ../sample_minijava/$javafile > ../microIR_codes/$microIRfile
    cd ../sample_minijava
    echo "Determining output of "$javafile
    javac $javafile
    java $name > ../java_outputs/$outputfile
    cd ../microIR_codes
    echo "Determining output of "$microIRfile
    java -jar ~/Downloads/pgi.jar < $microIRfile > ../microIR_outputs/$outputfile
    cd ..
    echo "Comparing outputs"
    if cmp --silent java_outputs/$outputfile microIR_outputs/$outputfile; then
        echo "Verdict: Passed! :)"
    else
        echo "Verdict: Failed! :("
    fi
    echo ""
    cd sample_minijava
done

cd ..

rm -rf ./*/*.class
rm -rf ./P2/*/*.class
