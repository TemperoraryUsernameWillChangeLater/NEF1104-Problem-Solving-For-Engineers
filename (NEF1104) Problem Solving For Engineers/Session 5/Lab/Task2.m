rain='daily rainfall data.txt'
rainMax=max(rain)
rainMin=min(rain)
rainAve=mean(rain)
level=input('Enter the level of rainfall: ')

if level<rainMin
    disp('too little')
elseif level>rainMax
    disp('too much')
elseif (level>(rainAve-rainAve*0.2)) && (level<(rainAve+rainAve*0.2))
    disp('close to average')
else
    disp('normal')
end