function ploterrderiv(u,uprime)


N = 30;
rangeTemp = linspace(0.5,4,N); Z = zeros(1,N);
ErU = Z; ElU = Z; EcU = Z;
range = 10.^(-rangeTemp);
for n_id = 1:N
    h=range(n_id); J = floor(1/h)-1;
[ErU(n_id), ElU(n_id), EcU(n_id)] = errderiv(u,uprime,J);
end

PrU = order(range,ErU);PlU = order(range,ElU);PcU = order(range,EcU);
figure(); 
loglog(range, [ErU;ElU;EcU]','*-');
legend('ErU','ElU','EcU','Location','best')
figure();
plot(1:N-1,[PrU;PlU;PcU])
legend('ErU','ElU','EcU','Location','best')

end
