clc
B=round(linspace(5,80,25))
B=round(rand(100,1)*100)
index39=0;
if any(B==39)
    for i=1:length(B)
        if B(i)==39
            index39=i;
            disp('39 can be found in the vector B at index:')
            disp(index39)
            break
        end
    end
else
    disp('39 can not be found in the vector B')
end

index52=0;
i=1;

if any(B==52)
    while i<length(B)
        if B(i)==52
            index52=i;
        end
        i=i+1;
    end
    disp('52 can be found in the vector B at index:')
    disp(index52)
else
    disp('52 can not be found in the vector B')
end
