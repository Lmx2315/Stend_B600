	.file "..\BFcom\Initialization.c";
//  Compilation time: Tue Nov 06 12:54:44 2018
//  Compiler options: -c -file-attr ProjectName=NewProject -O -Ov0 -g -always-inline -save-temps -path-output .\Release -ED -no-auto-attrs -structs-do-not-overlap -const-strings -no-multiline -D__PROCESSOR_SPEED__=400000000 -double-size-64 -decls-strong -warn-protos -flags-compiler --diag_warning,call_not_inlined -si-revision 0.6 -proc ADSP-BF533 -o .\Release\Initialization.doj -MM
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
_init_SPORT1:
.LN_init_SPORT1:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0-R2,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P1,ASTAT0-ASTAT1,CC,AQ,LC0,LT0,LB0,RETS}
//-------------------------------------------------------------------
.LN0:
// line "..\BFcom\Initialization.c":474
	R1 = R0 << 1;
.LN1:
// line 457
	LINK 12;
	R0 = 1554;
.LN2:
// line 462
	P1 = 2304 /* -4192000 */;
	P1.H = -64 /* -4192000 */;
	W[P1] = R0.L;
.LN3:
// line 463
	R0 = 10;
	P1 = 2308 /* -4191996 */;
	P1.H = -64 /* -4191996 */;
	W[P1] = R0.L;
	R2 = 17408;
.LN4:
// line 468
	P1 = 2336 /* -4191968 */;
	P1.H = -64 /* -4191968 */;
	W[P1] = R2.L;
.LN5:
// line 469
	P1 = 2340 /* -4191964 */;
	P1.H = -64 /* -4191964 */;
	W[P1] = R0.L;
.LN6:
// line 474
	R1 += -1;
	R0 = -7936 /* 100000000 */;
	R0.H = 1525 /* 100000000 */;
	CALL.X (___udiv32);                     // division is implemented as a library call. There is 1 more instruction related to this call. 
.LN7:
// line 477
	P1 = 2312 /* -4191992 */;
	P1.H = -64 /* -4191992 */;
	W[P1] = R0.L;
.LN8:
// line 478
	P1 = 2344 /* -4191960 */;
	P1.H = -64 /* -4191960 */;
	W[P1] = R0.L;
.LN9:
// line 482
	R0 = 0;
	P1 = 2316 /* -4191988 */;
	P1.H = -64 /* -4191988 */;
	W[P1] = R0.L;
.LN10:
// line 484
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._init_SPORT1.end:
._init_SPORT1.end:
	.global _init_SPORT1;
	.type _init_SPORT1,STT_FUNC;

	.align 2;
_init_SPORT0:
.LN_init_SPORT0:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0-R2,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P1,ASTAT0-ASTAT1,CC,AQ,LC0,LT0,LB0,RETS}
//-------------------------------------------------------------------
.LN11:
// line "..\BFcom\Initialization.c":443
	R1 = R0 << 1;
.LN12:
// line 426
	LINK 12;
	R0 = 1538;
.LN13:
// line 431
	P1 = 2048 /* -4192256 */;
	P1.H = -64 /* -4192256 */;
	W[P1] = R0.L;
.LN14:
// line 433
	R0 = 31;
	P1 = 2052 /* -4192252 */;
	P1.H = -64 /* -4192252 */;
	W[P1] = R0.L;
	R2 = 17408;
.LN15:
// line 438
	P1 = 2080 /* -4192224 */;
	P1.H = -64 /* -4192224 */;
	W[P1] = R2.L;
.LN16:
// line 439
	P1 = 2084 /* -4192220 */;
	P1.H = -64 /* -4192220 */;
	W[P1] = R0.L;
.LN17:
// line 443
	R1 += -1;
	R0 = -7936 /* 100000000 */;
	R0.H = 1525 /* 100000000 */;
	CALL.X (___udiv32);                     // division is implemented as a library call. There is 1 more instruction related to this call. 
.LN18:
// line 446
	P1 = 2056 /* -4192248 */;
	P1.H = -64 /* -4192248 */;
	W[P1] = R0.L;
.LN19:
// line 447
	P1 = 2088 /* -4192216 */;
	P1.H = -64 /* -4192216 */;
	W[P1] = R0.L;
.LN20:
// line 451
	R0 = 0;
	P1 = 2060 /* -4192244 */;
	P1.H = -64 /* -4192244 */;
	W[P1] = R0.L;
.LN21:
// line 453
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._init_SPORT0.end:
._init_SPORT0.end:
	.global _init_SPORT0;
	.type _init_SPORT0,STT_FUNC;

	.align 2;
_Init_PPI:
.LN_Init_PPI:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R2,P0-P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":318
	LINK 0;
.LN22:
// line 320
	P1 = 4096 /* -4190208 */;
	P1.H = -64 /* -4190208 */;
	R1 = 0;
	W[P1] = R1.L;
	R2 = 270;
.LN23:
// line 324
	R1 = -1;
.LN24:
// line 322
	W[P1] = R2.L;
	R0 = R0 + R1;
.LN25:
// line 324
	P0 = 4104 /* -4190200 */;
	P0.H = -64 /* -4190200 */;
	W[P0] = R0.L;
.LN26:
// line 326
	R0 = 1;
	P0 = 4112 /* -4190192 */;
	P0.H = -64 /* -4190192 */;
	W[P0] = R0.L;
.LN27:
// line 328
	R0 = W[P1] (X);
	BITSET(R0, 0);
	W[P1] = R0.L;
.LN28:
// line 330
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_PPI.end:
._Init_PPI.end:
	.global _Init_PPI;
	.type _Init_PPI,STT_FUNC;

	.align 2;
_Init_DMA_UART:
.LN_Init_DMA_UART:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R2,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":283
	LINK 0;
.LN29:
// line 285
	P1 = 3524 /* -4190780 */;
	P1.H = -64 /* -4190780 */;
	[P1] = R0;
.LN30:
// line 288
	P1 = 3536 /* -4190768 */;
	P1.H = -64 /* -4190768 */;
	W[P1] = R1.L;
.LN31:
// line 291
	R0 = 1;
	P1 = 3540 /* -4190764 */;
	P1.H = -64 /* -4190764 */;
	W[P1] = R0.L;
.LN32:
// line 294
	R1 = 0;
	P1 = 3544 /* -4190760 */;
	P1.H = -64 /* -4190760 */;
	W[P1] = R1.L;
.LN33:
// line 297
	P1 = 3548 /* -4190756 */;
	P1.H = -64 /* -4190756 */;
	W[P1] = R0.L;
.LN34:
// line 300
	R0 = 7;
	P1 = 3564 /* -4190740 */;
	P1.H = -64 /* -4190740 */;
	W[P1] = R0.L;
.LN35:
// line 304
	P1 = 3528 /* -4190776 */;
	P1.H = -64 /* -4190776 */;
	W[P1] = R1.L;
	R2 = 4256;
.LN36:
// line 306
	W[P1] = R2.L;
.LN37:
// line 308
	R0 = W[P1] (X);
	BITSET(R0, 0);
	W[P1] = R0.L;
.LN38:
// line 310
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_DMA_UART.end:
._Init_DMA_UART.end:
	.global _Init_DMA_UART;
	.type _Init_DMA_UART,STT_FUNC;

	.align 2;
_Init_TxUART_DMA:
.LN_Init_TxUART_DMA:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,R2-R3,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":254
	LINK 0;
	R2 = 128;
.LN39:
// line 255
	P1 = 3528 /* -4190776 */;
	P1.H = -64 /* -4190776 */;
	W[P1] = R2.L;
.LN40:
// line 256
	P0 = 3524 /* -4190780 */;
	P0.H = -64 /* -4190780 */;
	[P0] = R0;
.LN41:
// line 257
	P0 = 3536 /* -4190768 */;
	P0.H = -64 /* -4190768 */;
	W[P0] = R1.L;
.LN42:
// line 258
	R0 = 1;
	P0 = 3540 /* -4190764 */;
	P0.H = -64 /* -4190764 */;
	W[P0] = R0.L;
	R3 = 4256;
.LN43:
// line 259
	W[P1] = R3.L;
.LN44:
// line 262
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_TxUART_DMA.end:
._Init_TxUART_DMA.end:
	.global _Init_TxUART_DMA;
	.type _Init_TxUART_DMA,STT_FUNC;

	.align 2;
_Init_UART_dma:
.LN_Init_UART_dma:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":247
	LINK 0;
.LN45:
// line 248
	P1 = 1036 /* -4193268 */;
	P1.H = -64 /* -4193268 */;
	R0 = 3;
	W[P1] = R0.L;
.LN46:
// line 249
	R0 = 0;
	P1 = 1028 /* -4193276 */;
	P1.H = -64 /* -4193276 */;
	W[P1] = R0.L;
.LN47:
// line 250
	R0 = 48;
	P1 = 1060 /* -4193244 */;
	P1.H = -64 /* -4193244 */;
	W[P1] = R0.L;
.LN48:
// line 251
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_UART_dma.end:
._Init_UART_dma.end:
	.global _Init_UART_dma;
	.type _Init_UART_dma,STT_FUNC;

	.align 2;
_Init_DMA:
.LN_Init_DMA:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R2,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":225
	LINK 0;
.LN49:
// line 227
	P1 = 3076 /* -4191228 */;
	P1.H = -64 /* -4191228 */;
	R1.L = _DSP_in1;
	R1.H = _DSP_in1;
	[P1] = R1;
.LN50:
// line 229
	P1 = 3088 /* -4191216 */;
	P1.H = -64 /* -4191216 */;
	W[P1] = R0.L;
.LN51:
// line 231
	R0 = 1;
	P1 = 3092 /* -4191212 */;
	P1.H = -64 /* -4191212 */;
	W[P1] = R0.L;
.LN52:
// line 233
	R1 = 0;
	P1 = 3096 /* -4191208 */;
	P1.H = -64 /* -4191208 */;
	W[P1] = R1.L;
.LN53:
// line 235
	P1 = 3100 /* -4191204 */;
	P1.H = -64 /* -4191204 */;
	W[P1] = R0.L;
.LN54:
// line 237
	P1 = 3116 /* -4191188 */;
	P1.H = -64 /* -4191188 */;
	W[P1] = R1.L;
.LN55:
// line 239
	P1 = 3080 /* -4191224 */;
	P1.H = -64 /* -4191224 */;
	W[P1] = R1.L;
	R2 = 4224;
.LN56:
// line 240
	W[P1] = R2.L;
.LN57:
// line 241
	R0 = W[P1] (X);
	BITSET(R0, 0);
	W[P1] = R0.L;
.LN58:
// line 243
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_DMA.end:
._Init_DMA.end:
	.global _Init_DMA;
	.type _Init_DMA,STT_FUNC;

	.align 2;
_Init_Flash:
.LN_Init_Flash:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":217
	LINK 0;
.LN59:
// line 218
	P1 = 7 /* 539426823 */;
	P1.H = 8231 /* 539426823 */;
	R0 = 63;
	B[P1] = R0;
.LN60:
// line 219
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_Flash.end:
._Init_Flash.end:
	.global _Init_Flash;
	.type _Init_Flash,STT_FUNC;

	.align 2;
_Init_EBIU:
.LN_Init_EBIU:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R1,P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
.LN61:
// line "..\BFcom\Initialization.c":201
	R1 = 31664;
.LN62:
// line 200
	LINK 0;
	R0 = R1;
.LN63:
// line 201
	R0.H = 31664;
	P1 = 2564 /* -4191740 */;
	P1.H = -64 /* -4191740 */;
	[P1] = R0;
.LN64:
// line 202
	P1 = 2568 /* -4191736 */;
	P1.H = -64 /* -4191736 */;
	[P1] = R0;
.LN65:
// line 203
	R0 = 15;
	P1 = 2560 /* -4191744 */;
	P1.H = -64 /* -4191744 */;
	W[P1] = R0.L;
.LN66:
// line 204
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_EBIU.end:
._Init_EBIU.end:
	.global _Init_EBIU;
	.type _Init_EBIU,STT_FUNC;

	.align 2;
_Init_Timers:
.LN_Init_Timers:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R1,P0-P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":171
	LINK 0;
.LN67:
// line 173
	P1 = 1536 /* -4192768 */;
	P1.H = -64 /* -4192768 */;
	R1 = 25;
.LN68:
// line 174
	R0 = 34464 (Z);
.LN69:
// line 173
	W[P1] = R1.L;
.LN70:
// line 174
	BITSET(R0, 16);
	P1 = 1544 /* -4192760 */;
	P1.H = -64 /* -4192760 */;
	[P1] = R0;
.LN71:
// line 175
	R0 = 27500;
	P1 = 1548 /* -4192756 */;
	P1.H = -64 /* -4192756 */;
	[P1] = R0;
.LN72:
// line 177
	R0 = 1;
	P1 = 1600 /* -4192704 */;
	P1.H = -64 /* -4192704 */;
	W[P1] = R0.L;
.LN73:
// line 184
	R0 = 7;
	P0 = 1568 /* -4192736 */;
	P0.H = -64 /* -4192736 */;
	W[P0] = R0.L;
.LN74:
// line 185
	R0 = -1;
	P0 = 1576 /* -4192728 */;
	P0.H = -64 /* -4192728 */;
	[P0] = R0;
.LN75:
// line 186
	R0 = 0;
	P0 = 1580 /* -4192724 */;
	P0.H = -64 /* -4192724 */;
	[P0] = R0;
.LN76:
// line 188
	R0 = 5;
	W[P1] = R0.L;
.LN77:
// line 189
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_Timers.end:
._Init_Timers.end:
	.global _Init_Timers;
	.type _Init_Timers,STT_FUNC;

	.align 2;
_Init_SPI:
.LN_Init_SPI:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R1,P1}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":77
	LINK 0;
.LN78:
// line 78
	P1 = 1300 /* -4193004 */;
	P1.H = -64 /* -4193004 */;
	R0 = -64;
	W[P1] = R0.L;
	R1 = 20501;
.LN79:
// line 80
	P1 = 1280 /* -4193024 */;
	P1.H = -64 /* -4193024 */;
	W[P1] = R1.L;
.LN80:
// line 81
	R0 = 8;
	P1 = 1284 /* -4193020 */;
	P1.H = -64 /* -4193020 */;
	W[P1] = R0.L;
.LN81:
// line 83
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_SPI.end:
._Init_SPI.end:
	.global _Init_SPI;
	.type _Init_SPI,STT_FUNC;

	.align 2;
_SPIInit:
.LN_SPIInit:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R1,P1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":70
	LINK 0;
.LN82:
// line 71
	P1 = 1300 /* -4193004 */;
	P1.H = -64 /* -4193004 */;
	W[P1] = R0.L;
.LN83:
// line 72
	CC = R1 == 0;
	R0 = 256;
	IF !CC R1 = R0;
	R0 = 4101;
	R0 = R1 | R0;
	P1 = 1280 /* -4193024 */;
	P1.H = -64 /* -4193024 */;
	W[P1] = R0.L;
.LN84:
// line 73
	R0 = W[P1] (X);
	BITSET(R0, 14);
	W[P1] = R0.L;
.LN85:
// line 74
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._SPIInit.end:
._SPIInit.end:
	.global _SPIInit;
	.type _SPIInit,STT_FUNC;

	.align 2;
_Init_Flags:
.LN_Init_Flags:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 12 
//  Scratch registers used: {R0-R2,P0-P2,ASTAT0-ASTAT1}
//  Call preserved registers used: {P5,FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":40
	LINK 0;
	[--SP] = P5;
.LN86:
// line 42
	R0 = 0;
	P1 = 1808 /* -4192496 */;
	P1.H = -64 /* -4192496 */;
	W[P1] = R0.L;
.LN87:
// line 43
	P0 = 1824 /* -4192480 */;
	P0.H = -64 /* -4192480 */;
	W[P0] = R0.L;
.LN88:
// line 44
	P2 = 1848 /* -4192456 */;
	P2.H = -64 /* -4192456 */;
	W[P2] = R0.L;
.LN89:
// line 45
	P5 = 1844 /* -4192460 */;
	P5.H = -64 /* -4192460 */;
	W[P5] = R0.L;
	R1 = 177;
.LN90:
// line 48
	P5 = 1856 /* -4192448 */;
	P5.H = -64 /* -4192448 */;
	W[P5] = R1.L;
	R2 = 3914;
.LN91:
// line 54
	P5 = 1840 /* -4192464 */;
	P5.H = -64 /* -4192464 */;
	W[P5] = R2.L;
.LN92:
// line 55
	R0 = W[P2] (X);
	R1 = 17;
	R0 = R0 | R1;
	W[P2] = R0.L;
.LN93:
// line 57
	R0 = W[P0] (X);
	BITSET(R0, 4);
	W[P0] = R0.L;
.LN94:
// line 58
	R0 = W[P1] (X);
	BITSET(R0, 0);
	W[P1] = R0.L;
.LN95:
// line 62
	P5 = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_Flags.end:
._Init_Flags.end:
	.global _Init_Flags;
	.type _Init_Flags,STT_FUNC;

	.align 2;
_Set_PLL:
.LN_Set_PLL:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,R2-R3,P0-P1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {FP,SP,RETS}
//Inlined in _Set_PLL:
//  ..\BFcom\Initialization.c:126:9'_ssync
//  ..\BFcom\Initialization.c:121:7'_ssync
//  ..\BFcom\Initialization.c:118:7'_idle
//  ..\BFcom\Initialization.c:116:7'_ssync
//-------------------------------------------------------------------
.LN96:
// line "..\BFcom\Initialization.c":100
	R2 = 63;
.LN97:
// line 96
	LINK 0;
.LN98:
// line 98
	P1 = 0 /* -4194304 */;
	P1.H = -64 /* -4194304 */;
.LN99:
// line 100
	R0 = R0 & R2;
.LN100:
// line 98
	R2 = W[P1] (X);
	R0 <<= 9;
.LN101:
// line 100
	R3 = -32257;
	R3 = R2 & R3;
	R3 = R3 | R0;
.LN102:
// line 102
	R0.L = R2.L - R3.L (NS);
.LN103:
// line 99
	P0 = 292 /* -4194012 */;
	P0.H = -64 /* -4194012 */;
.LN104:
// line 102
	CC = AZ;
.LN105:
// line 99
	R0 = [P0];
.LN106:
// line 102
	if CC jump .P48L10 ;

.P48L4:
.LN107:
// line 99
	R2 = R0.L (X);
	R0 = R2;
.LN108:
// line 104
	BITSET(R2, 0);
	[P0] = R2;
.LN109:
// line 105
	W[P1] = R3.L;
.LN110:
// line 116
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN111:
// line 118
	IDLE;
.LN112:
// line 120
	[P0] = R0;
.LN113:
// line 121
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;

.P48L10:
.LN114:
// line 125
	P1 = 4 /* -4194300 */;
	P1.H = -64 /* -4194300 */;
	R0 = W[P1] (X);
	R2 = -8;
	R0 = R0 & R2;
	R0 = R1 | R0;
	W[P1] = R0.L;
.LN115:
// line 126
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN116:
// line 128
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Set_PLL.end:
._Set_PLL.end:
	.global _Set_PLL;
	.type _Set_PLL,STT_FUNC;

	.align 2;
_Init_UART:
.LN_Init_UART:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0-R1,P0-P1}
//  Call preserved registers used: {FP,SP,RETS}
//Inlined in _Init_UART:
//  ..\BFcom\Initialization.c:157:12'_ssync
//  ..\BFcom\Initialization.c:154:12'_ssync
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":139
	LINK 0;
	R0 = 131;
.LN117:
// line 141
	P1 = 1036 /* -4193268 */;
	P1.H = -64 /* -4193268 */;
	W[P1] = R0.L;
	R1 = 139;
.LN118:
// line 152
	P0 = 1024 /* -4193280 */;
	P0.H = -64 /* -4193280 */;
	W[P0] = R1.L;
.LN119:
// line 153
	R0 = 2;
	P0 = 1028 /* -4193276 */;
	P0.H = -64 /* -4193276 */;
	W[P0] = R0.L;
.LN120:
// line 154
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN121:
// line 156
	R0 = 3;
	W[P1] = R0.L;
.LN122:
// line 157
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN123:
// line 159
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_UART.end:
._Init_UART.end:
	.global _Init_UART;
	.type _Init_UART,STT_FUNC;

	.align 2;
_TxUART_en:
.LN_TxUART_en:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//Inlined in _TxUART_en:
//  ..\BFcom\Initialization.c:268:10'_ssync
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":266
	LINK 0;
.LN124:
// line 267
	P1 = 3528 /* -4190776 */;
	P1.H = -64 /* -4190776 */;
	R0 = W[P1] (X);
	BITSET(R0, 0);
	W[P1] = R0.L;
.LN125:
// line 268
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN126:
// line 269
	P1 = 1028 /* -4193276 */;
	P1.H = -64 /* -4193276 */;
	R0 = W[P1] (X);
	BITSET(R0, 1);
	W[P1] = R0.L;
.LN127:
// line 271
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._TxUART_en.end:
._TxUART_en.end:
	.global _TxUART_en;
	.type _TxUART_en,STT_FUNC;

	.align 2;
_TxUART_dis:
.LN_TxUART_dis:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {FP,SP,RETS}
//Inlined in _TxUART_dis:
//  ..\BFcom\Initialization.c:277:10'_ssync
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":275
	LINK 0;
.LN128:
// line 276
	P1 = 1028 /* -4193276 */;
	P1.H = -64 /* -4193276 */;
	R0 = W[P1] (X);
	BITCLR(R0, 1);
	W[P1] = R0.L;
.LN129:
// line 277
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN130:
// line 278
	P1 = 3528 /* -4190776 */;
	P1.H = -64 /* -4190776 */;
	R0 = W[P1] (X);
	BITCLR(R0, 0);
	W[P1] = R0.L;
.LN131:
// line 279
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._TxUART_dis.end:
._TxUART_dis.end:
	.global _TxUART_dis;
	.type _TxUART_dis,STT_FUNC;

	.align 2;
_Init_Interrupts:
.LN_Init_Interrupts:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 24 
//  Scratch registers used: {R0-R2,P1}
//  Call preserved registers used: {R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P0-P2,I0-I3,B0-B3,M0-M3,A0-A1,ASTAT0-ASTAT1,CC,AQ,LC0-LC1,LT0-LT1,LB0-LB1,RETS,SEQSTAT,SYSCFG,USP}
//Inlined in _Init_Interrupts:
//  ..\BFcom\Initialization.c:374:6'_ssync
//  ..\BFcom\Initialization.c:348:14'_ssync
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":342
	LINK 16;
	[SP + 12] = R7;
.LN132:
// line 344
	P1 = 272 /* -4194032 */;
	P1.H = -64 /* -4194032 */;
	R1 = -1793;
	[P1] = R1;
.LN133:
// line 345
	R1 = 8176;
	R0 = R1;
	R0.H = 29938;
	P1 = 276 /* -4194028 */;
	P1.H = -64 /* -4194028 */;
	[P1] = R0;
.LN134:
// line 346
	R0 = 24566;
	R2 = R0;
	R2.H = -13;
	P1 = 280 /* -4194024 */;
	P1.H = -64 /* -4194024 */;
	[P1] = R2;
.LN135:
// line 348
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN136:
// line 352
	R1.L = _SPORT1_TX_ISR;
	R1.H = _SPORT1_TX_ISR;
	R0 = 9;
	CALL.X (_register_handler);
.LN137:
// line 354
	R1.L = _SPORT1_RX_ISR;
	R1.H = _SPORT1_RX_ISR;
	R0 = 8;
	CALL.X (_register_handler);
.LN138:
// line 356
	R1.L = _DMA0_PPI_ISR;
	R1.H = _DMA0_PPI_ISR;
	R0 = 7;
	CALL.X (_register_handler);
.LN139:
// line 360
	R1.L = _Timer0_ISR;
	R1.H = _Timer0_ISR;
	R0 = 13;
	CALL.X (_register_handler);
.LN140:
// line 362
	R1.L = _FlagA_ISR;
	R1.H = _FlagA_ISR;
	R0 = 12;
	CALL.X (_register_handler);
.LN141:
// line 364
	R1.L = _FlagB_ISR;
	R1.H = _FlagB_ISR;
	R0 = 10;
	CALL.X (_register_handler);
.LN142:
// line 366
	R1.L = _UART_ISR;
	R1.H = _UART_ISR;
	R0 = 11;
	CALL.X (_register_handler);
.LN143:
// line 368
	R1.L = _UART_DMA_ISR;
	R1.H = _UART_DMA_ISR;
	R0 = 14;
	CALL.X (_register_handler);
.LN144:
// line 370
	R1.L = _PPI_ERROR_ISR;
	R1.H = _PPI_ERROR_ISR;
	R0 = 15;
	CALL.X (_register_handler);
.LN145:
// line 376
	R0 = -9984;
.LN146:
// line 374
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
	R7 = R0;
.LN147:
// line 376
	R7.H = 25;
	P1 = 268 /* -4194036 */;
	P1.H = -64 /* -4194036 */;
	[P1] = R7;
.LN148:
// line 386
	R0 = 5;
	P1 = 1028 /* -4193276 */;
	P1.H = -64 /* -4193276 */;
	W[P1] = R0.L;
.LN149:
// line 391
	R7 = [SP + 12];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_Interrupts.end:
._Init_Interrupts.end:
	.global _Init_Interrupts;
	.type _Init_Interrupts,STT_FUNC;

	.align 2;
_InitSDRAM:
.LN_InitSDRAM:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P1}
//  Call preserved registers used: {FP,SP,RETS}
//Inlined in _InitSDRAM:
//  ..\BFcom\Initialization.c:416:6'_ssync
//  ..\BFcom\Initialization.c:397:6'_ssync
//-------------------------------------------------------------------
// line "..\BFcom\Initialization.c":394
	LINK 0;
	R0 = 772;
.LN150:
// line 396
	P1 = 2584 /* -4191720 */;
	P1.H = -64 /* -4191720 */;
	W[P1] = R0.L;
.LN151:
// line 397
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
	R0 = -1;
.LN152:
// line 400
	R0.H = -30561;
	P1 = 2576 /* -4191728 */;
	P1.H = -64 /* -4191728 */;
	[P1] = R0;
.LN153:
// line 416
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN154:
// line 419
	R0 = 37;
	P1 = 2580 /* -4191724 */;
	P1.H = -64 /* -4191724 */;
	W[P1] = R0.L;
.LN155:
// line 422
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._InitSDRAM.end:
._InitSDRAM.end:
	.global _InitSDRAM;
	.type _InitSDRAM,STT_FUNC;

	.file_attr ProjectName="NewProject";
.epctext.end:

	.extern ___udiv32;
	.type ___udiv32,STT_FUNC;
	.extern _SPORT1_TX_ISR;
	.type _SPORT1_TX_ISR,STT_FUNC;
	.extern _register_handler;
	.type _register_handler,STT_FUNC;
	.extern _SPORT1_RX_ISR;
	.type _SPORT1_RX_ISR,STT_FUNC;
	.extern _DMA0_PPI_ISR;
	.type _DMA0_PPI_ISR,STT_FUNC;
	.extern _Timer0_ISR;
	.type _Timer0_ISR,STT_FUNC;
	.extern _FlagA_ISR;
	.type _FlagA_ISR,STT_FUNC;
	.extern _FlagB_ISR;
	.type _FlagB_ISR,STT_FUNC;
	.extern _UART_ISR;
	.type _UART_ISR,STT_FUNC;
	.extern _UART_DMA_ISR;
	.type _UART_DMA_ISR,STT_FUNC;
	.extern _PPI_ERROR_ISR;
	.type _PPI_ERROR_ISR,STT_FUNC;

	.section .debug_abbrev SHT_DEBUGINFO;

	.align 1;
.epcabbrev:
	.type .epcabbrev,STT_OBJECT;
	.inc/binary ".\Release\Initialization.sbn", 0, 212;
.epcabbrev.end:

	.section .debug_info SHT_DEBUGINFO;

	.align 1;
.epcdebug:
	.type .epcdebug,STT_OBJECT;
	.byte =
		0x77,0x0A,0x00,0x00,0x02,0x00;
	.byte4 = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x42,0x46,0x63,0x6F,0x6D,0x5C,0x49,
		0x6E,0x69,0x74,0x69,0x61,0x6C,0x69,0x7A,0x61,0x74,0x69,0x6F,
		0x6E,0x2E,0x63,0x00,0x01;
	.byte4 = .epcline;
	.inc/binary ".\Release\Initialization.sbn", 212, 1797;
	.byte4 = .LN_init_SPORT1;
	.byte4 = .LN._init_SPORT1.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN0;
	.byte4 = .LN._init_SPORT1.end;
	.byte =
		0x00,0x00,0x0D,0x76,0x07,0x00,0x00,0x69,0x6E,0x69,0x74,0x5F,
		0x53,0x50,0x4F,0x52,0x54,0x30,0x00,0x01;
	.byte4 = .LN_init_SPORT0;
	.byte4 = .LN._init_SPORT0.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN11;
	.byte4 = .LN._init_SPORT0.end;
	.byte =
		0x00,0x00,0x0D,0x9F,0x07,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x50,0x50,0x49,0x00,0x01;
	.byte4 = .LN_Init_PPI;
	.byte4 = .LN._Init_PPI.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN22;
	.byte4 = .LN._Init_PPI.end;
	.byte =
		0x00,0x00,0x0D,0xCD,0x07,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x44,0x4D,0x41,0x5F,0x55,0x41,0x52,0x54,0x00,0x01;
	.byte4 = .LN_Init_DMA_UART;
	.byte4 = .LN._Init_DMA_UART.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN29;
	.byte4 = .LN._Init_DMA_UART.end;
	.byte =
		0x00,0x00,0x0D,0xFD,0x07,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x54,0x78,0x55,0x41,0x52,0x54,0x5F,0x44,0x4D,0x41,0x00,0x01;
	.byte4 = .LN_Init_TxUART_DMA;
	.byte4 = .LN._Init_TxUART_DMA.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN39;
	.byte4 = .LN._Init_TxUART_DMA.end;
	.byte =
		0x00,0x00,0x0D,0x2B,0x08,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x55,0x41,0x52,0x54,0x5F,0x64,0x6D,0x61,0x00,0x01;
	.byte4 = .LN_Init_UART_dma;
	.byte4 = .LN._Init_UART_dma.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN45;
	.byte4 = .LN._Init_UART_dma.end;
	.byte =
		0x00,0x00,0x0D,0x54,0x08,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x44,0x4D,0x41,0x00,0x01;
	.byte4 = .LN_Init_DMA;
	.byte4 = .LN._Init_DMA.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN49;
	.byte4 = .LN._Init_DMA.end;
	.byte =
		0x00,0x00,0x0D,0x7F,0x08,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x46,0x6C,0x61,0x73,0x68,0x00,0x01;
	.byte4 = .LN_Init_Flash;
	.byte4 = .LN._Init_Flash.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN59;
	.byte4 = .LN._Init_Flash.end;
	.byte =
		0x00,0x00,0x0D,0xA9,0x08,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x45,0x42,0x49,0x55,0x00,0x01;
	.byte4 = .LN_Init_EBIU;
	.byte4 = .LN._Init_EBIU.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN61;
	.byte4 = .LN._Init_EBIU.end;
	.byte =
		0x00,0x00,0x0D,0xD5,0x08,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x54,0x69,0x6D,0x65,0x72,0x73,0x00,0x01;
	.byte4 = .LN_Init_Timers;
	.byte4 = .LN._Init_Timers.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN67;
	.byte4 = .LN._Init_Timers.end;
	.byte =
		0x00,0x00,0x0D,0xFE,0x08,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x53,0x50,0x49,0x00,0x01;
	.byte4 = .LN_Init_SPI;
	.byte4 = .LN._Init_SPI.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN78;
	.byte4 = .LN._Init_SPI.end;
	.byte =
		0x00,0x00,0x0D,0x26,0x09,0x00,0x00,0x53,0x50,0x49,0x49,0x6E,
		0x69,0x74,0x00,0x01;
	.byte4 = .LN_SPIInit;
	.byte4 = .LN._SPIInit.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN82;
	.byte4 = .LN._SPIInit.end;
	.byte =
		0x00,0x00,0x0D,0x51,0x09,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x46,0x6C,0x61,0x67,0x73,0x00,0x01;
	.byte4 = .LN_Init_Flags;
	.byte4 = .LN._Init_Flags.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN86;
	.byte4 = .LN._Init_Flags.end;
	.byte =
		0x00,0x00,0x0D,0x79,0x09,0x00,0x00,0x53,0x65,0x74,0x5F,0x50,
		0x4C,0x4C,0x00,0x01;
	.byte4 = .LN_Set_PLL;
	.byte4 = .LN._Set_PLL.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN96;
	.byte4 = .LN._Set_PLL.end;
	.byte =
		0x00,0x00,0x0D,0xA3,0x09,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x55,0x41,0x52,0x54,0x00,0x01;
	.byte4 = .LN_Init_UART;
	.byte4 = .LN._Init_UART.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN117;
	.byte4 = .LN._Init_UART.end;
	.byte =
		0x00,0x00,0x0D,0xCD,0x09,0x00,0x00,0x54,0x78,0x55,0x41,0x52,
		0x54,0x5F,0x65,0x6E,0x00,0x01;
	.byte4 = .LN_TxUART_en;
	.byte4 = .LN._TxUART_en.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN124;
	.byte4 = .LN._TxUART_en.end;
	.byte =
		0x00,0x00,0x0D,0xF8,0x09,0x00,0x00,0x54,0x78,0x55,0x41,0x52,
		0x54,0x5F,0x64,0x69,0x73,0x00,0x01;
	.byte4 = .LN_TxUART_dis;
	.byte4 = .LN._TxUART_dis.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN128;
	.byte4 = .LN._TxUART_dis.end;
	.byte =
		0x00,0x00,0x0D,0x28,0x0A,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x49,0x6E,0x74,0x65,0x72,0x72,0x75,0x70,0x74,0x73,0x00,0x01;
	.byte4 = .LN_Init_Interrupts;
	.byte4 = .LN._Init_Interrupts.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN132;
	.byte4 = .LN._Init_Interrupts.end;
	.byte =
		0x00,0x00,0x0D,0x52,0x0A,0x00,0x00,0x49,0x6E,0x69,0x74,0x53,
		0x44,0x52,0x41,0x4D,0x00,0x01;
	.byte4 = .LN_InitSDRAM;
	.byte4 = .LN._InitSDRAM.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN150;
	.byte4 = .LN._InitSDRAM.end;
	.byte =
		0x00,0x00,0x0F,0x44,0x53,0x50,0x5F,0x69,0x6E,0x31,0x00,0x01,
		0x6B,0x0A,0x00,0x00,0x05,0x03;
	.byte4 = _DSP_in1;
	.byte =
		0x00,0x00,0x00,0x00,0x01,0x10,0x79,0x0A,0x00,0x00,0xA4,0x01,
		0x00,0x00,0x11,0x40,0x00,0x3F,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line SHT_DEBUGINFO;

	.align 1;
.epcline:
	.type .epcline,STT_OBJECT;
	.inc/binary ".\Release\Initialization.sbn", 2009, 580;
	.byte4 = .LN_init_SPORT1;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xC8,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN0;
	.byte =
		0x05,0x05,0x1A,0x00,0x05,0x02;
	.byte4 = .LN1;
	.byte =
		0x05,0x01,0x03,0x6F,0x01,0x00,0x05,0x02;
	.byte4 = .LN2;
	.byte =
		0x05,0x04,0x0E,0x00,0x05,0x02;
	.byte4 = .LN3;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN4;
	.byte =
		0x0E,0x00,0x05,0x02;
	.byte4 = .LN5;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN6;
	.byte =
		0x05,0x05,0x0E,0x00,0x05,0x02;
	.byte4 = .LN7;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN8;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN9;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN10;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._init_SPORT1.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_init_SPORT0;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xA9,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN11;
	.byte =
		0x05,0x05,0x1A,0x00,0x05,0x02;
	.byte4 = .LN12;
	.byte =
		0x05,0x01,0x03,0x6F,0x01,0x00,0x05,0x02;
	.byte4 = .LN13;
	.byte =
		0x05,0x04,0x0E,0x00,0x05,0x02;
	.byte4 = .LN14;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN15;
	.byte =
		0x0E,0x00,0x05,0x02;
	.byte4 = .LN16;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN17;
	.byte =
		0x05,0x05,0x0D,0x00,0x05,0x02;
	.byte4 = .LN18;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN19;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN20;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN21;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._init_SPORT0.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_PPI;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xBD,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN22;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN23;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN24;
	.byte =
		0x05,0x05,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN25;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN26;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN27;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN28;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._Init_PPI.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_DMA_UART;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x9A,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN29;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN30;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN31;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN32;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN33;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN34;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN35;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN36;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN37;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN38;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._Init_DMA_UART.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_TxUART_DMA;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xFD,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN39;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN40;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN41;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN42;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN43;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN44;
	.byte =
		0x05,0x01,0x0C,0x00,0x05,0x02;
	.byte4 = .LN._Init_TxUART_DMA.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_UART_dma;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xF6,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN45;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN46;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN47;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN48;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._Init_UART_dma.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_DMA;
	.byte =
		0x04,0x01,0x05,0x01,0xE9,0x00,0x05,0x02;
	.byte4 = .LN49;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN50;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN51;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN52;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN53;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN54;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN55;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN56;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN57;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN58;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._Init_DMA.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_Flash;
	.byte =
		0x04,0x01,0x05,0x02,0xE1,0x00,0x05,0x02;
	.byte4 = .LN59;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN60;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN._Init_Flash.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_EBIU;
	.byte =
		0x04,0x01,0x05,0x02,0xD0,0x00,0x05,0x02;
	.byte4 = .LN61;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN62;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN63;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN64;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN65;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN66;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN._Init_EBIU.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_Timers;
	.byte =
		0x04,0x01,0x05,0x02,0xB3,0x00,0x05,0x02;
	.byte4 = .LN67;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN68;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN69;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN70;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN71;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN72;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN73;
	.byte =
		0x10,0x00,0x05,0x02;
	.byte4 = .LN74;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN75;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN76;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN77;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN._Init_Timers.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_SPI;
	.byte =
		0x04,0x01,0x05,0x15,0x55,0x00,0x05,0x02;
	.byte4 = .LN78;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN79;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN80;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN81;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN._Init_SPI.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_SPIInit;
	.byte =
		0x04,0x01,0x05,0x2A,0x4E,0x00,0x05,0x02;
	.byte4 = .LN82;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN83;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN84;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN85;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._SPIInit.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_Flags;
	.byte =
		0x04,0x01,0x05,0x17,0x30,0x00,0x05,0x02;
	.byte4 = .LN86;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN87;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN88;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN89;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN90;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.byte4 = .LN91;
	.byte =
		0x0F,0x00,0x05,0x02;
	.byte4 = .LN92;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN93;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN94;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN95;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN._Init_Flags.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Set_PLL;
	.byte =
		0x04,0x01,0x05,0x01,0x68,0x00,0x05,0x02;
	.byte4 = .LN96;
	.byte =
		0x05,0x10,0x0D,0x00,0x05,0x02;
	.byte4 = .LN97;
	.byte =
		0x05,0x01,0x03,0x7C,0x01,0x00,0x05,0x02;
	.byte4 = .LN98;
	.byte =
		0x05,0x15,0x0B,0x00,0x05,0x02;
	.byte4 = .LN99;
	.byte =
		0x05,0x10,0x0B,0x00,0x05,0x02;
	.byte4 = .LN100;
	.byte =
		0x05,0x15,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN101;
	.byte =
		0x05,0x10,0x0B,0x00,0x05,0x02;
	.byte4 = .LN102;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN103;
	.byte =
		0x05,0x1A,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN104;
	.byte =
		0x05,0x03,0x0C,0x00,0x05,0x02;
	.byte4 = .LN105;
	.byte =
		0x05,0x1A,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN106;
	.byte =
		0x05,0x03,0x0C,0x00,0x05,0x02;
	.byte4 = .LN107;
	.byte =
		0x05,0x1A,0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN108;
	.byte =
		0x05,0x02,0x0E,0x00,0x05,0x02;
	.byte4 = .LN109;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN110;
	.byte =
		0x05,0x07,0x14,0x00,0x05,0x02;
	.byte4 = .LN111;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN112;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN113;
	.byte =
		0x05,0x07,0x0A,0x00,0x05,0x02;
	.byte4 = .LN114;
	.byte =
		0x05,0x04,0x0D,0x00,0x05,0x02;
	.byte4 = .LN115;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.byte4 = .LN116;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._Set_PLL.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_UART;
	.byte =
		0x04,0x01,0x05,0x01,0x93,0x00,0x05,0x02;
	.byte4 = .LN117;
	.byte =
		0x05,0x06,0x0B,0x00,0x05,0x02;
	.byte4 = .LN118;
	.byte =
		0x14,0x00,0x05,0x02;
	.byte4 = .LN119;
	.byte =
		0x05,0x07,0x0A,0x00,0x05,0x02;
	.byte4 = .LN120;
	.byte =
		0x05,0x0C,0x0A,0x00,0x05,0x02;
	.byte4 = .LN121;
	.byte =
		0x05,0x06,0x0B,0x00,0x05,0x02;
	.byte4 = .LN122;
	.byte =
		0x05,0x0C,0x0A,0x00,0x05,0x02;
	.byte4 = .LN123;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._Init_UART.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_TxUART_en;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x89,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN124;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN125;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN126;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN127;
	.byte =
		0x05,0x01,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._TxUART_en.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_TxUART_dis;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x92,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN128;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN129;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN130;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN131;
	.byte =
		0x05,0x01,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._TxUART_dis.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_Interrupts;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0xD5,0x02,0x01,0x00,0x05,0x02;
	.byte4 = .LN132;
	.byte =
		0x05,0x05,0x0B,0x00,0x05,0x02;
	.byte4 = .LN133;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN134;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN135;
	.byte =
		0x05,0x0E,0x0B,0x00,0x05,0x02;
	.byte4 = .LN136;
	.byte =
		0x05,0x12,0x0D,0x00,0x05,0x02;
	.byte4 = .LN137;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN138;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN139;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN140;
	.byte =
		0x05,0x15,0x0B,0x00,0x05,0x02;
	.byte4 = .LN141;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN142;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN143;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN144;
	.byte =
		0x05,0x12,0x0B,0x00,0x05,0x02;
	.byte4 = .LN145;
	.byte =
		0x05,0x08,0x0F,0x00,0x05,0x02;
	.byte4 = .LN146;
	.byte =
		0x05,0x06,0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN147;
	.byte =
		0x05,0x08,0x0B,0x00,0x05,0x02;
	.byte4 = .LN148;
	.byte =
		0x05,0x05,0x13,0x00,0x05,0x02;
	.byte4 = .LN149;
	.byte =
		0x05,0x01,0x0E,0x00,0x05,0x02;
	.byte4 = .LN._Init_Interrupts.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_InitSDRAM;
	.byte =
		0x04,0x01,0x05,0x01,0x03,0x89,0x03,0x01,0x00,0x05,0x02;
	.byte4 = .LN150;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN151;
	.byte =
		0x05,0x06,0x0A,0x00,0x05,0x02;
	.byte4 = .LN152;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.byte4 = .LN153;
	.byte =
		0x05,0x06,0x19,0x00,0x05,0x02;
	.byte4 = .LN154;
	.byte =
		0x05,0x02,0x0C,0x00,0x05,0x02;
	.byte4 = .LN155;
	.byte =
		0x05,0x01,0x0C,0x00,0x05,0x02;
	.byte4 = .LN._InitSDRAM.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames SHT_DEBUGINFO;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x2E,0x01,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.inc/binary ".\Release\Initialization.sbn", 2589, 296;
.epcpubnames.end:

	.section .debug_aranges SHT_DEBUGINFO;

	.align 1;
.epcaranges:
	.type .epcaranges,STT_OBJECT;
	.byte =
		0xAC,0x00,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.byte =
		0x04,0x00,0x00,0x00,0x00,0x00;
	.byte4 = .LN_init_SPORT1;
	.byte4 = .LN._init_SPORT1.end-.LN_init_SPORT1;
	.byte4 = .LN_init_SPORT0;
	.byte4 = .LN._init_SPORT0.end-.LN_init_SPORT0;
	.byte4 = .LN_Init_PPI;
	.byte4 = .LN._Init_PPI.end-.LN_Init_PPI;
	.byte4 = .LN_Init_DMA_UART;
	.byte4 = .LN._Init_DMA_UART.end-.LN_Init_DMA_UART;
	.byte4 = .LN_Init_TxUART_DMA;
	.byte4 = .LN._Init_TxUART_DMA.end-.LN_Init_TxUART_DMA;
	.byte4 = .LN_Init_UART_dma;
	.byte4 = .LN._Init_UART_dma.end-.LN_Init_UART_dma;
	.byte4 = .LN_Init_DMA;
	.byte4 = .LN._Init_DMA.end-.LN_Init_DMA;
	.byte4 = .LN_Init_Flash;
	.byte4 = .LN._Init_Flash.end-.LN_Init_Flash;
	.byte4 = .LN_Init_EBIU;
	.byte4 = .LN._Init_EBIU.end-.LN_Init_EBIU;
	.byte4 = .LN_Init_Timers;
	.byte4 = .LN._Init_Timers.end-.LN_Init_Timers;
	.byte4 = .LN_Init_SPI;
	.byte4 = .LN._Init_SPI.end-.LN_Init_SPI;
	.byte4 = .LN_SPIInit;
	.byte4 = .LN._SPIInit.end-.LN_SPIInit;
	.byte4 = .LN_Init_Flags;
	.byte4 = .LN._Init_Flags.end-.LN_Init_Flags;
	.byte4 = .LN_Set_PLL;
	.byte4 = .LN._Set_PLL.end-.LN_Set_PLL;
	.byte4 = .LN_Init_UART;
	.byte4 = .LN._Init_UART.end-.LN_Init_UART;
	.byte4 = .LN_TxUART_en;
	.byte4 = .LN._TxUART_en.end-.LN_TxUART_en;
	.byte4 = .LN_TxUART_dis;
	.byte4 = .LN._TxUART_dis.end-.LN_TxUART_dis;
	.byte4 = .LN_Init_Interrupts;
	.byte4 = .LN._Init_Interrupts.end-.LN_Init_Interrupts;
	.byte4 = .LN_InitSDRAM;
	.byte4 = .LN._InitSDRAM.end-.LN_InitSDRAM;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DOUBLE64 data1;


	.extern _DSP_in1;
	.type _DSP_in1,STT_OBJECT;
