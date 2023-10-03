clear all; close all; clc;
pkg load statistics;

N = 1e6;

U = 2 * rand(N, 1) - 1;

X = U.^2;
Y = U.^3;

dx = 0.002; x = -1.2 : dx : 1.2;
dy = 0.002; y = -1.2 : dy : 1.2;

pdfX_sim = hist(X, x) / (N * dx);
pdfY_sim = hist(Y, y) / (N * dy);

figure
subplot(2, 1, 1); grid on; hold on;
bar(x, pdfX_sim, 'y');
xlim([-1.2 1.2]); ylim([0 3]);
xlabel('x'); ylabel('f_X(x)');
subplot(2, 1, 2); grid on; hold on;
bar(y, pdfY_sim, 'y');
xlim([-1.2 1.2]); ylim([0 3]);
xlabel('y'); ylabel('f_Y(y)');

y0 = 1/8;
Xcond = X(abs(Y - y0) < 1e-3);
pdfXcond_sim = hist(Xcond, x) / (length(Xcond) * dx);

x0 = 1/4;
Ycond = Y(abs(X - x0) < 1e-3);
pdfYcond_sim = hist(Ycond, y) / (length(Ycond) * dy);

figure;
subplot(2, 1, 1); grid on; hold on;
bar(y, pdfYcond_sim, 'y');
xlim([-1.2 1.2]);
xlabel('y'); ylabel(sprintf('f_Y(y | X=%g)', x0));
subplot(2, 1, 2); grid on; hold on;
bar(x, pdfXcond_sim, 'y');
xlim([-1.2 1.2]);
xlabel('x'); ylabel(sprintf('f_X(x | Y=%g)', y0));

rhoXY_sim = cov(X, Y) / sqrt(var(X) * var(Y))
rhoXY_teo = 0