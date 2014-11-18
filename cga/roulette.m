function [ newpop ] = roulette( oldpop )
%ROULETTE Summary of this function goes here
%   selection using roulette method

    stringlength = size(oldpop, 2) - 2;
    popsize = size(oldpop, 1);
    newpop = oldpop;
    totalfit = sum(oldpop(:,stringlength+2));
    prob = oldpop(:, stringlength+2) / totalfit;
    prob = cumsum(prob);
    rns = sort(rand(popsize,1));
    fitin = 1; newin = 1;
    while newin <= popsize 
        if (rns(newin) < prob(fitin))
            newpop(newin,:) = oldpop(fitin,:);
            newin = newin+1;
        else
            fitin = fitin+1;
        end
    end

end

