% Project 1: Weather and Life Quality
%% Task 1
% Define month names and corresponding file patterns

May24=xlsread('24-05.csv');
Jun24=xlsread('24-06.csv');
Jul24=xlsread('24-07.csv');
Aug24=xlsread('24-08.csv');
Sep24=xlsread('24-09.csv');
Oct24=xlsread('24-10.csv');
Nov24=xlsread('24-11.csv');
Dec24=xlsread('24-12.csv');
Jan25=xlsread('25-01.csv');
Feb25=xlsread('25-02.csv');
Mar25=xlsread('25-03.csv');
Apr25=xlsread('25-04.csv');

% Q1
figure(1)
subplot(3,4,1)
plot(1:length(May24(:,1)),May24(:,1),'r')
hold on 
plot(1:length(May24(:,2)),May24(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('May 2024')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,2)
plot(1:length(Jun24(:,1)),Jun24(:,1),'r')
hold on
plot(1:length(Jun24(:,2)),Jun24(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('June 2024')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,3)
plot(1:length(Jul24(:,1)),Jul24(:,1),'r')
hold on
plot(1:length(Jul24(:,2)),Jul24(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('July 2024')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,4)
plot(1:length(Aug24(:,1)),Aug24(:,1),'r')
hold on
plot(1:length(Aug24(:,2)),Aug24(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('August 2024')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,5)
plot(1:length(Sep24(:,1)),Sep24(:,1),'r')
hold on
plot(1:length(Sep24(:,2)),Sep24(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('September 2024')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,6)
plot(1:length(Oct24(:,1)),Oct24(:,1),'r')
hold on
plot(1:length(Oct24(:,2)),Oct24(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('October 2024')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,7)
plot(1:length(Nov24(:,1)),Nov24(:,1),'r')
hold on
plot(1:length(Nov24(:,2)),Nov24(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('November 2024')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,8)
plot(1:length(Dec24(:,1)),Dec24(:,1),'r')
hold on
plot(1:length(Dec24(:,2)),Dec24(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('December 2024')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,9)
plot(1:length(Jan25(:,1)),Jan25(:,1),'r')
hold on
plot(1:length(Jan25(:,2)),Jan25(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('January 2025')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,10)
plot(1:length(Feb25(:,1)),Feb25(:,1),'r')
hold on
plot(1:length(Feb25(:,2)),Feb25(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('February 2025')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,11)
plot(1:length(Mar25(:,1)),Mar25(:,1),'r')
hold on
plot(1:length(Mar25(:,2)),Mar25(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('March 2025')
legend('Max Temp','Min Temp')
grid on
subplot(3,4,12)
plot(1:length(Apr25(:,1)),Apr25(:,1),'r')
hold on
plot(1:length(Apr25(:,2)),Apr25(:,2),'b')
hold off
xlabel('Day of the month')
ylabel('Temperature (°C)')
title('April 2025')
legend('Max Temp','Min Temp')
grid on

% Q2
ArrayMinTemp=find(May24(:,1)>10);
ArrayMaxTemp=find(May24(:,2)<30);
ComfortableTemperatureMay24=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Jun24(:,1)>10);
ArrayMaxTemp=find(Jun24(:,2)<30);
ComfortableTemperatureJun24=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Jul24(:,1)>10);
ArrayMaxTemp=find(Jul24(:,2)<30);
ComfortableTemperatureJul24=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Aug24(:,1)>10);
ArrayMaxTemp=find(Aug24(:,2)<30);
ComfortableTemperatureAug24=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Sep24(:,1)>10);
ArrayMaxTemp=find(Sep24(:,2)<30);
ComfortableTemperatureSep24=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Oct24(:,1)>10);
ArrayMaxTemp=find(Oct24(:,2)<30);
ComfortableTemperatureOct24=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Nov24(:,1)>10);
ArrayMaxTemp=find(Nov24(:,2)<30);
ComfortableTemperatureNov24=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Dec24(:,1)>10);
ArrayMaxTemp=find(Dec24(:,2)<30);
ComfortableTemperatureDec24=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Jan25(:,1)>10);
ArrayMaxTemp=find(Jan25(:,2)<30);
ComfortableTemperatureJan25=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Feb25(:,1)>10);
ArrayMaxTemp=find(Feb25(:,2)<30);
ComfortableTemperatureFeb25=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Mar25(:,1)>10);
ArrayMaxTemp=find(Mar25(:,2)<30);
ComfortableTemperatureMar25=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

ArrayMinTemp=find(Apr25(:,1)>10);
ArrayMaxTemp=find(Apr25(:,2)<30);
ComfortableTemperatureApr25=numel(intersect(ArrayMinTemp,ArrayMaxTemp))

%% Task 2
May24=xlsread('24-05.csv');
Jun24=xlsread('24-06.csv');
Jul24=xlsread('24-07.csv');
Aug24=xlsread('24-08.csv');
Sep24=xlsread('24-09.csv');
Oct24=xlsread('24-10.csv');
Nov24=xlsread('24-11.csv');
Dec24=xlsread('24-12.csv');
Jan25=xlsread('25-01.csv');
Feb25=xlsread('25-02.csv'); % 2025 is not a leap year
Mar25=xlsread('25-03.csv');
Apr25=xlsread('25-04.csv');
% Q1
figure(2)
hold on
bar(1:length(May24(:,1)),May24(:,3),'r')
bar(length(May24(:,1))+1:length(May24(:,1))+length(Jun24(:,1)),Jun24(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1)),Jul24(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1)),Aug24(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1)),Sep24(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1)),Oct24(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1)),Nov24(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1)),Dec24(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1))+length(Jan25(:,1)),Jan25(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1))+length(Jan25(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1))+length(Jan25(:,1))+length(Feb25(:,1)),Feb25(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1))+length(Jan25(:,1))+length(Feb25(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1))+length(Jan25(:,1))+length(Feb25(:,1))+length(Mar25(:,1)),Mar25(:,3),'r')
bar(length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1))+length(Jan25(:,1))+length(Feb25(:,1))+length(Mar25(:,1))+1:length(May24(:,1))+length(Jun24(:,1))+length(Jul24(:,1))+length(Aug24(:,1))+length(Sep24(:,1))+length(Oct24(:,1))+length(Nov24(:,1))+length(Dec24(:,1))+length(Jan25(:,1))+length(Feb25(:,1))+length(Mar25(:,1))+length(Apr25(:,1)),Apr25(:,3),'r')
hold off
xlabel('Day of Year (Starting from May 1st, 2024)');
ylabel('Rainfall(mm)');
title('Rainfall over the course of a year');
grid on

% Q2
NormRain=intersect((May24(:,3)>0),(May24(:,3)<10))
numel(NormRain)

