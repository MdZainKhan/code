% Define the range of input values
x = 0:0.1:10;

% Define the parameters for the trapezoidal membership function
a = 2;  % Lower bound
b = 4;  % Lower peak
c = 7;  % Upper peak
d = 9;  % Upper bound

% Create the trapezoidal membership function manually
mf = max(0, min((x-a)/(b-a),  (d-x)/(d-c)));

% Visualize the membership function
plot(x, mf);
xlabel('Input');
ylabel('Membership');
title('Trapezoidal Membership Function');
