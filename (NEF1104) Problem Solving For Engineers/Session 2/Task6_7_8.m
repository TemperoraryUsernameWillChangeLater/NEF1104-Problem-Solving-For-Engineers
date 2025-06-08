A=0:0.1:2*pi
B = sin(A)
C= abs(sin (A))

plot(A, B, 'r-.')
hold on;
plot (A, C, 'b--')

%% 
A=0:0.1:2*pi;
B = sin(A);
C= abs(sin (A));

Figure 1
plot(A, B, 'r-.')
Figure 2
plot (A, C, 'b--')

%% %% 
A=0:0.1:2*pi;
B = sin(A);
C= abs(sin (A));

subplot(1, 2, 1)
plot(A, B, 'r-.')
subplot (1, 2, 2)
plot (A, C, 'b--')
