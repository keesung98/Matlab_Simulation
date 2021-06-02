clc
clear

grid on
hold on
axis([-5 5 -5 5])

t=[0,1,2,3,4,5,6,7,8];
p = linspace(0, 2*pi, 181)';
p(end) = [];
for i=1:length(t)
    x =-cos(pi/5)*t(i)+ cos(p);     
    y =sin(pi/5)*t(i)+ sin(p);
    plot(3+0.5*x,0.5*y);
end