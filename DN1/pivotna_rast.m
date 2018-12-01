function g = pivotna_rast (A, B)
    % A je prvotna matrika
    % B je zgornje trikotna, dobljena iz razcepa
    A = abs(A);
    B = abs(B);
    
    maksA = max(A(:));
    maksB = max(B(:));
    
    g = maksB / maksA;
end
