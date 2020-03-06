# task array basics for matlab 
# Alex Coleman, 2020-03-04

#$ -V -cwd
#$ -l h_rt=00:15:00
#$ -l h_vmem=1G
#$ -t 1-3

# use sed to get the filename from files_to_do.txt
# based on the task number
# i.e. task 1 will select data1.mat
infile=$(sed -n -e "$SGE_TASK_ID p" files_to_do.txt)

# start code
# load matlab
module load matlab

# invoke matlab with nodisplay option 
# -r flag means we take a string as an argument and run it in matlab
# in this case run the getAverages function
# passing file name specified above as infile variable as parameters
# getAverages expects arg1=path to data, arg2=name for output file
matlab -nodisplay -r "getAverages('data/$infile','${infile%.mat}');exit"
