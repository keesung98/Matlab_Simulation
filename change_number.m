clc
clear

x = [ 0  5 5 1 1 9 1 ];
y = vec2int(x)

function y = vec2int(x)
len=length(x);
new=0;
for i=1:len
    new=new+x(len+1-i)*10^(i-1);
end
y=new;
end