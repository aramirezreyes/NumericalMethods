function [L,U,P] = lup(A)
n = length(A);
if (n == 1)
    P = 1;
    L = 1;
    U = A;
else
    r = find(abs(A(:,1)) == max(abs(A(:,1))));
    alpha = A(r,1);
    P = eye(n);
    P([r 1],:) = P([1 r],:);
    A([r 1],:) = A([1 r],:);
    v = A(1,2:n)';
    p = A(2:n,1);
    B = A(2:n,2:n);
    if alpha == 0
        m=p;
        C = B;
    else
        m = p/alpha;
        C = B - m*v';
    end
    [Lstar,Ustar,Pstar] = lup(C);
    Ptilde = [1 zeros(1,length(Pstar)); zeros(length(Pstar),1) Pstar'];
    L = [1 zeros(1,length(Lstar)); Pstar*m Lstar];
    U = [alpha v'; zeros(length(Ustar),1) Ustar];
    P = Ptilde'*P;
    
end


end