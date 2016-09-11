 function [t,Y] = RK4method(F,t0,y0,T,dt)
   t = t0:dt:t0+T;
   N = length(t)-1;
   Y = zeros(N+1,1);
   %Yn = zeros(2,1);
   Y(1) = y0;
   question ='Introduce the number of points and press enter: ';
   s = input(question);
   question = 'Introduce your "c" coeficients';
   c = input(question);
   question = 'Introduce your "a" matrix';
   a = input(question);
   question = 'Introduce your "b" coeficients';
   b = input(question);
   %yn = zeros(s,1);
   tn = zeros(s,1);
   fi = zeros(s,1);
   f = sym(zeros(s, 1));
   yns = zeros(s,1);
   try
      size(c) == size(b);
      try
          sa = size(a);
          sa(1) == length(c);
          for ii = 2:N + 1 % For temporal
             for jj = 1:s %Intermediate points for times
                 tn(jj) = t(ii-1) + c(jj)*dt;   
             end 
             yn = sym('yn',[1 s]);            
             for jj = 1:s %Intermediate points for y's
                 f(jj) = F(tn(jj),yn(jj));        
             end %end of the "Intermediate points for y's sums"
             for jj = 1:s
                 a2 = sym(zeros(s, 1));
                 a2(jj)=0;
                 for kk = 1:s
                    a2(jj) = a2(jj) + a(jj,kk)*f(kk);
                 end
             end
             a2 = a2 + Y(ii-1) - yn';
             a2 = -1*a2;
             sol = solve(a2, yn);
             sols = fieldnames(sol);
             for jj = 1:numel(sols)
                 yns(jj) = Y(ii-1);
                 for kk = 1:s % inner sum for
                    yns(jj) = yns(jj) + dt*sol.(sols{jj});
                 end %end of inner sum for
             end
             for jj = 1:s
                fi(jj) = F(tn(jj),yns(jj));
             end
             Y(ii) = Y(ii-1) + sum(dot(b,dt*fi));
          end %end of temporal for
      catch
          disp('error1')
      end
      
   catch
       disp('error2')
   end



end
