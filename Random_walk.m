%random_walk 시뮬레이션
clc
clear
format long
fprintf("==========================================\nn이 10일때\n")
Random_walk(10);
fprintf("==========================================\nn이 20일때\n")
Random_walk(20);

function Random_walk(n)
nexper=10000;   %반복 횟수
edge=0;
sumzero=0;      %시작점 방문 횟수의 합
for i=1:nexper  %반복
    k=0;        %이동거리
    zero=-1;    %시작점 방문
    xc=0; yc=0;
    while abs(xc)<n && abs(yc)<n
        r=rand;
        if xc==0&&yc==0             %시작점 방문 횟수 
            zero=zero+1;
        end
        if r<0.15
            xc=xc+1;                % 동
        elseif 0.15<r && r<0.3
            xc=xc-1;                % 서
        elseif 0.3<r&&r<0.45
            yc=yc+1;                % 북
        elseif 0.45<r&&r<0.6
            yc=yc-1;                % 남 
        elseif 0.6<r&&r<0.7
            xc=xc+1;                %북동
            yc=yc+1;
        elseif 0.7<r&&r<0.8
            xc=xc+1;                %남동
            yc=yc-1;
        elseif 0.8<r&&r<0.9
            xc=xc-1;                %남서
            yc=yc-1;
        else
            xc=xc-1;                %북서
            yc=yc+1;
        end
        k=k+1;
    end
    if abs(xc)==abs(yc)
            edge=edge+1;
    end
    iter(i)=k;
    sumzero=sumzero+zero;
end
avgzero=sumzero/nexper;
avge=edge/nexper;
fprintf("평균적으로 움직인 거리 :%15f\n",mean(iter))
fprintf("시작점에 다시 방문한 평균 횟수 :%15f\n",avgzero)
fprintf("모서리에 닿은 평균 횟수 :%15f\n",avge)
end