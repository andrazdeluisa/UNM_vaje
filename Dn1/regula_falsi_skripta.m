f = @(x) 5 * cos(x - exp(x)) - x;
a0 = 0;
b0 = 3;
m = 10;

X(1) = a0;
for i=1:m
    X(i+1) = a0 + i/m * (b0 - a0);
end

k = 1;
for i=2:m
    if f(X(i - 1)) * f(X(i)) < 0
        Y(k) = X(i);
        k = k+1;
    end
end

priblizki = zeros(1, k-1);
for i=1:k-1
    priblizki(i) = regula_falsi(f, Y(i), Y(i+1), 1e-10, 1000);
end    