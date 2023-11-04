function [Q,R] = full_qr_decomposition(A)
    n = size(A,2);
    Q = zeros(n);
    R = zeros(n);
    
    for i = 1:n
        Q(:,i) = A(:,i);
    end

    for i = 1:n
        R(i,i) = norm(Q(:,i));
        Q(:,i) = Q(:,i) / R(i,i);

        for j = (i+1):n
            R(i,j) = (Q(:,i))' * Q(:,j);
            Q(:,j) = Q(:,i) - R(i,j) * Q(:,j);
        end
    end
end