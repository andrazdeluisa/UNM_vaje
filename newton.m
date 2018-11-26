function [x, X, k] = newton(F, JF, x0, tol, N)
    % izvede newtonovo metodo za reševanje sistema nelinearnih enaèb
    % F preslikava, ki doloèa nelinearni sistem F(x) = 0
    % JF Jacobijeva matrika preslikave F
    % x0 zaèetni približek (stolpec)
    k = 1;
    X = 1:N;
    X(1) = x0;
    while k<N
        k = k + 1;
        Dx = JF(X(k-1))\F(X(k-1));
        X(k) = Dx + X(k-1);
        if abs(X(k) - X(k-1)) < tol
            break
        end
    end
    x = X(k);
end

