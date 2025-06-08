clc
grade = floor(randi( [0,100],1,50 ))
HD=0;
D=0;
C=0;
P=0;
F=0;

for i=1:1:length(grade)
    if grade(i)<=100 &&  grade(i)>=80
        HD=HD+1;
    elseif grade(i)>=70 && grade(i)<80
        D=D+1;
    elseif grade(i)>=60 && grade(i)<70
        C=C+1;
    elseif grade(i)>=50 && grade(i)<60
        P=P+1;
    else
        F=F+1;
    end
end

disp(['The number of HD is: ', num2str(HD)])
disp(['The number of D is: ', num2str(D)])
disp(['The number of C is: ', num2str(C)])
disp(['The number of P is: ', num2str(P)])
disp(['The number of F is: ', num2str(F)])
disp(['The total number of students is: ', num2str(HD+D+C+P+F)])