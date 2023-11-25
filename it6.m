%Question 1
t=(0:1:8);
X=0.27*(t.^4)-6.8*(t.^3)+50*(t.^2)-7.2*(t)+9.4;
V=diff(X);
A=diff(X,2);
plot(X,'-o');
hold on;
plot(V,'-o');
hold on;
plot(A,'-o');
grid on;
xlabel('t->');
ylabel('Functions->');
legend('Displacement','Velocity','Acceleration');
hold off;
V=

%Question 2
x=(-2*pi:0.1:2*pi);
t3=zeros(1,126);
for i=0:4
        t3=t3+(-1)^i*(x.^(2*i+1)./factorial(2*i+1));
        if i==0 || i==1 || i==4
            plot(x,t3)
            hold on;
        end
end
legend('1 term','2 terms','5 terms');
xlabel('x');
ylabel('Sin x');
title('Taylor Series');
hold off;
