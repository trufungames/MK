#NO_APP
	.text
	.even
	.globl	__Z10cameraInitjiiij
__Z10cameraInitjiiij:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 12(%fp),%d0
	move.l 16(%fp),%d2
	move.l 24(%fp),%d3
	clr.l _xOffset
	move.l 8(%fp),_backgroundSpriteIndex
	move.l %d0,_cameraX
	move.l %d2,_cameraY
	move.w %d0,%d4
	move.w %d0,_targetCameraX
	move.l 20(%fp),_cameraXMax
	move.l %d3,_backgroundGfxBase
	jsr __Z14stageGetHeightv
	move.l %d3,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d2,%a0
	move.l %a0,-(%sp)
	move.w %d4,%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 352.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	move.w raptor_ticks,%a0
	move.l %a0,_cameraTicks
	lea (28,%sp),%sp
	movem.l -12(%fp),#28
	unlk %fp
	rts
.LC0:
	.ascii "camera x\0"
.LC1:
	.ascii "offset x\0"
	.even
	.globl	__Z12cameraUpdateP7FighterS0_
__Z12cameraUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	clr.l -(%sp)
	pea 20.w
	move.l _cameraX,-(%sp)
	pea .LC0
	lea __Z15printMessageIntPciii,%a4
	jsr (%a4)
	lea (16,%sp),%sp
	pea 10.w
	pea 20.w
	move.l _xOffset,-(%sp)
	pea .LC1
	jsr (%a4)
	move.w 248(%a2),%a0
	move.l _cameraX,%d0
	move.w _xOffset+2,%d1
	add.w %d0,%d1
	move.w %a0,%d2
	sub.w %d1,%d2
	move.w %d2,240(%a2)
	move.w 248(%a3),%a1
	move.w %a1,%d2
	sub.w %d1,%d2
	move.w %d2,240(%a3)
	move.w raptor_ticks,%a4
	move.l _cameraTicks,%d1
	addq.l #1,%d1
	lea (16,%sp),%sp
	cmp.l %a4,%d1
	jge .L2
	move.w 262(%a2),%d1
	cmp.w #1,%d1
	jeq .L35
.L4:
	move.w 262(%a3),%d2
	cmp.w #1,%d2
	jeq .L36
.L6:
	cmp.w #-1,%d1
	jeq .L37
.L7:
	cmp.w #-1,%d2
	jeq .L8
.L29:
	move.w _targetCameraX,%a0
.L5:
	move.w %a0,%a0
	cmp.l %a0,%d0
	jge .L10
	move.w #1,_panDirection
	sub.l %d0,%a0
	moveq #7,%d1
	cmp.l %a0,%d1
	jlt .L24
	move.w %d0,_targetCameraX
	move.w %d0,%a0
	move.w #8,%a3
	move.b #1,%d1
	cmp.l %a0,%d0
	jeq .L13
.L16:
	add.l %a3,%d0
	move.l %d0,_cameraX
	cmp.w #1,%d1
	jeq .L38
.L18:
	cmp.w #-1,%d1
	jeq .L21
.L33:
	move.w %d0,%a3
	move.l _backgroundGfxBase,%d2
	move.w _cameraY+2,%a2
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
	move.w _xOffset+2,8648(%a0)
	lea (28,%sp),%sp
	jsr __Z19stagePositionAssetsv
.L13:
	move.w raptor_ticks,%a1
	move.l %a1,_cameraTicks
.L2:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L10:
	move.w #-1,_panDirection
	move.l %d0,%d1
	sub.l %a0,%d1
	moveq #7,%d2
	cmp.l %d1,%d2
	jlt .L30
	move.w %d0,_targetCameraX
	move.w %d0,%a0
.L30:
	move.w #-8,%a3
	moveq #-1,%d1
	cmp.l %a0,%d0
	jne .L16
	jra .L13
.L35:
	move.w %a0,%a2
	lea (-15,%a2),%a2
	cmp.l %a2,%d0
	jlt .L4
	lea (-16,%a0),%a0
	move.w %a0,_targetCameraX
	jra .L5
.L24:
	move.w #8,%a3
	moveq #1,%d1
	add.l %a3,%d0
	move.l %d0,_cameraX
	cmp.w #1,%d1
	jne .L18
.L38:
	cmp.l #716,%d0
	jle .L33
	move.w #-1,_panDirection
	move.l #716,_cameraX
	move.w #716,%a3
	move.l _backgroundGfxBase,%d2
	move.w _cameraY+2,%a2
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
	move.w _xOffset+2,8648(%a0)
	lea (28,%sp),%sp
	jsr __Z19stagePositionAssetsv
	jra .L13
.L36:
	move.w %a1,%a2
	lea (-15,%a2),%a2
	cmp.l %a2,%d0
	jlt .L6
	move.w %a1,%a0
	lea (-16,%a0),%a0
	move.w %a0,_targetCameraX
	jra .L5
.L37:
	move.w %a0,%a2
	move.l %d0,%d1
	add.l #284,%d1
	cmp.l %a2,%d1
	jge .L7
	lea (-284,%a0),%a0
	move.w %a0,_targetCameraX
	jra .L5
.L8:
	move.w %a1,%a0
	move.l %d0,%d1
	add.l #284,%d1
	cmp.l %a0,%d1
	jge .L29
	move.w %a1,%a0
	lea (-284,%a0),%a0
	move.w %a0,_targetCameraX
	jra .L5
.L21:
	moveq #9,%d1
	cmp.l %d0,%d1
	jlt .L33
	move.w #1,_panDirection
	moveq #10,%d2
	move.l %d2,_cameraX
	move.w #10,%a3
	move.l _backgroundGfxBase,%d2
	move.w _cameraY+2,%a2
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
	move.w _xOffset+2,8648(%a0)
	lea (28,%sp),%sp
	jsr __Z19stagePositionAssetsv
	jra .L13
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
	move.l _cameraX,%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L44
	cmp.l _cameraXMax.l,%d0
	slt %d0
	neg.b %d0
	unlk %fp
	rts
.L44:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z18cameraIsAtLeftWallv
__Z18cameraIsAtLeftWallv:
	link.w %fp,#0
	moveq #10,%d0
	cmp.l _cameraX.l,%d0
	sge %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z19cameraIsAtRightWallv
__Z19cameraIsAtRightWallv:
	link.w %fp,#0
	move.l _cameraX,%d0
	cmp.l _cameraXMax.l,%d0
	sge %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z10cameraGetXv
__Z10cameraGetXv:
	link.w %fp,#0
	move.l _cameraX,%d0
	add.l _xOffset,%d0
	unlk %fp
	rts
	.even
	.globl	__Z15cameraGetOffsetv
__Z15cameraGetOffsetv:
	link.w %fp,#0
	move.l _xOffset,%d0
	unlk %fp
	rts
	.even
	.globl	__Z16cameraResetTicksv
__Z16cameraResetTicksv:
	link.w %fp,#0
	move.w raptor_ticks,%a0
	move.l %a0,_cameraTicks
	unlk %fp
	rts
	.even
	.globl	__Z28cameraFighterIsAtBoundsRightP7Fighter
__Z28cameraFighterIsAtBoundsRightP7Fighter:
	link.w %fp,#0
	move.l _cameraX,%d0
	cmp.l _cameraXMax.l,%d0
	jlt .L54
	move.l 8(%fp),%a0
	cmp.w #261,240(%a0)
	sgt %d0
	neg.b %d0
	unlk %fp
	rts
.L54:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z27cameraFighterIsAtBoundsLeftP7Fighter
__Z27cameraFighterIsAtBoundsLeftP7Fighter:
	link.w %fp,#0
	moveq #10,%d0
	cmp.l _cameraX.l,%d0
	jlt .L59
	move.l 8(%fp),%a0
	cmp.w #10,240(%a0)
	sle %d0
	neg.b %d0
	unlk %fp
	rts
.L59:
	clr.b %d0
	unlk %fp
	rts
	.globl	_targetCameraX
	.bss
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
	.skip 4
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
	.long	400
	.globl	_cameraY
	.bss
	.even
_cameraY:
	.skip 4
	.globl	_cameraX
	.even
_cameraX:
	.skip 4
	.globl	_cameraTicks
	.even
_cameraTicks:
	.skip 4
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
