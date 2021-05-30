clc
clear

format compact;
format long;
a = sqrt(2)
b1 = [2 3 3 10]
passwd1 = passwdgenerator(a,b1)
b2 = [10 1 2]
passwd2 = passwdgenerator(a,b2)

function passwd = passwdgenerator(a,b)
passwd=[];
for i=1:length(b)
    od_a=a;
    for j=1:b(i)
        new_a=floor(od_a);
        od_a=10*(od_a-new_a);
        if j==b(i)
            passwd=[passwd floor(od_a)];
        end
    end
end
end