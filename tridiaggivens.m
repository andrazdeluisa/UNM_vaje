function x = tridiaggivens(A, B, C, z)
    % A glavna diagonala matrike
    % B diagonala nad glavno
    % C diagonala pod glavno
    % z stolpec na desni strani sistema
    
    n = length(A);
    D = zeros(n-2,1);
    for i=1:(n-1)
        r = sqrt(A(i)^2 + C(i)^2);
        c = A(i)/r;
        s = C(i)/r;
        A(i) = r;
        t = B(i);
        B(i) = c*t + s*A(i+1);
        C(i) = 0;
        A(i+1) = -s*t + c*A(i+1);
        
    end
end

