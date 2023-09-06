clear all; close all; clc;
pkg load statistics;

N = 10^5;

dx = 0.05; x = -1.2 : dx : 1.2; 
dy = 0.05; y = -1.2 : dy : 1.2; 

X = zeros(1, N);
Y = zeros(1, N);

for i = 1 : N
  do
    X(i) = 2 * rand() - 1;
    Y(i) = 2 * rand() - 1;
  until (X(i)^2 + Y(i)^2 <= 1)
end

figure; hold on; grid on;
scatter(X(1:5000), Y(1:5000));
axis('square');
xlabel('x'); ylabel('y');

[xx, yy] = meshgrid(x, y);

pdfXY_sim = hist3([X' Y'], {x y}) / (N * dx *dy);
pdfXY_teo = (1/pi) * (xx.^2 + yy.^2 <= 1);

figure;
subplot(1, 2, 1); hold on; grid on;
surf(xx, yy, pdfXY_sim);   
view(45, 30);
zlim([0 0.4]);
xlabel('x'); ylabel('y'); zlabel('f_{X,Y}(x)');

subplot(1, 2, 2);hold on; grid on;
surf(xx, yy, pdfXY_teo);
view(45, 30);
zlim([0 0.4]);
xlabel('x'); ylabel('y'); zlabel('f_{X,Y}(x)');

pdfX_sim = hist(X, x) / (N * dx);
pdfX_teo = (2/pi) * sqrt(1-x.^2) .* (-1 < x & x < 1);

figure; hold on; grid on;
bar(x, pdfX_sim, 'y');
plot(x, pdfX_teo, 'b', 'LineWidth', 3);
axis('square');
xlabel('x'); ylabel('f_X(x)');