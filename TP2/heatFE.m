function [x,t,U] = heatFE(k,T,f,u0,a,b,J,N)
    x = linspace(0,1,J+2); h = x(2) - x(1);
    t = linspace(0,T,N+1); dt = t(2) - t(1);
    r = k*dt/h^2;
    disp(['With J=', num2str(J), ' and N = ', num2str(N), ' r = ',num2str(r)]);
    U = zeros(N+1,J+2); %N index for time; J for space
    U(1,:) = u0(x);
    U(:,1) = a(t);
    U(:,J+2) = b(t);
    for ii = 2:N+1
        U(ii,2:J+1) = (1-2*r)*U(ii-1,2:J+1) + r*U(ii-1,1:J) +r*U(ii-1,3:J+2)+dt*f(x(2:J+1),t(ii-1));
    end
end