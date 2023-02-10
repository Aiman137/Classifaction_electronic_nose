clear 
close all 
clc

M1 = readmatrix("MEDIDA1.csv");
M2 = readmatrix("MEDIDA2.csv");
M3 = readmatrix("MEDIDA3.csv");
M45 = readmatrix("MEDIDA4Y5.csv");

figure(1),
plot(M1);
text(200, 3.25, 'Acetona');
text(1000, 3.25, 'Etanol');
text(1760, 3.25, 'Acetona');
text(2070, 3.25, 'Etanol');
text(2520, 3.25, 'Acetona');
text(2780, 3.25, 'Etanol');
text(3200, 3.25, 'Acetona');
text(3400, 3.25, 'Etanol');
xline(170); %ACETONA
xline(340);
xline(970); %ETANOL
xline(1140);
xline(1740); %ACETONA
xline(1910);
xline(2030); %ETANOL
xline(2200);
xline(2490); %ACETONA
xline(2660);
xline(2740); %ETANOL
xline(2910);
xline(3180); %ACETONA
xline(3350);
xline(3360); %ETANOL
xline(3530);
title("Medida 1");
legend("A0", "A1", "A2");
A0_ACETONA = [];
A1_ACETONA = [];
A2_ACETONA = [];
A0_ACETONA = [A0_ACETONA;M1(170:340,1);M1(1740:1910,1);M1(2490:2660,1);M1(3180:3350,1)];
A1_ACETONA  = [A1_ACETONA;M1(170:340,2);M1(1740:1910,2);M1(2490:2660,2);M1(3180:3350,2)];
A2_ACETONA  = [A2_ACETONA;M1(170:340,3);M1(1740:1910,3);M1(2490:2660,3);M1(3180:3350,3)];

A0_ETANOL = [];
A1_ETANOL = [];
A2_ETANOL = [];
A0_ETANOL = [A0_ETANOL;M1(970:1140,1);M1(2030:2200,1);M1(2740:2910,1);M1(3360:3530,1)];
A1_ETANOL  = [A1_ETANOL;M1(970:1140,2);M1(2030:2200,2);M1(2740:2910,2);M1(3360:3530,2)];
A2_ETANOL  = [A2_ETANOL;M1(970:1140,3);M1(2030:2200,3);M1(2740:2910,3);M1(3360:3530,3)];
figure(2),
plot(A0_ACETONA)
figure(3),
plot(A1_ACETONA)
figure(4),
plot(A2_ACETONA)
figure(5),
plot(M2);
text(200, 3.25, 'Acetona');
text(1000, 3.25, 'Etanol');
text(1760, 3.25, 'Acetona');
text(2070, 3.25, 'Etanol');
text(2520, 3.25, 'Acetona');
text(2780, 3.25, 'Etanol');
text(3200, 3.25, 'Acetona');
text(3400, 3.25, 'Etanol');
xline(280); %ACETONA
xline(450);
xline(1015); %ETANOL
xline(1185);
xline(1750); %ACETONA
xline(1920);
xline(2030); %ETANOL
xline(2200);
xline(2510); %ACETONA
xline(2680);
xline(2720); %ETANOL
xline(2890);
xline(3090); %ACETONA
xline(3260);
xline(3250); %ETANOL
xline(3420);
title("Medida 2");
legend("A0", "A1", "A2");
A0_ACETONA = [A0_ACETONA;M2(280:450,1);M2(1750:1920,1);M2(2510:2680,1);M2(3090:3260,1)];
A1_ACETONA = [A1_ACETONA;M2(280:450,2);M2(1750:1920,2);M2(2510:2680,2);M2(3090:3260,2)];
A2_ACETONA = [A2_ACETONA;M2(280:450,3);M2(1750:1920,3);M2(2510:2680,3);M2(3090:3260,3)];

A0_ETANOL = [A0_ETANOL;M2(1015:1185,1);M2(2030:2200,1);M2(2720:2890,1);M2(3250:3420,1)];
A1_ETANOL  = [A1_ETANOL;M2(1015:1185,2);M2(2030:2200,2);M2(2720:2890,2);M2(3250:3420,2)];
A2_ETANOL  = [A2_ETANOL;M2(1015:1185,3);M2(2030:2200,3);M2(2720:2890,3);M2(3250:3420,3)];
figure(6),
plot(A0_ACETONA)
figure(7),
plot(A1_ACETONA)
figure(8),
plot(A2_ACETONA)
figure(9),
plot(M3);
text(200, 3.25, 'Acetona');
text(1000, 3.25, 'Etanol');
text(1760, 3.25, 'Acetona');
text(2070, 3.25, 'Etanol');
text(2520, 3.25, 'Acetona');
text(2780, 3.25, 'Etanol');
text(3200, 3.25, 'Acetona');
text(3400, 3.25, 'Etanol');
xline(290); %ACETONA
xline(460);
xline(1010); %ETANOL
xline(1180);
xline(1800); %ACETONA
xline(1970);
xline(2095); %ETANOL
xline(2265);
xline(2595); %ACETONA
xline(2765);
xline(2890); %ETANOL
xline(3060);
xline(3280); %ACETONA
xline(3450);
xline(3485); %ETANOL
xline(3655);
title("Medida 3");
legend("A0", "A1", "A2");
A0_ACETONA = [A0_ACETONA;M3(290:460,1);M3(1800:1970,1);M3(2595:2765,1);M3(3280:3450,1)];
A1_ACETONA = [A1_ACETONA;M3(290:460,2);M3(1800:1970,2);M3(2595:2765,2);M3(3280:3450,2)];
A2_ACETONA = [A2_ACETONA;M3(290:460,3);M3(1800:1970,3);M3(2595:2765,3);M3(3280:3450,3)];

A0_ETANOL = [A0_ETANOL;M3(1010:1180,1);M3(2095:2265,1);M3(2890:3060,1);M3(3485:3655,1)];
A1_ETANOL  = [A1_ETANOL;M3(1010:1180,2);M3(2095:2265,2);M3(2890:3060,2);M3(3485:3655,2)];
A2_ETANOL  = [A2_ETANOL;M3(1010:1180,3);M3(2095:2265,3);M3(2890:3060,3);M3(3485:3655,3)];

figure(10),
plot(A0_ACETONA)
figure(11),
plot(A1_ACETONA)
figure(12),
plot(A2_ACETONA)
% figure(13),
% plot(M45);
% text(200, 3.25, 'Acetona');
% text(1000, 3.25, 'Etanol');
% text(1760, 3.25, 'Acetona');
% text(2070, 3.25, 'Etanol');
% text(2520, 3.25, 'Acetona');
% text(2780, 3.25, 'Etanol');
% text(3200, 3.25, 'Acetona');
% text(3400, 3.25, 'Etanol');
% xline(170); %ACETONA
% xline(340);
% xline(970); %ETANOL
% xline(1140);
% xline(1740); %ACETONA
% xline(1910);
% xline(2030); %ETANOL
% xline(2200);
% xline(2490); %ACETONA
% xline(2660);
% xline(2740); %ETANOL
% xline(2910);
% xline(3180); %ACETONA
% xline(3350);
% xline(3360); %ETANOL
% xline(3530);
% title("Medida 1");
% legend("A0", "A1", "A2");
% title("Medida 4 y 5");
data = [M1(170:340,1)' M1(170:340,2)' M1(170:340,3)';
    M1(1740:1910,1)' M1(1740:1910,2)' M1(1740:1910,3)';
    M1(2490:2660,1)' M1(2490:2660,2)' M1(2490:2660,3)';
    M1(3180:3350,1)' M1(3180:3350,2)' M1(3180:3350,3)';
    M2(280:450,1)' M2(280:450,2)' M2(280:450,3)';
    M2(1750:1920,1)' M2(1750:1920,2)' M2(1750:1920,3)';
    M2(2510:2680,1)' M2(2510:2680,2)' M2(2510:2680,3)';
    M2(3090:3260,1)' M2(3090:3260,2)' M2(3090:3260,3)';
    M3(290:460,1)' M3(290:460,2)' M3(290:460,3)';
    M3(1800:1970,1)' M3(1800:1970,2)' M3(1800:1970,3)';
    M3(2595:2765,1)' M3(2595:2765,2)' M3(2595:2765,3)';
    M3(3280:3450,1)' M3(3280:3450,2)' M3(3280:3450,3)';
    M1(970:1140,1)' M1(970:1140,2)' M1(970:1140,3)';
    M1(2030:2200,1)' M1(2030:2200,2)' M1(2030:2200,3)';
    M1(2740:2910,1)' M1(2740:2910,2)' M1(2740:2910,3)';
    M1(3360:3530,1)' M1(3360:3530,2)' M1(3360:3530,3)';
    M2(1015:1185,1)' M2(1015:1185,2)' M2(1015:1185,3)';
    M2(2030:2200,1)' M2(2030:2200,2)' M2(2030:2200,3)';
    M2(2720:2890,1)' M2(2720:2890,2)' M2(2720:2890,3)';
    M2(3250:3420,1)' M2(3250:3420,2)' M2(3250:3420,3)';
    M3(1010:1180,1)' M3(1010:1180,2)' M3(1010:1180,3)';
    M3(2095:2265,1)' M3(2095:2265,2)' M3(2095:2265,3)';
    M3(2890:3060,1)' M3(2890:3060,2)' M3(2890:3060,3)';
    M3(3485:3655,1)' M3(3485:3655,2)' M3(3485:3655,3)';];

% Centramos los datos
%data = data';
% data = data - mean(data);
figure(13),
scatter(data(:,1), data(:,2), 50);

% Esta funcion pca admite observacion como filas y las columnas
% deben ser los features values
[U, Z] = pca(data, 'NumComponents', 2);
figure(14),
scatter(Z(:,1), Z(:,2), 20, data(:,2), 'filled');


% [coeff, score, latent, tsquared, expalined, mu] = pca(data);
% pc1 = score(:,1);
% pc2 = score(:,2);
% figure(13),
% plot(pc1, pc2, 'o');

