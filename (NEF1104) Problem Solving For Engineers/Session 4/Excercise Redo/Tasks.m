%% Task 1
A=rand(3,5).*10

%% Task 2
B=A.^2

%% Task 3
C=A./B

%% Task 4
Atf=all(A(:)>1)

%% Task 5
Btf=any(B(:)==0) % find out if any value in B is equal to 0 and save the T/F decision
in Btf/ off

%% Task 6
Cf=find(C(:)<=0.5) %find out which values in C are less than or equal to 0.5 and save the results in Cf.

%% Task 7
D=linspace(0,50,100)' %create a variable D which has 100 values that are evenly spaced between 0-50

%% Task 8
D5=D(min(find(D(:)>5))) % find the first number in D that is greater than 5 and save the result in D5

%% Task 9
D5idx=find(D(:)==D5) % What is the index of D5? save the result in D5

%% Task 10
D10=D(min(find(D(:)>10)))% find the first number in D that is greater than 10 and save the
result in D10

%% Task 11
Drange=D(find(D>=D5 & D<=D10)) %save all the numbers from D5 to D10 in D into a variable Drange