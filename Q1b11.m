%% Simple Fixed Point Iterations

nmax = 100;
tol = 10^-6;
x = 0.1;
xx(1) = x;

for i = 2:nmax
    mrwFunc = @(x) (P + 0.141/(x^2))*(x-(3.913*10^-5))-R*T;

     x = ((810400*x^3)-(4770.690952*x^2)-(5.51733*10^-6)/(-0.141));
     fprintf('x is %g\n', x)
     xx(i) = x; 
     ii = i-1;
     err = abs(xx(i)-xx(i-1));
     if err < tol
         break;
     end
end

disp (['The root of the equation is:' num2str(x) ', the number of iterations is: ' num2str(ii) ' and the final error estimate is: ' num2str(err)])