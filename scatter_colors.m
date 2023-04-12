close all
clc
clear
warning off
% Definir los parámetros de las distribuciones gaussianas
mu1 = [1 1];
sigma1 = [0.3 0.2; 0.2 0.2];
mu2 = [-1 -1];
sigma2 = [0.2 0.1; 0.1 0.3];

% Generar los datos de las distribuciones gaussianas
rng(0); % establecer la semilla aleatoria para reproducibilidad
X1 = mvnrnd(mu1, sigma1, 100); % 100 muestras de la primera distribución
X2 = mvnrnd(mu2, sigma2, 100); % 100 muestras de la segunda distribución

% Combinar los datos de ambas distribuciones en una sola matriz
X = [X1; X2];
% Crear un vector de índices de colores para identificar cada conjunto de datos
colors = [];
colors = [colors zeros(1,126) 1 zeros(1,73)];

% Plotear los datos con scatter
scatter(X(:,1), X(:,2), [], colors, 'filled');
colormap(gca, [0 0 1; 1 0 0]); % establecer la paleta de colores (azul y rojo)
xlabel('X');
ylabel('Y');
title('Distribuciones Gaussianas Separadas');
legend('Distribución 1', 'Distribución 2');


