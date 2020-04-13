	.file "..\BFcom\Pll.c";
//  Compilation time: Fri Nov 02 16:32:09 2018
//  Compiler options: -c -file-attr ProjectName=NewProject -O -Ov0 -g -always-inline -save-temps -path-output .\Release -ED -no-auto-attrs -structs-do-not-overlap -const-strings -no-multiline -D__PROCESSOR_SPEED__=400000000 -double-size-64 -decls-strong -warn-protos -flags-compiler --diag_warning,call_not_inlined -si-revision 0.6 -proc ADSP-BF533 -o .\Release\Pll.doj -MM
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
_CPUAccel:
.LN_CPUAccel:
//-------------------------------------------------------------------
//  Procedure statistics:
//  Frame size            = 8 
//  No scratch registers used.
//  Call preserved registers used: {FP,SP,RETS}
//-------------------------------------------------------------------
// line "..\BFcom\Pll.c":52
	LINK 0;
.LN0:
// line 55
	UNLINK;
	// -- 4 stalls --
	RTS;
.LN._CPUAccel.end:
._CPUAccel.end:
	.global _CPUAccel;
	.type _CPUAccel,STT_FUNC;

	.file_attr ProjectName="NewProject";
.epctext.end:

	.section/ZERO_INIT/DOUBLE64 bsz;

	.align 4;
.epcbss:
	.type .epcbss,STT_OBJECT;
	.byte _ppp[4];
	.global _ppp;
	.type _ppp,STT_OBJECT;
.epcbss.end:

	.section .debug_abbrev SHT_DEBUGINFO;

	.align 1;
.epcabbrev:
	.type .epcabbrev,STT_OBJECT;
	.inc/binary ".\Release\Pll.sbn", 0, 192;
.epcabbrev.end:

	.section .debug_info SHT_DEBUGINFO;

	.align 1;
.epcdebug:
	.type .epcdebug,STT_OBJECT;
	.byte =
		0x4E,0x07,0x00,0x00,0x02,0x00;
	.byte4 = .epcabbrev;
	.byte =
		0x04,0x01,0x2E,0x2E,0x5C,0x42,0x46,0x63,0x6F,0x6D,0x5C,0x50,
		0x6C,0x6C,0x2E,0x63,0x00,0x01;
	.byte4 = .epcline;
	.inc/binary ".\Release\Pll.sbn", 192, 1794;
	.byte4 = .LN_CPUAccel;
	.byte4 = .LN._CPUAccel.end;
	.byte =
		0x01,0x01,0x00,0x0E,0x00,0x00,0x00,0x00;
	.byte4 = .LN0;
	.byte4 = .LN._CPUAccel.end;
	.byte =
		0x00,0x00,0x0F,0x70,0x70,0x70,0x00,0x01,0xEA,0x01,0x00,0x00,
		0x05,0x03;
	.byte4 = _ppp;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00;
.epcdebug.end:

	.section .debug_line SHT_DEBUGINFO;

	.align 1;
.epcline:
	.type .epcline,STT_OBJECT;
	.inc/binary ".\Release\Pll.sbn", 1986, 569;
	.byte4 = .LN_CPUAccel;
	.byte =
		0x04,0x01,0x05,0x04,0x3C,0x00,0x05,0x02;
	.byte4 = .LN0;
	.byte =
		0x0C,0x00,0x05,0x02;
	.byte4 = .LN._CPUAccel.end;
	.byte =
		0x00,0x01,0x01;
.epcline.end:

	.section .debug_pubnames SHT_DEBUGINFO;

	.align 1;
.epcpubnames:
	.type .epcpubnames,STT_OBJECT;
	.byte =
		0x23,0x00,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.byte =
		0x52,0x07,0x00,0x00,0x13,0x07,0x00,0x00,0x43,0x50,0x55,0x41,
		0x63,0x63,0x65,0x6C,0x00,0x3C,0x07,0x00,0x00,0x70,0x70,0x70,
		0x00,0x00,0x00,0x00,0x00;
.epcpubnames.end:

	.section .debug_aranges SHT_DEBUGINFO;

	.align 1;
.epcaranges:
	.type .epcaranges,STT_OBJECT;
	.byte =
		0x1C,0x00,0x00,0x00,0x02,0x00;
	.byte4 = .epcdebug;
	.byte =
		0x04,0x00,0x00,0x00,0x00,0x00;
	.byte4 = .LN_CPUAccel;
	.byte4 = .LN._CPUAccel.end-.LN_CPUAccel;
	.byte =
		0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
.epcaranges.end:
