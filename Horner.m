function p = Horner(a, b)

p = 0;

for i = 1:length(a)
    p = p + a(i)*b^i;

end
