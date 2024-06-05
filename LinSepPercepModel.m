% Generate linearly separable data 
num_points = 100; 
dimension = 2; 
X = rand(num_points, dimension); % Generate random points 
w_true = [2; -3]; % True weights for the separating hyperplane 
b_true = 0.5; % True bias 
% Assign labels based on the true hyperplane 
y_true = sign(X* w_true+b_true); 
% Initialize weights and bias for perceptron algorithm 
w = rand(dimension, 1); 
b = rand; 
% Perceptron training algorithm 
learning_rate=0.1; 
max_epochs = 100; 
for epoch= 1:max_epochs 
for i=1:num_points 
% Calculate the predicted label 
y_pred = sign(X(i, :) * w+b); 
% Update weights and bias if misclassified 
if y_pred~= y_true(i) 
w = w + learning_rate* y_true(i) * X(i, :)'; 
b = b + learning_rate * y_true(i); 
end 
end 
end 
% Plot the data points and the separating hyperplane 
figure; 
scatter(X(:, 1), X(:, 2), 50, y_true, 'filled'); 
hold on;
x_line = linspace(0, 1, 10); 
y_line = (-w(1)*x_line - b) / w(2); 
plot(x_line, y_line, 'k-', 'LineWidth', 2); 
xlabel('X_1'); 
ylabel('X_2'); 
title('Linearly Separable Data and Separating Hyperplane'); 
legend('Data points', 'Separating Hyperplane', 'Location', 'best');
hold off;
