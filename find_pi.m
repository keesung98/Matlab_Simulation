format long

%초기 n 을 3으로 잡고 An, Bn을 구한 뒤 A_mir=A(n+1)-An, B_mir=B(n+1)-Bn으로 잡았습니다. 그뒤
%ㅣA_mirl<=D or lB_mirl<=D 의 부정은 lA_mirl>D and lB_mirl>D 가 됨으로 while문으로 사용해서 n_star와 pn을 구했습니다.

clc
clear

D=input("inter_delta :");
n=3;
An=n/2*sin(2*pi/n);
Bn=n*tan(pi/n);
A_mir=(n+1)/2*sin(2*pi/(n+1))-An;
B_mir=(n+1)*tan(pi/(n+1))-Bn;

while abs(A_mir)>D && abs(B_mir)>D
    n=n+1;
    An=n/2*sin(2*pi/n);
    Bn=n*tan(pi/n);
    A_mir=(n+1)/2*sin(2*pi/(n+1))-An;
    B_mir=(n+1)*tan(pi/(n+1))-Bn;
end

n_star=n
pn=(An+Bn)/2