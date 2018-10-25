function [ptx, pty] = GenerateSample(f, n, x0, xn)
    delta = (xn-x0)/n;
    ptx = x0+delta*(0:n);
    pty = f(x0+delta*(0:n));
end