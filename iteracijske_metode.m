f = @(x) x + 4 - exp(x^2);
df = @(x) 1 - 2.*x.*exp(x^2);
ddf = @(x) -2.*(exp(x^2) + x.*(2.*x).*exp(x^2));
nicla = fzero(@(x) x + 4 - exp(x^2), 1, optimset('TolX', 1e-16));

x10 = tangentna(f, df, 3, 1e-15, 10);

[~, ~, k1] = fffmetoda(f, df, ddf, 3, 1e-12, 1000);

x5 = fffmetoda(f, df,ddf,  3, 1e-15, 5);
razlika = abs(x5 - nicla);

[~, sez] = hallyeva(f, df, ddf, 3, 1e-12, 15);

sez = sez - nicla;
abs(sez) < razlika