clear; clc; 
close;
n = input("Enter no of x: "); 
x = zeros(1,n+1);
fx = zeros(1,n+1);
sum1 = 0; 
sum2 = 0; 
for i = 1:n+1
    x(i) = input("enter x: "); 
    fx(i) = input("enter f(x): ");
    sum1 = sum1+ fx(i);
    sum2 = sum2+ (fx(i) * x(i));
end
p = sum2 / sum1; 
p = p/n; 
q = 1-p; 
for j = 1:n+1
    value = sum1* factorial(n)/(factorial(n-x(j))*factorial(x(j)))*(p^x(j))*(q^(n-x(j)));
    disp(string(x(j))+" "+ string(fx(j))+" "+string(value) );
end
