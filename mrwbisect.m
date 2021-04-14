P = 810400;
T = 570;
R = 8.314;
x_low = 0.001;
x_up = 0.1;
tolerance = 10e-4;
x_mid = (x_up + x_low)/2;
i = 1;
mrwFunc = @(x) (P + 0.141/(x^2))*(x-(3.913*10^-5))-R*T;


while abs(mrwFunc(x_mid)) > tolerance
    disp(abs(mrwFunc(x_mid)))
    if (mrwFunc(x_mid) * mrwFunc(x_up)) < 0
        x_low = x_mid;
    else
        x_up = x_mid;
    end 
    x_mid = (x_up + x_low)/2;
    i = i + 1;
    fprintf('Iteration %g\n', i)
end

%calc solver 5.8573289 e-3 


fprintf('Final Answer %g\n', x_mid)
fprintf('Total Iterations %g\n', i)
fprintf('Final Error %g\n', abs(mrwFunc(x_mid)))
