A = round(10*rand(3));
B = round(10*rand(3,1));

X = solvelu(A,B);

Y = A\B;

sprintf('%.20f ', X)
sprintf('%.20f ', Y)