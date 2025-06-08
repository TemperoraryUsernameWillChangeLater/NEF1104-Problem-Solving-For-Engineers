function equation=plot_antenna(D,F)
    x=-D/2:0.01:D/2;
    y=(x.^2)/(4*F);
    plot(x,y)
    xlabel('x')
    ylabel('Y')
    title(['Plot of antenna with diameter of ', num2str(D), 'm & Focal point of ' num2str(F), 'm'])
end
