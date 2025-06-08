clc
rain=importdata('Daily rainfall data.txt');
sig = input('What do you think is significant rainfall?');
sig_day=0;
for i=1:1:length(rain(:,1))
    if rain(i,1)>sig
        sig_day=sig_day+1;
    else 
        sig_day=sig_day;
    end
end
disp(['Total rainfall above ' num2str(sig), 'mm: ', num2str(sig_day)]);

r_total=sum(rain(:,1));
disp([num2str(r_total), 'mm Total Rainfall'])

r_ave=mean(rain(:,1));
disp([num2str(r_ave), 'mm average Rainfall'])

cumulative_rain=zeros(length(rain(:,1)),1);
cumulative_rain(1)=rain(1,1);
for i=2:1:length(rain(:,1))
    cumulative_rain(i)=cumulative_rain(i-1)+rain(i,1);
end

sigbar=find(rain(:,1)>sig);
subplot(2,1,1)
hold on
bar(1:length(rain(:,1)),rain(:,1), 'b')
bar(sigbar,rain(sigbar,1), 'r')
legend('Rainfall', 'Significant Rainfall')
hold off
xlabel('Day')
ylabel('Rainfall (mm)')
title('Daily Rainfall')
grid on
subplot(2,1,2)
plot(1:length(rain(:,1)),cumulative_rain,'g')
xlabel('Day')
ylabel('Cumulative Rainfall (mm)')
title('Cumulative Rainfall')
grid on
legend('Cumulative Rainfall')
