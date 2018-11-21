function [x, l, u] = thomas(a, b, c, z)
% thomas resi sistem s (strogo diagonalno dominantno) tridiagonalno matriko
    n = length(a);
    l = zeros(1, n-1);
    u = zeros(1, n);
    u(1) = a(1);
    for i=1:n-1
        l(i) = c(i)/u(i);
        u(i+1) = a(i+1) - l(i)*b(i);
    end
    y = zeros(1, n);
    y(1) = z(1);
    for i=2:n
        y(i) = z(i) - l(i-1)*y(i-1);
    end
    x = zeros(1,n);
    x(n) = y(n) / u(n);
    for i=n-1:-1:1
        x(i) = (y(i) - b(i)*x(i+1))/u(i);
    end
end