function A = myVandermonde(v, n)
if(size(v, 1) ~= 1 || length(size(v)) > 2)
  error('First argument must be a not empty vector');
end
if(n <= 0)
  error('Secound argument must be positive');
end
nInt = floor(n);
lenV = length(v);
A = ones(lenV, nInt);
for i = 2:nInt
  A(:, i) = A(:, i-1) .* v';
end