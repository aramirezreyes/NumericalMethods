function [x] = solveuts(L,B)
%% This function computes the solution to the LX = B problem; with x,B vectors and L a lower triangular matrix

s = length(B);
x = zeros(s,1);
x(s) = B(s)/L(s,s);
for ii = (s-1):-1:1
    try
        x(ii) = (B(ii) - dot(L(ii,:),x))/L(ii,ii);
    catch
        disp('We cannot apply the method because the matrix has a zero on the diagonal')
    end
end

end