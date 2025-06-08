Sample=[1 25.4 3.2; 2 21.6 2.1; 3 24.3 1.6; 4 27.5 0; 5 28.4 0; 6 22.7 1.9]
Day=Sample(:,1)
Temp=Sample(:,2)
Rain=Sample(:,3)

hold on
plot(Day, Temp, 'r', 'LineWidth', 2)
bar(Day, Rain)
hold off
xlabel('Day')
ylabel('Temperature(Line) and Rainfall(Bar)')
legend('Temperature', 'Rainfall(mm)')