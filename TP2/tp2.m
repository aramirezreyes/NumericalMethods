close all
clear

% J=55;
% u = @(x) x.*exp(x);
% u_prime = @(x)(x+1).*exp(x);
% X_cont = linspace(0,1,200);
% [X,DrU,DlU,DcU] = derivatives(u,J);
% 
% plot(X,[DrU;DlU;DcU],'*-');
% hold on
% plot(X_cont,u_prime(X_cont))
% legend('DrU','DlU','DcU','Du','Location','best')
% figure()
% ploterrderiv(u,u_prime)
%% Ex 2
f = @(x) (pi^2)*cos(pi*x);
a = 1; b = -1;
J = 10;
u = @(x) cos(pi*x);
[X,U] = PoissonDF(f,a,b,J);
x_cont = linspace(0,1,300);
 plot(X,U)
 hold on
plot(x_cont,cos(pi*x_cont));
legend('Model','Exact sol', 'Location','best')

ploterrPoisson(f,a,b,u)