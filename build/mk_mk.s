#NO_APP
	.text
	.even
	.globl	__Z15initTitleScreenv
__Z15initTitleScreenv:
	link.w %fp,#0
	lea __ZL8BLACKPAL,%a0
.L2:
	clr.l (%a0)+
	cmp.l #__ZL8BLACKPAL+512,%a0
	jne .L2
	pea __ZL13buffer320x240
	pea BMP_TITLESCREEN
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL13buffer320x240,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	addq.l #8,%sp
	pea 256.w
	clr.l -(%sp)
	pea __ZL8BLACKPAL
	jsr jsfLoadClut
	clr.b _fadedIn
	clr.b _fadedOut
	move.w raptor_ticks,%a0
	move.l %a0,_gameStartTicks
	move.b #1,_onTitleScreen
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z14initGameAssetsv
__Z14initGameAssetsv:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l sprite,%a0
	move.l #11584352,620(%a0)
	move.l #10011424,812(%a0)
	moveq #1,%d0
	move.l %d0,580(%a0)
	move.l %d0,772(%a0)
	pea 16.w
	pea 14.w
	move.l #12108640,-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	addq.l #8,%sp
	moveq #16,%d0
	move.l %d0,(%sp)
	pea 15.w
	move.l #11060000,-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z25switchScreenChooseFighterv
__Z25switchScreenChooseFighterv:
	link.w %fp,#0
	pea __ZL13buffer320x240
	pea BMP_CHOOSEFIGHTER
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL13buffer320x240,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d0,388(%a0)
	move.l %d0,196(%a0)
	clr.b _onTitleScreen
	move.b #1,_onScreenChooseFighter
	addq.l #8,%sp
	pea 256.w
	clr.l -(%sp)
	pea BMP_CHOOSEFIGHTER_clut
	jsr jsfLoadClut
	clr.b _fadedIn
	clr.b _fadedOut
	move.w raptor_ticks,%a0
	move.l %a0,_gameStartTicks
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z17SetPlayerPalettesv
__Z17SetPlayerPalettesv:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	moveq #6,%d0
	cmp.l _p1Cursor.l,%d0
	jcs .L9
	move.l _p1Cursor,%d0
	add.l %d0,%d0
	move.w .L17(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L17:
	.word .L10-.L17
	.word .L11-.L17
	.word .L12-.L17
	.word .L13-.L17
	.word .L14-.L17
	.word .L15-.L17
	.word .L16-.L17
.L16:
	pea 16.w
	pea 14.w
	move.l #12108688,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d1
	move.l %d1,(%sp)
	pea __ZL15fighterScorpion
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL15fighterScorpion,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #189,392(%a0)
	move.w #116,396(%a0)
	addq.l #4,%sp
.L9:
	move.l _p2Cursor,%d0
	moveq #6,%d1
	cmp.l %d0,%d1
	jcs .L18
	add.l %d0,%d0
	move.w .L26(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L26:
	.word .L19-.L26
	.word .L20-.L26
	.word .L21-.L26
	.word .L22-.L26
	.word .L23-.L26
	.word .L24-.L26
	.word .L25-.L26
.L25:
	pea 16.w
	pea 15.w
	move.l #12108688,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL16fighterScorpion2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL16fighterScorpion2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #189,200(%a0)
	move.w #116,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
.L18:
	cmp.l _p1Cursor.l,%d0
	jeq .L32
.L8:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L32:
	moveq #24,%d2
	lea rapFadeClut,%a2
.L28:
	pea __ZL8BLACKPAL
	pea 16.w
	pea 15.w
	jsr (%a2)
	subq.l #1,%d2
	lea (12,%sp),%sp
	jeq .L8
	pea __ZL8BLACKPAL
	pea 16.w
	pea 15.w
	jsr (%a2)
	subq.l #1,%d2
	lea (12,%sp),%sp
	jne .L28
	jra .L8
.L24:
	pea 16.w
	pea 15.w
	move.l #9487072,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL12fighterKang2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL12fighterKang2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #129,200(%a0)
	move.w #116,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L8
	jra .L32
.L10:
	pea 16.w
	pea 14.w
	move.l #8962752,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d1
	move.l %d1,(%sp)
	pea __ZL11fighterCage
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL11fighterCage,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #7,392(%a0)
	move.w #42,396(%a0)
	addq.l #4,%sp
	jra .L9
.L11:
	pea 16.w
	pea 14.w
	move.l #12108640,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d0
	move.l %d0,(%sp)
	pea __ZL11fighterKano
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL11fighterKano,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #68,392(%a0)
	move.w #42,396(%a0)
	addq.l #4,%sp
	jra .L9
.L12:
	pea 16.w
	pea 14.w
	move.l #11060000,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d2
	move.l %d2,(%sp)
	pea __ZL14fighterSubzero
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL14fighterSubzero,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #189,392(%a0)
	move.w #42,396(%a0)
	addq.l #4,%sp
	jra .L9
.L13:
	pea 16.w
	pea 14.w
	move.l #11584320,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d1
	move.l %d1,(%sp)
	pea __ZL12fighterSonya
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL12fighterSonya,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #250,392(%a0)
	move.w #42,396(%a0)
	addq.l #4,%sp
	jra .L9
.L14:
	pea 16.w
	pea 14.w
	move.l #10011392,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d0
	move.l %d0,(%sp)
	pea __ZL13fighterRaiden
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL13fighterRaiden,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #68,392(%a0)
	move.w #116,396(%a0)
	addq.l #4,%sp
	jra .L9
.L15:
	pea 16.w
	pea 14.w
	move.l #9487072,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d2
	move.l %d2,(%sp)
	pea __ZL11fighterKang
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL11fighterKang,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #129,392(%a0)
	move.w #116,396(%a0)
	addq.l #4,%sp
	jra .L9
.L19:
	pea 16.w
	pea 15.w
	move.l #8962752,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL12fighterCage2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL12fighterCage2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #7,200(%a0)
	move.w #42,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L8
	jra .L32
.L20:
	pea 16.w
	pea 15.w
	move.l #12108640,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL12fighterKano2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL12fighterKano2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #68,200(%a0)
	move.w #42,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L8
	jra .L32
.L21:
	pea 16.w
	pea 15.w
	move.l #11060000,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL15fighterSubzero2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL15fighterSubzero2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #189,200(%a0)
	move.w #42,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L8
	jra .L32
.L22:
	pea 16.w
	pea 15.w
	move.l #11584320,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL13fighterSonya2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL13fighterSonya2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #250,200(%a0)
	move.w #42,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L8
	jra .L32
.L23:
	pea 16.w
	pea 15.w
	move.l #10011392,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL14fighterRaiden2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL14fighterRaiden2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #68,200(%a0)
	move.w #116,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L8
	jra .L32
	.even
	.globl	__Z9basicmainv
__Z9basicmainv:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	clr.l __ZL4pad1
	clr.l __ZL4pad2
	pea 20.w
	pea 5.w
	jsr rapDebugSetXY
	addq.l #8,%sp
	jsr __Z15initTitleScreenv
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
	move.l #rapUnpack,%d3
	lea jsfLoadClut,%a5
	lea jsfGetPadPressed,%a4
	move.l #__Z17SetPlayerPalettesv,%d4
	move.w raptor_ticks,%a0
	move.l %a0,_lastTicks
	tst.b _onTitleScreen
	jeq .L35
.L65:
	tst.b _fadedIn
	jne .L36
	move.b #1,_fadedIn
	moveq #60,%d2
.L37:
	pea BMP_TITLESCREEN_clut
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L37
	tst.b _fadedIn
	jne .L36
.L38:
	clr.l -(%sp)
	jsr (%a2)
	addq.l #4,%sp
.L68:
	move.w raptor_ticks,%a0
	move.l %a0,_lastTicks
	tst.b _onTitleScreen
	jne .L65
.L35:
	tst.b _onScreenChooseFighter
	jeq .L38
	pea 1.w
	jsr (%a4)
	move.l %d0,__ZL4pad1
	moveq #2,%d2
	move.l %d2,(%sp)
	jsr (%a4)
	move.l %d0,__ZL4pad2
	move.l __ZL4pad1,%d2
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d5
	and.l %d2,%d5
	addq.l #4,%sp
	jeq .L40
	move.l _p1Cursor,%d0
	subq.l #1,%d0
	move.l %d0,_p1Cursor
	jlt .L66
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L61
.L42:
	move.l %d4,%a0
	jsr (%a0)
	move.l __ZL4pad2,%d0
	move.l JAGPAD_LEFT,%d1
.L47:
	and.l %d0,%d1
	jeq .L49
	move.l _p2Cursor,%d0
	subq.l #1,%d0
	move.l %d0,_p2Cursor
	jlt .L67
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L63
.L51:
	move.l %d4,%a0
	jsr (%a0)
.L69:
	clr.l -(%sp)
	jsr (%a2)
	addq.l #4,%sp
	jra .L68
.L45:
	and.l JAGPAD_DOWN,%d2
	jeq .L47
	move.l _p1Cursor,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L60
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L42
.L61:
	moveq #6,%d0
	move.l %d0,_p1Cursor
	move.l %d4,%a0
	jsr (%a0)
	move.l __ZL4pad2,%d0
	move.l JAGPAD_LEFT,%d1
	jra .L47
.L54:
	and.l JAGPAD_DOWN,%d0
	jeq .L38
	move.l _p2Cursor,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L62
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L51
.L63:
	moveq #6,%d0
	move.l %d0,_p2Cursor
	move.l %d4,%a0
	jsr (%a0)
	jra .L69
.L36:
	tst.b _fadedOut
	jne .L38
	move.w raptor_ticks,%a0
	move.l _gameStartTicks,%d0
	add.l #240,%d0
	cmp.l %a0,%d0
	jge .L38
	moveq #90,%d2
.L39:
	pea __ZL8BLACKPAL
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L39
	move.b #1,_fadedOut
	pea __ZL13buffer320x240
	pea BMP_CHOOSEFIGHTER
	move.l %d3,%a0
	jsr (%a0)
	move.l sprite,%a0
	move.l #__ZL13buffer320x240,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d0,388(%a0)
	move.l %d0,196(%a0)
	clr.b _onTitleScreen
	move.b #1,_onScreenChooseFighter
	addq.l #8,%sp
	pea 256.w
	clr.l -(%sp)
	pea BMP_CHOOSEFIGHTER_clut
	jsr (%a5)
	clr.b _fadedIn
	clr.b _fadedOut
	move.w raptor_ticks,%a0
	move.l %a0,_gameStartTicks
	lea (12,%sp),%sp
	clr.l -(%sp)
	jsr (%a2)
	addq.l #4,%sp
	jra .L68
.L40:
	move.l %d2,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L43
	move.l _p1Cursor,%d0
	addq.l #1,%d0
	move.l %d0,_p1Cursor
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L70
	moveq #7,%d1
	cmp.l %d0,%d1
	jne .L42
.L60:
	moveq #4,%d0
	move.l %d0,_p1Cursor
	jra .L42
.L49:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L52
	move.l _p2Cursor,%d0
	addq.l #1,%d0
	move.l %d0,_p2Cursor
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L71
	moveq #7,%d1
	cmp.l %d0,%d1
	jne .L51
.L62:
	moveq #4,%d0
	move.l %d0,_p2Cursor
	jra .L51
.L52:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jeq .L54
	move.l _p2Cursor,%d0
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L72
	moveq #6,%d1
	cmp.l %d0,%d1
	jne .L51
	moveq #2,%d0
	move.l %d0,_p2Cursor
	jra .L51
.L43:
	move.l %d2,%d5
	and.l JAGPAD_UP,%d5
	jeq .L45
	move.l _p1Cursor,%d0
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L73
	moveq #6,%d1
	cmp.l %d0,%d1
	jne .L42
	moveq #2,%d0
	move.l %d0,_p1Cursor
	jra .L42
.L67:
	moveq #3,%d0
	move.l %d0,_p2Cursor
	jra .L51
.L66:
	moveq #3,%d0
	move.l %d0,_p1Cursor
	jra .L42
.L71:
	clr.l _p2Cursor
	jra .L51
.L70:
	clr.l _p1Cursor
	jra .L42
.L73:
	moveq #1,%d0
	move.l %d0,_p1Cursor
	jra .L42
.L72:
	moveq #1,%d0
	move.l %d0,_p2Cursor
	jra .L51
	.even
__GLOBAL__sub_I_sprite:
	link.w %fp,#0
	move.w raptor_ticks,%a0
	move.l %a0,_gameStartTicks
	unlk %fp
	rts
	.stabs	"___CTOR_LIST__",22,0,0,__GLOBAL__sub_I_sprite
	.globl	_lastTicks
	.bss
	.even
_lastTicks:
	.skip 4
	.globl	_ticksPerSec
	.data
	.even
_ticksPerSec:
	.long	60
	.globl	_gameStartTicks
	.bss
	.even
_gameStartTicks:
	.skip 4
	.globl	_fadedOut
_fadedOut:
	.skip 1
	.globl	_fadedIn
_fadedIn:
	.skip 1
	.globl	_onScreenChooseFighter
_onScreenChooseFighter:
	.skip 1
	.globl	_onTitleScreen
	.data
_onTitleScreen:
	.byte	1
	.globl	_p2Cursor
	.even
_p2Cursor:
	.long	2
	.globl	_p1Cursor
	.even
_p1Cursor:
	.long	1
	.globl	colliders
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
.lcomm __ZL4pad1,4
.lcomm __ZL4pad2,4
.lcomm __ZL8BLACKPAL,512
.lcomm __ZL13buffer320x240,76800
	.even
__ZL11fighterCage:
	.long	1
	.long	3
	.long	8438464
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	6
	.long	6
	.long	6
	.skip 252
	.even
__ZL11fighterKano:
	.long	2
	.long	3
	.long	11584352
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL14fighterSubzero:
	.long	6
	.long	3
	.long	10011424
	.long	12
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL12fighterSonya:
	.long	7
	.long	3
	.long	11060032
	.long	7
	.long	7
	.long	4
	.long	7
	.long	2
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	7
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL13fighterRaiden:
	.long	3
	.long	3
	.long	9487104
	.long	10
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL11fighterKang:
	.long	4
	.long	3
	.long	8962784
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL15fighterScorpion:
	.long	5
	.long	3
	.long	10011424
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL12fighterCage2:
	.long	1
	.long	4
	.long	8438464
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	6
	.long	6
	.long	6
	.skip 252
	.even
__ZL12fighterKano2:
	.long	2
	.long	4
	.long	11584352
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL15fighterSubzero2:
	.long	6
	.long	4
	.long	10011424
	.long	12
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL13fighterSonya2:
	.long	7
	.long	4
	.long	11060032
	.long	7
	.long	7
	.long	4
	.long	7
	.long	2
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	7
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL14fighterRaiden2:
	.long	3
	.long	4
	.long	9487104
	.long	10
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL12fighterKang2:
	.long	4
	.long	4
	.long	8962784
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL16fighterScorpion2:
	.long	5
	.long	4
	.long	10011424
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
