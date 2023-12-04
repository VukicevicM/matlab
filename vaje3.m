%resevanje ODE

%npr resujemo y' = sin(y) + x (=f(x,v)), y(0) = 5

%ode = @(x,y) sin(y) + x;

ode = @(t,y) 2*t;

%y0 = 5;
y0 = 1;

%[x, y] = ode45(ode,[0 1 1.5 2], y0); %predpisemo za katere x-e zelimo imeti resitev
%[x, y] = ode45(ode,[0, 2], y0);
%[x, y] = ode45(ode,linspace(0,2), y0);

[x, y] = ode45(ode,[0, 5], y0);

hold on 

plot(x, y, 'bo--')

x0 = linspace(0,5);
y0 = x0.^2 + 1;
plot(x0,  y0)
