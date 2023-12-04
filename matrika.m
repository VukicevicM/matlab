function M = matrika(x,y)

%M = zeros(size(x), size(y));
%y = replace(y,0,1);
%y (y == 0) = 1;

%M = x'./y;

[x2d, y2d] = ndgrid(x,y);

M = x2d./y2d;
M (M == inf) = 1;