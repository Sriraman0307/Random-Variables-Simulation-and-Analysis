P = zeros(1,100000);
P1 = zeros(1,40);
Lamda=3;
P(1)=0.497;
for i=2:100000,
    PoisonConstant= (Lamda)/(i+1);
    P(i)=PoisonConstant*P(i-1);
end
Lamda=10;
P1(1)=0.00004;
for i=2:40,
    PoisonConstant= (Lamda)/(i+1);
    P1(i)=PoisonConstant*P1(i-1);
end
[P_sim,RV] = Generic(P,100000,1000);
[P_sim1,RV_1] = Generic(P1,40,1000);
plot(RV,P,'r',RV,P_sim,'y');
hold on;
plot(RV_1,P1,'b',RV_1,P_sim1,'g');
legend('Theoretical','Simulated');
xlabel('RV');ylabel('PDF');
title('Poisson');

















