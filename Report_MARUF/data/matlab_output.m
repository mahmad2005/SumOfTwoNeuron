clc;
clear all;
theta = -4:0.01:4;
y = exp((1i*1.*theta)+log(2))*exp(1i*pi/2)+exp((1i*2.*theta)+log(2))*exp(1i*pi/2);;

y_real = real(y);
y_imag = imag(y);

f1= figure;
plot(theta,y_real);
hold on
plot(theta,y_imag);
xlabel('theta'),
ylabel('y'),
title('Complex Exponential Function - MATLAB Simulink');



Theta = theta';
COS_MATLAB = cos(theta)';
SIN_MATLAB = sin(theta)';

MATLAB_IN_OUT = [Theta, COS_MATLAB, SIN_MATLAB];


fileID1 = fopen('IP8_FinalData_cos.txt','r');
fileID2 = fopen('IP8_FinalData_sin.txt','r');
formatSpec = '%f';

COS_FPGA_IP8 = fscanf(fileID1,formatSpec);
SIN_FPGA_IP8 = fscanf(fileID2,formatSpec);
COS_FPGA_IP8 = COS_FPGA_IP8(20:820);
SIN_FPGA_IP8 = SIN_FPGA_IP8(20:820);
z = COS_FPGA_IP8 + SIN_FPGA_IP8*1i;

f2= figure;
plot(theta,COS_FPGA_IP8);
hold on
plot(theta,SIN_FPGA_IP8);
xlabel('theta'),
ylabel('y'),
title('FPGA output: 8-bit CORDIC Simulink');


fileID1 = fopen('BR8_FinalData_cos.txt','r');
fileID2 = fopen('BR8_FinalData_sin.txt','r');
formatSpec = '%f';

COS_FPGA_BR8 = fscanf(fileID1,formatSpec);
SIN_FPGA_BR8 = fscanf(fileID2,formatSpec);
COS_FPGA_BR8 = COS_FPGA_BR8(20:820);
SIN_FPGA_BR8 = SIN_FPGA_BR8(20:820);


fileID1 = fopen('D8_FinalData_cos.txt','r');
fileID2 = fopen('D8_FinalData_sin.txt','r');
formatSpec = '%f';

COS_FPGA_D8 = fscanf(fileID1,formatSpec);
SIN_FPGA_D8 = fscanf(fileID2,formatSpec);
COS_FPGA_D8 = COS_FPGA_D8(20:820);
SIN_FPGA_D8 = SIN_FPGA_D8(20:820);


f3= figure; f3.Position=[120   50   1200   600];
subplot(2,2,1), plot(theta,y_real), hold on, plot(theta,y_imag), xlabel('Theta'),ylabel('Amplitude'),title('MATLAB Simulink');
subplot(2,2,2), plot(theta,COS_FPGA_BR8), hold on, plot(theta,SIN_FPGA_BR8) ,xlabel('Theta'),ylabel('Amplitude'),title('FPGA output: 8-bit Block-RAM');
subplot(2,2,3), plot(theta,COS_FPGA_IP8), hold on, plot(theta,SIN_FPGA_IP8) ,xlabel('Theta'),ylabel('Amplitude'),title('FPGA output: 8-bit CORDIC Simulink');
subplot(2,2,4), plot(theta,COS_FPGA_D8), hold on, plot(theta,SIN_FPGA_D8) ,xlabel('Theta'),ylabel('Amplitude'),title('FPGA output: 8-bit Direct VHDL');

% FPGA_IN_OUT = [Theta, COS_FPGA_IP8, SIN_FPGA_IP8];
% 
% 
cos_abs_diff_BR8 = abs(y_real'-COS_FPGA_BR8);
sin_abs_diff_BR8 = abs(y_imag' - SIN_FPGA_BR8);
% 
cos_abs_diff_IP8 = abs(y_real'-COS_FPGA_I8);
sin_abs_diff_IP8 = abs(y_imag' - SIN_FPGA_IP8);

cos_abs_diff_D8 = abs(y_real'-COS_FPGA_D8);
sin_abs_diff_D8 = abs(y_imag' - SIN_FPGA_D8);

f4= figure;
plot(theta, cos_abs_diff_IP8);
title('Absolute different of Real value');

% 
% Final_cos_abs_diff = sum( cos_abs_diff )/801;
% Final_sin_abs_diff = sum( sin_abs_diff )/801;
