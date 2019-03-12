clear

syms yl zl xr yr zr d real
% independent variables of the cost function,
% i.e, five rotation angles  (Y-left, Z-left,
% X-right, Y-right, Z-right) and the focal length.

syms w h u1 u2 v1 v2 real
m1 = [u1;v1;1]; m2 = [u2;v2;1];
% w,h are the image width and height, respectively.
% ml,mr contain the corresponding image points.

% intrinsic parameters of the old cameras
f =3^d*(w+h);  K = [f, 0, w/2;  0, f, h/2; 0, 0, 1];

% rotation angle X-left is always 0
Rl = eul([0,yl,zl]);
Rr = eul([xr,yr,zr]);

% fundamental matrix btw original points
F = ( inv(K).'*Rr.'*skew([1 0 0])*Rl*inv(K) );

% compute Sampson error
Fml = F*m1;  Ftmr = F'*m2;
err =  (m2.' * F  * m1)  ./  norm([Fml(1:2);Ftmr(1:2)]);

% symbolic jacobian
J = jacobian(err, [yl ,zl, xr, yr, zr, d]);
matlabFunction(err, J, 'File', 'costRectif_v');


