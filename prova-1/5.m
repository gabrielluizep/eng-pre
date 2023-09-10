clear all; close all; clc;
pkg load statistics;

N = 10;                          % Número de lançamentos

U = randi([1 6], 1, N);          % Lançamento dos dados

idx1 = U == 1 | U == 3 | U == 5; % Ocorrências ímpares
idx2 = U == 2 | U == 4 | U == 6; % Ocorrências pares

X = zeros(1, N);

X(idx1) = 0; % Se for impar atribuir valor 0

% Se for par atribuir valor pela distribuição exponencial com \lambda=2
X(idx2) = exprnd(2, 1, sum(idx2));

dx=0.01; x = -0.25 : dx : 3;

pdfX_sim = hist(X, x) / (N * dx);

figure;
plot(x, pdfX_sim,'b');
xlabel('x'); ylabel('f_X(x)');
