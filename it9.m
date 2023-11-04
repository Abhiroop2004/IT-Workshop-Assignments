%Q1 :   Find the roots of a quadratic equation ax2+bx+c=0
disp("Enter values for quadratic equation of form ax2+bx+c");
a=input("Enter a:");
b=input("Enter b:");
c=input("Enter c:");
[x1,x2]=quad(a,b,c);
disp([x1,x2]);
function [x1,x2]=quad(a,b,c)
    d=b^2-4*a*c;
    x1=(-b+sqrt(d))/2;
    x2=(-b-sqrt(d))/2;
end

%Q2 :   Write a function to find nth fibonacci number
n=input("Enter nth fibonacci:");
c=fib(n);
disp(c);
function a=fib(n)
    a=0;
    b=1;
    for i=1:n-1
        c=a+b;
        a=b;
        b=c;
    end
end

%Q3 :   Write a function for finding whether a number is perfect number
n=input("Enter a number:");
a=perfect(n);
if a==1
    disp('Perfect Number!');
elseif a==0
    disp('Not a Perfect Number!');
end
function a=perfect(n)
    a=0;
    s=0;
    for i=1:(n/2)
        if mod(n,i)==0
            s=s+i;
        end
    end
    if s==n
        a=1;
    end
end