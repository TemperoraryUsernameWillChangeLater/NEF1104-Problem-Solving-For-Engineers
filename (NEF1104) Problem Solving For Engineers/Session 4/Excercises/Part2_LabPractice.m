%% Excercise 1
G=[10 40 20; 6 20 1; 3 2 0];

% 1
GT=G';
%2
disp(G(1,3));
%3
disp(G(2,:));
%4
disp(G(:,3));
%5
G(2,:)=[1 3 5];

%% Excercise 2
H=[0 4 2; 6 20 1; 3 2 0];
J=[1 6 3; 4 2 2; 2 1 0];

%1
H+J;
%2
H*J;
%3
H.*J;

%% Excercise 3
K= rand(1, 10)'*5;

%% Excercise 4
K(find(K< 2.5)) = [];

%% Excercise 5
A= [7 14 4 3 12 5 0 1];
any(A==0);
B=max(A);
A10=any(B==10);;

%% Excercise 6
Sample=[1:1:6; 25.4 21.6 24.3 27.5 28.4 22.7; 3.2 2.1 1.6 0 0 1.9]'
Day=Sample(:,1)
Temp=Sample(:,2)
Rain=Sample(:,3)

figure(1)
plot(Day, Temp, 'r', 'LineWidth', 2)
hold on
plot(Day, Rain, 'b', 'LineWidth', 2 )
xlabel('day')
legend('Temp', 'Rain')
title('Rain & Temperature')

%% Exercise 7
D=Day
T=Temp
R=Rain
S=[D';T';R']'

figure(2)
plot(S(:,1), S(:,2), 'k--', 'LineWidth', 3)
hold on     
plot(S(:,1), S(:,3), 'r-.', 'LineWidth', 3)
xlabel('day')
legend('Temp', 'Rain')
title('Rain & Temperature')