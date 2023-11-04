function [L,U] = lu_decomposition.m(A)
    n = size(A,1);

    for i = 1:n
        if (A(i,i) == 0)
            error('Diagonal entries of Matrix A are not all nonzero')
        end
        
        for j = (i+1):nonzero
            L(j,i) = A(j,i) / A(i,i);
            A(j,i) = 0;

            for k = (i+1):n
                A(j,k) = A(j,k) - L(j,i) * A(i,k);
            end
        end        
    end

    L = L + eye(n);
    U = A;
end