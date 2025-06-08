clc
%% Task 1
A=rand(3, 5)*70

%% Task 2
B=A.^2

%% Task 3
C=B./A

%% Task 4
ATF=all(A(:)>1)

%% Task 5
Btf=any(B(:)==0)

%% Task 6
Cf= find(C<0.5)

%% Task 7
D=linspace(0, 50, 100);

%% Task 8
find(D>5);
D5=ans(1:1)

%% Task 9
D5idx=find(D5==3) % ask for help?

%% Task 10
find(D>10)
D10=ans(1:1)

%% Task 11
Drange=[D5; D10]