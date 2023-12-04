function A = simetricna(n)

A = zeros(n);

for i = 1:n
    A = A + triu(ones(n), i - 1) + tril(ones(n), -i + 1);

end
A = A - eye(n)
