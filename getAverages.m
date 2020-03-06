function getAvg = getAverages(datafile, filename)

% simple function to calculate averages of datatable
% load the datafile outputs as a struct
data = load(datafile)

% calculate the mean of the single col of data
% have to convert struct into an array (here as two step struct->table->array
result = mean(table2array(struct2array(data)))

% get environment variable 
% in this case the task array task ID (number of task)
task_no = getenv('$SGE_TASK_ID')

% create a filename string variable
% use strcat here to concatenate strings
% filename passed string, and _, the task number and then the file extension
outname = strcat(filename,'_',task_no,'.mat')

% save the result variable created above
% with the name generated in outname
save(outname, 'result')

% end of function
end
