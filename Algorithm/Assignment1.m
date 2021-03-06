% 初始化
n = 8;
D = [            % D为输入的边权重矩阵
    [0 14 25 27 10 11 24 16]
    [0  0 18 15 27 28 16 14]
    [0  0  0 19 14 19 16 10]
    [0  0  0  0 22 23 15 14]
    [0  0  0  0  0 14 13 20]
    [0  0  0  0  0  0 15 18]
    [0  0  0  0  0  0  0 27]
    [0  0  0  0  0  0  0  0]
];
t = zeros(n,n); % 将矩阵t初始化成全零

% 此时, t(i,i) = 0; t(i,i+1)= 0

for r = 2:n-1         % 范围从2到n-1
    for i = 1:n-r     % i的初始值
        j = i + r;
                      % 求一个最小值
        mi = 9999999; % 将mi的初始化成一个无穷大
        for k = i+1:j-1
            w = t(i,k) + t(k,j) +(D(i,k)+ D(k,j)+D(i,j));
            if w < mi 
                mi = w;
            end
        end
        t(i,j) = mi;
    end
end

t(1,n) %输出最终结果