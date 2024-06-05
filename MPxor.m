% McCulloch Pitts Neuron Model for XOR Function 
% Define the inputs for the XOR gate 
inputs = [1 1; 0 1; 1 0; 0 0]; 
% Define weights and biases for the first layer (hidden layer) 
hidden_weights = [1 -1; -1 1]; 
hidden_bias = [0; 0]; % Adjust bias accordingly 
% Define weights and bias for the second layer (output layer) 
output_weights = [1; 1]; 
output_bias=0; % Adjust bias accordingly 
% Initialize output 
output = zeros(size(inputs, 1), 1); 
% Iterate through each input pair 
for i = 1:size(inputs, 1) 
% Calculate net input for the hidden layer 
hidden_net_input = inputs(i, :) * hidden_weights + hidden_bias'; 
% Apply activation function (thresholding) for the hidden layer 
hidden_output = hidden_net_input >=1; 
% Calculate net input for the output layer 
output_net_input = hidden_output * output_weights + output_bias; 
% Apply activation function (thresholding) for the output layer 
output(i) = output_net_input 
end 
% Display the results 
disp('Input | Output');
disp('---------------');
for i = 1:size(inputs, 1) 
fprintf('%d %d %d\n', inputs(i, 1), inputs(i, 2), output(i)); 
end 
