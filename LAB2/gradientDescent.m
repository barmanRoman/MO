function theta = gradientDescent(X, y, theta, alpha, num_iters)
    m = length(y);       
    for iter = 1:num_iters
        theta=theta-sum(repmat((sigmoid(sum(theta'.*X,2))-y),[1,size(theta)]).*X)'*(alpha/m);      
    end    
end