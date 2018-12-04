function K = krozna (a)
    % vrne krozno matriko K, generirano z vektorjem a
    
    n = length(a);
    K = zeros(n);

    for i = 1:n
        v = zeros(1, n + 1 - i);
        for j = 1:(n + 1 - i)
            v(j) = a(i);
        end
        if (i == 1)
            K = K - diag(v);
        end
        K = K + diag(v, i - 1) + diag(v, - i + 1);
    end
end
