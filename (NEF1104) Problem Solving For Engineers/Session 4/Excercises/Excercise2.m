clc
%% Task 1
A=rand(3,5)*10

%% Task 2
B=A.^2

%% Task 3
C=A./B

%% Task 4
Atf=all(A(:)>1)

%% Task 5
Btf=any(B(:)==0)

%% Task 6
Cf=find(C(:)<=0.5)

%% Task 7
D=linspace(0,50,100)

%% Task 8
find(D'>=5)
D5=D(ans(1:1))

%% Task 9
D5idx=ans(1:1)

%% Task 10
find(D'>=10)
D10=D(ans(1:1))

%% Task 11
Drange=[D5 D10]