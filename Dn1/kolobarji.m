os = [0,0];
r1 = 3;
r2 = 4;

zac = [3.5, 1.5];
smer = [1, 2];

kol1 = @(x) sqrt(r1^2 - x^2);
kol2 = @(x) sqrt(r2^2 - x^2);
p = premica(zac, smer);

% 1. odboj
f = @(x) kol2(x) - p(x);
x1 = fzero(f, zac(1));
y1 = p(x1);
normala = premica([0,0], [x1, y1]);
