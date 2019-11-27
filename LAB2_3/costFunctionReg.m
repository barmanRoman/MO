function J = costFunctionReg(theta, X, y, lambda)
    m = length(y);
    J=sum(-y.*log(sigmoid(sum(theta'.*X,2)))-(1.-y).*log(1-sigmoid(sum(theta'.*X,2))))/m...
            +sum(theta(2:end).^2)*lambda/(2*m);
end