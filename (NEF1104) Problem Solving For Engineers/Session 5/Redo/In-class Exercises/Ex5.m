function discriminant=Ex5(a,b,c)
    discriminant=b^2-4*a*c;
    disp(['The discriminant is: ', num2str(discriminant)])
    if discriminant>0
        disp('2 solutions')
    elseif discriminant==0
        disp('1 solution')
    else disp('no solutions')
    end
end