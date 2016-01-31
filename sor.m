function y = sor(A, b, x)
D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;
O = 1.2;
y = inv(D + O*L) * ((1-O)*D - O*U)*x + O*inv(D + O*L)*b;