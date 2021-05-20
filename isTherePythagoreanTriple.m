clc
clear

isTherePythagoreanTriple(3, 4, 5, 6)

function flag = isTherePythagoreanTriple(a, b, c, d)
new=[a,b,c,d];
new=maxk(new,4);
if new(1)^2==new(2)^2+new(3)^2
    flag=true;
elseif new(1)^2==new(2)^2+new(4)^2
    flag=true;
elseif new(1)^2==new(3)^2+new(4)^2
    flag=true;
elseif new(2)^2==new(3)^2+new(4)^2
    flag=true;
else
    flag=false;
end
end