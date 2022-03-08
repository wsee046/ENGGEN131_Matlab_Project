function [patterns] = CreatePatterns()
%CreatePatterns creates a 1D cell array containing six special 2x2
%patterns of uint8 values.
%Input:     none
%Output:    patterns = a 1x6 cell array of patterns. It will contain the
%           follow six 2x2 patterns in this order bottom 2 black, top 2 black, left 2
%           black, right 2 black, leading diagonal black, off diagonal black
%Author: Wen Jie See

%creates each pattern in order as specified above. ImageComplement is called to create the complement
%pattern
patterns{1} = uint8([255, 255; 0, 0]);
patterns{2} = ImageComplement(patterns{1});
patterns{3} = uint8([0, 255; 0, 255]);
patterns{4} = ImageComplement(patterns{3});
patterns{5} = uint8([0, 255; 255, 0]);
patterns{6} = ImageComplement(patterns{5});

end