function [X,nbit] = jacobi(A,B,epsi)
    M = diag(diag(A));
    N = M - A;
    nbitmax = 1e4;
    nbit = 0;
    X = zeros(length(A),1);
    while (norm(B -A*X)>epsi && nbit < nbitmax)
        X = M\(N*X + B);
        nbit = nbit + 1;
     end
end