age_young = [10, 20, 30, 40, 50, 60];
age_old = [40, 50, 60, 70, 80, 90, 100];
membership_young = [0.2, 0.7, 1, 0.7, 0.2, 0];
membership_old = [0.1, 0.4, 0.7, 0.9, 1, 1, 1];
intersection_age = []; 
intersection_membership = [];
for i = 1:length(age_young) index_old = find(age_old == age_young(i)); 
    if ~isempty(index_old) intersection_age = [intersection_age, age_young(i)]; 
        intersection_membership = [intersection_membership, min(membership_young(i), membership_old(index_old))];
    end
end

intersection_result = [intersection_age; intersection_membership]; 
disp(intersection_result);
 ages = [10,20,30,40,50,60,70,80,90,100];
 membership_values = zeros(size(ages));  
 
for i = 1:length(ages) index_intersection = find(intersection_age == ages(i)); 
    if ~isempty(index_intersection) membership_values(i) = intersection_membership(index_intersection);
    end
end
plot(ages, membership_values,'LineWidth', 2); 
xlabel('Age');
ylabel('Membership'); 
title('Intersection of Age Membership Values'); 
grid on;