%vaje3naloga0

t = linspace(0,5);

plot(t, t.^3 + 1)


hold on;


%y(0) = 1,y'(0) = 0



ode = @(t, Y) [Y(2) 6*t]';
Y0 = [1, 0]';

[t, y] = ode45(ode, linspace(0,5), Y0);

plot(t, y(:,1), 'O--');


