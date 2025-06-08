Coordinates = importdata('CircleCoordinates.txt'); % Load the coordinates from the .mat file
x = Coordinates(:, 1); % Extract x coordinates
y = Coordinates(:, 2); % Extract y coordinates
r=ceil(max(Coordinates(:, 1)))

plot(x, y, 'r')
xlabel('X')
ylabel('Y')
title(sprintf('Circle of Radius: %f', r))
grid on
axis equal