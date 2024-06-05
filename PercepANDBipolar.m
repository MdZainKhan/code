% Implementing Perceptron for an AND function with bipolar inputs and targets 
% Define input patterns for AND gate (bipolar) 
input_patterns = [-1 -1; -1 1; 1 -1; 1 1]; 
% Define target outputs for AND gate (bipolar) 
targets = [-1; -1; -1; 1]; 
% Initialize weights and bias to zero
num_inputs = size(input_patterns, 2); 
weights = zeros(1, num_inputs); 
bias = -1; 
% Define learning rate 
learning_rate=0.01; 
% Define maximum number of epochs 
max_epochs = 100; 
% Train the Perceptron 
for epoch= 1:max_epochs 
% Flag to track if any weight updates occur in this epoch 
weight_updated = false; 
% Iterate through each input pattern 
for i = 1:size(input_patterns, 1) 
% Calculate output for the current input pattern 
input_pattern=input_patterns(i, :); 
net_input = input_pattern*weights' + bias; 
output = sign(net_input); % Activation function 
% Update weights if the output does not match the target 
if output ~= targets(1) 
weights = weights + learning_rate* targets(1) * input_pattern; 
bias = bias + learning_rate* targets(i); 
weight_updated = true; 
end 
end
% If no weight updates occurred in this epoch, exit training 
if~weight_updated
disp(['Converged in', num2str(epoch), 'epochs']); 
break; 
end 
end 
% Test the trained AND gate 
disp('Input | Output');
disp('---------------');
for i=1:size(input_patterns, 1) 
input = input_patterns(i, :); 
output = sign(input* weights' + bias); % Activation function. 
fprintf('%d %d %d\n', input(1), input(2), output); 
end 
