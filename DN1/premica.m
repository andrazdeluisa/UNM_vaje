function f = premica (A, v)
    % premica skozi tocko A s smernim vektorjem v
    
    x0 = A(1);
    y0 = A(2);
    vx = v(1);
    vy = v(2);
    
    k = vy / vx;
    n = y0 - k * x0;
    
    f = @(x) x*k + n;
end
