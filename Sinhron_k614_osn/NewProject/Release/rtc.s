	.file "..\BFcom\rtc.c";
//  Compilation time: Fri Nov 02 16:32:09 2018
//  Compiler options: -c -file-attr ProjectName=NewProject -O -Ov0 -g -always-inline -save-temps -path-output .\Release -ED -no-auto-attrs -structs-do-not-overlap -const-strings -no-multiline -D__PROCESSOR_SPEED__=400000000 -double-size-64 -decls-strong -warn-protos -flags-compiler --diag_warning,call_not_inlined -si-revision 0.6 -proc ADSP-BF533 -o .\Release\rtc.doj -MM
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
_RTC_ISR2:
.LN_RTC_ISR2:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 28 
//  Scratch registers used: {R0,P0-P2,ASTAT0-ASTAT1,CC,AQ}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\rtc.c":41
	LINK 0;
	[--SP] = ASTAT;
	[--SP] = R0;
	[--SP] = P0;
	[--SP] = P1;
	[--SP] = P2;
.LN0:
// line 42
	P2 = 776 /* -4193528 */;
	P2.H = -64 /* -4193528 */;
	R0 = W[P2] (Z);
	P1.L = _statu;
	P1.H = _statu;
.LN1:
// line 57
	CC = BITTST(R0, 2);
.LN2:
// line 42
	[P1] = R0;
.LN3:
// line 57
	if !CC jump .P36L9 ;

.P36L7:
.LN4:
// line 60
	NOP;                                    // Inserted 2 instrs to fix anomaly w_05000245_with_boundaries. 
	NOP;
	P0.L = _DontConnect_flag;
	P0.H = _DontConnect_flag;
	R0 = B[P0] (Z);
	CC = R0 == 0;
	P0.L = _CntDown;
	P0.H = _CntDown;
	if CC jump .P36L12 ;

.P36L10:
.LN5:
// line 61
	R0 = [P0];
	R0 += -1;
	[P0] = R0;

.P36L12:
.LN6:
// line 62
	R0 = [P0];
	CC = R0 == 0;
	if !CC jump .P36L9 ;

.P36L13:
.LN7:
// line 63
	P0 = 5 /* 539426821 */;
	P0.H = 8231 /* 539426821 */;
	R0 = 1;
	B[P0] = R0;

.P36L9:
.LN8:
// line 65
	R0 = [P1];
	CC = BITTST(R0, 3);
	if !CC jump .P36L18 ;

.P36L16:
	P0.L = _tested;
	P0.H = _tested;
.LN9:
// line 68
	R0 = 0;
	[P0] = R0;

.P36L18:
.LN10:
// line 90
	R0 = 15;
	W[P2] = R0.L;

.P36L28:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\rtc.c" line 91 col 10
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//     32-bit Instruction  used   3 out of    8 ( 37.5%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN11:
// line 91
	NOP;                                    // Inserted to fix anomaly w_05000245_with_boundaries. 
	R0 = W[P2] (Z);                         // Use of volatile in loops precludes optimizations. 
	CC = !BITTST(R0, 15);
	if CC jump .P36L28 (bp);
//-------------------------------------------------------------------
//   End Loop L28
//-------------------------------------------------------------------

.P36L29:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN12:
// line 92
	R0 = W[P2] (X);
.LN13:
// line 94
	R0 = 0;
	[P1] = R0;
.LN14:
// line 95
	P1 = 772 /* -4193532 */;
	P1.H = -64 /* -4193532 */;
	W[P1] = R0.L;

.P36L31:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\rtc.c" line 96 col 3
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//     32-bit Instruction  used   3 out of    8 ( 37.5%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN15:
// line 96
	NOP;                                    // Inserted to fix anomaly w_05000245_with_boundaries. 
	R0 = W[P2] (Z);                         // Use of volatile in loops precludes optimizations. 
	CC = !BITTST(R0, 15);
	if CC jump .P36L31 (bp);
//-------------------------------------------------------------------
//   End Loop L31
//-------------------------------------------------------------------

.P36L32:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN16:
// line 97
	P2 = [SP++];
	P1 = [SP++];
	// -- stall --
	P0 = [SP++];
	R0 = [SP++];
	ASTAT = [SP++];
	UNLINK;
	RTI;
.LN._RTC_ISR2.end:
._RTC_ISR2.end:
	.global _RTC_ISR2;
	.type _RTC_ISR2,STT_FUNC;

	.align 2;
_Init_RTC:
.LN_Init_RTC:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  Scratch registers used: {R0,P0-P1,CC}
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\rtc.c":18
	LINK 0;
.LN17:
// line 19
	P1 = 292 /* -4194012 */;
	P1.H = -64 /* -4194012 */;
	R0 = 128;
	[P1] = R0;
.LN18:
// line 20
	R0 = 1;
	P1 = 788 /* -4193516 */;
	P1.H = -64 /* -4193516 */;
	W[P1] = R0.L;
.LN19:
// line 21
	P1 = 776 /* -4193528 */;
	P1.H = -64 /* -4193528 */;

.P37L1:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\rtc.c" line 21 col 5
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//     32-bit Instruction  used   3 out of    8 ( 37.5%)
//-------------------------------------------------------------------
	// -- 4 stalls --
	NOP;                                    // Inserted to fix anomaly w_05000245_with_boundaries. 
	R0 = W[P1] (Z);                         // Use of volatile in loops precludes optimizations. 
	CC = !BITTST(R0, 15);
	if CC jump .P37L1 (bp);
//-------------------------------------------------------------------
//   End Loop L1
//-------------------------------------------------------------------

.P37L2:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN20:
// line 23
	P0 = 780 /* -4193524 */;
	P0.H = -64 /* -4193524 */;
	R0 = 16;
	W[P0] = R0.L;

.P37L4:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\rtc.c" line 24 col 5
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//     32-bit Instruction  used   3 out of    8 ( 37.5%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN21:
// line 24
	NOP;                                    // Inserted to fix anomaly w_05000245_with_boundaries. 
	R0 = W[P1] (Z);                         // Use of volatile in loops precludes optimizations. 
	CC = !BITTST(R0, 15);
	if CC jump .P37L4 (bp);
//-------------------------------------------------------------------
//   End Loop L4
//-------------------------------------------------------------------

.P37L5:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN22:
// line 29
	P0 = 772 /* -4193532 */;
	P0.H = -64 /* -4193532 */;
	R0 = 29;
	W[P0] = R0.L;

.P37L7:
//-------------------------------------------------------------------
//   Loop at "..\BFcom\rtc.c" line 30 col 5
//-------------------------------------------------------------------
//   This loop executes 1 iteration of the original loop in an estimated 8 
//   cycles (includes 4 stalls).
//-------------------------------------------------------------------
//   This loop's resource usage is:
//     16-bit Instruction  used   8 out of   16 ( 50.0%)
//     Group 1             used   4 out of    8 ( 50.0%)
//     32-bit Instruction  used   3 out of    8 ( 37.5%)
//-------------------------------------------------------------------
	// -- 4 stalls --
.LN23:
// line 30
	NOP;                                    // Inserted to fix anomaly w_05000245_with_boundaries. 
	R0 = W[P1] (Z);                         // Use of volatile in loops precludes optimizations. 
	CC = !BITTST(R0, 15);
	if CC jump .P37L7 (bp);
//-------------------------------------------------------------------
//   End Loop L7
//-------------------------------------------------------------------

.P37L8:
//-------------------------------------------------------------------
//   Part of top level (no loop)
//-------------------------------------------------------------------
.LN24:
// line 32
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._Init_RTC.end:
._Init_RTC.end:
	.global _Init_RTC;
	.type _Init_RTC,STT_FUNC;

	.file_attr ProjectName="NewProject";
.epctext.end:

	.section/ZERO_INIT/DOUBLE64 bsz;

	.align 4;
.epcbss:
	.type .epcbss,STT_OBJECT;
	.byte _statu[4];
	.type _statu,STT_OBJECT;
.epcbss.end:

	.section .debug_abbrev SHT_DEBUGINFO;

	.align 1;
.epcabbrev:
	.type .epcabbrev,STT_OBJECT;
	.inc/binary ".\Release\rtc.sbn", 0, 192;
.epcabbrev.end:

	.section .debug_info SHT_DEBUGINFO;

	.align 1;
.epcdebug:
	.type .epcdebug,STT_OBJECT;
	.byte =
		0xCC,0x07,0x00,0x00,0x02,0x00;
	.byte4 = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x42,0x46,0x63,0x6F,0x6D,0x5C,0x72,
		0x74,0x63,0x2E,0x63,0x00,0x01;
	.byte4 = .epcline;
	.inc/binary ".\Release\rtc.sbn", 192, 1794;
	.byte4 = .LN_RTC_ISR2;
	.byte4 = .LN._RTC_ISR2.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN0;
	.byte4 = .LN._RTC_ISR2.end;
	.byte =
		0x00,0x00,0x0D,0x65,0x07,0x00,0x00,0x49,0x6E,0x69,0x74,0x5F,
		0x52,0x54,0x43,0x00,0x01;
	.byte4 = .LN_Init_RTC;
	.byte4 = .LN._Init_RTC.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN17;
	.byte4 = .LN._Init_RTC.end;
	.byte =
		0x00,0x00,0x0F,0x73,0x74,0x61,0x74,0x75,0x00,0x01,0xEA,0x01,
		0x00,0x00,0x05,0x03;
	.byte4 = _statu;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x0F,0x43,0x6E,0x74,0x44,0x6F,0x77,
		0x6E,0x00,0x01,0xEA,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _CntDown;
	.byte =
		0x00,0x00,0x00,0x00,0x01,0x0F,0x44,0x6F,0x6E,0x74,0x43,0x6F,
		0x6E,0x6E,0x65,0x63,0x74,0x5F,0x66,0x6C,0x61,0x67,0x00,0x01,
		0x99,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _DontConnect_flag;
	.byte =
		0x00,0x00,0x00,0x00,0x01,0x0F,0x74,0x65,0x73,0x74,0x65,0x64,
		0x00,0x01,0xEA,0x01,0x00,0x00,0x05,0x03;
	.byte4 = _tested;
	.byte =
		0x00,0x00,0x00,0x00,0x01,0x00;
.epcdebug.end:

	.section .debug_line SHT_DEBUGINFO;

	.align 1;
.epcline:
	.type .epcline,STT_OBJECT;
	.inc/binary ".\Release\rtc.sbn", 1986, 569;
	.byte4 = .LN_RTC_ISR2;
	.byte =
		0x04,0x01,0x05,0x04,0x31,0x00,0x05,0x02;
	.byte4 = .LN0;
	.byte =
		0x05,0x06,0x0A,0x00,0x05,0x02;
	.byte4 = .LN1;
	.byte =
		0x18,0x00,0x05,0x02;
	.byte4 = .LN2;
	.byte =
		0x03,0x71,0x01,0x00,0x05,0x02;
	.byte4 = .LN3;
	.byte =
		0x18,0x00,0x05,0x02;
	.byte4 = .LN4;
	.byte =
		0x05,0x0A,0x0C,0x00,0x05,0x02;
	.byte4 = .LN5;
	.byte =
		0x05,0x0C,0x0A,0x00,0x05,0x02;
	.byte4 = .LN6;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN7;
	.byte =
		0x05,0x0C,0x0A,0x00,0x05,0x02;
	.byte4 = .LN8;
	.byte =
		0x05,0x06,0x0B,0x00,0x05,0x02;
	.byte4 = .LN9;
	.byte =
		0x05,0x0A,0x0C,0x00,0x05,0x02;
	.byte4 = .LN10;
	.byte =
		0x05,0x07,0x1F,0x00,0x05,0x02;
	.byte4 = .LN11;
	.byte =
		0x05,0x0A,0x0A,0x00,0x05,0x02;
	.byte4 = .LN12;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN13;
	.byte =
		0x05,0x06,0x0B,0x00,0x05,0x02;
	.byte4 = .LN14;
	.byte =
		0x05,0x03,0x0A,0x00,0x05,0x02;
	.byte4 = .LN15;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN16;
	.byte =
		0x05,0x04,0x0A,0x00,0x05,0x02;
	.byte4 = .LN._RTC_ISR2.end;
	.byte =
		0x00,0x01,0x01,0x00,0x05,0x02;
	.byte4 = .LN_Init_RTC;
	.byte =
		0x04,0x01,0x05,0x03,0x1A,0x00,0x05,0x02;
	.byte4 = .LN17;
	.byte =
		0x05,0x02,0x0A,0x00,0x05,0x02;
	.byte4 = .LN18;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN19;
	.byte =
		0x05,0x05,0x0A,0x00,0x05,0x02;
	.byte4 = .LN20;
	.byte =
		0x0B,0x00,0x05,0x02;
	.byte4 = .LN21;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN22;
	.byte =
		0x0E,0x00,0x05,0x02;
	.byte4 = .LN23;
	.byte =
		0x0A,0x00,0x05,0x02;
	.byte4 = .LN24;
	.byte =
		0x05,0x03,0x0B,0x00,0x05,0x02;
	.byte4 = .LN._Init_RTC.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames SHT_DEBUGINFO;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x28,0x00,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.byte =
		0xD0,0x07,0x00,0x00,0x13,0x07,0x00,0x00,0x52,0x54,0x43,0x5F,
		0x49,0x53,0x52,0x32,0x00,0x3C,0x07,0x00,0x00,0x49,0x6E,0x69,
		0x74,0x5F,0x52,0x54,0x43,0x00,0x00,0x00,0x00,0x00;
.epcpubnames.end:

	.section .debug_aranges SHT_DEBUGINFO;

	.align 1;
.epcaranges:
	.type .epcaranges,STT_OBJECT;
	.byte =
		0x24,0x00,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.byte =
		0x04,0x00,0x00,0x00,0x00,0x00;
	.byte4 = .LN_RTC_ISR2;
	.byte4 = .LN._RTC_ISR2.end-.LN_RTC_ISR2;
	.byte4 = .LN_Init_RTC;
	.byte4 = .LN._Init_RTC.end-.LN_Init_RTC;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:

	.section/DOUBLE64 data1;


	.extern _CntDown;
	.type _CntDown,STT_OBJECT;
	.extern _DontConnect_flag;
	.type _DontConnect_flag,STT_OBJECT;
	.extern _tested;
	.type _tested,STT_OBJECT;
