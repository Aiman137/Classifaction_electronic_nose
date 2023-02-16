close all
clc 
clear

% Cargamos el archivo csv
filename = 'putty_Arduino_DataDEF.csv';
data = readtable(filename);

% Buscamos la filas vacias y las eliminamos
empty_rows1 = all(ismissing(data), 2);
data(empty_rows1, :) = [];

new_filename = 'cleaned_putty_Arduino_DataDEF.csv';
writetable(data, new_filename);
M1 = readmatrix('cleaned_putty_Arduino_DataDEF.csv');
%disp(data);

% Cargamos otros datos
data2 = readtable('putty_sensors_data2.csv');

% Buscamos la filas vacias y las eliminamos
empty_rows2 = all(ismissing(data2), 2);
data2(empty_rows2, :) = [];

writetable(data2, 'cleaned_data2.csv');
M2 = readmatrix('cleaned_data2.csv');

figure(1),
plot(data2{2:end, 1});
hold on
plot(data2{2:end, 2});
hold on
plot(data2{2:end, 3});

% Cargamos otros datos
data3 = readtable('putty_sensors_data3.csv');

% Buscamos la filas vacias y las eliminamos
empty_rows3 = all(ismissing(data3), 2);
data3(empty_rows3, :) = [];

writetable(data3, 'cleaned_data2.csv');
M3 = readmatrix('cleaned_data2.csv');

figure(2),
plot(data3{2:end, 1});
hold on
plot(data3{2:end, 2});
hold on
plot(data3{2:end, 3});





figure(3),
plot(data{2:end, 1});
hold on
plot(data{2:end, 2});
hold on
plot(data{2:end, 3});
xline(6280); %%
xline(14020); %%

xline(16560); %%
xline(24300); %%

xline(24305); %%
xline(32045); %%

xline(34300); %%
xline(42040); %%

xline(42045); %%
xline(49785); %%


xline(51850); %%
xline(59590);

xline(59600);
xline(67340);


data_sensors = [M1(6280:14020,1)' M1(6280:14020,2)' M1(6280:14020,3)';
    M1(16560:24300,1)' M1(16560:24300,2)' M1(16560:24300,3)';
    M1(24305:32045,1)' M1(24305:32045,2)' M1(24305:32045,3)';
    M1(34300:42040,1)' M1(34300:42040,2)' M1(34300:42040,3)';
    M1(42045:49785,1)' M1(42045:49785,2)' M1(42045:49785,3)';
    M1(51850:59590,1)' M1(51850:59590,2)' M1(51850:59590,3)';
    M1(59600:67340,1)' M1(59600:67340,2)' M1(59600:67340,3)';];

y = [1 0 1 0 1 0 1];

[U, Z] = pca(data_sensors, 'NumComponents', 3);
figure(101),
scatter(Z(:,1), Z(:,2), 25, y,'filled');





