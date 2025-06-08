function Final_Grade=score(g)
    if g>=80
        disp('he/she has a HD')
    elseif g>=70
        disp('he/she has a D')
    elseif g>=60
        disp('he/she has a C')
    elseif g>=50
        disp('he/she has a P')
    elseif g>=0 && g<50
        disp('he/she has a F')
    else
        disp('Invalid input')
    end
end