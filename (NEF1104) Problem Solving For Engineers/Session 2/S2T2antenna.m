x=-100:0.01:100;
y=2*x.^2;

plot(x, y, 'b-.');
title('2x^2');
xlabel('x');
ylabel('y');

xlswrite('results.xlsx', [x' y'])