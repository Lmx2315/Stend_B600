	.file "..\BFcom\uart.c";
//  Compilation time: Tue Nov 06 15:34:53 2018
//  Compiler options: -c -file-attr ProjectName=NewProject -O -Ov0 -g -always-inline -save-temps -path-output .\Release -ED -no-auto-attrs -structs-do-not-overlap -const-strings -no-multiline -D__PROCESSOR_SPEED__=400000000 -double-size-64 -decls-strong -warn-protos -flags-compiler --diag_warning,call_not_inlined -si-revision 0.6 -proc ADSP-BF533 -o .\Release\uart.doj -MM
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
_UART_ISR:
.LN_UART_ISR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 40 
//  Scratch registers used: {R0-R1,P0-P2,ASTAT0-ASTAT1,CC,AQ}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\uart.c":87
	LINK 8;
	[--SP] = ASTAT;
	[--SP] = R0;
	[--SP] = R1;
	[--SP] = P0;
	[--SP] = P1;
	[--SP] = P2;
.LN0:
// line 90
	P1 = 1032 /* -4193272 */;
	P1.H = -64 /* -4193272 */;
	R0 = W[P1] (Z);
	[SP + 24] = R0;
.LN1:
// line 91
	R0 = [SP + 24];
	R0 >>= 1;
	[SP + 24] = R0;
.LN2:
// line 95
	R0 = [SP + 24];
	CC = R0 == 0;
	if CC jump .P37L3 ;

.P37L2:
.LN3:
// line 100
	R0 = [SP + 24];
	R1 = 2;
	R0 = R0 & R1;
	CC = R0 == 2;
	if !CC jump .P37L3 ;

.P37L4:
.LN4:
// line 102
	NOP;                                    // Inserted 2 instrs to fix anomaly w_05000245_with_boundaries. 
	NOP;
	P1 = 1024 /* -4193280 */;
	P1.H = -64 /* -4193280 */;
	R0 = W[P1] (Z);
	[SP + 28] = R0;
.LN5:
// line 107
	R0 = [SP + 28];
	P1.L = _rx_wr_index0;
	P1.H = _rx_wr_index0;
	P0 = [P1];
	P2.L = _rx_buffer0;
	P2.H = _rx_buffer0;
.LN6:
// line 108
	R1 = 256;
	// -- stall --
.LN7:
// line 107
	P0 = P2 + P0;
	B[P0] = R0;
.LN8:
// line 108
	R0 = [P1];
	R0 += 1;
	CC = R0 == R1;
	[P1] = R0;
	if !CC jump .P37L9 ;

.P37L7:
.LN9:
	R0 = 0;
	[P1] = R0;

.P37L9:
	P1.L = _rx_counter0;
	P1.H = _rx_counter0;
.LN10:
// line 109
	R0 = [P1];
	R0 += 1;
	CC = R0 == R1;
	[P1] = R0;
	if !CC jump .P37L3 ;

.P37L10:
.LN11:
// line 111
	R0 = 0;
	[P1] = R0;
	P1.L = _rx_buffer_overflow0;
	P1.H = _rx_buffer_overflow0;
.LN12:
// line 112
	R0 = 1;
	B[P1] = R0;

.P37L3:
.LN13:
// line 118
	P2 = [SP++];
	P1 = [SP++];
	// -- stall --
	P0 = [SP++];
	R1 = [SP++];
	R0 = [SP++];
	ASTAT = [SP++];
	UNLINK;
	RTI;
.LN._UART_ISR.end:
._UART_ISR.end:
	.global _UART_ISR;
	.type _UART_ISR,STT_FUNC;

	.align 2;
_UART_ERR_ISR:
.LN_UART_ERR_ISR:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  No scratch registers used.
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\uart.c":82
	LINK 0;
.LN14:
// line 84
	UNLINK;
	RTI;
.LN._UART_ERR_ISR.end:
._UART_ERR_ISR.end:
	.global _UART_ERR_ISR;
	.type _UART_ERR_ISR,STT_FUNC;

	.align 2;
_UART_getSCLK:
.LN_UART_getSCLK:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 20 
//  Scratch registers used: {R0-R2,P1,ASTAT0-ASTAT1,CC}
//  Call preserved registers used: {FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P1,ASTAT0-ASTAT1,CC,AQ,LC0,LT0,LB0,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\uart.c":31
	LINK 12;
.LN15:
// line 35
	P1 = 0 /* -4194304 */;
	P1.H = -64 /* -4194304 */;
	R0 = W[P1] (Z);
.LN16:
// line 44
	R1 = 1;
	R1 = R0 & R1;
.LN17:
// line 39
	R2 = 32256;
.LN18:
// line 36
	P1 = 4 /* -4194300 */;
	P1.H = -64 /* -4194300 */;
.LN19:
// line 46
	CC = R1 == 1;
.LN20:
// line 39
	R2 = R0 & R2;
.LN21:
// line 36
	R1 = W[P1] (Z);
.LN22:
// line 42
	R0 = 15;
	R1 = R1 & R0;
.LN23:
// line 39
	R2 >>>= 9;
	P1.L = _CLKIN;
	P1.H = _CLKIN;
.LN24:
// line 46
	if !CC jump .P39L3 ;

.P39L1:
.LN25:
	R0 = [P1];
	R0 >>= 1;
	[P1] = R0;

.P39L3:
.LN26:
// line 48
	R0 = [P1];
	R0 *= R2;
.LN27:
// line 49
	CALL.X (___udiv32);                     // division is implemented as a library call. 
	P1 = R0;
.LN28:
// line 51
	UNLINK;
	// -- 3 stalls --
	P1 = P1 + P1;
	P1 = P1 + (P1<<2);
	R0 = P1;
	RTS;
.LN._UART_getSCLK.end:
._UART_getSCLK.end:
	.global _UART_getSCLK;
	.type _UART_getSCLK,STT_FUNC;

	.align 2;
_UART_init:
.LN_UART_init:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 16 
//  Scratch registers used: {R0-R1,P0-P1,ASTAT0-ASTAT1}
//  Call preserved registers used: {R6-R7,FP,SP,RETS}
//  Registers that could be clobbered by function calls: {R0-R3,P1,ASTAT0-ASTAT1,CC,AQ,LC0,LT0,LB0,RETS}
//Inlined in _UART_init:
//  ..\BFcom\uart.c:75:9'_ssync
//  ..\BFcom\uart.c:65:9'_ssync
//  ..\BFcom\uart.c:63:9'_ssync
//-------------------------------------------------------------------
// line "..\BFcom\uart.c":59
	LINK 0;
	[--SP] = (R7:6);
	SP += -12;
	R7 = R0;
.LN29:
// line 62
	CALL.X (_UART_getSCLK);
.LN30:
// line 64
	R1 = R7 << 4;
.LN31:
// line 63
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN32:
// line 64
	CALL.X (___div32);                      // division is implemented as a library call. 
.LN33:
// line 65
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN34:
// line 67
	P1 = 1060 /* -4193244 */;
	P1.H = -64 /* -4193244 */;
	R1 = 1;
	W[P1] = R1.L;
.LN35:
// line 72
	R1 = R0 >>> 8;
	R6 = 128;
.LN36:
// line 70
	P1 = 1036 /* -4193268 */;
	P1.H = -64 /* -4193268 */;
	W[P1] = R6.L;
.LN37:
// line 71
	P0 = 1024 /* -4193280 */;
	P0.H = -64 /* -4193280 */;
	W[P0] = R0.L;
.LN38:
// line 72
	P0 = 1028 /* -4193276 */;
	P0.H = -64 /* -4193276 */;
	W[P0] = R1.L;
.LN39:
// line 74
	R0 = 3;
	W[P1] = R0.L;
.LN40:
// line 75
	.MESSAGE/SUPPRESS 5515 FOR 1 LINES;
	SSYNC;
.LN41:
// line 76
	SP += 12;
	(R7:6) = [SP++];
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._UART_init.end:
._UART_init.end:
	.global _UART_init;
	.type _UART_init,STT_FUNC;

	.file_attr ProjectName="NewProject";
.epctext.end:

	.extern ___udiv32;
	.type ___udiv32,STT_FUNC;
	.extern ___div32;
	.type ___div32,STT_FUNC;

	.section/DOUBLE64 data1;

	.align 4;
.epcdata:
	.type .epcdata,STT_OBJECT;
_CLKIN:
	.global _CLKIN;
	.type _CLKIN,STT_OBJECT;
	.byte =
		0x80,0x84,0x1E,0x00;
.epcdata.end:

	.section/ZERO_INIT/DOUBLE64 bsz;

	.align 1;
.epcbss:
	.type .epcbss,STT_OBJECT;
	.byte _rx_buffer_overflow0[1];
	.global _rx_buffer_overflow0;
	.type _rx_buffer_overflow0,STT_OBJECT;
.epcbss.end:

	.section .debug_abbrev SHT_DEBUGINFO;

	.align 1;
.epcabbrev:
	.type .epcabbrev,STT_OBJECT;
	.inc/binary ".\Release\uart.sbn", 0, 235;
.epcabbrev.end:

	.section .debug_info SHT_DEBUGINFO;

	.align 1;
.epcdebug:
	.type .epcdebug,STT_OBJECT;
	.byte =
		0xAE,0x08,0x00,0x00,0x02,0x00;
	.byte4 = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x42,0x46,0x63,0x6F,0x6D,0x5C,0x75,
		0x61,0x72,0x74,0x2E,0x63,0x00,0x01;
	.byte4 = .epcline;
	.inc/binary ".\Release\uart.sbn", 235, 1791;
	.byte4 = .LN_UART_ISR;
	.byte4 = .LN._UART_ISR.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN0;
	.byte4 = .LN._UART_ISR.end;
	.byte =
		0x0F,0x73,0x74,0x61,0x74,0x00,0x01,0x5D,0x07,0x00,0x00,0x02,
		0x7F,0x78,0x00,0x00,0x00,0x00,0x00,0x0F,0x74,0x00,0x01,0x5D,
		0x07,0x00,0x00,0x02,0x7F,0x7C,0x00,0x00,0x00,0x00,0x00,0x00,
		0x00,0x0C,0xE8,0x01,0x00,0x00,0x0D,0x8F,0x07,0x00,0x00,0x55,
		0x41,0x52,0x54,0x5F,0x45,0x52,0x52,0x5F,0x49,0x53,0x52,0x00,
		0x01;
	.byte4 = .LN_UART_ERR_ISR;
	.byte4 = .LN._UART_ERR_ISR.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN14;
	.byte4 = .LN._UART_ERR_ISR.end;
	.byte =
		0x00,0x00,0x10,0xC0,0x07,0x00,0x00,0x55,0x41,0x52,0x54,0x5F,
		0x67,0x65,0x74,0x53,0x43,0x4C,0x4B,0x00,0x01;
	.byte4 = .LN_UART_getSCLK;
	.byte4 = .LN._UART_getSCLK.end;
	.byte =
		0x01,0xD3,0x01,0x00,0x00,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN15;
	.byte4 = .LN._UART_getSCLK.end;
	.byte =
		0x00,0x00,0x0D,0xEA,0x07,0x00,0x00,0x55,0x41,0x52,0x54,0x5F,
		0x69,0x6E,0x69,0x74,0x00,0x01;
	.byte4 = .LN_UART_init;
	.byte4 = .LN._UART_init.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN29;
	.byte4 = .LN._UART_init.end;
	.byte =
		0x00,0x00,0x0F,0x72,0x78,0x5F,0x77,0x72,0x5F,0x69,0x6E,0x64,
		0x65,0x78,0x30,0x00,0x01,0x5D,0x07,0x00,0x00,0x05,0x03;
	.byte4 = _rx_wr_index0;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x0F,0x72,0x78,0x5F,0x72,0x64,0x5F,
		0x69,0x6E,0x64,0x65,0x78,0x30,0x00,0x01,0x5D,0x07,0x00,0x00,
		0x05,0x03;
	.byte4 = _rx_rd_index0;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x0F,0x72,0x78,0x5F,0x63,0x6F,0x75,
		0x6E,0x74,0x65,0x72,0x30,0x00,0x01,0x5D,0x07,0x00,0x00,0x05,
		0x03;
	.byte4 = _rx_counter0;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x0F,0x72,0x78,0x5F,0x62,0x75,0x66,
		0x66,0x65,0x72,0x30,0x00,0x01,0xA0,0x08,0x00,0x00,0x05,0x03;
	.byte4 = _rx_buffer0;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x0F,0x72,0x78,0x5F,0x62,0x75,0x66,
		0x66,0x65,0x72,0x5F,0x6F,0x76,0x65,0x72,0x66,0x6C,0x6F,0x77,
		0x30,0x00,0x01,0x80,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _rx_buffer_overflow0;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x0F,0x43,0x4C,0x4B,0x49,0x4E,0x00,
		0x01,0xE8,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _CLKIN;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x0C,0x80,0x01,0x00,0x00,0x11,0xB0,
		0x08,0x00,0x00,0x9B,0x08,0x00,0x00,0x12,0x80,0x02,0x00,0xFF,
		0x01,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line SHT_DEBUGINFO;

	.align 1;
.epcline:
	.type .epcline,STT_OBJECT;
	.inc/binary ".\Release\uart.sbn", 2026, 570;
	.byte4 = .LN_UART_ISR;
	.byte =
		0x04,0x01,0x05,0x03,0x5F,0x00,0x05,0x02;
	.byte4 = .LN0;
	.byte =
		0x05,0x05,0x0C,0x00,0x05,0x02;
	.byte4 = .LN1;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN2;
	.byte =
		0x0D,0x00,0x05,0x02;
	.byte4 = .LN3;
	.byte =
		0x05,0x0B,0x0E,0x00,0x05,0x02;
	.byte4 = .LN4;
	.byte =
		0x05,0x0E,0x0B,0x00,0x05,0x02;
	.byte4 = .LN5;
	.byte =
		0x05,0x08,0x0E,0x00,0x05,0x02;
	.byte4 = .LN6;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN7;
	.byte =
		0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN8;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN9;
	.byte =
		0x05,0x2F,0x01,0x00,0x05,0x02;
	.byte4 = .LN10;
	.byte =
		0x05,0x08,0x0A,0x00,0x05,0x02;
	.byte4 = .LN11;
	.byte =
		0x05,0x07,0x0B,0x00,0x05,0x02;
	.byte4 = .LN12;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN13;
	.byte =
		0x05,0x03,0x0F,0x00,0x05,0x02;
	.byte4 = .LN._UART_ISR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_UART_ERR_ISR;
	.byte =
		0x04,0x01,0x05,0x02,0x5A,0x00,0x05,0x02;
	.byte4 = .LN14;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN._UART_ERR_ISR.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_UART_getSCLK;
	.byte =
		0x04,0x01,0x05,0x03,0x27,0x00,0x05,0x02;
	.byte4 = .LN15;
	.byte =
		0x05,0x02,0x0D,0x00,0x05,0x02;
	.byte4 = .LN16;
	.byte =
		0x12,0x00,0x05,0x02;
	.byte4 = .LN17;
	.byte =
		0x03,0x7B,0x01,0x00,0x05,0x02;
	.byte4 = .LN18;
	.byte =
		0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN19;
	.byte =
		0x13,0x00,0x05,0x02;
	.byte4 = .LN20;
	.byte =
		0x03,0x79,0x01,0x00,0x05,0x02;
	.byte4 = .LN21;
	.byte =
		0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN22;
	.byte =
		0x0F,0x00,0x05,0x02;
	.byte4 = .LN23;
	.byte =
		0x03,0x7D,0x01,0x00,0x05,0x02;
	.byte4 = .LN24;
	.byte =
		0x10,0x00,0x05,0x02;
	.byte4 = .LN25;
	.byte =
		0x05,0x10,0x01,0x00,0x05,0x02;
	.byte4 = .LN26;
	.byte =
		0x05,0x02,0x0B,0x00,0x05,0x02;
	.byte4 = .LN27;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN28;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN._UART_getSCLK.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_UART_init;
	.byte =
		0x04,0x01,0x05,0x02,0x43,0x00,0x05,0x02;
	.byte4 = .LN29;
	.byte =
		0x05,0x16,0x0C,0x00,0x05,0x02;
	.byte4 = .LN30;
	.byte =
		0x05,0x04,0x0B,0x00,0x05,0x02;
	.byte4 = .LN31;
	.byte =
		0x05,0x09,0x03,0x7F,0x01,0x00,0x05,0x02;
	.byte4 = .LN32;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN33;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.byte4 = .LN34;
	.byte =
		0x05,0x04,0x0B,0x00,0x05,0x02;
	.byte4 = .LN35;
	.byte =
		0x0E,0x00,0x05,0x02;
	.byte4 = .LN36;
	.byte =
		0x03,0x7E,0x01,0x00,0x05,0x02;
	.byte4 = .LN37;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN38;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN39;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN40;
	.byte =
		0x05,0x09,0x0A,0x00,0x05,0x02;
	.byte4 = .LN41;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._UART_init.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames SHT_DEBUGINFO;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0xAE,0x00,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.inc/binary ".\Release\uart.sbn", 2596, 168;
.epcpubnames.end:

	.section .debug_aranges SHT_DEBUGINFO;

	.align 1;
.epcaranges:
	.type .epcaranges,STT_OBJECT;
	.byte =
		0x34,0x00,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.byte =
		0x04,0x00,0x00,0x00,0x00,0x00;
	.byte4 = .LN_UART_ISR;
	.byte4 = .LN._UART_ISR.end-.LN_UART_ISR;
	.byte4 = .LN_UART_ERR_ISR;
	.byte4 = .LN._UART_ERR_ISR.end-.LN_UART_ERR_ISR;
	.byte4 = .LN_UART_getSCLK;
	.byte4 = .LN._UART_getSCLK.end-.LN_UART_getSCLK;
	.byte4 = .LN_UART_init;
	.byte4 = .LN._UART_init.end-.LN_UART_init;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/ZERO_INIT/DOUBLE64 bsz;

	.align 4;
	.global _rx_wr_index0;
	.type _rx_wr_index0,STT_OBJECT;
	.byte _rx_wr_index0[4];
._rx_wr_index0.end:
	.align 4;
	.global _rx_rd_index0;
	.type _rx_rd_index0,STT_OBJECT;
	.byte _rx_rd_index0[4];
._rx_rd_index0.end:
	.align 4;
	.global _rx_counter0;
	.type _rx_counter0,STT_OBJECT;
	.byte _rx_counter0[4];
._rx_counter0.end:
	.align 4;
	.global _rx_buffer0;
	.type _rx_buffer0,STT_OBJECT;
	.byte _rx_buffer0[256];
._rx_buffer0.end:
