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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001685962256_1118313687_init();
    unisims_ver_m_00000000001946988858_2297623829_init();
    work_m_00000000002758509494_1937301058_init();
    unisims_ver_m_00000000003266096158_2593380106_init();
    unisims_ver_m_00000000002399568039_2282143210_init();
    unisims_ver_m_00000000000740258969_3897995058_init();
    unisims_ver_m_00000000000740258969_1625843133_init();
    unisims_ver_m_00000000003131622635_0225263307_init();
    unisims_ver_m_00000000002922998384_1240172721_init();
    work_m_00000000003809591381_1765000720_init();
    unisims_ver_m_00000000000236260522_2449448540_init();
    work_m_00000000003414944266_0613650600_init();
    work_m_00000000004202378803_3461485526_init();
    unisims_ver_m_00000000003061766309_1735969574_init();
    work_m_00000000000195424106_3994855134_init();
    work_m_00000000002590260104_1563588933_init();
    unisims_ver_m_00000000000695378073_1108579578_init();
    work_m_00000000004045291396_0977846948_init();
    work_m_00000000003331932128_0119250670_init();
    work_m_00000000003410931776_0057910457_init();
    work_m_00000000004045291396_3615666398_init();
    work_m_00000000002132776583_3321616403_init();
    unisims_ver_m_00000000000869821717_2198618475_init();
    work_m_00000000002123911043_2510190721_init();
    work_m_00000000000937509966_3872821770_init();
    work_m_00000000001874692917_0526164115_init();
    work_m_00000000000192807919_1728291931_init();
    work_m_00000000000286098494_2677076387_init();
    work_m_00000000001668424915_1429005483_init();
    work_m_00000000001539778483_1335791563_init();
    xilinxcorelib_ver_m_00000000001358910285_1054081540_init();
    xilinxcorelib_ver_m_00000000001687936702_3218604958_init();
    xilinxcorelib_ver_m_00000000001080096809_0485583609_init();
    xilinxcorelib_ver_m_00000000001603977570_1348075814_init();
    work_m_00000000003617559063_1461363717_init();
    work_m_00000000003479072068_0212502754_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003479072068_0212502754");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
