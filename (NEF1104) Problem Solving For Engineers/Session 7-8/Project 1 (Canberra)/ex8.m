x=[2010 2011 2012 2013 2014 2015];
y=[470 469 455 451 442 441];

figure (1)
subplot(4,1,1)
bar(x, y)
xlabel('Year')
ylabel('Number of car crashes')
title('Number of car crashes in the last 6 years')
subplot(4,1,2)
plot(x, y)
xlabel('Year')
ylabel('Number of car crashes')
title('Number of car crashes in the last 6 years')
grid on
subplot(4,1,3)
scatter(x, y)
xlabel('Year')
ylabel('Number of car crashes')
title('Number of car crashes in the last 6 years')
grid on
subplot(4,1,4)
pie(y)
title('Number of car crashes in the last 6 years')
legend(string(x), "Location", "bestoutside")