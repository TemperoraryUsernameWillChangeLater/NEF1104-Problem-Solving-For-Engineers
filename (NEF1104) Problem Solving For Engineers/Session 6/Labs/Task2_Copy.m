clc
sample=importdata('Concrete compression test [mm - kN].txt');
t=sample(:,1);
d=sample(:,2);
f=sample(:,3);

disp('Enter the start force: ');
start=input('Enter the start force: ');
disp('Enter the finish force: ');
finish=input('Enter the finish force: ');

start_idx = 1; % Initialize start_idx with a default value
for i=1:length(f) % Rounding start to the nearest value
    if f(i)==start
        start=start;
    else
        StartArray=zeros(length(f),1);
        for i=1:length(f);
            StartArray(i)=[abs(f(i)-start)]; 
        end
        [~, start_idx]=min(StartArray);
        start=f(start_idx);
    end
end
disp(['The closest to start is: ', num2str(start)])

finish_idx = length(f); % Initialize finish_idx with a default value
for i=1:length(f) % Rounding finish to the nearest value
    if f(i)==finish
        finish=finish;
    else
        FinishArray=zeros(length(f),1);
        for i=1:length(f)
            FinishArray(i)=[abs(f(i)-finish)];
        end
        [~, finish_idx]=min(FinishArray);
        finish=f(finish_idx);
    end
end
disp(['The closest to finish is: ', num2str(finish)])

hold on
scatter(d,f,'filled','MarkerFaceColor','r','MarkerEdgeColor','k')
p = polyfit(d(start_idx:finish_idx), f(start_idx:finish_idx), 3);
fitted_values = polyval(p, d(start_idx:finish_idx));
plot(d(start_idx:finish_idx), fitted_values, 'b--')
hold off
xlabel('Deflection [mm]')
ylabel('Force [kN]')
title('Concrete Compression Test')