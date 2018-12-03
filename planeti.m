X = [-0.5 -0.3 0.1 0.8 0.9 0.5 0.2 -0.1 -0.3 -0.6]';
Y = [-0.3 -0.7 -0.8 -0.7 -0.1 0.5 0.6 0.7 0.6 0.2]';

A = [X.^2 X.*Y Y.^2 X Y];

b = ones(10, 1);

k = A\b;

f = @(x, y) k(1)*x.^2 + k(2)*x.*y + k(3)*y.^2 + k(4)*x + k(5)*y;

hold on
[M, N] = meshgrid(linspace(-1, 1), linspace(-1, 1));
contour(M, N, f(M, N), [1 1]);

scatter(X, Y, 10, 'red');
hold off
