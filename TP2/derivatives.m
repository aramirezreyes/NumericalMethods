function [X,DrU,DlU,DcU] = derivatives(u,J)
h = 1/(J+1);
X_all = linspace(0,1,J+2);
X = X_all(2:J+1);
U = u(X_all);
DlU = (U(2:J+1) - U(1:J))/h;
DrU = (U(3:J+2) - U(2:J+1))/h;
DcU = (U(3:J+2) - U(1:J))/(2*h);
end