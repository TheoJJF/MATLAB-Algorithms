function [Q,R] = reduced_qr_decomposition(A)
    n = size(A,2);
    Q = zeros(n);
    R = zeros(n);
    
    for i = 1:n
        Q(:,i) = A(:,i);

        for j = 1:(i-1)
            R(j,i) = (A(:,i))' * Q(:,j);
            Q(:,i) = Q(:,i) - R(j,i) * Q(:,j);
        end
        R(i,i) = norm(Q(:,i));
        Q(:,i) = Q(:,i) / R(i,i);
    end
end