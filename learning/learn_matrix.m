A = [1 2 3; 4 5 6; 7 8 9];

% spacial matrixs
ones(3);
zeros(4);

% indexing matrixs
A(2, 3);
A(2);
[m, n] = find(A == 8);
ind = find(A == 8);
ind = sub2ind(size(A), m, n);

% reshape matrixs
H = reshape(A, 9, 1);
I = A(:);

J = [1 2 3; 4 5 6];
K = reshape(J, 3, 2);

% transpose
L = K';

% partition of matrix
M = A(1,:);
M = A(:,1);
M = A(1, 1:end -1) % using keyword 'end' to index a matrix
N = A(1, 1:2);
N = A([1 2], [2 3]) % monitor of a matrix

% delete elements of a matrix
M(2) = [];
A(1,:) = [];

% expanding matrix
Q = repmat(A, 2, 3)


R = [1 2 3 3 3 4 4];
S = unique(R) % make element in a matrix unique


