function [e,x,k] = potencna(A,x0,tol,N)
    % izracuna priblizek za dominantni lastni par matrike A
    
    % A kvadratna matrika
    % x0 zac. priblizek
    % tol toleranca napake priblizka za dominantni lastni par 
    %   privzeta vrednost tol = 1e-10
    % N maks. st. korakov
    %   privzeta vrednost N = 200
    
    % e priblizek za dominantno lastno vrednost
    % priblizek za dominantni lastni vektor
    % k stevilo opravljenih korakov iteracije
   
    if nargin < 4
        N = 200;
        if nargin < 3
            tol = 1e-10;
        end
    end
    
    k = 1;
    while k < N
        x11 = A*x0;
        e = x0' * x11;
        if norm(x11 - e*x0) < tol
            break
        end
        x0 = x11 / norm(x11);
    end
    x = x0;
end

