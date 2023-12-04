%resevanje ODE

%npr resujemo y' = sin(y) + x (=f(x,v)), y(0) = 5

ode = @(x,y) sin(y) + x;

y0 = 5;

[x, y] = ode45(ode,[0 1 1.5 2], y0); %predpisemo za katere x-e zelimo imeti resitev


