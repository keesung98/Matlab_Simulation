clc
clear
cnt=0;      %반복 횟수
non_cnt=0;  %허근이 나온 횟수
for n=1:1:10000
    a=4*rand-2;
    b=4*rand-2;
    c=4*rand-2;
    D=b*b-4*a*c;
    cnt=cnt+1;
    if D<0
        non_cnt=non_cnt+1;
    end
end
fprintf("반복실험 횟수 :%d\n허근이 나온 횟수 :%d\n",cnt,non_cnt)
avg=non_cnt/cnt;    %허근이 나올 확률
fprintf("허근이 나올 확률 :%d",avg)