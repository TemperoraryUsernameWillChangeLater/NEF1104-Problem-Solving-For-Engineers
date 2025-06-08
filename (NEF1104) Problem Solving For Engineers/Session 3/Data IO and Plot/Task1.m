%% Task 1

X=-2*pi:0.1:2*pi;

Y1=sin(X);
Y2=cos(X);
Y3=tan(X);

figure(1)
plot(X,Y1,'r',X,Y2,'g',X,Y3,'b')
xlabel('X')
ylabel('Y')
title('Sine, Cosine and Tangent')
legend('Sine','Cosine','Tangent')
grid on

figure(2)
subplot(3,1,1)
plot(X,Y1,'r')
xlabel('X')
ylabel('Y')
title('Sine')
grid on
subplot(3,1,2)
plot(X,Y2,'g')
xlabel('X')
ylabel('Y')
title('Cosine')
grid on
subplot(3,1,3)
plot(X,Y3,'b')
xlabel('X')
ylabel('Y')
title('Tangent')
grid on