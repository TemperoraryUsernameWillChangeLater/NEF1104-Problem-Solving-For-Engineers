rain=importdata('Daily rainfall data.txt');
rainMax=max(rain)
rainMin=min(rain)
rainAve=mean(rain)
level=input('Pick a level')
if level<rainMin
    disp('Too Little')
elseif level>rainMax
    disp('Too Much')
elseif level>rainAve*0.8 && level<rainAve*1.2
    disp('Close to average')
else
    disp('Normal')
end