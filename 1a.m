clear
clc
f = @(x) (810400 + (0.141/(x^2)))*(x - (3.913*10^-5)) - 4738.98 ;
n = 0; %The iterations counter
xmin = 0.001;
xmax = 0.1;
tol = 0.0001;


[x, n, finalerror] = bisect(f, xmin, xmax, tol);

disp (['The root of the equation is:' num2str(x) ', the number of iterations is: ' num2str(n) ' and the final error estimate is: ' num2str(finalerror)])