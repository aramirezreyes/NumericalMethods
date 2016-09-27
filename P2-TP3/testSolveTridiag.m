n=5;
A = full(gallery('tridiag',n,3,2,-1));
b = diag(A,0);
c = diag(A,1);
a = diag(A,-1);
[L,U] = lutridiag(a,b,c);
[Lm,Um] = lu(A);
D = rand(n,1);
X = solvetridiag(a,b,c,D);
Xm = A\D;

L*U==Lm*Um