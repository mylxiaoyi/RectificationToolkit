function [cost,J] = costRectif(a,sz,m1,m2)
%COSTRECTIF  Compute rectification cost and jacobian
%
% a is a vector of six elements containing the independent variables
%   of the cost function, i.e, five rotation angles
%   (Y-left, Z-left, X-right, Y-right, Z-right) and the focal lenght.
% sz contains the image width and height.
% m1,m2 are the corresponding image points.

% Author: A. Fusiello, 2006, 2018

% This function is a wrapper that calls a function  generated 
% by the Symbolic Math Toolbox

yl=a(1); zl=a(2); xr=a(3);  yr=a(4); zr=a(5);  d=a(6);
w=sz(1); h=sz(2);
u1=m1(1,:); v1=m1(2,:); 
u2=m2(1,:); v2=m2(2,:);

% cost is the Sampson residual
[cost,J] = costRectif_v(d,h,u1,u2,v1,v2,w,xr,yl,yr,zl,zr);

end

