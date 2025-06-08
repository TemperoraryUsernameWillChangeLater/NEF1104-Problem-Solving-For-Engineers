months = {'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr'}
MonthNum ={'05', '06', '07', '08', '09', '10', '11', '12', '01', '02', '03', '04'}
years = {'24', '24', '24', '24', '24', '24', '24', '24', '25', '25', '25', '25'}

% Initialize a structure to store data
weatherData = struct();

% Loop through months and read data
for i = 1:length(months)
    filename = sprintf('%s-%s.csv', years{i}, MonthNum{i}(1:2))
    varName = sprintf('%s%s', months{i}, years{i})
    weatherData.(varName) = xlsread(filename)
    
    % Also create individual variables for backward compatibility with existing code
    myVar = weatherData.(varName);
end

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

ComfortableTemperature = struct()
for i=1:length(months)
    varName = sprintf('%s%s', months{i}, years{i});
    if weatherData.(varName)(i,1)>=10 && weatherData.(varName)(i,2)<=30
        ComfortableTemperature.(varName(i))(i)=1
    else 
        ComfortableTemperature.(varName(i))(i)=ComfortableTemperature.(varName(i))(i)
    end
end

for i=1:length(weatherData.(varName)(:,2))
    varName = sprintf('%s%s', months{i}, years{i});
    if weatherData.(varName)(i,1)>=10 && weatherData.(varName)(i,2)<=30
        ComfortableTemperature(i)=1
    else
        ComfortableTemperature(i)=ComfortableTemperature(i)
    end
end