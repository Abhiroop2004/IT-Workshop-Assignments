%Question 1
s=0;
for i=1:1:4
    s=s+(-1)^i*i/2^i;
end
s2=0;
for i=1:1:20
    s2=s2+(-1)^i*i/2^i;
end
disp(s);
disp(s2);

%Question 2
V=[5,17,-3,8,0,-7,12,15,20,-6,6,4,-7,16];
for i=1:1:length(V)
    t=V(i);
    if (t>0) && ((rem(t,3))==0 || (rem(t,5))==0)
        V(i)=t*2;
    elseif t<0 & t>-5
        V(i)=t^3;
    end
end
disp(V);

%Question 3
n=input("Enter the number of rows");
m=input("Enter the number of columns");
A=[n*ones(n,1),[m*ones(1, m-1); zeros(n-1,m-1)]];
A(1,1)=(n+m)/2;
for i=2:n
    for j=2:m
        A(i,j)=A(i-1,j)+A(i,j-1);
    end
end
format short G;
disp(A);

%Question 4
p = 0;
c = input('Enter a choice: ', 's');
n = input('Enter a number: ');

switch c
    case 'a'
        for i = 1:1:(n/2)
            if rem(n, i) == 0
                p = p + 1;
            end
        end
        if p == 1
            disp('Prime!');
        else
            disp('Not Prime!');
        end
    case 'b'
        s=0;
        t=n;
        l=length(num2str(n));
        while(t~=0)
            d=rem(t,10);
            s=s+d^l;
            t=floor (t/10);
        end
        disp(s);
        if s==n
            disp("Armstrong Number");
        else
            disp('Not Armstrong Nunber');
        end
        
    case 'c'
        f = 1;
        for i = 1:1:n
            f = f * i;
        end
        disp(['Factorial: ', num2str(f)]);
    otherwise
        disp('Wrong!');
end
