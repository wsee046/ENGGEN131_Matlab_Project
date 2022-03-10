# ENGGEN131_Matlab_Project
Matlab Project on Visual Cryptography

This program will be able to create a key, and encrypt and decrypt a provided black and white image using visual cryptography concepts.
Two colour images will need to be provided in the process of creating a key and a cipher.

To test the program:

You can run the following three matlab scripts found in testFiles folder:
1) CreateKey.m
    This script wil create a key for encryption and decryption. It is preferred to use a unique (not the default) file name when creating the key.
    You will need to provide a colour image that is at least as large as the black and white image/message you want to encrypt. 
    The key will be embeded into the provided colour image. 
    This embeded image will be slightly different from the original provided colour image (very hard to tell visually).
2) Encryption.m
    This script will encrypt a provided black and white image/message. It will use the key image created in CreateKey.m script.
    You will to provide another colour image that is at least as large as the black and white image/message. 
    A cipher image will be created using your b&w image and created key.
    This cipher image will be embeded into the provided colour image.
3) Decryption.m
    This script will decrypt a cipher image when provided the cipher image and the key.
    Three files have been provided in the testFiles folder for you to test this out: hiddenCipher.png, hiddenKey.png.
    Run the script with the default file names and you will decrypt the hidden message in hiddenCipher.png.
