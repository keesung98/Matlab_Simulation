grid on
hold on
axis equal
t=[0,1,2,3,4,5,6,7,8,9];
p = linspace(0, 2*pi, 181);
p(end) = [];                 
for i=1:length(t)
    x =0.7*t(i)+ cos(p);
    y =0.4747*t(i)+ sin(p);     
    plot(x,y);
end