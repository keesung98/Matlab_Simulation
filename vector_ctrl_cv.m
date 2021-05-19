clc
clear

x=[1 2 3];
n=input("정수입력 : ");
y=duplicate_n(x,n)

function y=duplicate_n( x, n )
new=[];
for i=1:3
    for j=1:n
        new=[new x(i)];
    end
end
y=new;
end
