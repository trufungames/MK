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
	movem.l #12348,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a4
	move.w raptor_ticks,%a0
	cmp.l _cameraTicks.l,%a0
	jle .L2
	clr.b _backgroundChangedLeft
	clr.b _backgroundChangedRight
	move.l _cameraX,%d0
	moveq #10,%d1
	cmp.w #1,312(%a2)
	jeq .L24
	cmp.l %d0,%d1
	jge .L20
	cmp.w #10,292(%a4)
	jgt .L20
	cmp.w #278,292(%a2)
	jgt .L20
	move.l %a2,-(%sp)
	lea __Z17fighterShiftRightP7Fighter,%a3
	jsr (%a3)
	move.l %a4,(%sp)
	jsr (%a3)
	move.l sprite,%a3
	move.l #___floatsisf,%d3
	move.w 13640(%a3),%a0
	move.l %a0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #___addsf3,%d2
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #8,%sp
	lea ___fixsfsi,%a5
	move.l %d0,-(%sp)
	jsr (%a5)
	move.w %d0,13640(%a3)
	move.w 9224(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9224(%a3)
	move.w 13832(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,13832(%a3)
	move.w 9416(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9416(%a3)
	move.w 14024(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14024(%a3)
	move.w 9608(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9608(%a3)
	move.w 14216(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14216(%a3)
	move.w 9800(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9800(%a3)
	move.w 14408(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14408(%a3)
	move.w 9992(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9992(%a3)
	move.w 14600(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14600(%a3)
	move.w 10184(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,10184(%a3)
	move.w 14792(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14792(%a3)
	move.w 10376(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,10376(%a3)
	move.w 14984(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14984(%a3)
	move.w 10568(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,10568(%a3)
	move.b #1,_backgroundChangedLeft
	move.l _cameraX,%d0
	addq.l #8,%sp
	moveq #1,%d1
.L7:
	cmp.l _cameraXMax.l,%d0
	jge .L6
	cmp.w #280,292(%a2)
	jle .L6
	cmp.w #10,292(%a4)
	jle .L6
	move.l %a4,-(%sp)
	lea __Z16fighterShiftLeftP7Fighter,%a3
	jsr (%a3)
	move.l %a2,(%sp)
	jsr (%a3)
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 13640(%a2),%a0
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
	move.w %d0,13640(%a2)
	move.w 9224(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9224(%a2)
	move.w 13832(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
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
	move.b #1,_backgroundChangedRight
	move.b _backgroundChangedLeft,%d1
	addq.l #8,%sp
.L6:
	tst.b %d1
	jeq .L25
	move.l _xOffset,%d0
	addq.l #2,%d0
	move.l %d0,_xOffset
	moveq #1,%d1
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z9stageMoveii
	move.l _xOffset,%d0
	addq.l #8,%sp
	moveq #-15,%d1
	cmp.l %d0,%d1
	jgt .L26
.L11:
	tst.l %d0
	jlt .L12
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
.L12:
	move.l sprite,%a0
	move.w %d0,8456(%a0)
.L10:
	move.w raptor_ticks,%a0
	move.l %a0,_cameraTicks
.L2:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L20:
	clr.b %d1
	jra .L7
.L25:
	tst.b _backgroundChangedRight
	jeq .L10
	move.l _xOffset,%d0
	subq.l #2,%d0
	move.l %d0,_xOffset
	moveq #-1,%d1
	move.l %d0,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z9stageMoveii
	move.l _xOffset,%d0
	addq.l #8,%sp
	moveq #-15,%d1
	cmp.l %d0,%d1
	jle .L11
.L26:
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
	jra .L12
.L24:
	cmp.l %d0,%d1
	jge .L17
	cmp.w #10,292(%a2)
	jgt .L17
	cmp.w #278,292(%a4)
	jgt .L17
	move.l %a4,-(%sp)
	lea __Z17fighterShiftRightP7Fighter,%a3
	jsr (%a3)
	move.l %a2,(%sp)
	jsr (%a3)
	move.l sprite,%a3
	move.l #___floatsisf,%d3
	move.w 13640(%a3),%a0
	move.l %a0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #___addsf3,%d2
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #8,%sp
	lea ___fixsfsi,%a5
	move.l %d0,-(%sp)
	jsr (%a5)
	move.w %d0,13640(%a3)
	move.w 9224(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9224(%a3)
	move.w 13832(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,13832(%a3)
	move.w 9416(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9416(%a3)
	move.w 14024(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14024(%a3)
	move.w 9608(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9608(%a3)
	move.w 14216(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14216(%a3)
	move.w 9800(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9800(%a3)
	move.w 14408(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14408(%a3)
	move.w 9992(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9992(%a3)
	move.w 14600(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14600(%a3)
	move.w 10184(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,10184(%a3)
	move.w 14792(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14792(%a3)
	move.w 10376(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,10376(%a3)
	move.w 14984(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,14984(%a3)
	move.w 10568(%a3),%a0
	move.l %a0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,10568(%a3)
	move.b #1,_backgroundChangedLeft
	move.l _cameraX,%d0
	addq.l #8,%sp
	moveq #1,%d1
.L5:
	cmp.l _cameraXMax.l,%d0
	jge .L6
	cmp.w #280,292(%a4)
	jle .L6
	cmp.w #10,292(%a2)
	jle .L6
	move.l %a2,-(%sp)
	lea __Z16fighterShiftLeftP7Fighter,%a2
	jsr (%a2)
	move.l %a4,(%sp)
	jsr (%a2)
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 13640(%a2),%a0
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
	move.w %d0,13640(%a2)
	move.w 9224(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9224(%a2)
	move.w 13832(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
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
	move.b #1,_backgroundChangedRight
	move.b _backgroundChangedLeft,%d1
	addq.l #8,%sp
	jra .L6
.L17:
	clr.b %d1
	jra .L5
	.even
	.globl	__Z21cameraCheckBoundsLeftP7FighterS0_
__Z21cameraCheckBoundsLeftP7FighterS0_:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a0
	moveq #10,%d0
	cmp.l _cameraX.l,%d0
	jge .L32
	cmp.w #10,292(%a2)
	jgt .L32
	cmp.w #278,292(%a0)
	jgt .L32
	move.l %a0,-(%sp)
	lea __Z17fighterShiftRightP7Fighter,%a3
	jsr (%a3)
	move.l %a2,(%sp)
	jsr (%a3)
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 13640(%a2),%a0
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
	move.w %d0,13640(%a2)
	move.w 9224(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9224(%a2)
	move.w 13832(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
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
	addq.l #8,%sp
	moveq #1,%d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L32:
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
	jge .L39
	cmp.w #280,292(%a2)
	jle .L39
	cmp.w #10,292(%a0)
	jle .L39
	move.l %a0,-(%sp)
	lea __Z16fighterShiftLeftP7Fighter,%a3
	jsr (%a3)
	move.l %a2,(%sp)
	jsr (%a3)
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 13640(%a2),%a0
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
	move.w %d0,13640(%a2)
	move.w 9224(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,9224(%a2)
	move.w 13832(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
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
	addq.l #8,%sp
	moveq #1,%d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L39:
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
