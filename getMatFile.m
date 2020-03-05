function getMat = getMatFile(path, filename)

% function to load csv files and convert to .mat

data = readtable(path)

save([filename '.mat'], 'data')

end

