function [cipher] = EncryptImage(image,key)
%EncryptImage encrypts a plain image using a key array of patterns to
%obtain an encrypted cipher array of patterns
%Inputs:    image = 2D array of uint8 values containing the black and white
%               plain image to encrypt
%           key = 2D cell array of 2x2 patterns to act as a key array of
%               patterns
%Output:    cipher = a 2D cell array of 2x2 patterns which acts as the
%               cipher array of patterns
%Author: Wen Jie See

%find no of rows and cols of image
[r,c] = size(image);

%cycle through rows
for i=1:r
    %cycle through columns
    for j=1:c
        if image(i,j) < 128
            %if pixel is dark, assign complement of corresponding pattern
            %in key to cipher cell array
            cipher{i,j} = ImageComplement(key{i,j});
        elseif image(i,j) >= 128
            %if pixel is light, assign corresponding pattern
            %in key to cipher cell array
            cipher{i,j} = key{i,j};
        end
    end
end

end