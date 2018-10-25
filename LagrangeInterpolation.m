function y = LagrangeInterpolation(x,pointx,pointy)
    %   LAGRANGE(X,POINTX,POINTY) approximate the function definited by the points:
    %   P1=(POINTX(1),POINTY(1)), P2=(POINTX(2),POINTY(2)), ..., PN(POINTX(N),POINTY(N)) and calculate it in each elements of X
    n = size(pointx,2);
    L = ones(n,size(x,2));
    for i=1:n
        for j=1:n
            if (i~=j)
                L(i,:) = L(i,:).*(x-pointx(j))/(pointx(i)-pointx(j));
            end
        end
    end
    y=0;
    for i=1:n
        y = y+pointy(i)*L(i,:);
    end
end