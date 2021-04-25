format long
r1=input("equator_radius:");   %적도 반지름 입력
r2=input("polar_radius:");     %극 반지름 입력
L=acos(r2/r1);                 %arccos 값
A=2*pi*(r1*r1+r2*r2/sin(L)*log(cos(L)/(1-sin(L)))); %회전 타원체 표면적
fprintf("회전 타원체 표면적:%f \n",A)
S_A=pi*(r1+r2)*(r1+r2);        %회전 타원체 근사값 표면적
fprintf("회전 타원체 근사값:%f \n",S_A)