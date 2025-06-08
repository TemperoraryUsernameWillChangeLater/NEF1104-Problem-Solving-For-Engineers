clc
value=randi([0 10],1,1);
i=0;
while i<1
    guess=input('Guess a value between 1 & 10')
    if guess==value
        disp('You have guessed the right value!')
        i=i+1;
    elseif guess<0 || guess>10
        disp('Guess only between 1 & 10!')
    else
        disp('Guess again')
    end
end