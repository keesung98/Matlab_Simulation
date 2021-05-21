clc
clear

d = [zeros(1,3), -5:5];
n = length(d);
x = d(randperm(n))
nearZero(x)

function y = nearZero(x)
key=0;
new=[];
L=-110;
for i=1:length(x)
    if i==1
        if x(i)==0
            key=1;
            L=x(i+1);
        end
    elseif i==length(x)
        if x(i)==0
            key=1;
            if x(i-1)>L
                L=x(i-1);
            end
        end
    else
        if x(i)==0
            key=1;
            if x(i-1)>L
                L=x(i-1);
            end
            if x(i+1)>L
                L=x(i+1);
            end
        end
    end
end
if key==0
    y=new;
else
    y=L;
end
end