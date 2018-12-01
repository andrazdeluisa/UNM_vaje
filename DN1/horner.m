function [y] = horner(p, x, b, m)
  % p polinom - vektor koeficientov, od najvišje do najnižje stopnje
  % x tocka
  % b baza
  % m dolžina mantise
  Y = zeros(1, length(p));
  Y(1) = p(1);
  
  % treba se upostevat bazo in mantiso
  %% zgleda, da za matlab se lahko rabi roundsd(..., 5) za zaokrozevat
  for i=2:length(p)
    Y(i) = p(i) + Y(i - 1) * x;
  end
  y = Y(length(p));
end
