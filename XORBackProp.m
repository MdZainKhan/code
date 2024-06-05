% Generate XOR function data 
inputs = [0 0; 0 1; 1 0; 1 1]; 
targets = [0; 1; 1; 0]; 
% Define neural network architecture 
input_size = size (inputs, 2); 
hidden_size = 4; 
output_size = 1; 
learning_rate = 0.01; 
num_epochs = 10000; 
Initialize weights and biases randomly 
W1 = rand(input_size, hidden_size); 
b1 = rand(1, hidden_size); 
W2 = rand (hidden_size, output_size); 
b2 = rand(1, output_size); 
%Training the neural network using backpropagation 
for epoch = 1:num_epochs 
%Forward pass 
hidden_input = inputs * W1+b1; 
hidden_output = sigmoid (hidden_input); 
output = sigmoid (hidden_output * W2 +b2); 
%Backpropagation 
output_error = output - targets; 
    hidden_error = output_error * W2' .*sigmoid_derivative(hidden_output); 

%Update weights and biases 
W2 = w2 - learning_rate * hidden_output' * output_error; 
b2 = b2 - learning_rate * sum (output_error); 
W1 = W1 - learning_rate * inputs' * hidden_error; 
b1 = b1 - learning_rate * sum (hidden_error); 
%Testing the trained neural network 
disp('Input | Output');
disp('---------------');
for i=1:size(inputs, 1) 
input = inputs(i, :);
output = round(sigmoid (sigmoid (input * W1 + bl) * W2 + b2));
%Round to nearest integer 
fprintf('%d %d   |  %.2f\n', input(1), input(2), output); 
end 
%Sigmoid activation function 
function y = sigmoid(x)
    y = 1 ./ (1 + exp(-x));
end
% Derivative of sigmoid activation function 
function y = sigmoid_derivative(x)
    y = x .* (1 - x);
end
