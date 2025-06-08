m = 1;
c = 1;
for i=1:1:9 % Added for loop statement
    plot( [0,10] , m*[0,10]+c , 'r');
    m=m+1;
    c=c+1;
    hold on
end % Added end statement for the loop