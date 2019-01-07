function px = newtonpoly(X, fX, x)
% X seznam interpolacijskih to�k
% fX seznam vrednosti v interpolacijskih to�kah
% x seznam abscis, pri katerih ra�unamo vrednost interpolacijskega polinoma

% px seznam vrednosti interpolacijkega polinoma

% shema deljenih diferenc (to�ke paroma razli�ne)
n = length(fX) - 1;
dd = fX;
for i = 2:n-1
    for j = n+1:-1:i
        dd(j) = (dd(j) - dd(j-1))/(X(j) - X(j-i+1));
    end
end
P = dd;
% ra�unanje vrednosti polinoma
% posplo�eni hornerjev postopek

b = P(n);
for i = n-1:-1:0
    b = P(i) + (x-x(i)) * b;
end
px = b;

end

