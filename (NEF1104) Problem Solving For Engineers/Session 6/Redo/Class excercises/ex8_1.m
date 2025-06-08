A = floor(rand(1,100)*10);
Count=0;
for i=1:1:length(A)
    if A(i)==5
        Count=Count+1;
    else
        Count=Count;
    end
end
disp(Count)