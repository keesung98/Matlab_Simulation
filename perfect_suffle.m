clc
clear

x1=(10:10:200)
k1=4;
y1=pkshuffle(x1,k1)
r1=1;
while (sum(abs(x1-y1)))~=0
    y1=pkshuffle(y1,k1)
    r1=r1+1;
end
fprintf('반복횟수 =%d',r1);

x2=[10:10:200]
k2=5;
y2=pkshuffle(x2,k2)
r2=1;
while (sum(abs(x2-y2)))>0
    y2=pkshuffle(y2,k2)
    r2=r2+1;
end
fprintf('반복횟수 =%d',r2);



function y=pkshuffle(x,k)
new=zeros(1,length(x));
c=1;
for i=1:k
    j=0;
    while j<(length(x)/k)
        new(c+j)=x(i+j*k);
        j=j+1;
    end
    c=c+length(x)/k;
end
y=new;
end