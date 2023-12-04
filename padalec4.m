function h = padalec4(topt)

n = 10000;
zac = [40000, 0];
m = 90;
c = 1;
s = 0.9;
parametri = [m, c, s];
tk = [0; topt];

[y,v,t] = padalec2(parametri,zac,tk,n);

tk2 = [0; 400 - topt];
parametri2 = [m, c*5, s + 10];
zac2 = [y(end,1),v(end, 1)];
disp(zac2)

[y,v,t] = padalec2(parametri2,zac2,tk2,n)

h = y(end, 1)

end