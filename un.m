age_young=[10,20,30,40,50,60];
membership_val_young=[0.02,0.5,1,0.5,0.1,0];
age_old=[40,50,60,70,80,90,100];
membership_val_old=[0.01,0.5,0.8,0.7,0,0.9,1];
age_union=[];
for i=1:length(age_young)
    for j=1:length(age_old)
        if age_young(i)==age_old(j)
            age_union=age_young(i);
        end
 
    end
end
disp(age_union);