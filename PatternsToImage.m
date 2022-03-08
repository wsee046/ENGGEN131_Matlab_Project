function [patternImage] = PatternsToImage(patterns)
%PatternsToImage takes a cell array of patterns and converts it to a
%grayscale image
%Input:     patterns = a 2D mxn cell array of 2x2 patterns
%Output:    patternImage = a 2D array of uint8 values with the pixels
%           assembled into a single image. The array will have twice the number of
%           rows and columns as the input array
%Author: W. J. See

%finds no of rows and cols of patterns array
[r,c] = size(patterns);

%predefines patternImage as a 2D array of size 2*r by 2*c of uint8 value of
%zeros
patternImage = zeros(2*r,2*c,'uint8');

%cycle through each row
for i=1:r
    %cycle through each column
    for j=1:c
        %extracts the pattern
        pattern = patterns{i,j};
        
        %extracts each pixel into patternImage array
        patternImage(2*i-1,2*j-1) = pattern(1,1);
        patternImage(2*i-1,2*j) = pattern(1,2);
        patternImage(2*i,2*j-1) = pattern(2,1);
        patternImage(2*i,2*j) = pattern(2,2);
    end
end

end