clc; clear; close; clear all; 
disp("Enter number of observations: ");
n = input("\");
disp("Enter the values of x: ");
for i = 1:n
    X(1,i) = input("\");
end
disp("Enter the frequencies: "); 
for j = 1:n
    F(1,j) = input("\");
end
disp("The mean of the distribution is = ");
Mean = sum(F.*X)/sum(F);
disp(Mean);
for i = 1:n
    EF(1,i) = sum(F)*exp(-Mean)*Mean^(X(i))/factorial(X(i));
end
disp("The Given frequencies are : ");
disp(F);
disp("The Expected frequencies are: ");
disp(EF);
plot2d3(0:n-1,F);
plot2d(0:n-1, EF);
