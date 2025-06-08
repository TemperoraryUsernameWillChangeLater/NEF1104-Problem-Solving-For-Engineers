%% Task 1
for i=1:10
    disp('Hello World')
end

%% Task 2
for i=1:12
    disp(['the ', num2str(i), ' month'])
end

%% Task 3
days=[31 28 31 30 31 30 31 31 30 31 30 31]
for i=1:12
    disp(['the ', num2str(i), ' month has ', num2str(days(i)), ' days'])
end

%% Task 4
x=0:10:100;
hold on
for i=10:10:100
    y=i*x
    plot(x, y, 'r')
end

%% Task 5
x=0:10:100;
for i=1:1:10
    m=[10:10:100]
    subplot(2,5,i)
    y=m(i)*x
    plot(x, y, 'r')
end

%% Task 6
x= [0 2 4 6]
y= [3 5 7 9]
hold on
for i = 1:1:4
    subplot(4,1, i)
    plot(x(i),y(i), 'r*')
end

%% Task 7
A = floor(rand(1,100)*10);
addA=0;
for i=1:1:100
    addA=addA+A(i);
end
disp(addA)


%% Task 8
A = floor(rand(1,100)*10)
count=0
for i=1:1:100
    if A(i)==5
        count=count+1;
    else count=count;
    end
end

%% Task 9
grade = floor(randi( [0,100],1,50 ))
F=0
P=0
C=0
D=0
HD=0
for i=1:1:50
    if grade(i)<50
        F=F+1
    elseif grade(i)>=50 && grade(i)<60
        P=P+1
    elseif grade(i)>=60 && grade(i)<70
        C=C+1
    elseif grade(i)>=70 && grade(i)<80
        D=D+1
    elseif grade(i)>=80
        HD=HD+1
    end
end

d=[F P C D HD]
str={'F','P','C','D','HD'}
for i=1:1:5
disp(['Amount of ' str(i), num2str(d(i))])% fix later
end

Total=F+P+C+D+HD

%% Task 10
A = floor(rand(1,10)*100)
Amax=0
for i=1:1:10
    if A(i)>Amax
        Amax=A(i)
    else Amax=Amax
    end
end
