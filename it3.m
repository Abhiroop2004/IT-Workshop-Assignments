%1st Question
A=[4 -2 6;2 8 2;6 10 3];
B=[8 4 0];
C=A\B;
fprintf('x=%f y=%f z=%f', C(1), C(2), C(3));

%2nd question
v=(10:-1:1);
a=v.^2;
disp(a);

b=v-1;
disp(b);

%3rd Question
P=zeros(4,2);
for i=1:4
    A=.5*ones(1,i*10);
    B=(1:1:i*10);
    C=sum(A.^B);
    P(i,1)=C;
    P(i,2)=i*10;
end
plot(P(:,2),P(:,1),'-bo');
yticks(.999:0.0002:1.0002);
xlabel('N terms');
xticks(10:10:40);
ylabel('Sum');
title('Plot to show sum of the infinite series converges at 1');

%4th question
A=randi(9,3);
B=randi(9,3);
C=randi(9,3);
fprintf("(A+B)*C=A+(B*C) : ");
if((A+B)*C==A+(B*C))
    disp("True");
else
    disp("False");
end
fprintf('A*B*C=C*B*A : ');
if(A*B*C==C*B*A)
    disp('True');
else
    disp('False');
end
fprintf('(A*B)*C=A*(B*C) : ');
if ((A*B)*C==A*(B*C))
    disp('True');
else
    disp('False');
end