clear ; close all; clc

data=load('ex2data3.mat');
X=data.X;
y=data.y;

rand_indices = randperm(size(X, 1));
sel = X(rand_indices(1:100), :);

displayData(sel);

initial_theta = zeros(size(X, 2), 10);

theta=gradientDescentRegMulti(X,y,initial_theta,2.5,500,1);
p = predict(theta, X);
fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);