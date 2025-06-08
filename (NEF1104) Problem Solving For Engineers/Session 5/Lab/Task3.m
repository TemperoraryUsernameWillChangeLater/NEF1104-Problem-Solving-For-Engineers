x=input('What is X? ');

if x<0
    y=abs(x);
    disp('y=|x|')
elseif x>=0 && x<=5
    y=15-3*x;
    disp('y=15-3x')
else
    y=x^2
    disp('y=x^2')
end

disp(['The value of y is: ', num2str(y)])