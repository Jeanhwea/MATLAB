clear all;
clc;

% x = [300 400 500 600 700 800]';
% y = [40 50 55 60 67 70]'; 
% n = 6;

% x = [0.25 0.37 0.44 0.55 0.60 0.62 0.68 0.70 0.73 0.75 0.82 0.84]';
% y = [2.57 2.31 2.12 1.92 1.75 1.71 1.60 1.51 1.53 1.41 1.33 1.31]'; 
% n = 12;

x = [20 25 30 35 40 45 50 55 60 65]';
y = [13.2 15.1 16.4 17.1 17.9 18.7 19.6 21.2 22.5 24.3]'; 
n = 10;

co = regress(y,[ones(n,1) x]);
aest = co(1);
best = co(2);

xbar = sum(x) / n;
ybar = sum(y) / n;

lxx = sum( (x - xbar).^2);
lyy = sum( (y - ybar).^2);
lxy = sum( (x - xbar) .* (y - ybar));

yest = aest + best .* x;

Q = sum( (y - yest).^2);
U = sum( (yest - ybar).^2);

F = (n-2) * U / Q;

r = lxy / sqrt(lxx * lyy);
sigma2est = Q / (n-2);
sigmaest = sqrt(sigma2est);

% 
% r1 = sigmaest / sqrt(lxx) * 2.228;
% r2 = 2.228 * sigmaest * sqrt(1/n + xbar^2 / lxx);
% 
% x0 = 42;
% y0 = aest + best * x0;
% sigmax = 2.306 * sigmaest * sqrt(1+1/n+(x0-xbar)^2/lxx);


% x1 = [136.5 136.5 136.5 138.5 138.5 138.5 138.5 138.5 140.5 140.5 140.5]';
% x2 = [215 250 180 250 180 215 215 215 180 215 250]';
% y = [6.2 7.5 4.8 5.1 4.6 4.6 4.9 4.1 2.8 3.1 4.3]';
% n = 11;
% x = [ones(n,1) x1 x2];
% regress(y,x)
