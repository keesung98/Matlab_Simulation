clc
clear

m = 4; n = 6;
mat = randi(100, m, n) 
[evensum,oddsum] = matrixsum(mat)

function [evensum,oddsum] = matrixsum(mat)
[row col]=size(mat);
evensum = 0;
oddsum  = 0;
for i=1: row
    for j=1:col
        if mod(mat(i,j),2)==1
            oddsum=oddsum+mat(i,j);
        else
            evensum=evensum+mat(i,j);
        end
    end
end
end
