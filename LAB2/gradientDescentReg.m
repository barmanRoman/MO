function theta = gradientDescentReg(X, y, theta, alpha, num_iters, lambda)
    m = length(y);
    penalty=zeros(size(theta));
    for j=2:size(theta)
        penalty(j)=lambda*theta(j)/m;
    end
    for iter = 1:num_iters
        theta=theta-(sum(repmat((sigmoid(sum(theta'.*X,2))-y),[1,size(theta)]).*X)'*(alpha/m)+penalty);
    end    
end