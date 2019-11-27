function J = costFunction(theta, X, y)
    m = length(y);
    J=sum(-y.*log(sigmoid(sum(theta'.*X,2)))-(1.-y).*log(1-sigmoid(sum(theta'.*X,2))))/m;
end