function y = round_significant(x, n)
    % zaokrozi x na n znacilnih stevk
    e = floor(log10(abs(x)) - n + 1);
    og = 10.^abs(e);
    y = feval('round', x./og).*og;
    k = find(e<0);
    if ~isempty(k)
        y(k) = feval('round', x(k).*og(k))./og(k);
    end	
end

