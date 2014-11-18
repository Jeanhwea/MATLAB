function [ret] = main()
%MAIN Summary of this function goes here
%   Detailed explanation goes here
    str = 'Hello World';
    disp(str);
    res = add2num(1, 2);
    fprintf(1, '%d\n', res);
    fprintf(1, '%s\n', str);
end

