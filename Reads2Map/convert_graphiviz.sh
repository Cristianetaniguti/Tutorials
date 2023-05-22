cd Reads2Map/pipelines

for i in $(find . -type f -name "*.wdl"); do
    filename=$(basename -- "$i")
    echo $filename
    filename2=${filename%.*}
    echo $filename2
    java -jar ../../womtool-84.jar graph $i > ../../images/$filename2.gv
    dot -Tsvg ../../images/$filename2.gv > ../../images/$filename2.svg
done

cd ../subworkflows

for i in $(find . -type f -name "*.wdl"); do
    filename=$(basename -- "$i")
    echo $filename
    filename2=${filename%.*}
    echo $filename2
    java -jar ../../womtool-84.jar graph $i > ../../images/$filename2.gv
    dot -Tsvg ../../images/$filename2.gv > ../../images/$filename2.svg
done