%vaje3 - naloga1 - padalec

ode = @(t, Y)[Y(2), - 9.81 - (1.225*1.2)/210 *Y(2)*abs(Y(2))]';

t = linspace(0,300, 10000);
Y0 = [40000, 0]';

[x,y] = ode45(ode, t, Y0);

sum(y(:,2))/length(y)

r = 6371000;
ode2 = @(t, Y)[Y(2), - 9.81*(r/(r+Y(1)))^2 - (1.225*1.2)/210 *Y(2)*abs(Y(2))]';
[x2,y2] = ode45(ode2, t, Y0)

y2(length(y2), 1)
