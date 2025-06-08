for i=1:1:10
    subplot(2, 5, i)
    x=linspace(-100,100,5);
    y=10*i*x;
    plot(x, y)
    xlabel('X')
    ylabel('Y')
end