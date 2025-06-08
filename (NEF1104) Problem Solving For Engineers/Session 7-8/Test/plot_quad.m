function equation=plot_quad(a)
    x=-a:0.01:a;
    y=(a*x).^2;
    plot(x,y)
    xlabel('x')
    ylabel('y')
    title(['Quadratic function y=(ax)^2 with a = ' num2str(a), ' and domain ' num2str(-a) ' to ' num2str(a)])
    grid on
end