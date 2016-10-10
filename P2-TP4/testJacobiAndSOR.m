clear
n = 40;
A = gallery('tridiag',n);B = zeros(n,1);
B(1) = 1; B(n) = 1;
epsi = 1e-10;

% 
% disp('oemga = 0.8');
% [X,nbit] = SOR(A,B,0.8,epsi);
% disp(num2str(nbit));
% disp('oemga = 1 (Gauss)');
% [X,nbit] = SOR(A,B,1,epsi);
% disp(num2str(nbit));
% disp('oemga = 1.2');
% [X,nbit] = SOR(A,B,1.2,epsi);
% disp(num2str(nbit));

interv = 1:0.01:2.2;
iters = zeros(length(interv),1);
ii = 1;
for omega = interv
 %disp('oemga = 0.8');
[X,nbit] = SOR(A,B,omega,epsi);
iters(ii) = nbit;
ii= ii +1;
end
figure
plot(interv,iters,'-*');

[x,nbit] = jacobi(A,B,epsi);
nbit
iters(1)