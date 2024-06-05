% Define the age and membership values
age_young = [0, 10, 20, 30, 40, 50, 60, 70, 80];
membership_young = [0, 0.2, 0.5, 1, 0.5, 0.1, 0.02, 0, 0];
age_old = [40, 50, 60, 70, 80, 90, 100];
membership_old = [0, 0.1, 0.5, 0.7, 0.8, 0.9, 1];

% Interpolation to align the two sets on the same age range
common_age = 0:100; % common age range from 0 to 100
membership_young_interp = interp1(age_young, membership_young, common_age, 'linear', 0);
membership_old_interp = interp1(age_old, membership_old, common_age, 'linear', 0);

% Union
membership_union = max(membership_young_interp, membership_old_interp);

% Intersection
membership_intersection = min(membership_young_interp, membership_old_interp);

% Complement
membership_complement_young = 1 - membership_young_interp;
membership_complement_old = 1 - membership_old_interp;

% Algebraic Product
membership_algebraic_product = membership_young_interp .* membership_old_interp;

% Algebraic Sum
membership_algebraic_sum = membership_young_interp + membership_old_interp - (membership_young_interp .* membership_old_interp);

% Bounded Sum
membership_bounded_sum = min(1, membership_young_interp + membership_old_interp);

% Bounded Difference
membership_bounded_difference = max(0, membership_young_interp - membership_old_interp);

% Bounded Product
membership_bounded_product = max(0, membership_young_interp + membership_old_interp - 1);

% Plotting the results
figure;

subplot(3, 4, 1);
plot(common_age, membership_young_interp, 'b', common_age, membership_old_interp, 'r');
title('Membership Functions');
legend('Young', 'Old');

subplot(3, 4, 2);
plot(common_age, membership_union);
title('Union');

subplot(3, 4, 3);
plot(common_age, membership_intersection);
title('Intersection');

subplot(3, 4, 4);
plot(common_age, membership_complement_young);
title('Complement Young');

subplot(3, 4, 5);
plot(common_age, membership_complement_old);
title('Complement Old');

subplot(3, 4, 6);
plot(common_age, membership_algebraic_product);
title('Algebraic Product');

subplot(3, 4, 7);
plot(common_age, membership_algebraic_sum);
title('Algebraic Sum');

subplot(3, 4, 8);
plot(common_age, membership_bounded_sum);
title('Bounded Sum');

subplot(3, 4, 9);
plot(common_age, membership_bounded_difference);
title('Bounded Difference');

subplot(3, 4, 10);
plot(common_age, membership_bounded_product);
title('Bounded Product');
