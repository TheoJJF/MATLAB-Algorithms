function x = ge_partial_pivoting(A,b)
    n = size(A,1);

    if ((size(A,2) ~= n) || (size(b,1) ~= n) || (size(b,2) ~= 1))
        error('Mismatch size');
    end

    for i = 1:n
        if (A(i,i) == 0)
            [~,i_star] = max(abs(A(i:n,i)));
            i_star = i_star + i - 1;

            if (i_star ~= i)
                tempA = A(i,:);
                A(i,:) = A(i_star,:);
                A(i_star,:) = tempA;
            end
        end

        for j = (i+1):n
            l = A(j,i) / A(i,i);
            A(i,i) = 0;

            for k = (i+1):n
                A(j,k) = A(j,k) - l  * A(i,k);
            end
            b(j) = b(j) - l * b(i);
        end
        U = A;

        x = backward_substitution(U,b);
    end
end