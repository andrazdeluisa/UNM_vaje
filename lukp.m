function [L, U, P, Q] = lukp(A)
% LU razcep s kompletnim pivotiranjem
    n = size(A, 1);
    P = eye(n);
    Q = eye(n);
    for j = 1:(n-1)
      maks = abs(A(j, j));
      v = j;
      s = j;
      for i = j:n
        for k = j:n
          if abs(A(i, k)) > maks
            maks = abs(A(i,k));
            v = i;
            s = k;
          endif
        endfor
      endfor
      vrstica = A(v, :);
      vrsticap = P(v, :);
      A(v, :) = A(j, :);
      A(j, :) = vrstica;
      P(v, :) = P(j, :);
      P(j, :) = vrsticap;
      stolpec = A(:, s);
      stolpecq = Q(:, s);
      A(:, s) = A(:, j);
      A(:, j) = stolpec;
      Q(:, s) = Q(:, j);
      Q(:, j) = stolpecq;
      % treba permutirat še P in Q
      for i = (j+1):n
        A(i, j) = A(i, j) / A(j, j);
        for k = (j+1):n
          A(i, k) = A(i, k) - A(i, j)*A(j, k);
        endfor
      endfor
    endfor
L = tril(A, -1) + eye(n);
U = triu(A);
end