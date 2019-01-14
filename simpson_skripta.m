f = @(x) exp(-x.^2);
a = 0;
b = 3;

for k=1:5
    simpsonova(a,b,f,k)-integral(f,a,b)
end