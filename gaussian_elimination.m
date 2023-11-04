function x = gaussian_elimination(A,b)
    n = size(A,1);

    if ((size(A,2) ~= n) || (size(b,1) ~= n) || (size(b,2) ~= 1))
        error('Mismatch size');
    end

    for i = 1:n
        if (A(i,i) == 0)
            error('Requires partial pivoting')
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