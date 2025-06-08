A=input('What is the Value of A: ')
B=input('What is the valye of B: ')
if A>=0 && B>=0 
    C=A+B
elseif A<0 && B<0
    C=abs(A)+abs(B)
else 
    C=A*B
end

disp(['C is equal to: ', num2str(C)])4