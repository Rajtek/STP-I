%wariant pierwszy
[A, B, C, D] = tf2ss([0.05183 -0.07375 0.0259],[1 -2.82 2.065 -0.4493]);
%wariant drugi
A2=A';
B2=C';
C2=B';
D2=D';
kmax=60;
Tp=0.1;
Z = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];
for i= 1:length(Z)
z = Z(i);
K=acker(A2, B2, [z z z]);
sim('zad3_model', [0 kmax]);
for l=1:length(x1.data)
    kk
        %warunek koncowy
        if (x1.data(l)<0.001) && (x2.data(l)<0.001) && (x3.data(l)<0.001)
            kk=l;
            break;
        end
    end;

figure
    
    subplot(2,1,1);
    xlim([0 kk/10])
    hold on;
    stairs(x1.Time, x1.data);
    stairs(x2.Time, x2.data);
    stairs(x3.Time, x3.data);
    grid;
    hold off;
    legend('x1','x2','x3');
    title(strcat('z=',num2str(z),', K=[',num2str(K(1)), ', ' , num2str(K(2)), ', ' ,num2str(K(3)),']'));
    subplot(2,1,2);
    xlim([0 kk/10])
    stairs(u.Time, u.data);
    title('u(k)');
    grid;
    
print(strcat('rys/zad3_rys',num2str(i)),'-dpdf');
end;

