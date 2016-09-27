function [X] = solvelup(A,B)
    [L,U,P] = lup(A);
    B = P*B;
    Y = solvelts(L,B);
    X = solveuts(U,Y);
end