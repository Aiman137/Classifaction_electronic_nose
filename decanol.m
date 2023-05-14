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
% plot(data_decanol4{22100:135825, 1});
% hold on
% plot(data_decanol4{22100:135825, 2});
% hold on
% plot(data_decanol4{22100:135825, 3});
% hold on
plot(M4_DECANOL(:,1));  
hold on
plot(M4_DECANOL(:,2));
hold on
plot(M4_DECANOL(:,3));



% xline(1150);
% xline(11150);
% 
% xline(15850);
% xline(25850);
% 
% xline(31000);
% xline(41000);
% 
% xline(61000);
% xline(71000);
% 
% xline(83400);
% xline(93400);
% 
% xline(98650);
% xline(108650);    

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



%Decanol 6

filename6 = 'putty_sensors_data_DECANOL6.csv';
data_decanol6 = readtable(filename6);

% Buscamos la filas vacias y las eliminamos
empty_rows6 = all(ismissing(data_decanol6), 2);
data_decanol6(empty_rows6, :) = [];

new_filename6 = 'cleaned_putty_Arduino_DECANOL6.csv';
writetable(data_decanol6, new_filename6);
M6_DECANOL = readmatrix('cleaned_putty_Arduino_DECANOL6.csv');

figure(5),
plot(data_decanol6{2:end, 1});
hold on
plot(data_decanol6{2:end, 2});
hold on
plot(data_decanol6{2:end, 3});

xline(6900);
xline(16900);

xline(21900);
xline(31900);

xline(36180);
xline(46180);

xline(51280);
xline(61280);

xline(103980);
xline(113980);

xline(119250);
xline(129250);

xline(134190);
xline(144190);

xline(149120);
xline(159120);

xline(163950);
xline(173950);

xline(231520);
xline(241520);


preprocessed_data_sensors = [];



data_sensors_decanol = [];

% Decanol 7

filename7 = 'putty_sensors_data_DECANOL7.csv';
data_decanol7 = readtable(filename7);

% Buscamos la filas vacias y las eliminamos
empty_rows7 = all(ismissing(data_decanol7), 2);
data_decanol7(empty_rows7, :) = [];

new_filename7 = 'cleaned_putty_Arduino_DECANOL7.csv';
writetable(data_decanol7, new_filename7);
M7_DECANOL = readmatrix('cleaned_putty_Arduino_DECANOL7.csv');

% figure(6),
% plot(data_decanol7{2:end, 1} - min(data_decanol7{10000:end, 1}));
% hold on
% plot(data_decanol7{2:end, 2} - min(data_decanol7{10000:end, 2}));
% hold on
% plot(data_decanol7{2:end, 3} - min(data_decanol7{10000:end, 3}));
% ylim([-0.2 2]);

M7_DECANOL(:,1) = M7_DECANOL(:,1) - min(M7_DECANOL(10000:end,1));
M7_DECANOL(:,2) = M7_DECANOL(:,2) - min(M7_DECANOL(10000:end,2));
M7_DECANOL(:,3) = M7_DECANOL(:,3) - min(M7_DECANOL(10000:end,3));

figure(6),
plot(M7_DECANOL(2:end,1));
hold on
plot(M7_DECANOL(2:end,2));
hold on
plot(M7_DECANOL(2:end,3));

xline(6260);
xline(16260);

xline(21106);
xline(31106);

xline(36180);
xline(46180);

xline(50930);
xline(60930);

xline(65930);
xline(75930);

xline(80690);
xline(90690);

xline(103430);
xline(113430);

xline(118530);
xline(128530);

xline(133340);
xline(143340);

xline(148245);
xline(158245);

xline(163400);
xline(173400);


% Decanol 8
filename8 = 'putty_sensors_data_DECANOL8.csv';
data_decanol8 = readtable(filename8);

% Buscamos la filas vacias y las eliminamos
empty_rows8 = all(ismissing(data_decanol8), 2);
data_decanol8(empty_rows8, :) = [];

new_filename8 = 'cleaned_putty_Arduino_DECANOL8.csv';
writetable(data_decanol8, new_filename8);
M8_DECANOL = readmatrix('cleaned_putty_Arduino_DECANOL8.csv');


M8_DECANOL(:,1) = M8_DECANOL(:,1) - min(M8_DECANOL(37047:82090,1));
M8_DECANOL(:,2) = M8_DECANOL(:,2) - min(M8_DECANOL(37047:82090,2));
M8_DECANOL(:,3) = M8_DECANOL(:,3) - min(M8_DECANOL(37047:82090,3));
M8_DECANOL(80455:end,3) = M8_DECANOL(80455:end,3) - min(M8_DECANOL(80455:136693,3));


figure(7),
plot(M8_DECANOL(2:end,1));
hold on
plot(M8_DECANOL(2:end,2));
hold on
plot(M8_DECANOL(2:end,3));


xline(36260);
xline(46260);

xline(51230);
xline(61230);

xline(66185);
xline(76185);

xline(81150);
xline(91150);

xline(103680);
xline(113680);

xline(118650);
xline(128650);

xline(133550);
xline(143550);

xline(163450);
xline(173450);

xline(178450);
xline(188450);

xline(200900);
xline(210900);

xline(215900);
xline(225900);

xline(230900);
xline(240900);

xline(245800);
xline(255800);

xline(260750);
xline(270750);

xline(275665);
xline(285665);

xline(298250);
xline(308250);

xline(313200);
xline(323200);








data_sensors_decanol = [
    M7_DECANOL(6260:16260,1)' M7_DECANOL(6260:16260,2)' M7_DECANOL(6260:16260,3)';
    M7_DECANOL(21106:31106,1)' M7_DECANOL(21106:31106,2)' M7_DECANOL(21106:31106,3)';
    M7_DECANOL(36180:46180,1)' M7_DECANOL(36180:46180,2)' M7_DECANOL(36180:46180,3)';
    M7_DECANOL(50930:60930,1)' M7_DECANOL(50930:60930,2)' M7_DECANOL(50930:60930,3)';
    M7_DECANOL(65930:75930,1)' M7_DECANOL(65930:75930,2)' M7_DECANOL(65930:75930,3)';
    M7_DECANOL(80690:90690,1)' M7_DECANOL(80690:90690,2)' M7_DECANOL(80690:90690,3)';
    M7_DECANOL(103430:113430,1)' M7_DECANOL(103430:113430,2)' M7_DECANOL(103430:113430,3)';
    M7_DECANOL(118530:128530,1)' M7_DECANOL(118530:128530,2)' M7_DECANOL(118530:128530,3)';
    M7_DECANOL(133340:143340,1)' M7_DECANOL(133340:143340,2)' M7_DECANOL(133340:143340,3)'; 
    M7_DECANOL(148245:158245,1)' M7_DECANOL(148245:158245,2)' M7_DECANOL(148245:158245,3)';
    M7_DECANOL(163400:173400,1)' M7_DECANOL(163400:173400,2)' M7_DECANOL(163400:173400,3)';
    M8_DECANOL(36260:46260,1)' M8_DECANOL(36260:46260,2)' M8_DECANOL(36260:46260,3)';
    M8_DECANOL(51230:61230,1)' M8_DECANOL(51230:61230,2)' M8_DECANOL(51230:61230,3)';
    M8_DECANOL(66185:76185,1)' M8_DECANOL(66185:76185,2)' M8_DECANOL(66185:76185,3)'; 
    M8_DECANOL(81150:91150,1)' M8_DECANOL(81150:91150,2)' M8_DECANOL(81150:91150,3)';
    M8_DECANOL(103680:113680,1)' M8_DECANOL(103680:113680,2)' M8_DECANOL(103680:113680,3)';
    M8_DECANOL(118650:128650,1)' M8_DECANOL(118650:128650,2)' M8_DECANOL(118650:128650,3)'; 
    M8_DECANOL(133550:143550,1)' M8_DECANOL(133550:143550,2)' M8_DECANOL(133550:143550,3)';
    M8_DECANOL(163450:173450,1)' M8_DECANOL(163450:173450,2)' M8_DECANOL(163450:173450,3)';
    M8_DECANOL(178450:188450,1)' M8_DECANOL(178450:188450,2)' M8_DECANOL(178450:188450,3)';
    M8_DECANOL(200900:210900,1)' M8_DECANOL(200900:210900,2)' M8_DECANOL(200900:210900,3)'; 
    M8_DECANOL(215900:225900,1)' M8_DECANOL(215900:225900,2)' M8_DECANOL(215900:225900,3)';
    M8_DECANOL(230900:240900,1)' M8_DECANOL(230900:240900,2)' M8_DECANOL(230900:240900,3)';
    M8_DECANOL(245800:255800,1)' M8_DECANOL(245800:255800,2)' M8_DECANOL(245800:255800,3)';
    M8_DECANOL(275665:285665,1)' M8_DECANOL(275665:285665,2)' M8_DECANOL(275665:285665,3)';
    M8_DECANOL(298250:308250,1)' M8_DECANOL(298250:308250,2)' M8_DECANOL(298250:308250,3)';
    M8_DECANOL(313200:323200,1)' M8_DECANOL(313200:323200,2)' M8_DECANOL(313200:323200,3)';
    ];


save('decanol.mat', 'data_sensors_decanol');

%figure(100),
%plot(data_sensors_decanol)

%%








