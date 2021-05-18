clc
clear

n = 10;
a = checkerboard(n)

function a = checkerboard(n)
  a = ones(n);
  if rem(n,2)==0
      k=floor(n/2);
  else
      k=floor(n/2)+1;
  end
  for i=1:n
      if rem(i,2)==1
          for j=1:floor(n/2)
            a(i,2*j)=0;
          end
      end
      if rem(i,2)==0
          for j=1:k
            a(i,2*j-1)=0;
          end
      end
  end
end