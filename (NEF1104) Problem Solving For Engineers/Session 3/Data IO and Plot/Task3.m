A=xlsread('Height Data.xlsx');
height=A(3:6,7);

pie=pie(height);
legend('1400-1599','1600-1799','1800-1999','2000-2100')
title('Pie Chart of Height Data')