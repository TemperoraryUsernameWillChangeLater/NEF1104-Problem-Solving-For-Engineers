disp('Choose a number between 1 and 5 to rate your satisfaction with the service you received: ');
rating=input('Enter your rating: ');
switch rating
    case 1
        disp('Extremely unhappy')
    case 2
        disp('Unhappy')
    case 3
        disp('Neutral')
    case 4
        disp('Happy')
    case 5
        disp('Extremely Happy')
    otherwise 
        disp('Invalid')
end