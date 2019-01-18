A = [4 -8 8 4; 2 6 -2 2; 2 -2 9 -2; 4 8 -4 0];

C = hess(A);

n = length(A);
tol = 10e-8;

B=C
vrednosti = zeros(n+1,1);
for k = n:-1:1
    B=B(1:k, 1:k);
    while true
        if k ==1
            vrednosti(k) = B(k,k);
            break
        end
        if abs(B(k,k-1)) < tol*(abs(B(k,k)) + abs(B(k-1,k-1)))
            vrednosti(k) = B(k,k);
            break
        end
        [Q, R] = qr(B - vrednosti(k+1).*eye(k));
        B = R*Q + vrednosti(k+1).*eye(k);
    end
end

vrednosti = vrednosti(1:n)

vektorji = zeros(n,n);

for i = 1:n
    z0 = rand(n,1);
    while true
        z1 = (A - vrednosti(i).*eye(n))\z0;
        z1 = z1/norm(z1);
        if abs(norm(z0) - norm(z1)) < tol
            break;
        end
        z0 = z1;
    end
    vektorji(:, i) = z1;
end

vektorji