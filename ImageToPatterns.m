function [patterns] = ImageToPatterns(image)
%ImageToPatterns converts an image back into a cell array of 2x2 uint8
%patterns
%Inputs:    image = 2D array of uint8 values containing an image
%Outputs:   patterns = 2D cell array of 2x2 patterns extracted from the
%           image
%Author: W. J. See

%find no of rows and cols in image
[r,c] = size(image);

%cycle through rows/2 (since output has half rows)
for i=1:(r/2)
    %cycle through columns/2 (since output has half columns)
    for j=1:(c/2)
        %extract pattern to a 2x2 array
        pattern(1,1) = image(2*i-1,2*j-1);
        pattern(1,2) = image(2*i-1,2*j);
        pattern(2,1) = image(2*i,2*j-1);
        pattern(2,2) = image(2*i,2*j);
        %add 2x2 pattern array to patterns cell array
        patterns{i,j} = pattern;
    end
end
end