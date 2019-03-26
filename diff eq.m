num=[1 4 6];
den=[1 2 6];
sysc=tf(num,den);
sysd=c2d(sysc,0.1);
diff=iztrans(sysd)