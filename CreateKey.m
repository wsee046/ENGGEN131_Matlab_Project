% Step 1: Creating a key
%
%This script creates a key image, which can be used to "lock" or "unlock" 
% a message. The size of the key to create is determined by the size of 
% the message image(s) that need to be encrypted.
%
% Author: Peter Bier

r = input('Enter the number of rows in your message image:');
c = input('Enter the number of columns in your message image:');

% Generate a random number from 1 to 6 for each element in the key
randomArray = randi(6,r,c);

% Generate six 2x2 patterns storing them in a 1D 1x6 cell array
p = CreatePatterns();

% Create a cell array of patterns to act as key, by converting each random
% number to the associated 2x2 pattern
key = GenerateKey(randomArray,p); 

% Convert thy key from a cell array to a grayscale image 
% i.e. a 2D array of uint8 values, so that it can be saved to a file
keyImage = PatternsToImage(key);

keyFilename = input('Enter the filename for your key image (or hit enter to use key.png):','s');

% Use the default name if one wasn't entered
if (length(keyFilename) == 0)
    keyFilename = 'key.png'; % no name entered, so default to 'key.png'
end

% Save our key to a png image
imwrite(keyImage,keyFilename);

% Next embed the key image within another image to hide it.
colourImageFilename = input('Enter the filename of a colour image to embed the key in:','s');
colourImage = imread(colourImageFilename);
hiddenImage = EmbedImage(keyImage,colourImage);

hiddenFilename = input('Enter the filename for your hidden key image (or hit enter to use hiddenKey.png):','s');

% Use the default name if one wasn't entered
if (length(hiddenFilename) == 0)
    hiddenFilename = 'hiddenKey.png'; % no name entered, so default to 'hiddenKey.png'
end

imwrite(hiddenImage,hiddenFilename);

% Display the generated key
figure(1)
imshow(keyImage)
title('Key image');

