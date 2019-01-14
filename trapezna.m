function [priblizek] = trapezna(a, b, f, m)
    % (a,b) interval
    % m število delilnih toèk
    % f funkcija
    
    h = (a-b)/m;
    priblizek = 0;
    for i=1:m
        priblizek = priblizek + h/2 * (f(a+(i-1)*h) + f(a + i*h));
    end
end

