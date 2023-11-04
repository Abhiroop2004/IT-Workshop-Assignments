%Question 1
t=(0:0.001:360);
y1=sind(t);
y2=cosd(t);
y3=1./y1;
y4=1./y2;
y5=t.*t;
y6=t.*(t.*t);

subplot(3,2,1);
plot(t,y1);
title('Sin');
axis([0,360,-1,1]);

subplot(3,2,2);
plot(t,y2);
title('Cos');
axis([0,360,-1,1]);

subplot(3,2,3);
plot(t,y3);
title('Cosec');
axis([0,360,-25,25]);

subplot(3,2,4);
plot(t,y4);
title('Sec');
axis([0,360,-25,25]);

subplot(3,2,5);
plot(t,y5);
title('Square');

subplot(3,2,6);
plot(t,y6);
title('Cube');

sgtitle('PLOTS');

%Question 2
temp=[58 73 73 53 50 48 56 73 73 66 69 74 82 84 91 93 89 91 80 59 69 56 64 63 66 63 50];
days=(1:1:length(temp));

subplot(4,1,1);
h=histogram(temp);

subplot(4,1,2);
bar(temp);

subplot(4,1,3);
stairs(temp);

subplot(4,1,4);
f=zeros(1,4);
for i=1:length(temp)
    if(temp(i)>90)
        f(1)=f(1)+1;
    elseif(temp(i)>=80)
        f(2)=f(2)+1;
    elseif(temp(i)>=70)
        f(3)=f(3)+1;
    else
        f(4)=f(4)+1;
    end
end
pie(f);
legend('Very Hot','Hot','Warm','Pleasant');
