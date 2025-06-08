Data=xlsread('Height Data.xlsx');
n=Data(:,1);
h=Data(:,2);
maxh=max(h);
minh=min(h);

figure(1)
bar(n,h,'m')
hold on
plot(n,maxh,'r+')
hold on
plot(n,minh,'g+')
xlabel('num')
ylabel('height')
title('Height Data')
legend('Height','Max Height','Min Height')
hold off

H1=Data(1:50,2)
H2=Data(51:length(Data),2)
n1=Data(1:50,1);
n2=Data(51:end,1);

figure(2)
subplot(2, 1, 1)
plot(n1,H1,'r')
xlabel('num')
ylabel('height')
title('Height Data 1')
subplot(2, 1, 2)
plot(n2,H2,'b')
xlabel('num')
ylabel('height')
title('Height Data 2')
