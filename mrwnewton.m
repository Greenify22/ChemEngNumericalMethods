P = 810400;
T = 570;
R = 8.314;
tolerance = 10e-8;
x0 = 0.1;
i = 1;

mrwf = @(x) R*T + 3.913e-5*P - 0.141/x + 5.517e-6/(x^2) - P*x;
mrwdf = @(x) 0.141/(x^2) - 1.1034e-5/(x^3) - P;

x1 = x0 - mrwf(x0)/mrwdf(x0);
error = abs((x1 - x0)/x1);


while error > tolerance
    disp(abs((x1 - x0)/x1))
    x0 = x1;
    x1 =  x0 - mrwf(x0)/mrwdf(x0);
    disp(x1)
    fprintf('iteration number: %g\n', i)
    i = i +1;
    error = abs((x1 - x0)/x1);
end

i = i + 1;
x0 = x1;
x1 = x0 - mrwf(x0)/mrwdf(x0);

fprintf('Final Answer %g\n', x1)
fprintf('Total Iterations %g\n', i)
fprintf('Final Error %g\n', abs((x1 - x0)/x1))

