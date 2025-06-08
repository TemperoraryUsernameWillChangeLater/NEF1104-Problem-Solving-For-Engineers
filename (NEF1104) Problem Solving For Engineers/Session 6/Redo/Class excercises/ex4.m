for i=10:10:100
    x=linspace(-100,100,5);
    y=i*x;
    hold on
    plot(x, y)
end
hold off