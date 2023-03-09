close all
clc
clear

function [clusters, centroids] = kmeans(X, K, max_iters)
% Inputs:
% X: an n-by-p matrix of n samples, each with p features
% K: the number of clusters to create
% max_iters: the maximum number of iterations to run the algorithm
% Outputs:
% clusters: a n-by-1 vector of cluster assignments for each sample
% centroids: a K-by-p matrix of centroid coordinates

% Initialize centroids randomly
centroids = X(randperm(size(X,1),K),:);

for i = 1:max_iters
    % Assign each point to the closest centroid
    distances = pdist2(X, centroids);
    [~, clusters] = min(distances, [], 2);
    
    % Update centroids to be the mean of the assigned points
    for k = 1:K
        centroids(k,:) = mean(X(clusters == k,:), 1);
    end
end
end

% Generate some random data
n = 100;
p = 2;
X = [randn(n/2,p)-3; randn(n/2,p)+3];

% Run k-means with K=2
K = 2;
max_iters = 100;
[clusters, centroids] = kmeans(X, K, max_iters);

% Plot the results
figure;
hold on;
scatter(X(clusters==1,1), X(clusters==1,2), 'r');
scatter(X(clusters==2,1), X(clusters==2,2), 'b');
scatter(centroids(:,1), centroids(:,2), 'kx');
legend('Cluster 1', 'Cluster 2', 'Centroids');

