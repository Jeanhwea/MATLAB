%% special matrix
O = zeros(2,3)
E = ones(4, 3)
I = eye(5)
M = magic(5)
H = hilb(4) % Hilbert Matrix
T = toeplitz(1:5) % Toeplistz Matrix

%% random number
S  = rand(10, 1)   % random generate
Sn = randn(1, 10)  % generate obeying normal distribution
start = 1, finish = 10;
Sn = start + (start - finish) * rand(10, 1)

%% basic operation
A = [ 1 0 0 0; 3 1 0 0; -5 2 1 0; 7 -3 2 1];
B = [ 1 2 3 4; 2 3 4 5; 3 4 5 6; 4 5 6 7];
k = 3;
A + B
k*A
det(A)
inv(A)

%% dot operation of vectors
a = [1+5i; 2; 3+6i; 7-2i];
b = [2-i; 4+3i; 3-i; 6];
s = sum(conj(a).*b)
s = a'*b
s = dot(a, b)

%% linear equation system
A = [1 2 3; 1 4 9; 1 8 27];
b = [5, -2, 6]';
x = inv(A)*b
x = A\b

%% Jordan Canonical Form
A = [0 3 3; -1 8 6; 2 -14 -10];
jordan(A)
[V J] = jordan(A)

%% eigenvalue eigenvector
A = [1 0 i; 0 2 0; -i 0 1];
eig(A)
[E D] = eig(A)

%% normal
A = [0 3 3; -1 8 6; 2 -14 -10];
norm(A, 1)
norm(A, 2)
norm(A, inf)
norm(A, 'fro')

%% function matrix
syms x
A = [sin(x) exp(x) 1; cos(x) x^2+1 log(x)];
diff(A) 
diff(A, 2)

%% matrix function
A = [0 1; 0 -2];
expA = funm(A, @exp)
expA = expm(A)
sinA = funm(A, @sin)
cosA = funm(A, @cos)

