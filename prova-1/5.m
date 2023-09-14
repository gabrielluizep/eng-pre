clear all; close all; clc;
pkg load statistics;

N = 10^6;                        % Número de lançamentos

U = randi([1 6], 1, N);          % Lançamento dos dados

idx1 = U == 1 | U == 3 | U == 5; % Ocorrências ímpares
idx2 = U == 2 | U == 4 | U == 6; % Ocorrências pares

X = zeros(1, N); %

X(idx1) = 0; % Se for impar atribuir valor 0

% Se for par atribuir valor pela distribuição exponencial com \lambda = 2
lambda = 2; X(idx2) = exprnd(lambda, 1, sum(idx2));

dx = 0.01; x = -1 : dx : 10;

pdfX_sim = hist(X, x) / (N * dx);
pdfX_teo = (1/2) * (1/lambda) * exp(-x/lambda) .* (x >= 0);

cdfX_sim = cumsum(pdfX_sim) * dx
cdfX_teo = 1/2 + 1 - exp(-x/lambda) .* (x >= 0);


figure;
subplot(2,1,1); hold on; grid on;
bar(x, pdfX_sim,'y');
plot(x, pdfX_teo,'b', 'LineWidth', 3');
plot([0, 0], [0, 1/2], 'b', 'LineWidth', 4');
plot([0], [1/2], 'b^', 'LineWidth', 3');
xlim([-0.1 5]); ylim([-0.1 0.7]);
xlabel('x'); ylabel('f_X(x)');

subplot(2,1,2); hold on; grid on;
plot(x, cdfX_sim, 'y', 'LineWidth', 4);
plot(x, cdfX_sim, 'b--', 'LineWidth', 2);
xlim([-1 10]); ylim([-0.1 1]);
xlabel('x'); ylabel('F_X(x)');

printf('Sim: E[X] = %g\n', mean(X));
printf('Teo: E[X] = %g\n', 1);