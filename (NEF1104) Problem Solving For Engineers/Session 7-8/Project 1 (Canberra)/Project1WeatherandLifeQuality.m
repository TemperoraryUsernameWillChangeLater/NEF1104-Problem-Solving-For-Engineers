% Project 1: Weather and Life Quality
%% Task 1
% Define month names and corresponding file patterns
months = {'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr'};
MonthNum ={'05', '06', '07', '08', '09', '10', '11', '12', '01', '02', '03', '04'};
years = {'24', '24', '24', '24', '24', '24', '24', '24', '25', '25', '25', '25'};

% Initialize a structure to store data
weatherData = struct();

% Loop through months and read data
for i = 1:length(months)
    filename = sprintf('%s-%s.csv', years{i}, MonthNum{i}(1:2));
    varName = sprintf('%s%s', months{i}, years{i});
    weatherData.(varName) = xlsread(filename);
    
    % Also create individual variables for backward compatibility with existing code
    eval([varName ' = weatherData.' varName ';']);
end

% No need for duplicate code here - data already loaded in the first loop
% The variables May24, Jun24, etc. already exist from the eval statement above

% Q1
figure(1)
for i=1:length(months)
    % Create subplot for each month
    subplot(3, 4, i);
    
    % Plot max and min temperatures
    varName = sprintf('%s%s', months{i}, years{i});
    plot(1:length(weatherData.(varName)(:,1)), weatherData.(varName)(:,1), 'r');
    hold on;
    plot(1:length(weatherData.(varName)(:,2)), weatherData.(varName)(:,2), 'b');
    hold off;
    
    % Set labels and title
    xlabel('Day of the month');
    ylabel('Temperature (°C)');
    title(sprintf('%s %s', months{i}, years{i}));
    legend('Max Temp', 'Min Temp');
    grid on;
end

% Q2
% Initialize comfortable temperature count
ComfortableTemperature = zeros(1, length(months));
    % Find comfortable temperature days
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    ArrayMinTemp = find(weatherData.(varName)(:,1) > 10);
    ArrayMaxTemp = find(weatherData.(varName)(:,2) < 30);
    
    % Count comfortable temperature days
    ComfortableTemperature(i) = numel(intersect(ArrayMinTemp, ArrayMaxTemp));
    
    % Display result
    fprintf('Comfortable temperature days in %s %s: %d\n', months{i}, years{i}, ComfortableTemperature);
end


%% Task 2

figure(2)
for i=1:length(months)
    % Create bar plots for rainfall
    varName = sprintf('%s%s', months{i}, years{i});
    bar(1:length(weatherData.(varName)(:,3)), weatherData.(varName)(:,3), 'r');
    % Create bar plots for rainfall
    bar(1:length(weatherData.(varName)(:,3)), weatherData.(varName)(:,3), 'r');
end
hold off;
xlabel('Day of Year (Starting from May 1st, 2024)');
ylabel('Rainfall(mm)');
title('Rainfall over the course of a year');
grid on

% Q2


