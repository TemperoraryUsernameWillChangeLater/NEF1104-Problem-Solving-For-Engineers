function radius=Ex4(r)
    theta=linspace(-100, 100, 1000)
    x=r*cos(theta)
    y=r*sin(theta)
    plot(x, y, 'r')
    axis equal
    xlabel('X')
    ylabel('Y')
    title('Circle')
end