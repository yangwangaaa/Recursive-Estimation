Num1=6;
Den1=[1 2 6];
Num2=[1 3];
Den2=[1 2 6];
Num3=[1 4 6];
Den3=[1 2 6];


sys1=tf(Num1,Den1);
sys2=tf(Num2,Den2);
sys3=tf(Num3,Den3);

t=10;

sysd1=c2d(sys1,0.1,'tustin');
sysd2=c2d(sys2,0.1,'tustin');
sysd3=c2d(sys3,0.1,'tustin');

figure
step(sysd3,sys3,t)
title('System3','fontsize',16);
legend('continuous','discrete');

figure
step(sysd2,sys2,t)
title('System2','fontsize',16);
legend('continuous','discrete');

figure
step(sysd1,sys1,t)
title('System1','fontsize',16);
legend('continuous','discrete');
