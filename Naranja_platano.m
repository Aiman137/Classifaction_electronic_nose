close all
clear
clc

% Cargamos los datos 
% Cargamos el archivo csv
filename_NP = 'putty_sensors_data17.csv';
data_NP = readtable(filename_NP);

% Buscamos la filas vacias y las eliminamos
empty_rows_NP = all(ismissing(data_NP), 2);
data_NP(empty_rows_NP, :) = [];

new_filename_NP = 'cleaned_putty_Arduino_Data17.csv';
writetable(data_NP, new_filename_NP);
M_NP = readmatrix('cleaned_putty_Arduino_Data17.csv');

figure(1),
plot(data_NP{2:end, 1});
hold on
plot(data_NP{2:end, 2});
hold on
plot(data_NP{2:end, 3});

%%

% Cargamos los datos 
% Cargamos el archivo csv
filename_NP2 = 'putty_sensors_data172.csv';
data_NP2 = readtable(filename_NP2);

% Buscamos la filas vacias y las eliminamos
empty_rows_NP2 = all(ismissing(data_NP2), 2);
data_NP2(empty_rows_NP2, :) = [];

new_filename_NP2 = 'cleaned_putty_Arduino_Data172.csv';
writetable(data_NP2, new_filename_NP2);
M_NP2 = readmatrix('cleaned_putty_Arduino_Data172.csv');

figure(2),
plot(data_NP2{2:end, 1});
hold on
plot(data_NP2{2:end, 2});
hold on
plot(data_NP2{2:end, 3});

%%

% Cargamos los datos 
% Cargamos el archivo csv
filename_NP3 = 'putty_sensors_dataNARANJA_PLATANO2.csv';
data_NP3 = readtable(filename_NP3);

% Buscamos la filas vacias y las eliminamos
empty_rows_NP3 = all(ismissing(data_NP3), 2);
data_NP3(empty_rows_NP3, :) = [];

new_filename_NP3 = 'cleaned_putty_Arduino_Data172.csv';
writetable(data_NP3, new_filename_NP3);
M_NP3 = readmatrix('cleaned_putty_Arduino_Data172.csv');

figure(3),
plot(data_NP3{2:end, 1});
hold on
plot(data_NP3{2:end, 2});
hold on
plot(data_NP3{2:end, 3});

%%
close all
clear
clc
% Cargamos los datos 
% Cargamos el archivo csv
filename_NP4 = 'putty_sensors_dataPlatanoNaranja3.csv';
data_NP4 = readtable(filename_NP4);

% Buscamos la filas vacias y las eliminamos
empty_rows_NP4 = all(ismissing(data_NP4), 2);
data_NP4(empty_rows_NP4, :) = [];

new_filename_NP4 = 'cleaned_putty_Arduino_NARANJA_PLATANO3.csv';
writetable(data_NP4, new_filename_NP4);
M_NP4 = readmatrix('cleaned_putty_Arduino_NARANJA_PLATANO3.csv');

figure(4),
plot(data_NP4{9000:end, 1} - 0.34);
hold on
plot(data_NP4{9000:end, 2} - 0.09);
hold on
plot(data_NP4{9000:end, 3} - 0.250);

xline(14820);
xline(29720);

xline(29725);
xline(44620);

xline(44625);
xline(59525);

xline(59530);
xline(74430);

xline(74435);
xline(89335);

xline(112375);
xline(127275);

xline(127280);
xline(142180);

xline(210030);
xline(224930);

xline(224935);
xline(239835);

xline(239840);
xline(254740);

xline(254745);
xline(269645);

xline(269650);
xline(284550);

xline(284555);
xline(299455);


data_sensors_PYN = [M_NP4(14820:29720,1)' M_NP4(14820:29720,2)' M_NP4(14820:29720,3)';
    M_NP4(29725:44625,1)' M_NP4(29725:44625,2)' M_NP4(29725:44625,3)';
    M_NP4(44630:59530,1)' M_NP4(44630:59530,2)' M_NP4(44630:59530,3)';
    M_NP4(59535:74435,1)' M_NP4(59535:74435,2)' M_NP4(59535:74435,3)';
    M_NP4(74440:89340,1)' M_NP4(74440:89340,2)' M_NP4(74440:89340,3)';
    M_NP4(112375:127275,1)' M_NP4(112375:127275,2)' M_NP4(112375:127275,3)';

    M_NP4(127280:142180,1)' M_NP4(127280:142180,2)' M_NP4(127280:142180,3)';
    M_NP4(210030:224930,1)' M_NP4(210030:224930,2)' M_NP4(210030:224930,3)';
    M_NP4(224935:239835,1)' M_NP4(224935:239835,2)' M_NP4(224935:239835,3)';
    M_NP4(239840:254740,1)' M_NP4(239840:254740,2)' M_NP4(239840:254740,3)';
    M_NP4(254745:269645,1)' M_NP4(254745:269645,2)' M_NP4(254745:269645,3)';
    M_NP4(269650:284550,1)' M_NP4(269650:284550,2)' M_NP4(269650:284550,3)';
    M_NP4(284555:299455,1)' M_NP4(284555:299455,2)' M_NP4(284555:299455,3)';];

y_PYN = [1 0 1 0 1 0 1 0 1 0 1 0 1];

[U, Z] = pca(data_sensors_PYN, 'NumComponents', 3);
figure(5),
scatter(Z(:,2), Z(:,3), 25, y_PYN,'filled');

%% Datos 4
close all
clc
clear
% Cargamos los datos 
% Cargamos el archivo csv
filename_NP5 = 'putty_sensors_dataPlatanoNaranja4.csv';
data_NP5 = readtable(filename_NP5);

% Buscamos la filas vacias y las eliminamos
empty_rows_NP5 = all(ismissing(data_NP5), 2);
data_NP5(empty_rows_NP5, :) = [];

new_filename_NP5 = 'cleaned_putty_Arduino_NARANJA_PLATANO4.csv';
writetable(data_NP5, new_filename_NP5);
M_NP5 = readmatrix('cleaned_putty_Arduino_NARANJA_PLATANO4.csv');

figure(4),
plot(data_NP5{20000:83000, 1} - 0.28);
hold on
plot(data_NP5{20000:83000, 2} - 0.13);
hold on
plot(data_NP5{20000:83000, 3} - 0.27);

