#NO_APP
	.text
	.even
	.globl	__Z10cameraInitjiiij
__Z10cameraInitjiiij:
	link.w %fp,#0
	movem.l #14336,-(%sp)
	move.l 12(%fp),%d2
	move.l 16(%fp),%d3
	move.l 24(%fp),%d4
	moveq #-8,%d0
	move.l %d0,_xOffset
	move.l 8(%fp),_backgroundSpriteIndex
	move.l %d2,_cameraX
	move.l %d3,_cameraY
	move.l 20(%fp),_cameraXMax
	move.l %d4,_backgroundGfxBase
	jsr __Z14stageGetHeightv
	move.l %d4,-(%sp)
	move.l #0x3f800000,-(%sp)
	move.w %d3,%a0
	move.l %a0,-(%sp)
	move.w %d2,%a0
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
	.ascii "Camera X\0"
.LC1:
	.ascii "Offset X\0"
	.even
	.globl	__Z12cameraUpdateP7FighterS0_
__Z12cameraUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.w raptor_ticks,%a0
	move.l _cameraTicks,%d0
	addq.l #1,%d0
	cmp.l %a0,%d0
	jlt .L13
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L13:
	clr.l -(%sp)
	pea 50.w
	move.l _cameraX,-(%sp)
	pea .LC0
	lea __Z15printMessageIntPciii,%a2
	jsr (%a2)
	lea (16,%sp),%sp
	pea 12.w
	pea 50.w
	move.l _xOffset,-(%sp)
	pea .LC1
	jsr (%a2)
	move.w _panDirection,%d1
	move.w %d1,%d2
	ext.l %d2
	move.l %d2,%d0
	neg.l %d0
	add.l %d0,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l _xOffset,%a0
	move.l %a0,_xOffset
	lea (15,%a0),%a1
	lea (16,%sp),%sp
	moveq #14,%d0
	cmp.l %a1,%d0
	jcc .L4
	moveq #-8,%d0
	move.l %d0,_xOffset
	lsl.l #3,%d2
	add.l _cameraX,%d2
	move.l %d2,_cameraX
	cmp.w #1,%d1
	jeq .L14
	cmp.w #-1,%d1
	jeq .L8
.L11:
	move.w %d2,%a3
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
	move.l _xOffset,%a0
	lea (28,%sp),%sp
.L4:
	move.l sprite,%a1
	move.w %a0,8648(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,_cameraTicks
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L14:
	cmp.l #688,%d2
	jle .L11
	move.w #-1,_panDirection
	move.l #688,_cameraX
	move.w #688,%a3
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
	move.l _xOffset,%a0
	lea (28,%sp),%sp
	jra .L4
.L8:
	moveq #9,%d0
	cmp.l %d2,%d0
	jlt .L11
	move.w #1,_panDirection
	moveq #10,%d0
	move.l %d0,_cameraX
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
	move.l _xOffset,%a0
	lea (28,%sp),%sp
	jra .L4
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
	jge .L20
	cmp.l _cameraXMax.l,%d0
	slt %d0
	neg.b %d0
	unlk %fp
	rts
.L20:
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
	jlt .L30
	move.l 8(%fp),%a0
	cmp.w #261,240(%a0)
	sgt %d0
	neg.b %d0
	unlk %fp
	rts
.L30:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z27cameraFighterIsAtBoundsLeftP7Fighter
__Z27cameraFighterIsAtBoundsLeftP7Fighter:
	link.w %fp,#0
	moveq #10,%d0
	cmp.l _cameraX.l,%d0
	jlt .L35
	move.l 8(%fp),%a0
	cmp.w #10,240(%a0)
	sle %d0
	neg.b %d0
	unlk %fp
	rts
.L35:
	clr.b %d0
	unlk %fp
	rts
	.globl	_backgroundGfxBase
	.bss
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
