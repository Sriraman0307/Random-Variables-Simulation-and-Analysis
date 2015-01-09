P = zeros(1,61);
P1 = zeros(1,31);
for i=1:61,
    ncr= nchoosek(60,i-1);
    Success=mpower(0.5,i-1);
    Fail=mpower(0.5,61-i);
    P(i)= ncr*Success*Fail;
end
for i=1:31,
    ncr= nchoosek(30,i-1);
    Success=mpower(0.6,i-1);
    Fail=mpower(0.4,31-i);
    P1(i)= ncr*Success*Fail;
end
[P_sim,RV] = Generic(P,61,1000);
[P_sim1,RV_1]= Generic(P1,31,1000);
plot(RV,P,'r',RV,P_sim,'y');
hold on;
plot(RV_1,P1,'b',RV_1,P_sim1,'g');
legend('Theoretical','Simulated');
xlabel('RV');ylabel('PDF');
title('Binomial');