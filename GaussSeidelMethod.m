function res = GaussSeidelMethod(A,b,x0,n)
    % A = M - N, x_n+1 = inv(M)Nx_n +inv(M)b iterate n times
    M = tril(A,0);
    N = M-A;
    for i = 1 : n
        res = M\N*x0 + M\b;
        x0 = res;
    end
end