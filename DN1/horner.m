function [y] = horner(p, x, b, m)
  % p polinom - vektor koeficientov, od najvi�je do najni�je stopnje
  % x tocka
  % b baza
  % m dol�ina mantise
  Y = zeros(1, length(p));
  Y(1) = p(1);
  
  % treba se upostevat bazo in mantiso
  for i=2:length(p)
    Y(i) = p(i) + Y(i - 1) * x;
  endfor
  y = Y(length(p));
endfunction
