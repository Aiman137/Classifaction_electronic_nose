% Generate some new data
new_data = rand(1, 30003);

% Normalize and center the new data using the same parameters as the original data
mean_data = mean(data, 1);
std_data = std(data, [], 1);
norm_new_data = (new_data - mean_data) ./ std_data;

% Transpose coeff(:, 1:2) to make it a 2x91 matrix
coeff_2D = coeff(:, 1:2)';

% Project the new data onto the first 2 principal components using matrix multiplication
projected_new_data = norm_new_data * coeff_2D;

% Plot the projected new data on the same plot as the original data
hold on;
scatter(projected_new_data(:, 1), projected_new_data(:, 2), 'filled');
hold off;
