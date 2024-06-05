% McCulloch Pitts Neuron Model for AND Function 
% Define the inputs for the AND gate 
inputs = [0 1; 1 1; 0 0; 1 0]; 
% Define the weights and bias for the AND gate 
weights = [1 1]; 
bias = -1.5; 
% Initialize the output 
output = zeros(size(inputs, 1), 1); 
% Iterate through each input pair 
for i = 1:size(inputs, 1) 
% Calculate the net input 
    net_input = sum(inputs(i, :) .* weights) + bias; 
% Apply activation function (thresholding) 
if net_input >= 0 
    output(i) = 1; 
else 
    output(i) = 0; 
end 
end 
% Display the results 
disp('Input | Output');
disp('---------------');
 for i = 1:size(inputs, 1) 
fprintf('%d %d %d\n', inputs(i, 1), inputs(i, 2), output(i)); 
end 
