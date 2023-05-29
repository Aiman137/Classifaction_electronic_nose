close all
clc
clear

load('decanol.mat');
load('acetona_etanol_2_min.mat');
load("acetona_etanol_amp_const_min.mat");
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

[coeff, score, latent] = pca(data_no_label, 'NumComponents', 2);
figure(1),
scatter(score(:,1),score(:,2), 25, data_3(:,end)','filled');
title("Raw data");

% Normalize data to 0 and 1

%normas = sqrt(sum(data_no_label.^2, 2));
%matriz_normalizada = data_no_label ./ normas;

[coeff2, score2, latent2] = pca(normr(data_no_label), 'NumComponents', 2);
figure(2),
scatter(score2(:,1),score2(:,2), 25, data_3(:,end)','filled');
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



