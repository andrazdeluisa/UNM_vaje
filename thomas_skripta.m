n = 10000;
a = 2 + rand(1,n);
b = rand(1, n-1);
c = rand(1, n-1);

tic;
A = diag(a) + diag(b,1) + diag(c, -1);
toc

x = rand(n, 1);

z = A*x;

tic; A/z'; toc

tic;
[x1, l, u] = thomas(a,b,c,z);
toc

rez = norm(x1' - x)