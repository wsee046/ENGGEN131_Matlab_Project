% Step 2: Encryption
%
% This script encrypts a binary image (i.e. grayscale image containing
% contrasting black and white pixels), using a key that has been generated
% and then saved as an image.  The resulting cipher image is then embedded
% within a colour image to hide it.
%
% Author: Peter Bier

plainImageFilename = input('Enter the filename of a binary image to encrypt:','s');

% Get image to encrypt
plainImage = imread(plainImageFilename); % will be a binary image (black/white)

keyImageFilename = input('Enter the filename for your key image (or hit enter to use key.png):','s');
% Use the default name if one wasn't entered
if (length(keyImageFilename) == 0)
    keyImageFilename = 'key.png'; % no name entered, so default to 'key.png'
end

% Get key to use
keyImage = imread(keyImageFilename);
% Convert key image to a cell array of patterns that we can work with
key = ImageToPatterns(keyImage);

% Encrypt the binary image using the key
cipher = EncryptImage(plainImage,key);
cipherImage = PatternsToImage(cipher);

% Write out the cipher image (not embbeded)
imwrite(cipherImage,'cipherImage.png');

% Next embed the cipher image within another image to hide it.
colourImageFilename = input('Enter the filename of a colour image to embed the cipher image in:','s');
colourImage = imread(colourImageFilename);
hiddenImage = EmbedImage(cipherImage,colourImage);

hiddenFilename = input('Enter the filename for your hidden cipher image (or hit enter to use hiddenCipher.png):','s');

% Use the default name if one wasn't entered
if (length(hiddenFilename) == 0)
    hiddenFilename = 'hiddenCipher.png'; % no name entered, so default to 'hiddenCipher.png'
end

imwrite(hiddenImage,hiddenFilename);

% Display the key and cipher images
figure(2)
subplot(1,2,1);
imshow(cipherImage)
title('Cipher image');
subplot(1,2,2);
imshow(keyImage);
title('Key image')



