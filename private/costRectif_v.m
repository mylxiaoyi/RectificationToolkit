function [err,J] = costRectif_v(d,h,u1,u2,v1,v2,w,xr,yl,yr,zl,zr)
%COSTRECTIF_V
%    [ERR,J] = COSTRECTIF_V(D,H,U1,U2,V1,V2,W,XR,YL,YR,ZL,ZR)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    09-May-2018 09:31:57

t2 = 3.0.^(-d);
t3 = h+w;
t4 = 1.0./t3;
t5 = cos(yr);
t6 = cos(zl);
t7 = sin(yr);
t29 = d.*2.0;
t8 = 3.0.^(-t29);
t9 = sin(xr);
t10 = 1.0./t3.^2;
t12 = cos(xr);
t15 = t5.*t12;
t16 = t2.*t4.*t7.*w.*(1.0./2.0);
t17 = h.*t2.*t4.*t5.*t9.*(1.0./2.0);
t18 = t15+t16-t17;
t39 = t2.*t4.*t6.*t18;
t40 = t6.*t7.*t8.*t10.*u2;
t41 = t5.*t6.*t8.*t9.*t10.*v2;
t42 = t39-t40+t41;
t11 = abs(t42);
t13 = cos(zr);
t14 = sin(zr);
t19 = sin(yl);
t20 = t12.*t13;
t21 = t7.*t9.*t14;
t22 = t20+t21;
t23 = cos(yl);
t24 = sin(zl);
t26 = t2.*t4.*t19.*t22;
t27 = t2.*t4.*t5.*t9.*t23.*t24;
t28 = t26+t27;
t31 = t2.*t4.*t7.*t23.*t24;
t32 = t2.*t4.*t5.*t14.*t19;
t33 = t31-t32;
t43 = t9.*t13;
t44 = t7.*t12.*t14;
t45 = h.*t2.*t4.*t22.*(1.0./2.0);
t46 = t2.*t4.*t5.*t14.*w.*(1.0./2.0);
t47 = t43-t44+t45+t46;
t48 = t19.*t47;
t49 = t18.*t23.*t24;
t50 = t48-t49;
t51 = t2.*t4.*t50;
t52 = t2.*t4.*t28.*v2;
t53 = t2.*t4.*t33.*u2;
t54 = t51-t52+t53;
t25 = abs(t54);
t35 = t2.*t4.*t28.*w.*(1.0./2.0);
t36 = t2.*t4.*t22.*t23;
t37 = h.*t5.*t6.*t8.*t9.*t10.*(1.0./2.0);
t38 = t2.*t4.*t5.*t9.*t19.*t24;
t61 = t2.*t4.*t28.*u1;
t62 = t5.*t6.*t8.*t9.*t10.*v1;
t63 = -t35-t36-t37+t38+t61+t62;
t30 = abs(t63);
t55 = t2.*t4.*t33.*w.*(1.0./2.0);
t56 = h.*t6.*t7.*t8.*t10.*(1.0./2.0);
t57 = t2.*t4.*t5.*t14.*t23;
t58 = t2.*t4.*t7.*t19.*t24;
t65 = t2.*t4.*t33.*u1;
t66 = t6.*t7.*t8.*t10.*v1;
t67 = -t55-t56+t57+t58+t65+t66;
t34 = abs(t67);
t59 = t11.^2;
t60 = t25.^2;
t64 = t30.^2;
t68 = t34.^2;
t69 = t59+t60+t64+t68;
t70 = 1.0./sqrt(t69);
t71 = t23.*t47;
t72 = t18.*t19.*t24;
t73 = t57+t58;
t74 = t36-t38;
t75 = t71+t72;
t76 = t2.*t4.*t74.*v2;
t77 = t2.*t4.*t73.*u2;
t78 = t76+t77-t2.*t4.*t75;
t79 = t2.*t4.*t73.*w.*(1.0./2.0);
t80 = t35+t36+t37-t38;
t81 = t42.*v1;
t82 = t55+t56-t57-t58;
t83 = t82.*u2;
t84 = t2.*t4.*t50.*w.*(1.0./2.0);
t100 = t80.*v2;
t101 = t54.*u1;
t102 = h.*t2.*t4.*t6.*t18.*(1.0./2.0);
t85 = t71+t72+t81+t83+t84-t100-t101-t102;
err = t70.*t85;
if nargout > 1
    t86 = 1.0./t69.^(3.0./2.0);
    t87 = t2.*t4.*t18.*t24;
    t88 = t5.*t8.*t9.*t10.*t24.*v2;
    t89 = t87+t88-t7.*t8.*t10.*t24.*u2;
    t90 = sign(t54);
    t91 = t2.*t4.*t6.*t18.*t23;
    t92 = t5.*t6.*t8.*t9.*t10.*t23.*v2;
    t93 = t91+t92-t6.*t7.*t8.*t10.*t23.*u2;
    t94 = sign(t63);
    t95 = h.*t5.*t8.*t9.*t10.*t24.*(1.0./2.0);
    t96 = t2.*t4.*t5.*t6.*t9.*t19;
    t97 = sign(t67);
    t98 = h.*t7.*t8.*t10.*t24.*(1.0./2.0);
    t99 = t2.*t4.*t6.*t7.*t19;
    t103 = t43-t44;
    t110 = h.*t2.*t4.*t103.*(1.0./2.0);
    t104 = t20+t21-t110;
    t105 = t5.*t9;
    t106 = h.*t2.*t4.*t5.*t12.*(1.0./2.0);
    t107 = t105+t106;
    t108 = t2.*t4.*t19.*t103;
    t117 = t2.*t4.*t5.*t12.*t23.*t24;
    t109 = t108-t117;
    t111 = t19.*t104;
    t112 = t23.*t24.*t107;
    t113 = t111+t112;
    t114 = sign(t42);
    t115 = t2.*t4.*t6.*t107;
    t116 = t115-t5.*t6.*t8.*t10.*t12.*v2;
    t118 = t2.*t4.*t109.*w.*(1.0./2.0);
    t119 = t2.*t4.*t23.*t103;
    t120 = t2.*t4.*t5.*t12.*t19.*t24;
    t121 = t2.*t4.*t113;
    t122 = t2.*t4.*t109.*v2;
    t123 = t121+t122;
    t124 = t5.*t12.*t14;
    t125 = t2.*t4.*t7.*t14.*w.*(1.0./2.0);
    t136 = h.*t2.*t4.*t5.*t9.*t14.*(1.0./2.0);
    t126 = t124+t125-t136;
    t127 = t2.*t4.*t5.*w.*(1.0./2.0);
    t128 = h.*t2.*t4.*t7.*t9.*(1.0./2.0);
    t135 = t7.*t12;
    t129 = t127+t128-t135;
    t130 = t2.*t4.*t5.*t9.*t14.*t19;
    t146 = t2.*t4.*t7.*t9.*t23.*t24;
    t131 = t130-t146;
    t132 = t2.*t4.*t5.*t23.*t24;
    t133 = t2.*t4.*t7.*t14.*t19;
    t134 = t132+t133;
    t137 = t19.*t126;
    t138 = t23.*t24.*t129;
    t139 = t137+t138;
    t140 = t5.*t6.*t8.*t10.*u2;
    t141 = t6.*t7.*t8.*t9.*t10.*v2;
    t142 = t140+t141-t2.*t4.*t6.*t129;
    t143 = t2.*t4.*t134.*w.*(1.0./2.0);
    t144 = h.*t5.*t6.*t8.*t10.*(1.0./2.0);
    t145 = t2.*t4.*t7.*t14.*t23;
    t147 = t2.*t4.*t5.*t9.*t14.*t23;
    t148 = t2.*t4.*t7.*t9.*t19.*t24;
    t149 = t2.*t4.*t139;
    t150 = t2.*t4.*t131.*v2;
    t151 = t9.*t14;
    t152 = t7.*t12.*t13;
    t153 = t12.*t14;
    t157 = t7.*t9.*t13;
    t154 = t153-t157;
    t155 = h.*t2.*t4.*t154.*(1.0./2.0);
    t158 = t2.*t4.*t5.*t13.*w.*(1.0./2.0);
    t156 = t151+t152+t155-t158;
    t159 = t2.*t4.*t23.*t154;
    t160 = t8.*t10.*t19.*t154.*w.*(1.0./2.0);
    t161 = t2.*t4.*t19.*t156;
    t162 = t5.*t8.*t10.*t13.*t19.*u2;
    t163 = t161+t162-t8.*t10.*t19.*t154.*v2;
    t164 = t2.*t4.*t5.*t13.*t23;
    t165 = t5.*t8.*t10.*t13.*t19.*w.*(1.0./2.0);
    t166 = log(3.0);
    t167 = t2.*t4.*t5.*t14.*t19.*t166;
    t182 = t2.*t4.*t7.*t23.*t24.*t166;
    t168 = t167-t182;
    t169 = t2.*t4.*t7.*t166.*w.*(1.0./2.0);
    t177 = h.*t2.*t4.*t5.*t9.*t166.*(1.0./2.0);
    t170 = t169-t177;
    t171 = t2.*t4.*t19.*t22.*t166;
    t172 = t2.*t4.*t5.*t9.*t23.*t24.*t166;
    t173 = t171+t172;
    t174 = h.*t2.*t4.*t22.*t166.*(1.0./2.0);
    t175 = t2.*t4.*t5.*t14.*t166.*w.*(1.0./2.0);
    t176 = t174+t175;
    t178 = t19.*t176;
    t180 = t23.*t24.*t170;
    t179 = t178-t180;
    t181 = t2.*t4.*t179;
    t183 = t2.*t4.*t50.*t166;
    t184 = t2.*t4.*t33.*t166.*u2;
    t185 = t181+t183+t184-t2.*t4.*t168.*u2-t2.*t4.*t173.*v2-t2.*t4.*t28.*t166.*v2;
    t186 = t2.*t4.*t6.*t170;
    t187 = t2.*t4.*t6.*t18.*t166;
    t188 = t5.*t6.*t8.*t9.*t10.*t166.*v2.*2.0;
    t189 = t186+t187+t188-t6.*t7.*t8.*t10.*t166.*u2.*2.0;
    t190 = t2.*t4.*t173.*w.*(1.0./2.0);
    t191 = t2.*t4.*t22.*t23.*t166;
    t192 = t2.*t4.*t28.*t166.*w.*(1.0./2.0);
    t193 = h.*t5.*t6.*t8.*t9.*t10.*t166;
    t194 = t2.*t4.*t5.*t14.*t23.*t166;
    t195 = t2.*t4.*t7.*t19.*t24.*t166;
    J = [t70.*(-t48+t49+t78.*u1+v2.*(t26+t27-t2.*t4.*t74.*w.*(1.0./2.0))-u2.*(t31-t32+t79)+t2.*t4.*t75.*w.*(1.0./2.0))-t85.*t86.*(t34.*t97.*(t31-t32+t79-t2.*t4.*t73.*u1).*2.0-t25.*t78.*t90.*2.0+t30.*t94.*(t26+t27+t2.*t4.*t74.*u1-t2.*t4.*t74.*w.*(1.0./2.0)).*2.0).*(1.0./2.0),t70.*(-u2.*(t98+t99-t6.*t7.*t8.*t10.*t23.*w.*(1.0./2.0))+t93.*u1-t89.*v1+v2.*(t95+t96-t5.*t6.*t8.*t9.*t10.*t23.*w.*(1.0./2.0))+t6.*t18.*t19+h.*t2.*t4.*t18.*t24.*(1.0./2.0)-t2.*t4.*t6.*t18.*t23.*w.*(1.0./2.0))-t85.*t86.*(t34.*t97.*(t98+t99-t7.*t8.*t10.*t24.*v1+t6.*t7.*t8.*t10.*t23.*u1-t6.*t7.*t8.*t10.*t23.*w.*(1.0./2.0)).*2.0-t25.*t90.*t93.*2.0-t11.*t89.*t114.*2.0+t30.*t94.*(t95+t96-t5.*t8.*t9.*t10.*t24.*v1+t5.*t6.*t8.*t9.*t10.*t23.*u1-t5.*t6.*t8.*t9.*t10.*t23.*w.*(1.0./2.0)).*2.0).*(1.0./2.0),t70.*(t23.*t104-t123.*u1-t116.*v1+v2.*(t118+t119+t120-h.*t5.*t6.*t8.*t10.*t12.*(1.0./2.0))-t19.*t24.*t107+t2.*t4.*t113.*w.*(1.0./2.0)+h.*t2.*t4.*t6.*t107.*(1.0./2.0))-t85.*t86.*(t30.*t94.*(t118+t119+t120-t2.*t4.*t109.*u1-h.*t5.*t6.*t8.*t10.*t12.*(1.0./2.0)+t5.*t6.*t8.*t10.*t12.*v1).*2.0+t25.*t90.*t123.*2.0-t11.*t114.*t116.*2.0).*(1.0./2.0),-t70.*(-u2.*(t143+t144+t145-t2.*t4.*t5.*t19.*t24)+t23.*t126+t142.*v1-u1.*(t149+t150-t2.*t4.*t134.*u2)+v2.*(t147+t148+t2.*t4.*t131.*w.*(1.0./2.0)-h.*t6.*t7.*t8.*t9.*t10.*(1.0./2.0))-t19.*t24.*t129+t2.*t4.*t139.*w.*(1.0./2.0)+h.*t2.*t4.*t6.*t129.*(1.0./2.0))+t85.*t86.*(t30.*t94.*(t147+t148-t2.*t4.*t131.*u1+t2.*t4.*w.*(t130-t146).*(1.0./2.0)-h.*t6.*t7.*t8.*t9.*t10.*(1.0./2.0)+t6.*t7.*t8.*t9.*t10.*v1).*2.0+t34.*t97.*(t143+t144+t145-t2.*t4.*t134.*u1-t2.*t4.*t5.*t19.*t24-t5.*t6.*t8.*t10.*v1).*2.0+t11.*t114.*t142.*2.0+t25.*t90.*(t149+t150-t2.*t4.*t134.*u2).*2.0).*(1.0./2.0),-t70.*(u2.*(t164+t165)-v2.*(t159+t160)+t23.*t156-t163.*u1+t2.*t4.*t19.*t156.*w.*(1.0./2.0))-t85.*t86.*(t30.*t94.*(t159+t160-t8.*t10.*t19.*t154.*u1).*2.0+t34.*t97.*(t164+t165-t5.*t8.*t10.*t13.*t19.*u1).*2.0-t25.*t90.*t163.*2.0).*(1.0./2.0),t70.*(u2.*(t194+t195+t2.*t4.*t168.*w.*(1.0./2.0)-t2.*t4.*t33.*t166.*w.*(1.0./2.0)-h.*t6.*t7.*t8.*t10.*t166)-t23.*t176+t185.*u1-t189.*v1+v2.*(t190+t191+t192+t193-t2.*t4.*t5.*t9.*t19.*t24.*t166)-t19.*t24.*t170-t2.*t4.*t179.*w.*(1.0./2.0)+h.*t2.*t4.*t6.*t170.*(1.0./2.0)-t2.*t4.*t50.*t166.*w.*(1.0./2.0)+h.*t2.*t4.*t6.*t18.*t166.*(1.0./2.0))+t85.*t86.*(t30.*t94.*(t190+t191+t192+t193-t2.*t4.*t173.*u1-t2.*t4.*t28.*t166.*u1-t2.*t4.*t5.*t9.*t19.*t24.*t166-t5.*t6.*t8.*t9.*t10.*t166.*v1.*2.0).*-2.0+t34.*t97.*(t194+t195-t2.*t4.*t168.*u1+t2.*t4.*w.*(t167-t182).*(1.0./2.0)+t2.*t4.*t33.*t166.*u1-t2.*t4.*t33.*t166.*w.*(1.0./2.0)-h.*t6.*t7.*t8.*t10.*t166+t6.*t7.*t8.*t10.*t166.*v1.*2.0).*2.0+t25.*t90.*t185.*2.0+t11.*t114.*t189.*2.0).*(1.0./2.0)];
end