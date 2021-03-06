function [P_Sim,RV]=Generic(P_theory,n,sampleNum)
sampleSpaceNum = n;
RV = [1:n];
Sample = zeros(1, sampleNum);
Bucket = P_theory;
SampleCount = zeros(1,sampleSpaceNum);
for i = 2:sampleSpaceNum
    Bucket(i) = sum(P_theory(1:i));
end
for i=1:sampleNum
    U = rand;
    for j= 1:sampleSpaceNum,
        if U <= Bucket(j), 
            Sample(i) = RV(j);
            SampleCount(j) = SampleCount(j)+1;
            break;
        end
    end
end
P_Sim = SampleCount/sampleNum;
end
