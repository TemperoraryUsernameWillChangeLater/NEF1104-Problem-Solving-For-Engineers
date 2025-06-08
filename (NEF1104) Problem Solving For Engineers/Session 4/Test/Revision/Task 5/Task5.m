data=xlsread('Height Data.xlsx');
interval1=50;
interval2=100;
interval3=140;
number1=data(1:interval1,1);
number2=data(interval1+1:interval2,1);
number3=data(interval2+1:interval3,1);
class1=data(1:interval1,2);
class2=data(interval1+1:interval2,2);
class3=data(interval2+1:interval3,2);
class3max=max(class3)

figure(1)
    plot(number1,class1,'r')
        xlabel('Student No.')
        ylabel('Height (mm)')
    hold on
    plot(number2,class2,'b')
        xlabel('Student No.')
        ylabel('Height (mm)')
    title('Heights of Class 1 compared to Class 2')
figure(2)
    bar(number3,class3,'g')
    hold on
    plot(number3,max(class3),'b+','LineWidth',3)
    hold on
    plot(number3,min(class3),'r.-','LineWidth',5)
    hold off
    title('Heights of Class 3 with Minimum and Maximum Values')

