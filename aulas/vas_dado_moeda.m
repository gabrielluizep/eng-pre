tic
clear all; close all; clc;
pkg load statistics;

N = 1e6;

x = 1:3;
y = 0:3;

X = randi([1 3], 1, N);
Y = zeros(1, N);

% Alternativa mais lenta
% for(i = 1 : N)
%   Y(i) = binornd(X(i), 1/2);
% end

for(i = 1 : length(x))
  idx = X == x(i);

  Y(idx) = binornd(x(i), 1/2, 1, sum(idx));
end

pmfXY_sim = hist3([X' Y'], {x, y}) / N
pmfXY_teo = [1/6  1/6  0    0   ;
             1/12 2/12 1/12 0   ;
             1/24 3/24 3/24 1/24]

covXY_sim = cov(X, Y)
covXY_teo = 1/3
toc