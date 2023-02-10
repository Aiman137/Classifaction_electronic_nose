clc
clear
close all
a = arduino(); 

x0 = 0;
x1 = 0;
x2 = 0;
interv = 0;
%%init_time = 0;

% Delete the file if it exists
if exist('datos_sensores.csv', 'file') == 2
    delete('datos_sensores.csv');
end

% Create a cell array with the titles as the first row
titles = {'A0', 'A1', 'A2'};
% Abre el archivo para escribir
fid = fopen('datos_sensores.csv', 'w');
% Escribe los títulos en la primera fila del archivo como una cadena
fprintf(fid, '%s,%s,%s\n', titles{:});


tic
time_limit = 60*120;
while (1)
   
    v0 = readVoltage(a,'A0');
    v1 = readVoltage(a,'A1');
    v2 = readVoltage(a,'A2');
    interv = toc;
    x0 =[x0,v0];
    x1 =[x1,v1];
    x2 =[x2,v2];
    % Concatenate the vectors horizontally
    
    % Escribe los datos en el archivo utilizando fprintf
    fprintf(fid, '%f,%f,%f\n', v0, v1, v2);

    %%subplot(3,1,1)
    plot(x0,'b')
    hold on
    %%subplot(3,1,2)
    plot(x1,'r')
    %%subplot(3,1,3)
    plot(x2,'k')
    legend('A0','A1 (MQ-3)','A2 (MQ-135)')
    grid ON 
    drawnow
    %%writematrix(v,'');

    if toc > time_limit
        break;
    end
    end
% Cierra el archivo
fclose(fid);
