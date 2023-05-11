%% Datos de entrenamiento (Datos 12)

close all
clc
clear

load('acetona_etanol.mat', 'data_sensors91011');
data_sensors91011 = data_sensors91011(1:size(data_sensors91011,1)-11,:); 
test_ratio = 0.2;
rng(42); % fija la semilla en 42
indices = randperm(size(data_sensors91011, 1));
test_size = round(size(data_sensors91011, 1) * test_ratio);
test_indices = indices(1:test_size);
train_indices = indices(test_size+1:end);
train_data = data_sensors91011(train_indices, 1:end);
test_data = data_sensors91011(test_indices, 1:end);

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


%Mas datos de entrenamiento

filename80 = 'putty_sensors_data_AZUL_PRIMERO_TEST2.csv';
data80 = readtable(filename80);

% Buscamos la filas vacias y las eliminamos
empty_rows80 = all(ismissing(data80), 2);
data80(empty_rows80, :) = [];

new_filename80 = 'cleaned_putty_Arduino_Data80.csv';
writetable(data80, new_filename80);
M80 = readmatrix('cleaned_putty_Arduino_Data80.csv');
M80(:,1) = M80(:,1) - 0.64;
M80(:,2) = M80(:,2) - 0.31;
M80(:,3) = M80(:,3) - 0.03;
figure(80),
plot(M80(:,1));
hold on
plot(M80(:,2));
hold on
plot(M80(:,3));

xline(10700);
xline(20700);

xline(25600);
xline(35600);

xline(40750);
xline(50750);

xline(55550);
xline(65550);

xline(70350);
xline(80350);

xline(85330);
xline(95330);

xline(99850);
xline(109850);

xline(115535);
xline(125535);
 
xline(130360);
xline(140360);
 
xline(145480);
xline(155480);

l = [];
%l = [l M12(27830:37830,1)' M12(27830:37830,2)' M12(27830:37830,3)';];
%l = [l M12(67850:77850,1)' M12(67850:77850,2)' M12(67850:77850,3)';];
l = [l M80(130360:140360,1)' M80(130360:140360,2)' M80(130360:140360,3)';];
%l = [l M80(25600:35600,1)' M80(25600:35600,2)' M80(25600:35600,3)';];

y91011 = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0];
[coeff, score, latent] = pca(train_data(:,1:end-1), 'NumComponents', 2);

% Transpose coeff(:, 1:2) to make it a 2x91 matrix
coeff_2D = coeff(:, 1:2);

projectedData = (test_data(1,1:end-1) - mean(train_data(:,1:end-1))) * coeff_2D;       

% Plot the projected new data on the same plot as the original data
figure(22),
scatter(score(:,1),score(:,2), 25, train_data(:,end)','filled');
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

score = [score train_data(:,end)];

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





