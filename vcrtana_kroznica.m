function [S,r]=vcrtana_kroznica(T);
% vcrtana_kroznica vrne sredisce in radij vcrtane kroznice
% [S,r]=vcrtana_kroznica(T) vrne sredisce in radij trikotniku T vcrtanega kroga
% T je podan kot 3x2 matrika tock: [x1 y1; x2 y2; x3 y3].

%simetrala kotov 
%v1 = (A - C)/norm(A-C)
%v2 = (B - C)/norm(B-C)

%p je premica skozi T1, T2, ki sta na daljicah CA in CB, in sta enako
%oddaljeni od C

%simetrala stranice T1, T2 je simetrala kota

%rabimo dolociti se radij
%Heronove formule za vcrtan krog
%S = (a +b + c)/2
%P = sqrt(S(S-a)(S-b)(S-c))
%r = P/S je radij