A = rand(5); B = rand(5,1);

[L,U,P] = lup(A);
[Lm,Um,Pm] = lu(A);

X = solvelup(A,B);
Xm = A\B;