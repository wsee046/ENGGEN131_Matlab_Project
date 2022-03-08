function [bwImage] = ExtractImage(embeddedImage)
%ExtractImage extracts a b&w image that has been embedded within a colour
%image
%Inputs:    embeddedImage = a 3D array of uint8 values that contain a
%                    hidden b&w image
%Outputs:   bwImage = a 2D array of uint8 values of the black and white
%                   image embeded inside the color image. 
%Author: W. J. See

%find no of rows and cols in embedded image
[r,c,~] = size(embeddedImage);

%cycle through rows
for i=1:r
    %cycle through columns
    for j=1:c
        %check if sum of rgb values is even
        if mod(sum(embeddedImage(i,j,:)),2) == 0
            %if rgb sum is even, assign black pixel
            bwImage(i,j) = uint8(0);
        %else, sum of rgb values must be odd
        else
            %if rgb sum is odd, assign white pixel
            bwImage(i,j) = uint8(255);
        end
    end
end

end