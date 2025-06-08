number = input('Enter a number: ');

remainder = mod(number, 2);

switch remainder
    case 0
        disp('The number is even.');
    case 1
        disp('The number is odd.');
    otherwise
        disp('Invalid input.');
end
