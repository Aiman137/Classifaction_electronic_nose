close all 
clc
clear

load spectra.mat	

figure(1),
plot(NIR(60,:))

[U, Z] = pca(NIR, 'NumComponents', 2);

figure(2),
scatter(Z(:,1), Z(:,2), 20, 'filled');