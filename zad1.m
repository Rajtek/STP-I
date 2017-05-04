C=tf([0.5,3.5,5.625],[1,8,-36,-288]);
[D,m]=c2d(C,0.1);%ekstrapolator zerowego rzedu domyslny
D %wyswietlenie wyznaczonej transmitancji dyskretnej
figure;
pzmap(C)%wykres zer i biegunow transmitancji ciaglej
print('rys/zad1_rys1','-dpdf');
figure;
pzmap(D)%wykres zer i biegunow transmitancji dyskretnej
print('rys/zad1_rys2','-dpdf')
[CB,CZ]=pzmap(C) %wyswietlenie zer i biegunow
[DB,DZ]=pzmap(D)