function [x, X, k] = regula_falsi(f, a0, b0, tol, N)
    % f funkcija
    % (a0, b0) zacetni interval
    % tol zahtevana natancnost
    % N maks. stevilo korakov
    % predpostavimo, da sta f(a0) in f(b0) razlicno predznacena
    X = 1:N;
    k = 0;
    while k < N
        k = k + 1;
        x = b0 - (f(b0) * (b0 - a0)) / (f(b0) - f(a0));
        if b0 - a0 < tol
            break
        end
	    X(k) = x;
        if f(x) * f(a0) < 0
            b0 = x;
        else 
            a0 = x;
        end
    end
end
