function [decryptedImage] = DecryptImage(cipher, key)
%DecryptImage decrypts a cipher image using the key image
%Inputs:    cipher = 2D array of uint8 values containing the cipher image
%           key = 2D array of uint8 values containing the key
%Output:    decryptedImage = 2D array of uint8 valaues containing the
%               decrypted image
%Author: Wen Jie See

%find no of rows and cols of cipher array
[r,c] = size(key);

%pre-defines decryptedImage as a 2D array of size rxc containing uint8
%values of zeros
decryptedImage = zeros(r,c,'uint8');

%cycle through rows
for i=1:r
    %cycle through columns
    for j=1:c
        if key(i,j) == cipher(i,j)
            %if pixels match, assign white pixel to decrypted image
            decryptedImage(i,j) = uint8(255);
        else
            %if pixels do not match, assign black pixel to decrypted image
            decryptedImage(i,j) = uint8(0);
        end
    end
end            

end