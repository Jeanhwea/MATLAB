function [ child ] = mutation( parent, pm )
%MUTATION Summary of this function goes here
%   pm -> probability of mutation

    global a b fun; 
    
    stringlength = size(parent, 2) - 2;
    popsize = size(parent, 1);
    bases = 2.^(stringlength-1:-1:0);
    
    if (rand < pm)
        % mutation point
        mpoint = round(rand*(stringlength-1))+1;
        disp('mutating ...');
        % which one to mutate
        mpop = round(rand*(popsize-1))+1;
        child = parent;
        child(mpop, mpoint)= abs(parent(mpop, mpoint)-1);
        child(:, stringlength+1) = sum(repmat(bases,popsize,1) ...
            .*child(:,1:stringlength),2)*(b-a)/(2.^stringlength-1) + a;
        child(:, stringlength+2) = fun(child(:,stringlength+1));
    else
        child = parent;
    end

end
