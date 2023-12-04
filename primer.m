%naloga 6.11.2023.

n = 32;
a = 1;
tol = 10^-3;

f_levo = @(y) zeros(size(y));
f_desno = @(y) 1-y.^2;
f_zgoraj = @(x) 1-x.^2;
f_spodaj = @(x) x.^2-1;

milnica(a,n,f_spodaj,f_zgoraj,f_levo,f_desno,tol,'afgjkgfd');

%f_levo2 = @(y) 1-y.^2;
%f_desno2 = @(y) 1-y.^2;
%f_zgoraj2 =  @(x) 1-x.^2;
%f_spodaj2 = @(x) 1-x.^2;

%milnica(a,n,f_spodaj2,f_zgoraj2,f_levo2,f_desno2,tol,'afgjkgfd');
