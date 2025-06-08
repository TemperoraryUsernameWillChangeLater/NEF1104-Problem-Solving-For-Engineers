Rating=input('How good was your service? ')
switch Rating
    case 5
        disp('Extremely happy')
    case 4
        disp('Happy')
    case 3
        disp('Neutral')
    case 2
        disp('Unhappy')
    case 1
        disp('Extremely unhappy')
    otherwise
        disp('Invalid')
end