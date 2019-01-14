f = @(x) 1./(x.+1);
df = @(x) -1./(x.+1).^2;
a = [0 0 1 2 2 3];

fX = f(a);
dX = df(a);

deljena_diferenca(a, fX, dX)