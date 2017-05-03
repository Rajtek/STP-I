C=tf([0.5,3.5,5.625],[1,8,-36,-288]);
[D,m]=c2d(C,0.1);%ekstrapolator zerowego rzedu domyslny
D %wyswietlenie wyznaczonej transmitancji dyskretnej
figure;
pzmap(C)%wykres zer i biegunow transmitancji ciaglej
print('rys/rys1','-dpdf','-r300');
figure;
pzmap(D)%wykres zer i biegunow transmitancji dyskretnej
print('rys/rys2','-dpdf','-r300')
[CB,CZ]=pzmap(C) %wyswietlenie zer i biegunow
[DB,DZ]=pzmap(D)