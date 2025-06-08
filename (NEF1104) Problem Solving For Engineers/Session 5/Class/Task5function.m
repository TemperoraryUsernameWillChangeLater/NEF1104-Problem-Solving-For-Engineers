function discriminant = Task5function(a,b,c);
    discriminant = b^2 - 4*a*c;
    if discriminant>0
        disp('2 solutions')
    elseif discriminant==0
                disp('1 solution')
    else
        disp('0 solution')
    end
end
