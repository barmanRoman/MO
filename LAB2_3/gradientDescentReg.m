function theta = gradientDescentReg(X, y, theta, alpha, num_iters, lambda)
    m = length(y);
    %J_history=zeros(num_iters, 1);
    penalty=zeros(size(theta));
    for j=2:size(theta)
        penalty(j)=lambda*theta(j)/m;
    end
    for iter = 1:num_iters
        theta=theta-(sum(repmat((sigmoid(sum(theta'.*X,2))-y),[1,size(theta)]).*X)'*(alpha/m)+penalty);
        %J_history(iter)=costFunctionReg(theta,X,y,lambda);
    end
    
    %figure;
    %plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
    %xlabel('Number of iterations');
    %ylabel('Cost J');
    
    %fprintf('Program paused. Press enter to continue.\n');
    %pause;
end