function [T,m] = precond(m)
%PRECOND Normalize the coordinates of 2D points
    
    avg = mean(m,2) ;
    m = m - avg;
    scale = mean(sqrt(sum(m.^2,1)))/sqrt(2);
    m=m./scale;
    
    T = [1/scale 0 -avg(1)/scale;
        0 1/scale -avg(2)/scale;
        0       0          1];
end