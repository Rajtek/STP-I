H=tf([0.5,3.5,5.625],[1,8,-36,-288]);
[l,m]=c2d(H,0.1);
l
figure;
pzmap(l)
figure;
pzmap(H)
for 