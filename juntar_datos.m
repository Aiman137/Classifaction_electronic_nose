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
xline(11380); %%

xline(16560); %%
xline(21660); %%

xline(24305); %%
xline(29405); %%

xline(34300); %%
xline(39400); %%

xline(42045); %%
xline(47145); %%


xline(51850); %%
xline(56950);

xline(59600);
xline(64700);


data_sensors = [M1(6280:11380,1)' M1(6280:11380,2)' M1(6280:11380,3)';
    M1(16560:21660,1)' M1(16560:21660,2)' M1(16560:21660,3)';
    M1(24305:29405,1)' M1(24305:29405,2)' M1(24305:29405,3)';
    M1(34300:39400,1)' M1(34300:39400,2)' M1(34300:39400,3)';
    M1(42045:47145,1)' M1(42045:47145,2)' M1(42045:47145,3)';
    M1(51850:56950,1)' M1(51850:56950,2)' M1(51850:56950,3)';
    M1(59600:64700,1)' M1(59600:64700,2)' M1(59600:64700,3)';];

y = [1 0 1 0 1 0 1];

[U, Z] = pca(data_sensors, 'NumComponents', 3);
figure(4),
scatter(Z(:,1), Z(:,2), 25, y,'filled');

%%
% Cargamos datos 4
% Cargamos el archivo csv
filename4 = 'putty_sensors_data4.csv';
data4 = readtable(filename4);

% Buscamos la filas vacias y las eliminamos
empty_rows1 = all(ismissing(data), 2);
data(empty_rows1, :) = [];

new_filename4 = 'cleaned_putty_Arduino_Data4.csv';
writetable(data4, new_filename4);
M4 = readmatrix('cleaned_putty_Arduino_Data4.csv');

figure(5),
plot(data4{2:end, 1});
hold on
plot(data4{2:end, 2});
hold on
plot(data4{2:end, 3});

xline(6100); %%
xline(12600+3400); %%

xline(16415); %%
xline(22915+3400); %%
 
 
xline(36760); %%
xline(43260+3400); %%
 
xline(47160); %%
xline(57060); %%

xline(67280); %%
xline(73780+3400); %%

xline(77450); %%
xline(83950+3400); %%

xline(97500); %%
xline(104000+3400); %%

xline(107415); %%
xline(113915+3400); %%

xline(125500); %%
xline(132000+3400); %%

xline(135200); %%
xline(141700+3400); %%

xline(155700); %%
xline(162200+3400); %%

xline(165780); %%
xline(172280+3400); %%

xline(185900); %%
xline(192400+3400); %%

xline(195900); %%
xline(202400+3400); %%

xline(216280); %%
xline(222780+3400); %%

xline(226450); %%
xline(232950+3400); %%

xline(244000); %%
xline(250500+3400); %%

xline(254180); %%
xline(260680+3400); %%

xline(274500); %%
xline(281000+3400); %%

xline(284450); %%
xline(290950+3400); %%

xline(304440); %%
xline(310940+3400); %%

xline(314750); %%
xline(321250+3400); %%

xline(334960); %%
xline(341460+3400); %%

xline(345065);
xline(351565+3400);

data_sensors4 = [M4(6100:16000,1)' M4(6100:16000,2)' M4(6100:16000,3)'; %% 9900 -- 1 
    M4(16415:26315,1)' M4(16415:26315,2)' M4(16415:26315,3)'; %% 9900 -- 0
    M4(36760:46660,1)' M4(36760:46660,2)' M4(36760:46660,3)'; %% 9900 -- 1
    M4(47160:57060,1)' M4(47160:57060,2)' M4(47160:57060,3)'; %% 9900 -- 0
    M4(67280:77180,1)' M4(67280:77180,2)' M4(67280:77180,3)'; %% 9900 -- 1
    M4(77450:87350,1)' M4(77450:87350,2)' M4(77450:87350,3)'; %% 9900 -- 0
    M4(97500:107400,1)' M4(97500:107400,2)' M4(97500:107400,3)'; %% 9900 -- 1
    M4(107415:117315,1)' M4(107415:117315,2)' M4(107415:117315,3)'; %% 9900 -- 0
    M4(125500:135400,1)' M4(125500:135400,2)' M4(125500:135400,3)'; %% 9900 -- 1
    M4(135200:145100,1)' M4(135200:145100,2)' M4(135200:145100,3)'; %% 9900 -- 0
    M4(165780:175680,1)' M4(165780:175680,2)' M4(165780:175680,3)'; %% 9900 -- 1
    M4(185900:195800,1)' M4(185900:195800,2)' M4(185900:195800,3)'; %% 9900 -- 0
    M4(195900:205800,1)' M4(195900:205800,2)' M4(195900:205800,3)'; %% 9900 -- 1
    M4(216280:226180,1)' M4(216280:226180,2)' M4(216280:226180,3)'; %% 9900 -- 0
    M4(226450:236350,1)' M4(226450:236350,2)' M4(226450:236350,3)'; %% 9900 -- 1
    M4(244000:253900,1)' M4(244000:253900,2)' M4(244000:253900,3)'; %% 9900 -- 0
    M4(254180:264080,1)' M4(254180:264080,2)' M4(254180:264080,3)'; %% 9900 -- 1 
    M4(274500:284400,1)' M4(274500:284400,2)' M4(274500:284400,3)'; %% 9900 -- 0
    M4(284450:294350,1)' M4(284450:294350,2)' M4(284450:294350,3)'; %% 9900 -- 1
    M4(304440:314340,1)' M4(304440:314340,2)' M4(304440:314340,3)'; %% 9900 -- 0
    M4(314750:324650,1)' M4(314750:324650,2)' M4(314750:324650,3)'; %% 9900 -- 1
    M4(334960:344860,1)' M4(334960:344860,2)' M4(334960:344860,3)'; %% 9900 -- 0
    M4(345065:354965,1)' M4(345065:354965,2)' M4(345065:354965,3)';]; %% 9900 1

y4 = [1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];

[U4, Z4] = pca(data_sensors4, 'NumComponents', 2);
Y4 = tsne(data_sensors4);
%%Y44 = cmdscale(data_sensors4);
figure(6),
%%plot(Y44(:,1), Y44(:,2))
%gscatter(Y4(:,1),Y4(:,2),y4)
scatter(Z4(:,1), Z4(:,2), 25, y4,'filled');

%%
% Cargamos datos 5
% Cargamos el archivo csv
filename5 = 'putty_sensors_data5.csv';
data5 = readtable(filename5);

% Buscamos la filas vacias y las eliminamos
empty_rows5 = all(ismissing(data5), 2);
data5(empty_rows5, :) = [];

new_filename5 = 'cleaned_putty_Arduino_Data5.csv';
writetable(data5, new_filename5);
M5 = readmatrix('cleaned_putty_Arduino_Data5.csv');

figure(7),
plot(data5{2:end, 1});
hold on
plot(data5{2:end, 2});
hold on
plot(data5{2:end, 3});

xline(6100); %%
xline(11200); %%

xline(16000); %%
xline(21100); %%

xline(24050); %%
xline(29150); %%

xline(34100); %%
xline(39200); %%

xline(41500); %%
xline(46600); %%

xline(51850); %%
xline(56950); %%

xline(59250); %%
xline(64350); %%

xline(69350); %%
xline(74450); %%

xline(95150); %%
xline(100250); %%

xline(105120); %%
xline(110220); %%

xline(112750); %%
xline(117850); %%

xline(123000); %%
xline(128100); %%

xline(130950); %%
xline(136050); %%

xline(140740); %%
xline(145840); %%

xline(148150);
xline(153250);

xline(158200);
xline(163300);

data_sensors5 = [ %%
    M5(16000:21100,1)' M5(16000:21100,2)' M5(16000:21100,3)'; %% XX
     %%
    M5(34100:39200,1)' M5(34100:39200,2)' M5(34100:39200,3)'; %%
    M5(41500:46600,1)' M5(41500:46600,2)' M5(41500:46600,3)'; %%
    M5(51850:56950,1)' M5(51850:56950,2)' M5(51850:56950,3)'; %%
    M5(59250:64350,1)' M5(59250:64350,2)' M5(59250:64350,3)'; %%
    M5(69350:74450,1)' M5(69350:74450,2)' M5(69350:74450,3)'; %%
    M5(95150:100250,1)' M5(95150:100250,2)' M5(95150:100250,3)'; %%
    M5(105120:110220,1)' M5(105120:110220,2)' M5(105120:110220,3)'; %%
    M5(112750:117850,1)' M5(112750:117850,2)' M5(112750:117850,3)'; %%
    M5(123000:128100,1)' M5(123000:128100,2)' M5(123000:128100,3)'; %%
     %%
    M5(140740:145840,1)' M5(140740:145840,2)' M5(140740:145840,3)'; %%
    M5(148150:153250,1)' M5(148150:153250,2)' M5(148150:153250,3)'; %%
    M5(158200:163300,1)' M5(158200:163300,2)' M5(158200:163300,3)';];

y5 = [0 0 1 0 1 0 1 0 1 0 0 1 0];

[U5, Z5] = pca(data_sensors5, 'NumComponents', 2);
figure(8),
scatter(Z5(:,1), Z5(:,2), 25, y5,'filled');

data_sensors45 = [M1(6280:11380,1)' M1(6280:11380,2)' M1(6280:11380,3)';
    M1(16560:21660,1)' M1(16560:21660,2)' M1(16560:21660,3)';
    M1(24305:29405,1)' M1(24305:29405,2)' M1(24305:29405,3)';
    M1(34300:39400,1)' M1(34300:39400,2)' M1(34300:39400,3)';
    M1(42045:47145,1)' M1(42045:47145,2)' M1(42045:47145,3)';
    M1(51850:56950,1)' M1(51850:56950,2)' M1(51850:56950,3)';
    M1(59600:64700,1)' M1(59600:64700,2)' M1(59600:64700,3)';
    M5(6100:11200,1)' M5(6100:11200,2)' M5(6100:11200,3)'; %%
    M5(16000:21100,1)' M5(16000:21100,2)' M5(16000:21100,3)'; %% XX
    M5(24050:29150,1)' M5(24050:29150,2)' M5(24050:29150,3)'; %%
    M5(34100:39200,1)' M5(34100:39200,2)' M5(34100:39200,3)'; %%
    M5(41500:46600,1)' M5(41500:46600,2)' M5(41500:46600,3)'; %%
    M5(51850:56950,1)' M5(51850:56950,2)' M5(51850:56950,3)'; %%
    M5(59250:64350,1)' M5(59250:64350,2)' M5(59250:64350,3)'; %%
    M5(69350:74450,1)' M5(69350:74450,2)' M5(69350:74450,3)'; %%
    M5(95150:100250,1)' M5(95150:100250,2)' M5(95150:100250,3)'; %%
    M5(105120:110220,1)' M5(105120:110220,2)' M5(105120:110220,3)'; %%
    M5(112750:117850,1)' M5(112750:117850,2)' M5(112750:117850,3)'; %%
    M5(123000:128100,1)' M5(123000:128100,2)' M5(123000:128100,3)'; %%
    M5(130950:136050,1)' M5(130950:136050,2)' M5(130950:136050,3)'; %%
    M5(140740:145840,1)' M5(140740:145840,2)' M5(140740:145840,3)'; %%
    M5(148150:153250,1)' M5(148150:153250,2)' M5(148150:153250,3)'; %%
    M5(158200:163300,1)' M5(158200:163300,2)' M5(158200:163300,3)';];

y45 = [1 0 1 0 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0];

[U45, Z45] = pca(data_sensors45, 'NumComponents', 2);
figure(9),
scatter(Z45(:,1), Z45(:,2), 25, y45,'filled');

%%
% Cargamos datos del vial 4 y 5
% Cargamos el archivo csv
filename6 = 'putty_sensors_data6(VIAL4Y5).csv';
data6 = readtable(filename6);

% Buscamos la filas vacias y las eliminamos
empty_rows6 = all(ismissing(data6), 2);
data6(empty_rows6, :) = [];

new_filename6 = 'cleaned_putty_Arduino_Data6(VIAL4Y5).csv';
writetable(data6, new_filename6);
M6 = readmatrix('cleaned_putty_Arduino_Data6(VIAL4Y5).csv');

figure(10),
plot(data6{2:end, 1});
hold on
plot(data6{2:end, 2});
hold on
plot(data6{2:end, 3});



xline(5100); %%
xline(10200); %%

xline(15550); %%
xline(20650); %%

xline(23560); %%
xline(28660); %%

xline(33500); %%
xline(38600); %%

xline(41505); %%
xline(46605); %%

xline(51670); %%
xline(56770); %%

xline(59050); %%
xline(64150); %%

xline(69370); %%
xline(74470); %5

xline(79310); %%
xline(84410); %%

xline(89000); %%
xline(94100); %%

xline(96530); %%
xline(101630); %%

xline(106400); %%
xline(111500); %%

xline(113750); %%
xline(118850); %%

xline(123950); %%
xline(129050); %%

xline(132000);
xline(137100);

xline(141735);
xline(146835);

data_sensors6 = [M6(5100:10200,1)' M6(5100:10200,2)' M6(5100:10200,3)'; %%
    M6(15550:20650,1)' M6(15550:20650,2)' M6(15550:20650,3)'; %%
    M6(23560:28660,1)' M6(23560:28660,2)' M6(23560:28660,3)'; %%
    M6(33500:38600,1)' M6(33500:38600,2)' M6(33500:38600,3)'; %%
    M6(41505:46605,1)' M6(41505:46605,2)' M6(41505:46605,3)'; %%
    M6(51670:56770,1)' M6(51670:56770,2)' M6(51670:56770,3)'; %%
    M6(59050:64150,1)' M6(59050:64150,2)' M6(59050:64150,3)'; %%
    M6(69370:74470,1)' M6(69370:74470,2)' M6(69370:74470,3)'; %%
    M6(79310:84410,1)' M6(79310:84410,2)' M6(79310:84410,3)'; %%
    M6(89000:94100,1)' M6(89000:94100,2)' M6(89000:94100,3)'; %%
    M6(106400:111500,1)' M6(106400:111500,2)' M6(106400:111500,3)'; %%
    M6(113750:118850,1)' M6(113750:118850,2)' M6(113750:118850,3)'; %%
    M6(123950:129050,1)' M6(123950:129050,2)' M6(123950:129050,3)'; %%
    M6(132000:137100,1)' M6(132000:137100,2)' M6(132000:137100,3)';
    M6(141735:146835,1)' M6(141735:146835,2)' M6(141735:146835,3)';
];

y6 = [1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];

[U6, Z6] = pca(data_sensors6, 'NumComponents', 2);
figure(11),
scatter(Z6(:,1), Z6(:,2), 25, y6,'filled');
%%
% Cargamos datos8
% Cargamos el archivo csv
filename8 = 'putty_sensors_data8(VIAL1Y2).csv';
data8 = readtable(filename8);

% Buscamos la filas vacias y las eliminamos
empty_rows8 = all(ismissing(data8), 2);
data8(empty_rows8, :) = [];

new_filename8 = 'cleaned_putty_Arduino_Data8(VIAL1Y2).csv';
writetable(data8, new_filename8);
M8 = readmatrix('cleaned_putty_Arduino_Data8(VIAL1Y2).csv');

figure(12),
plot(data8{2:end, 1});
hold on
plot(data8{2:end, 2});
hold on
plot(data8{2:end, 3});

xline(6790);
xline(11890);

xline(16900);
xline(22000);

xline(24430);
xline(29530);

xline(34560);
xline(39660);

xline(42170);
xline(47270);

xline(52220);
xline(57320);

xline(59880);
xline(64980);

xline(111860);
xline(116960);

xline(121770);
xline(126870);

xline(129510);
xline(134610);

xline(139615);
xline(144715);

xline(147215);
xline(152315);

xline(157225);
xline(162325);

xline(164850);
xline(169950);

xline(175030);
xline(180130);

xline(205700);
xline(210800);

xline(215860);
xline(220960);

xline(223370);
xline(228470);

xline(233430);
xline(238530);

xline(241100);
xline(246200);

data_sensors8 = [M8(6790:11890,1)' M8(6790:11890,2)' M8(6790:11890,3)'; %%
    M8(16900:22000,1)' M8(16900:22000,2)' M8(16900:22000,3)'; %%
    M8(24430:29530,1)' M8(24430:29530,2)' M8(24430:29530,3)'; %%
    M8(34560:39660,1)' M8(34560:39660,2)' M8(34560:39660,3)'; %% 
    M8(42170:47270,1)' M8(42170:47270,2)' M8(42170:47270,3)'; %%
    M8(52220:57320,1)' M8(52220:57320,2)' M8(52220:57320,3)'; %% 
    M8(59880:64980,1)' M8(59880:64980,2)' M8(59880:64980,3)'; %%
    M8(111860:116960,1)' M8(111860:116960,2)' M8(111860:116960,3)'; %% 
    M8(121770:126870,1)' M8(121770:126870,2)' M8(121770:126870,3)'; %% 
    M8(129510:134610,1)' M8(129510:134610,2)' M8(129510:134610,3)'; %%
    M8(139615:144715,1)' M8(139615:144715,2)' M8(139615:144715,3)'; %%
    M8(147215:152315,1)' M8(147215:152315,2)' M8(147215:152315,3)'; %% 
    M8(157225:162325,1)' M8(157225:162325,2)' M8(157225:162325,3)'; %% 
    M8(164850:169950,1)' M8(164850:169950,2)' M8(164850:169950,3)'; %%
    M8(175030:180130,1)' M8(175030:180130,2)' M8(175030:180130,3)'; %%
    M8(205700:210800,1)' M8(205700:210800,2)' M8(205700:210800,3)'; %%
    M8(215860:220960,1)' M8(215860:220960,2)' M8(215860:220960,3)'; %%
    M8(223370:228470,1)' M8(223370:228470,2)' M8(223370:228470,3)'; %%
    M8(233430:238530,1)' M8(233430:238530,2)' M8(233430:238530,3)'; %%
    M8(241100:246200,1)' M8(241100:246200,2)' M8(241100:246200,3)';

];

y8 = [1 0 1 0 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1];

[U8, Z8] = pca(data_sensors8, 'NumComponents', 2);
Y8 = tsne(data_sensors8);
figure(13),
scatter(Z8(:,1), Z8(:,2), 25, y8,'filled');
figure(14),
scatter(Y8(:,1), Y8(:,2), 25, y8, 'filled');
%%
% Cargamos datos9
% Cargamos el archivo csv
filename9 = 'putty_sensors_data9.csv';
data9 = readtable(filename9);

% Buscamos la filas vacias y las eliminamos
empty_rows9 = all(ismissing(data9), 2);
data9(empty_rows9, :) = [];

new_filename9 = 'cleaned_putty_Arduino_Data9.csv';
writetable(data9, new_filename9);
M9 = readmatrix('cleaned_putty_Arduino_Data9.csv');

figure(15),
plot(data9{2:end, 1});
hold on
plot(data9{2:end, 2});
hold on
plot(data9{2:end, 3});

%Acetona
xline(21200);
xline(31200);

xline(31210);
xline(41210);

xline(41220);
xline(51220);

xline(51230);
xline(61230);

xline(61240);
xline(71240);

xline(71250);
xline(81250);

%Etanol
xline(81260);
xline(91260);
 
xline(91270);
xline(101270);
 
xline(101280);
xline(111280);
 
xline(111290);
xline(121290);
 
xline(121300);
xline(131300);
 
xline(130000);
xline(140000);

%Acetona
xline(140010);
xline(150010);
 
xline(150020);
xline(160020);
 
xline(160030);
xline(170030);

xline(170040);
xline(180040);

xline(180050);
xline(190050);

xline(190060);
xline(200060);

%Etanol
xline(200070);
xline(210070);

xline(210080);
xline(220080);

xline(220090);
xline(230090);

xline(230100);
xline(240100);

xline(240110);
xline(250110);


data_sensors9 = [M9(21200:31200,1)' M9(21200:31200,2)' M9(21200:31200,3)'; %%
    M9(31210:41210,1)' M9(31210:41210,2)' M9(31210:41210,3)'; %%
    M9(41220:51220,1)' M9(41220:51220,2)' M9(41220:51220,3)'; %% 
    M9(51230:61230,1)' M9(51230:61230,2)' M9(51230:61230,3)'; %% 
    M9(61240:71240,1)' M9(61240:71240,2)' M9(61240:71240,3)'; %%
    M9(71250:81250,1)' M9(71250:81250,2)' M9(71250:81250,3)'; %%  
    M9(140010:150010,1)' M9(140010:150010,2)' M9(140010:150010,3)'; %%
    M9(150020:160020,1)' M9(150020:160020,2)' M9(150020:160020,3)'; %%  
    M9(160030:170030,1)' M9(160030:170030,2)' M9(160030:170030,3)'; %%  
    M9(170040:180040,1)' M9(170040:180040,2)' M9(170040:180040,3)'; %%
    M9(180050:190050,1)' M9(180050:190050,2)' M9(180050:190050,3)'; %% 
    M9(190060:200060,1)' M9(190060:200060,2)' M9(190060:200060,3)'; %%

    M9(81260:91260,1)' M9(81260:91260,2)' M9(81260:91260,3)'; %%  <----
    M9(91270:101270,1)' M9(91270:101270,2)' M9(91270:101270,3)'; %% 
    M9(101280:111280,1)' M9(101280:111280,2)' M9(101280:111280,3)'; %% 
    M9(111290:121290,1)' M9(111290:121290,2)' M9(111290:121290,3)'; %% 
    M9(121300:131300,1)' M9(121300:131300,2)' M9(121300:131300,3)'; %% 
    %M9(130000:140000,1)' M9(130000:140000,2)' M9(130000:140000,3)'; %%MAL
    M9(200070:210070,1)' M9(200070:210070,2)' M9(200070:210070,3)'; %% 
    M9(210080:220080,1)' M9(210080:220080,2)' M9(210080:220080,3)'; %%
    M9(220090:230090,1)' M9(220090:230090,2)' M9(220090:230090,3)';
    M9(230100:240100,1)' M9(230100:240100,2)' M9(230100:240100,3)'; %%
    M9(240110:250110,1)' M9(240110:250110,2)' M9(240110:250110,3)';
];

y9 = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0];

[U9, Z9] = pca(data_sensors9, 'NumComponents', 3);
figure(16),
scatter(Z9(:,1), Z9(:,3), 25, y9,'filled');

[idx,C] = kmeans(Z9,2);
figure(17),
gscatter(Z9(:,1),Z9(:,3),idx,'bgm')
hold on
plot(C(:,1),C(:,3),'kx')
% data10 = [];
% data10 = [data10 M9(81260:91260,1)' M9(81260:91260,2)' M9(81260:91260,3)';
%     M9(190060:200060,1)' M9(190060:200060,2)' M9(190060:200060,3)';];
% 
% [U10, Z10] = pca(data10, 'NumComponents', 2);
% figure(17),
% %plot(data10)
% scatter(Z10(1,:), Z10(2,:), 25,'filled');

%%
% Cargamos los datos 10
% Cargamos el archivo csv
filename10 = 'putty_sensors_data10.csv';
data10 = readtable(filename10);

% Buscamos la filas vacias y las eliminamos
empty_rows10 = all(ismissing(data10), 2);
data10(empty_rows10, :) = [];

new_filename10 = 'cleaned_putty_Arduino_Data10.csv';
writetable(data10, new_filename10);
M10 = readmatrix('cleaned_putty_Arduino_Data10.csv');

figure(18),
plot(data10{2:end, 1});
hold on
plot(data10{2:end, 2});
hold on
plot(data10{2:end, 3});

%Acetona
xline(11460);
xline(21460);

xline(21465);
xline(31465);

xline(31470);
xline(41470);

xline(41475);
xline(51475);

xline(51480);
xline(61480);

xline(61485);
xline(71485);

%Etanol
xline(71490);
xline(81490);

xline(81495);
xline(91495);

xline(91500);
xline(101500);

xline(101505);
xline(111505);

xline(111510);
xline(121510);

%Acetona

xline(130350);
xline(140350);

xline(140355);
xline(150355);

xline(150360);
xline(160360);

xline(160365);
xline(170365);

xline(170370);
xline(180370);

xline(180375);
xline(190375);

% Etanol

xline(190380);
xline(200380);

xline(200385);
xline(210380);

xline(210385);
xline(220385);

xline(230385);
xline(240385);

xline(240390);
xline(250390);

xline(250395);
xline(260395);

data_sensors10 = [M10(11460:21460,1)' M10(11460:21460,2)' M10(11460:21460,3)'; %%
    M10(21465:31465,1)' M10(21465:31465,2)' M10(21465:31465,3)'; %%
    M10(31470:41470,1)' M10(31470:41470,2)' M10(31470:41470,3)'; %%
    M10(41475:51475,1)' M10(41475:51475,2)' M10(41475:51475,3)'; %%  
    M10(51480:61480,1)' M10(51480:61480,2)' M10(51480:61480,3)'; %%
    M10(61485:71485,1)' M10(61485:71485,2)' M10(61485:71485,3)';   

    M10(130350:140350,1)' M10(130350:140350,2)' M10(130350:140350,3)'; 
    M10(140355:150355,1)' M10(140355:150355,2)' M10(140355:150355,3)';  
    M10(150360:160360,1)' M10(150360:160360,2)' M10(150360:160360,3)';  
    M10(160365:170365,1)' M10(160365:170365,2)' M10(160365:170365,3)';
    M10(170370:180370,1)' M10(170370:180370,2)' M10(170370:180370,3)'; 
    M10(180375:190375,1)' M10(180375:190375,2)' M10(180375:190375,3)';

    M10(71490:81490,1)' M10(71490:81490,2)' M10(71490:81490,3)';
    M10(81495:91495,1)' M10(81495:91495,2)' M10(81495:91495,3)'; 
    M10(91500:101500,1)' M10(91500:101500,2)' M10(91500:101500,3)'; 
    M10(101505:111505,1)' M10(101505:111505,2)' M10(101505:111505,3)';
    M10(111510:121510,1)' M10(111510:121510,2)' M10(111510:121510,3)'; 
    
    M10(190380:200380,1)' M10(190380:200380,2)' M10(190380:200380,3)';
    M10(200385:210385,1)' M10(200385:210385,2)' M10(200385:210385,3)'; 
    M10(210385:220385,1)' M10(210385:220385,2)' M10(210385:220385,3)'; %%
    M10(230385:240385,1)' M10(230385:240385,2)' M10(230385:240385,3)'; %%
    M10(240390:250390,1)' M10(240390:250390,2)' M10(240390:250390,3)'; %%
    M10(250395:260395,1)' M10(250395:260395,2)' M10(250395:260395,3)'; %%
];

y10 = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0];
[U10, Z10] = pca(data_sensors10, 'NumComponents', 3);
figure(19),
scatter(Z10(:,1), Z10(:,2), 25, y10,'filled');

%% Datos 11
% Cargamos los datos 10
% Cargamos el archivo csv
filename11 = 'putty_sensors_data11.csv';
data11 = readtable(filename11);

% Buscamos la filas vacias y las eliminamos
empty_rows11 = all(ismissing(data11), 2);
data11(empty_rows11, :) = [];

new_filename11 = 'cleaned_putty_Arduino_Data11.csv';
writetable(data11, new_filename11);
M11 = readmatrix('cleaned_putty_Arduino_Data11.csv');


figure(20),
plot(data11{2:end, 1});
hold on
plot(data11{2:end, 2});
hold on
plot(data11{2:end, 3});

%Acetona
xline(6450); %%
xline(16450); %%

xline(16455); %%
xline(26455); %%

xline(26455); %%
xline(36455); %%

xline(36460); %%
xline(46460); %%

xline(46465); %%
xline(56465); %%

xline(56470);
xline(66470);

%Etanol

xline(66475); %%
xline(76475); %%

xline(76480); %%
xline(86480); %%

xline(86485);
xline(96485);

xline(96490);
xline(106490);

xline(106495);
xline(116495);

%Acetona

xline(125405); %%
xline(135405); %%

xline(135410); %%
xline(145410); %%

xline(145415); %%
xline(155415); %%

xline(155420); %%
xline(165420); %%

xline(165425); %%
xline(175425); %%

xline(175430); %%
xline(185430); %%

data_sensors11 = [M11(6450:16450,1)' M11(6450:16450,2)' M11(6450:16450,3)'; %%
    M11(16455:26455,1)' M11(16455:26455,2)' M11(16455:26455,3)'; %%
    M11(26455:36455,1)' M11(26455:36455,2)' M11(26455:36455,3)'; %%
    M11(36460:46460,1)' M11(36460:46460,2)' M11(36460:46460,3)'; %%   
    M11(46465:56465,1)' M11(46465:56465,2)' M11(46465:56465,3)'; %%
    M11(56470:66470,1)' M11(56470:66470,2)' M11(56470:66470,3)'; %%   
    M11(125405:135405,1)' M11(125405:135405,2)' M11(125405:135405,3)'; %% 
    M11(135410:145410,1)' M11(135410:145410,2)' M11(135410:145410,3)'; %% 
    M11(145415:155415,1)' M11(145415:155415,2)' M11(145415:155415,3)'; %%  
    M11(155420:165420,1)' M11(155420:165420,2)' M11(155420:165420,3)'; %%
    M11(165425:175425,1)' M11(165425:175425,2)' M11(165425:175425,3)'; %% 
    M11(175430:185430,1)' M11(175430:185430,2)' M11(175430:185430,3)'; %%

    M11(66475:76475,1)' M11(66475:76475,2)' M11(66475:76475,3)'; %%
    M11(76480:86480,1)' M11(76480:86480,2)' M11(76480:86480,3)'; %% 
    M11(86485:96485,1)' M11(86485:96485,2)' M11(86485:96485,3)'; 
    M11(106495:116495,1)' M11(106495:116495,2)' M11(106495:116495,3)';
    M11(111510:121510,1)' M11(111510:121510,2)' M11(111510:121510,3)'; 
];

y11 = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0];
[U11, Z11] = pca(data_sensors11, 'NumComponents', 3);
figure(21),
scatter(Z11(:,1), Z11(:,2), 25, y11,'filled');
%% Datos 13
% Cargamos los datos 13
% Cargamos el archivo csv
filename13 = 'putty_sensors_data13.csv';
data13 = readtable(filename13);

% Buscamos la filas vacias y las eliminamos
empty_rows13 = all(ismissing(data13), 2);
data13(empty_rows13, :) = [];

new_filename13 = 'cleaned_putty_Arduino_Data13.csv';
writetable(data13, new_filename13);
M13 = readmatrix('cleaned_putty_Arduino_Data13.csv');

figure(200),
plot(data13{2:end, 1});
hold on
plot(data13{2:end, 2});
hold on
plot(data13{2:end, 3});

%Acetona
xline(11790);
xline(21790);


xline(21795);
xline(31795);

xline(31800);
xline(41800);

xline(41805);
xline(51805);

xline(51810);
xline(61810);

xline(61815);
xline(71815);
%Etanol
xline(71820);
xline(81820);

xline(81825);
xline(91825);

xline(91830);
xline(101830);

xline(101835);
xline(111835);

xline(111840);
xline(121840);

%Acetona
xline(130350);
xline(140350);

xline(140355);
xline(150355);

xline(150360);
xline(160360);

xline(160365);
xline(170365);

data_sensors13 = [M13(11790:21790,1)' M13(11790:21790,2)' M13(11790:21790,3)'; %% ok
    M13(21795:31795,1)' M13(21795:31795,2)' M13(21795:31795,3)'; %% ok
    M13(31800:41800,1)' M13(31800:41800,2)' M13(31800:41800,3)'; %% ok
    M13(41805:51805,1)' M13(41805:51805,2)' M13(41805:51805,3)'; %% ok
    M13(51810:61810,1)' M13(51810:61810,2)' M13(51810:61810,3)'; %% ok
    M13(61815:71815,1)' M13(61815:71815,2)' M13(61815:71815,3)'; %% ok
    M13(130350:140350,1)' M13(130350:140350,2)' M13(130350:140350,3)'; %% ok  
    M13(140355:150355,1)' M13(140355:150355,2)' M13(140355:150355,3)'; %% ok
    M13(150360:160360,1)' M13(150360:160360,2)' M13(150360:160360,3)'; %% ok  
    M13(160365:170365,1)' M13(160365:170365,2)' M13(160365:170365,3)'; %%

    M13(71820:81820,1)' M13(71820:81820,2)' M13(71820:81820,3)'; %%
    M13(81825:91825,1)' M13(81825:91825,2)' M13(81825:91825,3)'; %% 
    M13(91830:101830,1)' M13(91830:101830,2)' M13(91830:101830,3)'; %%
    M13(101835:111835,1)' M13(101835:111835,2)' M13(101835:111835,3)'; %%  
    M13(111840:121840,1)' M13(111840:121840,2)' M13(111840:121840,3)'; %%  
];

y13 = [1 1 1 1 1 1 1 1 1 1 0 0 0 0 0];
[U13, Z13] = pca(data_sensors13, 'NumComponents', 3);
figure(201),
scatter(Z13(:,1), Z13(:,2), 25, y13,'filled');

%% Datos 14
% Cargamos los datos 14
% Cargamos el archivo csv
filename14 = 'putty_sensors_data14.csv';
data14 = readtable(filename14);

% Buscamos la filas vacias y las eliminamos
empty_rows14 = all(ismissing(data14), 2);
data14(empty_rows14, :) = [];

new_filename14 = 'cleaned_putty_Arduino_Data14.csv';
writetable(data14, new_filename14);
M14 = readmatrix('cleaned_putty_Arduino_Data14.csv');

figure(300),
plot(data14{2:end, 1});
hold on
plot(data14{2:end, 2});
hold on
plot(data14{2:end, 3});

%Acetona
xline(8830);
xline(18830);

xline(18835);
xline(28835);

xline(28840);
xline(38840);

xline(38845);
xline(48845);

xline(48850);
xline(58850);

xline(58855);
xline(68855);
%% Datos 15
% Cargamos los datos 13
% Cargamos el archivo csv
filename15 = 'putty_sensors_data15.csv';
data15 = readtable(filename15);

% Buscamos la filas vacias y las eliminamos
empty_rows15 = all(ismissing(data15), 2);
data15(empty_rows15, :) = [];

new_filename15 = 'cleaned_putty_Arduino_Data15.csv';
writetable(data15, new_filename15);
M15 = readmatrix('cleaned_putty_Arduino_Data15.csv');

figure(400),
plot(data15{2:end, 1});
hold on
plot(data15{2:end, 2});
hold on
plot(data15{2:end, 3});

%Acetona
xline(10000);
xline(20000);

xline(20005);
xline(30005);

xline(30010);
xline(40010);

xline(40015);
xline(50015);

xline(50020);
xline(60020);

xline(60025);
xline(70025);
%Etanol
xline(70030);
xline(80030);

xline(80035);
xline(90035);

xline(90040);
xline(100040);

xline(100045);
xline(110045);

xline(110050);
xline(120050);

data_sensors15 = [M15(10000:20000,1)' M15(10000:20000,2)' M15(10000:20000,3)'; %% 
    M15(20005:30005,1)' M15(20005:30005,2)' M15(20005:30005,3)'; %% 
    M15(30010:40010,1)' M15(30010:40010,2)' M15(30010:40010,3)'; %% 
    M15(40015:50015,1)' M15(40015:50015,2)' M15(40015:50015,3)'; %% 
    M15(50020:60020,1)' M15(50020:60020,2)' M15(50020:60020,3)'; %% 
    M15(60025:70025,1)' M15(60025:70025,2)' M15(60025:70025,3)'; %% 

    M15(70030:80030,1)' M15(70030:80030,2)' M15(70030:80030,3)'; %%   
    M15(80035:90035,1)' M15(80035:90035,2)' M15(80035:90035,3)'; %% 
    M15(90040:100040,1)' M15(90040:100040,2)' M15(90040:100040,3)'; %%   
    M15(100045:110045,1)' M15(100045:110045,2)' M15(100045:110045,3)'; %%
    M15(110050:120050,1)' M15(110050:120050,2)' M15(110050:120050,3)'; %%  
];

y15 = [1 1 1 1 1 1 0 0 0 0 0];
[U15, Z15] = pca(data_sensors15, 'NumComponents', 3);
figure(401),
scatter(Z15(:,1), Z15(:,2), 25, y15,'filled');

%% Datos de entrenamiento (Datos 12)

close all
clc
clear
% Cargamos los datos 10
% Cargamos el archivo csv
%filename12 = 'putty_sensors_data12.csv';
%data12 = readtable(filename12);

% Buscamos la filas vacias y las eliminamos
%empty_rows12 = all(ismissing(data12), 2);
%data12(empty_rows12, :) = [];

%new_filename12 = 'cleaned_putty_Arduino_Data12.csv';
%writetable(data12, new_filename12);
%M12 = readmatrix('cleaned_putty_Arduino_Data12.csv');

% figure(24),
% plot(data12{2:end, 1});
% hold on
% plot(data12{2:end, 2});
% hold on
% plot(data12{2:end, 3});

%Acetona
% xline(27830);
% xline(37830);
% 
% xline(37835);
% xline(47835);
% 
% xline(47840);
% xline(57840);
% 
% xline(57845);
% xline(67845);
% 
% %Etanol
% xline(67850);
% xline(77850);
% 
% xline(77855);
% xline(87855);
% 
% xline(87860);
% xline(97860);
% 
% xline(97865);
% xline(107865);
% 
% xline(107870);
% xline(117870);
% 
% %Acetona
% xline(126730);
% xline(136730);
% 
% xline(136735);
% xline(146735);
% 
% xline(146740);
% xline(156740);
% 
% xline(156745);
% xline(166745);
% 





% Datos 9 10 y 11 juntos


M9 = readmatrix('cleaned_putty_Arduino_Data9.csv');
M10 = readmatrix('cleaned_putty_Arduino_Data10.csv');
M11 = readmatrix('cleaned_putty_Arduino_Data11.csv');
M12 = readmatrix('cleaned_putty_Arduino_Data12.csv'); %Entrenamiento
M13 = readmatrix('cleaned_putty_Arduino_Data13.csv');
M14 = readmatrix('cleaned_putty_Arduino_Data14.csv');
M15 = readmatrix('cleaned_putty_Arduino_Data15.csv');

l = [];
l = [l M12(27830:37830,1)' M12(27830:37830,2)' M12(27830:37830,3)';];

data_sensors91011 = [M9(21200:31200,1)' M9(21200:31200,2)' M9(21200:31200,3)'; %% 1
    M9(31210:41210,1)' M9(31210:41210,2)' M9(31210:41210,3)'; %% 2
    M9(41220:51220,1)' M9(41220:51220,2)' M9(41220:51220,3)'; %% 3
    M9(51230:61230,1)' M9(51230:61230,2)' M9(51230:61230,3)'; %% 4
    M9(61240:71240,1)' M9(61240:71240,2)' M9(61240:71240,3)'; %% 5
    M9(71250:81250,1)' M9(71250:81250,2)' M9(71250:81250,3)'; %% 6 
    M9(140010:150010,1)' M9(140010:150010,2)' M9(140010:150010,3)'; %% 7
    M9(150020:160020,1)' M9(150020:160020,2)' M9(150020:160020,3)'; %% 8 
    M9(160030:170030,1)' M9(160030:170030,2)' M9(160030:170030,3)'; %% 9
    M9(170040:180040,1)' M9(170040:180040,2)' M9(170040:180040,3)'; %% 10
    M9(180050:190050,1)' M9(180050:190050,2)' M9(180050:190050,3)'; %% 11
    M9(190060:200060,1)' M9(190060:200060,2)' M9(190060:200060,3)'; %% 12
    M9(81260:91260,1)' M9(81260:91260,2)' M9(81260:91260,3)'; %%  <---- 13
    M9(91270:101270,1)' M9(91270:101270,2)' M9(91270:101270,3)'; %% 14
    M9(101280:111280,1)' M9(101280:111280,2)' M9(101280:111280,3)'; %%15 
    M9(111290:121290,1)' M9(111290:121290,2)' M9(111290:121290,3)'; %% 16
    M9(121300:131300,1)' M9(121300:131300,2)' M9(121300:131300,3)'; %% 17
    M9(200070:210070,1)' M9(200070:210070,2)' M9(200070:210070,3)'; %% 18
    M9(210080:220080,1)' M9(210080:220080,2)' M9(210080:220080,3)'; %%19
    M9(220090:230090,1)' M9(220090:230090,2)' M9(220090:230090,3)';
    M9(230100:240100,1)' M9(230100:240100,2)' M9(230100:240100,3)'; %% 21
    M9(240110:250110,1)' M9(240110:250110,2)' M9(240110:250110,3)';
    
    M10(11460:21460,1)' M10(11460:21460,2)' M10(11460:21460,3)'; %%
    M10(21465:31465,1)' M10(21465:31465,2)' M10(21465:31465,3)'; %%
    M10(31470:41470,1)' M10(31470:41470,2)' M10(31470:41470,3)'; %%
    M10(41475:51475,1)' M10(41475:51475,2)' M10(41475:51475,3)'; %%  
    M10(51480:61480,1)' M10(51480:61480,2)' M10(51480:61480,3)'; %%
    M10(61485:71485,1)' M10(61485:71485,2)' M10(61485:71485,3)';   
    M10(130350:140350,1)' M10(130350:140350,2)' M10(130350:140350,3)'; 
    M10(140355:150355,1)' M10(140355:150355,2)' M10(140355:150355,3)';  
    M10(150360:160360,1)' M10(150360:160360,2)' M10(150360:160360,3)';  
    M10(160365:170365,1)' M10(160365:170365,2)' M10(160365:170365,3)';
    M10(170370:180370,1)' M10(170370:180370,2)' M10(170370:180370,3)'; 
    M10(180375:190375,1)' M10(180375:190375,2)' M10(180375:190375,3)';
    M10(71490:81490,1)' M10(71490:81490,2)' M10(71490:81490,3)';
    M10(81495:91495,1)' M10(81495:91495,2)' M10(81495:91495,3)'; 
    M10(91500:101500,1)' M10(91500:101500,2)' M10(91500:101500,3)'; 
    M10(101505:111505,1)' M10(101505:111505,2)' M10(101505:111505,3)';
    M10(111510:121510,1)' M10(111510:121510,2)' M10(111510:121510,3)'; 
    M10(190380:200380,1)' M10(190380:200380,2)' M10(190380:200380,3)';
    M10(200385:210385,1)' M10(200385:210385,2)' M10(200385:210385,3)'; 
    M10(210385:220385,1)' M10(210385:220385,2)' M10(210385:220385,3)'; 
    M10(230385:240385,1)' M10(230385:240385,2)' M10(230385:240385,3)'; 
    M10(240390:250390,1)' M10(240390:250390,2)' M10(240390:250390,3)'; 
    M10(250395:260395,1)' M10(250395:260395,2)' M10(250395:260395,3)'; 

    M11(6450:16450,1)' M11(6450:16450,2)' M11(6450:16450,3)'; %%
    M11(16455:26455,1)' M11(16455:26455,2)' M11(16455:26455,3)'; %%
    M11(26455:36455,1)' M11(26455:36455,2)' M11(26455:36455,3)'; %%
    M11(36460:46460,1)' M11(36460:46460,2)' M11(36460:46460,3)'; %%   
    %M11(46465:56465,1)' M11(46465:56465,2)' M11(46465:56465,3)'; %% -MAL
    %M11(56470:66470,1)' M11(56470:66470,2)' M11(56470:66470,3)'; %% -MAL   
    M11(125405:135405,1)' M11(125405:135405,2)' M11(125405:135405,3)'; %% 
    M11(135410:145410,1)' M11(135410:145410,2)' M11(135410:145410,3)'; %% 
    M11(145415:155415,1)' M11(145415:155415,2)' M11(145415:155415,3)'; %%  
    M11(155420:165420,1)' M11(155420:165420,2)' M11(155420:165420,3)'; %%
    M11(165425:175425,1)' M11(165425:175425,2)' M11(165425:175425,3)'; %% 
    M11(175430:185430,1)' M11(175430:185430,2)' M11(175430:185430,3)'; %%
    M11(66475:76475,1)' M11(66475:76475,2)' M11(66475:76475,3)'; %%
    M11(76480:86480,1)' M11(76480:86480,2)' M11(76480:86480,3)'; %% 
    M11(86485:96485,1)' M11(86485:96485,2)' M11(86485:96485,3)'; 
    M11(106495:116495,1)' M11(106495:116495,2)' M11(106495:116495,3)';
    M11(111510:121510,1)' M11(111510:121510,2)' M11(111510:121510,3)';
    
    M13(11790:21790,1)' M13(11790:21790,2)' M13(11790:21790,3)'; %% ok
    M13(21795:31795,1)' M13(21795:31795,2)' M13(21795:31795,3)'; %% ok
    M13(31800:41800,1)' M13(31800:41800,2)' M13(31800:41800,3)'; %% ok
    M13(41805:51805,1)' M13(41805:51805,2)' M13(41805:51805,3)'; %% ok
    M13(51810:61810,1)' M13(51810:61810,2)' M13(51810:61810,3)'; %% ok
    M13(61815:71815,1)' M13(61815:71815,2)' M13(61815:71815,3)'; %% ok
    M13(130350:140350,1)' M13(130350:140350,2)' M13(130350:140350,3)'; %% ok  
    M13(140355:150355,1)' M13(140355:150355,2)' M13(140355:150355,3)'; %% ok
    M13(150360:160360,1)' M13(150360:160360,2)' M13(150360:160360,3)'; %% ok  
    M13(160365:170365,1)' M13(160365:170365,2)' M13(160365:170365,3)'; %%
    M13(71820:81820,1)' M13(71820:81820,2)' M13(71820:81820,3)'; %%
    M13(81825:91825,1)' M13(81825:91825,2)' M13(81825:91825,3)'; %% 
    M13(91830:101830,1)' M13(91830:101830,2)' M13(91830:101830,3)'; %%
    M13(101835:111835,1)' M13(101835:111835,2)' M13(101835:111835,3)'; %%  
    M13(111840:121840,1)' M13(111840:121840,2)' M13(111840:121840,3)';


    M14(8830:18830,1)' M14(8830:18830,2)' M14(8830:18830,3)';
    M14(18835:28835,1)' M14(18835:28835,2)' M14(18835:28835,3)'; 
    M14(28840:38840,1)' M14(28840:38840,2)' M14(28840:38840,3)'; 
    M14(38845:48845,1)' M14(38845:48845,2)' M14(38845:48845,3)'; 
    M14(48850:58850,1)' M14(48850:58850,2)' M14(48850:58850,3)';
    
    M15(10000:20000,1)' M15(10000:20000,2)' M15(10000:20000,3)'; %% 
    M15(20005:30005,1)' M15(20005:30005,2)' M15(20005:30005,3)'; %% 
    M15(30010:40010,1)' M15(30010:40010,2)' M15(30010:40010,3)'; %% 
    M15(40015:50015,1)' M15(40015:50015,2)' M15(40015:50015,3)'; %% 
    M15(50020:60020,1)' M15(50020:60020,2)' M15(50020:60020,3)'; %% 
    M15(60025:70025,1)' M15(60025:70025,2)' M15(60025:70025,3)'; %% 
    M15(70030:80030,1)' M15(70030:80030,2)' M15(70030:80030,3)'; %%   
    M15(80035:90035,1)' M15(80035:90035,2)' M15(80035:90035,3)'; %% 
    M15(90040:100040,1)' M15(90040:100040,2)' M15(90040:100040,3)'; %%   
    M15(100045:110045,1)' M15(100045:110045,2)' M15(100045:110045,3)'; %%
    M15(110050:120050,1)' M15(110050:120050,2)' M15(110050:120050,3)';];
    
    save('acetona_etanol.mat', 'data_sensors91011');

    %%M12(107870:117870,1)' M12(107870:117870,2)' M12(107870:117870,3)';]; %%Entrenamiento

%

y91011 = [1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 ];
[coeff, score, latent] = pca(data_sensors91011, 'NumComponents', 2);

% Transpose coeff(:, 1:2) to make it a 2x91 matrix
coeff_2D = coeff(:, 1:2);

projectedData = (l - mean(data_sensors91011)) * coeff_2D;       

% Plot the projected new data on the same plot as the original data
figure(22),
scatter(score(:,1),score(:,2), 25, y91011,'filled');
hold on
scatter(projectedData(:,1), projectedData(:,2), 50, 'filled');

% Built-in function knn

%Mdl = fitcknn(score(:,1), score(:,2), 'NumNeighbors', 5 );


%Ypred = predict(Mdl, projectedData(:,1));

%accuracy = sum(Ypred == projectedData(:,2)) / numel(projectedData(:,2));
%disp(['Accuracy: ' num2str(accuracy)]);

% KNN Algorithm
k = 3; % Lo elijo yo de momento
% Calculamos la distancia euclidea
distances = [];
for i=1:size(score,1)
    distances = [distances sqrt((projectedData(:,1) - score(i,1) )^2+(projectedData(:,2) - score(i,2))^2)];
    [sorted_distances, indices] = sort(distances);
end

%kNearestLabels = score(indices(1:k));

score = [score y91011'];

prediction = [];
for j=1:k
    hold on
    plot([projectedData(:,1), score(indices(j),1)], [projectedData(:,2), score(indices(j),2)], 'k--', 'LineWidth', 1);
    prediction = [prediction score(indices(j),3)];
end
predicted = mode(prediction);

if predicted == 1
    disp("Acetona");
else
    disp("Etanol");
end



%%
data = data_sensors91011(92,:);
%data = data - mean(data_sensors91011);
%data_pca = score(data,Z91011(:,1:2));
%% 
[idx,C] = kmeans(Z91011,2);
figure(23),
gscatter(Z91011(:,1),Z91011(:,2),idx,'bgm')
hold on
plot(C(:,1),C(:,2),'kx')

%%
% Definir un color para el punto
color = [1 0 0]; % Rojo (RGB)

% Proyectar el punto en la matriz de proyección Z91011
l_2d = (data_sensors91011(92,:) - mean(data_sensors91011)) * score(:,1:2);

%%
% Dibujar los puntos en una figura
figure(666),
scatter(Z91011(1:91,1), Z91011(1:91,2), 10, y91011, 'filled'); % Dibujar los puntos de la matriz proyectada en negro
%hold on;
%scatter(l_2d(1), l_2d(2), 50, color, 'filled'); % Dibujar el punto proyectado en el color especificado

%[~,idx_test] = pdist2(C,l_2d,'euclidean','Smallest',1);
%hold on
%gscatter(l_2d(:,1),l_2d(:,2),idx_test,'bgm','ooo')


% Define the number of clusters
K = 2;

% Initialize centroids randomly
centroids = rand(K,2);

% Initialize old_centroids to keep track of convergence
old_centroids = zeros(K,2);

% Loop until convergence
while ~isequal(centroids,old_centroids)

  % Assign data points to clusters
  distances = pdist2(Z91011,centroids);
  [min_dist,cluster] = min(distances,[],2);

  % Update centroids
  for k = 1:K
    centroids(k,:) = mean(Z91011(cluster==k,:));
  end

  % Check for convergence
  if isequal(centroids,old_centroids)
    break;
  else
    old_centroids = centroids;
  end

end

% Plot the results
figure(137),
h = gscatter(Z91011(:,1),Z91011(:,2),cluster);

% Add a legend to the plot
legend(h,{'Cluster 1','Cluster 2'});

hold on;

% Plot the centroids
scatter(centroids(:,1),centroids(:,2),100,'k','filled');

% Choose a data point to project
idx = 92;
datapoint = Z91011(idx,:);

% Project the data point onto the graph
%scatter(datapoint(1),datapoint(2),100,'r','filled');

% Determine which cluster the data point belongs to
datapoint_cluster = cluster(idx);
disp(['Data point belongs to cluster ',num2str(datapoint_cluster)]);

hold off;



