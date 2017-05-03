%wariant pierwszy
[A, B, C, D] = tf2ss([0.05183 -0.07375 0.0259],[1 -2.82 2.065 -0.4493]);
%wariant drugi
A2=A';
B2=C';
C2=B';
D2=D';
kmax=60;
Tp=0.1;
Z = [0.05:0.05:0.95];

for i= 1:length(Z)
z = Z(i);
K=acker(A2, B2, [z z z]);
sim('zad3_model', [0 kmax]);
max_u(i)=max(abs(diff(u.data)));
end;

plot(Z,max_u);
xlabel('z');
ylabel('max \Delta u');
grid;
print('rys/zad3_max_u','-dpdf','-r300');