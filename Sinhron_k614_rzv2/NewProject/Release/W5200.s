	.file "..\BFcom\W5200.c";
//  Compilation time: Tue Nov 06 15:34:53 2018
//  Compiler options: -c -file-attr ProjectName=NewProject -O -Ov0 -g -always-inline -save-temps -path-output .\Release -ED -no-auto-attrs -structs-do-not-overlap -const-strings -no-multiline -D__PROCESSOR_SPEED__=400000000 -double-size-64 -decls-strong -warn-protos -flags-compiler --diag_warning,call_not_inlined -si-revision 0.6 -proc ADSP-BF533 -o .\Release\W5200.doj -MM
//  Architecture: ADSP-BF533
//  Silicon revision: 0.6
//  Anomalies summary:
//   Never on: w_05000046
//   Disabled: w_05000048, w_05000054, w_05000071, w_05000103, w_05000104, w_05000120, w_05000127, w_05000157, w_05000164, w_05000165, w_05000195, w_05000198, w_05000202, w_05000209, w_05000227, w_05000244, w_05000246, w_05000248, w_05000257, w_05000262, w_05000264, w_05000283, w_F3_F_021, w_F3_F_008_F3_F_013, w_05000312, w_05000371, w_05000428, w_05000412, w_05000010
//   Enabled: w_05000189, w_05000245, w_05000426, w_05000443, w_05000477
//   Always on: w_05000074, w_05000122, w_05000311

	.section/DOUBLE64 program;

.epctext:
	.align 2;
_init_IP_adress:
.LN_init_IP_adress:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  No scratch registers used.
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":2366
	LINK 0;
.LN0:
// line 2403
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._init_IP_adress.end:
._init_IP_adress.end:
	.global _init_IP_adress;
	.type _init_IP_adress,STT_FUNC;

	.align 2;
_time_return:
.LN_time_return:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":2110
	LINK 0;
	P1.L = _my_time;
	P1.H = _my_time;
.LN1:
// line 2112
	R0 = [P1];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._time_return.end:
._time_return.end:
	.global _time_return;
	.type _time_return,STT_FUNC;

	.align 2;
_getSUBR:
.LN_getSUBR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
	P1 = R0;
// line "..\BFcom\W5200.c":1496
	LINK 0;
	P0.L = _SUBNET;
	P0.H = _SUBNET;
.LN2:
// line 1497
	R0 = B[P0++] (X);
	// -- stall --
	B[P1++] = R0;
.LN3:
// line 1498
	R0 = B[P0++] (X);
	B[P1++] = R0;
.LN4:
// line 1499
	R0 = B[P0++] (X);
	B[P1++] = R0;
.LN5:
// line 1500
	R0 = B[P0] (X);
	B[P1] = R0;
.LN6:
// line 1501
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getSUBR.end:
._getSUBR.end:
	.global _getSUBR;
	.type _getSUBR,STT_FUNC;

	.align 2;
_saveSUBR:
.LN_saveSUBR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
	P1 = R0;
// line "..\BFcom\W5200.c":1433
	LINK 0;
	P0.L = _SUBNET;
	P0.H = _SUBNET;
	// -- 2 stalls --
.LN7:
// line 1434
	R0 = B[P1++] (X);
	B[P0++] = R0;
.LN8:
// line 1435
	R0 = B[P1++] (X);
	B[P0++] = R0;
.LN9:
// line 1436
	R0 = B[P1++] (X);
	B[P0++] = R0;
.LN10:
// line 1437
	R0 = B[P1] (X);
	B[P0] = R0;
.LN11:
// line 1438
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._saveSUBR.end:
._saveSUBR.end:
	.global _saveSUBR;
	.type _saveSUBR,STT_FUNC;

	.align 2;
_getIINCHIP_TxBASE:
.LN_getIINCHIP_TxBASE:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":692
	P1 = R0;
	P0.L = _SBUFBASEADDRESS;
	P0.H = _SBUFBASEADDRESS;
	LINK 0;
	// -- 2 stalls --
.LN12:
// line 693
	P1 = P0 + (P1<<1);
	R0 = W[P1] (Z);
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getIINCHIP_TxBASE.end:
._getIINCHIP_TxBASE.end:
	.global _getIINCHIP_TxBASE;
	.type _getIINCHIP_TxBASE,STT_FUNC;

	.align 2;
_getIINCHIP_RxBASE:
.LN_getIINCHIP_RxBASE:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":688
	P1 = R0;
	P0.L = _RBUFBASEADDRESS;
	P0.H = _RBUFBASEADDRESS;
	LINK 0;
	// -- 2 stalls --
.LN13:
// line 689
	P1 = P0 + (P1<<1);
	R0 = W[P1] (Z);
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getIINCHIP_RxBASE.end:
._getIINCHIP_RxBASE.end:
	.global _getIINCHIP_RxBASE;
	.type _getIINCHIP_RxBASE,STT_FUNC;

	.align 2;
_getIINCHIP_TxMASK:
.LN_getIINCHIP_TxMASK:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":684
	P1 = R0;
	P0.L = _SMASK;
	P0.H = _SMASK;
	LINK 0;
	// -- 2 stalls --
.LN14:
// line 685
	P1 = P0 + (P1<<1);
	R0 = W[P1] (Z);
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getIINCHIP_TxMASK.end:
._getIINCHIP_TxMASK.end:
	.global _getIINCHIP_TxMASK;
	.type _getIINCHIP_TxMASK,STT_FUNC;

	.align 2;
_getIINCHIP_RxMASK:
.LN_getIINCHIP_RxMASK:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":680
	P1 = R0;
	P0.L = _RMASK;
	P0.H = _RMASK;
	LINK 0;
	// -- 2 stalls --
.LN15:
// line 681
	P1 = P0 + (P1<<1);
	R0 = W[P1] (Z);
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getIINCHIP_RxMASK.end:
._getIINCHIP_RxMASK.end:
	.global _getIINCHIP_RxMASK;
	.type _getIINCHIP_RxMASK,STT_FUNC;

	.align 2;
_getIINCHIP_TxMAX:
.LN_getIINCHIP_TxMAX:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":676
	P1 = R0;
	P0.L = _SSIZE;
	P0.H = _SSIZE;
	LINK 0;
	// -- 2 stalls --
.LN16:
// line 677
	P1 = P0 + (P1<<1);
	R0 = W[P1] (Z);
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getIINCHIP_TxMAX.end:
._getIINCHIP_TxMAX.end:
	.global _getIINCHIP_TxMAX;
	.type _getIINCHIP_TxMAX,STT_FUNC;

	.align 2;
_getIINCHIP_RxMAX:
.LN_getIINCHIP_RxMAX:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":672
	P1 = R0;
	P0.L = _RSIZE;
	P0.H = _RSIZE;
	LINK 0;
	// -- 2 stalls --
.LN17:
// line 673
	P1 = P0 + (P1<<1);
	R0 = W[P1] (Z);
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getIINCHIP_RxMAX.end:
._getIINCHIP_RxMAX.end:
	.global _getIINCHIP_RxMAX;
	.type _getIINCHIP_RxMAX,STT_FUNC;

	.align 2;
_putISR:
.LN_putISR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,R2,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
	R2.L = _I_STATUS;
	R2.H = _I_STATUS;
.LN18:
// line "..\BFcom\W5200.c":669
	R0 = R2 + R0;
	P1 = R0;
.LN19:
// line 668
	LINK 0;
	// -- 3 stalls --
.LN20:
// line 669
	B[P1] = R1;
.LN21:
// line 670
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._putISR.end:
._putISR.end:
	.global _putISR;
	.type _putISR,STT_FUNC;

	.align 2;
_getISR:
.LN_getISR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R1,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
	R1.L = _I_STATUS;
	R1.H = _I_STATUS;
.LN22:
// line "..\BFcom\W5200.c":665
	R0 = R1 + R0;
	P1 = R0;
.LN23:
// line 664
	LINK 0;
	// -- 3 stalls --
.LN24:
// line 665
	R0 = B[P1] (Z);
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getISR.end:
._getISR.end:
	.global _getISR;
	.type _getISR,STT_FUNC;

	.align 2;
_init_windowfull_retry_cnt:
.LN_init_windowfull_retry_cnt:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R1,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
	R1.L = _windowfull_retry_cnt;
	R1.H = _windowfull_retry_cnt;
.LN25:
// line "..\BFcom\W5200.c":658
	R0 = R1 + R0;
	P1 = R0;
.LN26:
// line 657
	LINK 0;
.LN27:
// line 658
	R0 = 0;
	// -- 2 stalls --
	B[P1] = R0;
.LN28:
// line 659
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._init_windowfull_retry_cnt.end:
._init_windowfull_retry_cnt.end:
	.global _init_windowfull_retry_cnt;
	.type _init_windowfull_retry_cnt,STT_FUNC;

	.align 2;
_incr_windowfull_retry_cnt:
.LN_incr_windowfull_retry_cnt:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R1,P0-P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":652
	P1 = R0;
	P0.L = _windowfull_retry_cnt;
	P0.H = _windowfull_retry_cnt;
	LINK 0;
.LN29:
// line 653
	R1 = 1;
	// -- stall --
	P1 = P0 + P1;
	R0 = B[P1] (Z);
	R1 = R0 + R1;
	B[P1] = R1;
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._incr_windowfull_retry_cnt.end:
._incr_windowfull_retry_cnt.end:
	.global _incr_windowfull_retry_cnt;
	.type _incr_windowfull_retry_cnt,STT_FUNC;

	.align 2;
_Delay_us:
.LN_Delay_us:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  No scratch registers used.
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":589
	LINK 0;
.LN30:
// line 591
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Delay_us.end:
._Delay_us.end:
	.global _Delay_us;
	.type _Delay_us,STT_FUNC;

	.align 2;
_Delay_ms:
.LN_Delay_ms:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  No scratch registers used.
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
//  Original Loop at "..\BFcom\W5200.c" line 604 col 3 - loop structure removed due to dead code elimination.
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":602
	LINK 0;
.LN31:
// line 611
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Delay_ms.end:
._Delay_ms.end:
	.global _Delay_ms;
	.type _Delay_ms,STT_FUNC;

	.align 2;
_wait_10ms:
.LN_wait_10ms:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  No scratch registers used.
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
//  Original Loop at "..\BFcom\W5200.c" line 616 col 3 - loop structure removed due to dead code elimination.
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":614
	LINK 0;
.LN32:
// line 620
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._wait_10ms.end:
._wait_10ms.end:
	.global _wait_10ms;
	.type _wait_10ms,STT_FUNC;

	.align 2;
_WIZ_CS:
.LN_WIZ_CS:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":625
	LINK 12;
.LN33:
// line 627
	R0 = 3;
	CALL.X (_spi_cs_SPI);
.LN34:
// line 628
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._WIZ_CS.end:
._WIZ_CS.end:
	.global _WIZ_CS;
	.type _WIZ_CS,STT_FUNC;

	.align 2;
_SPI1_SendByte:
.LN_SPI1_SendByte:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":636
	LINK 16;
	[SP + 12] = R7;
	R7 = R0;
.LN35:
// line 639
	CALL.X (_Event_Synhron_func);
.LN36:
	CC = R0 == 0;
	if CC jump .P58L3 (bp);

.P58L1:
.LN37:
	CALL.X (_Synhron_section);

.P58L3:
.LN38:
// line 642
	R0 = R7;
	CALL.X (_SPI);
	// -- stall --
.LN39:
// line 644
	R7 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._SPI1_SendByte.end:
._SPI1_SendByte.end:
	.global _SPI1_SendByte;
	.type _SPI1_SendByte,STT_FUNC;

	.align 2;
_IINCHIP_CSoff:
.LN_IINCHIP_CSoff:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":696
	LINK 12;
.LN40:
// line 697
	R0 = 0;
	CALL.X (_WIZ_CS);
.LN41:
// line 698
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._IINCHIP_CSoff.end:
._IINCHIP_CSoff.end:
	.global _IINCHIP_CSoff;
	.type _IINCHIP_CSoff,STT_FUNC;

	.align 2;
_IINCHIP_CSon:
.LN_IINCHIP_CSon:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":700
	LINK 12;
.LN42:
// line 701
	R0 = 1;
	CALL.X (_WIZ_CS);
.LN43:
// line 702
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._IINCHIP_CSon.end:
._IINCHIP_CSon.end:
	.global _IINCHIP_CSon;
	.type _IINCHIP_CSon,STT_FUNC;

	.align 2;
_IINCHIP_SpiSendData:
.LN_IINCHIP_SpiSendData:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  No scratch registers used.
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":704
	LINK 12;
.LN44:
// line 705
	CALL.X (_SPI1_SendByte);
.LN45:
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._IINCHIP_SpiSendData.end:
._IINCHIP_SpiSendData.end:
	.global _IINCHIP_SpiSendData;
	.type _IINCHIP_SpiSendData,STT_FUNC;

	.align 2;
_IINCHIP_WRITE:
.LN_IINCHIP_WRITE:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 16 
//  Scratch registers used: {R0,ASTAT0-ASTAT1}
//  Call preserved registers used: {R6-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1153
	LINK 0;
	[--SP] = (R7:6);
	SP += -12;
	R6 = R1;
	R7 = R0;
.LN46:
// line 1157
	CALL.X (_IINCHIP_CSoff);
.LN47:
// line 1159
	R0 = 65280 (Z);
	R0 = R7 & R0;
	R0 >>>= 8;
.LN48:
	CALL.X (_IINCHIP_SpiSendData);
.LN49:
// line 1153
	R0 = R7.b (Z);
.LN50:
// line 1160
	CALL.X (_IINCHIP_SpiSendData);
.LN51:
// line 1161
	R0 = 128;
	CALL.X (_IINCHIP_SpiSendData);
.LN52:
// line 1162
	R0 = 1;
	CALL.X (_IINCHIP_SpiSendData);
.LN53:
// line 1163
	R0 = R6;
	CALL.X (_IINCHIP_SpiSendData);
.LN54:
// line 1168
	SP += 12;
	(R7:6) = [SP++];
	UNLINK;
	R0 = 1;
	// -- 3 stalls --
	RTS;
.LN._IINCHIP_WRITE.end:
._IINCHIP_WRITE.end:
	.global _IINCHIP_WRITE;
	.type _IINCHIP_WRITE,STT_FUNC;

	.align 2;
_IINCHIP_READ:
.LN_IINCHIP_READ:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0,ASTAT0-ASTAT1}
//  Call preserved registers used: {R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1174
	LINK 16;
	[SP + 12] = R7;
	R7 = R0;
.LN55:
// line 1179
	CALL.X (_IINCHIP_CSoff);
.LN56:
// line 1181
	R0 = 65280 (Z);
	R0 = R7 & R0;
	R0 >>>= 8;
.LN57:
	CALL.X (_IINCHIP_SpiSendData);
.LN58:
// line 1174
	R0 = R7.b (Z);
.LN59:
// line 1182
	CALL.X (_IINCHIP_SpiSendData);
.LN60:
// line 1183
	R0 = 0;
	CALL.X (_IINCHIP_SpiSendData);
.LN61:
// line 1184
	R0 = 1;
	CALL.X (_IINCHIP_SpiSendData);
.LN62:
// line 1185
	R0 = 0;
	CALL.X (_IINCHIP_SpiSendData);
.LN63:
// line 1190
	R7 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._IINCHIP_READ.end:
._IINCHIP_READ.end:
	.global _IINCHIP_READ;
	.type _IINCHIP_READ,STT_FUNC;

	.align 2;
_close:
.LN_close:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0-R1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R5-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":758
	LINK 0;
	[--SP] = (R7:5);
.LN64:
// line 765
	R5.H = R0.L << 8;
	R0 = 16385;
	R0.L = R5.H + R0.L (NS);
	R7.L = .s.0;
	R7.H = .s.0;
	R6 = R0.L (Z);
.LN65:
// line 758
	SP += -12;
.LN66:
// line 760
	R0 = R7;
	CALL.X (_put_str1);
	R0 = R7;
	R0 += 4;
.LN67:
// line 761
	CALL.X (_put_str1);
.LN68:
// line 762
	R0 = R7;
	CALL.X (_put_str1);
.LN69:
// line 765
	R0 = R6;
	R1 = 16;
	CALL.X (_IINCHIP_WRITE);

.P67L1:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 768 col 2
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     32-bit Instruction  used   4 out of    8 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN70:
// line 768
	R0 = R6;
	CALL.X (_IINCHIP_READ);
.LN71:
	CC = R0 == 0;
	if !CC jump .P67L1 (bp);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P67L2:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0 = 16386;
.LN72:
// line 772
	R0.L = R5.H + R0.L (NS);
	R0 = R0.L (Z);
.LN73:
	R1 = 255;
	CALL.X (_IINCHIP_WRITE);
.LN74:
// line 773
	SP += 12;
	(R7:5) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._close.end:
._close.end:
	.global _close;
	.type _close,STT_FUNC;

	.align 2;
_socket:
.LN_socket:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 28 
//  Scratch registers used: {R0-R2,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":710
	LINK 0;
	[--SP] = (R7:4, P5:5);
	R6.L = .s.2;
	R6.H = .s.2;
	R7 = R0;
	SP += -12;
.LN75:
// line 713
	R0 = R6;
.LN76:
// line 710
	R4 = R1;
	R5 = R2;
.LN77:
// line 713
	CALL.X (_put_str1);
	R0 = R6;
	R0 += 4;
.LN78:
// line 714
	CALL.X (_put_str1);
.LN79:
// line 716
	CC = R4 == 1;
.LN80:
// line 710
	R1 = [SP + 52];
.LN81:
// line 716
	if !CC jump .P69L7 ;

.P69L1:
.LN82:
// line 719
	R6 = R1 | R4;
	R4.H = R7.L << 8;
.LN83:
// line 718
	R0 = R7;
	CALL.X (_close);
.LN84:
// line 719
	R1 = R6.b (Z);
	R0 = 16384;
	R0.L = R4.H + R0.L (NS);
	R0 = R0.L (Z);
.LN85:
	CALL.X (_IINCHIP_WRITE);
.LN86:
// line 720
	CC = R5 == 0;
	R0 = 16388;
.LN87:
// line 721
	R0.L = R4.H + R0.L (NS);
	R0 = R0.L (Z);
.LN88:
// line 720
	if CC jump .P69L9 ;

.P69L8:
	R1 = 16389;
.LN89:
// line 722
	R7.L = R4.H + R1.L (NS);
.LN90:
// line 721
	R1 = 65280 (Z);
	R1 = R5 & R1;
	R1 >>>= 8;
.LN91:
	CALL.X (_IINCHIP_WRITE);
.LN92:
// line 710
	R1 = R5.b (Z);
.LN93:
// line 722
	R0 = R7.L (Z);
.LN94:
	CALL.X (_IINCHIP_WRITE);
	jump.s .P69L10;

.P69L9:
	R1 = 16389;
.LN95:
// line 726
	R7.L = R4.H + R1.L (NS);
	P5.L = _local_port;
	P5.H = _local_port;
.LN96:
// line 724
	R1 = W[P5] (X);
	R1 += 1;
.LN97:
// line 725
	R2 = 65280 (Z);
	R2 = R1 & R2;
.LN98:
// line 724
	W[P5] = R1.L;
.LN99:
// line 725
	R1 = R2 >>> 8;
.LN100:
	CALL.X (_IINCHIP_WRITE);
.LN101:
// line 726
	R1 = B[P5] (Z);
	R0 = R7.L (Z);
.LN102:
	CALL.X (_IINCHIP_WRITE);

.P69L10:
	R0 = 16385;
.LN103:
// line 728
	R0.L = R4.H + R0.L (NS);
	R7 = R0.L (Z);
.LN104:
	R0 = R7;
	R1 = 1;
	CALL.X (_IINCHIP_WRITE);

.P69L11:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 731 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     32-bit Instruction  used   4 out of    8 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN105:
// line 731
	R0 = R7;
	CALL.X (_IINCHIP_READ);
.LN106:
	CC = R0 == 0;
	if !CC jump .P69L11 (bp);
//-------------------------------------------------------------------
//   End Loop L11
//-------------------------------------------------------------------

.P69L12:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0 = 1;

.P69L3:
.LN107:
// line 750
	SP += 12;
	(R7:4, P5:5) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P69L7:
.LN108:
// line 716
	CC = R4 == 2;
	if CC jump .P69L1 (bp);

.P69L6:
	CC = R4 == 3;
	if CC jump .P69L1 (bp);

.P69L5:
	R0 = 4;
	CC = R4 == R0;
	if CC jump .P69L1 (bp);

.P69L4:
	R0 = 5;
	CC = R4 == R0;
	R0 = 0;
	if CC jump .P69L1 (bp);

.P69L20:
	jump.s .P69L3;
.LN._socket.end:
._socket.end:
	.global _socket;
	.type _socket,STT_FUNC;

	.align 2;
_listen:
.LN_listen:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 16 
//  Scratch registers used: {R0-R1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R6-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":783
	LINK 0;
	[--SP] = (R7:6);
.LN109:
// line 790
	R6.H = R0.L << 8;
	R0 = 16387;
	R7.L = .s.0;
	R7.H = .s.0;
	R6.L = R6.H + R0.L (NS);
.LN110:
// line 783
	SP += -12;
.LN111:
// line 786
	R0 = R7;
	CALL.X (_put_str1);
	R0 = R7;
	R0 += 28;
.LN112:
// line 787
	CALL.X (_put_str1);
.LN113:
// line 790
	R0 = R6.L (Z);
.LN114:
	CALL.X (_IINCHIP_READ);
.LN115:
	R1 = 19;
	CC = R0 == R1;
	if !CC jump .P71L2 ;

.P71L1:
	R0 = 16385;
.LN116:
// line 792
	R0.L = R6.H + R0.L (NS);
	R7 = R0.L (Z);
.LN117:
	R0 = R7;
	R1 = 2;
	CALL.X (_IINCHIP_WRITE);

.P71L4:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 794 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     32-bit Instruction  used   4 out of    8 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN118:
// line 794
	R0 = R7;
	CALL.X (_IINCHIP_READ);
.LN119:
	CC = R0 == 0;
	if !CC jump .P71L4 (bp);
//-------------------------------------------------------------------
//   End Loop L4
//-------------------------------------------------------------------

.P71L5:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0 = 1;

.P71L3:
.LN120:
// line 806
	SP += 12;
	(R7:6) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P71L2:
	R0.L = .sFailin.5;
	R0.H = .sFailin.5;
.LN121:
// line 803
	CALL.X (_put_str1);
	R0 = 0;
	jump.s .P71L3;
.LN._listen.end:
._listen.end:
	.global _listen;
	.type _listen,STT_FUNC;

	.align 2;
_disconnect:
.LN_disconnect:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN122:
// line "..\BFcom\W5200.c":878
	R0.L = R0.L << 8;
	R0.H = 16385;
.LN123:
// line 876
	LINK 16;
.LN124:
// line 878
	R0.L = R0.L + R0.H (NS);
.LN125:
// line 876
	[SP + 12] = R7;
.LN126:
// line 878
	R7 = R0.L (Z);
	R0.L = .sdiscon.6;
	R0.H = .sdiscon.6;
.LN127:
// line 877
	CALL.X (_put_str1);
.LN128:
// line 878
	R0 = R7;
	R1 = 8;
	CALL.X (_IINCHIP_WRITE);

.P72L1:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 881 col 2
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     32-bit Instruction  used   4 out of    8 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN129:
// line 881
	R0 = R7;
	CALL.X (_IINCHIP_READ);
.LN130:
	CC = R0 == 0;
	if !CC jump .P72L1 (bp);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P72L2:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN131:
// line 884
	R7 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._disconnect.end:
._disconnect.end:
	.global _disconnect;
	.type _disconnect,STT_FUNC;

	.align 2;
_wiz_write_buf:
.LN_wiz_write_buf:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R5-R7,P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1197
	LINK 0;
	[--SP] = (R7:5, P5:5);
	R6 = R2;
.LN132:
// line 1202
	CC = R6 == 0;
.LN133:
// line 1197
	R7 = R0;
	R5 = R2;
	P5 = R1;
	SP += -12;
	R0 = 0;
.LN134:
// line 1202
	if CC jump .P73L4 ;

.P73L2:
.LN135:
// line 1209
	CALL.X (_IINCHIP_CSoff);
.LN136:
// line 1211
	R0 = 65280 (Z);
	R0 = R7 & R0;
	R0 >>>= 8;
.LN137:
	CALL.X (_IINCHIP_SpiSendData);
.LN138:
// line 1197
	R0 = R7.b (Z);
.LN139:
// line 1212
	CALL.X (_IINCHIP_SpiSendData);
.LN140:
// line 1213
	R0 = R6 >>> 8;
	BITSET(R0, 7);
	R0 = R0.b (Z);
.LN141:
	CALL.X (_IINCHIP_SpiSendData);
.LN142:
// line 1197
	R0 = R6.b (Z);
.LN143:
// line 1214
	CALL.X (_IINCHIP_SpiSendData);
.LN144:
// line 1215
	CC = R6 <= 0;
	R0 = R6;
	if CC jump .P73L4 ;
.LN145:
// line 1217
	NOP;                                    // Inserted 2 instrs to fix anomaly w_05000245_with_boundaries. 
	NOP;

.P73L11:

.P73L7:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1215 col 2
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 9 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     Group 1             used   5 out of    9 ( 55.6%)
//     16-bit Instruction  used   9 out of   18 ( 50.0%)
//     32-bit Instruction  used   4 out of    9 ( 44.4%)
//-------------------------------------------------------------------
	// -- 4 stalls --
	R5 += -1;
	R0 = B[P5++] (Z);
.LN146:
	CALL.X (_IINCHIP_SpiSendData);
	CC = R5 == 0;
	if !CC jump .P73L7 (bp);
//-------------------------------------------------------------------
//   End Loop L7
//-------------------------------------------------------------------

.P73L12:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0 = R6;

.P73L4:
.LN147:
// line 1224
	SP += 12;
	(R7:5, P5:5) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._wiz_write_buf.end:
._wiz_write_buf.end:
	.global _wiz_write_buf;
	.type _wiz_write_buf,STT_FUNC;

	.align 2;
_wiz_read_buf:
.LN_wiz_read_buf:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R5-R7,P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1231
	LINK 0;
	[--SP] = (R7:5, P5:5);
	SP += -12;
	R6 = R2;
	R7 = R0;
	R5 = R2;
	P5 = R1;
.LN148:
// line 1236
	CALL.X (_IINCHIP_CSoff);
.LN149:
// line 1238
	R0 = 65280 (Z);
	R0 = R7 & R0;
	R0 >>>= 8;
.LN150:
	CALL.X (_IINCHIP_SpiSendData);
.LN151:
// line 1231
	R0 = R7.b (Z);
.LN152:
// line 1239
	CALL.X (_IINCHIP_SpiSendData);
.LN153:
// line 1240
	R0 = 32512;
	R0 = R6 & R0;
	R0 >>>= 8;
.LN154:
	CALL.X (_IINCHIP_SpiSendData);
.LN155:
// line 1231
	R0 = R6.b (Z);
.LN156:
// line 1241
	CALL.X (_IINCHIP_SpiSendData);
.LN157:
// line 1243
	CC = R6 <= 0;
	if CC jump .P74L3 ;

.P74L6:

.P74L2:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1243 col 2
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 10 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     Group 1             used   6 out of   10 ( 60.0%)
//     16-bit Instruction  used  11 out of   20 ( 55.0%)
//     32-bit Instruction  used   5 out of   10 ( 50.0%)
//     Store               used   1 out of   10 ( 10.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
	R5 += -1;
.LN158:
// line 1245
	R0 = 0;
	CALL.X (_IINCHIP_SpiSendData);
	CC = R5 == 0;
.LN159:
	B[P5++] = R0;
	if !CC jump .P74L2 (bp);
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P74L7:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------

.P74L3:
.LN160:
// line 1252
	SP += 12;
	R0 = R6;
	(R7:5, P5:5) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._wiz_read_buf.end:
._wiz_read_buf.end:
	.global _wiz_read_buf;
	.type _wiz_read_buf,STT_FUNC;

	.align 2;
_sysinit:
.LN_sysinit:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 60 
//  Scratch registers used: {R0-R3,P0-P2,ASTAT0-ASTAT1,CC,AQ,LC0,LT0,LB0}
//  Call preserved registers used: {R4-R7,P3-P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1287
	LINK 24;
	[--SP] = (R7:4, P5:3);
	P0 = R0;
	SP += -12;
	R0 = -16384;
	P5.L = _SMASK;
	P5.H = _SMASK;
	P1 = R1;
	R2 = 1024;
	R1 = -32768;
	R7 = 0;
.LN161:
// line 1296
	W[P5 + 20] = R0;
	R6 = 0;
.LN162:
// line 1295
	W[P5 + 16] = R1;
	R4 = 0;
.LN163:
// line 1348
	W[SP + 40] = R2;
	R0 = 4096;
	R3 = 2048;
	R1 = 16384;
	R2 = 0;
.LN164:
// line 1356
	W[SP + 48] = R0;
	[FP + 16] = P5;
	[FP + 12] = P1;
	[FP + 8] = R2;
.LN165:
// line 1352
	W[SP + 44] = R3;
.LN166:
// line 1364
	W[SP + 52] = R1;
	R5 = 8192;
.LN167:
// line 1330
	R4.H = 4095;
.LN168:
// line 1326
	R5.H = 2047;
.LN169:
// line 1322
	R6.H = 1023;
	P3.L = _SBUFBASEADDRESS+2;
	P3.H = _SBUFBASEADDRESS+2;
	P4.L = _SSIZE+2;
	P4.H = _SSIZE+2;
	R0 = 16414;

.P77L2:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1298 col 3
//-------------------------------------------------------------------
	[SP + 60] = R0;
.LN170:
// line 1300
	R1 = B[P0++] (Z);
.LN171:
	R0 += 1;
.LN172:
	[SP + 56] = P0;
.LN173:
	CALL.X (_IINCHIP_WRITE);
	P1 = [FP + 12];
.LN174:
// line 1301
	R0 = [SP + 60];
	// -- 2 stalls --
.LN175:
	R1 = B[P1++] (Z);
	[FP + 12] = P1;
.LN176:
	CALL.X (_IINCHIP_WRITE);
.LN177:
// line 1316
	R3 = R4.L (X);
.LN178:
	R2 = 16384;
.LN179:
	CC = R3 <= R2;
.LN180:
// line 1313
	W[P5 + 8] = R7;
.LN181:
// line 1314
	W[P4 + 2] = R7;
.LN182:
// line 1316
	if !CC jump .P77L6 ;

.P77L4:
.LN183:
// line 1318
	NOP;                                    // Inserted to fix anomaly w_05000245_with_boundaries. 
	P1 = [SP + 56];
	P0.L = .SPSWITCH.7;
	P0.H = .SPSWITCH.7;
	// -- 2 stalls --
	R0 = B[P1 + -1] (Z);
	JUMP.X ___spswitch32;

.P77L8:
.LN184:
// line 1321
	R0 = [SP + 40];
.LN185:
// line 1322
	W[P5] = R6.H;
.LN186:
// line 1321
	W[P5 + 8] = R0;

.P77L6:
.LN187:
// line 1343
	R1 = R6.L (X);
.LN188:
	R0 = 16384;
.LN189:
	CC = R1 <= R0;
	if !CC jump .P77L15 ;

.P77L13:
.LN190:
// line 1345
	NOP;                                    // Inserted to fix anomaly w_05000245_with_boundaries. 
	P1 = [FP + 12];
	P0.L = .SPSWITCH.8;
	P0.H = .SPSWITCH.8;
	// -- 2 stalls --
	R0 = B[P1 + -1] (Z);
	JUMP.X ___spswitch32;

.P77L9:
.LN191:
// line 1325
	R0 = [SP + 44];
.LN192:
// line 1326
	W[P5] = R5.H;
.LN193:
// line 1325
	W[P5 + 8] = R0;
	jump.s .P77L6;

.P77L10:
.LN194:
// line 1329
	R0 = [SP + 48];
.LN195:
// line 1330
	W[P5] = R4.H;
.LN196:
// line 1329
	W[P5 + 8] = R0;
	jump.s .P77L6;

.P77L11:
	R0 = 8191;
.LN197:
// line 1333
	W[P5 + 8] = R5;
.LN198:
// line 1334
	W[P5] = R0.L;
	jump.s .P77L6;

.P77L12:
	R1 = 16383;
.LN199:
// line 1337
	R0 = [SP + 52];
.LN200:
// line 1338
	W[P5] = R1.L;
.LN201:
// line 1337
	W[P5 + 8] = R0;
	jump.s .P77L6;

.P77L17:
	R1 = 1023;
.LN202:
// line 1348
	R0 = [SP + 40];
.LN203:
// line 1349
	W[P5 + 4] = R1;
.LN204:
// line 1348
	W[P4 + 2] = R0;

.P77L15:
.LN205:
// line 1372
	R2 = [FP + 8];
.LN206:
// line 1369
	R0 = W[P5 + 8] (X);
.LN207:
// line 1372
	CC = R2 == 0;
.LN208:
// line 1370
	R1 = W[P4 + 2] (X);
.LN209:
// line 1369
	R4.L = R4.L + R0.L (NS);
.LN210:
// line 1370
	R6.L = R6.L + R1.L (NS);
	P5 += 2;
.LN211:
// line 1372
	if CC jump .P77L24 ;

.P77L22:
.LN212:
// line 1374
	NOP;                                    // Inserted to fix anomaly w_05000245_with_boundaries. 
.LN213:
// line 1375
	P1 = [FP + 16];
	R3 = W[P4] (X);
	// -- stall --
.LN214:
// line 1374
	R2 = W[P5 + 4] (X);
	R1 = W[P3 + -4] (X);
.LN215:
// line 1375
	R0 = W[P1 + 18] (X);
	R1 = R1 + R2;
	R0.L = R0.L + R3.L (NS);
.LN216:
// line 1374
	W[P3 + -2] = R1;
.LN217:
// line 1375
	W[P1 + 20] = R0;

.P77L24:
	R1 = [FP + 8];
.LN218:
// line 1298
	R1 += 1;
.LN219:
// line 1301
	R0 = 256;
.LN220:
	R2 = [SP + 60];
.LN221:
// line 1298
	CC = R1 < 2;
	[FP + 16] = P5;
	[FP + 8] = R1;
.LN222:
// line 1301
	R0 = R2 + R0;
	P4 += 2;
	P3 += 2;
	P0 = [SP + 56];
.LN223:
// line 1298
	if CC jump .P77L2 ;
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P77L30:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN224:
// line 1400
	SP += 12;
	(R7:4, P5:3) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P77L18:
//-------------------------------------------------------------------
//   Part of Loop 2, depth 1
//-------------------------------------------------------------------
	R1 = 2047;
.LN225:
// line 1352
	R0 = [SP + 44];
.LN226:
// line 1353
	W[P5 + 4] = R1;
.LN227:
// line 1352
	W[P4 + 2] = R0;
	jump.s .P77L15;

.P77L19:
	R1 = 4095;
.LN228:
// line 1356
	R0 = [SP + 48];
.LN229:
// line 1357
	W[P5 + 4] = R1;
.LN230:
// line 1356
	W[P4 + 2] = R0;
	jump.s .P77L15;

.P77L20:
	R0 = 8191;
.LN231:
// line 1360
	W[P4 + 2] = R5;
.LN232:
// line 1361
	W[P5 + 4] = R0;
	jump.s .P77L15;

.P77L21:
	R1 = 16383;
.LN233:
// line 1364
	R0 = [SP + 52];
.LN234:
// line 1365
	W[P5 + 4] = R1;
.LN235:
// line 1364
	W[P4 + 2] = R0;
	jump.s .P77L15;
.LN._sysinit.end:
._sysinit.end:
	.global _sysinit;
	.type _sysinit,STT_FUNC;

	.align 2;
_setGAR:
.LN_setGAR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R1}
//  Call preserved registers used: {P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1410
	LINK 16;
	[SP + 12] = P5;
	P5 = R0;
.LN236:
// line 1411
	R0 = 1;
	// -- 3 stalls --
.LN237:
	R1 = B[P5++] (Z);
.LN238:
	CALL.X (_IINCHIP_WRITE);
.LN239:
// line 1412
	R1 = B[P5++] (Z);
.LN240:
	R0 = 2;
	CALL.X (_IINCHIP_WRITE);
.LN241:
// line 1413
	R1 = B[P5++] (Z);
.LN242:
	R0 = 3;
	CALL.X (_IINCHIP_WRITE);
.LN243:
// line 1414
	R1 = B[P5] (Z);
.LN244:
	R0 = 4;
	CALL.X (_IINCHIP_WRITE);
.LN245:
// line 1415
	P5 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setGAR.end:
._setGAR.end:
	.global _setGAR;
	.type _setGAR,STT_FUNC;

	.align 2;
_setSUBR:
.LN_setSUBR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R1}
//  Call preserved registers used: {P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1441
	LINK 16;
	[SP + 12] = P5;
	P5.L = _SUBNET;
	P5.H = _SUBNET;
.LN246:
// line 1442
	R1 = B[P5++] (Z);
.LN247:
	R0 = 5;
	CALL.X (_IINCHIP_WRITE);
.LN248:
// line 1443
	R1 = B[P5++] (Z);
.LN249:
	R0 = 6;
	CALL.X (_IINCHIP_WRITE);
.LN250:
// line 1444
	R1 = B[P5++] (Z);
.LN251:
	R0 = 7;
	CALL.X (_IINCHIP_WRITE);
.LN252:
// line 1445
	R1 = B[P5] (Z);
.LN253:
	R0 = 8;
	CALL.X (_IINCHIP_WRITE);
.LN254:
// line 1446
	P5 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setSUBR.end:
._setSUBR.end:
	.global _setSUBR;
	.type _setSUBR,STT_FUNC;

	.align 2;
_clearSUBR:
.LN_clearSUBR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0-R1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1449
	LINK 12;
.LN255:
// line 1450
	R1 = 0;
	R0 = 5;
	CALL.X (_IINCHIP_WRITE);
.LN256:
// line 1451
	R1 = 0;
	R0 = 6;
	CALL.X (_IINCHIP_WRITE);
.LN257:
// line 1452
	R1 = 0;
	R0 = 7;
	CALL.X (_IINCHIP_WRITE);
.LN258:
// line 1453
	R1 = 0;
	R0 = 8;
	CALL.X (_IINCHIP_WRITE);
.LN259:
// line 1454
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._clearSUBR.end:
._clearSUBR.end:
	.global _clearSUBR;
	.type _clearSUBR,STT_FUNC;

	.align 2;
_setSHAR:
.LN_setSHAR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R1}
//  Call preserved registers used: {P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1463
	LINK 16;
	[SP + 12] = P5;
	P5 = R0;
.LN260:
// line 1464
	R0 = 9;
	// -- 3 stalls --
.LN261:
	R1 = B[P5++] (Z);
.LN262:
	CALL.X (_IINCHIP_WRITE);
.LN263:
// line 1465
	R1 = B[P5++] (Z);
.LN264:
	R0 = 10;
	CALL.X (_IINCHIP_WRITE);
.LN265:
// line 1466
	R1 = B[P5++] (Z);
.LN266:
	R0 = 11;
	CALL.X (_IINCHIP_WRITE);
.LN267:
// line 1467
	R1 = B[P5++] (Z);
.LN268:
	R0 = 12;
	CALL.X (_IINCHIP_WRITE);
.LN269:
// line 1468
	R1 = B[P5++] (Z);
.LN270:
	R0 = 13;
	CALL.X (_IINCHIP_WRITE);
.LN271:
// line 1469
	R1 = B[P5] (Z);
.LN272:
	R0 = 14;
	CALL.X (_IINCHIP_WRITE);
.LN273:
// line 1470
	P5 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setSHAR.end:
._setSHAR.end:
	.global _setSHAR;
	.type _setSHAR,STT_FUNC;

	.align 2;
_setSIPR:
.LN_setSIPR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R1}
//  Call preserved registers used: {P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1478
	LINK 16;
	[SP + 12] = P5;
	P5 = R0;
.LN274:
// line 1479
	R0 = 15;
	// -- 3 stalls --
.LN275:
	R1 = B[P5++] (Z);
.LN276:
	CALL.X (_IINCHIP_WRITE);
.LN277:
// line 1480
	R1 = B[P5++] (Z);
.LN278:
	R0 = 16;
	CALL.X (_IINCHIP_WRITE);
.LN279:
// line 1481
	R1 = B[P5++] (Z);
.LN280:
	R0 = 17;
	CALL.X (_IINCHIP_WRITE);
.LN281:
// line 1482
	R1 = B[P5] (Z);
.LN282:
	R0 = 18;
	CALL.X (_IINCHIP_WRITE);
.LN283:
// line 1483
	P5 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setSIPR.end:
._setSIPR.end:
	.global _setSIPR;
	.type _setSIPR,STT_FUNC;

	.align 2;
_getGAR:
.LN_getGAR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0}
//  Call preserved registers used: {P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1489
	LINK 16;
	[SP + 12] = P5;
	P5 = R0;
.LN284:
// line 1490
	R0 = 1;
	CALL.X (_IINCHIP_READ);
	// -- 2 stalls --
.LN285:
	B[P5++] = R0;
.LN286:
// line 1491
	R0 = 2;
	CALL.X (_IINCHIP_READ);
.LN287:
	B[P5++] = R0;
.LN288:
// line 1492
	R0 = 3;
	CALL.X (_IINCHIP_READ);
.LN289:
	B[P5++] = R0;
.LN290:
// line 1493
	R0 = 4;
	CALL.X (_IINCHIP_READ);
.LN291:
	B[P5] = R0;
.LN292:
// line 1494
	P5 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getGAR.end:
._getGAR.end:
	.global _getGAR;
	.type _getGAR,STT_FUNC;

	.align 2;
_getSHAR:
.LN_getSHAR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0}
//  Call preserved registers used: {P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1503
	LINK 16;
	[SP + 12] = P5;
	P5 = R0;
.LN293:
// line 1504
	R0 = 9;
	CALL.X (_IINCHIP_READ);
	// -- 2 stalls --
.LN294:
	B[P5++] = R0;
.LN295:
// line 1505
	R0 = 10;
	CALL.X (_IINCHIP_READ);
.LN296:
	B[P5++] = R0;
.LN297:
// line 1506
	R0 = 11;
	CALL.X (_IINCHIP_READ);
.LN298:
	B[P5++] = R0;
.LN299:
// line 1507
	R0 = 12;
	CALL.X (_IINCHIP_READ);
.LN300:
	B[P5++] = R0;
.LN301:
// line 1508
	R0 = 13;
	CALL.X (_IINCHIP_READ);
.LN302:
	B[P5++] = R0;
.LN303:
// line 1509
	R0 = 14;
	CALL.X (_IINCHIP_READ);
.LN304:
	B[P5] = R0;
.LN305:
// line 1510
	P5 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getSHAR.end:
._getSHAR.end:
	.global _getSHAR;
	.type _getSHAR,STT_FUNC;

	.align 2;
_getSIPR:
.LN_getSIPR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0}
//  Call preserved registers used: {P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1512
	LINK 16;
	[SP + 12] = P5;
	P5 = R0;
.LN306:
// line 1513
	R0 = 15;
	CALL.X (_IINCHIP_READ);
	// -- 2 stalls --
.LN307:
	B[P5++] = R0;
.LN308:
// line 1514
	R0 = 16;
	CALL.X (_IINCHIP_READ);
.LN309:
	B[P5++] = R0;
.LN310:
// line 1515
	R0 = 17;
	CALL.X (_IINCHIP_READ);
.LN311:
	B[P5++] = R0;
.LN312:
// line 1516
	R0 = 18;
	CALL.X (_IINCHIP_READ);
.LN313:
	B[P5] = R0;
.LN314:
// line 1517
	P5 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getSIPR.end:
._getSIPR.end:
	.global _getSIPR;
	.type _getSIPR,STT_FUNC;

	.align 2;
_setMR:
.LN_setMR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0-R1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1520
	R1 = R0;
	LINK 12;
.LN315:
// line 1521
	R0 = 0;
	CALL.X (_IINCHIP_WRITE);
.LN316:
// line 1522
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setMR.end:
._setMR.end:
	.global _setMR;
	.type _setMR,STT_FUNC;

	.align 2;
_iinchip_init:
.LN_iinchip_init:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1260
	LINK 12;
.LN317:
// line 1261
	R0 = 128;
	CALL.X (_setMR);
.LN318:
// line 1263
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._iinchip_init.end:
._iinchip_init.end:
	.global _iinchip_init;
	.type _iinchip_init,STT_FUNC;

	.align 2;
_getIR:
.LN_getIR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1528
	LINK 12;
.LN319:
// line 1529
	R0 = 21;
	CALL.X (_IINCHIP_READ);
.LN320:
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getIR.end:
._getIR.end:
	.global _getIR;
	.type _getIR,STT_FUNC;

	.align 2;
_setRTR:
.LN_setRTR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R1,ASTAT0-ASTAT1}
//  Call preserved registers used: {R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN321:
// line "..\BFcom\W5200.c":1545
	R1 = 65280 (Z);
.LN322:
// line 1544
	LINK 16;
.LN323:
// line 1545
	R1 = R0 & R1;
.LN324:
// line 1544
	[SP + 12] = R7;
.LN325:
// line 1545
	R1 >>>= 8;
.LN326:
// line 1544
	R7 = R0.b (Z);
.LN327:
// line 1545
	R0 = 23;
	CALL.X (_IINCHIP_WRITE);
.LN328:
// line 1546
	R1 = R7;
	R0 = 24;
	CALL.X (_IINCHIP_WRITE);
.LN329:
// line 1547
	R7 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setRTR.end:
._setRTR.end:
	.global _setRTR;
	.type _setRTR,STT_FUNC;

	.align 2;
_setRCR:
.LN_setRCR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0-R1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1556
	R1 = R0;
	LINK 12;
.LN330:
// line 1557
	R0 = 25;
	CALL.X (_IINCHIP_WRITE);
.LN331:
// line 1558
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setRCR.end:
._setRCR.end:
	.global _setRCR;
	.type _setRCR,STT_FUNC;

	.align 2;
_setIMR:
.LN_setIMR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0-R1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1570
	R1 = R0;
	LINK 12;
.LN332:
// line 1571
	R0 = 22;
	CALL.X (_IINCHIP_WRITE);
.LN333:
// line 1572
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setIMR.end:
._setIMR.end:
	.global _setIMR;
	.type _setIMR,STT_FUNC;

	.align 2;
_setSn_MSS:
.LN_setSn_MSS:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 16 
//  Scratch registers used: {R0-R2,ASTAT0-ASTAT1}
//  Call preserved registers used: {R6-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN334:
// line "..\BFcom\W5200.c":1579
	R0.L = R0.L << 8;
	R0.H = 16402;
.LN335:
// line 1578
	LINK 0;
.LN336:
// line 1579
	R2.L = R0.L + R0.H (NS);
.LN337:
// line 1580
	R0.H = 16403;
.LN338:
// line 1578
	[--SP] = (R7:6);
.LN339:
// line 1580
	R6.L = R0.L + R0.H (NS);
.LN340:
// line 1579
	R0 = R2.L (Z);
	R2 = 65280 (Z);
	R2 = R1 & R2;
.LN341:
// line 1578
	R7 = R1.b (Z);
	SP += -12;
.LN342:
// line 1579
	R1 = R2 >>> 8;
.LN343:
	CALL.X (_IINCHIP_WRITE);
.LN344:
// line 1580
	R1 = R7;
.LN345:
	R0 = R6.L (Z);
.LN346:
	CALL.X (_IINCHIP_WRITE);
.LN347:
// line 1581
	SP += 12;
	(R7:6) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setSn_MSS.end:
._setSn_MSS.end:
	.global _setSn_MSS;
	.type _setSn_MSS,STT_FUNC;

	.align 2;
_setSn_TTL:
.LN_setSn_TTL:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN348:
// line "..\BFcom\W5200.c":1585
	R0.L = R0.L << 8;
	R0.H = 16406;
	R0.L = R0.L + R0.H (NS);
.LN349:
// line 1584
	LINK 12;
.LN350:
// line 1585
	R0 = R0.L (Z);
.LN351:
	CALL.X (_IINCHIP_WRITE);
.LN352:
// line 1586
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setSn_TTL.end:
._setSn_TTL.end:
	.global _setSn_TTL;
	.type _setSn_TTL,STT_FUNC;

	.align 2;
_setSn_PROTO:
.LN_setSn_PROTO:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN353:
// line "..\BFcom\W5200.c":1595
	R0.L = R0.L << 8;
	R0.H = 16404;
	R0.L = R0.L + R0.H (NS);
.LN354:
// line 1594
	LINK 12;
.LN355:
// line 1595
	R0 = R0.L (Z);
.LN356:
	CALL.X (_IINCHIP_WRITE);
.LN357:
// line 1596
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._setSn_PROTO.end:
._setSn_PROTO.end:
	.global _setSn_PROTO;
	.type _setSn_PROTO,STT_FUNC;

	.align 2;
_getSn_IR:
.LN_getSn_IR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN358:
// line "..\BFcom\W5200.c":1606
	R0.L = R0.L << 8;
	R0.H = 16386;
	R0.L = R0.L + R0.H (NS);
.LN359:
// line 1605
	LINK 12;
.LN360:
// line 1606
	R0 = R0.L (Z);
.LN361:
	CALL.X (_IINCHIP_READ);
.LN362:
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getSn_IR.end:
._getSn_IR.end:
	.global _getSn_IR;
	.type _getSn_IR,STT_FUNC;

	.align 2;
_connect:
.LN_connect:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 36 
//  Scratch registers used: {R0-R3,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":819
	LINK 8;
	[--SP] = (R7:4, P5:5);
	SP += -12;
	R6.L = .s.2;
	R6.H = .s.2;
	[SP + 52] = R0;
	R7 = R0;
	P5 = R1;
.LN363:
// line 822
	R0 = R6;
.LN364:
// line 819
	[SP + 36] = R2;
.LN365:
// line 822
	CALL.X (_put_str1);
	R0 = R6;
	R0 += 44;
.LN366:
// line 823
	CALL.X (_put_str1);
.LN367:
// line 825
	R0 = B[P5] (Z);
	R1 = 255;
	CC = R0 == R1;
	if CC jump .P97L8 ;

.P97L5:
	CC = R0 == 0;
	if CC jump .P97L11 ;

.P97L4:
	R0 = [SP + 36];
	CC = R0 == 0;
	if CC jump .P97L1 ;

.P97L2:
.LN368:
// line 839
	R7.H = R7.L << 8;
	R1 = 16397;
.LN369:
// line 846
	R3.H = 16385;
.LN370:
// line 840
	R4.L = R7.H + R1.L (NS);
.LN371:
// line 843
	R3.L = 16400;
	R2 = 16401;
.LN372:
// line 846
	R1.L = R7.H + R3.H (NS);
.LN373:
// line 843
	R7.L = R7.H + R3.L (NS);
.LN374:
// line 844
	R2.L = R7.H + R2.L (NS);
.LN375:
// line 846
	R3 = R1.L (Z);
.LN376:
// line 842
	R2.H = 16399;
	R0 = 16396;
.LN377:
// line 844
	W[FP + 16] = R2;
.LN378:
// line 842
	R6.L = R7.H + R2.H (NS);
.LN379:
// line 846
	[SP + 48] = R3;
.LN380:
// line 839
	R0.L = R7.H + R0.L (NS);
.LN381:
// line 843
	R2 = [SP + 36];
	R3 = 65280 (Z);
.LN382:
// line 841
	R1.H = 16398;
.LN383:
// line 843
	R3 = R2 & R3;
.LN384:
// line 841
	R5.L = R7.H + R1.H (NS);
.LN385:
// line 839
	R1 = B[P5++] (Z);
	R0 = R0.L (Z);
.LN386:
// line 843
	[SP + 32] = R3;
.LN387:
// line 839
	CALL.X (_IINCHIP_WRITE);
.LN388:
// line 840
	R0 = R4.L (Z);
	R1 = B[P5++] (Z);
.LN389:
	CALL.X (_IINCHIP_WRITE);
.LN390:
// line 841
	R0 = R5.L (Z);
	R1 = B[P5++] (Z);
.LN391:
	CALL.X (_IINCHIP_WRITE);
.LN392:
// line 842
	R1 = B[P5] (Z);
	R0 = R6.L (Z);
.LN393:
	CALL.X (_IINCHIP_WRITE);
.LN394:
// line 843
	R5 = [SP + 32];
	R1 = R5 >>> 8;
	R0 = R7.L (Z);
.LN395:
	CALL.X (_IINCHIP_WRITE);
.LN396:
// line 819
	R3 = [SP + 36];
.LN397:
// line 844
	R2 = [SP + 56];
.LN398:
// line 819
	R1 = R3.b (Z);
.LN399:
// line 844
	R0 = R2.L (Z);
.LN400:
	CALL.X (_IINCHIP_WRITE);
.LN401:
// line 845
	CALL.X (_setSUBR);
.LN402:
// line 846
	R0 = [SP + 48];
	R1 = 4;
	CALL.X (_IINCHIP_WRITE);

.P97L12:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 848 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     Group 1             used   4 out of    8 ( 50.0%)
//     16-bit Instruction  used   7 out of   16 ( 43.8%)
//     32-bit Instruction  used   3 out of    8 ( 37.5%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN403:
// line 848
	R0 = [SP + 48];
	CALL.X (_IINCHIP_READ);
.LN404:
	CC = R0 == 0;
	if !CC jump .P97L12 (bp);
//-------------------------------------------------------------------
//   End Loop L12
//-------------------------------------------------------------------

.P97L29:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0 = 16387;
.LN405:
// line 849
	R0.L = R7.H + R0.L (NS);
	R6 = R0.L (Z);
	R4 = 21;
.LN406:
// line 851
	R5 = 23;

.P97L15:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 849 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 16 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     Group 1             used  12 out of   16 ( 75.0%)
//     16-bit Instruction  used  23 out of   32 ( 71.9%)
//     32-bit Instruction  used  11 out of   16 ( 68.8%)
//-------------------------------------------------------------------
//  Jumps out of this loop prevent efficient hardware loop generation.
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN407:
// line 849
	R0 = R6;
	CALL.X (_IINCHIP_READ);
.LN408:
	CC = R0 == R4;
	if CC jump .P97L36 ;

.P97L17:
.LN409:
// line 851
	R0 = R6;
	CALL.X (_IINCHIP_READ);
.LN410:
	CC = R0 == R5;
	if CC jump .P97L35 ;

.P97L19:
.LN411:
// line 855
	R0 = [SP + 52];
	CALL.X (_getSn_IR);
.LN412:
	CC = BITTST(R0, 3);
	if !CC jump .P97L15 (bp);
//-------------------------------------------------------------------
//   End Loop L15
//-------------------------------------------------------------------

.P97L23:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0 = 16386;
.LN413:
// line 857
	R0.L = R7.H + R0.L (NS);
	R0 = R0.L (Z);
.LN414:
	R1 = 8;
	CALL.X (_IINCHIP_WRITE);
	R7 = 0;

.P97L21:
.LN415:
// line 862
	CALL.X (_clearSUBR);

.P97L3:
.LN416:
// line 866
	SP += 12;
	R0 = R7.b (Z);
	(R7:4, P5:5) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P97L35:
	R7 = 1;
	jump.s .P97L21;

.P97L36:
	R7 = 1;
	jump.s .P97L21;

.P97L11:
.LN417:
// line 825
	R0 = B[P5 + 1] (Z);
	CC = R0 == 0;
	if !CC jump .P97L4 (bp);

.P97L10:
	R0 = B[P5 + 2] (Z);
	CC = R0 == 0;
	if !CC jump .P97L4 (bp);

.P97L9:
	R0 = B[P5 + 3] (Z);
	CC = R0 == 0;
	if !CC jump .P97L4 (bp);

.P97L1:
	R0.L = .sFailin.5;
	R0.H = .sFailin.5;
.LN418:
// line 833
	CALL.X (_put_str1);
	R7 = 0;
	jump.s .P97L3;

.P97L8:
.LN419:
// line 825
	R2 = B[P5 + 1] (Z);
	CC = R2 == R1;
	if !CC jump .P97L5 (bp);

.P97L7:
	R2 = B[P5 + 2] (Z);
	CC = R2 == R1;
	if !CC jump .P97L5 (bp);

.P97L6:
	R2 = B[P5 + 3] (Z);
	CC = R2 == R1;
	if !CC jump .P97L5 (bp);

.P97L43:
	jump.s .P97L1;
.LN._connect.end:
._connect.end:
	.global _connect;
	.type _connect,STT_FUNC;

	.align 2;
_getSn_SR:
.LN_getSn_SR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN420:
// line "..\BFcom\W5200.c":1615
	R0.L = R0.L << 8;
	R0.H = 16387;
	R0.L = R0.L + R0.H (NS);
.LN421:
// line 1614
	LINK 12;
.LN422:
// line 1615
	R0 = R0.L (Z);
.LN423:
	CALL.X (_IINCHIP_READ);
.LN424:
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getSn_SR.end:
._getSn_SR.end:
	.global _getSn_SR;
	.type _getSn_SR,STT_FUNC;

	.align 2;
_getSn_TX_FSR:
.LN_getSn_TX_FSR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0,R1.L,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN425:
// line "..\BFcom\W5200.c":1630
	R0.L = R0.L << 8;
	R0.H = 16416;
	R1.L = R0.L + R0.H (NS);
.LN426:
// line 1626
	LINK 0;
.LN427:
// line 1631
	R0.H = 16417;
.LN428:
// line 1626
	[--SP] = (R7:4);
.LN429:
// line 1631
	R0.L = R0.L + R0.H (NS);
.LN430:
// line 1626
	SP += -12;
.LN431:
// line 1630
	R7 = R1.L (Z);
.LN432:
// line 1631
	R5 = R0.L (Z);
	R4 = 0;

.P99L1:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1628 col 2
//-------------------------------------------------------------------
.LN433:
// line 1630
	R0 = R7;
	CALL.X (_IINCHIP_READ);
	R6 = R0;
.LN434:
// line 1631
	R6 <<= 8;
.LN435:
	R0 = R5;
	CALL.X (_IINCHIP_READ);
.LN436:
	R6 = R0 + R6;
.LN437:
// line 1632
	CC = R6 == 0;
	if CC jump .P99L4 (bp);

.P99L2:
.LN438:
// line 1634
	R0 = R7;
	CALL.X (_IINCHIP_READ);
.LN439:
// line 1635
	R4.H = R0.L << 8;
.LN440:
	R0 = R5;
	CALL.X (_IINCHIP_READ);
.LN441:
	R4.L = R0.L + R4.H (NS);

.P99L4:
.LN442:
// line 1637
	R0 = R4.L (Z);
	CC = R6 == R0;
	if !CC jump .P99L1 (bp);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P99L5:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN443:
// line 1638
	SP += 12;
	R0 = R4.L (Z);
	(R7:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getSn_TX_FSR.end:
._getSn_TX_FSR.end:
	.global _getSn_TX_FSR;
	.type _getSn_TX_FSR,STT_FUNC;

	.align 2;
_getSn_RX_RSR:
.LN_getSn_RX_RSR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0,R1.L,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN444:
// line "..\BFcom\W5200.c":1652
	R0.L = R0.L << 8;
	R0.H = 16422;
	R1.L = R0.L + R0.H (NS);
.LN445:
// line 1648
	LINK 0;
.LN446:
// line 1653
	R0.H = 16423;
.LN447:
// line 1648
	[--SP] = (R7:4);
.LN448:
// line 1653
	R0.L = R0.L + R0.H (NS);
.LN449:
// line 1648
	SP += -12;
.LN450:
// line 1652
	R7 = R1.L (Z);
.LN451:
// line 1653
	R5 = R0.L (Z);
	R4 = 0;

.P100L1:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1650 col 2
//-------------------------------------------------------------------
.LN452:
// line 1652
	R0 = R7;
	CALL.X (_IINCHIP_READ);
	R6 = R0;
.LN453:
// line 1653
	R6 <<= 8;
.LN454:
	R0 = R5;
	CALL.X (_IINCHIP_READ);
.LN455:
	R6 = R0 + R6;
.LN456:
// line 1654
	CC = R6 == 0;
	if CC jump .P100L4 (bp);

.P100L2:
.LN457:
// line 1656
	R0 = R7;
	CALL.X (_IINCHIP_READ);
.LN458:
// line 1657
	R4.H = R0.L << 8;
.LN459:
	R0 = R5;
	CALL.X (_IINCHIP_READ);
.LN460:
	R4.L = R0.L + R4.H (NS);

.P100L4:
.LN461:
// line 1659
	R0 = R4.L (Z);
	CC = R6 == R0;
	if !CC jump .P100L1 (bp);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P100L5:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN462:
// line 1660
	SP += 12;
	R0 = R4.L (Z);
	(R7:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._getSn_RX_RSR.end:
._getSn_RX_RSR.end:
	.global _getSn_RX_RSR;
	.type _getSn_RX_RSR,STT_FUNC;

	.align 2;
_write_data:
.LN_write_data:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R3,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1719
	LINK 0;
	[--SP] = (R7:4);
	SP += -12;
	R3 = R2;
	[SP + 36] = R0;
	R5 = R0;
	R2 = R0;
.LN463:
// line 1724
	CALL.X (_getIINCHIP_TxMASK);
.LN464:
	R3 = R0 & R3;
.LN465:
// line 1725
	R0 = R5;
	CALL.X (_getIINCHIP_TxBASE);
.LN466:
// line 1719
	R7 = [SP + 48];
	R5 = R3 + R0;
	R4 = R7 + R3;
.LN467:
// line 1727
	R0 = R2;
	CALL.X (_getIINCHIP_TxMAX);
.LN468:
	R4 = R4.L (Z);
	CC = R0 < R4;
	R6 = R1;
.LN469:
// line 1725
	R5 = R5.L (Z);
.LN470:
// line 1727
	if CC jump .P101L1 ;

.P101L2:
.LN471:
// line 1738
	R0 = R5;
	R2 = [SP + 48];
	CALL.X (_wiz_write_buf);

.P101L3:
.LN472:
// line 1740
	SP += 12;
	(R7:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P101L1:
	R3 = R0 - R3;
.LN473:
// line 1729
	R4 = R3.L (Z);
.LN474:
// line 1730
	R0 = R5;
	R2 = R4;
	R7 = R7 - R3;
	CALL.X (_wiz_write_buf);
.LN475:
// line 1733
	R0 = [SP + 36];
.LN476:
// line 1731
	R1 = R6 + R4;
.LN477:
// line 1733
	CALL.X (_getIINCHIP_TxBASE);
.LN478:
// line 1732
	R2 = R7.L (Z);
.LN479:
// line 1734
	CALL.X (_wiz_write_buf);
	jump.s .P101L3;
.LN._write_data.end:
._write_data.end:
	.global _write_data;
	.type _write_data,STT_FUNC;

	.align 2;
_send_data_processing:
.LN_send_data_processing:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R3,ASTAT0-ASTAT1}
//  Call preserved registers used: {R4-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1671
	LINK 0;
	[--SP] = (R7:4);
	SP += -16;
	[SP + 44] = R1;
	R1 = R0 << 8;
.LN480:
// line 1674
	R1.H = 16420;
.LN481:
// line 1671
	R7 = R2;
.LN482:
// line 1674
	R2.L = R1.L + R1.H (NS);
	[SP + 40] = R0;
.LN483:
// line 1675
	R2.H = 16421;
.LN484:
// line 1674
	R6 = R2.L (Z);
.LN485:
// line 1675
	R3.L = R1.L + R2.H (NS);
.LN486:
// line 1674
	R0 = R6;
.LN487:
// line 1675
	R4 = R3.L (Z);
.LN488:
// line 1674
	CALL.X (_IINCHIP_READ);
	R5 = R0;
.LN489:
// line 1675
	R0 = R4;
	CALL.X (_IINCHIP_READ);
.LN490:
	R5 <<= 8;
	R2 = R0 + R5;
.LN491:
// line 1676
	[SP + 12] = R7;
	R5 = R7 + R2;
	R1 = [SP + 44];
	R0 = [SP + 40];
	CALL.X (_write_data);
.LN492:
// line 1679
	R3 = 65280 (Z);
	R3 = R5 & R3;
.LN493:
	R0 = R6;
.LN494:
	R1 = R3 >>> 8;
.LN495:
	CALL.X (_IINCHIP_WRITE);
	R1 = R5.b (Z);
.LN496:
// line 1680
	R0 = R4;
	CALL.X (_IINCHIP_WRITE);
.LN497:
// line 1682
	SP += 16;
	(R7:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._send_data_processing.end:
._send_data_processing.end:
	.global _send_data_processing;
	.type _send_data_processing,STT_FUNC;

	.align 2;
_sendto:
.LN_sendto:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 44 
//  Scratch registers used: {R0-R3,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1008
	LINK 16;
	[--SP] = (R7:4, P5:5);
	SP += -12;
	P5 = [FP + 20];
	[SP + 40] = R1;
	R1 = R0;
	[SP + 44] = R0;
.LN498:
// line 1012
	CALL.X (_getIINCHIP_TxMAX);
.LN499:
// line 1015
	R3 = B[P5] (Z);
	R2 = MIN(R0, R2);
	CC = R3 == 0;
	[FP + 16] = R2;
	if CC jump .P103L11 ;

.P103L8:
.LN500:
	R0 = [FP + 24];
.LN501:
	CC = R0 == 0;
	R2 = 0;
	if CC jump .P103L6 ;

.P103L7:
	R0 = [FP + 16];
	R0 = R0.L (Z);
	CC = R0 == 0;
	[SP + 60] = R0;
	if CC jump .P103L6 ;

.P103L5:
.LN502:
// line 1027
	R7.H = R1.L << 8;
.LN503:
// line 1029
	R2.H = 16398;
	R1 = 16401;
	R5.L = R7.H + R2.H (NS);
	R3 = 16399;
.LN504:
// line 1032
	R2.L = R7.H + R1.L (NS);
.LN505:
// line 1036
	R2.H = 16385;
.LN506:
// line 1028
	R1.H = 16397;
	R0 = 16396;
.LN507:
// line 1030
	R6.L = R7.H + R3.L (NS);
.LN508:
// line 1032
	W[SP + 32] = R2;
.LN509:
// line 1036
	R3.L = R7.H + R2.H (NS);
.LN510:
// line 1028
	R4.L = R7.H + R1.H (NS);
.LN511:
// line 1031
	R1 = [FP + 24];
.LN512:
	R3.H = 16400;
	R2 = 65280 (Z);
.LN513:
// line 1027
	R0.L = R7.H + R0.L (NS);
.LN514:
// line 1031
	R7.L = R7.H + R3.H (NS);
	R2 = R1 & R2;
.LN515:
// line 1036
	R3 = R3.L (Z);
.LN516:
// line 1027
	R0 = R0.L (Z);
	R1 = B[P5++] (Z);
.LN517:
// line 1036
	[SP + 56] = R3;
.LN518:
// line 1031
	[SP + 36] = R2;
.LN519:
// line 1027
	CALL.X (_IINCHIP_WRITE);
.LN520:
// line 1028
	R0 = R4.L (Z);
	R1 = B[P5++] (Z);
.LN521:
	CALL.X (_IINCHIP_WRITE);
.LN522:
// line 1029
	R0 = R5.L (Z);
	R1 = B[P5++] (Z);
.LN523:
	CALL.X (_IINCHIP_WRITE);
.LN524:
// line 1030
	R1 = B[P5] (Z);
	R0 = R6.L (Z);
.LN525:
	CALL.X (_IINCHIP_WRITE);
.LN526:
// line 1031
	R2 = [SP + 36];
	R1 = R2 >>> 8;
.LN527:
// line 1008
	R5 = [FP + 24];
.LN528:
// line 1031
	R0 = R7.L (Z);
.LN529:
	CALL.X (_IINCHIP_WRITE);
.LN530:
// line 1032
	R3 = [SP + 32];
.LN531:
// line 1008
	R1 = R5.b (Z);
.LN532:
// line 1032
	R0 = R3.L (Z);
.LN533:
	CALL.X (_IINCHIP_WRITE);
.LN534:
// line 1034
	R2 = [SP + 60];
	R1 = [SP + 40];
	R0 = [SP + 44];
	CALL.X (_send_data_processing);
.LN535:
// line 1035
	CALL.X (_setSUBR);
.LN536:
// line 1036
	R0 = [SP + 56];
	R1 = 32;
	CALL.X (_IINCHIP_WRITE);

.P103L12:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1038 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     Group 1             used   4 out of    8 ( 50.0%)
//     16-bit Instruction  used   7 out of   16 ( 43.8%)
//     32-bit Instruction  used   3 out of    8 ( 37.5%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN537:
// line 1038
	R0 = [SP + 56];
	CALL.X (_IINCHIP_READ);
.LN538:
	CC = R0 == 0;
	if !CC jump .P103L12 (bp);
//-------------------------------------------------------------------
//   End Loop L12
//-------------------------------------------------------------------

.P103L25:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0 = 16386;
.LN539:
// line 1042
	R0.L = R7.H + R0.L (NS);
	R7 = R0.L (Z);
	R6 = 16;

.P103L15:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1042 col 5
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 13 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used  18 out of   26 ( 69.2%)
//     32-bit Instruction  used   9 out of   13 ( 69.2%)
//     Group 1             used   9 out of   13 ( 69.2%)
//-------------------------------------------------------------------
//  Jumps out of this loop prevent efficient hardware loop generation.
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN540:
	R0 = R7;
	CALL.X (_IINCHIP_READ);
.LN541:
	R0 = R0 & R6;
	CC = R0 == R6;
	if CC jump .P103L16 ;

.P103L17:
.LN542:
// line 1044
	R0 = R7;
	CALL.X (_IINCHIP_READ);
.LN543:
	CC = BITTST(R0, 3);
	if !CC jump .P103L15 (bp);
//-------------------------------------------------------------------
//   End Loop L15
//-------------------------------------------------------------------

.P103L18:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN544:
// line 1048
	R0 = R7;
	R1 = 24;
	CALL.X (_IINCHIP_WRITE);
	R0 = 0;

.P103L21:
.LN545:
// line 1057
	SP += 12;
	(R7:4, P5:5) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P103L16:
.LN546:
// line 1053
	CALL.X (_clearSUBR);
.LN547:
// line 1054
	R0 = R7;
	R1 = 16;
	CALL.X (_IINCHIP_WRITE);
	R2 = [FP + 16];

.P103L6:
.LN548:
// line 1056
	R0 = R2.L (Z);
	jump.s .P103L21;

.P103L11:
.LN549:
// line 1015
	R0 = B[P5 + 1] (Z);
	CC = R0 == 0;
	if !CC jump .P103L8 (bp);

.P103L10:
	R0 = B[P5 + 2] (Z);
	CC = R0 == 0;
	if !CC jump .P103L8 (bp);

.P103L9:
	R0 = B[P5 + 3] (Z);
	CC = R0 == 0;
	R2 = 0;
	if !CC jump .P103L8 (bp);

.P103L33:
	jump.s .P103L6;
.LN._sendto.end:
._sendto.end:
	.global _sendto;
	.type _sendto,STT_FUNC;

	.align 2;
_send:
.LN_send:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 28 
//  Scratch registers used: {R0-R2,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":892
	LINK 4;
	[--SP] = (R7:4);
	SP += -12;
	R4 = [SP + 52];
.LN550:
// line 901
	CC = R4 == 0;
.LN551:
// line 892
	[SP + 48] = R1;
	[SP + 28] = R0;
	R7 = R0;
	R6 = 0;
.LN552:
// line 901
	if !CC jump .P104L3 ;

.P104L2:
	R1 = R7 << 8;
.LN553:
// line 903
	CALL.X (_getIINCHIP_TxMAX);
.LN554:
// line 910
	R1.H = 16387;
	R6 = MIN(R0, R2);
	R1.L = R1.L + R1.H (NS);
	R0 = R6.L (Z);
	R1 = R1.L (Z);
	[SP + 44] = R0;
	[SP + 40] = R1;

.P104L7:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 907 col 3
//-------------------------------------------------------------------
//  Jumps out of this loop prevent efficient hardware loop generation.
//-------------------------------------------------------------------
.LN555:
// line 909
	R0 = R7;
	CALL.X (_getSn_TX_FSR);
	R5 = R0;
.LN556:
// line 910
	R0 = [SP + 40];
	CALL.X (_IINCHIP_READ);
.LN557:
// line 911
	R1 = 23;
.LN558:
	CC = R0 == R1;
	if !CC jump .P104L11 ;

.P104L9:
.LN559:
// line 930
	R0 = [SP + 44];
	CC = R5 < R0;
	if CC jump .P104L7 (bp);
//-------------------------------------------------------------------
//   End Loop L7
//-------------------------------------------------------------------

.P104L43:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------

.P104L12:
.LN560:
// line 933
	R0 = R7;
	R2 = R6.L (Z);
	// -- stall --
	R1 = [SP + 48];
	CALL.X (_send_data_processing);

.P104L3:
.LN561:
// line 939
	CC = R4 == 0;
	if CC jump .P104L18 ;

.P104L15:
.LN562:
// line 941
	R6.H = R7.L << 8;
	R0 = 16418;
	R0.L = R6.H + R0.L (NS);
	R7 = R0.L (Z);
	R0 = 16419;
.LN563:
// line 942
	R0.L = R6.H + R0.L (NS);
	R4 = R0.L (Z);
	R0 = 16385;
.LN564:
// line 944
	R0.L = R6.H + R0.L (NS);
	R5 = R0.L (Z);
.LN565:
// line 941
	R0 = R7;
	CALL.X (_IINCHIP_READ);
.LN566:
// line 942
	R6.L = R0.L << 8;
.LN567:
	R0 = R4;
	CALL.X (_IINCHIP_READ);
.LN568:
	R6.L = R0.L + R6.L (NS);
.LN569:
// line 944
	R0 = R5;
	R1 = 32;
	CALL.X (_IINCHIP_WRITE);

.P104L19:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 947 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     32-bit Instruction  used   4 out of    8 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN570:
// line 947
	R0 = R5;
	CALL.X (_IINCHIP_READ);
.LN571:
	CC = R0 == 0;
	if !CC jump .P104L19 (bp);
//-------------------------------------------------------------------
//   End Loop L19
//-------------------------------------------------------------------

.P104L37:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0 = 16386;
.LN572:
// line 949
	R0.L = R6.H + R0.L (NS);
	R5 = R0.L (Z);

.P104L22:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 949 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 15 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used  22 out of   30 ( 73.3%)
//     32-bit Instruction  used  11 out of   15 ( 73.3%)
//     Group 1             used  11 out of   15 ( 73.3%)
//-------------------------------------------------------------------
//  Jumps out of this loop prevent efficient hardware loop generation.
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN573:
	R0 = R5;
	CALL.X (_IINCHIP_READ);
.LN574:
	R1 = 16;
.LN575:
	R0 = R0 & R1;
.LN576:
	R2 = 16;
.LN577:
	CC = R0 == R2;
	if CC jump .P104L23 ;

.P104L24:
.LN578:
// line 951
	R0 = R5;
	CALL.X (_IINCHIP_READ);
.LN579:
	CC = R0 == 0;
	if !CC jump .P104L22 (bp);
//-------------------------------------------------------------------
//   End Loop L22
//-------------------------------------------------------------------

.P104L25:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R0.L = .sSOCKCL.10;
	R0.H = .sSOCKCL.10;
.LN580:
// line 953
	CALL.X (_put_str1);
	// -- stall --
.LN581:
// line 954
	R0 = [SP + 28];
	CALL.X (_close);
	R0 = 0;

.P104L28:
.LN582:
// line 971
	SP += 12;
	(R7:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P104L23:
.LN583:
// line 958
	R0 = R5;
	R1 = -1;
	R6.H = R1.L - R6.L (NS);
	R1 = 16;
	CALL.X (_IINCHIP_WRITE);
.LN584:
// line 960
	R0 = R7;
	CALL.X (_IINCHIP_READ);
	R7 = R0;
.LN585:
// line 961
	R0 = R4;
	CALL.X (_IINCHIP_READ);
.LN586:
	R7 <<= 8;
	R1 = R0 + R7;
	R0.L = R1.L + R6.H (NS);
	R0 += 1;
.LN587:
// line 942
	R2 = R6.L (Z);
.LN588:
// line 963
	CC = R2 < R1;
	R4 = R1 -|- R6;
	IF !CC R4 = R0;

.P104L17:
.LN589:
// line 970
	R0 = R4.L (Z);
	jump.s .P104L28;

.P104L18:
.LN590:
// line 939
	R0 = R6.L (Z);
	CC = R0 == 0;
	if !CC jump .P104L15 (bp);

.P104L45:
	jump.s .P104L17;

.P104L11:
//-------------------------------------------------------------------
//   Part of Loop 7, depth 1
//-------------------------------------------------------------------
.LN591:
// line 911
	R1 = 28;
.LN592:
	CC = R0 == R1;
	if CC jump .P104L9 (bp);

.P104L8:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R6 = 0;
	jump.s .P104L12;
.LN._send.end:
._send.end:
	.global _send;
	.type _send,STT_FUNC;

	.align 2;
_read_data:
.LN_read_data:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R3,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1751
	LINK 0;
	[--SP] = (R7:4);
	SP += -12;
	R7 = R2;
	R2 = R0;
	R6 = R0;
.LN593:
// line 1756
	CALL.X (_getIINCHIP_RxMASK);
.LN594:
	R1 = R0 & R1;
.LN595:
// line 1757
	R0 = R2;
	CALL.X (_getIINCHIP_RxBASE);
.LN596:
// line 1751
	R3 = [SP + 48];
	R4 = R1 + R0;
	R5 = R3 + R1;
.LN597:
// line 1759
	R0 = R2;
	CALL.X (_getIINCHIP_RxMAX);
.LN598:
	R2 = R5.L (Z);
	CC = R0 < R2;
.LN599:
// line 1757
	R2 = R4.L (Z);
.LN600:
// line 1759
	if CC jump .P105L1 ;

.P105L2:
.LN601:
// line 1771
	R1 = R7;
	R0 = R2;
	// -- stall --
	R2 = [SP + 48];
	CALL.X (_wiz_read_buf);

.P105L3:
.LN602:
// line 1774
	SP += 12;
	(R7:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P105L1:
	R1 = R0 - R1;
	R5 = R3 - R1;
.LN603:
// line 1762
	R0 = R2;
.LN604:
// line 1761
	R4 = R1.L (Z);
.LN605:
// line 1762
	R2 = R4;
	R1 = R7;
	CALL.X (_wiz_read_buf);
.LN606:
// line 1764
	R1 = R7 + R4;
.LN607:
// line 1766
	R0 = R6;
	CALL.X (_getIINCHIP_RxBASE);
.LN608:
// line 1765
	R2 = R5.L (Z);
.LN609:
// line 1767
	CALL.X (_wiz_read_buf);
	jump.s .P105L3;
.LN._read_data.end:
._read_data.end:
	.global _read_data;
	.type _read_data,STT_FUNC;

	.align 2;
_recvfrom:
.LN_recvfrom:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 40 
//  Scratch registers used: {R0-R3,P1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,P4-P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1067
	LINK 8;
	[--SP] = (R7:4, P5:4);
	SP += -16;
.LN610:
// line 1072
	CC = R2 == 0;
.LN611:
// line 1067
	[FP + 16] = R1;
	R4 = R0;
	R7 = 0;
	P5 = [FP + 20];
	P4 = [FP + 24];
.LN612:
// line 1072
	if CC jump .P106L3 ;

.P106L1:
.LN613:
// line 1074
	R5.H = R0.L << 8;
	R1 = 16424;
	R1.L = R5.H + R1.L (NS);
	R1 = R1.L (Z);
	R2 = 16425;
	[SP + 60] = R1;
.LN614:
// line 1075
	R2.L = R5.H + R2.L (NS);
	R2 = R2.L (Z);
	[SP + 56] = R2;
	R3 = 16384;
.LN615:
// line 1074
	R0 = [SP + 60];
.LN616:
// line 1077
	R5.L = R5.H + R3.L (NS);
.LN617:
// line 1074
	CALL.X (_IINCHIP_READ);
.LN618:
// line 1075
	R6.H = R0.L << 8;
.LN619:
	R0 = [SP + 56];
	CALL.X (_IINCHIP_READ);
.LN620:
	R6.L = R0.L + R6.H (NS);
.LN621:
// line 1077
	R0 = R5.L (Z);
.LN622:
	CALL.X (_IINCHIP_READ);
.LN623:
	R1 = 7;
	R1 = R0 & R1;
	CC = R1 < 3 (IU);
	if CC jump .P106L18 ;

.P106L20:
	CC = R1 == 3;
	if CC jump .P106L6 ;

.P106L19:
	R0 = 4;
	CC = R1 == R0;
	if CC jump .P106L7 ;

.P106L4:
	R0 = 16385;
.LN624:
// line 1138
	R0.L = R5.H + R0.L (NS);
	R6 = R0.L (Z);
.LN625:
	R0 = R6;
	R1 = 64;
	CALL.X (_IINCHIP_WRITE);

.P106L15:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1141 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     32-bit Instruction  used   4 out of    8 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN626:
// line 1141
	R0 = R6;
	CALL.X (_IINCHIP_READ);
.LN627:
	CC = R0 == 0;
	if !CC jump .P106L15 (bp);
//-------------------------------------------------------------------
//   End Loop L15
//-------------------------------------------------------------------

.P106L24:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------

.P106L3:
.LN628:
// line 1145
	SP += 16;
	R0 = R7.L (Z);
	(R7:4, P5:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P106L7:
.LN629:
// line 1117
	R0 = R4;
	P1 = 2;
	[SP + 12] = P1;
.LN630:
// line 1067
	R2 = FP;
.LN631:
// line 1117
	R2 += -8;
.LN632:
// line 1075
	R1 = R6.L (Z);
.LN633:
// line 1117
	CALL.X (_read_data);
.LN634:
// line 1118
	R6 += 2;
.LN635:
// line 1119
	R0 = [SP + 40];
	R1 = R0 << 8;
.LN636:
// line 1120
	R0 = B[SP + 41] (Z);
	R7 = R1 + R0;
	R7 += -2;
.LN637:
// line 1121
	R0 = 1514;
.LN638:
// line 1120
	R3 = R7.L (Z);
.LN639:
// line 1121
	CC = R0 < R3 (IU);
	if !CC jump .P106L11 ;

.P106L22:

.P106L12:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 1124 col 8
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 5 
//   cycles (includes 4 stalls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   2 out of   10 ( 20.0%)
//     32-bit Instruction  used   1 out of    5 ( 20.0%)
//     Group 1             used   1 out of    5 ( 20.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
	jump.s .P106L12;
//-------------------------------------------------------------------
//   End Loop L12
//-------------------------------------------------------------------

.P106L11:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN640:
// line 1127
	[SP + 12] = R3;
	R0 = R4;
.LN641:
// line 1118
	R1 = R6.L (Z);
.LN642:
// line 1128
	R5.L = R6.L + R7.L (NS);
.LN643:
// line 1127
	R2 = [FP + 16];
	CALL.X (_read_data);
.LN644:
// line 1129
	R3 = 65280 (Z);
	R3 = R5 & R3;
	R1 = R3 >>> 8;
.LN645:
	R0 = [SP + 60];
	CALL.X (_IINCHIP_WRITE);
	R1 = R5.b (Z);
.LN646:
// line 1130
	R0 = [SP + 56];
	CALL.X (_IINCHIP_WRITE);
	jump.s .P106L4;

.P106L6:
.LN647:
// line 1100
	P1 = 6;
.LN648:
// line 1067
	R2 = FP;
.LN649:
// line 1100
	[SP + 12] = P1;
	R0 = R4;
	R2 += -8;
.LN650:
// line 1075
	R1 = R6.L (Z);
.LN651:
// line 1100
	CALL.X (_read_data);
.LN652:
// line 1103
	R1 = B[SP + 40] (X);
	B[P5++] = R1;
.LN653:
// line 1110
	R0 = R4;
.LN654:
// line 1104
	R1 = B[SP + 41] (X);
	B[P5++] = R1;
.LN655:
// line 1105
	R1 = B[SP + 42] (X);
	B[P5++] = R1;
.LN656:
// line 1106
	R1 = B[SP + 43] (X);
	B[P5] = R1;
.LN657:
// line 1107
	R3 = B[SP + 44] (Z);
.LN658:
// line 1108
	R3 <<= 8;
	R7 = B[SP + 45] (Z);
	R7 = R3 + R7;
.LN659:
// line 1101
	R6 += 6;
.LN660:
// line 1110
	[SP + 12] = R7;
.LN661:
// line 1111
	R5.L = R6.L + R7.L (NS);
.LN662:
// line 1101
	R1 = R6.L (Z);
.LN663:
// line 1110
	R2 = [FP + 16];
	CALL.X (_read_data);
.LN664:
// line 1113
	R3 = 65280 (Z);
	R3 = R5 & R3;
	R1 = R3 >>> 8;
.LN665:
	R0 = [SP + 60];
	CALL.X (_IINCHIP_WRITE);
	R1 = R5.b (Z);
.LN666:
// line 1114
	R0 = [SP + 56];
	CALL.X (_IINCHIP_WRITE);
	jump.s .P106L4;

.P106L18:
.LN667:
// line 1077
	CC = R1 == 2;
	if !CC jump .P106L4 (bp);

.P106L5:
.LN668:
// line 1080
	P1 = 8;
.LN669:
// line 1067
	R2 = FP;
.LN670:
// line 1080
	[SP + 12] = P1;
	R0 = R4;
	R2 += -8;
.LN671:
// line 1075
	R1 = R6.L (Z);
.LN672:
// line 1080
	CALL.X (_read_data);
.LN673:
// line 1083
	R1 = B[SP + 40] (X);
	B[P5++] = R1;
.LN674:
// line 1092
	R0 = R4;
.LN675:
// line 1084
	R1 = B[SP + 41] (X);
	B[P5++] = R1;
.LN676:
// line 1085
	R1 = B[SP + 42] (X);
	B[P5++] = R1;
.LN677:
// line 1086
	R1 = B[SP + 43] (X);
	B[P5] = R1;
.LN678:
// line 1087
	R1 = B[SP + 44] (Z);
	W[P4] = R1.L;
.LN679:
// line 1088
	R1.H = R1.L << 8;
	R3 = B[SP + 45] (Z);
	R1.L = R1.H + R3.L (NS);
.LN680:
// line 1092
	R2 = [FP + 16];
.LN681:
// line 1088
	W[P4] = R1.L;
.LN682:
// line 1089
	R3 = B[SP + 46] (Z);
.LN683:
// line 1090
	R3 <<= 8;
	R7 = B[SP + 47] (Z);
	R7 = R3 + R7;
.LN684:
// line 1081
	R6 += 8;
.LN685:
// line 1092
	[SP + 12] = R7;
.LN686:
// line 1093
	R5.L = R6.L + R7.L (NS);
.LN687:
// line 1081
	R1 = R6.L (Z);
.LN688:
// line 1092
	CALL.X (_read_data);
.LN689:
// line 1095
	R3 = 65280 (Z);
	R3 = R5 & R3;
	R1 = R3 >>> 8;
.LN690:
	R0 = [SP + 60];
	CALL.X (_IINCHIP_WRITE);
	R1 = R5.b (Z);
.LN691:
// line 1096
	R0 = [SP + 56];
	CALL.X (_IINCHIP_WRITE);
	jump.s .P106L4;
.LN._recvfrom.end:
._recvfrom.end:
	.global _recvfrom;
	.type _recvfrom,STT_FUNC;

	.align 2;
_recv_data_processing:
.LN_recv_data_processing:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R3,ASTAT0-ASTAT1}
//  Call preserved registers used: {R4-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":1693
	LINK 0;
	[--SP] = (R7:4);
	SP += -16;
	[SP + 44] = R1;
	R1 = R0 << 8;
.LN692:
// line 1695
	R1.H = 16424;
.LN693:
// line 1693
	R7 = R2;
.LN694:
// line 1695
	R2.L = R1.L + R1.H (NS);
	[SP + 40] = R0;
.LN695:
// line 1696
	R2.H = 16425;
.LN696:
// line 1695
	R6 = R2.L (Z);
.LN697:
// line 1696
	R3.L = R1.L + R2.H (NS);
.LN698:
// line 1695
	R0 = R6;
.LN699:
// line 1696
	R5 = R3.L (Z);
.LN700:
// line 1695
	CALL.X (_IINCHIP_READ);
.LN701:
// line 1696
	R4.H = R0.L << 8;
.LN702:
	R0 = R5;
	CALL.X (_IINCHIP_READ);
.LN703:
	R3.L = R0.L + R4.H (NS);
.LN704:
// line 1703
	[SP + 12] = R7;
.LN705:
// line 1696
	R1 = R3.L (Z);
.LN706:
// line 1703
	R2 = [SP + 44];
	R7 = R7 + R3;
	R0 = [SP + 40];
	CALL.X (_read_data);
.LN707:
// line 1705
	R3 = 65280 (Z);
	R3 = R7 & R3;
.LN708:
	R0 = R6;
.LN709:
	R1 = R3 >>> 8;
.LN710:
	CALL.X (_IINCHIP_WRITE);
	R1 = R7.b (Z);
.LN711:
// line 1706
	R0 = R5;
	CALL.X (_IINCHIP_WRITE);
.LN712:
// line 1707
	SP += 16;
	(R7:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._recv_data_processing.end:
._recv_data_processing.end:
	.global _recv_data_processing;
	.type _recv_data_processing,STT_FUNC;

	.align 2;
_recv:
.LN_recv:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 16 
//  Scratch registers used: {R0-R1,R3,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R6-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":981
	LINK 0;
	[--SP] = (R7:6);
	R7 = R2;
.LN713:
// line 986
	CC = R7 == 0;
.LN714:
// line 981
	R6 = R0;
	SP += -12;
	R3 = 0;
.LN715:
// line 986
	if CC jump .P108L3 ;

.P108L1:
.LN716:
// line 988
	CALL.X (_recv_data_processing);
	R0 = R6 << 8;
.LN717:
// line 989
	R0.H = 16385;
	R0.L = R0.L + R0.H (NS);
	R6 = R0.L (Z);
.LN718:
	R0 = R6;
	R1 = 64;
	CALL.X (_IINCHIP_WRITE);

.P108L4:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 992 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls but excludes the cost of function calls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     32-bit Instruction  used   4 out of    8 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN719:
// line 992
	R0 = R6;
	CALL.X (_IINCHIP_READ);
.LN720:
	CC = R0 == 0;
	if !CC jump .P108L4 (bp);
//-------------------------------------------------------------------
//   End Loop L4
//-------------------------------------------------------------------

.P108L5:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	R3 = R7;

.P108L3:
.LN721:
// line 997
	SP += 12;
	(R7:6) = [SP++];
	UNLINK;
	R0 = R3.L (Z);
	// -- 3 stalls --
	RTS;
.LN._recv.end:
._recv.end:
	.global _recv;
	.type _recv,STT_FUNC;

	.align 2;
_loopback_udp:
.LN_loopback_udp:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 32 
//  Scratch registers used: {R0-R2,P1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {R4-R7,P4-P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":2044
	LINK 0;
	[--SP] = (R7:4, P5:4);
	R4 = R0;
	R0 = R4 << 8;
.LN722:
// line 2049
	R0.H = 16386;
	R0.L = R0.L + R0.H (NS);
.LN723:
// line 2044
	R5 = R1;
	SP += -20;
.LN724:
// line 2049
	R0 = R0.L (Z);
.LN725:
	R1 = 255;
	CALL.X (_IINCHIP_WRITE);
.LN726:
// line 2051
	R0 = R4;
	CALL.X (_getSn_SR);
.LN727:
	CC = R0 == 0;
	R6.L = _strng1;
	R6.H = _strng1;
	R7.L = .s.2;
	R7.H = .s.2;
	if CC jump .P112L3 ;

.P112L20:
	R1 = 34;
	CC = R0 == R1;
	if CC jump .P112L2 ;

.P112L1:
.LN728:
// line 2107
	SP += 20;
	(R7:4, P5:4) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;

.P112L2:
	P4.L = _destip_UDP;
	P4.H = _destip_UDP;
.LN729:
// line 2055
	R0 = W[P4 + 6] (Z);
	CC = R0 == 0;
	if CC jump .P112L6 ;

.P112L7:
	R0 = B[P4 + 8] (Z);
	CC = R0 == 1;
	if CC jump .P112L4 ;

.P112L6:
.LN730:
// line 2072
	R0 = R4;
	CALL.X (_getSn_RX_RSR);
	R1 = R0.L (X);
.LN731:
	CC = R1 <= 0;
	if CC jump .P112L1 (bp);

.P112L11:
	P5 = P4;
	P4 += 4;
.LN732:
// line 2076
	[SP + 16] = P4;
	[SP + 12] = P5;
	R1 = 200;
	R1 = MIN(R0, R1) (V);
	R0 = R4;
	R2 = R1.L (Z);
	R1.L = _RX_BUF;
	R1.H = _RX_BUF;
	CALL.X (_recvfrom);
.LN733:
// line 2079
	[P5 + -60] = R0;
	P1.L = _sch_packet_UDP_reciv;
	P1.H = _sch_packet_UDP_reciv;
.LN734:
// line 2082
	R0 = [P1];
	R0 += 1;
	[P1] = R0;
.LN735:
// line 2080
	R0 = 1;
	B[P5 + -72] = R0;
.LN736:
// line 2081
	B[P5 + 8] = R0;
	jump.s .P112L1;

.P112L4:
.LN737:
// line 2061
	R0 = R4;
	[SP + 12] = P4;
.LN738:
// line 2059
	R1 = W[P4 + -70] (X);
	R1 += 1;
	W[P4 + -70] = R1;
.LN739:
// line 2061
	R1 = W[P4 + 4] (Z);
.LN740:
	[SP + 16] = R1;
	R2 = 136;
	R1.L = _TX_BUF;
	R1.H = _TX_BUF;
	CALL.X (_sendto);
.LN741:
	CC = R0 == 0;
	if !CC jump .P112L10 (bp);

.P112L8:
	R0.L = .sSystem.11;
	R0.H = .sSystem.11;
.LN742:
// line 2063
	CALL.X (_put_str1);
.LN743:
// line 2064
	R0 = R4;
	R1 = R6;
	CALL.X (_itoa);
.LN744:
// line 2065
	R0 = R6;
	CALL.X (_put_str1);
.LN745:
// line 2066
	R0 = R7;
	CALL.X (_put_str1);

.P112L10:
.LN746:
// line 2069
	R0 = 0;
	W[P4 + 6] = R0;
	jump.s .P112L6;

.P112L3:
.LN747:
// line 2092
	R0 = R7;
	CALL.X (_put_str1);
.LN748:
// line 2093
	R0 = R4;
	R1 = R6;
	CALL.X (_itoa);
.LN749:
// line 2094
	R0 = R6;
	CALL.X (_put_str1);
	R0.L = .sLoopBa.12;
	R0.H = .sLoopBa.12;
.LN750:
// line 2095
	CALL.X (_put_str1);
.LN751:
// line 2096
	R1 = R6;
	R0 = R5;
	CALL.X (_itoa);
.LN752:
// line 2097
	R0 = R6;
	CALL.X (_put_str1);
.LN753:
// line 2098
	R0 = R7;
	CALL.X (_put_str1);
.LN754:
// line 2100
	R2 = R5;
	R0 = R4;
	P1 = 0;
	[SP + 12] = P1;
	R1 = 2;
	CALL.X (_socket);
.LN755:
	CC = R0 == 0;
	if !CC jump .P112L1 (bp);

.P112L17:
	R0.L = .sFailto.13;
	R0.H = .sFailto.13;
.LN756:
	CALL.X (_put_str1);
.LN757:
// line 2101
	R0 = R4;
	R1 = R6;
	CALL.X (_itoa);
.LN758:
// line 2102
	R0 = R6;
	CALL.X (_put_str1);
.LN759:
// line 2103
	R0 = R7;
	CALL.X (_put_str1);
	jump.s .P112L1;
.LN._loopback_udp.end:
._loopback_udp.end:
	.global _loopback_udp;
	.type _loopback_udp,STT_FUNC;

	.align 2;
_Set_network:
.LN_Set_network:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 44 
//  Scratch registers used: {R0-R3,P0-P2,ASTAT0-ASTAT1,LC0,LT0,LB0}
//  Call preserved registers used: {R4-R7,P3-P5,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":2117
	LINK 8;
	[--SP] = (R7:4, P5:3);
	SP += -12;
.LN760:
// line 2122
	CALL.X (_iinchip_init);
	P1.L = _Enable_DHCP;
	P1.H = _Enable_DHCP;
	P4.L = _Config_Msg;
	P4.H = _Config_Msg;
	P2 = 6;
	P5 = P1;
	P0 = P4;
	P1 += 4;
	LOOP .P118L2L LC0 = P2;

.P118L2:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\W5200.c" line 2127 col 9
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in estimated 2 cycles.
//-------------------------------------------------------------------
//   Trip Count  = 6
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     Group 1             used   2 out of    2 (100.0%)
//     16-bit Instruction  used   2 out of    4 ( 50.0%)
//     Store               used   1 out of    2 ( 50.0%)
//-------------------------------------------------------------------
//  This loop was not modulo scheduled because it was optimized for space.
//-------------------------------------------------------------------
	LOOP_BEGIN .P118L2L;
.LN761:
// line 2127
	R0 = B[P1++] (X);
	B[P0++] = R0;
.LN762:
	LOOP_END .P118L2L;
//-------------------------------------------------------------------
//   End Loop L2
//-------------------------------------------------------------------

.P118L7:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
	P1 = P4;
	P4 += 6;
	R4 = [P5 + 12];
	[SP + 60] = P4;
.LN763:
// line 2129
	B[P4++] = R4;
	R3 = R4 >>> 8;
.LN764:
	B[P4++] = R3;
	R3.L = R4.H << 0;
.LN765:
	B[P4++] = R3;
	R4.L = R4.H >>> 8;
	R5 = [P5 + 16];
.LN766:
	B[P4++] = R4;
	R3 = R5 >>> 8;
.LN767:
// line 2131
	B[P4 + 5] = R3;
	R4 = PACK(R4.H, R5.H);
	R2 = [P5 + 20];
	R3.L = R5.H >>> 8;
	[SP + 56] = P4;
.LN768:
	B[P4 + 7] = R3;
.LN769:
	B[P4 + 4] = R5;
.LN770:
	B[P4 + 6] = R4;
.LN771:
// line 2133
	B[P4++] = R2;
	R5 = R2 >>> 8;
.LN772:
	B[P4++] = R5;
	R1.L = R2.H << 0;
.LN773:
	B[P4++] = R1;
	R6.L = R2.H >>> 8;
.LN774:
	B[P4++] = R6;
	R0 = P1;
.LN775:
// line 2135
	CALL.X (_setSHAR);
	P1 = [SP + 56];
	P3.L = _Chconfig_Type_Def;
	P3.H = _Chconfig_Type_Def;
	P3 += -2;
	R4.L = .s.0;
	R4.H = .s.0;
	R0 = P1;
.LN776:
// line 2137
	CALL.X (_saveSUBR);
	R0 = P4;
.LN777:
// line 2138
	CALL.X (_setGAR);
	P0 = [SP + 60];
.LN778:
// line 2117
	R7 = FP;
.LN779:
// line 2162
	R7 += -8;
	R6.L = _strng1;
	R6.H = _strng1;
	R0 = P0;
.LN780:
// line 2139
	CALL.X (_setSIPR);
.LN781:
// line 2146
	R2 = [P5 + 44];
.LN782:
// line 2142
	R1 = B[P5] (X);
	R3 = [P5 + 40];
	[P3 + 4] = R3;
	B[P4 + 8] = R1;
.LN783:
// line 2146
	W[P3 + 2] = R2;
.LN784:
// line 2149
	R0 = 6000;
	CALL.X (_setRTR);
.LN785:
// line 2150
	R0 = 3;
	CALL.X (_setRCR);
	R1 = P5;
	R0 = P5;
	R1 += 52;
	R0 += 48;
.LN786:
// line 2154
	CALL.X (_sysinit);
	R0.L = .s.14;
	R0.H = .s.14;
.LN787:
// line 2156
	CALL.X (_put_str1);
	R0.L = .sW5200E.15;
	R0.H = .sW5200E.15;
.LN788:
// line 2157
	CALL.X (_put_str1);
	R0.L = .sNetwor.16;
	R0.H = .sNetwor.16;
.LN789:
// line 2158
	CALL.X (_put_str1);
	R0.L = .s.17;
	R0.H = .s.17;
.LN790:
// line 2159
	CALL.X (_put_str1);
	R1 = 84;
	R0 = R4 + R1;
.LN791:
// line 2160
	CALL.X (_put_str1);
.LN792:
// line 2162
	R0 = R7;
	CALL.X (_getSIPR);
	R2 = 96;
	R0 = R4 + R2;
.LN793:
// line 2163
	CALL.X (_put_str1);
	R3 = 104;
.LN794:
// line 2164
	R1 = R6;
.LN795:
	R0 = B[SP + 40] (Z);
	R5 = R4 + R3;
.LN796:
	CALL.X (_itoa);
.LN797:
// line 2165
	R0 = R6;
	CALL.X (_put_str1);
.LN798:
// line 2166
	R0 = R5;
	CALL.X (_put_str1);
.LN799:
// line 2167
	R1 = R6;
.LN800:
	R0 = B[SP + 41] (Z);
.LN801:
	CALL.X (_itoa);
.LN802:
// line 2168
	R0 = R6;
	CALL.X (_put_str1);
.LN803:
// line 2169
	R0 = R5;
	CALL.X (_put_str1);
.LN804:
// line 2170
	R1 = R6;
.LN805:
	R0 = B[SP + 42] (Z);
.LN806:
	CALL.X (_itoa);
.LN807:
// line 2171
	R0 = R6;
	CALL.X (_put_str1);
.LN808:
// line 2172
	R0 = R5;
	CALL.X (_put_str1);
.LN809:
// line 2173
	R1 = R6;
.LN810:
	R0 = B[SP + 43] (Z);
.LN811:
	CALL.X (_itoa);
.LN812:
// line 2174
	R0 = R6;
	CALL.X (_put_str1);
.LN813:
// line 2177
	R0 = R7;
	CALL.X (_getSUBR);
	R2 = 108;
	R0 = R4 + R2;
.LN814:
// line 2178
	CALL.X (_put_str1);
.LN815:
// line 2180
	R1 = R6;
.LN816:
	R0 = B[SP + 40] (Z);
.LN817:
	CALL.X (_itoa);
.LN818:
// line 2181
	R0 = R6;
	CALL.X (_put_str1);
.LN819:
// line 2182
	R0 = R5;
	CALL.X (_put_str1);
.LN820:
// line 2183
	R1 = R6;
.LN821:
	R0 = B[SP + 41] (Z);
.LN822:
	CALL.X (_itoa);
.LN823:
// line 2184
	R0 = R6;
	CALL.X (_put_str1);
.LN824:
// line 2185
	R0 = R5;
	CALL.X (_put_str1);
.LN825:
// line 2186
	R1 = R6;
.LN826:
	R0 = B[SP + 42] (Z);
.LN827:
	CALL.X (_itoa);
.LN828:
// line 2187
	R0 = R6;
	CALL.X (_put_str1);
.LN829:
// line 2188
	R0 = R5;
	CALL.X (_put_str1);
.LN830:
// line 2189
	R1 = R6;
.LN831:
	R0 = B[SP + 43] (Z);
.LN832:
	CALL.X (_itoa);
.LN833:
// line 2190
	R0 = R6;
	CALL.X (_put_str1);
.LN834:
// line 2193
	R0 = R7;
	CALL.X (_getGAR);
	R2 = 116;
	R0 = R4 + R2;
.LN835:
// line 2194
	CALL.X (_put_str1);
.LN836:
// line 2196
	R1 = R6;
.LN837:
	R0 = B[SP + 40] (Z);
.LN838:
	CALL.X (_itoa);
.LN839:
// line 2197
	R0 = R6;
	CALL.X (_put_str1);
.LN840:
// line 2198
	R0 = R5;
	CALL.X (_put_str1);
.LN841:
// line 2199
	R1 = R6;
.LN842:
	R0 = B[SP + 41] (Z);
.LN843:
	CALL.X (_itoa);
.LN844:
// line 2200
	R0 = R6;
	CALL.X (_put_str1);
.LN845:
// line 2201
	R0 = R5;
	CALL.X (_put_str1);
.LN846:
// line 2202
	R1 = R6;
.LN847:
	R0 = B[SP + 42] (Z);
.LN848:
	CALL.X (_itoa);
.LN849:
// line 2203
	R0 = R6;
	CALL.X (_put_str1);
.LN850:
// line 2204
	R0 = R5;
	CALL.X (_put_str1);
.LN851:
// line 2205
	R1 = R6;
.LN852:
	R0 = B[SP + 43] (Z);
.LN853:
	CALL.X (_itoa);
.LN854:
// line 2206
	R0 = R6;
	CALL.X (_put_str1);
.LN855:
// line 2208
	R0 = R4;
	CALL.X (_put_str1);
	R2 = 124;
	R0 = R4 + R2;
.LN856:
// line 2209
	CALL.X (_put_str1);
.LN857:
// line 2219
	SP += 12;
	(R7:4, P5:3) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Set_network.end:
._Set_network.end:
	.global _Set_network;
	.type _Set_network,STT_FUNC;

	.align 2;
_sendIAC:
.LN_sendIAC:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0,P0-P1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
.LN858:
// line "..\BFcom\W5200.c":2339
	R0 = -251;
	R0 = R1 + R0;
	CC = R0 < 5 (IU);
.LN859:
// line 2337
	LINK 12;
.LN860:
// line 2339
	if !CC jump .P120L1 ;

.P120L7:
	P1 = R0;
	P0.L = .SWITCH.28;
	P0.H = .SWITCH.28;
	R0.L = .ssentwi.24;
	R0.H = .ssentwi.24;
	// -- 2 stalls --
	P1 = P0 + (P1<<2);
	P1 = [P1];
	// -- 3 stalls --
	JUMP (P1);

.P120L2:
.LN861:
// line 2341
	CALL.X (_put_str1);

.P120L1:
.LN862:
// line 2361
	UNLINK;
	// -- 4 stalls --
	RTS;

.P120L3:
	R0 += 12;
.LN863:
// line 2345
	CALL.X (_put_str1);
	jump.s .P120L1;

.P120L4:
	R0 += 24;
.LN864:
// line 2349
	CALL.X (_put_str1);
	jump.s .P120L1;

.P120L5:
	R0 += 36;
.LN865:
// line 2353
	CALL.X (_put_str1);
	jump.s .P120L1;
.LN._sendIAC.end:
._sendIAC.end:
	.global _sendIAC;
	.type _sendIAC,STT_FUNC;

	.align 2;
_init_telopt:
.LN_init_telopt:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R2}
//  Call preserved registers used: {R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//-------------------------------------------------------------------
// line "..\BFcom\W5200.c":2331
	LINK 16;
	[SP + 12] = R7;
.LN866:
// line 2332
	R2 = 36;
	R1 = 253;
	R7 = R0;
	CALL.X (_sendIAC);
.LN867:
// line 2333
	R0 = R7;
	R2 = 1;
	R1 = 251;
	CALL.X (_sendIAC);
.LN868:
// line 2334
	R7 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._init_telopt.end:
._init_telopt.end:
	.global _init_telopt;
	.type _init_telopt,STT_FUNC;

	.file_attr ProjectName="NewProject";
.epctext.end:

	.extern _spi_cs_SPI;
	.type _spi_cs_SPI,STT_FUNC;
	.extern _Event_Synhron_func;
	.type _Event_Synhron_func,STT_FUNC;
	.extern _Synhron_section;
	.type _Synhron_section,STT_FUNC;
	.extern _SPI;
	.type _SPI,STT_FUNC;
	.extern _put_str1;
	.type _put_str1,STT_FUNC;
	.extern ___spswitch32;
	.type ___spswitch32,STT_FUNC;
	.extern _itoa;
	.type _itoa,STT_FUNC;

	.section/DOUBLE64 data1;

	.align 4;
.epcdata:
	.type .epcdata,STT_OBJECT;
	.byte _flag_RX_UDP[1];
	.global _flag_RX_UDP;
	.type _flag_RX_UDP,STT_OBJECT;
	.byte =
		0x00;
	.byte _sch_tx_packet[2];
	.global _sch_tx_packet;
	.type _sch_tx_packet,STT_OBJECT;
_any_port:
	.global _any_port;
	.type _any_port,STT_OBJECT;
	.byte =
		0xE8,0x03;
	.byte =
		0x00,0x00;
	.byte _ch_status[2];
	.global _ch_status;
	.type _ch_status,STT_OBJECT;
	.byte =
		0x00,0x00;
	.byte _lsr_razmer[4];
	.global _lsr_razmer;
	.type _lsr_razmer,STT_OBJECT;
	.byte _Enable_DHCP[1];
	.global _Enable_DHCP;
	.type _Enable_DHCP,STT_OBJECT;
_NUMBER_BLOK:
	.global _NUMBER_BLOK;
	.type _NUMBER_BLOK,STT_OBJECT;
	.byte =
		0x01;
	.byte =
		0x00,0x00;
_MAC:
	.global _MAC;
	.type _MAC,STT_OBJECT;
	.byte =
		0x64,0xA2,0x32,0x01,0x03,0x01;
	.byte =
		0x00,0x00;
_IP:
	.global _IP;
	.type _IP,STT_OBJECT;
	.byte =
		0x01,0x03,0x01,0x3D;
_GateWay:
	.global _GateWay;
	.type _GateWay,STT_OBJECT;
	.byte =
		0x01,0x03,0x01,0xFE;
_SubNet:
	.global _SubNet;
	.type _SubNet,STT_OBJECT;
	.byte =
		0xFF,0xFF,0xFF,0x00;
_Hard_reg:
	.global _Hard_reg;
	.type _Hard_reg,STT_OBJECT;
	.byte =
		0xE0,0x69,0x95,0x04,0xDF,0x96;
	.byte =
		0x00,0x00;
_Receive_IP:
	.global _Receive_IP;
	.type _Receive_IP,STT_OBJECT;
	.byte =
		0x01,0x03,0x01,0x97;
_Receive_Port_destination:
	.global _Receive_Port_destination;
	.type _Receive_Port_destination,STT_OBJECT;
	.byte =
		0x00,0x17;
	.byte =
		0x00,0x00;
_Dest_IP:
	.global _Dest_IP;
	.type _Dest_IP,STT_OBJECT;
	.byte =
		0x01,0x03,0x01,0x01;
_Dest_PORT:
	.global _Dest_PORT;
	.type _Dest_PORT,STT_OBJECT;
	.byte =
		0x17,0x00;
	.byte =
		0x00,0x00;
_txsize:
	.global _txsize;
	.type _txsize,STT_OBJECT;
	.byte =
		0x10,0x10;
	.byte =
		0x00,0x00;
_rxsize:
	.global _rxsize;
	.type _rxsize,STT_OBJECT;
	.byte =
		0x10,0x10;
	.byte =
		0x00,0x00;
	.byte _destip_UDP[4];
	.global _destip_UDP;
	.type _destip_UDP,STT_OBJECT;
	.byte _destport_UDP[2];
	.global _destport_UDP;
	.type _destport_UDP,STT_OBJECT;
	.byte _FLAG_UDP_EVENT[2];
	.global _FLAG_UDP_EVENT;
	.type _FLAG_UDP_EVENT,STT_OBJECT;
	.byte _FLAG_UDP_INSTALL[1];
	.global _FLAG_UDP_INSTALL;
	.type _FLAG_UDP_INSTALL,STT_OBJECT;
.epcdata.end:

	.section/DOUBLE64 constdata;

	.align 4;
.epcrodata:
	.type .epcrodata,STT_OBJECT;
.s.0:
	.type .s.0,STT_OBJECT;
	.byte =
		0x0D,0x00;
	.byte =
		0x00,0x00;
.sclose.1:
	.type .sclose.1,STT_OBJECT;
	.byte =
		0x63,0x6C,0x6F,0x73,0x65,0x28,0x29,0x00;
.s.2:
	.type .s.2,STT_OBJECT;
	.byte =
		0x0D,0x0A,0x00;
	.byte =
		0x00;
.ssocket.3:
	.type .ssocket.3,STT_OBJECT;
	.byte =
		0x73,0x6F,0x63,0x6B,0x65,0x74,0x28,0x29,0x0D,0x0A,0x00;
	.byte =
		0x00;
.slisten.4:
	.type .slisten.4,STT_OBJECT;
	.byte =
		0x6C,0x69,0x73,0x74,0x65,0x6E,0x28,0x29,0x0D,0x0A,0x00;
	.byte =
		0x00;
.sdiscon.6:
	.type .sdiscon.6,STT_OBJECT;
	.byte =
		0x64,0x69,0x73,0x63,0x6F,0x6E,0x6E,0x65,0x63,0x74,0x28,0x29,
		0x0D,0x0A,0x00;
	.byte =
		0x00;
.sconnec.9:
	.type .sconnec.9,STT_OBJECT;
	.byte =
		0x63,0x6F,0x6E,0x6E,0x65,0x63,0x74,0x28,0x29,0x0D,0x0A,0x00;
.sSOCKCL.10:
	.type .sSOCKCL.10,STT_OBJECT;
	.byte =
		0x53,0x4F,0x43,0x4B,0x5F,0x43,0x4C,0x4F,0x53,0x45,0x44,0x2E,
		0x0D,0x0A,0x00;
	.byte =
		0x00;
.sMAC.18:
	.type .sMAC.18,STT_OBJECT;
	.byte =
		0x0D,0x0A,0x4D,0x41,0x43,0x20,0x3A,0x20,0x00;
	.byte =
		0x00,0x00,0x00;
.sIP.19:
	.type .sIP.19,STT_OBJECT;
	.byte =
		0x0D,0x0A,0x49,0x50,0x20,0x3A,0x20,0x00;
.s.20:
	.type .s.20,STT_OBJECT;
	.byte =
		0x2E,0x00;
	.byte =
		0x00,0x00;
.sSN.21:
	.type .sSN.21,STT_OBJECT;
	.byte =
		0x0D,0x0A,0x53,0x4E,0x20,0x3A,0x20,0x00;
.sGW.22:
	.type .sGW.22,STT_OBJECT;
	.byte =
		0x0D,0x0A,0x47,0x57,0x20,0x3A,0x00;
	.byte =
		0x00;
.sPORT30.23:
	.type .sPORT30.23,STT_OBJECT;
	.byte =
		0x50,0x4F,0x52,0x54,0x3A,0x20,0x33,0x30,0x30,0x31,0x0D,0x00;
.ssentwi.24:
	.type .ssentwi.24,STT_OBJECT;
	.byte =
		0x73,0x65,0x6E,0x74,0x20,0x3A,0x20,0x77,0x69,0x6C,0x6C,0x00;
.ssentwo.25:
	.type .ssentwo.25,STT_OBJECT;
	.byte =
		0x73,0x65,0x6E,0x74,0x20,0x3A,0x20,0x77,0x6F,0x6E,0x74,0x00;
.ssentdo.26:
	.type .ssentdo.26,STT_OBJECT;
	.byte =
		0x73,0x65,0x6E,0x74,0x20,0x3A,0x20,0x64,0x6F,0x00;
	.byte =
		0x00,0x00;
.ssentdo.27:
	.type .ssentdo.27,STT_OBJECT;
	.byte =
		0x73,0x65,0x6E,0x74,0x20,0x3A,0x20,0x64,0x6F,0x6E,0x74,0x00;
.epcrodata.end:

	.section/ZERO_INIT/DOUBLE64 bsz;

	.align 4;
.epcbss:
	.type .epcbss,STT_OBJECT;
	.byte _RSR_len_TST[2];
	.global _RSR_len_TST;
	.type _RSR_len_TST,STT_OBJECT;
	.align 4;
	.byte _presentTime[4];
	.global _presentTime;
	.type _presentTime,STT_OBJECT;
	.byte _my_time[4];
	.global _my_time;
	.type _my_time,STT_OBJECT;
	.byte _Receive_byte_size[2];
	.global _Receive_byte_size;
	.type _Receive_byte_size,STT_OBJECT;
	.byte _Rec_Flag[1];
	.global _Rec_Flag;
	.type _Rec_Flag,STT_OBJECT;
	.byte .epcpad0[1];
	.byte _size[2];
	.global _size;
	.type _size,STT_OBJECT;
	.byte _Chconfig_Type_Def[6];
	.global _Chconfig_Type_Def;
	.type _Chconfig_Type_Def,STT_OBJECT;
	.byte _I_STATUS[2];
	.type _I_STATUS,STT_OBJECT;
	.align 4;
	.byte _SMASK[4];
	.type _SMASK,STT_OBJECT;
	.byte _RMASK[4];
	.type _RMASK,STT_OBJECT;
	.byte _SSIZE[4];
	.type _SSIZE,STT_OBJECT;
	.byte _RSIZE[4];
	.type _RSIZE,STT_OBJECT;
	.byte _SBUFBASEADDRESS[4];
	.type _SBUFBASEADDRESS,STT_OBJECT;
	.byte _RBUFBASEADDRESS[4];
	.type _RBUFBASEADDRESS,STT_OBJECT;
	.byte _SUBNET[4];
	.type _SUBNET,STT_OBJECT;
	.byte _local_port[2];
	.type _local_port,STT_OBJECT;
	.align 4;
	.byte _windowfull_retry_cnt[2];
	.global _windowfull_retry_cnt;
	.type _windowfull_retry_cnt,STT_OBJECT;
	.byte _pre_sent_ptr[2];
	.global _pre_sent_ptr;
	.type _pre_sent_ptr,STT_OBJECT;
	.byte _sent_ptr[2];
	.global _sent_ptr;
	.type _sent_ptr,STT_OBJECT;
.epcbss.end:

	.section .debug_abbrev SHT_DEBUGINFO;

	.align 1;
.epcabbrev:
	.type .epcabbrev,STT_OBJECT;
	.inc/binary ".\Release\W5200.sbn", 0, 213;
.epcabbrev.end:

	.section .debug_info SHT_DEBUGINFO;

	.align 1;
.epcdebug:
	.type .epcdebug,STT_OBJECT;
	.byte =
		0x3C,0x1C,0x00,0x00,0x02,0x00;
	.byte4 = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x42,0x46,0x63,0x6F,0x6D,0x5C,0x57,
		0x35,0x32,0x30,0x30,0x2E,0x63,0x00,0x01;
	.byte4 = .epcline;
	.inc/binary ".\Release\W5200.sbn", 213, 2440;
	.byte4 = .LN_init_IP_adress;
	.byte4 = .LN._init_IP_adress.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN0;
	.byte4 = .LN._init_IP_adress.end;
	.byte =
		0x00,0x00,0x0E,0xF4,0x09,0x00,0x00,0x74,0x69,0x6D,0x65,0x5F,
		0x72,0x65,0x74,0x75,0x72,0x6E,0x00,0x01;
	.byte4 = .LN_time_return;
	.byte4 = .LN._time_return.end;
	.byte =
		0x01,0x4C,0x04,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN1;
	.byte4 = .LN._time_return.end;
	.byte =
		0x00,0x00,0x0C,0x1C,0x0A,0x00,0x00,0x67,0x65,0x74,0x53,0x55,
		0x42,0x52,0x00,0x01;
	.byte4 = .LN_getSUBR;
	.byte4 = .LN._getSUBR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN2;
	.byte4 = .LN._getSUBR.end;
	.byte =
		0x00,0x00,0x0C,0x45,0x0A,0x00,0x00,0x73,0x61,0x76,0x65,0x53,
		0x55,0x42,0x52,0x00,0x01;
	.byte4 = .LN_saveSUBR;
	.byte4 = .LN._saveSUBR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN7;
	.byte4 = .LN._saveSUBR.end;
	.byte =
		0x00,0x00,0x0E,0x7B,0x0A,0x00,0x00,0x67,0x65,0x74,0x49,0x49,
		0x4E,0x43,0x48,0x49,0x50,0x5F,0x54,0x78,0x42,0x41,0x53,0x45,
		0x00,0x01;
	.byte4 = .LN_getIINCHIP_TxBASE;
	.byte4 = .LN._getIINCHIP_TxBASE.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN12;
	.byte4 = .LN._getIINCHIP_TxBASE.end;
	.byte =
		0x00,0x00,0x0E,0xB1,0x0A,0x00,0x00,0x67,0x65,0x74,0x49,0x49,
		0x4E,0x43,0x48,0x49,0x50,0x5F,0x52,0x78,0x42,0x41,0x53,0x45,
		0x00,0x01;
	.byte4 = .LN_getIINCHIP_RxBASE;
	.byte4 = .LN._getIINCHIP_RxBASE.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN13;
	.byte4 = .LN._getIINCHIP_RxBASE.end;
	.byte =
		0x00,0x00,0x0E,0xE7,0x0A,0x00,0x00,0x67,0x65,0x74,0x49,0x49,
		0x4E,0x43,0x48,0x49,0x50,0x5F,0x54,0x78,0x4D,0x41,0x53,0x4B,
		0x00,0x01;
	.byte4 = .LN_getIINCHIP_TxMASK;
	.byte4 = .LN._getIINCHIP_TxMASK.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN14;
	.byte4 = .LN._getIINCHIP_TxMASK.end;
	.byte =
		0x00,0x00,0x0E,0x1D,0x0B,0x00,0x00,0x67,0x65,0x74,0x49,0x49,
		0x4E,0x43,0x48,0x49,0x50,0x5F,0x52,0x78,0x4D,0x41,0x53,0x4B,
		0x00,0x01;
	.byte4 = .LN_getIINCHIP_RxMASK;
	.byte4 = .LN._getIINCHIP_RxMASK.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN15;
	.byte4 = .LN._getIINCHIP_RxMASK.end;
	.byte =
		0x00,0x00,0x0E,0x52,0x0B,0x00,0x00,0x67,0x65,0x74,0x49,0x49,
		0x4E,0x43,0x48,0x49,0x50,0x5F,0x54,0x78,0x4D,0x41,0x58,0x00,
		0x01;
	.byte4 = .LN_getIINCHIP_TxMAX;
	.byte4 = .LN._getIINCHIP_TxMAX.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN16;
	.byte4 = .LN._getIINCHIP_TxMAX.end;
	.byte =
		0x00,0x00,0x0E,0x87,0x0B,0x00,0x00,0x67,0x65,0x74,0x49,0x49,
		0x4E,0x43,0x48,0x49,0x50,0x5F,0x52,0x78,0x4D,0x41,0x58,0x00,
		0x01;
	.byte4 = .LN_getIINCHIP_RxMAX;
	.byte4 = .LN._getIINCHIP_RxMAX.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN17;
	.byte4 = .LN._getIINCHIP_RxMAX.end;
	.byte =
		0x00,0x00,0x0C,0xAE,0x0B,0x00,0x00,0x70,0x75,0x74,0x49,0x53,
		0x52,0x00,0x01;
	.byte4 = .LN_putISR;
	.byte4 = .LN._putISR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN18;
	.byte4 = .LN._putISR.end;
	.byte =
		0x00,0x00,0x0E,0xD9,0x0B,0x00,0x00,0x67,0x65,0x74,0x49,0x53,
		0x52,0x00,0x01;
	.byte4 = .LN_getISR;
	.byte4 = .LN._getISR.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN22;
	.byte4 = .LN._getISR.end;
	.byte =
		0x00,0x00,0x0C,0x13,0x0C,0x00,0x00,0x69,0x6E,0x69,0x74,0x5F,
		0x77,0x69,0x6E,0x64,0x6F,0x77,0x66,0x75,0x6C,0x6C,0x5F,0x72,
		0x65,0x74,0x72,0x79,0x5F,0x63,0x6E,0x74,0x00,0x01;
	.byte4 = .LN_init_windowfull_retry_cnt;
	.byte4 = .LN._init_windowfull_retry_cnt.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN25;
	.byte4 = .LN._init_windowfull_retry_cnt.end;
	.byte =
		0x00,0x00,0x0E,0x51,0x0C,0x00,0x00,0x69,0x6E,0x63,0x72,0x5F,
		0x77,0x69,0x6E,0x64,0x6F,0x77,0x66,0x75,0x6C,0x6C,0x5F,0x72,
		0x65,0x74,0x72,0x79,0x5F,0x63,0x6E,0x74,0x00,0x01;
	.byte4 = .LN_incr_windowfull_retry_cnt;
	.byte4 = .LN._incr_windowfull_retry_cnt.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN29;
	.byte4 = .LN._incr_windowfull_retry_cnt.end;
	.byte =
		0x00,0x00,0x0C,0x7A,0x0C,0x00,0x00,0x44,0x65,0x6C,0x61,0x79,
		0x5F,0x75,0x73,0x00,0x01;
	.byte4 = .LN_Delay_us;
	.byte4 = .LN._Delay_us.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN30;
	.byte4 = .LN._Delay_us.end;
	.byte =
		0x00,0x00,0x0C,0xA3,0x0C,0x00,0x00,0x44,0x65,0x6C,0x61,0x79,
		0x5F,0x6D,0x73,0x00,0x01;
	.byte4 = .LN_Delay_ms;
	.byte4 = .LN._Delay_ms.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN31;
	.byte4 = .LN._Delay_ms.end;
	.byte =
		0x00,0x00,0x0C,0xCD,0x0C,0x00,0x00,0x77,0x61,0x69,0x74,0x5F,
		0x31,0x30,0x6D,0x73,0x00,0x01;
	.byte4 = .LN_wait_10ms;
	.byte4 = .LN._wait_10ms.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN32;
	.byte4 = .LN._wait_10ms.end;
	.byte =
		0x00,0x00,0x0C,0xF4,0x0C,0x00,0x00,0x57,0x49,0x5A,0x5F,0x43,
		0x53,0x00,0x01;
	.byte4 = .LN_WIZ_CS;
	.byte4 = .LN._WIZ_CS.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN33;
	.byte4 = .LN._WIZ_CS.end;
	.byte =
		0x00,0x00,0x0E,0x26,0x0D,0x00,0x00,0x53,0x50,0x49,0x31,0x5F,
		0x53,0x65,0x6E,0x64,0x42,0x79,0x74,0x65,0x00,0x01;
	.byte4 = .LN_SPI1_SendByte;
	.byte4 = .LN._SPI1_SendByte.end;
	.byte =
		0x01,0x2F,0x04,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN35;
	.byte4 = .LN._SPI1_SendByte.end;
	.byte =
		0x00,0x00,0x0C,0x54,0x0D,0x00,0x00,0x49,0x49,0x4E,0x43,0x48,
		0x49,0x50,0x5F,0x43,0x53,0x6F,0x66,0x66,0x00,0x01;
	.byte4 = .LN_IINCHIP_CSoff;
	.byte4 = .LN._IINCHIP_CSoff.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN40;
	.byte4 = .LN._IINCHIP_CSoff.end;
	.byte =
		0x00,0x00,0x0C,0x81,0x0D,0x00,0x00,0x49,0x49,0x4E,0x43,0x48,
		0x49,0x50,0x5F,0x43,0x53,0x6F,0x6E,0x00,0x01;
	.byte4 = .LN_IINCHIP_CSon;
	.byte4 = .LN._IINCHIP_CSon.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN42;
	.byte4 = .LN._IINCHIP_CSon.end;
	.byte =
		0x00,0x00,0x0E,0xB9,0x0D,0x00,0x00,0x49,0x49,0x4E,0x43,0x48,
		0x49,0x50,0x5F,0x53,0x70,0x69,0x53,0x65,0x6E,0x64,0x44,0x61,
		0x74,0x61,0x00,0x01;
	.byte4 = .LN_IINCHIP_SpiSendData;
	.byte4 = .LN._IINCHIP_SpiSendData.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN44;
	.byte4 = .LN._IINCHIP_SpiSendData.end;
	.byte =
		0x00,0x00,0x0E,0xEB,0x0D,0x00,0x00,0x49,0x49,0x4E,0x43,0x48,
		0x49,0x50,0x5F,0x57,0x52,0x49,0x54,0x45,0x00,0x01;
	.byte4 = .LN_IINCHIP_WRITE;
	.byte4 = .LN._IINCHIP_WRITE.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN46;
	.byte4 = .LN._IINCHIP_WRITE.end;
	.byte =
		0x00,0x00,0x0E,0x1C,0x0E,0x00,0x00,0x49,0x49,0x4E,0x43,0x48,
		0x49,0x50,0x5F,0x52,0x45,0x41,0x44,0x00,0x01;
	.byte4 = .LN_IINCHIP_READ;
	.byte4 = .LN._IINCHIP_READ.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN55;
	.byte4 = .LN._IINCHIP_READ.end;
	.byte =
		0x00,0x00,0x0C,0x42,0x0E,0x00,0x00,0x63,0x6C,0x6F,0x73,0x65,
		0x00,0x01;
	.byte4 = .LN_close;
	.byte4 = .LN._close.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN64;
	.byte4 = .LN._close.end;
	.byte =
		0x00,0x00,0x0E,0x7B,0x0E,0x00,0x00,0x73,0x6F,0x63,0x6B,0x65,
		0x74,0x00,0x01;
	.byte4 = .LN_socket;
	.byte4 = .LN._socket.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0F,0x66,0x6C,0x61,0x67,
		0x00,0x98,0x01,0x00,0x00,0x02,0x7F,0x14,0x00,0x0D,0x00,0x00,
		0x00,0x00;
	.byte4 = .LN75;
	.byte4 = .LN._socket.end;
	.byte =
		0x00,0x00,0x0E,0xA6,0x0E,0x00,0x00,0x6C,0x69,0x73,0x74,0x65,
		0x6E,0x00,0x01;
	.byte4 = .LN_listen;
	.byte4 = .LN._listen.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN109;
	.byte4 = .LN._listen.end;
	.byte =
		0x00,0x00,0x0C,0xD1,0x0E,0x00,0x00,0x64,0x69,0x73,0x63,0x6F,
		0x6E,0x6E,0x65,0x63,0x74,0x00,0x01;
	.byte4 = .LN_disconnect;
	.byte4 = .LN._disconnect.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN122;
	.byte4 = .LN._disconnect.end;
	.byte =
		0x00,0x00,0x0E,0x03,0x0F,0x00,0x00,0x77,0x69,0x7A,0x5F,0x77,
		0x72,0x69,0x74,0x65,0x5F,0x62,0x75,0x66,0x00,0x01;
	.byte4 = .LN_wiz_write_buf;
	.byte4 = .LN._wiz_write_buf.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN132;
	.byte4 = .LN._wiz_write_buf.end;
	.byte =
		0x00,0x00,0x0E,0x34,0x0F,0x00,0x00,0x77,0x69,0x7A,0x5F,0x72,
		0x65,0x61,0x64,0x5F,0x62,0x75,0x66,0x00,0x01;
	.byte4 = .LN_wiz_read_buf;
	.byte4 = .LN._wiz_read_buf.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN148;
	.byte4 = .LN._wiz_read_buf.end;
	.byte =
		0x00,0x00,0x0C,0x5C,0x0F,0x00,0x00,0x73,0x79,0x73,0x69,0x6E,
		0x69,0x74,0x00,0x01;
	.byte4 = .LN_sysinit;
	.byte4 = .LN._sysinit.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN161;
	.byte4 = .LN._sysinit.end;
	.byte =
		0x00,0x00,0x0C,0x83,0x0F,0x00,0x00,0x73,0x65,0x74,0x47,0x41,
		0x52,0x00,0x01;
	.byte4 = .LN_setGAR;
	.byte4 = .LN._setGAR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN236;
	.byte4 = .LN._setGAR.end;
	.byte =
		0x00,0x00,0x0C,0xAB,0x0F,0x00,0x00,0x73,0x65,0x74,0x53,0x55,
		0x42,0x52,0x00,0x01;
	.byte4 = .LN_setSUBR;
	.byte4 = .LN._setSUBR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN246;
	.byte4 = .LN._setSUBR.end;
	.byte =
		0x00,0x00,0x0C,0xD5,0x0F,0x00,0x00,0x63,0x6C,0x65,0x61,0x72,
		0x53,0x55,0x42,0x52,0x00,0x01;
	.byte4 = .LN_clearSUBR;
	.byte4 = .LN._clearSUBR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN255;
	.byte4 = .LN._clearSUBR.end;
	.byte =
		0x00,0x00,0x0C,0xFD,0x0F,0x00,0x00,0x73,0x65,0x74,0x53,0x48,
		0x41,0x52,0x00,0x01;
	.byte4 = .LN_setSHAR;
	.byte4 = .LN._setSHAR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN260;
	.byte4 = .LN._setSHAR.end;
	.byte =
		0x00,0x00,0x0C,0x25,0x10,0x00,0x00,0x73,0x65,0x74,0x53,0x49,
		0x50,0x52,0x00,0x01;
	.byte4 = .LN_setSIPR;
	.byte4 = .LN._setSIPR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN274;
	.byte4 = .LN._setSIPR.end;
	.byte =
		0x00,0x00,0x0C,0x4C,0x10,0x00,0x00,0x67,0x65,0x74,0x47,0x41,
		0x52,0x00,0x01;
	.byte4 = .LN_getGAR;
	.byte4 = .LN._getGAR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN284;
	.byte4 = .LN._getGAR.end;
	.byte =
		0x00,0x00,0x0C,0x74,0x10,0x00,0x00,0x67,0x65,0x74,0x53,0x48,
		0x41,0x52,0x00,0x01;
	.byte4 = .LN_getSHAR;
	.byte4 = .LN._getSHAR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN293;
	.byte4 = .LN._getSHAR.end;
	.byte =
		0x00,0x00,0x0C,0x9C,0x10,0x00,0x00,0x67,0x65,0x74,0x53,0x49,
		0x50,0x52,0x00,0x01;
	.byte4 = .LN_getSIPR;
	.byte4 = .LN._getSIPR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN306;
	.byte4 = .LN._getSIPR.end;
	.byte =
		0x00,0x00,0x0C,0xC2,0x10,0x00,0x00,0x73,0x65,0x74,0x4D,0x52,
		0x00,0x01;
	.byte4 = .LN_setMR;
	.byte4 = .LN._setMR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN315;
	.byte4 = .LN._setMR.end;
	.byte =
		0x00,0x00,0x0C,0xEF,0x10,0x00,0x00,0x69,0x69,0x6E,0x63,0x68,
		0x69,0x70,0x5F,0x69,0x6E,0x69,0x74,0x00,0x01;
	.byte4 = .LN_iinchip_init;
	.byte4 = .LN._iinchip_init.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN317;
	.byte4 = .LN._iinchip_init.end;
	.byte =
		0x00,0x00,0x0E,0x19,0x11,0x00,0x00,0x67,0x65,0x74,0x49,0x52,
		0x00,0x01;
	.byte4 = .LN_getIR;
	.byte4 = .LN._getIR.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN319;
	.byte4 = .LN._getIR.end;
	.byte =
		0x00,0x00,0x0C,0x40,0x11,0x00,0x00,0x73,0x65,0x74,0x52,0x54,
		0x52,0x00,0x01;
	.byte4 = .LN_setRTR;
	.byte4 = .LN._setRTR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN321;
	.byte4 = .LN._setRTR.end;
	.byte =
		0x00,0x00,0x0C,0x67,0x11,0x00,0x00,0x73,0x65,0x74,0x52,0x43,
		0x52,0x00,0x01;
	.byte4 = .LN_setRCR;
	.byte4 = .LN._setRCR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN330;
	.byte4 = .LN._setRCR.end;
	.byte =
		0x00,0x00,0x0C,0x8E,0x11,0x00,0x00,0x73,0x65,0x74,0x49,0x4D,
		0x52,0x00,0x01;
	.byte4 = .LN_setIMR;
	.byte4 = .LN._setIMR.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN332;
	.byte4 = .LN._setIMR.end;
	.byte =
		0x00,0x00,0x0C,0xB8,0x11,0x00,0x00,0x73,0x65,0x74,0x53,0x6E,
		0x5F,0x4D,0x53,0x53,0x00,0x01;
	.byte4 = .LN_setSn_MSS;
	.byte4 = .LN._setSn_MSS.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN334;
	.byte4 = .LN._setSn_MSS.end;
	.byte =
		0x00,0x00,0x0C,0xE2,0x11,0x00,0x00,0x73,0x65,0x74,0x53,0x6E,
		0x5F,0x54,0x54,0x4C,0x00,0x01;
	.byte4 = .LN_setSn_TTL;
	.byte4 = .LN._setSn_TTL.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN348;
	.byte4 = .LN._setSn_TTL.end;
	.byte =
		0x00,0x00,0x0C,0x0E,0x12,0x00,0x00,0x73,0x65,0x74,0x53,0x6E,
		0x5F,0x50,0x52,0x4F,0x54,0x4F,0x00,0x01;
	.byte4 = .LN_setSn_PROTO;
	.byte4 = .LN._setSn_PROTO.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN353;
	.byte4 = .LN._setSn_PROTO.end;
	.byte =
		0x00,0x00,0x0E,0x3B,0x12,0x00,0x00,0x67,0x65,0x74,0x53,0x6E,
		0x5F,0x49,0x52,0x00,0x01;
	.byte4 = .LN_getSn_IR;
	.byte4 = .LN._getSn_IR.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN358;
	.byte4 = .LN._getSn_IR.end;
	.byte =
		0x00,0x00,0x0E,0x67,0x12,0x00,0x00,0x63,0x6F,0x6E,0x6E,0x65,
		0x63,0x74,0x00,0x01;
	.byte4 = .LN_connect;
	.byte4 = .LN._connect.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN363;
	.byte4 = .LN._connect.end;
	.byte =
		0x00,0x00,0x0E,0x94,0x12,0x00,0x00,0x67,0x65,0x74,0x53,0x6E,
		0x5F,0x53,0x52,0x00,0x01;
	.byte4 = .LN_getSn_SR;
	.byte4 = .LN._getSn_SR.end;
	.byte =
		0x01,0x98,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN420;
	.byte4 = .LN._getSn_SR.end;
	.byte =
		0x00,0x00,0x0E,0xC5,0x12,0x00,0x00,0x67,0x65,0x74,0x53,0x6E,
		0x5F,0x54,0x58,0x5F,0x46,0x53,0x52,0x00,0x01;
	.byte4 = .LN_getSn_TX_FSR;
	.byte4 = .LN._getSn_TX_FSR.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN425;
	.byte4 = .LN._getSn_TX_FSR.end;
	.byte =
		0x00,0x00,0x0E,0xF6,0x12,0x00,0x00,0x67,0x65,0x74,0x53,0x6E,
		0x5F,0x52,0x58,0x5F,0x52,0x53,0x52,0x00,0x01;
	.byte4 = .LN_getSn_RX_RSR;
	.byte4 = .LN._getSn_RX_RSR.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN444;
	.byte4 = .LN._getSn_RX_RSR.end;
	.byte =
		0x00,0x00,0x0C,0x2E,0x13,0x00,0x00,0x77,0x72,0x69,0x74,0x65,
		0x5F,0x64,0x61,0x74,0x61,0x00,0x01;
	.byte4 = .LN_write_data;
	.byte4 = .LN._write_data.end;
	.byte =
		0x01,0x01,0x00,0x0F,0x6C,0x65,0x6E,0x00,0xC2,0x01,0x00,0x00,
		0x02,0x7F,0x14,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN463;
	.byte4 = .LN._write_data.end;
	.byte =
		0x00,0x00,0x0C,0x63,0x13,0x00,0x00,0x73,0x65,0x6E,0x64,0x5F,
		0x64,0x61,0x74,0x61,0x5F,0x70,0x72,0x6F,0x63,0x65,0x73,0x73,
		0x69,0x6E,0x67,0x00,0x01;
	.byte4 = .LN_send_data_processing;
	.byte4 = .LN._send_data_processing.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN480;
	.byte4 = .LN._send_data_processing.end;
	.byte =
		0x00,0x00,0x0E,0xAA,0x13,0x00,0x00,0x73,0x65,0x6E,0x64,0x74,
		0x6F,0x00,0x01;
	.byte4 = .LN_sendto;
	.byte4 = .LN._sendto.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0F,0x61,0x64,0x64,0x72,
		0x00,0xAA,0x13,0x00,0x00,0x02,0x7F,0x14,0x00,0x0F,0x70,0x6F,
		0x72,0x74,0x00,0xC2,0x01,0x00,0x00,0x02,0x7F,0x18,0x00,0x0D,
		0x00,0x00,0x00,0x00;
	.byte4 = .LN498;
	.byte4 = .LN._sendto.end;
	.byte =
		0x00,0x00,0x04,0x00,0x98,0x01,0x00,0x00,0x0E,0xE8,0x13,0x00,
		0x00,0x73,0x65,0x6E,0x64,0x00,0x01;
	.byte4 = .LN_send;
	.byte4 = .LN._send.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0F,0x72,0x65,0x74,0x72,
		0x79,0x00,0x6E,0x01,0x00,0x00,0x02,0x7F,0x14,0x00,0x0D,0x00,
		0x00,0x00,0x00;
	.byte4 = .LN550;
	.byte4 = .LN._send.end;
	.byte =
		0x00,0x00,0x0C,0x1F,0x14,0x00,0x00,0x72,0x65,0x61,0x64,0x5F,
		0x64,0x61,0x74,0x61,0x00,0x01;
	.byte4 = .LN_read_data;
	.byte4 = .LN._read_data.end;
	.byte =
		0x01,0x01,0x00,0x0F,0x6C,0x65,0x6E,0x00,0xC2,0x01,0x00,0x00,
		0x02,0x7F,0x14,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN593;
	.byte4 = .LN._read_data.end;
	.byte =
		0x00,0x00,0x0E,0x7B,0x14,0x00,0x00,0x72,0x65,0x63,0x76,0x66,
		0x72,0x6F,0x6D,0x00,0x01;
	.byte4 = .LN_recvfrom;
	.byte4 = .LN._recvfrom.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0F,0x61,0x64,0x64,0x72,
		0x00,0xAA,0x13,0x00,0x00,0x02,0x7F,0x14,0x00,0x0F,0x70,0x6F,
		0x72,0x74,0x00,0x89,0x14,0x00,0x00,0x02,0x7F,0x18,0x00,0x0D,
		0x00,0x00,0x00,0x00;
	.byte4 = .LN610;
	.byte4 = .LN._recvfrom.end;
	.byte =
		0x10,0x68,0x65,0x61,0x64,0x00,0x01,0x7B,0x14,0x00,0x00,0x02,
		0x7F,0x78;
	.byte4 = .LN669-.LN_recvfrom;
	.byte =
		0x00,0x00,0x00,0x0A,0x89,0x14,0x00,0x00,0x98,0x01,0x00,0x00,
		0x0B,0x08,0x00,0x07,0x00,0x04,0x00,0xC2,0x01,0x00,0x00,0x0C,
		0xC4,0x14,0x00,0x00,0x72,0x65,0x63,0x76,0x5F,0x64,0x61,0x74,
		0x61,0x5F,0x70,0x72,0x6F,0x63,0x65,0x73,0x73,0x69,0x6E,0x67,
		0x00,0x01;
	.byte4 = .LN_recv_data_processing;
	.byte4 = .LN._recv_data_processing.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN692;
	.byte4 = .LN._recv_data_processing.end;
	.byte =
		0x00,0x00,0x0E,0xED,0x14,0x00,0x00,0x72,0x65,0x63,0x76,0x00,
		0x01;
	.byte4 = .LN_recv;
	.byte4 = .LN._recv.end;
	.byte =
		0x01,0xC2,0x01,0x00,0x00,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN713;
	.byte4 = .LN._recv.end;
	.byte =
		0x00,0x00,0x0C,0x1A,0x15,0x00,0x00,0x6C,0x6F,0x6F,0x70,0x62,
		0x61,0x63,0x6B,0x5F,0x75,0x64,0x70,0x00,0x01;
	.byte4 = .LN_loopback_udp;
	.byte4 = .LN._loopback_udp.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN722;
	.byte4 = .LN._loopback_udp.end;
	.byte =
		0x00,0x00,0x0C,0x5E,0x15,0x00,0x00,0x53,0x65,0x74,0x5F,0x6E,
		0x65,0x74,0x77,0x6F,0x72,0x6B,0x00,0x01;
	.byte4 = .LN_Set_network;
	.byte4 = .LN._Set_network.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN760;
	.byte4 = .LN._Set_network.end;
	.byte =
		0x10,0x74,0x6D,0x70,0x5F,0x61,0x72,0x72,0x61,0x79,0x00,0x01,
		0x5E,0x15,0x00,0x00,0x02,0x7F,0x78;
	.byte4 = .LN778-.LN_Set_network;
	.byte =
		0x00,0x00,0x00,0x0A,0x6C,0x15,0x00,0x00,0x98,0x01,0x00,0x00,
		0x0B,0x06,0x00,0x05,0x00,0x0C,0x94,0x15,0x00,0x00,0x73,0x65,
		0x6E,0x64,0x49,0x41,0x43,0x00,0x01;
	.byte4 = .LN_sendIAC;
	.byte4 = .LN._sendIAC.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN858;
	.byte4 = .LN._sendIAC.end;
	.byte =
		0x00,0x00,0x0C,0xC0,0x15,0x00,0x00,0x69,0x6E,0x69,0x74,0x5F,
		0x74,0x65,0x6C,0x6F,0x70,0x74,0x00,0x01;
	.byte4 = .LN_init_telopt;
	.byte4 = .LN._init_telopt.end;
	.byte =
		0x01,0x01,0x00,0x0D,0x00,0x00,0x00,0x00;
	.byte4 = .LN866;
	.byte4 = .LN._init_telopt.end;
	.byte =
		0x00,0x00,0x10,0x73,0x74,0x72,0x6E,0x67,0x31,0x00,0x01,0x30,
		0x1C,0x00,0x00,0x05,0x03;
	.byte4 = _strng1;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x66,0x6C,0x61,0x67,0x5F,0x52,
		0x58,0x5F,0x55,0x44,0x50,0x00,0x01,0x98,0x01,0x00,0x00,0x05,
		0x03;
	.byte4 = _flag_RX_UDP;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x53,0x52,0x5F,0x6C,0x65,
		0x6E,0x5F,0x54,0x53,0x54,0x00,0x01,0xA9,0x01,0x00,0x00,0x05,
		0x03;
	.byte4 = _RSR_len_TST;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x73,0x63,0x68,0x5F,0x74,0x78,
		0x5F,0x70,0x61,0x63,0x6B,0x65,0x74,0x00,0x01,0xC2,0x01,0x00,
		0x00,0x05,0x03;
	.byte4 = _sch_tx_packet;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x70,0x72,0x65,0x73,0x65,0x6E,
		0x74,0x54,0x69,0x6D,0x65,0x00,0x01,0x4C,0x04,0x00,0x00,0x05,
		0x03;
	.byte4 = _presentTime;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x61,0x6E,0x79,0x5F,0x70,0x6F,
		0x72,0x74,0x00,0x01,0xC2,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _any_port;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x63,0x68,0x5F,0x73,0x74,0x61,
		0x74,0x75,0x73,0x00,0x01,0x22,0x1C,0x00,0x00,0x05,0x03;
	.byte4 = _ch_status;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x54,0x58,0x5F,0x42,0x55,0x46,
		0x00,0x01,0x12,0x1C,0x00,0x00,0x05,0x03;
	.byte4 = _TX_BUF;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x58,0x5F,0x42,0x55,0x46,
		0x00,0x01,0x02,0x1C,0x00,0x00,0x05,0x03;
	.byte4 = _RX_BUF;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x6C,0x73,0x72,0x5F,0x72,0x61,
		0x7A,0x6D,0x65,0x72,0x00,0x01,0xE9,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _lsr_razmer;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x6D,0x79,0x5F,0x74,0x69,0x6D,
		0x65,0x00,0x01,0x4C,0x04,0x00,0x00,0x05,0x03;
	.byte4 = _my_time;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x45,0x6E,0x61,0x62,0x6C,0x65,
		0x5F,0x44,0x48,0x43,0x50,0x00,0x01,0x98,0x01,0x00,0x00,0x05,
		0x03;
	.byte4 = _Enable_DHCP;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x4E,0x55,0x4D,0x42,0x45,0x52,
		0x5F,0x42,0x4C,0x4F,0x4B,0x00,0x01,0x98,0x01,0x00,0x00,0x05,
		0x03;
	.byte4 = _NUMBER_BLOK;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x4D,0x41,0x43,0x00,0x01,0xF4,
		0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _MAC;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x49,0x50,0x00,0x01,0xE6,0x1B,
		0x00,0x00,0x05,0x03;
	.byte4 = _IP;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x47,0x61,0x74,0x65,0x57,0x61,
		0x79,0x00,0x01,0xD8,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _GateWay;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x53,0x75,0x62,0x4E,0x65,0x74,
		0x00,0x01,0xCA,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _SubNet;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x48,0x61,0x72,0x64,0x5F,0x72,
		0x65,0x67,0x00,0x01,0xBC,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _Hard_reg;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x65,0x63,0x65,0x69,0x76,
		0x65,0x5F,0x44,0x41,0x54,0x41,0x00,0x01,0xAE,0x1B,0x00,0x00,
		0x05,0x03;
	.byte4 = _Receive_DATA;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x65,0x63,0x65,0x69,0x76,
		0x65,0x5F,0x49,0x50,0x00,0x01,0xA0,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _Receive_IP;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x65,0x63,0x65,0x69,0x76,
		0x65,0x5F,0x50,0x6F,0x72,0x74,0x5F,0x64,0x65,0x73,0x74,0x69,
		0x6E,0x61,0x74,0x69,0x6F,0x6E,0x00,0x01,0x92,0x1B,0x00,0x00,
		0x05,0x03;
	.byte4 = _Receive_Port_destination;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x65,0x63,0x65,0x69,0x76,
		0x65,0x5F,0x62,0x79,0x74,0x65,0x5F,0x73,0x69,0x7A,0x65,0x00,
		0x01,0x84,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _Receive_byte_size;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x65,0x63,0x5F,0x46,0x6C,
		0x61,0x67,0x00,0x01,0x2F,0x04,0x00,0x00,0x05,0x03;
	.byte4 = _Rec_Flag;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x73,0x69,0x7A,0x65,0x00,0x01,
		0x3D,0x04,0x00,0x00,0x05,0x03;
	.byte4 = _size;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x44,0x65,0x73,0x74,0x5F,0x49,
		0x50,0x00,0x01,0x76,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _Dest_IP;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x44,0x65,0x73,0x74,0x5F,0x50,
		0x4F,0x52,0x54,0x00,0x01,0xC2,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _Dest_PORT;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x43,0x6F,0x6E,0x66,0x69,0x67,
		0x5F,0x4D,0x73,0x67,0x00,0x01,0x82,0x08,0x00,0x00,0x05,0x03;
	.byte4 = _Config_Msg;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x43,0x68,0x63,0x6F,0x6E,0x66,
		0x69,0x67,0x5F,0x54,0x79,0x70,0x65,0x5F,0x44,0x65,0x66,0x00,
		0x01,0xBA,0x08,0x00,0x00,0x05,0x03;
	.byte4 = _Chconfig_Type_Def;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x74,0x78,0x73,0x69,0x7A,0x65,
		0x00,0x01,0x68,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _txsize;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x72,0x78,0x73,0x69,0x7A,0x65,
		0x00,0x01,0x5A,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _rxsize;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x73,0x63,0x68,0x5F,0x70,0x61,
		0x63,0x6B,0x65,0x74,0x5F,0x55,0x44,0x50,0x5F,0x72,0x65,0x63,
		0x69,0x76,0x00,0x01,0xE9,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _sch_packet_UDP_reciv;
	.byte =
		0x00,0x00,0x00,0x00,0x01,0x10,0x49,0x5F,0x53,0x54,0x41,0x54,
		0x55,0x53,0x00,0x01,0x4C,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _I_STATUS;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x53,0x4D,0x41,0x53,0x4B,0x00,
		0x01,0x3E,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _SMASK;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x4D,0x41,0x53,0x4B,0x00,
		0x01,0x30,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _RMASK;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x53,0x53,0x49,0x5A,0x45,0x00,
		0x01,0x22,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _SSIZE;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x53,0x49,0x5A,0x45,0x00,
		0x01,0x14,0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _RSIZE;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x53,0x42,0x55,0x46,0x42,0x41,
		0x53,0x45,0x41,0x44,0x44,0x52,0x45,0x53,0x53,0x00,0x01,0x06,
		0x1B,0x00,0x00,0x05,0x03;
	.byte4 = _SBUFBASEADDRESS;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x52,0x42,0x55,0x46,0x42,0x41,
		0x53,0x45,0x41,0x44,0x44,0x52,0x45,0x53,0x53,0x00,0x01,0xF8,
		0x1A,0x00,0x00,0x05,0x03;
	.byte4 = _RBUFBASEADDRESS;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x53,0x55,0x42,0x4E,0x45,0x54,
		0x00,0x01,0xEA,0x1A,0x00,0x00,0x05,0x03;
	.byte4 = _SUBNET;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x6C,0x6F,0x63,0x61,0x6C,0x5F,
		0x70,0x6F,0x72,0x74,0x00,0x01,0xC2,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _local_port;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x77,0x69,0x6E,0x64,0x6F,0x77,
		0x66,0x75,0x6C,0x6C,0x5F,0x72,0x65,0x74,0x72,0x79,0x5F,0x63,
		0x6E,0x74,0x00,0x01,0xDC,0x1A,0x00,0x00,0x05,0x03;
	.byte4 = _windowfull_retry_cnt;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x70,0x72,0x65,0x5F,0x73,0x65,
		0x6E,0x74,0x5F,0x70,0x74,0x72,0x00,0x01,0xC2,0x01,0x00,0x00,
		0x05,0x03;
	.byte4 = _pre_sent_ptr;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x73,0x65,0x6E,0x74,0x5F,0x70,
		0x74,0x72,0x00,0x01,0xC2,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _sent_ptr;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x64,0x65,0x73,0x74,0x69,0x70,
		0x5F,0x55,0x44,0x50,0x00,0x01,0xE9,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _destip_UDP;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x64,0x65,0x73,0x74,0x70,0x6F,
		0x72,0x74,0x5F,0x55,0x44,0x50,0x00,0x01,0xC2,0x01,0x00,0x00,
		0x05,0x03;
	.byte4 = _destport_UDP;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x46,0x4C,0x41,0x47,0x5F,0x55,
		0x44,0x50,0x5F,0x45,0x56,0x45,0x4E,0x54,0x00,0x01,0xC2,0x01,
		0x00,0x00,0x05,0x03;
	.byte4 = _FLAG_UDP_EVENT;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x10,0x46,0x4C,0x41,0x47,0x5F,0x55,
		0x44,0x50,0x5F,0x49,0x4E,0x53,0x54,0x41,0x4C,0x4C,0x00,0x01,
		0x98,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _FLAG_UDP_INSTALL;
	.inc/binary ".\Release\W5200.sbn", 2653, 361;
.epcdebug.end:

	.section .debug_line SHT_DEBUGINFO;

	.align 1;
.epcline:
	.type .epcline,STT_OBJECT;
	.inc/binary ".\Release\W5200.sbn", 3014, 541;
	.byte4 = .LN_init_IP_adress;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xBD,0x12,0x01,0x00,0x05,0x02;
	.byte4 = .LN0;
	.byte =
		0x2E,0x00,0x05,0x02;
	.byte4 = .LN._init_IP_adress.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_time_return;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xBD,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN1;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._time_return.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getSUBR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xD7,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN2;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN3;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN4;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN5;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN6;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getSUBR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_saveSUBR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x98,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN7;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN8;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN9;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN10;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN11;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._saveSUBR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getIINCHIP_TxBASE;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xB3,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN12;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getIINCHIP_TxBASE.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getIINCHIP_RxBASE;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xAF,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN13;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getIINCHIP_RxBASE.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getIINCHIP_TxMASK;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xAB,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN14;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getIINCHIP_TxMASK.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getIINCHIP_RxMASK;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xA7,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN15;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getIINCHIP_RxMASK.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getIINCHIP_TxMAX;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xA3,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN16;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getIINCHIP_TxMAX.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getIINCHIP_RxMAX;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x9F,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN17;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getIINCHIP_RxMAX.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_putISR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x9B,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN18;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN19;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN20;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN21;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._putISR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getISR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x97,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN22;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN23;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN24;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getISR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_init_windowfull_retry_cnt;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x90,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN25;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN26;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN27;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN28;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._init_windowfull_retry_cnt.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_incr_windowfull_retry_cnt;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x8B,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN29;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._incr_windowfull_retry_cnt.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Delay_us;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xCC,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN30;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN._Delay_us.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Delay_ms;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xD9,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN31;
	.byte =
		0x12,0x00,0x05,0x02;
	.byte4 = .LN._Delay_ms.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_wait_10ms;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xE5,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN32;
	.byte =
		0x0F,0x00,0x05,0x02;
	.byte4 = .LN._wait_10ms.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_WIZ_CS;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xF0,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN33;
	.byte =
		0x05,0x0D,0x0B,0x00,0x05,0x02;
	.byte4 = .LN34;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._WIZ_CS.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_SPI1_SendByte;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xFB,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN35;
	.byte =
		0x05,0x17,0x0C,0x00,0x05,0x02;
	.byte4 = .LN36;
	.byte =
		0x05,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN37;
	.byte =
		0x05,0x2F,0x01,0x00,0x05,0x02;
	.byte4 = .LN38;
	.byte =
		0x05,0x0B,0x0C,0x00,0x05,0x02;
	.byte4 = .LN39;
	.byte =
		0x05,0x04,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._SPI1_SendByte.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_IINCHIP_CSoff;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xB7,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN40;
	.byte =
		0x05,0x08,0x0A,0x00,0x05,0x02;
	.byte4 = .LN41;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._IINCHIP_CSoff.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_IINCHIP_CSon;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xBB,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN42;
	.byte =
		0x05,0x08,0x0A,0x00,0x05,0x02;
	.byte4 = .LN43;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._IINCHIP_CSon.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_IINCHIP_SpiSendData;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xBF,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN44;
	.byte =
		0x05,0x16,0x0A,0x00,0x05,0x02;
	.byte4 = .LN45;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN._IINCHIP_SpiSendData.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_IINCHIP_WRITE;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x80,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN46;
	.byte =
		0x05,0x0F,0x0D,0x00,0x05,0x02;
	.byte4 = .LN47;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN48;
	.byte =
		0x05,0x15,0x01,0x00,0x05,0x02;
	.byte4 = .LN49;
	.byte =
		0x05,0x01,0x03,0x7A,0x01,0x00,0x05,0x02;
	.byte4 = .LN50;
	.byte =
		0x05,0x15,0x10,0x00,0x05,0x02;
	.byte4 = .LN51;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN52;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN53;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN54;
	.byte =
		0x05,0x02,0x0E,0x00,0x05,0x02;
	.byte4 = .LN._IINCHIP_WRITE.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_IINCHIP_READ;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x95,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN55;
	.byte =
		0x05,0x0F,0x0E,0x00,0x05,0x02;
	.byte4 = .LN56;
	.byte =
		0x05,0x05,0x0B,0x00,0x05,0x02;
	.byte4 = .LN57;
	.byte =
		0x05,0x18,0x01,0x00,0x05,0x02;
	.byte4 = .LN58;
	.byte =
		0x05,0x01,0x03,0x79,0x01,0x00,0x05,0x02;
	.byte4 = .LN59;
	.byte =
		0x05,0x15,0x11,0x00,0x05,0x02;
	.byte4 = .LN60;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN61;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN62;
	.byte =
		0x05,0x1C,0x0A,0x00,0x05,0x02;
	.byte4 = .LN63;
	.byte =
		0x05,0x02,0x0E,0x00,0x05,0x02;
	.byte4 = .LN._IINCHIP_READ.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_close;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xF5,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN64;
	.byte =
		0x05,0x02,0x10,0x00,0x05,0x02;
	.byte4 = .LN65;
	.byte =
		0x05,0x01,0x03,0x79,0x01,0x00,0x05,0x02;
	.byte4 = .LN66;
	.byte =
		0x05,0x0D,0x0B,0x00,0x05,0x02;
	.byte4 = .LN67;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN68;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN69;
	.byte =
		0x05,0x0F,0x0C,0x00,0x05,0x02;
	.byte4 = .LN70;
	.byte =
		0x05,0x15,0x0C,0x00,0x05,0x02;
	.byte4 = .LN71;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN72;
	.byte =
		0x05,0x03,0x0D,0x00,0x05,0x02;
	.byte4 = .LN73;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN74;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._close.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_socket;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xC5,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN75;
	.byte =
		0x05,0x0D,0x0C,0x00,0x05,0x02;
	.byte4 = .LN76;
	.byte =
		0x05,0x01,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN77;
	.byte =
		0x05,0x0D,0x0C,0x00,0x05,0x02;
	.byte4 = .LN78;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN79;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN80;
	.byte =
		0x05,0x01,0x03,0x7A,0x01,0x00,0x05,0x02;
	.byte4 = .LN81;
	.byte =
		0x05,0x02,0x0F,0x00,0x05,0x02;
	.byte4 = .LN82;
	.byte =
		0x05,0x03,0x0C,0x00,0x05,0x02;
	.byte4 = .LN83;
	.byte =
		0x05,0x07,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN84;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN85;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN86;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN87;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN88;
	.byte =
		0x05,0x03,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN89;
	.byte =
		0x05,0x04,0x0B,0x00,0x05,0x02;
	.byte4 = .LN90;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN91;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.byte4 = .LN92;
	.byte =
		0x05,0x01,0x03,0x75,0x01,0x00,0x05,0x02;
	.byte4 = .LN93;
	.byte =
		0x05,0x04,0x15,0x00,0x05,0x02;
	.byte4 = .LN94;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.byte4 = .LN95;
	.byte =
		0x05,0x04,0x0D,0x00,0x05,0x02;
	.byte4 = .LN96;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN97;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN98;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN99;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN100;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.byte4 = .LN101;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN102;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.byte4 = .LN103;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN104;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN105;
	.byte =
		0x05,0x16,0x0C,0x00,0x05,0x02;
	.byte4 = .LN106;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN107;
	.byte =
		0x05,0x02,0x1C,0x00,0x05,0x02;
	.byte4 = .LN108;
	.byte =
		0x03,0x5E,0x01,0x00,0x05,0x02;
	.byte4 = .LN._socket.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_listen;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x8E,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN109;
	.byte =
		0x05,0x02,0x10,0x00,0x05,0x02;
	.byte4 = .LN110;
	.byte =
		0x05,0x01,0x03,0x79,0x01,0x00,0x05,0x02;
	.byte4 = .LN111;
	.byte =
		0x05,0x0A,0x0C,0x00,0x05,0x02;
	.byte4 = .LN112;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.byte4 = .LN113;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.byte4 = .LN114;
	.byte =
		0x05,0x12,0x01,0x00,0x05,0x02;
	.byte4 = .LN115;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN116;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN117;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN118;
	.byte =
		0x05,0x16,0x0B,0x00,0x05,0x02;
	.byte4 = .LN119;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN120;
	.byte =
		0x05,0x02,0x15,0x00,0x05,0x02;
	.byte4 = .LN121;
	.byte =
		0x05,0x0A,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN._listen.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_disconnect;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xEB,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN122;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN123;
	.byte =
		0x05,0x01,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN124;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN125;
	.byte =
		0x05,0x01,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN126;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN127;
	.byte =
		0x05,0x09,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN128;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN129;
	.byte =
		0x05,0x15,0x0C,0x00,0x05,0x02;
	.byte4 = .LN130;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN131;
	.byte =
		0x05,0x01,0x0C,0x00,0x05,0x02;
	.byte4 = .LN._disconnect.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_wiz_write_buf;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xAC,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN132;
	.byte =
		0x05,0x09,0x0E,0x00,0x05,0x02;
	.byte4 = .LN133;
	.byte =
		0x05,0x01,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN134;
	.byte =
		0x05,0x09,0x0E,0x00,0x05,0x02;
	.byte4 = .LN135;
	.byte =
		0x05,0x0F,0x10,0x00,0x05,0x02;
	.byte4 = .LN136;
	.byte =
		0x05,0x09,0x0B,0x00,0x05,0x02;
	.byte4 = .LN137;
	.byte =
		0x05,0x1C,0x01,0x00,0x05,0x02;
	.byte4 = .LN138;
	.byte =
		0x05,0x01,0x03,0x72,0x01,0x00,0x05,0x02;
	.byte4 = .LN139;
	.byte =
		0x05,0x15,0x18,0x00,0x05,0x02;
	.byte4 = .LN140;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN141;
	.byte =
		0x05,0x15,0x01,0x00,0x05,0x02;
	.byte4 = .LN142;
	.byte =
		0x05,0x01,0x03,0x70,0x01,0x00,0x05,0x02;
	.byte4 = .LN143;
	.byte =
		0x05,0x15,0x1A,0x00,0x05,0x02;
	.byte4 = .LN144;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN145;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN146;
	.byte =
		0x05,0x16,0x01,0x00,0x05,0x02;
	.byte4 = .LN147;
	.byte =
		0x05,0x01,0x10,0x00,0x05,0x02;
	.byte4 = .LN._wiz_write_buf.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_wiz_read_buf;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xCE,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN148;
	.byte =
		0x05,0x0F,0x0E,0x00,0x05,0x02;
	.byte4 = .LN149;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN150;
	.byte =
		0x05,0x15,0x01,0x00,0x05,0x02;
	.byte4 = .LN151;
	.byte =
		0x05,0x01,0x03,0x79,0x01,0x00,0x05,0x02;
	.byte4 = .LN152;
	.byte =
		0x05,0x15,0x11,0x00,0x05,0x02;
	.byte4 = .LN153;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN154;
	.byte =
		0x05,0x15,0x01,0x00,0x05,0x02;
	.byte4 = .LN155;
	.byte =
		0x05,0x01,0x03,0x77,0x01,0x00,0x05,0x02;
	.byte4 = .LN156;
	.byte =
		0x05,0x15,0x13,0x00,0x05,0x02;
	.byte4 = .LN157;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN158;
	.byte =
		0x05,0x22,0x0B,0x00,0x05,0x02;
	.byte4 = .LN159;
	.byte =
		0x05,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN160;
	.byte =
		0x05,0x02,0x10,0x00,0x05,0x02;
	.byte4 = .LN._wiz_read_buf.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_sysinit;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x86,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN161;
	.byte =
		0x05,0x02,0x12,0x00,0x05,0x02;
	.byte4 = .LN162;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN163;
	.byte =
		0x05,0x05,0x3E,0x00,0x05,0x02;
	.byte4 = .LN164;
	.byte =
		0x11,0x00,0x05,0x02;
	.byte4 = .LN165;
	.byte =
		0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN166;
	.byte =
		0x15,0x00,0x05,0x02;
	.byte4 = .LN167;
	.byte =
		0x03,0x5E,0x01,0x00,0x05,0x02;
	.byte4 = .LN168;
	.byte =
		0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN169;
	.byte =
		0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN170;
	.byte =
		0x03,0x6A,0x01,0x00,0x05,0x02;
	.byte4 = .LN171;
	.byte =
		0x05,0x12,0x01,0x00,0x05,0x02;
	.byte4 = .LN172;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN173;
	.byte =
		0x05,0x12,0x01,0x00,0x05,0x02;
	.byte4 = .LN174;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN175;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN176;
	.byte =
		0x05,0x12,0x01,0x00,0x05,0x02;
	.byte4 = .LN177;
	.byte =
		0x05,0x03,0x18,0x00,0x05,0x02;
	.byte4 = .LN178;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN179;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN180;
	.byte =
		0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN181;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN182;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN183;
	.byte =
		0x05,0x0A,0x0B,0x00,0x05,0x02;
	.byte4 = .LN184;
	.byte =
		0x05,0x05,0x0C,0x00,0x05,0x02;
	.byte4 = .LN185;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN186;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN187;
	.byte =
		0x05,0x03,0x1F,0x00,0x05,0x02;
	.byte4 = .LN188;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN189;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN190;
	.byte =
		0x05,0x0A,0x0B,0x00,0x05,0x02;
	.byte4 = .LN191;
	.byte =
		0x05,0x05,0x03,0x6C,0x01,0x00,0x05,0x02;
	.byte4 = .LN192;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN193;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN194;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN195;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN196;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN197;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN198;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN199;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN200;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN201;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN202;
	.byte =
		0x14,0x00,0x05,0x02;
	.byte4 = .LN203;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN204;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN205;
	.byte =
		0x05,0x09,0x21,0x00,0x05,0x02;
	.byte4 = .LN206;
	.byte =
		0x05,0x03,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN207;
	.byte =
		0x05,0x09,0x0C,0x00,0x05,0x02;
	.byte4 = .LN208;
	.byte =
		0x05,0x03,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN209;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN210;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN211;
	.byte =
		0x05,0x09,0x0B,0x00,0x05,0x02;
	.byte4 = .LN212;
	.byte =
		0x05,0x04,0x0B,0x00,0x05,0x02;
	.byte4 = .LN213;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN214;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN215;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN216;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN217;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN218;
	.byte =
		0x05,0x03,0x03,0xB3,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN219;
	.byte =
		0x05,0x12,0x0C,0x00,0x05,0x02;
	.byte4 = .LN220;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN221;
	.byte =
		0x05,0x03,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN222;
	.byte =
		0x05,0x12,0x0C,0x00,0x05,0x02;
	.byte4 = .LN223;
	.byte =
		0x05,0x03,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN224;
	.byte =
		0x05,0x01,0x6F,0x00,0x05,0x02;
	.byte4 = .LN225;
	.byte =
		0x05,0x05,0x03,0x50,0x01,0x00,0x05,0x02;
	.byte4 = .LN226;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN227;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN228;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN229;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN230;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN231;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN232;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN233;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN234;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN235;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN._sysinit.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setGAR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x81,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN236;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN237;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN238;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN239;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN240;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN241;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN242;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN243;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN244;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN245;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setGAR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setSUBR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xA0,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN246;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN247;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN248;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN249;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN250;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN251;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN252;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN253;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN254;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setSUBR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_clearSUBR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xA8,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN255;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN256;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN257;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN258;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN259;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._clearSUBR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setSHAR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xB6,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN260;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN261;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN262;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN263;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN264;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN265;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN266;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN267;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN268;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN269;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN270;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN271;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN272;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN273;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setSHAR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setSIPR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xC5,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN274;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN275;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN276;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN277;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN278;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN279;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN280;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN281;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN282;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN283;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setSIPR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getGAR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xD0,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN284;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN285;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN286;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN287;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN288;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN289;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN290;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN291;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN292;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getGAR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getSHAR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xDE,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN293;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN294;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN295;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN296;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN297;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN298;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN299;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN300;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN301;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN302;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN303;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN304;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN305;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getSHAR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getSIPR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xE7,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN306;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN307;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN308;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN309;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN310;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN311;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN312;
	.byte =
		0x05,0x18,0x0A,0x00,0x05,0x02;
	.byte4 = .LN313;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN314;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getSIPR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setMR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xEF,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN315;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN316;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setMR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_iinchip_init;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xEB,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN317;
	.byte =
		0x05,0x07,0x0A,0x00,0x05,0x02;
	.byte4 = .LN318;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._iinchip_init.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getIR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xF7,0x0B,0x01,0x00,0x05,0x02;
	.byte4 = .LN319;
	.byte =
		0x05,0x17,0x0A,0x00,0x05,0x02;
	.byte4 = .LN320;
	.byte =
		0x05,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN._getIR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setRTR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x87,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN321;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN322;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN323;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN324;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN325;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN326;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN327;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN328;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN329;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setRTR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setRCR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x93,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN330;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN331;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setRCR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setIMR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xA1,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN332;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN333;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setIMR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setSn_MSS;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xA9,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN334;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN335;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN336;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN337;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN338;
	.byte =
		0x05,0x01,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN339;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN340;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN341;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN342;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN343;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN344;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN345;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN346;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN347;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setSn_MSS.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setSn_TTL;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xAF,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN348;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN349;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN350;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN351;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.byte4 = .LN352;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setSn_TTL.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_setSn_PROTO;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xB9,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN353;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN354;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN355;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN356;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN357;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._setSn_PROTO.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getSn_IR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xC4,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN358;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN359;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN360;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN361;
	.byte =
		0x05,0x17,0x01,0x00,0x05,0x02;
	.byte4 = .LN362;
	.byte =
		0x05,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN._getSn_IR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_connect;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xB2,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN363;
	.byte =
		0x05,0x09,0x0C,0x00,0x05,0x02;
	.byte4 = .LN364;
	.byte =
		0x05,0x01,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN365;
	.byte =
		0x05,0x09,0x0C,0x00,0x05,0x02;
	.byte4 = .LN366;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN367;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN368;
	.byte =
		0x05,0x03,0x17,0x00,0x05,0x02;
	.byte4 = .LN369;
	.byte =
		0x10,0x00,0x05,0x02;
	.byte4 = .LN370;
	.byte =
		0x03,0x7A,0x01,0x00,0x05,0x02;
	.byte4 = .LN371;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN372;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN373;
	.byte =
		0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN374;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN375;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN376;
	.byte =
		0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN377;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN378;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN379;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN380;
	.byte =
		0x03,0x79,0x01,0x00,0x05,0x02;
	.byte4 = .LN381;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN382;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN383;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN384;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN385;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN386;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN387;
	.byte =
		0x05,0x10,0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN388;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN389;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN390;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN391;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN392;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN393;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN394;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN395;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN396;
	.byte =
		0x05,0x01,0x03,0x68,0x01,0x00,0x05,0x02;
	.byte4 = .LN397;
	.byte =
		0x05,0x03,0x22,0x00,0x05,0x02;
	.byte4 = .LN398;
	.byte =
		0x05,0x01,0x03,0x67,0x01,0x00,0x05,0x02;
	.byte4 = .LN399;
	.byte =
		0x05,0x03,0x22,0x00,0x05,0x02;
	.byte4 = .LN400;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN401;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN402;
	.byte =
		0x05,0x10,0x0A,0x00,0x05,0x02;
	.byte4 = .LN403;
	.byte =
		0x05,0x17,0x0B,0x00,0x05,0x02;
	.byte4 = .LN404;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN405;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN406;
	.byte =
		0x05,0x04,0x0B,0x00,0x05,0x02;
	.byte4 = .LN407;
	.byte =
		0x05,0x17,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN408;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN409;
	.byte =
		0x05,0x13,0x0B,0x00,0x05,0x02;
	.byte4 = .LN410;
	.byte =
		0x05,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN411;
	.byte =
		0x05,0x10,0x0D,0x00,0x05,0x02;
	.byte4 = .LN412;
	.byte =
		0x05,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN413;
	.byte =
		0x05,0x05,0x0B,0x00,0x05,0x02;
	.byte4 = .LN414;
	.byte =
		0x05,0x12,0x01,0x00,0x05,0x02;
	.byte4 = .LN415;
	.byte =
		0x05,0x0C,0x0E,0x00,0x05,0x02;
	.byte4 = .LN416;
	.byte =
		0x05,0x02,0x0D,0x00,0x05,0x02;
	.byte4 = .LN417;
	.byte =
		0x03,0x57,0x01,0x00,0x05,0x02;
	.byte4 = .LN418;
	.byte =
		0x05,0x09,0x11,0x00,0x05,0x02;
	.byte4 = .LN419;
	.byte =
		0x05,0x02,0x03,0x78,0x01,0x00,0x05,0x02;
	.byte4 = .LN._connect.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getSn_SR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xCD,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN420;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN421;
	.byte =
		0x05,0x01,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN422;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN423;
	.byte =
		0x05,0x17,0x01,0x00,0x05,0x02;
	.byte4 = .LN424;
	.byte =
		0x05,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN._getSn_SR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getSn_TX_FSR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xD9,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN425;
	.byte =
		0x05,0x03,0x0D,0x00,0x05,0x02;
	.byte4 = .LN426;
	.byte =
		0x05,0x01,0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN427;
	.byte =
		0x05,0x03,0x0E,0x00,0x05,0x02;
	.byte4 = .LN428;
	.byte =
		0x05,0x01,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN429;
	.byte =
		0x05,0x03,0x0E,0x00,0x05,0x02;
	.byte4 = .LN430;
	.byte =
		0x05,0x01,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN431;
	.byte =
		0x05,0x03,0x0D,0x00,0x05,0x02;
	.byte4 = .LN432;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN433;
	.byte =
		0x05,0x16,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN434;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN435;
	.byte =
		0x05,0x24,0x01,0x00,0x05,0x02;
	.byte4 = .LN436;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN437;
	.byte =
		0x05,0x07,0x0A,0x00,0x05,0x02;
	.byte4 = .LN438;
	.byte =
		0x05,0x19,0x0B,0x00,0x05,0x02;
	.byte4 = .LN439;
	.byte =
		0x05,0x07,0x0A,0x00,0x05,0x02;
	.byte4 = .LN440;
	.byte =
		0x05,0x26,0x01,0x00,0x05,0x02;
	.byte4 = .LN441;
	.byte =
		0x05,0x07,0x01,0x00,0x05,0x02;
	.byte4 = .LN442;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN443;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getSn_TX_FSR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_getSn_RX_RSR;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xEF,0x0C,0x01,0x00,0x05,0x02;
	.byte4 = .LN444;
	.byte =
		0x05,0x03,0x0D,0x00,0x05,0x02;
	.byte4 = .LN445;
	.byte =
		0x05,0x01,0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN446;
	.byte =
		0x05,0x03,0x0E,0x00,0x05,0x02;
	.byte4 = .LN447;
	.byte =
		0x05,0x01,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN448;
	.byte =
		0x05,0x03,0x0E,0x00,0x05,0x02;
	.byte4 = .LN449;
	.byte =
		0x05,0x01,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN450;
	.byte =
		0x05,0x03,0x0D,0x00,0x05,0x02;
	.byte4 = .LN451;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN452;
	.byte =
		0x05,0x16,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN453;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN454;
	.byte =
		0x05,0x24,0x01,0x00,0x05,0x02;
	.byte4 = .LN455;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN456;
	.byte =
		0x05,0x07,0x0A,0x00,0x05,0x02;
	.byte4 = .LN457;
	.byte =
		0x05,0x19,0x0B,0x00,0x05,0x02;
	.byte4 = .LN458;
	.byte =
		0x05,0x07,0x0A,0x00,0x05,0x02;
	.byte4 = .LN459;
	.byte =
		0x05,0x26,0x01,0x00,0x05,0x02;
	.byte4 = .LN460;
	.byte =
		0x05,0x07,0x01,0x00,0x05,0x02;
	.byte4 = .LN461;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN462;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._getSn_RX_RSR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_write_data;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xB6,0x0D,0x01,0x00,0x05,0x02;
	.byte4 = .LN463;
	.byte =
		0x05,0x2C,0x0E,0x00,0x05,0x02;
	.byte4 = .LN464;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN465;
	.byte =
		0x05,0x27,0x0A,0x00,0x05,0x02;
	.byte4 = .LN466;
	.byte =
		0x05,0x01,0x03,0x7A,0x01,0x00,0x05,0x02;
	.byte4 = .LN467;
	.byte =
		0x05,0x33,0x11,0x00,0x05,0x02;
	.byte4 = .LN468;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN469;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN470;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN471;
	.byte =
		0x05,0x10,0x14,0x00,0x05,0x02;
	.byte4 = .LN472;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN473;
	.byte =
		0x05,0x03,0x03,0x75,0x01,0x00,0x05,0x02;
	.byte4 = .LN474;
	.byte =
		0x05,0x10,0x0A,0x00,0x05,0x02;
	.byte4 = .LN475;
	.byte =
		0x05,0x28,0x0C,0x00,0x05,0x02;
	.byte4 = .LN476;
	.byte =
		0x05,0x03,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN477;
	.byte =
		0x05,0x28,0x0B,0x00,0x05,0x02;
	.byte4 = .LN478;
	.byte =
		0x05,0x03,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN479;
	.byte =
		0x05,0x10,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._write_data.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_send_data_processing;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x86,0x0D,0x01,0x00,0x05,0x02;
	.byte4 = .LN480;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.byte4 = .LN481;
	.byte =
		0x05,0x01,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN482;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.byte4 = .LN483;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN484;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN485;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN486;
	.byte =
		0x05,0x14,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN487;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN488;
	.byte =
		0x05,0x14,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN489;
	.byte =
		0x05,0x21,0x0A,0x00,0x05,0x02;
	.byte4 = .LN490;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN491;
	.byte =
		0x05,0x0C,0x0A,0x00,0x05,0x02;
	.byte4 = .LN492;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.byte4 = .LN493;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN494;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN495;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN496;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN497;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._send_data_processing.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_sendto;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xEF,0x07,0x01,0x00,0x05,0x02;
	.byte4 = .LN498;
	.byte =
		0x05,0x1E,0x0D,0x00,0x05,0x02;
	.byte4 = .LN499;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.byte4 = .LN500;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN501;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN502;
	.byte =
		0x05,0x03,0x15,0x00,0x05,0x02;
	.byte4 = .LN503;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN504;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN505;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN506;
	.byte =
		0x03,0x78,0x01,0x00,0x05,0x02;
	.byte4 = .LN507;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN508;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN509;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN510;
	.byte =
		0x03,0x78,0x01,0x00,0x05,0x02;
	.byte4 = .LN511;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN512;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN513;
	.byte =
		0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN514;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN515;
	.byte =
		0x0E,0x00,0x05,0x02;
	.byte4 = .LN516;
	.byte =
		0x03,0x77,0x01,0x00,0x05,0x02;
	.byte4 = .LN517;
	.byte =
		0x12,0x00,0x05,0x02;
	.byte4 = .LN518;
	.byte =
		0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN519;
	.byte =
		0x05,0x10,0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN520;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN521;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN522;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN523;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN524;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN525;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN526;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN527;
	.byte =
		0x05,0x01,0x03,0x69,0x01,0x00,0x05,0x02;
	.byte4 = .LN528;
	.byte =
		0x05,0x03,0x20,0x00,0x05,0x02;
	.byte4 = .LN529;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN530;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN531;
	.byte =
		0x05,0x01,0x03,0x68,0x01,0x00,0x05,0x02;
	.byte4 = .LN532;
	.byte =
		0x05,0x03,0x21,0x00,0x05,0x02;
	.byte4 = .LN533;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN534;
	.byte =
		0x05,0x18,0x0B,0x00,0x05,0x02;
	.byte4 = .LN535;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN536;
	.byte =
		0x05,0x10,0x0A,0x00,0x05,0x02;
	.byte4 = .LN537;
	.byte =
		0x05,0x16,0x0B,0x00,0x05,0x02;
	.byte4 = .LN538;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN539;
	.byte =
		0x05,0x05,0x0D,0x00,0x05,0x02;
	.byte4 = .LN540;
	.byte =
		0x05,0x1A,0x01,0x00,0x05,0x02;
	.byte4 = .LN541;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN542;
	.byte =
		0x05,0x1E,0x0B,0x00,0x05,0x02;
	.byte4 = .LN543;
	.byte =
		0x05,0x0E,0x01,0x00,0x05,0x02;
	.byte4 = .LN544;
	.byte =
		0x05,0x1A,0x0D,0x00,0x05,0x02;
	.byte4 = .LN545;
	.byte =
		0x05,0x01,0x12,0x00,0x05,0x02;
	.byte4 = .LN546;
	.byte =
		0x05,0x0E,0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN547;
	.byte =
		0x05,0x12,0x0A,0x00,0x05,0x02;
	.byte4 = .LN548;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN549;
	.byte =
		0x03,0x57,0x01,0x00,0x05,0x02;
	.byte4 = .LN._sendto.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_send;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xFB,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN550;
	.byte =
		0x05,0x02,0x12,0x00,0x05,0x02;
	.byte4 = .LN551;
	.byte =
		0x05,0x01,0x03,0x77,0x01,0x00,0x05,0x02;
	.byte4 = .LN552;
	.byte =
		0x05,0x02,0x12,0x00,0x05,0x02;
	.byte4 = .LN553;
	.byte =
		0x05,0x1D,0x0B,0x00,0x05,0x02;
	.byte4 = .LN554;
	.byte =
		0x05,0x04,0x10,0x00,0x05,0x02;
	.byte4 = .LN555;
	.byte =
		0x05,0x1B,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN556;
	.byte =
		0x05,0x19,0x0A,0x00,0x05,0x02;
	.byte4 = .LN557;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN558;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN559;
	.byte =
		0x05,0x03,0x1C,0x00,0x05,0x02;
	.byte4 = .LN560;
	.byte =
		0x05,0x17,0x0C,0x00,0x05,0x02;
	.byte4 = .LN561;
	.byte =
		0x05,0x02,0x0F,0x00,0x05,0x02;
	.byte4 = .LN562;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN563;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN564;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN565;
	.byte =
		0x05,0x22,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN566;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN567;
	.byte =
		0x05,0x3C,0x01,0x00,0x05,0x02;
	.byte4 = .LN568;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN569;
	.byte =
		0x05,0x10,0x0B,0x00,0x05,0x02;
	.byte4 = .LN570;
	.byte =
		0x05,0x16,0x0C,0x00,0x05,0x02;
	.byte4 = .LN571;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN572;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN573;
	.byte =
		0x05,0x18,0x01,0x00,0x05,0x02;
	.byte4 = .LN574;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN575;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN576;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN577;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN578;
	.byte =
		0x05,0x13,0x0B,0x00,0x05,0x02;
	.byte4 = .LN579;
	.byte =
		0x05,0x04,0x01,0x00,0x05,0x02;
	.byte4 = .LN580;
	.byte =
		0x05,0x19,0x0B,0x00,0x05,0x02;
	.byte4 = .LN581;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN582;
	.byte =
		0x05,0x01,0x1A,0x00,0x05,0x02;
	.byte4 = .LN583;
	.byte =
		0x05,0x10,0x03,0x73,0x01,0x00,0x05,0x02;
	.byte4 = .LN584;
	.byte =
		0x05,0x16,0x0B,0x00,0x05,0x02;
	.byte4 = .LN585;
	.byte =
		0x05,0x24,0x0A,0x00,0x05,0x02;
	.byte4 = .LN586;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN587;
	.byte =
		0x03,0x6D,0x01,0x00,0x05,0x02;
	.byte4 = .LN588;
	.byte =
		0x1E,0x00,0x05,0x02;
	.byte4 = .LN589;
	.byte =
		0x05,0x02,0x10,0x00,0x05,0x02;
	.byte4 = .LN590;
	.byte =
		0x03,0x61,0x01,0x00,0x05,0x02;
	.byte4 = .LN591;
	.byte =
		0x05,0x04,0x03,0x64,0x01,0x00,0x05,0x02;
	.byte4 = .LN592;
	.byte =
		0x01,0x00,0x05,0x02;
	.byte4 = .LN._send.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_read_data;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xD6,0x0D,0x01,0x00,0x05,0x02;
	.byte4 = .LN593;
	.byte =
		0x05,0x2C,0x0E,0x00,0x05,0x02;
	.byte4 = .LN594;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN595;
	.byte =
		0x05,0x27,0x0A,0x00,0x05,0x02;
	.byte4 = .LN596;
	.byte =
		0x05,0x01,0x03,0x7A,0x01,0x00,0x05,0x02;
	.byte4 = .LN597;
	.byte =
		0x05,0x33,0x11,0x00,0x05,0x02;
	.byte4 = .LN598;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN599;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN600;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN601;
	.byte =
		0x05,0x0F,0x15,0x00,0x05,0x02;
	.byte4 = .LN602;
	.byte =
		0x05,0x01,0x0C,0x00,0x05,0x02;
	.byte4 = .LN603;
	.byte =
		0x05,0x0F,0x03,0x74,0x01,0x00,0x05,0x02;
	.byte4 = .LN604;
	.byte =
		0x05,0x03,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN605;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN606;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN607;
	.byte =
		0x05,0x28,0x0B,0x00,0x05,0x02;
	.byte4 = .LN608;
	.byte =
		0x05,0x03,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN609;
	.byte =
		0x05,0x0F,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._read_data.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_recvfrom;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xAA,0x08,0x01,0x00,0x05,0x02;
	.byte4 = .LN610;
	.byte =
		0x05,0x02,0x0E,0x00,0x05,0x02;
	.byte4 = .LN611;
	.byte =
		0x05,0x01,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN612;
	.byte =
		0x05,0x02,0x0E,0x00,0x05,0x02;
	.byte4 = .LN613;
	.byte =
		0x05,0x05,0x0B,0x00,0x05,0x02;
	.byte4 = .LN614;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN615;
	.byte =
		0x05,0x17,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN616;
	.byte =
		0x05,0x05,0x0C,0x00,0x05,0x02;
	.byte4 = .LN617;
	.byte =
		0x05,0x17,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN618;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN619;
	.byte =
		0x05,0x2F,0x01,0x00,0x05,0x02;
	.byte4 = .LN620;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN621;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN622;
	.byte =
		0x05,0x19,0x01,0x00,0x05,0x02;
	.byte4 = .LN623;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN624;
	.byte =
		0x05,0x03,0x46,0x00,0x05,0x02;
	.byte4 = .LN625;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN626;
	.byte =
		0x05,0x16,0x0C,0x00,0x05,0x02;
	.byte4 = .LN627;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN628;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN629;
	.byte =
		0x05,0x10,0x03,0x64,0x01,0x00,0x05,0x02;
	.byte4 = .LN630;
	.byte =
		0x05,0x01,0x03,0x4E,0x01,0x00,0x05,0x02;
	.byte4 = .LN631;
	.byte =
		0x05,0x10,0x3B,0x00,0x05,0x02;
	.byte4 = .LN632;
	.byte =
		0x05,0x05,0x03,0x56,0x01,0x00,0x05,0x02;
	.byte4 = .LN633;
	.byte =
		0x05,0x10,0x33,0x00,0x05,0x02;
	.byte4 = .LN634;
	.byte =
		0x05,0x07,0x0A,0x00,0x05,0x02;
	.byte4 = .LN635;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN636;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN637;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN638;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN639;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN640;
	.byte =
		0x05,0x10,0x0F,0x00,0x05,0x02;
	.byte4 = .LN641;
	.byte =
		0x05,0x07,0x03,0x77,0x01,0x00,0x05,0x02;
	.byte4 = .LN642;
	.byte =
		0x13,0x00,0x05,0x02;
	.byte4 = .LN643;
	.byte =
		0x05,0x10,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN644;
	.byte =
		0x05,0x07,0x0B,0x00,0x05,0x02;
	.byte4 = .LN645;
	.byte =
		0x05,0x14,0x01,0x00,0x05,0x02;
	.byte4 = .LN646;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN647;
	.byte =
		0x05,0x10,0x03,0x62,0x01,0x00,0x05,0x02;
	.byte4 = .LN648;
	.byte =
		0x05,0x01,0x03,0x5F,0x01,0x00,0x05,0x02;
	.byte4 = .LN649;
	.byte =
		0x05,0x10,0x2A,0x00,0x05,0x02;
	.byte4 = .LN650;
	.byte =
		0x05,0x05,0x03,0x67,0x01,0x00,0x05,0x02;
	.byte4 = .LN651;
	.byte =
		0x05,0x10,0x22,0x00,0x05,0x02;
	.byte4 = .LN652;
	.byte =
		0x05,0x07,0x0C,0x00,0x05,0x02;
	.byte4 = .LN653;
	.byte =
		0x05,0x0D,0x10,0x00,0x05,0x02;
	.byte4 = .LN654;
	.byte =
		0x05,0x07,0x03,0x7A,0x01,0x00,0x05,0x02;
	.byte4 = .LN655;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN656;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN657;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN658;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN659;
	.byte =
		0x03,0x79,0x01,0x00,0x05,0x02;
	.byte4 = .LN660;
	.byte =
		0x05,0x0D,0x12,0x00,0x05,0x02;
	.byte4 = .LN661;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN662;
	.byte =
		0x05,0x07,0x03,0x76,0x01,0x00,0x05,0x02;
	.byte4 = .LN663;
	.byte =
		0x05,0x0D,0x12,0x00,0x05,0x02;
	.byte4 = .LN664;
	.byte =
		0x05,0x04,0x0C,0x00,0x05,0x02;
	.byte4 = .LN665;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.byte4 = .LN666;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN667;
	.byte =
		0x05,0x05,0x03,0x5B,0x01,0x00,0x05,0x02;
	.byte4 = .LN668;
	.byte =
		0x05,0x10,0x0C,0x00,0x05,0x02;
	.byte4 = .LN669;
	.byte =
		0x05,0x01,0x03,0x73,0x01,0x00,0x05,0x02;
	.byte4 = .LN670;
	.byte =
		0x05,0x10,0x16,0x00,0x05,0x02;
	.byte4 = .LN671;
	.byte =
		0x05,0x05,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN672;
	.byte =
		0x05,0x10,0x0E,0x00,0x05,0x02;
	.byte4 = .LN673;
	.byte =
		0x05,0x07,0x0C,0x00,0x05,0x02;
	.byte4 = .LN674;
	.byte =
		0x05,0x0D,0x12,0x00,0x05,0x02;
	.byte4 = .LN675;
	.byte =
		0x05,0x07,0x03,0x78,0x01,0x00,0x05,0x02;
	.byte4 = .LN676;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN677;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN678;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN679;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN680;
	.byte =
		0x05,0x0D,0x0D,0x00,0x05,0x02;
	.byte4 = .LN681;
	.byte =
		0x05,0x07,0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN682;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN683;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN684;
	.byte =
		0x03,0x77,0x01,0x00,0x05,0x02;
	.byte4 = .LN685;
	.byte =
		0x05,0x0D,0x14,0x00,0x05,0x02;
	.byte4 = .LN686;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN687;
	.byte =
		0x05,0x07,0x03,0x74,0x01,0x00,0x05,0x02;
	.byte4 = .LN688;
	.byte =
		0x05,0x0D,0x14,0x00,0x05,0x02;
	.byte4 = .LN689;
	.byte =
		0x05,0x04,0x0C,0x00,0x05,0x02;
	.byte4 = .LN690;
	.byte =
		0x05,0x11,0x01,0x00,0x05,0x02;
	.byte4 = .LN691;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN._recvfrom.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_recv_data_processing;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x9C,0x0D,0x01,0x00,0x05,0x02;
	.byte4 = .LN692;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN693;
	.byte =
		0x05,0x01,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN694;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN695;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN696;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN697;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN698;
	.byte =
		0x05,0x14,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN699;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN700;
	.byte =
		0x05,0x14,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN701;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN702;
	.byte =
		0x05,0x2C,0x01,0x00,0x05,0x02;
	.byte4 = .LN703;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN704;
	.byte =
		0x05,0x0B,0x10,0x00,0x05,0x02;
	.byte4 = .LN705;
	.byte =
		0x05,0x02,0x03,0x79,0x01,0x00,0x05,0x02;
	.byte4 = .LN706;
	.byte =
		0x05,0x0B,0x10,0x00,0x05,0x02;
	.byte4 = .LN707;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN708;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN709;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN710;
	.byte =
		0x05,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN711;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN712;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._recv_data_processing.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_recv;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xD4,0x07,0x01,0x00,0x05,0x02;
	.byte4 = .LN713;
	.byte =
		0x05,0x02,0x0E,0x00,0x05,0x02;
	.byte4 = .LN714;
	.byte =
		0x05,0x01,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN715;
	.byte =
		0x05,0x02,0x0E,0x00,0x05,0x02;
	.byte4 = .LN716;
	.byte =
		0x05,0x17,0x0B,0x00,0x05,0x02;
	.byte4 = .LN717;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN718;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN719;
	.byte =
		0x05,0x16,0x0C,0x00,0x05,0x02;
	.byte4 = .LN720;
	.byte =
		0x05,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN721;
	.byte =
		0x05,0x02,0x0E,0x00,0x05,0x02;
	.byte4 = .LN._recv.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_loopback_udp;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xFB,0x0F,0x01,0x00,0x05,0x02;
	.byte4 = .LN722;
	.byte =
		0x05,0x03,0x0E,0x00,0x05,0x02;
	.byte4 = .LN723;
	.byte =
		0x05,0x01,0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN724;
	.byte =
		0x05,0x03,0x0E,0x00,0x05,0x02;
	.byte4 = .LN725;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN726;
	.byte =
		0x05,0x12,0x0B,0x00,0x05,0x02;
	.byte4 = .LN727;
	.byte =
		0x05,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN728;
	.byte =
		0x05,0x01,0x41,0x00,0x05,0x02;
	.byte4 = .LN729;
	.byte =
		0x05,0x05,0x03,0x4C,0x01,0x00,0x05,0x02;
	.byte4 = .LN730;
	.byte =
		0x05,0x20,0x1A,0x00,0x05,0x02;
	.byte4 = .LN731;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN732;
	.byte =
		0x05,0x1E,0x0D,0x00,0x05,0x02;
	.byte4 = .LN733;
	.byte =
		0x05,0x0B,0x0C,0x00,0x05,0x02;
	.byte4 = .LN734;
	.byte =
		0x05,0x0E,0x0C,0x00,0x05,0x02;
	.byte4 = .LN735;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN736;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN737;
	.byte =
		0x05,0x10,0x03,0x6C,0x01,0x00,0x05,0x02;
	.byte4 = .LN738;
	.byte =
		0x05,0x07,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN739;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN740;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN741;
	.byte =
		0x05,0x07,0x01,0x00,0x05,0x02;
	.byte4 = .LN742;
	.byte =
		0x05,0x14,0x0B,0x00,0x05,0x02;
	.byte4 = .LN743;
	.byte =
		0x05,0x10,0x0A,0x00,0x05,0x02;
	.byte4 = .LN744;
	.byte =
		0x05,0x20,0x0A,0x00,0x05,0x02;
	.byte4 = .LN745;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN746;
	.byte =
		0x05,0x07,0x0C,0x00,0x05,0x02;
	.byte4 = .LN747;
	.byte =
		0x05,0x0A,0x20,0x00,0x05,0x02;
	.byte4 = .LN748;
	.byte =
		0x05,0x06,0x0A,0x00,0x05,0x02;
	.byte4 = .LN749;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.byte4 = .LN750;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN751;
	.byte =
		0x05,0x06,0x0A,0x00,0x05,0x02;
	.byte4 = .LN752;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.byte4 = .LN753;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN754;
	.byte =
		0x05,0x0E,0x0B,0x00,0x05,0x02;
	.byte4 = .LN755;
	.byte =
		0x05,0x05,0x01,0x00,0x05,0x02;
	.byte4 = .LN756;
	.byte =
		0x05,0x36,0x01,0x00,0x05,0x02;
	.byte4 = .LN757;
	.byte =
		0x05,0x06,0x0A,0x00,0x05,0x02;
	.byte4 = .LN758;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.byte4 = .LN759;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN._loopback_udp.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Set_network;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xC4,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN760;
	.byte =
		0x05,0x15,0x0E,0x00,0x05,0x02;
	.byte4 = .LN761;
	.byte =
		0x05,0x24,0x0E,0x00,0x05,0x02;
	.byte4 = .LN762;
	.byte =
		0x05,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN763;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN764;
	.byte =
		0x05,0x24,0x01,0x00,0x05,0x02;
	.byte4 = .LN765;
	.byte =
		0x05,0x3F,0x01,0x00,0x05,0x02;
	.byte4 = .LN766;
	.byte =
		0x05,0x5A,0x01,0x00,0x05,0x02;
	.byte4 = .LN767;
	.byte =
		0x05,0x28,0x0B,0x00,0x05,0x02;
	.byte4 = .LN768;
	.byte =
		0x05,0x66,0x01,0x00,0x05,0x02;
	.byte4 = .LN769;
	.byte =
		0x05,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN770;
	.byte =
		0x05,0x47,0x01,0x00,0x05,0x02;
	.byte4 = .LN771;
	.byte =
		0x05,0x09,0x0B,0x00,0x05,0x02;
	.byte4 = .LN772;
	.byte =
		0x05,0x28,0x01,0x00,0x05,0x02;
	.byte4 = .LN773;
	.byte =
		0x05,0x47,0x01,0x00,0x05,0x02;
	.byte4 = .LN774;
	.byte =
		0x05,0x66,0x01,0x00,0x05,0x02;
	.byte4 = .LN775;
	.byte =
		0x05,0x10,0x0B,0x00,0x05,0x02;
	.byte4 = .LN776;
	.byte =
		0x05,0x11,0x0B,0x00,0x05,0x02;
	.byte4 = .LN777;
	.byte =
		0x05,0x0F,0x0A,0x00,0x05,0x02;
	.byte4 = .LN778;
	.byte =
		0x05,0x01,0x03,0x6B,0x01,0x00,0x05,0x02;
	.byte4 = .LN779;
	.byte =
		0x05,0x11,0x36,0x00,0x05,0x02;
	.byte4 = .LN780;
	.byte =
		0x05,0x10,0x03,0x69,0x01,0x00,0x05,0x02;
	.byte4 = .LN781;
	.byte =
		0x05,0x09,0x10,0x00,0x05,0x02;
	.byte4 = .LN782;
	.byte =
		0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN783;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN784;
	.byte =
		0x05,0x0F,0x0C,0x00,0x05,0x02;
	.byte4 = .LN785;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN786;
	.byte =
		0x05,0x10,0x0D,0x00,0x05,0x02;
	.byte4 = .LN787;
	.byte =
		0x05,0x11,0x0B,0x00,0x05,0x02;
	.byte4 = .LN788;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN789;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN790;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN791;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN792;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN793;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN794;
	.byte =
		0x05,0x0D,0x0A,0x00,0x05,0x02;
	.byte4 = .LN795;
	.byte =
		0x05,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN796;
	.byte =
		0x05,0x0D,0x01,0x00,0x05,0x02;
	.byte4 = .LN797;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN798;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN799;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN800;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN801;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN802;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN803;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN804;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN805;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN806;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN807;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN808;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN809;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN810;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN811;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN812;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN813;
	.byte =
		0x05,0x10,0x0C,0x00,0x05,0x02;
	.byte4 = .LN814;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN815;
	.byte =
		0x05,0x0D,0x0B,0x00,0x05,0x02;
	.byte4 = .LN816;
	.byte =
		0x05,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN817;
	.byte =
		0x05,0x0D,0x01,0x00,0x05,0x02;
	.byte4 = .LN818;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN819;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN820;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN821;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN822;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN823;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN824;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN825;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN826;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN827;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN828;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN829;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN830;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN831;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN832;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN833;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN834;
	.byte =
		0x05,0x0F,0x0C,0x00,0x05,0x02;
	.byte4 = .LN835;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN836;
	.byte =
		0x05,0x0D,0x0B,0x00,0x05,0x02;
	.byte4 = .LN837;
	.byte =
		0x05,0x09,0x01,0x00,0x05,0x02;
	.byte4 = .LN838;
	.byte =
		0x05,0x0D,0x01,0x00,0x05,0x02;
	.byte4 = .LN839;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN840;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN841;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN842;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN843;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN844;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN845;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN846;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN847;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN848;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN849;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN850;
	.byte =
		0x05,0x0E,0x0A,0x00,0x05,0x02;
	.byte4 = .LN851;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN852;
	.byte =
		0x05,0x06,0x01,0x00,0x05,0x02;
	.byte4 = .LN853;
	.byte =
		0x05,0x0A,0x01,0x00,0x05,0x02;
	.byte4 = .LN854;
	.byte =
		0x05,0x11,0x0A,0x00,0x05,0x02;
	.byte4 = .LN855;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN856;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN857;
	.byte =
		0x05,0x01,0x13,0x00,0x05,0x02;
	.byte4 = .LN._Set_network.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_sendIAC;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xA0,0x12,0x01,0x00,0x05,0x02;
	.byte4 = .LN858;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN859;
	.byte =
		0x05,0x01,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN860;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN861;
	.byte =
		0x05,0x0F,0x0B,0x00,0x05,0x02;
	.byte4 = .LN862;
	.byte =
		0x05,0x01,0x1D,0x00,0x05,0x02;
	.byte4 = .LN863;
	.byte =
		0x05,0x0F,0x03,0x70,0x01,0x00,0x05,0x02;
	.byte4 = .LN864;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN865;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN._sendIAC.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_init_telopt;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x9A,0x12,0x01,0x00,0x05,0x02;
	.byte4 = .LN866;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN867;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN868;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._init_telopt.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames SHT_DEBUGINFO;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x18,0x06,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.inc/binary ".\Release\W5200.sbn", 3555, 1554;
.epcpubnames.end:

	.section .debug_aranges SHT_DEBUGINFO;

	.align 1;
.epcaranges:
	.type .epcaranges,STT_OBJECT;
	.byte =
		0x1C,0x02,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.byte =
		0x04,0x00,0x00,0x00,0x00,0x00;
	.byte4 = .LN_init_IP_adress;
	.byte4 = .LN._init_IP_adress.end-.LN_init_IP_adress;
	.byte4 = .LN_time_return;
	.byte4 = .LN._time_return.end-.LN_time_return;
	.byte4 = .LN_getSUBR;
	.byte4 = .LN._getSUBR.end-.LN_getSUBR;
	.byte4 = .LN_saveSUBR;
	.byte4 = .LN._saveSUBR.end-.LN_saveSUBR;
	.byte4 = .LN_getIINCHIP_TxBASE;
	.byte4 = .LN._getIINCHIP_TxBASE.end-.LN_getIINCHIP_TxBASE;
	.byte4 = .LN_getIINCHIP_RxBASE;
	.byte4 = .LN._getIINCHIP_RxBASE.end-.LN_getIINCHIP_RxBASE;
	.byte4 = .LN_getIINCHIP_TxMASK;
	.byte4 = .LN._getIINCHIP_TxMASK.end-.LN_getIINCHIP_TxMASK;
	.byte4 = .LN_getIINCHIP_RxMASK;
	.byte4 = .LN._getIINCHIP_RxMASK.end-.LN_getIINCHIP_RxMASK;
	.byte4 = .LN_getIINCHIP_TxMAX;
	.byte4 = .LN._getIINCHIP_TxMAX.end-.LN_getIINCHIP_TxMAX;
	.byte4 = .LN_getIINCHIP_RxMAX;
	.byte4 = .LN._getIINCHIP_RxMAX.end-.LN_getIINCHIP_RxMAX;
	.byte4 = .LN_putISR;
	.byte4 = .LN._putISR.end-.LN_putISR;
	.byte4 = .LN_getISR;
	.byte4 = .LN._getISR.end-.LN_getISR;
	.byte4 = .LN_init_windowfull_retry_cnt;
	.byte4 = .LN._init_windowfull_retry_cnt.end-.LN_init_windowfull_retry_cnt;
	.byte4 = .LN_incr_windowfull_retry_cnt;
	.byte4 = .LN._incr_windowfull_retry_cnt.end-.LN_incr_windowfull_retry_cnt;
	.byte4 = .LN_Delay_us;
	.byte4 = .LN._Delay_us.end-.LN_Delay_us;
	.byte4 = .LN_Delay_ms;
	.byte4 = .LN._Delay_ms.end-.LN_Delay_ms;
	.byte4 = .LN_wait_10ms;
	.byte4 = .LN._wait_10ms.end-.LN_wait_10ms;
	.byte4 = .LN_WIZ_CS;
	.byte4 = .LN._WIZ_CS.end-.LN_WIZ_CS;
	.byte4 = .LN_SPI1_SendByte;
	.byte4 = .LN._SPI1_SendByte.end-.LN_SPI1_SendByte;
	.byte4 = .LN_IINCHIP_CSoff;
	.byte4 = .LN._IINCHIP_CSoff.end-.LN_IINCHIP_CSoff;
	.byte4 = .LN_IINCHIP_CSon;
	.byte4 = .LN._IINCHIP_CSon.end-.LN_IINCHIP_CSon;
	.byte4 = .LN_IINCHIP_SpiSendData;
	.byte4 = .LN._IINCHIP_SpiSendData.end-.LN_IINCHIP_SpiSendData;
	.byte4 = .LN_IINCHIP_WRITE;
	.byte4 = .LN._IINCHIP_WRITE.end-.LN_IINCHIP_WRITE;
	.byte4 = .LN_IINCHIP_READ;
	.byte4 = .LN._IINCHIP_READ.end-.LN_IINCHIP_READ;
	.byte4 = .LN_close;
	.byte4 = .LN._close.end-.LN_close;
	.byte4 = .LN_socket;
	.byte4 = .LN._socket.end-.LN_socket;
	.byte4 = .LN_listen;
	.byte4 = .LN._listen.end-.LN_listen;
	.byte4 = .LN_disconnect;
	.byte4 = .LN._disconnect.end-.LN_disconnect;
	.byte4 = .LN_wiz_write_buf;
	.byte4 = .LN._wiz_write_buf.end-.LN_wiz_write_buf;
	.byte4 = .LN_wiz_read_buf;
	.byte4 = .LN._wiz_read_buf.end-.LN_wiz_read_buf;
	.byte4 = .LN_sysinit;
	.byte4 = .LN._sysinit.end-.LN_sysinit;
	.byte4 = .LN_setGAR;
	.byte4 = .LN._setGAR.end-.LN_setGAR;
	.byte4 = .LN_setSUBR;
	.byte4 = .LN._setSUBR.end-.LN_setSUBR;
	.byte4 = .LN_clearSUBR;
	.byte4 = .LN._clearSUBR.end-.LN_clearSUBR;
	.byte4 = .LN_setSHAR;
	.byte4 = .LN._setSHAR.end-.LN_setSHAR;
	.byte4 = .LN_setSIPR;
	.byte4 = .LN._setSIPR.end-.LN_setSIPR;
	.byte4 = .LN_getGAR;
	.byte4 = .LN._getGAR.end-.LN_getGAR;
	.byte4 = .LN_getSHAR;
	.byte4 = .LN._getSHAR.end-.LN_getSHAR;
	.byte4 = .LN_getSIPR;
	.byte4 = .LN._getSIPR.end-.LN_getSIPR;
	.byte4 = .LN_setMR;
	.byte4 = .LN._setMR.end-.LN_setMR;
	.byte4 = .LN_iinchip_init;
	.byte4 = .LN._iinchip_init.end-.LN_iinchip_init;
	.byte4 = .LN_getIR;
	.byte4 = .LN._getIR.end-.LN_getIR;
	.byte4 = .LN_setRTR;
	.byte4 = .LN._setRTR.end-.LN_setRTR;
	.byte4 = .LN_setRCR;
	.byte4 = .LN._setRCR.end-.LN_setRCR;
	.byte4 = .LN_setIMR;
	.byte4 = .LN._setIMR.end-.LN_setIMR;
	.byte4 = .LN_setSn_MSS;
	.byte4 = .LN._setSn_MSS.end-.LN_setSn_MSS;
	.byte4 = .LN_setSn_TTL;
	.byte4 = .LN._setSn_TTL.end-.LN_setSn_TTL;
	.byte4 = .LN_setSn_PROTO;
	.byte4 = .LN._setSn_PROTO.end-.LN_setSn_PROTO;
	.byte4 = .LN_getSn_IR;
	.byte4 = .LN._getSn_IR.end-.LN_getSn_IR;
	.byte4 = .LN_connect;
	.byte4 = .LN._connect.end-.LN_connect;
	.byte4 = .LN_getSn_SR;
	.byte4 = .LN._getSn_SR.end-.LN_getSn_SR;
	.byte4 = .LN_getSn_TX_FSR;
	.byte4 = .LN._getSn_TX_FSR.end-.LN_getSn_TX_FSR;
	.byte4 = .LN_getSn_RX_RSR;
	.byte4 = .LN._getSn_RX_RSR.end-.LN_getSn_RX_RSR;
	.byte4 = .LN_write_data;
	.byte4 = .LN._write_data.end-.LN_write_data;
	.byte4 = .LN_send_data_processing;
	.byte4 = .LN._send_data_processing.end-.LN_send_data_processing;
	.byte4 = .LN_sendto;
	.byte4 = .LN._sendto.end-.LN_sendto;
	.byte4 = .LN_send;
	.byte4 = .LN._send.end-.LN_send;
	.byte4 = .LN_read_data;
	.byte4 = .LN._read_data.end-.LN_read_data;
	.byte4 = .LN_recvfrom;
	.byte4 = .LN._recvfrom.end-.LN_recvfrom;
	.byte4 = .LN_recv_data_processing;
	.byte4 = .LN._recv_data_processing.end-.LN_recv_data_processing;
	.byte4 = .LN_recv;
	.byte4 = .LN._recv.end-.LN_recv;
	.byte4 = .LN_loopback_udp;
	.byte4 = .LN._loopback_udp.end-.LN_loopback_udp;
	.byte4 = .LN_Set_network;
	.byte4 = .LN._Set_network.end-.LN_Set_network;
	.byte4 = .LN_sendIAC;
	.byte4 = .LN._sendIAC.end-.LN_sendIAC;
	.byte4 = .LN_init_telopt;
	.byte4 = .LN._init_telopt.end-.LN_init_telopt;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/ZERO_INIT/DOUBLE64 bsz;

	.align 4;
	.global _strng1;
	.type _strng1,STT_OBJECT;
	.byte _strng1[64];
._strng1.end:
	.align 4;
	.global _TX_BUF;
	.type _TX_BUF,STT_OBJECT;
	.byte _TX_BUF[200];
._TX_BUF.end:
	.align 4;
	.global _RX_BUF;
	.type _RX_BUF,STT_OBJECT;
	.byte _RX_BUF[200];
._RX_BUF.end:
	.align 4;
	.global _Receive_DATA;
	.type _Receive_DATA,STT_OBJECT;
	.byte _Receive_DATA[16];
._Receive_DATA.end:
	.align 1;
	.global _Config_Msg;
	.type _Config_Msg,STT_OBJECT;
	.byte _Config_Msg[23];
._Config_Msg.end:

	.section/DOUBLE64 constdata;

	.align 4;
.sFailin.5:
	.type .sFailin.5,STT_OBJECT;
	.byte =
		0x46,0x61,0x69,0x6C,0x5B,0x69,0x6E,0x76,0x61,0x6C,0x69,0x64,
		0x20,0x69,0x70,0x2C,0x70,0x6F,0x72,0x74,0x5D,0x0D,0x0A,0x00;
.sFailin.5.end:
	.align 4;
.SPSWITCH.7:
	.type .SPSWITCH.7,STT_OBJECT;
	.byte =
		0x05,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x02,0x00,0x00,0x00,
		0x04,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x10,0x00,0x00,0x00;
	.byte4 = .P77L6;
	.byte4 = .P77L8;
	.byte4 = .P77L9;
	.byte4 = .P77L10;
	.byte4 = .P77L11;
	.byte4 = .P77L12;
.SPSWITCH.7.end:
	.align 4;
.SPSWITCH.8:
	.type .SPSWITCH.8,STT_OBJECT;
	.byte =
		0x05,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x02,0x00,0x00,0x00,
		0x04,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x10,0x00,0x00,0x00;
	.byte4 = .P77L15;
	.byte4 = .P77L17;
	.byte4 = .P77L18;
	.byte4 = .P77L19;
	.byte4 = .P77L20;
	.byte4 = .P77L21;
.SPSWITCH.8.end:
	.align 4;
.sSystem.11:
	.type .sSystem.11,STT_OBJECT;
	.byte =
		0x07,0x07,0x07,0x20,0x3A,0x20,0x53,0x79,0x73,0x74,0x65,0x6D,
		0x20,0x46,0x61,0x74,0x61,0x6C,0x20,0x45,0x72,0x72,0x6F,0x72,
		0x2E,0x00;
.sSystem.11.end:
	.align 4;
.sLoopBa.12:
	.type .sLoopBa.12,STT_OBJECT;
	.byte =
		0x3A,0x20,0x4C,0x6F,0x6F,0x70,0x2D,0x42,0x61,0x63,0x6B,0x20,
		0x55,0x44,0x50,0x20,0x53,0x74,0x61,0x72,0x74,0x65,0x64,0x2E,
		0x20,0x70,0x6F,0x72,0x74,0x20,0x3A,0x00;
.sLoopBa.12.end:
	.align 4;
.sFailto.13:
	.type .sFailto.13,STT_OBJECT;
	.byte =
		0x07,0x20,0x3A,0x20,0x46,0x61,0x69,0x6C,0x20,0x74,0x6F,0x20,
		0x63,0x72,0x65,0x61,0x74,0x65,0x20,0x73,0x6F,0x63,0x6B,0x65,
		0x74,0x2E,0x00;
.sFailto.13.end:
	.align 4;
.s.14:
	.type .s.14,STT_OBJECT;
	.byte =
		0x0D,0x0A,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,
		0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,
		0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,
		0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x20,0x0D,0x0A,0x00;
.s.14.end:
	.align 4;
.sW5200E.15:
	.type .sW5200E.15,STT_OBJECT;
	.byte =
		0x57,0x35,0x32,0x30,0x30,0x45,0x30,0x31,0x2D,0x4D,0x33,0x20,
		0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,
		0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x0D,0x0A,
		0x00;
.sW5200E.15.end:
	.align 4;
.sNetwor.16:
	.type .sNetwor.16,STT_OBJECT;
	.byte =
		0x4E,0x65,0x74,0x77,0x6F,0x72,0x6B,0x20,0x43,0x6F,0x6E,0x66,
		0x69,0x67,0x75,0x72,0x61,0x74,0x69,0x6F,0x6E,0x20,0x49,0x6E,
		0x66,0x6F,0x72,0x6D,0x61,0x74,0x69,0x6F,0x6E,0x20,0x0D,0x0A,
		0x00;
.sNetwor.16.end:
	.align 4;
.s.17:
	.type .s.17,STT_OBJECT;
	.byte =
		0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,
		0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,
		0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,
		0x2D,0x2D,0x2D,0x2D,0x2D,0x20,0x0D,0x00;
.s.17.end:
	.align 4;
.SWITCH.28:
	.type .SWITCH.28,STT_OBJECT;
	.byte4 = .P120L2;
	.byte4 = .P120L3;
	.byte4 = .P120L4;
	.byte4 = .P120L5;
	.byte4 = .P120L1;
.SWITCH.28.end:

	.section/DOUBLE64 data1;


	.extern _sch_packet_UDP_reciv;
	.type _sch_packet_UDP_reciv,STT_OBJECT;
