cd P1/
javac P1.java

for file in ../sample_minijava/*.java
do
    echo "---------------------------"
    echo Running "$(basename $file)"
    #java P1 < $file > ../../$folderName/$(basename $file).txt
    java P1 < $file
done
echo "---------------------------"

find . -name "*.class" | xargs rm -f