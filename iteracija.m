function [x, X, k] = iteracija(g, x0, tol, N)

% g     iteracijska funkcija
% x0   zacetni priblizek
% tol   toleranca absolutnega ujemanja dveh zaporednih priblizkov
% N     maks. stevilo korakov iteracije


% x     zadnji izracunan priblizek
% X    seznam vseh izracunanih priblizkov
% k     stevilo opravljenih korakov
X = 1:N;
k = 1;
X(1) = g(x0);
while k < N
    k = k + 1;
    X(k) = g(X(k - 1));
    if abs(X(k) - X(k - 1)) < tol
        break
    end
end
x = X(k);
end

