% 1. Transpose of matrix A

A = [1 2 3
    4 5 6
    7 8 9];

transposeOfA = A';
anotherThing = A.';

% Above both will be the same (for real numbers), a simple transpose

disp(anotherThing);


A1= [1+3i 2+4i 5+8i
    3+1i 4+2i 8+5i
    9+4i 6+7i 1+8i];

% Even if we use variable 'j', it will treat it as 'i', iota

transposeOfA1 = A1'; % Transpose (with conjugate of each elements)
transposeWithoutConjugate = A1.'; % Transpose (but without conjugate)

% Above two will be diffrenret for complex number, the former will have
% tranpose+conjugate, while the later will only havve transpose

disp(transposeOfA1);
disp(transposeWithoutConjugate);

% 3. Array

x = 1:1:100; % First one is start, second is step size, third is final
x1 = 1:2:100;

a = reshape(5:53,7,7); % Make a matrix of size 7x7, with elements going from 5 to 53

disp(a);

% 4. Sub Matrix

i = reshape(1:25,5,5);
j = i';

k = j(1:2:5, 1:2:5);
l = j(1:1:3, 1:1:3);
m= j([2 3], [1 4]);

disp(k);

% 5. Difference between a/b, a./b and a\b

% a/b is a multiplied by inverse of b (or matrix divison)
% a./b is element by element division
% a\b is b*inverse(a) or b/a

% 6. a^b (Take b in power of a)

a = 3;
b = 4;

power = a ^ b;

% If we use ^ directly between any two matrixes, then it will give us
% error, as ^ doesn't make sense in between error, i.e. A^B gives error

% 7. A.^B (Element by element power of matrix)

A = [5 6
    4 6];

B = [2 3
    1 6];

C = A.^B;

disp(C);

% 8.Equations

A=[1 2 3
    4 5 6
    7 8 9];
B = 6;

K1 = [1 2 3
    6 7 8];
K2 = 1+2j; % here, 'j' is iota (will be treated as 'i')

x = K1*A; % K1 ,multiplied by A matrix
y = K2*A; % K2, is multipled as a scalar or constant with A matrix

disp(y);

% 9. Plotting Graphs

x = 1:1:100; % An array from 1 to 100 (with step 1)
y1 = x.^2;
y2= 5*x;
y3 = 3*x + 2;

plot(x, y1); % y1 = x^2 graph. here, y-axis will have y1 and x-axis will have x
figure
plot(y2, x); % Here y-axis will have x and x-axis will have y2
figure
plot(x, y3);

% Putting figure in between, we can get seperate windows with each graph


% 10. Graph of other functions in single grapgh

x = 0:pi/100:5*pi;
y1 = 2*sin(x);
y2 = sin(x);
y3 = 0.5*sin(x);

% All graph in one plot
plot(x, y1);
hold on
plot(x, y2);
hold on
plot(x, y3);

plot(x, y1, x, y2, x, y3); % Another method