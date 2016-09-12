 clear
 close all
f1 = @(t,y) 2*y - 4*t;
f2 = @(t,y) -500*y + 500*t + 1;
t0 = 0;
y0 = 2;
T = 1;
dt = 0.001;
tc = linspace(t0,t0+T,200);
yex = @(t)exp(2*t)+2*t+1;
yex2 = @(t)2*exp(-500*t)+t;
%[efe,ebe,ehe,eme,erk4] = errors(f1,t0,y0,T,dt,yex);
n0 =2.5;N0 =3.5; N = 4;
%n0 =1;N0 =3; N = 10;
ploterrors(f1,t0,y0,T,yex,n0,N0,N);
ploterrors(f2,t0,y0,T,yex2,n0,N0,N);
%F = f1;
% 
% [t1,y1] = FEmethod(f1,t0,y0,T,dt);
% figure(1)
% plot(t1,y1);
% title('Solution to Dy = 2y - 4t');
% hold on
% plot(tc,exp(2*tc)+2*tc+1);
% legend('FE method', 'Exact Solution');
% 
% [t2,y2] = FEmethod(f2,t0,y0,T,dt);
% figure(2)
% plot(t2,y2);
% title('Solution to Dy = -500y +500t + 1');
% hold on
% plot(tc,2*exp(-500*tc)+tc);
% legend('FE method', 'Exact Solution');
% 
% %% BE method
% [t12,y12] = BEmethod(f1,t0,y0,T,dt);
% figure(3)
% plot(t12,y12);
% title('Solution to Dy = 2y - 4t');
% hold on
% plot(tc,exp(2*tc)+2*tc+1);
% legend('BE method', 'Exact Solution');
% 
% [t22,y22] = BEmethod(f2,t0,y0,T,dt);
% figure(4)
% plot(t22,y22);
% title('Solution to Dy = -500y +500t + 1');
% hold on
% plot(tc,2*exp(-500*tc)+tc);
% legend('BE method', 'Exact Solution');
% 
% %% Modified Euler
% [t13,y13] = MEmethod(f1,t0,y0,T,dt);
% figure(5)
% plot(t13,y13);
% title('Solution to Dy = 2y - 4t');
% hold on
% plot(tc,exp(2*tc)+2*tc+1);
% legend('ME method', 'Exact Solution');
% 
% [t23,y23] = MEmethod(f2,t0,y0,T,dt);
% figure(6)
% plot(t23,y23);
% title('Solution to Dy = -500y +500t + 1');
% hold on
% plot(tc,2*exp(-500*tc)+tc);
% legend('ME method', 'Exact Solution');

%% Heuns method

% [t14,y14] = HEmethod(f1,t0,y0,T,dt);
% figure(5)
% plot(t14,y14);
% title('Solution to Dy = 2y - 4t');
% hold on
% plot(tc,exp(2*tc)+2*tc+1);
% legend('ME method', 'Exact Solution');
% 
% [t24,y24] = HEmethod(f2,t0,y0,T,dt);
% figure(6)
% plot(t24,y24);
% title('Solution to Dy = -500y +500t + 1');
% hold on
% plot(tc,2*exp(-500*tc)+tc);
% legend('ME method', 'Exact Solution');

%% Gen RK method
% [t15,y15] = RK4method(f1,t0,y0,T,dt);
% figure(6)
% plot(t15,y15);
% title('Solution to Dy = 2y - 4t');
% hold on
% plot(tc,exp(2*tc)+2*tc+1);
% legend('ME method', 'Exact Solution');
% 
% [t25,y25] = RK4method(f2,t0,y0,T,dt);
% figure(6)
% plot(t25,y25);
% title('Solution to Dy = -500y +500t + 1');
% hold on
% plot(tc,2*exp(-500*tc)+tc);
% legend('ME method', 'Exact Solution');


%% Errors

