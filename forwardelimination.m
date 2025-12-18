function forwardelimination(A,B)
C = [A, B];
n = size(C, 1);
for k = 1:n
    for i = (k+1):n
        for j = (k+1):(n+1) %for the remaining columns
            C(i, j)= C(i, j) - C(i, k)*C(k, j)/C(k, k);
        end
        C(i, k) = 0; %for the column k
    end
    
end
C = C
end
