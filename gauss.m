% Define the range of input values
x = 0:0.1:10;

% Define the parameters for the Gaussian membership function
c = 5;  % Center or mean
sigma = 1;  % Standard deviation or width

% Create the Gaussian membership function manually
mf = exp(-(x - c).^2 / (2 * sigma^2));

% Visualize the membership function
plot(x, mf);
xlabel('Input');
ylabel('Membership');
title('Gaussian Membership Function');
