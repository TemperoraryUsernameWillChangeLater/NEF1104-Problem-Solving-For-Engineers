theta=-10: 0.1: 10;
h=0;
k=0;
r=5
x=h+r*cos(theta);
y=k+r*sin(theta);

plot(x, y, 'g:','LineWidth', 3);
hold on;
plot (h, k, '+')

title('plot of x^2+y^2=25');
xlabel('x');
ylabel('y');

axis equal
axis( [-6, 6, -6, 6])