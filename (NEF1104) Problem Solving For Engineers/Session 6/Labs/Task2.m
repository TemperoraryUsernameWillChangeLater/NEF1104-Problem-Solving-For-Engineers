clc
sample=importdata('Concrete compression test [mm - kN].txt');
t=sample(:,1);
d=sample(:,2);
f=sample(:,3);

disp('Choose your start Force')
start=input('Start');
disp('Choose your finish Force')
finish=input('Finish');
for i=1:1:length(f)
    if f(i)==start
        start=f(i)
    elseif f(i)<=start
    else start=start
    end
end

finish=max(find(f<=finish))

plot(d,f,'r')
xlabel('Deflection (mm)')
ylabel('Force (kN)')
title('Concrete Compression Test')
hold on
