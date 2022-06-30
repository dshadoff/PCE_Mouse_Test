; Small C HuC6280 (v0.2, 08/Nov/97)
;
; Taken to HuC (22/Feb/00)
;
;
; This file generated by HuC (v3.21, 2005/04/09, Denki release)
; on Wed Jun 29 20:43:28 2022
;

HUC	= 1
;#include "huc.h"

	.include "startup.asm"
	.data
	.bank DATA_BANK

	.code

;#include "huc.h"
;/*
; * backup ram defines
; */
;#define  BM_OK             0
;#define  BM_NOT_FOUND      1
;#define  BM_BAD_CHECKSUM   2
;#define  BM_DIR_CORRUPTED  3
;#define  BM_FILE_EMPTY     4
;#define  BM_FULL           5
;#define  BM_NOT_FORMATED   0xFF
;#define  BRAM_STARTPTR     0x8010
;/*
; * sprite defines
; */
;#define  FLIP_X_MASK 0x08
;#define  FLIP_Y_MASK 0x80
;#define  FLIP_MAS   0x88
;#define  SIZE_MAS   0x31
;#define  NO_FLIP    0x00
;#define  NO_FLIP_X  0x00
;#define  NO_FLIP_Y  0x00
;#define  FLIP_X     0x08
;#define  FLIP_Y     0x80
;#define  SZ_16x16   0x00
;#define  SZ_16x32   0x10
;#define  SZ_16x64   0x30
;#define  SZ_32x16   0x01
;#define  SZ_32x32   0x11
;#define  SZ_32x64   0x31
;/*
; * joypad defines
; */
;#define	JOY_A		0x01
;#define	JOY_B		0x02
;#define	JOY_SLCT	0x04
;#define	JOY_STRT	0x08
;#define	JOY_UP		0x10
;#define	JOY_RGHT	0x20
;#define	JOY_DOWN	0x40
;#define	JOY_LEFT	0x80
;#define	JOY_C		0x0100
;#define	JOY_D		0x0200
;#define	JOY_E		0x0400
;#define	JOY_F		0x0800
;#define JOY_SIXBUT	0x5000
;/*
; * screen defines
; */
;#define	SCR_SIZE_32x32	0
;#define	SCR_SIZE_64x32	1
;#define	SCR_SIZE_128x32	3
;#define	SCR_SIZE_32x64	4
;#define	SCR_SIZE_64x64	5
;#define	SCR_SIZE_128x64	7
;#define	XRES_SHARP	0
;#define	XRES_SOFT	4
;/*
; * CD defines
; */
;#define	CDPLAY_MUTE		0
;#define	CDPLAY_REPEAT		1
;#define	CDPLAY_NORMAL		2
;#define	CDPLAY_ENDOFDISC	0
;#define	CDFADE_CANCEL	0
;#define	CDFADE_PCM6	8
;#define	CDFADE_ADPCM6	10
;#define	CDFADE_PCM2	12
;#define	CDFADE_ADPCM2	14
;#define CDTRK_AUDIO	0
;#define CDTRK_DATA	4
;/*
; * ADPCM defines
; */
;#define	ADPLAY_AUTOSTOP		0
;#define	ADPLAY_REPEAT		0x80
;#define ADPLAY_FREQ_16KHZ	0xE
;#define ADPLAY_FREQ_10KHZ	0xD
;#define ADPLAY_FREQ_8KHZ	0xC
;#define ADPLAY_FREQ_6KHZ	0xB
;#define ADPLAY_FREQ_5KHZ	0xA
;#define ADREAD_RAM	0
;#define ADREAD_VRAM	0xFF
;#define ADWRITE_RAM	0
;#define ADWRITE_VRAM	0xFF
;main()
	.proc _main
;{
;   static int abs_x, abs_y;
	.bss
	.bss
LL2:		.ds	2
	.bss
LL3:		.ds	2
;   abs_x = 0;
	.code
	__ldwi	0
	__stw	LL2
;   abs_y = 0;
	__ldwi	0
	__stw	LL3
;   set_color(0,0);
	__ldwi	0
	__stw	_color_reg
	__ldwi	0
	__stw	_color_data
;   set_color(1,511);
	__ldwi	1
	__stw	_color_reg
	__ldwi	511
	__stw	_color_data
;   for (;;)
LL4:

LL5:

LL6:

;   {
;     put_string("joy 0:", 2, 2); 
	__ldwi	LL0+0
	__phw	3,3
	__ldwi	2
	__phb	1
	__ldwi	2
	  call	_put_string.3
;     put_hex(joy(0), 4, 9, 2);
	__ldwi	0
	  call	_joy
	__phw	4,4
	__ldwi	4
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	2
	  call	_put_hex.4
;     put_string("joy 1:", 2, 3); 
	__ldwi	LL0+7
	__phw	3,3
	__ldwi	2
	__phb	1
	__ldwi	3
	  call	_put_string.3
;     put_hex(joy(1), 4, 9, 3);
	__ldwi	1
	  call	_joy
	__phw	4,4
	__ldwi	4
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	3
	  call	_put_hex.4
;     put_string("joy 2:", 2, 4); 
	__ldwi	LL0+14
	__phw	3,3
	__ldwi	2
	__phb	1
	__ldwi	4
	  call	_put_string.3
;     put_hex(joy(2), 4, 9, 4);
	__ldwi	2
	  call	_joy
	__phw	4,4
	__ldwi	4
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	4
	  call	_put_hex.4
;     put_string("joy 3:", 2, 5); 
	__ldwi	LL0+21
	__phw	3,3
	__ldwi	2
	__phb	1
	__ldwi	5
	  call	_put_string.3
;     put_hex(joy(3), 4, 9, 5);
	__ldwi	3
	  call	_joy
	__phw	4,4
	__ldwi	4
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	5
	  call	_put_hex.4
;     put_string("joy 4:", 2, 6); 
	__ldwi	LL0+28
	__phw	3,3
	__ldwi	2
	__phb	1
	__ldwi	6
	  call	_put_string.3
;     put_hex(joy(4), 4, 9, 6);
	__ldwi	4
	  call	_joy
	__phw	4,4
	__ldwi	4
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	6
	  call	_put_hex.4
;     put_string("mouse:", 2, 8); 
	__ldwi	LL0+35
	__phw	3,3
	__ldwi	2
	__phb	1
	__ldwi	8
	  call	_put_string.3
;     put_hex(mouse_exists(), 2, 9, 8);
	  call	_mouse_exists
	__phw	4,4
	__ldwi	2
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	8
	  call	_put_hex.4
;     put_string("x:", 6, 9); 
	__ldwi	LL0+42
	__phw	3,3
	__ldwi	6
	__phb	1
	__ldwi	9
	  call	_put_string.3
;     put_hex(mouse_x(), 2, 9, 9);
	  call	_mouse_x
	__phw	4,4
	__ldwi	2
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	9
	  call	_put_hex.4
;     put_string("y:", 6, 10); 
	__ldwi	LL0+45
	__phw	3,3
	__ldwi	6
	__phb	1
	__ldwi	10
	  call	_put_string.3
;     put_hex(mouse_y(), 2, 9, 10);
	  call	_mouse_y
	__phw	4,4
	__ldwi	2
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	10
	  call	_put_hex.4
;     abs_x -= mouse_x();
	__ldw	LL2
	__pushw
	  call	_mouse_x
	__subws
	__stw	LL2
;     abs_y -= mouse_y();
	__ldw	LL3
	__pushw
	  call	_mouse_y
	__subws
	__stw	LL3
;     put_string("abs x:", 2, 12); 
	__ldwi	LL0+48
	__phw	3,3
	__ldwi	2
	__phb	1
	__ldwi	12
	  call	_put_string.3
;     put_hex(abs_x, 4, 9, 12);
	__ldw	LL2
	__phw	4,4
	__ldwi	4
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	12
	  call	_put_hex.4
;     put_string("abs y:", 2, 13); 
	__ldwi	LL0+55
	__phw	3,3
	__ldwi	2
	__phb	1
	__ldwi	13
	  call	_put_string.3
;     put_hex(abs_y, 4, 9, 13);
	__ldw	LL3
	__phw	4,4
	__ldwi	4
	__phb	2
	__ldwi	9
	__phb	1
	__ldwi	13
	  call	_put_hex.4
;     if (joytrg(0) & JOY_A) {
	__ldwi	0
	  call	_joytrg
	__andwi	1
	__tstw
	__lbeq	LL8
;        if (mouse_exists()) {
	  call	_mouse_exists
	__tstw
	__lbeq	LL9
;           mouse_disable();
	  call	_mouse_disable
;	}
;	else {
	__lbra	LL10
LL9:

;           mouse_enable();
	  call	_mouse_enable
;	}
LL10:

;     }
;     vsync(0);
LL8:

	__ldwi	0
	  ldy	#1
	  call	_vsync
;   }
	__lbra	LL6
LL7:

;   return;
	__lbra	LL1
;}
LL1:

	  rts
	.endp

	.data
	.bank CONST_BANK
	.org $4000
LL0:
	.db	106,111,121,32,48,58,0,106
	.db	111,121,32,49,58,0,106,111
	.db	121,32,50,58,0,106,111,121
	.db	32,51,58,0,106,111,121,32
	.db	52,58,0,109,111,117,115,101
	.db	58,0,120,58,0,121,58,0
	.db	97,98,115,32,120,58,0,97
	.db	98,115,32,121,58,0

	.bss
__arg:

;0 error(s) in compilation
;	literal pool:62
;	constant pool:0
;	global pool:544
;	Macro pool:1065
