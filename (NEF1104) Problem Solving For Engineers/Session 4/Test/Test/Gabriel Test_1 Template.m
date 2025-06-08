% MATLAB TEST 1
% Name:*** (s*******)
% change this m-file name to your FIRST NAME before submission

%% Q1 (submit your Excel spreadsheet, do not write anything here)

%% Q2 (add your program below and click "Run Section")
clear
clc
clf
A=[42:-7:7; 3:6:33]
K=A(:,2)

%% Q3 (add your program below and click "Run Section")
clear
clc
clf
theta=-2*pi:0.01:2*pi;
r=5; % radius of the circle
x=r*cos(theta); % x coordinates of the circle
y=r*sin(theta); % y coordinates of the circle

plot(x,y,'r', LineWidth=1.5) % plot the circle in red with line width 1.5
axis equal
xlabel('x-axis')
ylabel('y-axis')
title(['Circle with radius ', num2str(r)])% dynamic title
grid on

%% Q4 (add your program below and click "Run Section")
clear
clc
clf

x=-6:0.1:6; % x coordinates
y1=2.^x; % y1 coordinates
y2=5.^x; % y2 coordinates

plot(x,y1,'r.', LineWidth=1.5) % plot y1 in red dot with line width 1.5
hold on
plot(x,y2,'b--', LineWidth=1.5) % plot y2 in blue dashed line with line width 1.5
legend('y=2^x', 'y=5^x')
title('Exponential Functions')
xlabel('x-axis')
ylabel('y-axis')
axis([-6 6 0 10])%axis limits
grid on
axis equal
xlabel('x-axis')
ylabel('y-axis')
ylim([0, 10])
title('Exponential Functions')


%% Q5 (add your program below and click "Run Section")
clear
clc
clf

x=[0 2 4 2 0]
y=[2 4 2 0 2]

plot(x,y,'b', LineWidth=1.5) % plot the rectangle in red with line width 1.5
xlabel('x')
ylabel('y')
axis([0 4 0 4]); %axis limits
axis equal
title('A Rectangle')
%% Q6 (add your program below and click "Run Section")
clear
clc
clf

Year=[2010 2011 2012 2013 2014 2015]
Supply=[300.2 308.9 313.7 338.6 362.7 374.1]
Demand=[287.3 296.6 302.6 328.0 350.8 354.1]

figure (1)
subplot(2,1,1)
plot(Year, Supply, 'g', LineWidth=1.5) % plot the supply in green with line width 1.5
hold on
plot(Year, Demand, 'k', LineWidth=1.5) % plot the demand in blacl line with line width 1.5
title('Supply and Demand of engineers')
xlabel('Year')
ylabel('Number of engineers')
legend('Supply', 'Demand')
hold off
subplot(2,1,2)
bar(Year, Demand, 'b') % plot the demand
title('Year vs. Demand of engineers')
xlabel('Year')
ylabel('Number of engineers')


%% Q7 (add your program below and click "Run Section")
clear
clc
clf

year=[2008	2009 2010 2011 2012	2013 2014 2015]
students=[3789 4005 4123 3956 3879 4010 4165 4211]

save('number.txt','year','students','-ascii') % Save the data to a .mat file

data=importdata('number.txt'); %there was no save to txt so coundn't access the data
year = data(1,:); %matrix was wrong
number = data(2,:);
plot(year, number, 'r');% p was capital
xlabel('Year');
ylabel(['Number of Students']); 

%% Q8 (add your program below and click "Run Section")
clear
clc
clf

A=linspace(20, 50, 200)
B = randn([0, 70], 4, 5)
C=size(B)
