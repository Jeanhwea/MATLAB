function [ child1, child2 ] = crossover( parent1, parent2, pc)
%CROSSOVER Summary of this function goes here
%   pc -> probability of crossover

    global a b fun;
    
    stringlength = size(parent1, 2) - 2;
    popsize = size(parent1, 1);
    bases = 2.^(stringlength-1:-1:0);
    
    if (rand < pc)
        % choose a crossover point
        cpoint = round(rand*(stringlength-2))+1;
        child1 = [parent1(:,1:cpoint) parent2(:, cpoint+1:stringlength)];
        child2 = [parent2(:,1:cpoint) parent1(:, cpoint+1:stringlength)];
        child1(:, stringlength+1) = sum(repmat(bases,popsize,1) ...
            .*child1(:,1:stringlength),2)*(b-a)/(2.^stringlength-1) + a;
        child2(:, stringlength+1) = sum(repmat(bases,popsize,1) ...
            .*child2(:,1:stringlength),2)*(b-a)/(2.^stringlength-1) + a;
        child1(:, stringlength+2) = fun(child1(:,stringlength+1));
        child2(:, stringlength+2) = fun(child2(:,stringlength+1));
    else
        child1 = parent1;
        child2 = parent2;
    end

end

