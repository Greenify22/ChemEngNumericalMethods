function [root,n, finalerror] = bisect(f, xmin, xmax, tol);

x1 = xmin; %x1 and x2 will be changing so I have set it to xmin and xmanx to start with 
x2 = xmax;
n = 0;
f1=f(x1);
f2=f(x2);
tol = 0.001;

if f(x1)*f(x2)>0
    root = NaN;
    error ('There are either no roots or an even number of roots within the interval')
end

while true
        xr = (x1+x2)/2; %
        fr = f(xr);

        if f1*fr<0
            x2=xr;%in this line and the next line, I am halving the interval by changing the minimum or maximum
            f2=fr;
        else
            x1=xr;
            f1=xr;
        end %ends the if statement 
        
        n = n+1;
       
        if (x2-x1)/(2*xr)<= tol
            root = xr;
            finalerror = (x2-x1)/(2*xr);
            break
        end 
    
end%end of the while loop

end
