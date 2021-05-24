clc
clear

s = 'j mpwf nbumbc dpef dibmmfohf';
p = 'love';
decryptMsg(s, p)

function m = decryptMsg( s, p )
k=0;
for i=1:(length(s)-length(p)+1)
    if (double(char(s(i)))-double(char(s(i+length(p)-1))))==(double(char(p(1)))-double(char(p(length(p)))))
        if (double(char(s(i)))-double(char(s(i+length(p)-2))))==(double(char(p(1)))-double(char(p(length(p)-1))))
            k=i;
        end
    end
end
new=double(char(s(k)))-double(char(p(1)));
new_word=[];
for i=1:length(s)
    if double(char(s(i)))~=32
        new_word=[new_word char(double(char(s(i)-new)))];
    else
        new_word=[new_word s(i)];
    end
end
m=new_word;
end