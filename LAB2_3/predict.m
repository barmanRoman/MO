function p = predict(theta, X)
m = size(X, 1);
p = zeros(m, 1);

for i=1:length(p)
    max_value=-1;
    temp_p=0;
    for j=1:size(theta,2)
        temp=sigmoid(sum(theta(:,j)'.*X(i,:),2));
        if temp > max_value
            max_value=temp;
            temp_p=j;         
        end
    end  
    p(i)=temp_p;
end
end