function d = deljena_diferenca (X, fX, dX)
    % X interpolacijske tocke
    % vrednosti funkcije v interpolacijskih tockah
    % vrednosti prvega odvoda funkcije
    n = length(X);
    dd = fX;
    n = n-1;
    for i = 2:n-1
        for j = n+1:-1:i
            if (X(j) ~= X(j-i+1))
                dd(j) = (dd(j) - dd(j-1))/(X(j) - X(j-i+1));
            end
            if (X(j) == X(j-i+1))
                dd(j) = dX(j);
            end
        end
    end
    d = dd(n+1);
end
