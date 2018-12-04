os = [0,0];
r1 = 3;
r2 = 4;

zac = [3.5, 1.5];
smer = [1, 2];

hold on
kol1 = @(x) sqrt(r1.^2 - x.^2);
kol2 = @(x) sqrt(r2.^2 - x.^2);
plot(linspace(0, 4), kol2(linspace(0, 4)));
plot(linspace(0, 3), kol1(linspace(0, 3)));

p = premica(zac, smer);
plot(linspace(3,4), p(linspace(3,4)));
f = @(x) kol2(x) - p(x);
x1 = fzero(f, 3.5);
y1 = p(x1);
normala = premica([0 0], [-x1 -y1]);
plot(linspace(0, 4), normala(linspace(0,4)));
nova_smer = [smer(1)+2*((smer*[-x1 -y1]')/ ([-x1 -y1]*[-x1 -y1]'))*x1, smer(2)+2*((smer*[-x1 -y1]')/ ([-x1 -y1]*[-x1 -y1]'))*y1];
smer = nova_smer;
zac = [x1, y1];

p = premica(zac, smer);
plot(linspace(2,4), p(linspace(2,4)));
f = @(x) kol1(x) - p(x);
x1 = fzero(f, 2);
y1 = p(x1);
normala = premica([0 0], [-x1 -y1]);
plot(linspace(0, 4), normala(linspace(0,4)));
nova_smer = [smer(1)+2*((smer*[-x1 -y1]')/ ([-x1 -y1]*[-x1 -y1]'))*x1, smer(2)+2*((smer*[-x1 -y1]')/ ([-x1 -y1]*[-x1 -y1]'))*y1];
smer = nova_smer./norm(nova_smer);
zac = [x1, y1];

p = premica(zac, smer);
plot(linspace(1.5, 2.5), p(linspace(1.5, 2.5)));
f = @(x) kol2(x) - p(x);
x1 = fzero(f, 2);
y1 = p(x1);
normala = premica([0 0], [-x1 -y1]);
plot(linspace(0, 3), normala(linspace(0,3)));
nova_smer = [smer(1)+2*((smer*[-x1 -y1]')/ ([-x1 -y1]*[-x1 -y1]'))*x1, smer(2)+2*((smer*[-x1 -y1]')/ ([-x1 -y1]*[-x1 -y1]'))*y1];
smer = nova_smer/norm(nova_smer);
zac = [x1, y1];

p = premica(zac, smer);
plot(linspace(0.5,3), p(linspace(0.5,3)));
f = @(x) kol1(x) - p(x);
x1 = fzero(f, 1);
y1 = p(x1);
normala = premica([0 0], [-x1 -y1]);
plot(linspace(0, 1.5), normala(linspace(0,1.5)));
nova_smer = [smer(1)+2*((smer*[-x1 -y1]')/ ([-x1 -y1]*[-x1 -y1]'))*x1, smer(2)+2*((smer*[-x1 -y1]')/ ([-x1 -y1]*[-x1 -y1]'))*y1];
smer = nova_smer./norm(nova_smer);
zac = [x1, y1]
hold off
