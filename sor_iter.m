function k = sor_iter(A, b, x, e1)
y = x;
k = 0;
e = inv(A) * b;
while abs(y - e) > e1
  y = sor(A, b, y);
  k = k + 1;
end