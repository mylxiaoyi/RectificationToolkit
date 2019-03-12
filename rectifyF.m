function [H1,H2, K] = rectifyF(m1, m2, sz)
% RECTIFYF Epipolar rectification (uncalibrated)
     
    m1 = [m1; ones(1, size(m1,2))]; m2 = [m2; ones(1, size(m2,2))];
    % now x1 and x2 are homogeneous
    
    a0 = [ 0 0 0 0 0 0 ];
    a_out = simpleGN(@(x)fobj(x, sz, m1, m2), a0);
    
    yl=a_out(1); zl=a_out(2); xr=a_out(3); yr=a_out(4); zr=a_out(5); d=a_out(6);
    
    if d > 2
       warning('unusual focal, something went wrong');
    end
    
    % recover matrices 
    f =3^d*sum(sz);  
    iK = inv([f,0,sz(1)/2; 0,f,sz(2)/2; 0,0,1]);
    R1 = eul([0,yl,zl]);
    R2 = eul([xr,yr,zr]);
    

    % compute collineations
    K = inv(iK);
    H1 = K * R1 * iK;
    H2 = K * R2 * iK;
end

function [res,J]  =  fobj(a, sz, ml, mr)
    
    res = zeros(size(ml,2),1); % value of fobj
    J = zeros(size(ml,2),length(a)); % jacobian of fobj
    for i = 1:size(ml,2)
        [r, D] = costRectif(a, sz, ml(:,i), mr(:,i)) ;
        res(i) = r;
        J(i,:) = D;
    end
    
end


%       options = optimoptions('lsqnonlin','Algorithm','levenberg-marquardt',...
%                'SpecifyObjectiveGradient',true,'MaxIterations',100,'StepTolerance',1e-6,...
%                 'Display','iter','CheckGradients',false)
%     
%      a_out = lsqnonlin(@(x) fobj(x, sz, m1, m2), a0, [], [],options)




