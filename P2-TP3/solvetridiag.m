function [X] = solvetridiag(a,b,c,D)
    [L,U] = lutridiag(a,b,c);
    Y = solvelts(L,D);
    X = solveuts(U,Y);
end