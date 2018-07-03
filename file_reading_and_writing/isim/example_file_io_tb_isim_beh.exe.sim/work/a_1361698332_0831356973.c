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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/nitish/Desktop/fifo own/file_reading_and_writing/file_reading_and_writing.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_2250825304603680424_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_3261611579494183203_91900896(char *, char *, char *, char *, char *, char *);


static void work_a_1361698332_0831356973_p_0(char *t0)
{
    char t5[16];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int64 t14;

LAB0:    t1 = (t0 + 3136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2136U);
    t3 = (t0 + 6227);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 5;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (5 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)0);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2240U);
    t3 = (t0 + 6232);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 5;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (5 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)1);
    xsi_set_current_line(62, ng0);

LAB4:    t2 = (t0 + 2136U);
    t10 = std_textio_endfile(t2);
    t11 = (!(t10));
    if (t11 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2136U);
    std_textio_file_close(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2240U);
    std_textio_file_close(t2);
    xsi_set_current_line(93, ng0);

LAB21:    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 3520);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2944);
    t3 = (t0 + 2136U);
    t4 = (t0 + 2416U);
    std_textio_readline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(66, ng0);

LAB8:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    if (t10 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((unsigned char *)t2) = (unsigned char)1;
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2944);
    t3 = (t0 + 2240U);
    t4 = (t0 + 2488U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    goto LAB4;

LAB6:;
LAB9:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2944);
    t4 = (t0 + 2416U);
    t6 = (t0 + 1448U);
    t7 = *((char **)t6);
    t6 = (t0 + 6040U);
    t12 = (t0 + 1688U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    ieee_p_3564397177_sub_3261611579494183203_91900896(IEEE_P_3564397177, t2, t4, t7, t6, t12);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2944);
    t3 = (t0 + 2416U);
    t4 = (t0 + 1568U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    std_textio_read8(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(73, ng0);
    t14 = (1 * 1000LL);
    t2 = (t0 + 2944);
    xsi_process_wait(t2, t14);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:;
LAB12:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)1);
    if (t11 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB8;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3520);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2944);
    t3 = (t0 + 2488U);
    t4 = (t0 + 1448U);
    t6 = *((char **)t4);
    memcpy(t15, t6, 8U);
    t4 = (t0 + 6040U);
    ieee_p_3564397177_sub_2250825304603680424_91900896(IEEE_P_3564397177, t2, t3, t15, t4, (unsigned char)0, 0);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2944);
    t3 = (t0 + 2488U);
    t4 = (t0 + 1568U);
    t6 = *((char **)t4);
    t10 = *((unsigned char *)t6);
    std_textio_write4(STD_TEXTIO, t2, t3, t10, (unsigned char)0, 0);
    goto LAB17;

LAB19:    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_1361698332_0831356973_init()
{
	static char *pe[] = {(void *)work_a_1361698332_0831356973_p_0};
	xsi_register_didat("work_a_1361698332_0831356973", "isim/example_file_io_tb_isim_beh.exe.sim/work/a_1361698332_0831356973.didat");
	xsi_register_executes(pe);
}
