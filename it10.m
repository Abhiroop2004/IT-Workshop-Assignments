% Q1. Write a user-defined function that calculates grade point
% average(GPA) on a scale of 0 to 4...
g='BACEABDB';
h=[3 4 3 4 3 4 3 2];
disp(GPA(g,h));
function av=GPA(g,h)
    g=4-(double(g)-65); 
    av=sum(g.*h)/sum(h);
end

%Q2. Write a user defined function that determines unit vector in the 
% direction of the line that connets two points...
disp(unitvec([1.2,3.5],[12,15]));
disp(unitvec([-10, -4, 2.5],[-13, 6, -5]));
function n=unitvec(A,B)
    n=(B-A)/(sqrt(sum((B-A).^2)));
end
