function [y] = horner(p, x, b, m)
    % p polinom - vektor koeficientov, od najvišje do najnižje stopnje
    % x tocka
    % b baza
    % m dolžina mantise
    Y = zeros(1, length(p));
    Y(1) = round_significant(p(1), m);
  
    % treba se upostevat bazo
    for i=2:length(p)
        Y(i) = round_significant(p(i), m) + round_significant(Y(i-1)* x, m);
        Y(i) = round_significant(Y(i), m);
    end
    y = Y(length(p));
end
