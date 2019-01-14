function [priblizek] = simpsonova(a, b, f, m)
    % (a,b) interval
    % 2m število delilnih toèk
    % f funkcija
    
    h = (b-a)/(2*m);
    priblizek = 0;
    for i=1:m
        priblizek = priblizek + h/3 * (f(a+2*(i-1)*h) + f(a + 2*i*h) + 4*f(a+(2*i-1)*h));
    end
end



