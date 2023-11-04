function R = cholesky_decomposition(A)
    n = size(A,1);
    R = triu(A);

    for i = 1:n
        for k = 1:(i-1)
            R(i,i) = R(i,i) - R(k,i);
        end

        if (R(i,i) <= 0)
            error('Matrix A is not positive definite')
        end

        R(i,i) = sqrt(R(i,i));

        for j = (i+1):n
            for k = 1:(i-1)
                R(i,j) = R(i,j) - R(k,i) * R(k,j);
            end
            R(i,j) = R(i,j) / R(i,i);
        end
    end
end