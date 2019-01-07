function px = newtonpoly(X, fX, x)
% X seznam interpolacijskih toèk
% fX seznam vrednosti v interpolacijskih toèkah
% x seznam abscis, pri katerih raèunamo vrednost interpolacijskega polinoma

% px seznam vrednosti interpolacijkega polinoma

% shema deljenih diferenc (toèke paroma razliène)
n = length(fX) - 1;
dd = fX;
for i = 2:n-1
    for j = n+1:-1:i
        dd(j) = (dd(j) - dd(j-1))/(X(j) - X(j-i+1));
    end
end
P = dd;
% raèunanje vrednosti polinoma
% posplošeni hornerjev postopek

b = P(n);
for i = n-1:-1:0
    b = P(i) + (x-x(i)) * b;
end
px = b;

end

