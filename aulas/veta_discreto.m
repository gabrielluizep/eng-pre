clear all; close all; clc;

N = 1e6;

B1 = randi([0 1], 1, N);
B2 = randi([0 1], 1, N);
B3 = randi([0 1], 1, N);

X1 = B1;
X2 = B1 .* B2;
X3 = B1 .* B2 .* B3;

muB_teo = [1/2; 1/2; 1/2]
muB_sim = mean([B1' B2' B3'])'

covB_teo = [1/4 0 0; 0 1/4 0; 0 0 1/4]
covB_sim = cov([B1' B2' B3'])

muX_teo = [1/2; 1/4; 1/8]
muX_sim = mean([X1' X2' X3'])'

covX_teo = [1/4 1/8 1/16; 1/8 3/16 3/32; 1/16 3/32 7/64]
covX_sim = cov([X1' X2' X3'])