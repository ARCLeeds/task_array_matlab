# shell script to prep files

# pull csv files out
files=$(ls data/ | grep csv)

for file in $files;
do
    matlab -nodisplay -r "getMatFile('data/$file','${file%.csv}'); exit";
done

# move files into data folder
mv *.mat data/

# create files_to_do.txt for task array

while read filename;do echo ${filename#data/};done < <(ls data/*.mat) > files_to_do.txt
