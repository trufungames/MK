#NO_APP
	.text
	.even
	.globl	__Z10cameraInitjiiij
__Z10cameraInitjiiij:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 12(%fp),%d0
	move.l 16(%fp),%d1
	move.l 24(%fp),%d2
	clr.w _xOffset
	move.l 8(%fp),_backgroundSpriteIndex
	move.w %d0,%d3
	move.w %d0,_cameraX
	move.w %d1,%d4
	move.w %d1,_cameraY
	move.w %d0,_targetCameraX
	move.w 22(%fp),_cameraXMax
	move.l %d2,_backgroundGfxBase
	jsr __Z14stageGetHeightv
	move.l %d2,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d4,%a0
	move.l %a0,-(%sp)
	move.w %d3,%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	move.l sprite,%a0
	move.w _xOffset,8648(%a0)
	move.w raptor_ticks,_cameraTicks
	lea (28,%sp),%sp
	movem.l -12(%fp),#28
	unlk %fp
	rts
	.even
	.globl	__Z12cameraUpdateP7FighterS0_
__Z12cameraUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #12348,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 252(%a0),%d2
	move.w _cameraX,%d1
	move.w %d1,%a2
	move.w _xOffset,%d0
	add.w %a2,%d0
	move.w %d2,%d3
	sub.w %d0,%d3
	move.w %d3,242(%a0)
	move.w 252(%a1),%a3
	move.w %a3,%d3
	sub.w %d0,%d3
	move.w %d3,242(%a1)
	move.w 250(%a0),%d3
	sub.w %d0,%d3
	move.w %d3,246(%a0)
	move.w 250(%a1),%d3
	sub.w %d0,%d3
	move.w %d3,246(%a1)
	move.w raptor_ticks,%a5
	move.w _cameraTicks,%a4
	addq.l #1,%a4
	cmp.l %a5,%a4
	jge .L2
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L42
.L4:
	move.w 266(%a1),%d3
	cmp.w #1,%d3
	jeq .L43
.L6:
	cmp.w #-1,%d0
	jeq .L44
.L7:
	cmp.w #-1,%d3
	jeq .L8
.L37:
	move.w _targetCameraX,%d2
.L5:
	cmp.w %d1,%d2
	jle .L10
	move.w #1,_panDirection
	move.w %d2,%a4
	move.l %a4,%a3
	sub.l %a2,%a3
	moveq #7,%d0
	cmp.l %a3,%d0
	jlt .L33
.L31:
	move.w %d1,_targetCameraX
.L13:
	tst.b _isScrollingPit
	jne .L14
	move.w raptor_ticks,_cameraTicks
.L2:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L10:
	move.w #-1,_panDirection
	move.w %d2,%a4
	move.l %a2,%a3
	sub.l %a4,%a3
	moveq #7,%d0
	cmp.l %a3,%d0
	jge .L31
	cmp.w %d1,%d2
	jeq .L13
	move.w #-8,%a3
	moveq #-1,%d0
	tst.b _isScrollingPit
	jeq .L45
.L14:
	move.l sprite,%a3
	move.w 8652(%a3),%d0
	jle .L25
	move.l 296(%a0),%a4
	cmp.w #83,(%a4)
	jeq .L46
	move.l 296(%a1),%a0
	cmp.w #83,(%a0)
	jeq .L47
	subq.w #8,%d0
	move.w %d0,8652(%a3)
	subq.w #8,12876(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
.L40:
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	pea 240.w
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	lea (28,%sp),%sp
.L52:
	move.w raptor_ticks,_cameraTicks
	jra .L2
.L45:
	add.w %a3,%d1
	move.w %d1,_cameraX
	cmp.w #1,%d0
	jeq .L48
	cmp.w #-1,%d0
	jeq .L22
.L39:
	move.w %d1,%a3
	move.l _backgroundGfxBase,%d2
	move.w _cameraY,%a2
	jsr __Z14stageGetHeightv
	move.l %d2,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	move.l sprite,%a0
	move.w _xOffset,8648(%a0)
	lea (28,%sp),%sp
	jsr __Z19stagePositionAssetsv
.L49:
	move.w raptor_ticks,_cameraTicks
	jra .L2
.L42:
	move.w %d2,%a4
	lea (-15,%a4),%a4
	cmp.l %a4,%a2
	jlt .L4
	add.w #-16,%d2
	move.w %d2,_targetCameraX
	jra .L5
.L33:
	move.w #8,%a3
	moveq #1,%d0
	tst.b _isScrollingPit
	jne .L14
	jra .L45
.L43:
	move.w %a3,%a4
	lea (-15,%a4),%a4
	cmp.l %a4,%a2
	jlt .L6
	move.w %a3,%d2
	add.w #-16,%d2
	move.w %d2,_targetCameraX
	jra .L5
.L44:
	move.w %d2,%a5
	lea (284,%a2),%a4
	cmp.l %a5,%a4
	jge .L7
	add.w #-284,%d2
	move.w %d2,_targetCameraX
	jra .L5
.L8:
	move.w %a3,%a5
	lea (284,%a2),%a4
	cmp.l %a5,%a4
	jge .L37
	move.w %a3,%d2
	add.w #-284,%d2
	move.w %d2,_targetCameraX
	jra .L5
.L48:
	cmp.w #716,%d1
	jle .L39
	move.w #-1,_panDirection
	move.w #716,_cameraX
	move.w #716,%a3
	move.l _backgroundGfxBase,%d2
	move.w _cameraY,%a2
	jsr __Z14stageGetHeightv
	move.l %d2,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	move.l sprite,%a0
	move.w _xOffset,8648(%a0)
	lea (28,%sp),%sp
	jsr __Z19stagePositionAssetsv
	jra .L49
.L22:
	cmp.w #15,%d1
	jgt .L39
	move.w #1,_panDirection
	move.w #16,_cameraX
	move.w #16,%a3
	move.l _backgroundGfxBase,%d2
	move.w _cameraY,%a2
	jsr __Z14stageGetHeightv
	move.l %d2,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	move.l sprite,%a0
	move.w _xOffset,8648(%a0)
	lea (28,%sp),%sp
	jsr __Z19stagePositionAssetsv
	jra .L49
.L25:
	move.w _cameraY,%d0
	cmp.w #399,%d0
	jgt .L28
	move.l 296(%a0),%a4
	cmp.w #83,(%a4)
	jeq .L50
	move.l 296(%a1),%a0
	cmp.w #83,(%a0)
	jeq .L51
	addq.w #8,%d0
	move.w %d0,_cameraY
	moveq #1,%d1
	move.l %d1,12868(%a3)
	subq.w #8,12876(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d0,%a0
.L53:
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	pea 240.w
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	lea (28,%sp),%sp
	jra .L52
.L47:
	move.w #8,286(%a1)
	subq.w #8,%d0
	move.w %d0,8652(%a3)
	subq.w #8,12876(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
	jra .L40
.L28:
	clr.b _isScrollingPit
	move.w raptor_ticks,_cameraTicks
	jra .L2
.L51:
	move.w #8,286(%a1)
	addq.w #8,%d0
	move.w %d0,_cameraY
	moveq #1,%d1
	move.l %d1,12868(%a3)
	subq.w #8,12876(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d0,%a0
	jra .L53
.L46:
	move.w #8,286(%a0)
	subq.w #8,%d0
	move.w %d0,8652(%a3)
	subq.w #8,12876(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w _cameraY,%a0
	jra .L40
.L50:
	move.w #8,286(%a0)
	addq.w #8,%d0
	move.w %d0,_cameraY
	moveq #1,%d1
	move.l %d1,12868(%a3)
	subq.w #8,12876(%a3)
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d0,%a0
	jra .L53
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
	jle .L59
	cmp.w _cameraXMax.l,%d0
	slt %d0
	neg.b %d0
	unlk %fp
	rts
.L59:
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
	jgt .L71
	move.l 8(%fp),%a0
	cmp.w #261,242(%a0)
	sgt %d0
	neg.b %d0
	unlk %fp
	rts
.L71:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z27cameraFighterIsAtBoundsLeftP7Fighter
__Z27cameraFighterIsAtBoundsLeftP7Fighter:
	link.w %fp,#0
	cmp.w #10,_cameraX.l
	jgt .L76
	move.l 8(%fp),%a0
	cmp.w #10,242(%a0)
	sle %d0
	neg.b %d0
	unlk %fp
	rts
.L76:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z15cameraScrollPitv
__Z15cameraScrollPitv:
	link.w %fp,#0
	move.b #1,_isScrollingPit
	move.l sprite,%a0
	move.l #240,8672(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20cameraIsScrollingPitv
__Z20cameraIsScrollingPitv:
	link.w %fp,#0
	move.b _isScrollingPit,%d0
	unlk %fp
	rts
	.globl	_isScrollingPit
	.bss
_isScrollingPit:
	.skip 1
	.globl	_targetCameraX
	.even
_targetCameraX:
	.skip 2
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
