function plot_circle(r)
    theta=0:0.1:2*pi;
    x=r*cos(theta);
    y=r*sin(theta);
    plot(x, y, 'r')
    axis equal
end
