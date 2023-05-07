close all
clear 
clc

warning off
%DECANOL5
filename5 = 'putty_sensors_data_DECANOL5.csv';
data_decanol5 = readtable(filename5);

% Buscamos la filas vacias y las eliminamos
empty_rows5 = all(ismissing(data_decanol5), 2);
data_decanol5(empty_rows5, :) = [];

new_filename5 = 'cleaned_putty_Arduino_DECANOL5.csv';
writetable(data_decanol5, new_filename5);
M5_DECANOL = readmatrix('cleaned_putty_Arduino_DECANOL5.csv');

figure(1),
plot(data_decanol5{2:end, 1});
hold on
plot(data_decanol5{2:end, 2});
hold on
plot(data_decanol5{2:end, 3});


%DECANOL4
filename4 = 'putty_sensors_data_DECANOL4.csv';
data_decanol4 = readtable(filename4);

% Buscamos la filas vacias y las eliminamos
empty_rows4 = all(ismissing(data_decanol4), 2);
data_decanol4(empty_rows4, :) = [];

new_filename4 = 'cleaned_putty_Arduino_DECANOL4.csv';
writetable(data_decanol4, new_filename4);

M4_DECANOL = readmatrix('cleaned_putty_Arduino_DECANOL4.csv');

%elimino la ultima fila que tiene tipo de dato NaN
M4_DECANOL(end,:) = [];

M4_DECANOL(:,1) = M4_DECANOL(:,1) - min(M4_DECANOL(:,1));
M4_DECANOL(:,2) = M4_DECANOL(:,2) - min(M4_DECANOL(:,2));
M4_DECANOL(:,3) = M4_DECANOL(:,3) - min(M4_DECANOL(:,3));

figure(2),
plot(data_decanol4{22100:135825, 1});
hold on
plot(data_decanol4{22100:135825, 2});
hold on
plot(data_decanol4{22100:135825, 3});
hold on
plot(M4_DECANOL(:,1));
hold on
plot(M4_DECANOL(:,2));
hold on
plot(M4_DECANOL(:,3));



xline(1150);
xline(11150);

xline(15850);
xline(25850);

xline(31000);
xline(41000);

xline(61000);
xline(71000);

xline(83400);
xline(93400);

xline(98650);
xline(108650);    

%DECANOL3

filename3 = 'putty_sensors_data_DECANOL3.csv';
data_decanol3 = readtable(filename3);

% Buscamos la filas vacias y las eliminamos
empty_rows3 = all(ismissing(data_decanol3), 2);
data_decanol3(empty_rows3, :) = [];

new_filename3 = 'cleaned_putty_Arduino_DECANOL3.csv';
writetable(data_decanol3, new_filename3);
M3_DECANOL = readmatrix('cleaned_putty_Arduino_DECANOL3.csv');

figure(3),
plot(data_decanol3{2:end, 1});
hold on
plot(data_decanol3{2:end, 2});
hold on
plot(data_decanol3{2:end, 3});

%DECANOL2

filename2 = 'putty_sensors_data_DECANOL2.csv';
data_decanol2 = readtable(filename2);

% Buscamos la filas vacias y las eliminamos
empty_rows2 = all(ismissing(data_decanol2), 2);
data_decanol2(empty_rows2, :) = [];

new_filename2 = 'cleaned_putty_Arduino_DECANOL2.csv';
writetable(data_decanol2, new_filename2);
M1 = readmatrix('cleaned_putty_Arduino_DECANOL2.csv');

figure(4),
plot(data_decanol2{23000:84000, 1});
hold on
plot(data_decanol2{23000:84000, 2});
hold on
plot(data_decanol2{23000:84000, 3});

%Data lol

filename6 = 'putty_sensors_dataLOL.csv';
data_lol = readtable(filename6);

% Buscamos la filas vacias y las eliminamos
empty_rows6 = all(ismissing(data_lol), 2);
data_lol(empty_rows6, :) = [];

new_filename6 = 'cleaned_putty_Arduino_dataLOL.csv';
writetable(data_lol, new_filename6);
MdataLOL = readmatrix('cleaned_putty_Arduino_dataLOL.csv');

figure(4),
plot(data_lol{23000:84000, 1});
hold on
plot(data_lol{23000:84000, 2});
hold on
plot(data_lol{23000:84000, 3});

data_sensors_decanol = [M4_DECANOL(1150:11150,1)' M4_DECANOL(1150:11150,2)' M4_DECANOL(1150:11150,3)';
    M4_DECANOL(15850:25850,1)' M4_DECANOL(15850:25850,2)' M4_DECANOL(15850:25850,3)';
    M4_DECANOL(31000:41000,1)' M4_DECANOL(31000:41000,2)' M4_DECANOL(31000:41000,3)';
    M4_DECANOL(61000:71000,1)' M4_DECANOL(61000:71000,2)' M4_DECANOL(61000:71000,3)';
    M4_DECANOL(83400:93400,1)' M4_DECANOL(83400:93400,2)' M4_DECANOL(83400:93400,3)';
    M4_DECANOL(98650:108650,1)' M4_DECANOL(98650:108650,2)' M4_DECANOL(98650:108650,3)';];

%figure(100),
%plot(data_sensors_decanol)