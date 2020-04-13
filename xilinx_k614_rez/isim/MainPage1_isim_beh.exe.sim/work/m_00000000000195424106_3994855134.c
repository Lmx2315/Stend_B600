/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xilinx_project/B610_sinhron/Clock_watcher.v";
static unsigned int ng1[] = {65535U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {0, 0};
static unsigned int ng9[] = {0U, 0U};



static void Initial_80_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    char *t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;

LAB0:    xsi_set_current_line(82, ng0);

LAB2:    xsi_set_current_line(84, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3528);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 3528);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB3;

LAB4:    xsi_set_current_line(85, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3528);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 3528);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(86, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3528);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 3528);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(88, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3528);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 3528);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(89, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3528);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 3528);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(90, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3528);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 3528);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng7)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB13;

LAB14:
LAB1:    return;
LAB3:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB4;

LAB5:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB6;

LAB7:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB8;

LAB9:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB10;

LAB11:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB12;

LAB13:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB14;

}

static void Cont_97_1(char *t0)
{
    char t8[8];
    char t43[8];
    char t78[8];
    char t113[8];
    char t148[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    char *t77;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    int t102;
    int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    int t137;
    int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    char *t146;
    char *t147;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    char *t152;
    char *t153;
    char *t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    int t172;
    int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    char *t180;
    char *t181;
    char *t182;
    char *t183;
    char *t184;
    unsigned int t185;
    unsigned int t186;
    char *t187;
    unsigned int t188;
    unsigned int t189;
    char *t190;
    unsigned int t191;
    unsigned int t192;
    char *t193;

LAB0:    t1 = (t0 + 5656U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3848);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t8) = t11;
    t12 = (t4 + 4);
    t13 = (t7 + 4);
    t14 = (t8 + 4);
    t15 = *((unsigned int *)t12);
    t16 = *((unsigned int *)t13);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB4;

LAB5:
LAB6:    t40 = (t0 + 4008);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t44 = *((unsigned int *)t8);
    t45 = *((unsigned int *)t42);
    t46 = (t44 & t45);
    *((unsigned int *)t43) = t46;
    t47 = (t8 + 4);
    t48 = (t42 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB7;

LAB8:
LAB9:    t75 = (t0 + 4168);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t79 = *((unsigned int *)t43);
    t80 = *((unsigned int *)t77);
    t81 = (t79 & t80);
    *((unsigned int *)t78) = t81;
    t82 = (t43 + 4);
    t83 = (t77 + 4);
    t84 = (t78 + 4);
    t85 = *((unsigned int *)t82);
    t86 = *((unsigned int *)t83);
    t87 = (t85 | t86);
    *((unsigned int *)t84) = t87;
    t88 = *((unsigned int *)t84);
    t89 = (t88 != 0);
    if (t89 == 1)
        goto LAB10;

LAB11:
LAB12:    t110 = (t0 + 4328);
    t111 = (t110 + 56U);
    t112 = *((char **)t111);
    t114 = *((unsigned int *)t78);
    t115 = *((unsigned int *)t112);
    t116 = (t114 & t115);
    *((unsigned int *)t113) = t116;
    t117 = (t78 + 4);
    t118 = (t112 + 4);
    t119 = (t113 + 4);
    t120 = *((unsigned int *)t117);
    t121 = *((unsigned int *)t118);
    t122 = (t120 | t121);
    *((unsigned int *)t119) = t122;
    t123 = *((unsigned int *)t119);
    t124 = (t123 != 0);
    if (t124 == 1)
        goto LAB13;

LAB14:
LAB15:    t145 = (t0 + 4488);
    t146 = (t145 + 56U);
    t147 = *((char **)t146);
    t149 = *((unsigned int *)t113);
    t150 = *((unsigned int *)t147);
    t151 = (t149 & t150);
    *((unsigned int *)t148) = t151;
    t152 = (t113 + 4);
    t153 = (t147 + 4);
    t154 = (t148 + 4);
    t155 = *((unsigned int *)t152);
    t156 = *((unsigned int *)t153);
    t157 = (t155 | t156);
    *((unsigned int *)t154) = t157;
    t158 = *((unsigned int *)t154);
    t159 = (t158 != 0);
    if (t159 == 1)
        goto LAB16;

LAB17:
LAB18:    t180 = (t0 + 6584);
    t181 = (t180 + 56U);
    t182 = *((char **)t181);
    t183 = (t182 + 56U);
    t184 = *((char **)t183);
    memset(t184, 0, 8);
    t185 = 1U;
    t186 = t185;
    t187 = (t148 + 4);
    t188 = *((unsigned int *)t148);
    t185 = (t185 & t188);
    t189 = *((unsigned int *)t187);
    t186 = (t186 & t189);
    t190 = (t184 + 4);
    t191 = *((unsigned int *)t184);
    *((unsigned int *)t184) = (t191 | t185);
    t192 = *((unsigned int *)t190);
    *((unsigned int *)t190) = (t192 | t186);
    xsi_driver_vfirst_trans(t180, 0, 0);
    t193 = (t0 + 6472);
    *((int *)t193) = 1;

LAB1:    return;
LAB4:    t20 = *((unsigned int *)t8);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t8) = (t20 | t21);
    t22 = (t4 + 4);
    t23 = (t7 + 4);
    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t29 = (~(t28));
    t30 = *((unsigned int *)t23);
    t31 = (~(t30));
    t32 = (t25 & t27);
    t33 = (t29 & t31);
    t34 = (~(t32));
    t35 = (~(t33));
    t36 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t35);
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t34);
    t39 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t39 & t35);
    goto LAB6;

LAB7:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t8 + 4);
    t58 = (t42 + 4);
    t59 = *((unsigned int *)t8);
    t60 = (~(t59));
    t61 = *((unsigned int *)t57);
    t62 = (~(t61));
    t63 = *((unsigned int *)t42);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t71 & t69);
    t72 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t72 & t70);
    t73 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t73 & t69);
    t74 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t74 & t70);
    goto LAB9;

LAB10:    t90 = *((unsigned int *)t78);
    t91 = *((unsigned int *)t84);
    *((unsigned int *)t78) = (t90 | t91);
    t92 = (t43 + 4);
    t93 = (t77 + 4);
    t94 = *((unsigned int *)t43);
    t95 = (~(t94));
    t96 = *((unsigned int *)t92);
    t97 = (~(t96));
    t98 = *((unsigned int *)t77);
    t99 = (~(t98));
    t100 = *((unsigned int *)t93);
    t101 = (~(t100));
    t102 = (t95 & t97);
    t103 = (t99 & t101);
    t104 = (~(t102));
    t105 = (~(t103));
    t106 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t106 & t104);
    t107 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t107 & t105);
    t108 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t108 & t104);
    t109 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t109 & t105);
    goto LAB12;

LAB13:    t125 = *((unsigned int *)t113);
    t126 = *((unsigned int *)t119);
    *((unsigned int *)t113) = (t125 | t126);
    t127 = (t78 + 4);
    t128 = (t112 + 4);
    t129 = *((unsigned int *)t78);
    t130 = (~(t129));
    t131 = *((unsigned int *)t127);
    t132 = (~(t131));
    t133 = *((unsigned int *)t112);
    t134 = (~(t133));
    t135 = *((unsigned int *)t128);
    t136 = (~(t135));
    t137 = (t130 & t132);
    t138 = (t134 & t136);
    t139 = (~(t137));
    t140 = (~(t138));
    t141 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t141 & t139);
    t142 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t142 & t140);
    t143 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t143 & t139);
    t144 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t144 & t140);
    goto LAB15;

LAB16:    t160 = *((unsigned int *)t148);
    t161 = *((unsigned int *)t154);
    *((unsigned int *)t148) = (t160 | t161);
    t162 = (t113 + 4);
    t163 = (t147 + 4);
    t164 = *((unsigned int *)t113);
    t165 = (~(t164));
    t166 = *((unsigned int *)t162);
    t167 = (~(t166));
    t168 = *((unsigned int *)t147);
    t169 = (~(t168));
    t170 = *((unsigned int *)t163);
    t171 = (~(t170));
    t172 = (t165 & t167);
    t173 = (t169 & t171);
    t174 = (~(t172));
    t175 = (~(t173));
    t176 = *((unsigned int *)t154);
    *((unsigned int *)t154) = (t176 & t174);
    t177 = *((unsigned int *)t154);
    *((unsigned int *)t154) = (t177 & t175);
    t178 = *((unsigned int *)t148);
    *((unsigned int *)t148) = (t178 & t174);
    t179 = *((unsigned int *)t148);
    *((unsigned int *)t148) = (t179 & t175);
    goto LAB18;

}

static void Always_99_2(char *t0)
{
    char t13[8];
    char t14[8];
    char t33[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;

LAB0:    t1 = (t0 + 5904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 6488);
    *((int *)t2) = 1;
    t3 = (t0 + 5936);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(103, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(105, ng0);

LAB8:    xsi_set_current_line(107, ng0);
    t11 = ((char*)((ng8)));
    t12 = (t0 + 3528);
    t15 = (t0 + 3528);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 3528);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t21, 32, 1);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (!(t23));
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memcpy(t13, t3, 8);
    t2 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 3528);
    t15 = (t12 + 64U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t14, t33, t11, t16, 2, 1, t17, 32, 1);
    t18 = (t14 + 4);
    t6 = *((unsigned int *)t18);
    t24 = (!(t6));
    t19 = (t33 + 4);
    t7 = *((unsigned int *)t19);
    t27 = (!(t7));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memcpy(t13, t3, 8);
    t2 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 3528);
    t15 = (t12 + 64U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t14, t33, t11, t16, 2, 1, t17, 32, 1);
    t18 = (t14 + 4);
    t6 = *((unsigned int *)t18);
    t24 = (!(t6));
    t19 = (t33 + 4);
    t7 = *((unsigned int *)t19);
    t27 = (!(t7));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memcpy(t13, t3, 8);
    t2 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 3528);
    t15 = (t12 + 64U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t14, t33, t11, t16, 2, 1, t17, 32, 1);
    t18 = (t14 + 4);
    t6 = *((unsigned int *)t18);
    t24 = (!(t6));
    t19 = (t33 + 4);
    t7 = *((unsigned int *)t19);
    t27 = (!(t7));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 3528);
    t15 = (t12 + 64U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t13, t14, t11, t16, 2, 1, t17, 32, 1);
    t18 = (t13 + 4);
    t6 = *((unsigned int *)t18);
    t24 = (!(t6));
    t19 = (t14 + 4);
    t7 = *((unsigned int *)t19);
    t27 = (!(t7));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 3528);
    t15 = (t12 + 64U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng7)));
    xsi_vlog_generic_convert_array_indices(t13, t14, t11, t16, 2, 1, t17, 32, 1);
    t18 = (t13 + 4);
    t6 = *((unsigned int *)t18);
    t24 = (!(t6));
    t19 = (t14 + 4);
    t7 = *((unsigned int *)t19);
    t27 = (!(t7));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB19;

LAB20:    goto LAB7;

LAB9:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t14);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, *((unsigned int *)t14), t32, 0LL);
    goto LAB10;

LAB11:    t8 = *((unsigned int *)t14);
    t9 = *((unsigned int *)t33);
    t31 = (t8 - t9);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t2, t13, 0, *((unsigned int *)t33), t32, 0LL);
    goto LAB12;

LAB13:    t8 = *((unsigned int *)t14);
    t9 = *((unsigned int *)t33);
    t31 = (t8 - t9);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t2, t13, 0, *((unsigned int *)t33), t32, 0LL);
    goto LAB14;

LAB15:    t8 = *((unsigned int *)t14);
    t9 = *((unsigned int *)t33);
    t31 = (t8 - t9);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t2, t13, 0, *((unsigned int *)t33), t32, 0LL);
    goto LAB16;

LAB17:    t8 = *((unsigned int *)t13);
    t9 = *((unsigned int *)t14);
    t31 = (t8 - t9);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t14), t32, 0LL);
    goto LAB18;

LAB19:    t8 = *((unsigned int *)t13);
    t9 = *((unsigned int *)t14);
    t31 = (t8 - t9);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t14), t32, 0LL);
    goto LAB20;

}

static void Always_132_3(char *t0)
{
    char t7[8];
    char t15[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;

LAB0:    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 6504);
    *((int *)t2) = 1;
    t3 = (t0 + 6184);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(133, ng0);

LAB5:    xsi_set_current_line(135, ng0);
    t4 = (t0 + 3528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 3528);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 3528);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng2)));
    xsi_vlog_generic_get_array_select_value(t7, 16, t6, t10, t13, 2, 1, t14, 32, 1);
    t16 = (t0 + 2328U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng9)));
    xsi_vlogtype_concat(t15, 16, 16, 2U, t16, 8, t17, 8);
    memset(t18, 0, 8);
    t19 = (t7 + 4);
    t20 = (t15 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t15);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t19);
    t25 = *((unsigned int *)t20);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t19);
    t29 = *((unsigned int *)t20);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB9;

LAB6:    if (t30 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t18) = 1;

LAB9:    t34 = (t18 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB12:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3528);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng3)));
    xsi_vlog_generic_get_array_select_value(t7, 16, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 2488U);
    t14 = *((char **)t13);
    t13 = ((char*)((ng9)));
    xsi_vlogtype_concat(t15, 16, 16, 2U, t13, 8, t14, 8);
    memset(t18, 0, 8);
    t16 = (t7 + 4);
    t17 = (t15 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t15);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t16);
    t25 = *((unsigned int *)t17);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t16);
    t29 = *((unsigned int *)t17);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB16;

LAB13:    if (t30 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t18) = 1;

LAB16:    t20 = (t18 + 4);
    t35 = *((unsigned int *)t20);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB19:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3528);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng4)));
    xsi_vlog_generic_get_array_select_value(t7, 16, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 2648U);
    t14 = *((char **)t13);
    t13 = ((char*)((ng9)));
    xsi_vlogtype_concat(t15, 16, 16, 2U, t13, 8, t14, 8);
    memset(t18, 0, 8);
    t16 = (t7 + 4);
    t17 = (t15 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t15);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t16);
    t25 = *((unsigned int *)t17);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t16);
    t29 = *((unsigned int *)t17);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB23;

LAB20:    if (t30 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t18) = 1;

LAB23:    t20 = (t18 + 4);
    t35 = *((unsigned int *)t20);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB26:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3528);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng5)));
    xsi_vlog_generic_get_array_select_value(t7, 16, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 2808U);
    t14 = *((char **)t13);
    t13 = ((char*)((ng9)));
    xsi_vlogtype_concat(t15, 16, 16, 2U, t13, 8, t14, 8);
    memset(t18, 0, 8);
    t16 = (t7 + 4);
    t17 = (t15 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t15);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t16);
    t25 = *((unsigned int *)t17);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t16);
    t29 = *((unsigned int *)t17);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB30;

LAB27:    if (t30 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t18) = 1;

LAB30:    t20 = (t18 + 4);
    t35 = *((unsigned int *)t20);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB33:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3528);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_get_array_select_value(t7, 16, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 2968U);
    t14 = *((char **)t13);
    t13 = ((char*)((ng9)));
    xsi_vlogtype_concat(t15, 16, 16, 2U, t13, 6, t14, 10);
    memset(t18, 0, 8);
    t16 = (t7 + 4);
    t17 = (t15 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t15);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t16);
    t25 = *((unsigned int *)t17);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t16);
    t29 = *((unsigned int *)t17);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB37;

LAB34:    if (t30 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t18) = 1;

LAB37:    t20 = (t18 + 4);
    t35 = *((unsigned int *)t20);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB40:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3528);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng7)));
    xsi_vlog_generic_get_array_select_value(t7, 16, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 3128U);
    t14 = *((char **)t13);
    t13 = ((char*)((ng9)));
    xsi_vlogtype_concat(t15, 16, 16, 2U, t13, 6, t14, 10);
    memset(t18, 0, 8);
    t16 = (t7 + 4);
    t17 = (t15 + 4);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t15);
    t23 = (t21 ^ t22);
    t24 = *((unsigned int *)t16);
    t25 = *((unsigned int *)t17);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t28 = *((unsigned int *)t16);
    t29 = *((unsigned int *)t17);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB44;

LAB41:    if (t30 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t18) = 1;

LAB44:    t20 = (t18 + 4);
    t35 = *((unsigned int *)t20);
    t36 = (~(t35));
    t37 = *((unsigned int *)t18);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB47:    goto LAB2;

LAB8:    t33 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(135, ng0);
    t40 = ((char*)((ng2)));
    t41 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t41, t40, 0, 0, 1, 0LL);
    goto LAB12;

LAB15:    t19 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(136, ng0);
    t33 = ((char*)((ng2)));
    t34 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 1, 0LL);
    goto LAB19;

LAB22:    t19 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB23;

LAB24:    xsi_set_current_line(137, ng0);
    t33 = ((char*)((ng2)));
    t34 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 1, 0LL);
    goto LAB26;

LAB29:    t19 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(139, ng0);
    t33 = ((char*)((ng2)));
    t34 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 1, 0LL);
    goto LAB33;

LAB36:    t19 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(140, ng0);
    t33 = ((char*)((ng2)));
    t34 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 1, 0LL);
    goto LAB40;

LAB43:    t19 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(141, ng0);
    t33 = ((char*)((ng2)));
    t34 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 1, 0LL);
    goto LAB47;

}


extern void work_m_00000000000195424106_3994855134_init()
{
	static char *pe[] = {(void *)Initial_80_0,(void *)Cont_97_1,(void *)Always_99_2,(void *)Always_132_3};
	xsi_register_didat("work_m_00000000000195424106_3994855134", "isim/MainPage1_isim_beh.exe.sim/work/m_00000000000195424106_3994855134.didat");
	xsi_register_executes(pe);
}
