function A = myMatrix(a, b, n)
nInt = floor(n);
A = [a, b; b, a];
A = repmat(A, int8(nInt/2));
if(mod(nInt, 2) == 1)
  A(end, :) = [];
  A(:, end) = [];
end