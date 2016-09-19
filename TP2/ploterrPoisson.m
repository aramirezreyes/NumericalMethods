function ploterrPoisson(f,a,b,u)
N = 30;
rangeTemp = linspace(0.5,4,N); Z = zeros(1,N);
ErPoisson = Z;
range = 10.^(-rangeTemp);
for n_id = 1:N
    h=range(n_id); J = floor(1/h)-1;
ErPoisson(n_id) = errPoisson(f,a,b,J,u);
end
disp(size(range));
disp(size(ErPoisson))
PrPoisson = order(range',ErPoisson');
figure(); 
loglog(range, ErPoisson,'*-');
legend('ErU','ElU','EcU','Location','best')
figure();
plot(1:N-1,PrPoisson)
legend('ErU','ElU','EcU','Location','best')

end