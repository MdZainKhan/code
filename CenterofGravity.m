a1=1;
b1=2;
c1=4;
d1=5;

a2=3;
b2=4;
c2=6;
d2=7;

x_values = linspace(0,8,1000);
membership_function_1= @(x)max(0,min((x-a1)/(b1-a1),min(1,(d1-x)/(d1-c1))));
membership_function_2= @(x)max(0,min((x-a2)/(b2-a2),min(1,(d2-x)/(d2-c2))));

plot(x_values,membership_function_1(x_values),'b',x_values,membership_function_2(x_values),'r');
title('Trapezodial Membership Function');
xlabel('x');
ylabel('Membership Functions');
legend('Set 1','Set 2');
numerator=0;
denominator=0;
for x = x_values
        membership_1 = membership_function_1(x);
        membership_2 = membership_function_2(x);
        numerator = numerator+x*(membership_1 + membership_2);
        denominator = denominator +(membership_1 + membership_2);
end
cog_values = numerator/denominator;
fprintf('Crisp value using COG method : %2f\n',cog_values);