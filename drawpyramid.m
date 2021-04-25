function drawpyramid(L,H,c)
hold on
%계속 그려야해서 사용
a=0;
b=0;
Mid=L/2;
%처음 가로 길이의 중심을 중점으로 잡는다.
while 2/3*L>=H
    %2/3*L이 H보다 커야하므로 
    DrawRect(a,b,L,H,c)
    L=2/3*L;
    %L의 길이를 2/3만큼 줄인다.
    b=b+H;
    a=Mid-L/2;
    %a의 좌표는 중점 Mid에서 새로운 L/2를 뺀 값이 된다.
end