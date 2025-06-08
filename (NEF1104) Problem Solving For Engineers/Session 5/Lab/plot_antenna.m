function plot_antenna(D,F)
    x=-D/2:0.01:D/2;
    y=(x.^2)/(4*F);
    plot(x, y, 'r')
    xlabel('x')
    ylabel('y')
    title(['Parabolic antenna with the given diameter ', num2str(D), ' & Focal point ', num2str(F)])
end