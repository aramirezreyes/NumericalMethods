function [L,U] = lucrout(A)
s = size(A);
J = s(1);
U =  zeros(s);
L = zeros(s);
U(1,:) = A(1,:);
L(2:J,1) = A(2:J,1)/U(1);

for kk = 2:J
    if (A(kk,kk) == 0)
        error('There are zeros on the diagonal');
    end
    U(kk,kk:J) = A(kk,kk:J) - (L(kk,1:(kk-1))*U(1:(kk-1),kk:J));
    L((kk+1):J,kk) = (1/U(kk,kk)) * ( A((kk+1):J,kk)-(L((kk+1):J,1:(kk-1))*U(1:(kk-1),kk)) );
end
 L = L + eye(J);
 
end