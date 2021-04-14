clear
clc
x0 = 0.1;
maxIter = 50;
tol = 0.0001;


x=x0;
xold = x0;
for i = 1:maxIter
    x = (810400*x^3-4770.690952*x^2-(5.51733*10^-6)/(-0.141));
    err = abs(x-xold);
    xold = x;
    if (err<tol)
        break;
    end 
end
