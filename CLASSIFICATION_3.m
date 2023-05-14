close all
clc
clear

load('decanol.mat');
load('acetona_etanol.mat');


data_3 = [];
data_3 = [data_sensors_decanol 2*ones(1,size(data_sensors_decanol,1))';
          data_sensors91011(1:12,:); data_sensors91011(23:34,:);data_sensors91011(46:48,:);
          data_sensors91011(13:22,:); data_sensors91011(35:45,:); data_sensors91011(71:75,:);
          data_sensors91011(45,:)];

data_no_label = data_3;
data_no_label(:,end) = [];

[coeff, score, latent] = pca(data_3, 'NumComponents', 2);
scatter(score(:,1),score(:,2), 25, data_3(:,end)','filled');
