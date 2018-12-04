addpath("../");

n = 10;
%ustvarimo preprosto krozno matriko in pogledamo norme
a = 1:n;

K = krozna(a);

k1 = norm(K, 1);
k2 = norm(K, 2);
kInf = norm(K, 'inf');
kFro = norm(K, 'fro');


%analizirajmo pivotno rast pri nakljucno generiranih matrikah
rastbp = zeros(1000, 1);
rastdp = zeros(1000, 1);
rastkp = zeros(1000, 1);

for i= 1:1000
    b = rand(1, n);
    K = krozna(b);
    
    [Lbp, Ubp] = lubp(K);
    [Ldp, Udp, ~] = lu(K);
    [Lkp, Ukp, ~, ~] = lukp(K);
    
    rastbp(i) = pivotna_rast(K, Ubp);
    rastdp(i) = pivotna_rast(K, Udp);
    rastkp(i) = pivotna_rast(K, Ukp);
end

povprecja = [mean(rastbp), mean(rastdp), mean(rastkp)];