close all
clear 

k=2;T=1;
f = @(x,t) 2*t.*(1-x);
a = @(t) t.*t;
b = @(t) exp(-k*pi*pi*t/4);
u0 =@(x) sin(pi*x/2);
u = @(x,y) sin(pi*x/2).*exp(-k*pi*pi*y/4)+(y.*y.*(1-x));
J=10;
N=467;
[x,t,U] = heatFE(k,T,f,u0,a,b,J,N);

X_c = linspace(0,1,1000);
T_c = linspace(0,T,1000);
[Val_x, Val_t] = meshgrid(x,t);
[Val_x_c,Val_t_c] = meshgrid(X_c,T_c);
exact_sol = u(Val_x_c,Val_t_c);
surf(Val_x_c,Val_t_c,exact_sol);
title('Exact solution');
xlabel('space');ylabel('time')
shading interp; colorbar
figure
surf(Val_x,Val_t,U);
title('Approximate solution');
xlabel('space');ylabel('time')
shading interp; colorbar

