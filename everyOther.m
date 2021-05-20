clc
clear

x = randi(100, 1, 10)
y = everyOther(x)

function y = everyOther(x)
new=[];
for i=1:length(x)/2
    new=[new x(2*i-1)];
end
y=new;
end