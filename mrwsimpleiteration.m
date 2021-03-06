P = 810400;
T = 570;
R = 8.314;
tolerance = 10e-6;
x0 = 0.1;
i = 1;


mrwFunc = @(x) (R*T + 3.913e-5*P - 0.141/x + 5.517e-6/(x^2))/P;
x1 = mrwFunc(x0);

while  (x1 - x0)/x1 > tolerance
    fprintf('iteration number: %g\n', i)
    disp((x1 - x0)/x1)
    x0 = x1;
    x1 = mrwFunc(x0);
    i = i +1;
end

i = i + 1;
x0 = x1;
x1 = mrwFunc(x0);

fprintf('Final Answer %g\n', x1)
fprintf('Total Iterations %g\n', i)
fprintf('Final Error %g\n', (x1 - x0)/x1)

