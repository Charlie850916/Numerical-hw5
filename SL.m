%% Generate linear system that solve -y'' = f on [0m 1], y(0)=y(1)=0
function [A,b] = SL(n, f)
    x = (1:n-1)'/n;
    b = f(x);
    A = diag(2*ones(n-1,1))-diag(ones(n-2,1),-1)-diag(ones(n-2,1),1);
    A = n^2*A;
end