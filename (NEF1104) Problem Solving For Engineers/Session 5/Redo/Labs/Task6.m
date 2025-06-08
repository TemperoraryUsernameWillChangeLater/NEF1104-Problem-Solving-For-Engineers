flag=input('1 or 2?')
switch flag
    case 1
        plot_antenna(100,20)
    case 2
        plot_circle(50)
    otherwise
        disp('Invalid input')
ends