% convert pose from *.pm to opt_poses.txt for aerial mapper
opt_f = fopen('opt_poses.txt', 'w');

for i = 0:732
    
    pose_file0 = sprintf('examples/ieu/image_%d.pm', i);
    
    P1 = load(pose_file0);
    
    [K1, R1, t1] = krt(P1);
    c1 = -R1'*t1;
    
    R = R1';
    
    q = dcm2quat(R);
    
    fprintf(opt_f, '%f %f %f %f %f %f %f\n', c1(1), c1(2), c1(3), q(1), q(2), q(3), q(4));
    
end

fclose(opt_f);