clc
clear

format compact;
x = [1 2 3 4]
a = 0
b = 3
B = allint(x, a, b)
function y=allint(x,a,b)
key=0;
for i=1:length(x)
    if x(i)<a
        key=1;
    elseif x(i)>b
        key=1;
    end
end
if key==1
    y=false;
else
    y=true;
end
end