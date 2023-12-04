function x = diskrVeriznica(w0,obesisceL,obesisceD,L,M)

% function x = diskrVeriznica(w0,obesisceL,obesisceD,L,M)

% diskrVeriznica resi problem diskretne veriznice: preko fsolve najde u in v, tako da

% F(u,v) = [0; 0], nato veriznico narise.

% Po knjigi Matematicno modeliranje (E. Zakrajsek).



% vhod:

% w0 = [u0;v0] zacetna priblizka,

% obesisceL = [x_0;y_0],

% obesisceD = [x_n+1;y_n+1],

% L = dolzine palic (vektor).

% M = mase palic (vektor).

%

% izhod:

% x je 2x(n+2) tabela koordinat vozlisc.
sz = size(M);
n = sz(2) - 1;

x = zeros(2, n+2);


% vektor mi-jev 'mi' in vektor delnih vsot 'vsote_mi' (vsote_mi = [0,mi_1,mi_1+mi_2,...]; ukaz cumsum)

% glej (3.13) in delno vsoto, ki se pojavlja v (3.16),(3.18),(3.19)

mi = zeros(size(M));

for i = 1:n
    mi(i) = (M(i) + M(i+1)) / 2;
end

vsote_mi = cumsum(mi);

% iskanje nicle F(u,v) = [U(u,v);V(u,v)]

F = @(w) F_uv(w,obesisceL,obesisceD,L,vsote_mi);

W = fsolve(F,w0);

u = W(1);
v = W(2);

ksi = zeros(size(L));

for i = 1:length(L)
    ksi(i) = L(i)/sqrt(1 + (v - u*vsote_mi(i)).^2);
end

eta = zeros(size(L));

for i=1:length(L)
    eta(i) = ksi(i) * (v - u*vsote_mi(i));
end

ksi_vsote = cumsum(ksi);
eta_vsote = cumsum(eta);

for i=2:n+2
    x(1,i) = obesisceL(1) + ksi_vsote(i - 1);
    x(2,i) = obesisceL(2) + eta_vsote(i - 1);
end

x(1) = obesisceL(1);
x(2) = obesisceL(2);



% izracunamo x-e

% glej (3.16) ter (3.18), (3.19) ter (3.8) in (3.9)



% narisemo veriznico

plot(x(1,:),x(2,:),'ro-','LineWidth',2,'MarkerSize',8,'MarkerFaceColor','r');

