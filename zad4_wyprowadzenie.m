syms l1 l2 x1 x2 x3 u a1 a2 a3 b1 b2 b3;
A=[a1 1 0; a2 0 1 ; a3 0 0];
B=[b1 ;b2; b3];
L=[l1 ; l2];
w=[x2 ; x3];
y=x1;
A11=A(1,1);
A12=A(1,2:3);
A21=A(2:3,1);
A22=A(2:3,2:3);
B1=B(1,1);
B2=B(2:3,1);
zk=w-L*y
zk1=(A22-L*A12)*(zk+L*y)+(A21-L*A11)*y+(B2-L*B1)*u