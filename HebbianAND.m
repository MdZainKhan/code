% Implementing AND function using Hebbian learning 
% Define input patterns for AND gate (bias is implicit) 
input_patterns = [0 0; 0 1; 1 0; 1 1]; 
% Initialize weights and bias to zero 
num_inputs = size(input_patterns, 2); 
weights = zeros(1, num_inputs); 
bias = 0; 
% Apply Hebbian learning 
for i = 1:size(input_patterns, 1) 
% Set input activations for input units 
input_activations = input_patterns(i, :); 
% Calculate output for AND function 
output = input_activations(1) & input_activations(2); % Target output for AND function 
% Update weights using Hebbian rule 
weights = weights + input_activations * output; 
% Update bias using Hebbian rule 
bias = bias + output; 
end 
% Test the trained AND gate 
disp('Input | Output');
disp('---------------');
for i = 1:size(input_patterns, 1) 
input = input_patterns(i, :); 
output = (input *weights' + bias) >= 3; % Compare with threshold 
fprintf('%d %d %d\n', input(1), input(2), output); 
end 
