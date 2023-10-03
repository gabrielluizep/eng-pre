clear all; close all; clc;
pkg load statistics;

N = 1e6;

S = [0 1; 1 0; 0 -1; -1 0];

idx = randi([1 4], 1, N);

X = S(idx, 1)';
Y = S(idx, 2)';

x = -1:1;
y = -1:1;

pmfXY_sim = hist3([X' Y'], {x y}) / N
pmfXY_teo = [0 1/4 0; 1/4 0 1/4; 0 1/4 0]

pmfX_sim = hist(X, x) / N
pmfX_teo = [1/4 1/2 1/4]

pmfY_sim = hist(Y, y) / N
pmfY_teo = [1/4 1/2 1/4]

rhoXY_sim = cov(X, Y) / sqrt(var(X) * var(Y))
rhoXY_teo = 0