%wariant pierwszy
[A, B, C, D] = tf2ss([0.05183 -0.07375 0.0259],[1 -2.82 2.065 -0.4493]);
%wariant drugi
Tp=0.1;
Ap=A';
Bp=C';
Cp=B';
Dp=D';
Zo1=[0.9  0.7  0.5  0.3  0.2];
Zo2=[0.8  0.6  0.4  0.2  0.1];
A21=Ap(2:3,1);
A22=Ap(2:3,2:3);
B1=B(1);
B2=B(2:3);
K=acker(Ap, Bp, [0.6 0.4 0.4]);
a1=Ap(1,1);
a2=Ap(2,1);
a3=Ap(3,1);
b1=Bp(1);
b2=Bp(2);
b3=Bp(3);


for i=1:length(Zo1)
   
    zo1=Zo1(i);
    zo2=Zo2(i);
    L=acker(A22', A12', [zo1, zo2]);
    l1=L(1);
    l2=L(2);
    sim('zad4_model', [0 3]);
    figure;
    subplot(2,2,1);
    stairs(xo2.Time, xo2.Data);
    title(strcat('Zo1=',num2str(zo1),', Zo1=',num2str(zo2)));
    hold on;
    stairs(x2.Time, x2.Data);
    legend('xo2','x2');
    grid;
    hold off;
    subplot(2,2,2);
    stairs(xo3.Time, xo3.Data);
    hold on;
    stairs(x3.Time, x3.Data);
    legend('xo3','x3');
    grid;
    hold off;
    subplot(2,2,3);
    stairs(u.Time, u.Data);
    hold on;
    stairs(uo.Time, uo.Data);
    legend('u','uo');
    grid;
    hold off;
    subplot(2,2,4);
    stairs(y.Time, y.Data);
    hold on;
    stairs(yo.Time, yo.Data);
    legend('y','yo');
    grid;
    hold off;
    print(strcat('rys/zad4_rys',num2str(i)),'-dpdf');
end;