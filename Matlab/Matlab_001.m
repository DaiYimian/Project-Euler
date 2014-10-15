% Codes to Solve Problem 1 of Project Euler.
%   
% Author:  Dai Yimian, Nanjing University of Aeronautics and Astronautics
% Contact: daiyimian@outlook.com
% Date: 2014-10-14 15:47
% Revision: 1

clear;

N = 999;
%% Version 1
tic
acc_sum1 = 0;
for i = 1:N
    if mod(i,3)==0 | mod(i,5)==0
        acc_sum1 = acc_sum1 + i;
    end
end
time1 = toc;
disp(['Answer of Version 1: ' num2str(acc_sum1) ', time: ' num2str(time1)]);

%% Version 2
tic
acc_sum2 = sum(union(3:3:N, 5:5:N));
time2 = toc;
disp(['Answer of Version 2: ' num2str(acc_sum2) ', time: ' num2str(time2)]);

%% Version 3
tic
acc_sum3 = sum(3:3:N) + sum(5:5:N) - sum(15:15:N);
time3 = toc;
disp(['Answer of Version 3: ' num2str(acc_sum3) ', time: ' num2str(time3)]);

%% Version 4
tic
num1 = floor(N/3);
num2 = floor(N/5);
num3 = floor(N/(5*3));
acc_sum4 = num1*(2*3+(num1-1)*3)/2 + num2*(2*5+(num2-1)*5)/2 - ...
           num3*(2*15+(num3-1)*15)/2;
time4 = toc;
disp(['Answer of Version 4: ' num2str(acc_sum4) ', time: ' num2str(time4)]);