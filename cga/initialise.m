function [ pop ] = initialise( popsize, stringlength)
%INITIALISE Summary of this function goes here
%   generate initial population

    global a b fun;

    bases = 2.^(stringlength-1:-1:0);
    pop = round(rand(popsize, stringlength+2));
    pop(:,stringlength+1) = sum(repmat(bases,popsize,1) ...
        .*pop(:,1:stringlength),2)*(b-a)/(2.^stringlength-1) + a;
    pop(:,stringlength+2)=fun(pop(:,stringlength+1));

end

