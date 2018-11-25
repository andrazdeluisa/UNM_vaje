function [x, k] = regula_falsi(f, a0, b0, tol, N)
  % f funkcija
  % (a0, b0) zacetni interval
  % tol zahtevana natancnost
  % N maks. število korakov
  % predpostavimo, da sta f(a0) in f(b0) razlicno predznacena
  k = 0;
  while k < N
    k = k + 1;
    x = b0 - (f(b0) * (b0 - a0)) / (f(b0) - f(a0));
    if b0 - a0 < tol
      break
    endif
    c0 = x;
    if f(c0) * f(a0) < 0
      b0 = c0;
    else 
      a0 = c0;
    endif
  endwhile
endfunction
