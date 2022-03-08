function [alteredValue] = AlterByOne(value)
%AlterByOne adds 1 to an uint8 value in the range 0 to 254 inclusive,
%subtracts 1 if value is 255
%Input:     value = An integer value between 0 and 255 inclusive
%Output:    alteredValue = An uint8 value that is one more (unless the original value
%           was 255, in which case it is one less)
%Example call:
%y = AlteredByOne(uint8(5))
%this would return the uint 8 value of 6, i.e. y = 6
%Author: Wen Jie See

%checks if input is equal to 255
if value ~= 255
    %adds 1 if input does not equal 255
    alteredValue = value+1;
else
    %subtracts 1 if input equals 255
    alteredValue = value-1;
end
end