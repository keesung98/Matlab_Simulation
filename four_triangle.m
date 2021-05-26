clc
clear

W = 400;
G = 255*ones(W,'uint8');
[X,Y] = meshgrid(1:W);
G(X+Y<=200)=50;
G(X-Y>=200)=100;
G(X+Y>=600)=150;
G(X-Y<=-200)=200;
imshow(G);