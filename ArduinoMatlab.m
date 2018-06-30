clear all
clc
cla
delete(instrfindall);
arduino = serial('COM6','BaudRate',9600); %Cocokan dengan COM Arduino
fopen(arduino);
figure(1);
fileName = 'Save.txt';
fileID = fopen(fileName,'a');
fprintf(fileID,'Data');
while(1)
    In = fscanf(arduino,'%s');
    data = str2double(In);
    fprintf(fileID,'%.4f\n',data);
    pause(1);
end
fclose(fileID);
fclose(arduino);
delete(arduino);