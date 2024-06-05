% Define the range of input values
x = 0:0.1:10;

% Define the parameters for the sigmoidal membership function
c = 5;  % Center or midpoint
a = 1;  % Slope or width

% Create the sigmoidal membership function manually
mf = 1 ./ (1 + exp(-a * (x - c)));

% Visualize the membership function
plot(x, mf);
xlabel('Input');
ylabel('Membership');
title('Sigmoidal Membership Function');
