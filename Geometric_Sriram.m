Geo = zeros(1,100000);
Geo1 = zeros(1,100000);
for i=1:100000,
    Success=mpower(0.6,1);
    F=mpower(0.4,i-1);
    Geo(i)= Success*F;
end
for i=1:100000,
    Success=mpower(0.4,1);
    F=mpower(0.6,i-1);
    Geo1(i)= Success*F;
end
[P_sim,RV] = Generic(Geo,100000,1000);
[P_sim1,RV_1]= Generic(Geo1,100000,1000);
plot(RV,Geo,'r',RV,P_sim,'y');
hold on;
plot(RV_1,Geo1,'b',RV_1,P_sim1,'g');
legend('Theoretical','Simulated');
xlabel('RV');ylabel('PDF');
title('Geometric');


