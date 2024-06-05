a1 = 1;% Left edge 
b1 = 2;% Left peak 
c1 = 4;% Right peak 
d1 = 5; % Right edge 
% Define the trapezoidal membership function parameters for the second set 
a2 = 3;% Left edge 
b2 = 4;% Left peak 
c2 = 6;% Right peak 
d2 = 7;% Right edge 
% Define the universe of discourse (range of x values) 
x_values = linspace(0, 8, 1000); 
% Define the trapezoidal membership functions for the first and second sets

membership_function_1 = @(x) max(0, min((x- a1) / (b1 - a1), min(1, (d1 - x) / (d1 - c1)))); 
membership_function_2 = @(x) max(0, min((x - a2) / (b2 - a2), min(1, (d2 - x) / (d2 - c2)))); 
% Plot the membership functions 
plot(x_values, membership_function_1(x_values), 'b', x_values, membership_function_2(x_values), 'r'); 
title('Trapezoidal Membership Functions'); 
xlabel('x'); 
ylabel('Membership Degree'); 
legend('Set 1', 'Set 2'); 
% Calculate the crisp value using the Center of Sums (COS) method 
numerator = 0; 
sum_membership = 0; 
for x = x_values 
    membership_1 = membership_function_1(x); 
    membership_2 = membership_function_2(x); 
    sum_membership = sum_membership + membership_1 + membership_2;
    % Sum of membership functions
    numerator = numerator + x * (membership_1 + membership_2);% x * (sum of membership functions) 
end
cos_value = numerator / sum_membership; 
% Center of sums 
% Display the crisp value obtained by COS method 
fprintf('Crisp value using COS method: %.2f\n', cos_value); 
