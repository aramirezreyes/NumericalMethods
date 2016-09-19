function [E] = errPoisson(f,a,b,J,u)
    [X,U] = PoissonDF(f,a,b,J);
    exact_sol = u(X);
    E = max(abs(U-exact_sol));
end