%vaje 9.10.2023.

%x = 0:0.1:1;
%y = 0:0.1:2;

[x2d, y2d] = ndgrid(0:0.01:1, 0:0.01:2);

f = @(X, Y) sin(X.^2 - Y.^4)./(X.^2 - Y.^4);

z2d = f(x2d, y2d);

z2d (isnan(z2d)) = 1;

surf(x2d, y2d, z2d)
hold on

min(min(z2d))
max(max(z2d))

minimumi = z2d (z2d <= min(min(z2d)) + 10^(-5));

x = x2d ((z2d <= min(min(z2d)) + 10^(-5)));
y = y2d((z2d <= min(min(z2d)) + 10^(-5)));

M = (z2d < min(min(z2d)) + 10^(-5));

plot3(x, y, minimumi, 'o')

%diff(z2d)/0.01
syms x y

J = jacobian(sin(x.^2 - y.^4)./(x.^2 - y.^4), [x, y]);

jacmat = matlabFunction(J);

JF = @(x) jacmat(x(1),x(2));




