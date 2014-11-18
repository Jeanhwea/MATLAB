clc; clear all;
global a b fun;
a = 50;
b = 150;
fun = @(x)(1./x);
psize = 4;
slength = 4;
p = initialise(psize, slength)

loopflag = 1;
while loopflag
    for k=1:1:psize/2
        [p(2*k-1,:),p(2*k,:)] = crossover(p(2*k-1,:),p(2*k,:), 0.6);
    end
    p = mutation(p, 0.01);
    p = roulette(p);
    loopflag = 0;
    p2 = p
end