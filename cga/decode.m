function [ y ] = decode( bits, elmin, elmax, b )
%DECODE Summary of this function goes here
%
%   bits is the bits to be decoded
%   elmin is the lower bound
%   elmax is the upper bound
%   b is the number of bits

    y = 0;
    for k = 1:b
        y = y + bits(b+1-k)*2^(k-1);
    end
    y = elmin + (elmax-elmin)*y/(2^b-1);
    
end

