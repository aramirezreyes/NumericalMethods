function [t,Y] = FEmethod(F,t0,y0,T,dt)
   t = t0:dt:t0+T;
   N = length(t)-1;
   Y = zeros(N+1,1);
   Y(1) = y0;
   for ii = 2:N+1
       Y(ii) = Y(ii-1) + dt*F(t(ii-1),Y(ii-1)); 
   end
end