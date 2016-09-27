function [L,U] = lutridiag(a,b,c)
    n = length(b);
    u = zeros(n,1);
    l = zeros(n-1,1);
    v = zeros(n-1,1);
    u(1) = b(1);
    for kk = 1:(n-1)
        l(kk) = a(kk)/u(kk);
        v(kk) = c(kk);
        u(kk+1) = b(kk+1) - l(kk)*c(kk);
    end
    U = diag(u,0) + diag(v,1);
    L = eye(n) + diag(l,-1); 
end