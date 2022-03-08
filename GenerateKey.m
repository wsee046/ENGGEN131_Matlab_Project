function [key] = GenerateKey(ranArray, patterns)
%GenerateKey assembles a 2D cell array to act as a key, where each array
%element is a 2x2 uint8 pattern selected at random.
%Inputs:    n = a 2D m x n array of random integer values between 1 and 6
%           inclusive
%           patterns = a 1x6 cell array containing 6 patterns
%Outputs:   key = a 2D mxn cell array containing patterns to act as a key
%Author: W. J. See

%finds number of rows and cols in ranArray
[r,c] = size(ranArray);

%cycles through each row
for i=1:r
    %cycles through each column
    for j=1:c
        %adds corresponding pattern to key cel array
        key{i,j} = patterns{ranArray(i,j)};
    end
end
end