x=-20:0.05:20;
y=(3*x.^2)/4;
equation=string('(3x^2)/4')

Coordinates=[x; y]';

xlswrite('QuadraticEquation.xlsx', Coordinates);

Calc=xlsread('QuadraticEquation.xlsx');

CalcX=Calc(:,1);
CalcY=Calc(:,2);

plot(CalcX, CalcY, "r-")
xlabel('x');
xlim([-10, 10])% setting limits on x graph
ylabel('y');
title('Equation of', equation);