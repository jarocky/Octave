function result = mygauss(A, b)
if(length(A(:,1)) ~= length(A(1,:)))
  error('Matrix has wrong size')
end
if(length(b(:, 1)) > 1)
  error('Vector cannot be a matrix')
end
if(length(A(:,1)) ~= length(b))
  error('Vector has wrong size')
end
B = [A b'];
for x = 1:length(b)-1
  for y = x+1:length(b)
    w = B(y,x)/B(x,x);
    for offset = x:length(b)+1
      B(y,offset) = B(y,offset) - B(x,offset)*w;
    end
  end
end
B
for x = 2:length(b)
  for y = x:2
    w = B(y-1,x)/B(x,x);
    for offset = x:length(b)+1
      B(y-1,offset) = B(y-1,offset) - B(x,offset)*w;
    end
  end
end
result = B