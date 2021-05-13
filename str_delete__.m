clc
clear

t='ab cd efg';
t2='d c d ef g';
fprintf(t);
[nun,str]=comp(t);
fprintf("\n빈칸의 수=%d \n문자열=%s",nun,str);
fprintf("\n=====================\n");
fprintf(t2);
[nun,str]=comp(t2);
fprintf("\n빈칸의 수=%d \n문자열=%s",nun,str);

function [n,s]=comp(t)
L=strlength(t);
count=0;
y='';
for k=1:L
    if(t(k)~=' ')
        y=[y t(k)];
    else
        count=count+1;
    end
end
n=count;
s=y;
end