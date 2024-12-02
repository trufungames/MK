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
	move.w 252(%a0),%a3
	move.w _cameraX,%d1
	move.w %d1,%a2
	move.w _xOffset,%d0
	add.w %a2,%d0
	move.w %a3,%d2
	sub.w %d0,%d2
	move.w %d2,242(%a0)
	move.w 252(%a1),%a4
	move.w %a4,%d2
	sub.w %d0,%d2
	move.w %d2,242(%a1)
	move.w 250(%a0),%d2
	sub.w %d0,%d2
	move.w %d2,246(%a0)
	move.w 250(%a1),%d2
	sub.w %d0,%d2
	move.w %d2,246(%a1)
	move.w raptor_ticks,%d0
	ext.l %d0
	move.w _cameraTicks,%a5
	addq.l #1,%a5
	cmp.l %d0,%a5
	jge .L15
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L57
.L17:
	move.w 266(%a1),%d2
	cmp.w #1,%d2
	jeq .L58
.L19:
	cmp.w #-1,%d0
	jeq .L59
.L20:
	cmp.w #-1,%d2
	jeq .L21
.L52:
	move.w _targetCameraX,%a3
.L18:
	cmp.w %a3,%d1
	jge .L23
	move.w #1,_panDirection
	move.w %a3,%a5
	move.w _xStep,%d0
	move.w %d0,%a4
	move.l %a5,%a3
	sub.l %a2,%a3
	cmp.l %a3,%a4
	jle .L48
.L46:
	move.w %d1,_targetCameraX
.L26:
	tst.b _isScrollingPit
	jne .L27
	move.w raptor_ticks,_cameraTicks
.L15:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L23:
	move.w #-1,_panDirection
	move.w %a3,%a5
	move.w _xStep,%d0
	move.w %d0,%a4
	move.l %a2,%d2
	sub.l %a5,%d2
	cmp.l %d2,%a4
	jgt .L46
	cmp.w %a3,%d1
	jeq .L26
	moveq #-1,%d3
	moveq #-1,%d2
	tst.b _isScrollingPit
	jeq .L60
.L27:
	move.l sprite,%a3
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a3,%d1.l),%a4
	move.w 12(%a4),%d1
	jle .L40
	move.l 296(%a0),%a5
	cmp.w #83,(%a5)
	jeq .L61
	move.l 296(%a1),%a0
	cmp.w #83,(%a0)
	jeq .L62
	subq.w #8,%d1
	move.w %d1,12(%a4)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
.L55:
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	pea 240.w
	pea 352.w
	move.l %d0,-(%sp)
	jsr __Z8setFramejssssfj
	lea (28,%sp),%sp
.L67:
	move.w raptor_ticks,_cameraTicks
	jra .L15
.L60:
	muls.w %d3,%d0
	add.w %d1,%d0
	move.w %d0,_cameraX
	cmp.w #1,%d2
	jeq .L63
	cmp.w #-1,%d2
	jeq .L35
.L54:
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
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	lea __Z8setFramejssssfj,%a3
	jsr (%a3)
	lea (28,%sp),%sp
	lea __Z8stageGetv,%a2
	jsr (%a2)
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L37
.L64:
	jsr (%a2)
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L37
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w _xOffset,8(%a0,%d0.l)
	jsr __Z19stagePositionAssetsv
.L68:
	move.w raptor_ticks,_cameraTicks
	jra .L15
.L57:
	move.w %a3,%a5
	lea (-15,%a5),%a5
	cmp.l %a5,%a2
	jlt .L17
	lea (-16,%a3),%a3
	move.w %a3,_targetCameraX
	jra .L18
.L48:
	moveq #1,%d3
	moveq #1,%d2
	tst.b _isScrollingPit
	jne .L27
	jra .L60
.L58:
	move.w %a4,%a5
	lea (-15,%a5),%a5
	cmp.l %a5,%a2
	jlt .L19
	move.w %a4,%a3
	lea (-16,%a3),%a3
	move.w %a3,_targetCameraX
	jra .L18
.L59:
	move.w %a3,%d0
	ext.l %d0
	lea (284,%a2),%a5
	cmp.l %d0,%a5
	jge .L20
	lea (-284,%a3),%a3
	move.w %a3,_targetCameraX
	jra .L18
.L21:
	move.w %a4,%a5
	lea (284,%a2),%a3
	cmp.l %a5,%a3
	jge .L52
	move.w %a4,%a3
	lea (-284,%a3),%a3
	move.w %a3,_targetCameraX
	jra .L18
.L63:
	cmp.w #716,%d0
	jle .L54
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
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	lea __Z8setFramejssssfj,%a3
	jsr (%a3)
	lea (28,%sp),%sp
	lea __Z8stageGetv,%a2
	jsr (%a2)
	moveq #3,%d1
	cmp.l %d0,%d1
	jne .L64
	jra .L37
.L35:
	cmp.w #15,%d0
	jgt .L54
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
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	lea __Z8setFramejssssfj,%a3
	jsr (%a3)
	lea (28,%sp),%sp
	lea __Z8stageGetv,%a2
	jsr (%a2)
	moveq #3,%d1
	cmp.l %d0,%d1
	jne .L64
	jra .L37
.L40:
	move.w _cameraY,%d1
	cmp.w #399,%d1
	jgt .L43
	move.l 296(%a0),%a4
	cmp.w #83,(%a4)
	jeq .L65
	move.l 296(%a1),%a0
	cmp.w #83,(%a0)
	jeq .L66
	addq.w #8,%d1
	move.w %d1,_cameraY
	moveq #1,%d2
	move.l %d2,14212(%a3)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d1,%a0
.L69:
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	pea 240.w
	pea 352.w
	move.l %d0,-(%sp)
	jsr __Z8setFramejssssfj
	lea (28,%sp),%sp
	jra .L67
.L37:
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
	move.l _backgroundSpriteIndex,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w _xOffset,8(%a0,%d0.l)
	jsr __Z19stagePositionAssetsv
	jra .L68
.L62:
	move.w #8,286(%a1)
	subq.w #8,%d1
	move.w %d1,12(%a4)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
	jra .L55
.L43:
	clr.b _isScrollingPit
	move.w raptor_ticks,_cameraTicks
	jra .L15
.L66:
	move.w #8,286(%a1)
	addq.w #8,%d1
	move.w %d1,_cameraY
	moveq #1,%d2
	move.l %d2,14212(%a3)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d1,%a0
	jra .L69
.L61:
	move.w #8,286(%a0)
	subq.w #8,%d1
	move.w %d1,12(%a4)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
	jra .L55
.L65:
	move.w #8,286(%a0)
	addq.w #8,%d1
	move.w %d1,_cameraY
	moveq #1,%d2
	move.l %d2,14212(%a3)
	subq.w #8,14220(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d1,%a0
	jra .L69
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
	jle .L75
	cmp.w _cameraXMax.l,%d0
	slt %d0
	neg.b %d0
	unlk %fp
	rts
.L75:
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
	.globl	__Z28cameraFighterIsAtBoundsRightP7Fighter
__Z28cameraFighterIsAtBoundsRightP7Fighter:
	link.w %fp,#0
	move.w _cameraXMax,%d0
	cmp.w _cameraX.l,%d0
	jgt .L87
	move.l 8(%fp),%a0
	cmp.w #261,242(%a0)
	sgt %d0
	neg.b %d0
	unlk %fp
	rts
.L87:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z27cameraFighterIsAtBoundsLeftP7Fighter
__Z27cameraFighterIsAtBoundsLeftP7Fighter:
	link.w %fp,#0
	cmp.w #10,_cameraX.l
	jgt .L92
	move.l 8(%fp),%a0
	cmp.w #10,242(%a0)
	sle %d0
	neg.b %d0
	unlk %fp
	rts
.L92:
	clr.b %d0
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
