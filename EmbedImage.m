function [embeddedImage] = EmbedImage(bwImage, colorImage)
%EmbedImage embeds a binary image inside another color image
%Inputs:    bwImage = a 2D array of uint8 values of the black and white
%               image to embed inside the color image. Pixel values will 
%               either be 0 or 255
%           colorImage = a 3D array of uint8 values that the black and 
%               white image will be embedded into
%Outputs:   embeddedImage = a 3D array of uint8 values that contain a
%               hidden black and white image
%Author: Wen Jie See

%pre-define embeddedImage as equal to colorImage
embeddedImage = colorImage;

%find number of rows and columns in bwImage
[r,c] = size(bwImage);

%cycle through rows
for i=1:r
    %cycle through columns
    for j=1:c
        %check if pixel is black or white
        if bwImage(i,j) == 0
            %check if sum of rgb values is odd
            if mod(sum(colorImage(i,j,:)),2) == 1
                %if rgb sum is odd, call function AlterByOne to change r 
                %value by 1 to make rgb sum even
                embeddedImage(i,j,1) = AlterByOne(colorImage(i,j,1));
            end
        elseif bwImage(i,j) == 255
            %check if sum of rgb values is even
            if mod(sum(colorImage(i,j,:)),2) == 0
                %if rgb sum is even, call function AlterByOne to change r 
                %value by 1 to make rgb sum odd
                embeddedImage(i,j,1) = AlterByOne(colorImage(i,j,1));
            end
        end
    end
end

end