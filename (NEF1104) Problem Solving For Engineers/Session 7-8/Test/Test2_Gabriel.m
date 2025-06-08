% MATLAB TEST 2
% Name: Gabriel
% change this m-file name to your FIRST NAME before submission

%% Q1 (add your program below and click "Run Section")
clear
clf
clc
A=rand(80,1)*50 %80x1 vector of randon numbers between 0-50
B=A(find(A<20)) % Finding the numbers that are less than 20
A(find(A>30))=[]; % Removing the numbers that are greater than 30
C=A % C is the vector A without the numbers greater than 30
%% Q2 (state your choice here)
% data = 1:2:20 
%% Q3 (state your choice here)
% subplot(2,5,8)
%% Q4 (add your program below and click "Run Section")
clear
clf
clc

i=1; % initialize i
while i<=10
    disp(i); % display i
    i=i+1; % add 1 to i
end

%% Q5 (add your program below and click "Run Section")
clear
clf
clc

value=input('Enter a value: '); 
if value==1
    disp('Bad');
elseif value==2
    disp('Good');
elseif value==3
    disp('Excellent');
    else
    disp('not valid');
end

value2=input('Enter a value: ');
switch value2
    case 1
        disp('Bad');
    case 2
        disp('Good');
    case 3
        disp('Excellent');
    otherwise
        disp('not valid');
end

%% Q6 (add your program below and click "Run Section")
clear   
clf
clc
function equation=plot_quad(a)
    x=-a:0.01:a;
    y=(a*x).^2;
    plot(x,y)
    xlabel('x')
    ylabel('y')
    title(['Quadratic function y=(ax)^2 with a = ' num2str(a), ' and domain ' num2str(-a) ' to ' num2str(a)])
    grid on
end


%% Q7 (add your program below and click "Run Section")
clear
clf
clc
%Shipping cost = Basic price x Weight x Distance x Discount
%Basic price is $0.12/kg.
weight=input('Enter the weight of the package (kg): ');
distance=input('Enter the distance to be shipped (km): ');
basicprice=0.12;
if distance<250
    discount=0.2;
    disp('20% discount')
elseif distance>=250 && distance<500
    discount=0.1;
    disp('10% discount')
elseif distance>=500 && distance<=1000
    discount=0.05;
    disp('5% discount')
else
    discount=0;
    disp('no discount')
end
cost=basicprice*weight*distance*(1-discount);
disp(['The shipping cost is: $' num2str(cost)]);

%% Q8 (add your program below and click "Run Section")
clear
clf
clc
n=input('What is your factorial number?');
factorial=1
for  i=1:1:n
    factorial=factorial*i
end

%% Q9 - bonus (add your program below and click "Run Section")
clear
clf
clc

year=input('Enter a year: ');
if rem(year,4)==0
    disp('This is a leap year.')
else
    disp('This is not a leap year.')
end

month=input('Enter a month: ');
if month==1
    disp('January has 31 days')
elseif month==2
    if rem(year,4)==0
        disp('February has 29 days')
    else
        disp('February has 28 days')
    end
elseif month==3
    disp('March has 31 days')
elseif month==4
    disp('April has 30 days')
elseif month==5
    disp('May has 31 days')
elseif month==6
    disp('June has 30 days')
elseif month==7
    disp('July has 31 days')
elseif month==8
    disp('August has 31 days')
elseif month==9
    disp('September has 30 days')
elseif month==10
    disp('October has 31 days')
elseif month==11
    disp('November has 30 days')
elseif month==12
    disp('December has 31 days')
else
    disp('Invalid month')
end

% change this m-file name to your FIRST NAME before submission