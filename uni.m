age_young = [10, 20, 30, 40, 50, 60];
age_old = [40, 50, 60, 70, 80, 90, 100];
membership_young = [0.2, 0.7, 1, 0.7, 0.2, 0];
membership_old = [0.1, 0.4, 0.7, 0.9, 1, 1, 1];
union_age = [];
union_membership = [];


for i = 1:length(age_young)
    index_old = find(age_old == age_young(i));
   
    if isempty(index_old)
       
        union_age = [union_age, age_young(i)];
        union_membership = [union_membership, membership_young(i)];
    else
       
        union_age = [union_age, age_young(i)];
        union_membership = [union_membership, max(membership_young(i), membership_old(index_old))];
    end
end

for i = 1:length(age_old)
    if isempty(find(union_age == age_old(i)))
        union_age = [union_age, age_old(i)];
        union_membership = [union_membership, membership_old(i)];
    end
end


union_result = [union_age; union_membership];
disp('Union of age membership values:');
disp(union_result);
plot(union_age,union_membership,'LineWidth', 2); 
xlabel('Age');
ylabel('Membership'); 
title('Union of Age & Membership Values'); 
grid on;