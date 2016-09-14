close all
clear

J=55;
u = @(x) x.*exp(x);
u_prime = @(x)(x+1).*exp(x);
X_cont = linspace(0,1,200);
[X,DrU,DlU,DcU] = derivatives(u,J);

plot(X,[DrU;DlU;DcU],'*-');
hold on
plot(X_cont,u_prime(X_cont))
legend('DrU','DlU','DcU','Du','Location','best')
figure()
ploterrderiv