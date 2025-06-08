theta=-2*pi:0.01:2*pi;
r=5; % radius of the circle
x=r*cos(theta); % x coordinates of the circle
y=r*sin(theta); % y coordinates of the circle

Coordinates=[x;y]';

save('CircleCoordinates.txt','Coordinates', '-ascii') % Save the coordinates to a .mat file
xlswrite('CircleCoordinates.xlsx', Coordinates)