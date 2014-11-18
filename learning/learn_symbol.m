%% symbolic variables
a = sym('a')
syms b;

%% symbolic constants
c = sym('3');

%% different method to generate symbol
f1 = '3*x+4';
syms x
f2 = 3*x+4;
f3 = sym('3*x+4');

class(f1)
class(f2)
class(f3)

%% simplify symbolic operation
syms x y
s = (x^2 + y^2)^2 + (x^2 - y^2)^2;
simplify(s)
simple(s)

%% swap between symbol and number
% sym
% eval

%% symbol operation
syms a b x y;
f1 = a^3 - b^3;
factor(f1)

f2 = (3*x^2 + 8*y^2)*(-x^2 + 3*y);
expand(f2)

f3 = 3*x^2 + 4*x^2 + 5*x^2*y;
collect(f3)

%% symbol on advanced math
syms x a
f1 = x^3 - 9;
subs(f1, 3)

y = (sin(x+a) - sin(x-a))/x;
limit(y, 0)

y2 = sqrt(1+exp(x));
diff(y2)
diff(y2, 2)
diff(y2, 3)

y4 = abs(1-x);
int(y4, 1, 2)

syms n
f = 1/n^2;
s1 = symsum(f, n, 1, inf)

yt= (1+x+x^2)/(1-x+x^2);
taylor(f, x, 6, 1)


clear
syms x
solve(x + x*exp(x) -10)

% equation system
[x y] = solve('1/x^3 + 1/y^3 -28', '1/x + 1/y -4', 'x, y')

% differential equation system
dsolve('Dy - (x^2 + y^2)/x^2/2', 'x')