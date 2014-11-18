function [ y ] = encode( element, elmin, elmax, b )
%ENCODE Summary of this function goes here
%
%   element is the element to be encoded 
%   elmin is the lower bound
%   elmax is the upper bound
%   b is the number of bits
% 
%   example ''''
%   
%   >> encode(137.56, 50, 150, 8);

    d = (elmax-elmin)/(2^b-1);
    rnd = round((element-elmin)/d);
    y = zeros(1, b);
    for k = b:-1:1
        ratio = rnd/(2^(k-1));
        if ratio >= 1
            y(b-k+1) = 1;
            rnd=rnd-2^(k-1);
        end
    end

end

