#!/bin/bash

cd P4
javac P4.java

failed=()
passcount=0
totalcount=0

cd ../sample_microIR
for filename in *.microIR; do
    echo "========================================================"
    name=$(basename $filename .microIR)
    microIRfile=$name".microIR"
    miniRAfile=$name".miniRA"
    outputfile=$name".txt"

    cd ../P4
    echo "Translating "$microIRfile" to miniRA..."
    java P4 < ../sample_microIR/$microIRfile > ../miniRA_code/$miniRAfile
    
    cd ../sample_microIR
    echo "Determining output of "$microIRfile"..."
    java -jar ~/Downloads/pgi.jar < $microIRfile > ../microIR_outputs/$outputfile

    cd ../miniRA_code
    echo "Determining output of "$miniRAfile"..."
    java -jar ~/Downloads/kgi.jar < $miniRAfile > ../miniRA_outputs/$outputfile
    
    cd ..
    echo "Comparing outputs..."
    if cmp --silent microIR_outputs/$outputfile miniRA_outputs/$outputfile; then
        echo "Verdict: Passed! :)"
        ((passcount++))
    else
        echo "Verdict: Failed! :("
        failed+=($name)
    fi
    ((totalcount++))

    echo ""
    cd sample_microIR
done

cd ..
rm -rf ./*/*.class
rm -rf ./P4/*/*.class

echo "Passed: "$passcount"/"$totalcount
if (($passcount == $totalcount)); then
    echo "All testcases passed!"
else
    echo "Failed: "${failed[@]}
fi
