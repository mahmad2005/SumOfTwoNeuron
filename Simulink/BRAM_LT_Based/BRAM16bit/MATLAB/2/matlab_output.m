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
title('MATLAB Simulink');

Theta = theta';

COS_MATLAB = cos(theta)';
SIN_MATLAB = sin(theta)';

MATLAB_IN_OUT = [Theta, COS_MATLAB, SIN_MATLAB];


fileID1 = fopen('FinalData_cos.txt','r');
fileID2 = fopen('FinalData_sin.txt','r');
formatSpec = '%f';

COS_FPGA = fscanf(fileID1,formatSpec);
SIN_FPGA = fscanf(fileID2,formatSpec);
COS_FPGA = COS_FPGA(55:855);
SIN_FPGA = SIN_FPGA(55:855);
z = COS_FPGA + SIN_FPGA*1i;

f2= figure;
plot(theta,COS_FPGA);
hold on
plot(theta,SIN_FPGA);
xlabel('theta'),
ylabel('y'),
title('FPGA output: BRAM SysGen');

% FPGA_IN_OUT = [Theta, COS_FPGA, SIN_FPGA];
% 
% 
cos_abs_diff = abs(y_real'-COS_FPGA);
sin_abs_diff = abs(y_imag' - SIN_FPGA);
% 
f3= figure;
plot(theta, cos_abs_diff);
title('Absolute different of Real value');
% 
Final_cos_abs_diff = sum( cos_abs_diff )/801;
Final_sin_abs_diff = sum( sin_abs_diff )/801;
%plot(theta, cos_abs_diff);
% 
% MSE_COS = immse(COS_MATLAB,COS_FPGA);
% MSE_SIN = immse(SIN_MATLAB,SIN_FPGA);
% 
% Accuracy = zeros(629,1);
% for j = 1:629
%     if (COS_FPGA(j)-COS_MATLAB(j))<0
%         Accuracy(j) = (abs(COS_FPGA(j)/COS_MATLAB(j)))*100;
%     else
%         Accuracy(j) = (abs(COS_MATLAB(j)/COS_FPGA(j)))*100;
%     end
% end
% 
% Accuracy_final = sum(Accuracy)/629;
% 
% 
% abs_cos_dif_10000000 = cos_abs_diff.*100000;
% f4= figure; plot(theta(2:629),abs_cos_dif_10000000(2:629));
% title('Zoomed absolute different of Consine value');

%abs_sin_dif_10000000 = sin_abs_diff.*100000;
%plot(theta(2:629),abs_sin_dif_10000000(2:629));
