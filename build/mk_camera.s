#NO_APP
	.text
	.even
	.globl	__Z10cameraInitiiiij
__Z10cameraInitiiiij:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%d0
	move.l 16(%fp),%d1
	move.l 24(%fp),%a2
	clr.w _xOffset
	tst.l 8(%fp)
	seq %d2
	ext.w %d2
	move.w #49,%a0
	sub.w %d2,%a0
	move.l %a0,_backgroundSpriteIndex
	move.w %d0,%a3
	move.w %d0,_cameraX
	move.w %d1,%d2
	move.w %d1,_cameraY
	move.w %d0,_targetCameraX
	move.w 22(%fp),_cameraXMax
	move.l %a2,_backgroundGfxBase
	jsr __Z14stageGetHeightv
	move.l %a2,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d2,%a0
	move.l %a0,-(%sp)
	move.w %a3,%a3
	move.l %a3,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	lea __Z8setFramejssssfj,%a3
	jsr (%a3)
	lea (28,%sp),%sp
	lea __Z8stageGetv,%a2
	jsr (%a2)
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L5
	jsr (%a2)
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L5
.L6:
	jsr (%a2)
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L8
	jsr __Z8stageGetv
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L8
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w _xOffset,8(%a0,%d0.l)
	move.w raptor_ticks,_cameraTicks
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L5:
	tst.l _pitSpikesGfxBase
	jne .L6
	move.l sprite,%a0
	move.l 14252(%a0),%d0
	move.l %d0,_pitSpikesGfxBase
	move.l %d0,-(%sp)
	move.l #0x3f800000,-(%sp)
	clr.l -(%sp)
	move.w _cameraX,%a0
	move.l %a0,-(%sp)
	pea 58.w
	pea 352.w
	pea 74.w
	jsr (%a3)
	lea (28,%sp),%sp
.L13:
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w _xOffset,8(%a0,%d0.l)
	move.w raptor_ticks,_cameraTicks
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L8:
	move.l _pitSpikesGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	clr.l -(%sp)
	move.w _cameraX,%a0
	move.l %a0,-(%sp)
	pea 58.w
	pea 352.w
	pea 74.w
	jsr (%a3)
	lea (28,%sp),%sp
	jra .L13
	.even
	.globl	__Z12cameraUpdateP7FighterS0_
__Z12cameraUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #12348,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 254(%a0),%a3
	move.w _cameraX,%d1
	move.w %d1,%a2
	move.w _xOffset,%d0
	add.w %a2,%d0
	move.w %a3,%d2
	sub.w %d0,%d2
	move.w %d2,244(%a0)
	move.w 254(%a1),%a4
	move.w %a4,%d2
	sub.w %d0,%d2
	move.w %d2,244(%a1)
	move.w 252(%a0),%d2
	sub.w %d0,%d2
	move.w %d2,248(%a0)
	move.w 252(%a1),%d2
	sub.w %d0,%d2
	move.w %d2,248(%a1)
	move.w 244(%a0),%d0
	jle .L61
	move.w %d0,244(%a0)
	move.w 244(%a1),%d0
	jle .L62
.L17:
	move.w %d0,244(%a1)
	move.w 248(%a0),%d0
	jle .L63
.L18:
	move.w %d0,248(%a0)
	move.w 248(%a1),%d0
	jle .L64
.L19:
	move.w %d0,248(%a1)
	move.w raptor_ticks,%d0
	ext.l %d0
	move.w _cameraTicks,%a5
	addq.l #1,%a5
	cmp.l %d0,%a5
	jge .L15
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L65
.L21:
	move.w 268(%a1),%d2
	cmp.w #1,%d2
	jeq .L66
.L23:
	cmp.w #-1,%d0
	jeq .L67
.L24:
	cmp.w #-1,%d2
	jeq .L25
.L56:
	move.w _targetCameraX,%a3
.L22:
	cmp.w %a3,%d1
	jge .L27
	move.w #1,_panDirection
	move.w %a3,%a5
	move.w _xStep,%d0
	move.w %d0,%a4
	move.l %a5,%a3
	sub.l %a2,%a3
	cmp.l %a3,%a4
	jle .L52
.L50:
	move.w %d1,_targetCameraX
.L30:
	tst.b _isScrollingPit
	jne .L31
	move.w raptor_ticks,_cameraTicks
.L15:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L64:
	moveq #1,%d0
	jra .L19
.L62:
	moveq #1,%d0
	move.w %d0,244(%a1)
	move.w 248(%a0),%d0
	jgt .L18
	jra .L63
.L61:
	moveq #1,%d0
	move.w %d0,244(%a0)
	move.w 244(%a1),%d0
	jgt .L17
	jra .L62
.L63:
	moveq #1,%d0
	move.w %d0,248(%a0)
	move.w 248(%a1),%d0
	jgt .L19
	jra .L64
.L27:
	move.w #-1,_panDirection
	move.w %a3,%a5
	move.w _xStep,%d0
	move.w %d0,%a4
	move.l %a2,%d2
	sub.l %a5,%d2
	cmp.l %d2,%a4
	jgt .L50
	cmp.w %a3,%d1
	jeq .L30
	moveq #-1,%d3
	moveq #-1,%d2
	tst.b _isScrollingPit
	jeq .L68
.L31:
	move.l sprite,%a3
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a3,%d1.l),%a4
	move.w 12(%a4),%d1
	jle .L44
	move.l 298(%a0),%a5
	cmp.w #83,(%a5)
	jeq .L69
	move.l 298(%a1),%a0
	cmp.w #83,(%a0)
	jeq .L70
	subq.w #8,%d1
	move.w %d1,12(%a4)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
.L59:
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	pea 240.w
	pea 352.w
	move.l %d0,-(%sp)
	jsr __Z8setFramejssssfj
	lea (28,%sp),%sp
.L75:
	move.w raptor_ticks,_cameraTicks
	jra .L15
.L68:
	muls.w %d3,%d0
	add.w %d1,%d0
	move.w %d0,_cameraX
	cmp.w #1,%d2
	jeq .L71
	cmp.w #-1,%d2
	jeq .L39
.L58:
	move.w %d0,%a4
	move.l _backgroundGfxBase,%a3
	move.w _cameraY,%a2
	jsr __Z14stageGetHeightv
	move.l %a3,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 320.w
	move.l _backgroundSpriteIndex,-(%sp)
	lea __Z8setFramejssssfj,%a3
	jsr (%a3)
	lea (28,%sp),%sp
	lea __Z8stageGetv,%a2
	jsr (%a2)
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L41
.L72:
	jsr (%a2)
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L41
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w _xOffset,8(%a0,%d0.l)
	jsr __Z19stagePositionAssetsv
.L76:
	move.w raptor_ticks,_cameraTicks
	jra .L15
.L65:
	move.w %a3,%a5
	lea (-15,%a5),%a5
	cmp.l %a5,%a2
	jlt .L21
	lea (-16,%a3),%a3
	move.w %a3,_targetCameraX
	jra .L22
.L52:
	moveq #1,%d3
	moveq #1,%d2
	tst.b _isScrollingPit
	jne .L31
	jra .L68
.L66:
	move.w %a4,%a5
	lea (-15,%a5),%a5
	cmp.l %a5,%a2
	jlt .L23
	move.w %a4,%a3
	lea (-16,%a3),%a3
	move.w %a3,_targetCameraX
	jra .L22
.L67:
	move.w %a3,%d0
	ext.l %d0
	lea (284,%a2),%a5
	cmp.l %d0,%a5
	jge .L24
	lea (-284,%a3),%a3
	move.w %a3,_targetCameraX
	jra .L22
.L25:
	move.w %a4,%a5
	lea (284,%a2),%a3
	cmp.l %a5,%a3
	jge .L56
	move.w %a4,%a3
	lea (-284,%a3),%a3
	move.w %a3,_targetCameraX
	jra .L22
.L71:
	cmp.w #716,%d0
	jle .L58
	move.w #-1,_panDirection
	move.w #716,_cameraX
	move.w #716,%a4
	move.l _backgroundGfxBase,%a3
	move.w _cameraY,%a2
	jsr __Z14stageGetHeightv
	move.l %a3,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 320.w
	move.l _backgroundSpriteIndex,-(%sp)
	lea __Z8setFramejssssfj,%a3
	jsr (%a3)
	lea (28,%sp),%sp
	lea __Z8stageGetv,%a2
	jsr (%a2)
	moveq #3,%d1
	cmp.l %d0,%d1
	jne .L72
	jra .L41
.L39:
	cmp.w #15,%d0
	jgt .L58
	move.w #1,_panDirection
	move.w #16,_cameraX
	move.w #16,%a4
	move.l _backgroundGfxBase,%a3
	move.w _cameraY,%a2
	jsr __Z14stageGetHeightv
	move.l %a3,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 320.w
	move.l _backgroundSpriteIndex,-(%sp)
	lea __Z8setFramejssssfj,%a3
	jsr (%a3)
	lea (28,%sp),%sp
	lea __Z8stageGetv,%a2
	jsr (%a2)
	moveq #3,%d1
	cmp.l %d0,%d1
	jne .L72
	jra .L41
.L44:
	move.w _cameraY,%d1
	cmp.w #399,%d1
	jgt .L47
	move.l 298(%a0),%a4
	cmp.w #83,(%a4)
	jeq .L73
	move.l 298(%a1),%a0
	cmp.w #83,(%a0)
	jeq .L74
	addq.w #8,%d1
	move.w %d1,_cameraY
	moveq #1,%d2
	move.l %d2,14212(%a3)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d1,%a0
.L77:
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	pea 240.w
	pea 352.w
	move.l %d0,-(%sp)
	jsr __Z8setFramejssssfj
	lea (28,%sp),%sp
	jra .L75
.L41:
	move.l _pitSpikesGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	clr.l -(%sp)
	move.w _cameraX,%a0
	move.l %a0,-(%sp)
	pea 58.w
	pea 320.w
	pea 74.w
	jsr (%a3)
	lea (28,%sp),%sp
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w _xOffset,8(%a0,%d0.l)
	jsr __Z19stagePositionAssetsv
	jra .L76
.L70:
	move.w #8,288(%a1)
	subq.w #8,%d1
	move.w %d1,12(%a4)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
	jra .L59
.L47:
	clr.b _isScrollingPit
	move.w raptor_ticks,_cameraTicks
	jra .L15
.L74:
	move.w #8,288(%a1)
	addq.w #8,%d1
	move.w %d1,_cameraY
	moveq #1,%d2
	move.l %d2,14212(%a3)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d1,%a0
	jra .L77
.L69:
	move.w #8,288(%a0)
	subq.w #8,%d1
	move.w %d1,12(%a4)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
	jra .L59
.L73:
	move.w #8,288(%a0)
	addq.w #8,%d1
	move.w %d1,_cameraY
	moveq #1,%d2
	move.l %d2,14212(%a3)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d1,%a0
	jra .L77
	.even
	.globl	__Z21cameraCheckBoundsLeftP7FighterS0_
__Z21cameraCheckBoundsLeftP7FighterS0_:
	link.w %fp,#0
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z22cameraCheckBoundsRightP7FighterS0_
__Z22cameraCheckBoundsRightP7FighterS0_:
	link.w %fp,#0
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z13cameraCanMovev
__Z13cameraCanMovev:
	link.w %fp,#0
	move.w _cameraX,%d0
	cmp.w #10,%d0
	jle .L83
	cmp.w _cameraXMax.l,%d0
	slt %d0
	neg.b %d0
	unlk %fp
	rts
.L83:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z18cameraIsAtLeftWallv
__Z18cameraIsAtLeftWallv:
	link.w %fp,#0
	cmp.w #10,_cameraX.l
	sle %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z19cameraIsAtRightWallv
__Z19cameraIsAtRightWallv:
	link.w %fp,#0
	move.w _cameraXMax,%d0
	cmp.w _cameraX.l,%d0
	sle %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z10cameraGetXv
__Z10cameraGetXv:
	link.w %fp,#0
	move.w _cameraX,%a1
	move.w _xOffset,%a0
	move.l %a1,%d0
	add.l %a0,%d0
	unlk %fp
	rts
	.even
	.globl	__Z10cameraGetYv
__Z10cameraGetYv:
	link.w %fp,#0
	move.w _cameraY,%d0
	ext.l %d0
	unlk %fp
	rts
	.even
	.globl	__Z17cameraGetParalaxXv
__Z17cameraGetParalaxXv:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.w _cameraX,%d1
	move.w %d1,%d0
	moveq #15,%d2
	lsr.w %d2,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	move.w _xOffset,%a0
	lea (%a0,%d0.w),%a0
	move.l %a0,%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.even
	.globl	__Z15cameraGetOffsetv
__Z15cameraGetOffsetv:
	link.w %fp,#0
	move.w _xOffset,%d0
	ext.l %d0
	unlk %fp
	rts
	.even
	.globl	__Z16cameraResetTicksv
__Z16cameraResetTicksv:
	link.w %fp,#0
	move.w raptor_ticks,_cameraTicks
	unlk %fp
	rts
	.even
	.globl	__Z28cameraFighterIsAtBoundsRightP7Fighteri
__Z28cameraFighterIsAtBoundsRightP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w 254(%a0),%a0
	lea (48,%a0),%a0
	add.l 12(%fp),%a0
	cmp.w #715,%a0
	sgt %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z27cameraFighterIsAtBoundsLeftP7Fighteri
__Z27cameraFighterIsAtBoundsLeftP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w 254(%a0),%a0
	moveq #64,%d0
	add.l 12(%fp),%d0
	cmp.l %a0,%d0
	sge %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z15cameraScrollPitv
__Z15cameraScrollPitv:
	link.w %fp,#0
	move.b #1,_isScrollingPit
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.l #240,32(%a0,%d0.l)
	unlk %fp
	rts
	.even
	.globl	__Z20cameraIsScrollingPitv
__Z20cameraIsScrollingPitv:
	link.w %fp,#0
	move.b _isScrollingPit,%d0
	unlk %fp
	rts
	.globl	_xStep
	.data
	.even
_xStep:
	.word	8
	.globl	_isScrollingPit
	.bss
_isScrollingPit:
	.skip 1
	.globl	_targetCameraX
	.even
_targetCameraX:
	.skip 2
	.globl	_pitSpikesGfxBase
	.even
_pitSpikesGfxBase:
	.skip 4
	.globl	_backgroundGfxBase
	.even
_backgroundGfxBase:
	.skip 4
	.globl	_backgroundSpriteIndex
	.even
_backgroundSpriteIndex:
	.skip 4
	.globl	_panDirection
	.data
	.even
_panDirection:
	.word	1
	.globl	_movingCamera
	.bss
_movingCamera:
	.skip 1
	.globl	_xOffset
	.even
_xOffset:
	.skip 2
	.globl	_backgroundChangedRight
_backgroundChangedRight:
	.skip 1
	.globl	_backgroundChangedLeft
_backgroundChangedLeft:
	.skip 1
	.globl	_cameraXMax
	.data
	.even
_cameraXMax:
	.word	400
	.globl	_cameraY
	.bss
	.even
_cameraY:
	.skip 2
	.globl	_cameraX
	.even
_cameraX:
	.skip 2
	.globl	_cameraTicks
	.even
_cameraTicks:
	.skip 2
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
