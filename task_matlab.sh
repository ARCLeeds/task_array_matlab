# task array basics for matlab 
# Alex Coleman, 2020-03-04

#$ -V -cwd
#$ -l h_rt=00:15:00
#$ -l h_vmem=1G
#$ -t 1-3

infile=$(sed -n -e "$SGE_TASK_ID p" files_to_do.txt)

# start code
module load matlab

matlab -nodisplay -r "getAverages('data/$infile','${infile%.mat}');exit"
