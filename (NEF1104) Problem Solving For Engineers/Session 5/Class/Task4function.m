%% Task 4
function circle = Task4function(r);
   theta=-5:0.01:5;
    x=r*cos(theta);
    y=r*sin(theta); 
    plot(x, y, 'r');
    axis equal
end 