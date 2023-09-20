tic
clear all; close all; clc;
pkg load statistics;

N = 1e4;

X = rand(1, N);
Y = zeros(1, N);

for (i = 1 : N)
  Y(i) = X(i) * rand();
end

figure; hold on; grid on;
scatter(X(1:2000), Y(1:2000));
axis('square');
xlabel('x'); ylabel('y');

covXY_sim = cov(X, Y)

toc