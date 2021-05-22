clc
clear

x = [2 4 9 2];
y=Digits2Number(x)

function y= Digits2Number(x)
L=length(x);
resut=0;
for i=1:L
    resut=resut+x(i)*10^(L-i);
end
y=resut;
end
