clc

rain=importdata('Daily rainfall data.txt');

sig=input('what do you think is significant rainfall? ');
count=0;
sigtotal=0;
total=1;
for i=1:length(rain)
    if rain(i)>sig
        count=count+1;
        sigtotal=sigtotal+rain(i);
    end
end
disp(['The total amount of significant rain days is: ', num2str(count)])
disp(['The total amount of total significant rain is: ', num2str(sigtotal)])
disp(['The total amount of rain is: ', num2str(total)])

hold on
plot(rain)