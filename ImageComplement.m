function [complement] = ImageComplement(image)
%ImageComplement take an image and swaps black for white and white for
%black
%Input:     image = 2D array of uint8 values containing black and white
%           pixels
%Output:     complement = 2D array of uint8 of the complement of the input
%           image
%Author: W. J. See

%finds the size of image array
[r,c] = size(image);

%pre-defines complement array as image array with uint8 format, in case
%user does not pass in uint8 values
complement = uint8(image);

%cycles through each row
for i=1:r
    %cycles through each column
    for j=1:c
        %adds complement of pixel to complement array
        complement(i,j) = 255 - image(i,j);
    end
end

end
