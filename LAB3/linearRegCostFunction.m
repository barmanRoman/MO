function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

penalty=zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


for j=2:size(theta)
    penalty(j)=lambda*theta(j)/m;
end
J=sum((sum(theta'.*X,2)-y).^2)/(2*m)+sum(theta(2:end).^2)*lambda/(2*m);
grad=sum(repmat((sum(theta'.*X,2)-y),[1,size(theta)]).*X)'/m+penalty;

% =========================================================================

grad = grad(:);

end
