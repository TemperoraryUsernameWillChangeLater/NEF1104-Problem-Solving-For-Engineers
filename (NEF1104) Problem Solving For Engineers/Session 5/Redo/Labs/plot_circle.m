function circle=plot_circle(R)
    theta=linspace(-2*pi, 2*pi,500);
    y=R*sin(theta);
    x=R*cos(theta);
    Area=pi*R.^2;
    plot(x, y, 'r')
    xlabel('X')
    ylabel('Y')
    title(['Circle with area ', num2str(Area), 'mm^2'])
    axis equal
    disp(['The area of this circle is: ', num2str(Area), 'mm^2'])
end