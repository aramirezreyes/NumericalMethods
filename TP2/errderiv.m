function [ErU, ElU, EcU] = errderiv(u,uprime,J)
[X,DrU,DlU,DcU] = derivatives(u,J);
upraime = uprime(X);
ErU = max(abs(DrU-upraime));
ElU = max(abs(DlU-upraime));
EcU = max(abs(DcU-upraime));
end