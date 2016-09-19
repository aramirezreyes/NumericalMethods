function [X,U] = PoissonDF(f,a,b,J)


X = linspace(0,1,J+2);
h = abs(X(1) - X(2));
Xint = X(2:J+1);
F = f(Xint)';
F(1) = F(1) + (a/(h^2));
F(J) = F(J) + (b/(h^2));
% a1 = diag(2*ones(J,1),0);
% a2 = diag(-1*ones(J-1,1),1);
% a3 = diag(-1*ones(J-1,1),-1);
% A = a1 + a2 + a3;
A = gallery('tridiag',J);

U = h^2*(A\F);
U = [a; U; b];
U = U';
end
