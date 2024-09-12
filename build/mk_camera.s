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
	move.l #0x40000000,-(%sp)
	move.w %d3,%a0
	move.l %a0,-(%sp)
	move.w %d2,%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 320.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	move.w raptor_ticks,%a0
	move.l %a0,_cameraTicks
	lea (28,%sp),%sp
	movem.l -12(%fp),#28
	unlk %fp
	rts
	.even
	.globl	__Z12cameraUpdateP7FighterS0_
__Z12cameraUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a2
	cmp.l _cameraTicks.l,%a2
	jle .L2
	move.w _cameraX+2,%d0
	move.w 248(%a0),%d1
	sub.w %d0,%d1
	move.w %d1,240(%a0)
	move.w 248(%a1),%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	move.w %d1,240(%a1)
	move.w 240(%a0),%d1
	cmp.w #9,%d1
	jle .L4
	cmp.w #9,%d0
	jle .L4
	cmp.w #310,%d1
	jgt .L7
	cmp.w #310,%d0
	jgt .L7
.L6:
	move.l _xOffset,%d0
	moveq #-15,%d1
	cmp.l %d0,%d1
	jgt .L13
.L8:
	tst.l %d0
	jlt .L9
	move.l _cameraX,%d2
	subq.l #4,%d2
	move.l %d2,_cameraX
	move.l _backgroundGfxBase,%d3
	move.w _cameraY+2,%a2
	jsr __Z14stageGetHeightv
	move.l %d3,-(%sp)
	move.l #0x40000000,-(%sp)
	move.l %a2,-(%sp)
	move.w %d2,%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 320.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	moveq #-8,%d0
	move.l %d0,_xOffset
	lea (28,%sp),%sp
.L9:
	move.l sprite,%a0
	move.w %d0,8648(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_cameraTicks
.L2:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L4:
	move.l _xOffset,%d0
	addq.l #2,%d0
	move.l %d0,_xOffset
	move.l %d0,-(%sp)
	pea 1.w
	jsr __Z9stageMoveii
	addq.l #8,%sp
	move.l _xOffset,%d0
	moveq #-15,%d1
	cmp.l %d0,%d1
	jle .L8
.L13:
	move.l _cameraX,%d2
	addq.l #4,%d2
	move.l %d2,_cameraX
	move.l _backgroundGfxBase,%d3
	move.w _cameraY+2,%a2
	jsr __Z14stageGetHeightv
	move.l %d3,-(%sp)
	move.l #0x40000000,-(%sp)
	move.l %a2,-(%sp)
	move.w %d2,%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 320.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejssssfj
	moveq #-8,%d0
	move.l %d0,_xOffset
	lea (28,%sp),%sp
	jra .L9
.L7:
	move.l _xOffset,%d0
	subq.l #2,%d0
	move.l %d0,_xOffset
	move.l %d0,-(%sp)
	pea -1.w
	jsr __Z9stageMoveii
	addq.l #8,%sp
	jra .L6
	.even
	.globl	__Z21cameraCheckBoundsLeftP7FighterS0_
__Z21cameraCheckBoundsLeftP7FighterS0_:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a0
	moveq #10,%d0
	cmp.l _cameraX.l,%d0
	jge .L19
	cmp.w #10,240(%a2)
	jgt .L19
	cmp.w #259,240(%a0)
	jgt .L19
	move.l %a0,-(%sp)
	lea __Z17fighterShiftRightP7Fighter,%a3
	jsr (%a3)
	move.l %a2,(%sp)
	jsr (%a3)
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 13832(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a4
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	lea ___fixsfsi,%a3
	move.l %d0,-(%sp)
	jsr (%a3)
	move.w %d0,13832(%a2)
	move.w 9416(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9416(%a2)
	move.w 14024(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14024(%a2)
	move.w 9608(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9608(%a2)
	move.w 14216(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14216(%a2)
	move.w 9800(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9800(%a2)
	move.w 14408(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14408(%a2)
	move.w 9992(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9992(%a2)
	move.w 14600(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14600(%a2)
	move.w 10184(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,10184(%a2)
	move.w 14792(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14792(%a2)
	move.w 10376(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,10376(%a2)
	move.w 14984(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14984(%a2)
	move.w 10568(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,10568(%a2)
	move.w 15176(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,15176(%a2)
	move.w 10760(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,10760(%a2)
	addq.l #8,%sp
	moveq #1,%d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L19:
	clr.b %d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
	.even
	.globl	__Z22cameraCheckBoundsRightP7FighterS0_
__Z22cameraCheckBoundsRightP7FighterS0_:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l _cameraX,%d0
	cmp.l _cameraXMax.l,%d0
	jge .L26
	cmp.w #261,240(%a2)
	jle .L26
	cmp.w #10,240(%a0)
	jle .L26
	move.l %a0,-(%sp)
	lea __Z16fighterShiftLeftP7Fighter,%a3
	jsr (%a3)
	move.l %a2,(%sp)
	jsr (%a3)
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 13832(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___subsf3,%a4
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	lea ___fixsfsi,%a3
	move.l %d0,-(%sp)
	jsr (%a3)
	move.w %d0,13832(%a2)
	move.w 9416(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9416(%a2)
	move.w 14024(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14024(%a2)
	move.w 9608(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9608(%a2)
	move.w 14216(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14216(%a2)
	move.w 9800(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9800(%a2)
	move.w 14408(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14408(%a2)
	move.w 9992(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9992(%a2)
	move.w 14600(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14600(%a2)
	move.w 10184(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,10184(%a2)
	move.w 14792(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14792(%a2)
	move.w 10376(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,10376(%a2)
	move.w 14984(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,14984(%a2)
	move.w 10568(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,10568(%a2)
	move.w 15176(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,15176(%a2)
	move.w 10760(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,10760(%a2)
	addq.l #8,%sp
	moveq #1,%d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L26:
	clr.b %d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
	.even
	.globl	__Z13cameraCanMovev
__Z13cameraCanMovev:
	link.w %fp,#0
	move.l _cameraX,%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L31
	cmp.l _cameraXMax.l,%d0
	slt %d0
	neg.b %d0
	unlk %fp
	rts
.L31:
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
	jlt .L41
	move.l 8(%fp),%a0
	cmp.w #261,240(%a0)
	sgt %d0
	neg.b %d0
	unlk %fp
	rts
.L41:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z27cameraFighterIsAtBoundsLeftP7Fighter
__Z27cameraFighterIsAtBoundsLeftP7Fighter:
	link.w %fp,#0
	moveq #10,%d0
	cmp.l _cameraX.l,%d0
	jlt .L46
	move.l 8(%fp),%a0
	cmp.w #10,240(%a0)
	sle %d0
	neg.b %d0
	unlk %fp
	rts
.L46:
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
