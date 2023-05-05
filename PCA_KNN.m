%% Datos de entrenamiento (Datos 12)

close all
clc
clear

load('acetona_etanol.mat', 'data_sensors91011')
% Cargamos los datos 10
% Cargamos el archivo csv
filename12 = 'putty_sensors_data12.csv';
data12 = readtable(filename12);

% Buscamos la filas vacias y las eliminamos
empty_rows12 = all(ismissing(data12), 2);
data12(empty_rows12, :) = [];

new_filename12 = 'cleaned_putty_Arduino_Data12.csv';
writetable(data12, new_filename12);
M12 = readmatrix('cleaned_putty_Arduino_Data12.csv');

figure(24),
plot(data12{2:end, 1});
hold on
plot(data12{2:end, 2});
hold on
plot(data12{2:end, 3});

%Acetona
xline(27830);
xline(37830);

xline(37835);
xline(47835);

xline(47840);
xline(57840);

xline(57845);
xline(67845);

%Etanol
xline(67850);
xline(77850);

xline(77855);
xline(87855);

xline(87860);
xline(97860);

xline(97865);
xline(107865);

xline(107870);
xline(117870);

%Acetona
xline(126730);
xline(136730);

xline(136735);
xline(146735);

xline(146740);
xline(156740);

xline(156745);
xline(166745);

l = [];
l = [l M12(27830:37830,1)' M12(27830:37830,2)' M12(27830:37830,3)';];

y91011 = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 ];
[coeff, score, latent] = pca(data_sensors91011, 'NumComponents', 2);

% Transpose coeff(:, 1:2) to make it a 2x91 matrix
coeff_2D = coeff(:, 1:2);

projectedData = (l - mean(data_sensors91011)) * coeff_2D;       

% Plot the projected new data on the same plot as the original data
figure(22),
scatter(score(:,1),score(:,2), 25, y91011,'filled');
hold on
scatter(projectedData(:,1), projectedData(:,2), 50, 'filled');

% Built-in function knn

%Mdl = fitcknn(score(:,1), score(:,2), 'NumNeighbors', 5 );


%Ypred = predict(Mdl, projectedData(:,1));

%accuracy = sum(Ypred == projectedData(:,2)) / numel(projectedData(:,2));
%disp(['Accuracy: ' num2str(accuracy)]);

% KNN Algorithm
k = 3; % Lo elijo yo de momento
% Calculamos la distancia euclidea
distances = [];
for i=1:size(score,1)
    distances = [distances sqrt((projectedData(:,1) - score(i,1) )^2+(projectedData(:,2) - score(i,2))^2)];
    [sorted_distances, indices] = sort(distances);
end

%kNearestLabels = score(indices(1:k));

score = [score y91011'];

prediction = [];
for j=1:k
    hold on
    plot([projectedData(:,1), score(indices(j),1)], [projectedData(:,2), score(indices(j),2)], 'k--', 'LineWidth', 1);
    prediction = [prediction score(indices(j),3)];
end
predicted = mode(prediction);

if predicted == 1
    disp("Acetona");
else
    disp("Etanol");
end