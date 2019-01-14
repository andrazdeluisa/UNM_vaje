load maunaloa.txt

X = maunaloa(:, 3);
Y = maunaloa(:, 4);

A = [eye(length(X), 1) X X.^2 sin(2.*pi.*X) cos(2.*pi.*X)];

k = A\Y;

%nariši graf funkcije
%nariši meritve (X in Y)