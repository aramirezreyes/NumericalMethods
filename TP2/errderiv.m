function [ErU, ElU, EcU] = errderiv(u,uprime,J)
[X,DrU,DlU,DcU] = derivatives(u,J);
ErU = max(abs(DrU-uprime(X)));
ElU = max(abs(DlU-uprime(X)));
EcU = max(abs(DcU-uprime(X)));
end