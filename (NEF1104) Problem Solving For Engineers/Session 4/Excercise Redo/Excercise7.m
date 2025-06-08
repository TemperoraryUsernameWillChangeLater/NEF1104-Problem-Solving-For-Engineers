Sample=[1 25.4 3.2; 2 21.6 2.1; 3 24.3 1.6; 4 27.5 0; 5 28.4 0; 6 22.7 1.9]
D=Sample(:,1)
T=Sample(:,2)
R=Sample(:,3)
S=[D T R]

hold on
plot(S(:,1), S(:,2), 'k--', 'LineWidth', 3)
plot(S(:,1), S(:,3), 'r-.', 'LineWidth', 3)
hold off
xlabel('Day')
ylabel('Temperature & Rainfall')
title('Rainfall and temperature this week')
legend('Temperature', 'Rainfall')