pkg load statistics;

N = 1;

lambda = 3.1;

dt: 0.01; t = 0 : dt : 20;

X = zeros(1, length(t));
T = 0;
while T < t(end)
  T += exprnd(1/lambda);
  X += (t > T);
end

plot(t, X);
