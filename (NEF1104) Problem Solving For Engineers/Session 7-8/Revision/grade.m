function result=grade(score)
    if score>=80 && score<=100
        disp('he/ she has a HD')
    elseif score<80 && score>=70
        disp('he/ she has a D')
    elseif score<70 && score>=60
        disp('he/ she has a C')
    elseif score<60 && score>=50
        disp('he/ she has a P')
    elseif score<50 && score>=0
        disp('he/ she has an F')
    else
        disp('Nonexistant score')
    end
end