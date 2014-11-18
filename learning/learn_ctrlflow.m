%% sequential structure
% input function
num = input('Please input a number: ')

% output function
disp(A)

% pause function
A = 1;
pause(3); % sleep for 3 seconds

%% branch structure
% if statement
flag = 8
if flag < 10
    disp(flag)
end

% if-else statement
x = input('x = ');
if x > 10
    disp(sin(x))
elseif x < 0
    disp(cos(x))
else
    disp(sin(x))
end

% try-catch statement
try 
    clear a
catch
end

%% loop structure
% for statement
A = 1:100;
s = 0;
for k = 1:100
    s = s + A(k);
end
disp(s)

% while statement
while 1
    c = input('input a character', 's');
    if isempty(abs(c))
        break;
    end
end

% a triple loop will be very slow, you may use 
% vectorlization to speed up

