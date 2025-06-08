x=[0 2 4 6]
y=[3 5 7 9]

for i=1:1:4
    subplot(4, 1, i)
    plot(x(i), y(i), 'r*')
    grid on
end