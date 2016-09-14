function ploterrderiv(u,uprime);


u = @(x) x.*exp(x);
u_prime = @(x)(x+1).*exp(x);
for j_id = 1:20
[ErU(1,j_id), ElU(1,j_id), EcU(1,j_id)] = errderiv(u,u_prime,j_id);

end
loglog([ErU;ElU;EcU]','*-');
legend('ErU','ElU','EcU')
