%Monte Carlo 시뮬레이션에서 rand와의 관계는 동일한 확률로 점을 찍고 찍은 점을 기반으로 넓이를 구하는 것으로 알 수
%있다. 하지만 randn의 확률은 동일하지 않다. 정규분포이기 때문에 평균값 근처에 점들이 찍히게 되기 때문이다. randn 함수에서
%범위를 벗어나는 점들과 그래프 안의 점에 들어오는 오차를 줄일려면 표준편차를 줄이면 된다. 표준편차가 줄면 더 평균 근처에서
%생성되므로 L~R 사이에서 점들이 찍히게 된다. 그렇다고 너무 많이 줄이면 안되는데 표준편차를 너무 많이 줄이게 되면 점들이 중앙에
%모이게 되므로 대부분의 점들이 f(x)아래에 존재하게 된다.
clc
clear
format long
R=4;
L=-4;
fprintf("R=%d\n",R);
fprintf("L=%d\n",L);
fprintf("rand  넓이 근사값 :%8f\n",mysteryR(L,R));
fprintf("randn 넓이 근사값 :%8f\n",mysteryRn(L,R));
%rand 함수를 이용한 mystery함수
function p=mysteryR(L,R) 
N=10000;        %반복 횟수
hit=0;          
for k=1:N
    x=(R-L)*rand+L;     % x는 L부터 R까지의 x 좌표값
    y=rand;             % y는 0부터 1까지의 y 좌표값
    fx=1/sqrt(2*pi)*exp(-x^2/2);    %f(x)
    if y<=fx            % f(x)가 임의의 점의 y값보다 클때 임의의 점이 f(x) 넓이 안에 들어갔다고 할 수 있다.
        hit=hit+1;      % f(x)의 넓이 안에 들어갔을경우 hit 1 증가
    end
end
p=(R-L)*hit/10000;      %최종 hit를 횟수인 10000으로 나누고 직사각형의 넓이를 곱해주면 f(x)의 근사값 넓이가 나온다.
end

%randn 함수를 이용한 mystery함수
function p=mysteryRn(L,R) 
N=10000;        %반복 횟수
hit=0;          
nsquare=0;              
sigma=0.088;            %표준편차
for k=1:N
    x=randn*sigma+(R+L)/2;     % x는 평균을 (R+L)/2로 둔 정규분포
    y=randn*sigma+1/2;             % y는 평균을 1/2로 둔 정규분포
    fx=1/sqrt(2*pi)*exp(-x^2/2);    %f(x)
    if y<=fx            % f(x)가 임의의 점의 y값보다 클때 임의의 점이 f(x) 넓이 안에 들어갔다고 할 수 있다.
        hit=hit+1;      % f(x)의 넓이 안에 들어갔을경우 hit 1 증가
    end
    if x>=L&&x<=R&&y>=0&&y<=1       %정규분포에서 직사각형 안에 들어올 경우
        nsquare=nsquare+1;          %nsquare를 1 증가
    end
end
p=(R-L)*hit/nsquare;      %최종 hit를 횟수인 nsquare으로 나누고 직사각형의 넓이를 곱해주면 f(x)의 근사값 넓이가 나온다.
end
