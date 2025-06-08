clc
rain=importdata('Daily rainfall data.txt');
sig=input('What do you consider significant rain: ');
significantrain=zeros(length(rain), 1);
r_total=0;
sigmarain=zeros(length(rain), 1);
sigmarain(1)=rain(1);
r_ave=mean(rain);
for i=1:1:length(rain)
    if rain(i)>=sig
        significantrain(i)=rain(i);
    else
        significantrain(i)=significantrain(i);
    end
    r_total=rain(i)+r_total;
    for i=2:1:length(rain)
        sigmarain(i)=sigmarain(i-1)+rain(i);
    end
end
disp(['There was a total of ', num2str(r_total), 'mm of Rainfall, with an average of ',  num2str(r_ave), 'mm'])
count=numel(find(significantrain>0));
disp(['The amount of siginificant rain days is: ', num2str(count)])

    

subplot(2,1,1)
hold on
bar(rain, 'b')
bar(significantrain, 'r')
hold off
title(['Graph of a year of rainfall with a total of ', num2str(count), 'mm and an average of ', num2str(r_ave), 'mm'])
xlabel('Day')
ylabel('Rainfall(mm)')
legend('Rainfall', ['Significant Rain above ', num2str(sig), 'mm'])

subplot(2,1,2)
plot(sigmarain)
title('Cumulative Rainfall')
xlabel('Day')
ylabel('Cumulative Rainfall (mm)')
legend('Cumulative Rainfall')