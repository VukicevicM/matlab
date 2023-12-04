A = [11 2 -3 0;
    2 1 8 7;
    0 22 21 -9;
    4 -3 2 0;
    5 1 10 -8];

B = [ 1 2 0 4
    2 9 2 3
    3 0 1 2
    4 3 2 8];

C = [A zeros(5,4)
    zeros(4,4) B];

simetricna(4)

postevanka(3, 5)

v = [ 1 2 3 4];
odvod(v)

x = [1 2 1];
y = [2 0 1];

M = matrika(x, y)