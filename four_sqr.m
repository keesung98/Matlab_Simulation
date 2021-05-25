clc
clear
hold on

x=[-1,-1,1,1,-1];
y=[-1,1,1,-1,-1];
plot(x,y,'c','LineWidth',2)

x=[0,2,0,-2,0];
y=[2,0,-2,0,2];
plot(x,y,'k','LineWidth',2)

x=[-2,-2,2,2,-2];
y=[-2,2,2,-2,-2];
plot(x,y,'b','LineWidth',2)

x=[0,4,0,-4,0];
y=[4,0,-4,0,4];
plot(x,y,'y','LineWidth',2)

grid on