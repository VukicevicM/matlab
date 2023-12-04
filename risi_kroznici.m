function risi_kroznici(T)
% risi_kroznici(T) narise trikotnik ter vcrtano in ocrtano kroznico
% skupaj s srediscema.
% Trikotnik T je podan kot matrika 3x2 tock,
% T= [ x1 y1; x2 y2; x3 y2]

hold on;

%risi trikotnik
xt = [T(1), T(3), T(5), T(1)];
yt = [T(2), T(4), T(6), T(2)];
plot(xt, yt)

%risi ocrtano krotznico

[S, r] = ocrtana_kroznica(T);


phi = linspace(0,2*pi);
xunit = r * cos(phi) + S(1);
yunit = r * sin(phi) + S(2);
plot(xunit, yunit);

%risi vcrtano kroznico


axis equal


