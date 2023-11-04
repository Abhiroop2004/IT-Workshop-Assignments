%Question 1
t=(0:.1:6*pi);
x=(sqrt(t)).*sin(2*t);
y=(sqrt(t)).*cos(2*t);
z=0.5*t;
plot3(x,y,z);


%Question 2
x = (-1:.1:3);
y = (1:.1:4);
[X, Y] = meshgrid(x, y);
Z = X .* (Y.^2) ./ (X.^2 + Y.^2); 
surf(X, Y, Z);

%Question 4
x=(-10:.1:10);
y=(-10:.1:10);
[X,Y]=meshgrid(x,y);
R=sqrt(X.^2+Y.^2);
Z=sin(R)./R;
mesh(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('sin (x^2+y^2)/x^2+y^2');

%Question 5
y=(-3:.1:3);
[X,Y]=meshgrid(x,y);
Z=X.^2/3+2*sin(3*Y);
surf(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('x^2/3+2sin(3y)');






