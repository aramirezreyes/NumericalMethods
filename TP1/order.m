function [p] = order(range,E)
 lenP = length(E);
 lE = log(E);
 lr = log(range)';
 p = (lE(2:lenP) - lE(1:lenP-1)) ./ (lr(2:lenP) - lr(1:lenP-1));
end