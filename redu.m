clc
clear

n = 7;
disp('원래 행렬');
A = magic(n)
disp('축소된 행렬');
B = redu(A)

function B=redu(A)
K=length(A);
for i=1:K/2
    A(1+i,:)=[];
end
for i=1:K/2
    A(:,1+i)=[];
end
B=A;
end