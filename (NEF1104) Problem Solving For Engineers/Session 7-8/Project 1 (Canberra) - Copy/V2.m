close all
clear
clc                                                                             
months = {'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr'};
MonthNum ={'05', '06', '07', '08', '09', '10', '11', '12', '01', '02', '03', '04'};
years = {'24', '24', '24', '24', '24', '24', '24', '24', '25', '25', '25', '25'};

weatherData = struct();

for i = 1:length(months)
    filename = sprintf('%s-%s.csv', years{i}, MonthNum{i});
    varName = sprintf('%s%s', months{i}, years{i});
    weatherData.(varName) = xlsread(filename);
end
%% Part 1
figure(1)
for i=1:length(months)
    subplot(3, 4, i); % Create a subplot for each month
    varName = sprintf('%s%s', months{i}, years{i}); % Create variable name
    % Plot the maximum and minimum temperatures
    hold on;
    plot(1:length(weatherData.(varName)(:,1)), weatherData.(varName)(:,1), 'r');
    plot(1:length(weatherData.(varName)(:,2)), weatherData.(varName)(:,2), 'b');
    hold off;
    xlabel('Day of the month');
    ylabel('Temperature (°C)');
    title(sprintf('%s %s', months{i}, years{i})); % Title of each subplot
    legend('Max Temp', 'Min Temp');         
    grid on;
end

% Find maximum number of days across all months
maxDays = 0;
for i = 1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    maxDays = max(maxDays, size(weatherData.(varName), 1));
end


ComfortableTemperature = zeros(length(months), maxDays); % Initialize the array to store comfortable temperature days
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i}); % Create variable name
    % Check if the variable exists in the structure
    for d=1:length(weatherData.(varName)(:,1))
        if weatherData.(varName)(d,1)>=10 && weatherData.(varName)(d,2)<=30 % Fills the ComfortableTemperature array with 1 for comfortable days
            ComfortableTemperature(i, d)=1; % Comfortable day
        else
            ComfortableTemperature(i, d)=ComfortableTemperature(i, d); % Not a comfortable day
        end
    end
    disp(['Comfortable days in ' months{i} ' ' years{i} ': ' num2str(numel(find(ComfortableTemperature(i, :) == 1)))]) % Display the number of comfortable days for each month
end
disp(['Total comfortable days: ' num2str(sum(ComfortableTemperature(:)))]) % Display the total number of comfortable days

figure(2)
plot(1:length(months), sum(ComfortableTemperature, 2), 'o-', 'MarkerSize', 8, 'LineWidth', 2);
xlabel('Month');
ylabel('Number of Comfortable Days');
title('Comfortable Days per Month');
%% Part 2
LengthArray=zeros(length(months),1); % Initialize the array to store lengths of each month
for i=1:1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    LengthArray(i)=size(weatherData.(varName),1); % Get the length of each month starting from May
end

cumulative_days=zeros(length(months)+1,1); % Initialize the array to store cumulative days
cumulative_days(2)=LengthArray(1); % Set the first cumulative day to the length of the first month
for i=3:1:length(months)+1
    cumulative_days(i)=cumulative_days(i-1)+LengthArray(i-1); % Calculate cumulative days
end

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

figure(3)
hold on
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

NoRain=0; %Initialize the variables
NormalRain=0; %Initialize the variables
HeavyRain=0; %Initialize the variables
TotalRain=0; %Initialize the variables
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i}); % Create variable name
    rain_data = weatherData.(varName)(:,3); % Extract rainfall data
    NoRain=NoRain+numel(find((weatherData.(varName)(:,3))==0)); % Count days with no rain
    NormalRain = NormalRain + sum((rain_data > 0) & (rain_data <= 10)); % Count days with normal rain
    HeavyRain=HeavyRain+numel(find((weatherData.(varName)(:,3))>10)); % Count days with heavy rain
    TotalRain=TotalRain+sum(weatherData.(varName)(:,3)); % Calculate total rainfall
end
rain_stats = [NoRain, NormalRain, HeavyRain];
rain_strings = {'No Rain', 'Normal Rain', 'Heavy Rain'};

disp('Rainfall Statistics:')
for i = 1:length(rain_stats)
    disp(['There are ' num2str(rain_stats(i)) ' days with ' rain_strings{i}])
end
disp(['Total Annual Rainfall: ' num2str(TotalRain) ' mm'])

percentages = ([NoRain, NormalRain, HeavyRain] / cumulative_days(end)) * 100; % Calculate percentages
pie_chart = [NoRain, NormalRain, HeavyRain]; 
labels = cell(1,3); % Create labels for the pie chart
for i = 1:3
    labels{i} = sprintf('%s: %.1f%%', rain_strings{i}, percentages(i)); % Format labels
end
figure(4)
pie(pie_chart, labels)
title('Rainfall Distribution')

Bed1Area=3.5*2.7;
Bed2Area=3.5*3;
Bed3Area=3.5*3.2;
Bed4Area=3.5*3.5;
BathArea=3.5*2.5;
KitechenArea=5.5*2;
LoungeArea=5.5*4.5;
TotalArea=Bed1Area+Bed2Area+Bed3Area+Bed4Area+BathArea+KitechenArea+LoungeArea; % Calculate total area
RainVolume=TotalRain*TotalArea/1000; % Convert mm to m^3
disp(['Total Area: ' num2str(TotalArea) ' m^2'])
disp(['Total Rain Volume: ' num2str(RainVolume) ' m^3 or ' num2str(RainVolume*1000) ' L'])

CostPerKL=2.251;
AnnualCostSavings=CostPerKL*RainVolume;
disp(['Annual Cost Savings: $' num2str(AnnualCostSavings)])

%% Part 3
PowerGeneration=[0 0 1 0.9 0 0]; % Initialize the array to store power generation values
Windspeed=[0 13 50 100 100 130]; % Initialize the array to store wind speed values
figure(6)
plot(Windspeed, PowerGeneration)
xlabel('Wind Speed (km/h)')
ylabel('Power Generation (kW)')
title('Power Generation vs Wind Speed')
grid on

MaxWindSpeedIndex=max(find(PowerGeneration==0))-1;
MinWindSpeedIndex=min(find(PowerGeneration==0))+1;

WindspeedArray=zeros(1, cumulative_days(end)); % Initialize the array to store wind speed values
figure(5)
hold on
h_lines = zeros(length(months), 1); % Store handles for monthly lines
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i}); % Create variable name
    x_values = (cumulative_days(i)+1):cumulative_days(i+1); % Get x values
    y_values = weatherData.(varName)(:,7); % Get y values
    h_lines(i) = plot(x_values, y_values, 'Color', colors(i,:)); % Plot the wind speed
    WindspeedArray(cumulative_days(i)+1:cumulative_days(i+1)) = y_values; % Store wind speed values
    nan_indices = isnan(WindspeedArray(cumulative_days(i)+1:cumulative_days(i+1)));
    if any(nan_indices)
        WindspeedArray(cumulative_days(i)+1:cumulative_days(i+1)) = 0; % Replace NaN with 0
    end
end
disp(['Average Wind Speed: ' num2str(mean(WindspeedArray)) ' km/h']) % Display average wind speed

star_x = [];
star_y = [];
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i}); % Create variable name
    x_values = (cumulative_days(i)+1):cumulative_days(i+1); % Get x values
    y_values = weatherData.(varName)(:,7); % Get y values
    for d=1:length(y_values)
        if y_values(d)<= Windspeed(MinWindSpeedIndex) || y_values(d)>= Windspeed(MaxWindSpeedIndex) % Check if wind speed is outside operational range (0-100 km/h)
            star_x = [star_x, cumulative_days(i)+d]; % Append x value
            star_y = [star_y, y_values(d)]; % Append y value
        end
    end
end

have_stars = ~isempty(star_x); % Check if there are any stars to plot
if have_stars
    h_stars = plot(star_x, star_y, 'w*', 'MarkerSize', 30);
end

hold off
title('Wind Speed over the course of a year')
xlabel('Day of the year')
ylabel('Wind Speed (km/h)') 
grid on

if have_stars % If there are stars to plot, add them to the legend
    legend([h_lines(:); h_stars], [months(:); {'Outside Operational Range'}], 'Location', 'BestOutside')
else
    legend(h_lines, months, 'Location', 'BestOutside')
end

Wind_Input=input('Enter the wind speed (km/h): '); % Prompt user for wind speed input
InstantanousPowerGeneration_Output=0; % Initialize the output variable
for i=1:length(Windspeed)-1
    if Wind_Input>=Windspeed(i) && Wind_Input<Windspeed(i+1) % Check if wind speed is within range
        InstantanousPowerGeneration_Output=PowerGeneration(i)+(PowerGeneration(i+1)-PowerGeneration(i))*((Wind_Input-Windspeed(i))/(Windspeed(i+1)-Windspeed(i))); % Linear interpolation
        break % Exit loop if wind speed is found
    end
end
disp(['Instantaneous Power Generation Output of a wind turbine is: ' num2str(InstantanousPowerGeneration_Output) ' kW'])

figure(7)
hold on
PowerGenerationArray=zeros(1, cumulative_days(end)); % Initialize the array to store power generation values
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i}); % Create variable name
    x_values = (cumulative_days(i)+1):cumulative_days(i+1); % Get x values
    y_values = weatherData.(varName)(:,7); % Get y values
    y_values2 = zeros(size(y_values)); % Initialize the array to store interpolated values
    for d=1:length(y_values)
        for j=1:length(Windspeed)-1
            if y_values(d)>=Windspeed(j) && y_values(d)<Windspeed(j+1) % Check if wind speed is within range
                y_values2(d)=(PowerGeneration(j)+(PowerGeneration(j+1)-PowerGeneration(j))*((y_values(d)-Windspeed(j))/(Windspeed(j+1)-Windspeed(j)))); % Linear interpolation
            else
                y_values2(d)=y_values2(d); % y_values2 remains unchanged
            end
            PowerGenerationArray(cumulative_days(i)+d)=y_values2(d); % Store power generation values
        end
    end
    bar(x_values, y_values2, 'FaceColor', colors(i,:), 'EdgeColor', 'none'); % Plot as bar graph
end
hold off    
title('Wind Speed Power Generation over the course of a year')
xlabel('Day of the year')
ylabel('Power Generation (kW)')
grid on
legend(months, 'Location', 'BestOutside') 
disp(['Average Power Generation: ' num2str(mean(PowerGenerationArray)) ' kW']) % Display average power generation