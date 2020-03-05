function getAvg = getAverages(datafile, filename)

% simple function to calculate averages of datatable
data = load(datafile)

result = mean(data{:,1})

task_no = getenv('$SGE_TASK_ID')

outname = strcat(filename,'_',task_no,'.mat')

save(outname, 'result')

end
