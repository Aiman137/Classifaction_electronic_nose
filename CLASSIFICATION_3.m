close all
clc
clear

load('decanol.mat');
load('acetona_etanol.mat');
load("acetona_etanol_amp_const.mat");
load("decanol_const_amp.mat"); %data without labels

%add labels to decanol data

data_sensors_decanol_const_amp = [data_sensors_decanol_const_amp 2*ones(1,size(data_sensors_decanol,1))']; 


data_3 = [];
data_3 = [data_sensors_decanol 2*ones(1,size(data_sensors_decanol,1))';
          data_sensors91011(1:12,:); data_sensors91011(23:34,:);data_sensors91011(46:48,:);
          data_sensors91011(13:22,:); data_sensors91011(35:45,:); data_sensors91011(71:75,:);
          data_sensors91011(45,:)];

data_no_label = data_3;
data_no_label(:,end) = [];


%data_sensors91011 = data_sensors91011(1:size(data_sensors91011,1)-11,:); 
test_ratio = 0.2;
rng(42); % fija la semilla en 42
indices = randperm(size(data_3, 1));
test_size = round(size(data_3, 1) * test_ratio);
test_indices = indices(1:test_size);
train_indices = indices(test_size+1:end);
train_data = data_3(train_indices, 1:end);
test_data = data_3(test_indices, 1:end);



[coeff, score, latent] = pca(train_data(:,1:end-1), 'NumComponents', 2);
figure(1),
scatter(score(:,1),score(:,2), 25, train_data(:,end)','filled');
title("Raw data");

% Normalize data to 0 and 1

%normas = sqrt(sum(data_no_label.^2, 2));
%matriz_normalizada = data_no_label ./ normas;

[coeff2, score2, latent2] = pca(normr(train_data(:,1:end-1)), 'NumComponents', 2);
figure(2),
scatter(score2(:,1),score2(:,2), 25, train_data(:,end)','filled');
title("Normalized data between 0 and 1");


[coeff3, score3, latent3] = pca(data_sensors91011_amp_const, 'NumComponents', 2);
figure(3),
scatter(score3(:,1),score3(:,2), 25, data_sensors91011_amp_const(:,end)','filled');

% juntamos todos los datos con la amplitud constante
%datos_totales = [data_sensors91011_amp_const data_sensors_decanol_const_amp];

data_sensors91011_amp_const = vertcat(data_sensors91011_amp_const, data_sensors_decanol_const_amp);
                
[coeff4, score4, latent4] = pca(data_sensors91011_amp_const, 'NumComponents', 2);
figure(4),
scatter(score4(:,1),score4(:,2), 25, data_sensors91011_amp_const(:,end)','filled');
title("Amplitudes escaladas a 1");


figure(5),
plot(data_sensors91011_amp_const(2,:))


coeff_2D = coeff2(:, 1:2);

projectedData = (normr(test_data(6,1:end-1)) - mean(normr(train_data(:,1:end-1)))) * coeff_2D;       

% Plot the projected new data on the same plot as the original data
figure(22),
scatter(score2(:,1),score2(:,2), 25, train_data(:,end)','filled');
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
for i=1:size(score2,1)
    distances = [distances sqrt((projectedData(:,1) - score2(i,1) )^2+(projectedData(:,2) - score2(i,2))^2)];
    [sorted_distances, indices] = sort(distances);
end

%kNearestLabels = score(indices(1:k));

score2 = [score2 train_data(:,end)];

prediction = [];
for j=1:k
    hold on
    plot([projectedData(:,1), score2(indices(j),1)], [projectedData(:,2), score2(indices(j),2)], 'k--', 'LineWidth', 1);
    prediction = [prediction score2(indices(j),3)];
end
predicted = mode(prediction);

if predicted == 1
    disp("Acetona");
elseif predicted == 2
    disp("Etanol");
else
    disp("Decanol");
end




