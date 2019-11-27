function theta = gradientDescentRegMulti(X, y, theta, alpha, num_iters, lambda)
    for i=1:size(theta,2)
        y_map=map(y,i);
        theta(:,i)=gradientDescentReg(X, y_map, theta(:,i), alpha, num_iters, lambda);
    end
end