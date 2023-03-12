%Name Surname ID
close all % close all figures
clear
clc
n=6; % Number of squares drawn
f=fibonacci(1:n); % Array of Fibonacci Numbers. (fibonacci is a built-in function that generates i'th Fibonacci Number)
textSizeConstant=200/f(end); % Text size constant is determined by the largest 
% fibonacci number. Text size for square i is f(i)*textSizeConstant
x0=0; % Initial x-coordinate
y0=0; % Initial y-coordinate
figure('units','normalized','outerposition',[0 0 1 1]) % This is to obtain a full-screen figure
axis equal off % This is for visualization
hold on
fibonacciSpiral(n,f,x0,y0,textSizeConstant);
hold off