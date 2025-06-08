clear
close all
clc

data=xlsread('Accelerometer.csv'); % Written by Sharufti
variable={'t_total', 't', 'z', 'y', 'x'};

window_size = 34;    % Define window size for the moving average

for i=1:length(variable) 
    varName=variable{i};
    eval([varName '=data(:,i);']);
    eval([varName '_ma = movmean(' varName ', window_size);']); % Moving averages       
end

gradient=2; % Gradient threshold

figure (1)
plot3(x, y, z) % Plot 3D accelerometer data 
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('3D Accelerometer Data')
grid on

for i = 1:length(variable)-2 % Written by Aidan
    varName=variable{length(variable)+1-i};
    ma_data = eval([varName '_ma']);  % Get moving average data outside the loop
    figure(i + 1)
    h_ma = plot(t, eval([varName '_ma']), 'k'); % Plot moving average
    
    moving_points = []; % Initialize empty arrays to collect points
    stationary_points = []; 
    
    for j=1:length(t)-1  % Changed to length(t)-1 to avoid index out of bounds
        if (ma_data(j+1)-ma_data(j))/(t(j+1)-t(j))>gradient || (ma_data(j+1)-ma_data(j))/(t(j+1)-t(j))<-gradient
            moving_points = [moving_points, t(j)]; % Store moving times
        else
            stationary_points = [stationary_points, t(j)]; % Store stationary times
        end
    end
    hold on
    h_stationary = plot(stationary_points, zeros(size(stationary_points)), 'c*'); % Plot non-moving points
    h_moving = plot(moving_points, zeros(size(moving_points)), 'm+'); % Plot moving points
    
    hold off
    title(['Plot of ', char('X' + i - 1), '-axis against time'])
    xlabel('Time (s)')
    ylabel(['Axis ', char('X' + i - 1)])
    grid on
    
    % Hardcoded legend using handles
    legend([h_ma, h_stationary, h_moving], 'Moving Average', 'Stationary', 'Moving', 'Location', 'best');
end

for d=1:2 % Written by Gabriel
    total_time_moving = 0; % Initialize time moving variable
    total_time_stationary = 0; % Initialize time stationary variable
    figure(4+d)
    % Initialize empty arrays to collect points
    moving_times = [];
    stationary_times = []; 
    
    for j=1:length(t)-1  % Changed to length(t)-1 to avoid index out of bounds
        % Calculate gradients for all coordinates
        coords_ma = {x_ma, y_ma, z_ma};
        gradients = zeros(1, length(coords_ma));
        for i = 1:length(coords_ma)
            coord_ma = coords_ma{i};
            gradients(i) = (coord_ma(j+1) - coord_ma(j)) / (t(j+1) - t(j));
        end
        if d==1
            if all(abs(gradients) > gradient) % Check if all gradients exceed the threshold
                moving_times = [moving_times, t(j)];
            else
                stationary_times = [stationary_times, t(j)];
            end
        else
            if sum(abs(gradients) > gradient) >= 1 % Check if at least 1 gradients exceed the threshold
                moving_times = [moving_times, t(j)];
            else
                stationary_times = [stationary_times, t(j)];
            end
        end
        if j == length(t)-1  % Process intervals after all points are classified
            temp_moving = moving_times;
            temp_stationary = stationary_times;
            
            % Process in intervals of 100 time steps
            for k = 1:100:length(t)-1
                end_idx = min(k+99, length(t)-1); % Find ending index for this interval (avoid going out of bounds)
                
                interval_times = t(k:end_idx);
                
                moving_count = sum(ismember(temp_moving, interval_times)); % Count how many moving and stationary points in this interval
                stationary_count = sum(ismember(temp_stationary, interval_times));
                
                if moving_count > stationary_count % Apply the majority rule
                    % More moving points - convert all stationary points in interval to moving
                    moving_times = union(moving_times, intersect(stationary_times, interval_times));
                    stationary_times = setdiff(stationary_times, interval_times);
                    total_time_moving=total_time_moving+1;
                    
                else
                    % More stationary points - convert all moving points in interval to stationary
                    stationary_times = union(stationary_times, intersect(moving_times, interval_times));
                    moving_times = setdiff(moving_times, interval_times);
                    total_time_stationary=total_time_stationary+1;
                end
            end
        end
    end
    % Plot all points at once with handles
    hold on
    % Initialize legend handles and labels
    legend_handles = [];
    legend_labels = {};
    
    % Plot and store handles only if not empty
    if ~isempty(moving_times)
        h_moving = plot(moving_times, zeros(size(moving_times)), 'm*');
        legend_handles = [legend_handles, h_moving];
        legend_labels = [legend_labels, {'Moving'}];
    end
    
    if ~isempty(stationary_times)
        h_stationary = plot(stationary_times, zeros(size(stationary_times)), 'c+');
        legend_handles = [legend_handles, h_stationary];
        legend_labels = [legend_labels, {'Stationary'}];
    end
    
    hold off
    % Add legend only if there are handles to show
    if ~isempty(legend_handles)
        legend(legend_handles, legend_labels, 'Location', 'best');
    end
    xlabel('Time (s)')
    grid on
    if d==1
        title('Plot of time moving and time stationary based on all axes')
        disp('Based on filtering if all axes are above the gradient threshold:');
    else
        title('Plot of time moving and time stationary based on at least 1 axis')
        disp('Based on filtering if at least 1 axes are above the gradient threshold:');
    end
    disp(['Time moving: ' num2str(total_time_moving) ' seconds']);
    disp(['Time stationary: ' num2str(total_time_stationary) ' seconds']);
    disp(['Total time: ' num2str(t(end)) ' seconds']);
end
