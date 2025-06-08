%% Task 2
clc
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
NormRain = find((May24(:,3) > 0) & (May24(:,3) < 10))
numel(NormRain)