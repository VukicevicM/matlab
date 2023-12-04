%risanje ploskve (x, y , cos(x*y)) na intervalu [0,1]^2

[x2d, y2d] = ndgrid(linspace(0, 1, 10), linspace(0, 1, 10));

fun = @(x, y) cos(x.*y);

z2d = fun(x2d, y2d);

surf(x2d, y2d, z2d)