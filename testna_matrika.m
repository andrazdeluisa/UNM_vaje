function [A] = testna_matrika(n)
A = zeros(n);
for i = 1:n
    for j = 1:n
        if j == i
            A(i, j) = -2* i;
        elseif j == i + 1
            A(i, j) = n - i;
        elseif j == i - 1
            A(i, j) = n - j;
        end
    end
end
end

% hitreje
% function[A] = testna_matrika(n)
% A = -2*diag(1:n) + diag(n-1:-1:1,1) + diag(n-1:-1:1,-1)
% end