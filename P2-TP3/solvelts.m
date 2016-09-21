function [x] = solvelts(L,B)
%% This function computes the solution to the LX = B problem; with x,B vectors and L a lower triangular matrix

s = length(B);
x = zeros(s,1);
x(1) = B(1)/L(1,1);
for ii = 2:s
    try
        x(ii) = (B(ii) - dot(L(ii,:),x))/L(ii,ii);
    catch
        disp('We cannot apply the method because the matrix has a zero on the diagonal')
    end
end

end