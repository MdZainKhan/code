% Define the range of input values
x = 0:0.1:10;

% Define the parameters for the triangular membership function
a = 2;  % Lower bound
b = 5;  % Peak or center
c = 8;  % Upper bound

% Create the triangular membership function manually
mf = max(0, min((x-a)/(b-a), (c-x)/(c-b)));

% Visualize the membership function
plot(x, mf);
xlabel('Input');
ylabel('Membership');
title('Triangular Membership Function');
