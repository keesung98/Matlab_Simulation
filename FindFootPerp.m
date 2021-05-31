clc
clear

P = [ 0 0];
C = [-1 2];
F = FindFootPerp(P,C)

function F=FindFootPerp(P,C)
if C(1)==0
    F=[P(1) C(2)];
else
    N=[-1/C(1) P(2)+1/C(1)*P(1)];
    new=N-C;
    F = [-new(2)/new(1), -C(1)*new(2)/new(1)+C(2)];
end
end