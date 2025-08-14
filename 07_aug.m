a = [5 7; 7 10];
b = [ 7 2
    6 8]; % Another way of initializing a matrice

c = a+b;
d=a-b;
e=a/b; % a multiplied by inverse of b (row by row)
f =a.*b; % Element by element multiplication
g=a./b; % Element by element division

i = adjoint(b);

[r, c] = size(b); % Gives the row and col. of the matrices

% By placing semi-colon at the end of the line, prevents the result of that
% line from getting printed. 

h = zeros(5, 6); % Generates an matrice of row 5 and col. 6 with values 0

detOfA = det(a); 

% Do `clc` to clear all things from command window

disp(h);