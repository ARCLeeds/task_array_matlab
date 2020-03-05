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

ls -l data/*.mat | awk '{print $9}' > files_to_do.txt
