% Codes to Solve Problem 2 of Project Euler.
%   
% Author:  Dai Yimian, Nanjing University of Aeronautics and Astronautics
% Contact: daiyimian@outlook.com
% Date: 2014-10-16 07:48
% Revision: 1

clear;

N = 4000000;
%% Version 1
tic
fib_arr = [1 2];
new_fib = 3;
while new_fib <= N
    fib_arr = [fib_arr new_fib];
    new_fib = fib_arr(end-1) + fib_arr(end);
end

acc_sum1 = 0;
for i = 1:length(fib_arr)
    if mod(fib_arr(i),2)==0
        acc_sum1 = acc_sum1 + fib_arr(i);
    end
end
time1 = toc;
disp(['Answer of Version 1: ' num2str(acc_sum1) ', time: ' num2str(time1)]);

%% Version 2        
tic
pre_fib = 1;
new_fib = 2;
acc_sum2 = 0;
while new_fib <= N
    if mod(new_fib,2)==0
        acc_sum2 = acc_sum2 + new_fib;
    end
    tmp = pre_fib;
    pre_fib = new_fib;
    new_fib = tmp + new_fib;
end
time2 = toc;
disp(['Answer of Version 2: ' num2str(acc_sum2) ', time: ' num2str(time2)]);

%% Version 3        
tic
pre_fib = 1;
new_fib = 2;
fib_num = 1;
while new_fib <= N
    fib_num = fib_num + 1;
    tmp     = pre_fib;
    pre_fib = new_fib;
    new_fib = tmp + new_fib;    
end
geo_prog_num = floor((fib_num+1)/3);
a1 = ((1+sqrt(5))/2)^3;
q1 = ((1+sqrt(5))/2)^3;
a2 = ((1-sqrt(5))/2)^3;
q2 = ((1-sqrt(5))/2)^3;
acc_sum3 = 1/sqrt(5) * (a1*(1-q1^geo_prog_num)/(1-q1) - a2*(1-q2^geo_prog_num)/(1-q2));
time3 = toc;
disp(['Answer of Version 3: ' num2str(acc_sum3) ', time: ' num2str(time3)]);

