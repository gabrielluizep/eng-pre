clear all; close all; clc;
pkg load statistics;

N = 1e4;

dx = 0.05; x = -0.1 : dx : 1.1
dy = 0.05; y = -0.1 : dy : 1.1

X = rand(1, N);
Y = zeros(1, N);

for (i = 1 : N)
  Y(i) = X(i) * rand();
end

figure; hold on; grid on;
scatter(X(1:2000), Y(1:2000));
axis('square');
xlabel('y'); ylabel('y');

% figure;
% [xx, yy] = meshgrid(x, y);
% pdfXY_sim = hist3([X' Y'], {x y}) / (N * dx * dy);
% pdfXY_teo = (1 ./ xx) .* (0 <= yy & yy <= xx & xx <= 1);

% subplot(1, 2, 1); hold on; grid on;
% surf(xx, yy, pdfXY_sim);
% view(45, 30);
% xlabel('x'); ylabel('y'); zlabel('f_{X,Y}(x, y)');

% subplot(1, 2, 2); hold on; grid on;
% surf(xx, yy, pdfXY_teo);
% view(45, 30);
% xlabel('x'); ylabel('y'); zlabel('f_{X,Y}(x, y)');

covXY_sim = cov(X, Y)
covXY_teo = 1/24

Pr_triangulo_teo = log(2) - 1/2
Pr_triangulo_sim = mean()