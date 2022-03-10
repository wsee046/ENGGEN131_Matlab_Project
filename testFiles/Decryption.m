% Step 3: Decryption
%
% This script decrypts a ciphered image that has been hidden in another
% one.
%
% Author: Peter Bier

hiddenCipherFilename = input('Enter the filename for your hidden cipher image (or hit enter to use hiddenCipher.png):','s');
% Use the default name if one wasn't entered
if (length(hiddenCipherFilename) == 0)
    hiddenCipherFilename = 'hiddenCipher.png'; % no name entered, so default to 'hiddenKey.png'
end

hiddenKeyFilename = input('Enter the filename for your hidden key image (or hit enter to use hiddenKey.png):','s');
% Use the default name if one wasn't entered
if (length(hiddenKeyFilename) == 0)
    hiddenKeyFilename = 'hiddenKey.png'; % no name entered, so default to 'hiddenKey.png'
end

% Read in images and extract them
hiddenCipherImage = imread(hiddenCipherFilename);
hiddenKeyImage = imread(hiddenKeyFilename);

% Extract the hidden images
cipherImage = ExtractImage(hiddenCipherImage);
keyImage = ExtractImage(hiddenKeyImage);


% Decrypt the cipher image using the key
plainImage = DecryptImage(cipherImage,keyImage);
imwrite(plainImage,'plainImage.png');

% display the decrypted message
figure(3)
imshow(plainImage);
title('Decrypted Image');

