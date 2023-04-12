close all
clear
clc

% Define the number of clusters
K = 2;

% Generate some random data to cluster
data = randn(100,2);

% Initialize centroids randomly
centroids = rand(K,2);

% Initialize old_centroids to keep track of convergence
old_centroids = zeros(K,2);

% Loop until convergence
while ~isequal(centroids,old_centroids)

  % Assign data points to clusters
  distances = pdist2(data,centroids);
  [min_dist,cluster] = min(distances,[],2);

  % Update centroids
  for k = 1:K
    centroids(k,:) = mean(data(cluster==k,:));
  end

  % Check for convergence
  if isequal(centroids,old_centroids)
    break;
  else
    old_centroids = centroids;
  end

end

% Plot the results
h = gscatter(data(:,1),data(:,2),cluster);

% Add a legend to the plot
legend(h,{'Cluster 1','Cluster 2'});

hold on;

% Plot the centroids
scatter(centroids(:,1),centroids(:,2),100,'k','filled');

% Choose a data point to project
idx = randi(size(data,1));
datapoint = data(idx,:);

% Project the data point onto the graph
scatter(datapoint(1),datapoint(2),100,'r','filled');

% Determine which cluster the data point belongs to
datapoint_cluster = cluster(idx);
disp(['Data point belongs to cluster ',num2str(datapoint_cluster)]);

hold off;
