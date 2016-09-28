function [X,nbit] = SOR(A,B,omega,epsi)
    D = diag(diag(A));
    L = -tril(A,-1);
    U = -triu(A,1);
    M = D/omega - L; N = ((1/omega) - 1)*D + U;
    nbitmax = 1e4;
    nbit = 0;
    X = zeros(length(A),1);
    while (norm(B -A*X)>epsi && nbit < nbitmax)
        X = M\(N*X + B);
        nbit = nbit + 1;
     end
end