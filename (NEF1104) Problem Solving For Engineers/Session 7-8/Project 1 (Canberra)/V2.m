clc
months = {'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr'};
MonthNum ={'05', '06', '07', '08', '09', '10', '11', '12', '01', '02', '03', '04'};
years = {'24', '24', '24', '24', '24', '24', '24', '24', '25', '25', '25', '25'};

weatherData = struct();

for i = 1:length(months)
    filename = sprintf('%s-%s.csv', years{i}, MonthNum{i}(1:2));
    varName = sprintf('%s%s', months{i}, years{i});
    weatherData.(varName) = xlsread(filename);
end
%% Part 1
figure(1)
for i=1:length(months)
    subplot(3, 4, i);
    varName = sprintf('%s%s', months{i}, years{i});
    plot(1:length(weatherData.(varName)(:,1)), weatherData.(varName)(:,1), 'r');
    hold on;
    plot(1:length(weatherData.(varName)(:,2)), weatherData.(varName)(:,2), 'b');
    hold off;
    xlabel('Day of the month');
    ylabel('Temperature (°C)');
    title(sprintf('%s %s', months{i}, years{i}));
    legend('Max Temp', 'Min Temp');
    grid on;
end

% Find maximum number of days across all months
maxDays = 0;
for i = 1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    maxDays = max(maxDays, size(weatherData.(varName), 1));
end


ComfortableTemperature = zeros(length(months), maxDays); %% Initialize the array to store comfortable temperature days
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    for d=1:length(weatherData.(varName)(:,1))
        if weatherData.(varName)(d,1)>=10 && weatherData.(varName)(d,2)<=30 %% Fills the ComfortableTemperature array with 1 for comfortable days
            ComfortableTemperature(i, d)=1;
        else
            ComfortableTemperature(i, d)=ComfortableTemperature(i, d);
        end
    end
    disp(['Comfortable days in ' months{i} ' ' years{i} ': ' num2str(numel(find(ComfortableTemperature(i, :) == 1)))])
end

%% Part 2
LengthArray=zeros(length(months),1);
for i=1:1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    LengthArray(i)=size(weatherData.(varName),1);
end

cumulative_days=zeros(length(months)+1,1);
cumulative_days(2)=LengthArray(1);
for i=3:1:length(months)+1
    cumulative_days(i)=cumulative_days(i-1)+LengthArray(i-1);
end

figure(2)
hold on
colors = [
    0.8500, 0.3250, 0.0980;  % Rust
    0.9290, 0.6940, 0.1250;  % Amber
    0.4660, 0.6740, 0.1880;  % Green
    0.3010, 0.7450, 0.9330;  % Light blue
    0.0000, 0.4470, 0.7410;  % Blue
    0.6350, 0.0780, 0.1840;  % Dark red
    0.4940, 0.1840, 0.5560;  % Purple
    0.8500, 0.0780, 0.5330;  % Pink
    0.4660, 0.6740, 0.5880;  % Teal
    0.3010, 0.4450, 0.6330;  % Steel blue
    0.8000, 0.8000, 0.0000;  % Yellow
    0.0000, 0.7000, 0.0000;  % Dark green
];

for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    x_values = (cumulative_days(i)+1):cumulative_days(i+1);
    y_values = weatherData.(varName)(:,3);
    bar(x_values, y_values, 'FaceColor', colors(i,:), 'EdgeColor', 'none')
end
hold off
xlabel('Day of the year')
ylabel('Rainfall (mm)')
title('Rainfall over the course of a year')
grid on
legend(months, 'Location', 'BestOutside')

NoRain=0;
NormalRain=0;
HeavyRain=0;
TotalRain=0;
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    rain_data = weatherData.(varName)(:,3);
    NoRain=NoRain+numel(find((weatherData.(varName)(:,3))==0));
    NormalRain = NormalRain + sum((rain_data >= 0) & (rain_data <= 10));
    HeavyRain=HeavyRain+numel(find((weatherData.(varName)(:,3))>10));
    TotalRain=TotalRain+sum(weatherData.(varName)(:,3));
end
rain_stats = [NoRain, NormalRain, HeavyRain];
rain_strings = {'No Rain', 'Normal Rain', 'Heavy Rain'};

disp('Rainfall Statistics:')
for i = 1:length(rain_stats)
    disp(['There are ' num2str(rain_stats(i)) ' days with ' rain_strings{i}])
end
disp(['Total Annual Rainfall: ' num2str(TotalRain) ' mm'])

pie_chart = [NoRain, NormalRain, HeavyRain];
labels = {'No Rain', 'Normal Rain', 'Heavy Rain'};
figure (3)
pie(pie_chart, labels)
title('Rainfall Distribution')

Bed1Area=3.5*2.7;
Bed2Area=3.5*3;
Bed3Area=3.5*3.2;
Bed4Area=3.5*3.5;
BathArea=3.5*2.5;
KitechenArea=5.5*2;
LoungeArea=5.5*4.5;
TotalArea=Bed1Area+Bed2Area+Bed3Area+Bed4Area+BathArea+KitechenArea+LoungeArea;
RainVolume=TotalRain*TotalArea/1000;
disp(['Total Rain Volume: ' num2str(RainVolume) ' m^3 or ' num2str(RainVolume*1000) ' L'])

CostPerKL=3.3438;
AnnualCostSavings=CostPerKL*RainVolume;
disp(['Annual Cost Savings: $' num2str(AnnualCostSavings)])

%% Part 3
figure(4)
hold on
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    x_values = (cumulative_days(i)+1):cumulative_days(i+1);
    y_values = weatherData.(varName)(:,7);
    plot(x_values, y_values, 'Color', colors(i,:))
end
hold off
title('Wind Speed over the course of a year')
xlabel('Day of the year')
ylabel('Wind Speed (km/h)') 
grid on
legend(months, 'Location', 'BestOutside')

PowerGeneration=[0 0 1 0.9 0 0];
Windspeed=[0 13 50 100 100 130];
figure(5)
plot(Windspeed, PowerGeneration)
xlabel('Wind Speed (km/h)')
ylabel('Power Generation (kW)')
title('Power Generation vs Wind Speed')
grid on

Wind_Input=input('Enter wind speed (km/h): ');
InstantanousPowerGeneration_Output=0;
for i=1:length(Windspeed)-1
    if Wind_Input>=Windspeed(i) && Wind_Input<Windspeed(i+1)
        InstantanousPowerGeneration_Output=PowerGeneration(i)+(PowerGeneration(i+1)-PowerGeneration(i))*((Wind_Input-Windspeed(i))/(Windspeed(i+1)-Windspeed(i)));
        break
    end
end
disp(['Instantaneous Power Generation Output: ' num2str(InstantanousPowerGeneration_Output) ' kW'])
