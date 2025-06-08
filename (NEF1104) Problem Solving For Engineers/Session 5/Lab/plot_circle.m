function plot_circle(r)
    theta=0:0.01:2*pi;
    x=r*cos(theta);
    y=r*sin(theta);
    plot(x, y, 'r')
    axis equal
    xlabel('x')
    ylabel('y')
    title(['Area of circle \pi' num2str(r) '^2'])
end
