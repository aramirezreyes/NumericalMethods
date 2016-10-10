function [U] = P1_poisson(f,p,e,t)
%     we want to obtain the indices if we have t:
%t may have the form T= [a,a,a,a,a,a,a;a,a,a,a,a,a] so the vertcies of ti are T[:,i]
N = length(p);
I = eye(N);
H = abs(p(t(1,:)) - p(t(2,:)));
A = sparse([t(1,:) t(2,:) t(1,:) t(2,:)],...
    [t(1,:) t(2,:) t(2,:) t(1,:)], ...
    [1./H,-1./H,-1./H,1./H],N,N);
B = (f(p(t(1,:)).*H/2) + f(p(t(2,:)).*H/2))';
A(e,:) = I(e,:);
B(e) = [0 ; 0];
A(:,e) = eye(:,e);
U = A\B;
end