%Question 1
X=(0:5:50);
Y1=X.^2+2*X-2;
Y2=3*X.*log(X+1);
Y3=2*X.^3;
Y4=10*log10(X+1);
Y5=2*X.*log10(X)+2*X.^2;
plot(X,Y1,'-ro',X,Y2,'-yo',X,Y3,'-bo',X,Y4,'-co',X,Y5,'-ko');
xticks(0:5:50);
xlabel('X');
ylabel('Y');
legend('Y1','Y2','Y3','Y4','Y5');
title('Plotting functions of X');

%Question 2
A=randi([1,20],5,5);
X=sort(A(1,:));
plot(X,A(2,:),'-ro',X,A(3,:),'-bo',X,A(4,:),'-co',X,A(5,:),'-ko');
xlabel('Sorted row');
ylabel('Unsorted row');
title('Sorted vs Un-sorted');


%Question 3
X=(1:5);
Y=[125,130,95,120,180];
bar(X,Y,'b');
title('Bar Chart');
subplot(3,2,1);
stem(X,Y,'g');
title('Stem Chart');
subplot(3,2,2);
stairs(X,Y,'r');
title('Staircase Chart');
subplot(3,2,3);
pie(Y);
title('Pie Plot');
subplot(3,2,4);
for i=1:5
    Y(i)=1-Y(i)/sum(Y);
end
plot(X,Y,'-ko');
title('Probability of drought');
subplot(3,2,5);
sgtitle('5 year average Rainfall Plotting');