# A simple tasy array example using matlab

Also looks at how to save files for each task and rename .mat output accordingly

## Useage

To use this first clone the repo

```
$ git clone git@github.com:ARCLeeds/task_array_matlab.git
```

Then run the prep_files.sh - which will create .mat files for each .csv in the data folder and and create a files_to_do.txt for the task array.

```
$ ./prep_files.sh
```

Then you can submit the job script to the scheduler 
```
$ qsub task_matlab.sh
```
