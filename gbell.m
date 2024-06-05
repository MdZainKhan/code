% Define the range of input values
x = 0:0.1:10;

% Define the parameters for the generalized bell-shaped membership function
a = 2;  % Width parameter
b = 5;  % Center or midpoint
c = 3;  % Slope parameter

% Create the generalized bell-shaped membership function manually
mf = 1 ./ (1 + abs((x - b) / a).^(2*c));

% Visualize the membership function
plot(x, mf);
xlabel('Input');
ylabel('Membership');
title('Generalized Bell-Shaped Membership Function');
