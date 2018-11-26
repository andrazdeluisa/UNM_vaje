function F = funpts(alpha, beta, X, Y)
    %vsota kvadratov odmikov toèk od f oblike
    % f(x) = alpha * exp(beta * x)
    
    eb = exp(beta * X);
    ebyaeb = eb.*(Y - alpha*eb);
    
    F = zeros(2, 1);
    F(1) = sum(ebyaeb);
    F(2) = alpha * X' * ebyaeb;
end

