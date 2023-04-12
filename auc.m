close all
clc 
clear


% Specify the file path and sheet name.
filename = 'integral.xlsx';
sheet = 'Hoja1';

% Read the data from the Excel file.
data = readtable(filename, 'Sheet', sheet);

% Extract the x and y data.
x = table2array(data(601:820, 1));
y = table2array(data(601:820, 2));

% Extract the x and y data.
x_ = table2array(data(214:437, 1));
y_ = table2array(data(214:437, 2));

% Create a line plot.
plot(x, y);
hold on
plot(x_, y_);

% Set the x and y labels.
xlabel('X');
ylabel('Y');

% Set the title.
title('X vs Y');


% Compute the area under the curve using the trapz function.
area = trapz(x, abs(y));
area2 = trapz(x_, abs(y_));
disp(['Area = ', num2str(area)]);
disp(['Area2 = ', num2str(area2)]);
disp(['diff = ', num2str(abs(area) - abs(area2))]);




%%
close all
clc 
clear


% Create the x and y vectors.
x = [5, -5];
y = [5, -5];



% Calculate the area using the trapz function.
area = trapz(x, abs(y));


% Display the area.
disp(['Area = ', num2str(area)]);


figure(2),
plot(x,y)


