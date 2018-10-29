function [x, X, k] = hallyeva( f, df, ddf, x0, tol, N)

g = @(x) x - (2.*f(x).*df(x))./(2.*(df(x)^2) - f(x).*ddf(x));
[x, X, k] = iteracija(g, x0, tol, N);
end

