syms p1 p2 p3 p4 q1 q2 q3 q4

P=  [ p1 p2 p3 p4];
Q=  [ q1 q2 q3 q4]; 

W= [ P' , Q' ];

v= null(W);


alpha = sym('alpha');

Q = subs(Q,q1,alpha*p1);
Q = subs(Q,q2,alpha*p2);
Q = subs(Q,q3,alpha*p3);


M= [ p1 p2 p3 p4 ; q1 q2 q3 q4];

w= null(M);

M= subs(M, alpha, 3);
M= subs(M, p1, 1);
M= subs(M, p2, 1);
M= subs(M, p3, 1);
M= subs(M, p4, 1);
M= subs(M, q4, 0.5);

z= null(M);

K= [1 1 1 1; 3 3 3 0.5];
u= null(K);

