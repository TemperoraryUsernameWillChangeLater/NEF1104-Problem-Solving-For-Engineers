flag=input('Enter a number')
switch flag
    case 1
        disp('You have selected option 1')
        plot_antenna(100,20)
    case 2
        disp('You have selected option 2')
        plot_circle (5)
    otherwise
        disp('Invalid input')
end