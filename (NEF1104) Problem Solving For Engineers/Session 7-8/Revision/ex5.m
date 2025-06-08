clc
A=floor(rand(1,20)*100)
Amin=A(1);
for i=1:1:length(A)
    if A(i)<Amin
        Amin=A(i);
    else
        Amin=Amin;
    end
end
disp(['min(A) is ', num2str(Amin)])

Amax=A(1);
i=1;
while i<length(A)
    if A(i)>Amax
        Amax=A(i);
    else
        Amax=Amax;
    end
    i=i+1;
end
disp(['max(A) is ', num2str(Amax)])
