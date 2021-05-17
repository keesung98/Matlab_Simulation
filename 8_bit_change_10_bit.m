clc
clear

x='13';
y=oct2dec(x);


function y = oct2dec(x)
new=str2double(x);
t100=0;t10=0;t1=0;
if new>=100
    t100=new/100;
    new=new-t100*100;
end
if new>=10 &&new<100
    t10=floor(new/10);
    new=new-t10*10;
end
if new>=0 && new<10
    t1=new/1;
end
new_y=t100*64+t10*8+t1*1;
y=num2str(new_y);
end