function [X] = solvelu(A,B)
    [L,U] = lucrout(A);
    Y = solvelts(L,B);
    X = solveuts(U,Y);
end