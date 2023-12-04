function v = odvod(p)

v = zeros(1,length(p));

for i = 1:length(p)
    v(i) = p(i)*(i-1);
end

v;