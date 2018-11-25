addpath("~/");
n = 10;
a = rand(1, n);
k = zeros(n);

for i = 1:n
  v = zeros(1, n + 1 - i);
  for j = 1:(n + 1 - i)
    v(j) = a(i);
  endfor
  if (i == 1)
    k = k - diag(v);
  endif
  k = k + diag(v, i - 1) + diag(v, - i + 1);
endfor

k1 = norm(k, 1);
k2 = norm(k, 2);
kInf = norm(k, 'inf');
kFro = norm(k, 'fro');

kbp = lubp(k);
kdp = lu(k);
%kkp = lukp(k);
