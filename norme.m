n = 1000;
A = testna_matrika(n);

A1 = norm(A, 1);
A2 = norm(A);
AInf = norm(A, Inf);
AFro = norm(A, 'fro');
ANinf = norm(A(:), Inf);

spodnje_ocene = [(1/n)* AFro, (1 / sqrt(n))*A1, (1 / sqrt(n))*AInf, ANinf];
zgornje_ocene = [AFro, sqrt(n)*A1, sqrt(n)*AInf, n*ANinf, sqrt(A1*AInf)];

zgornja = min(zgornje_ocene);
spodnja = max(spodnje_ocene);

[spodnja, A2, zgornja]

%raèunanje obèutljivosti
c = cond(A);