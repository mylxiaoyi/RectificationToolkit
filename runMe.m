% Rectification example. The CV Toolkit is required

% Calibrated rectification. 
% Camera matrices are provided in the same folder as the imafes, 
% with the same base name and extension .pm (see exemple)

% [I1r, I2r, bb1, bb2, Pn1, Pn2]  = doRectify('examples/IMG_0011.JPG','examples/IMG_0012.JPG',true);
[I1r, I2r, bb1, bb2, Pn1, Pn2, H1, H2]  = doRectify('examples/ieu/image_0.jpg','examples/ieu/image_1.jpg',true);

figure;imshow(mat2gray(I1r),[],'InitialMagnification','fit');
figure;imshow(mat2gray(I2r),[],'InitialMagnification','fit');
drawnow;

% Uncalibrated rectification. The VLFEAT toolbox is required for SIFT

% [I1r, I2r, bb1, bb2, Pn1, Pn2]  = doRectify('examples/cporta0.png','examples/cporta1.png',false);
% 
% figure;imshow(I1r,[],'InitialMagnification','fit');
% figure;imshow(I2r,[],'InitialMagnification','fit');
% drawnow;

