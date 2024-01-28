#NO_APP
	.text
	.even
	.globl	__Z10cameraInitjiiij
__Z10cameraInitjiiij:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.l 16(%fp),%a0
	move.l 24(%fp),%a1
	move.l %d0,_backgroundSpriteIndex
	move.l %d1,_cameraX
	move.l %a0,_cameraY
	move.l 20(%fp),_cameraXMax
	move.l %a1,_backgroundGfxBase
	move.l %a1,-(%sp)
	move.l #0x40000000,-(%sp)
	move.l %a0,-(%sp)
	move.l %d1,-(%sp)
	pea 172.w
	pea 336.w
	move.l %d0,-(%sp)
	jsr __Z8setFramejiiiifj
	lea (28,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z12cameraUpdateP7FighterS0_
__Z12cameraUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #12348,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w raptor_ticks,%a0
	cmp.l _cameraTicks.l,%a0
	jle .L2
	clr.b _backgroundChangedLeft
	clr.b _backgroundChangedRight
	moveq #1,%d0
	cmp.l 260(%a2),%d0
	jeq .L33
	tst.b 117(%a3)
	jeq .L11
	moveq #1,%d0
	cmp.l _cameraX.l,%d0
	jge .L11
	cmp.l 238(%a3),%d0
	jge .L34
.L11:
	tst.b 149(%a2)
	jeq .L28
	tst.b 151(%a3)
	jeq .L28
	moveq #1,%d1
	cmp.l _cameraX.l,%d1
	jge .L28
	cmp.l 238(%a3),%d1
	jge .L12
.L28:
	clr.b %d0
.L13:
	tst.b 117(%a2)
	jeq .L14
	move.l _cameraX,%d1
	cmp.l _cameraXMax.l,%d1
	jge .L14
	cmp.l #248,238(%a2)
	jle .L14
	moveq #1,%d1
	cmp.l 238(%a3),%d1
	jge .L14
	move.l %a3,-(%sp)
	jsr __Z16fighterShiftLeftP7Fighter
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 6920(%a2),%a0
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
	move.w %d0,6920(%a2)
	move.w 3656(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3656(%a2)
	move.w 7112(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7112(%a2)
	move.w 3848(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3848(%a2)
	move.w 7304(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7304(%a2)
	move.w 4040(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4040(%a2)
	move.w 7496(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7496(%a2)
	move.w 4232(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4232(%a2)
	move.w 7688(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7688(%a2)
	move.w 4424(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4424(%a2)
	move.w 7880(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7880(%a2)
	move.w 4616(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4616(%a2)
	move.w 8072(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8072(%a2)
	move.w 4808(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4808(%a2)
	move.w 8264(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8264(%a2)
	move.w 5000(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
.L30:
	move.w %d0,5000(%a2)
	move.b #1,_backgroundChangedRight
	move.b _backgroundChangedLeft,%d0
	addq.l #8,%sp
.L10:
	tst.b %d0
	jne .L29
	tst.b _backgroundChangedRight
	jeq .L17
	moveq #-2,%d0
	add.l _xOffset,%d0
	move.l %d0,_xOffset
	moveq #-15,%d1
	cmp.l %d0,%d1
	jgt .L35
.L18:
	tst.l %d0
	jlt .L19
	move.l _cameraX,%d0
	subq.l #4,%d0
	move.l %d0,_cameraX
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x40000000,-(%sp)
	move.l _cameraY,-(%sp)
	move.l %d0,-(%sp)
	pea 172.w
	pea 336.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejiiiifj
	moveq #-8,%d1
	move.l %d1,_xOffset
	lea (28,%sp),%sp
	moveq #-8,%d0
.L19:
	move.l sprite,%a0
	move.w %d0,3464(%a0)
.L17:
	move.w raptor_ticks,%a0
	move.l %a0,_cameraTicks
.L2:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L14:
	tst.b 149(%a3)
	jeq .L10
	tst.b 151(%a2)
	jeq .L10
	move.l _cameraX,%a0
	cmp.l _cameraXMax.l,%a0
	jge .L10
	cmp.l #248,238(%a2)
	jle .L10
	move.l %a3,-(%sp)
	jsr __Z16fighterShiftLeftP7Fighter
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 6920(%a2),%a0
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
	move.w %d0,6920(%a2)
	move.w 3656(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3656(%a2)
	move.w 7112(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7112(%a2)
	move.w 3848(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3848(%a2)
	move.w 7304(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7304(%a2)
	move.w 4040(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4040(%a2)
	move.w 7496(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7496(%a2)
	move.w 4232(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4232(%a2)
	move.w 7688(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7688(%a2)
	move.w 4424(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4424(%a2)
	move.w 7880(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7880(%a2)
	move.w 4616(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4616(%a2)
	move.w 8072(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8072(%a2)
	move.w 4808(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4808(%a2)
	move.w 8264(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8264(%a2)
	move.w 5000(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	jra .L30
.L29:
	moveq #2,%d0
	add.l _xOffset,%d0
	move.l %d0,_xOffset
	moveq #-15,%d1
	cmp.l %d0,%d1
	jle .L18
.L35:
	move.l _cameraX,%d0
	addq.l #4,%d0
	move.l %d0,_cameraX
	move.l _backgroundGfxBase,-(%sp)
	move.l #0x40000000,-(%sp)
	move.l _cameraY,-(%sp)
	move.l %d0,-(%sp)
	pea 172.w
	pea 336.w
	move.l _backgroundSpriteIndex,-(%sp)
	jsr __Z8setFramejiiiifj
	moveq #-8,%d0
	move.l %d0,_xOffset
	lea (28,%sp),%sp
	move.l sprite,%a0
	move.w %d0,3464(%a0)
	jra .L17
.L33:
	tst.b 117(%a2)
	jeq .L5
	cmp.l _cameraX.l,%d0
	jge .L5
	cmp.l 238(%a2),%d0
	jge .L36
.L5:
	tst.b 149(%a3)
	jeq .L24
	tst.b 151(%a2)
	jeq .L24
	moveq #1,%d1
	cmp.l _cameraX.l,%d1
	jge .L24
	cmp.l 238(%a2),%d1
	jge .L6
.L24:
	clr.b %d0
.L7:
	tst.b 117(%a3)
	jeq .L8
	move.l _cameraX,%d1
	cmp.l _cameraXMax.l,%d1
	jlt .L37
.L8:
	tst.b 149(%a2)
	jeq .L10
	tst.b 151(%a3)
	jeq .L10
	move.l _cameraX,%a0
	cmp.l _cameraXMax.l,%a0
	jge .L10
	cmp.l #248,238(%a3)
	jle .L10
	move.l %a2,-(%sp)
	jsr __Z16fighterShiftLeftP7Fighter
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 6920(%a2),%a0
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
	move.w %d0,6920(%a2)
	move.w 3656(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3656(%a2)
	move.w 7112(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7112(%a2)
	move.w 3848(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3848(%a2)
	move.w 7304(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7304(%a2)
	move.w 4040(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4040(%a2)
	move.w 7496(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7496(%a2)
	move.w 4232(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4232(%a2)
	move.w 7688(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7688(%a2)
	move.w 4424(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4424(%a2)
	move.w 7880(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7880(%a2)
	move.w 4616(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4616(%a2)
	move.w 8072(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8072(%a2)
	move.w 4808(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4808(%a2)
	move.w 8264(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8264(%a2)
	move.w 5000(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
.L38:
	move.w %d0,5000(%a2)
	move.b #1,_backgroundChangedRight
	move.b _backgroundChangedLeft,%d0
	addq.l #8,%sp
	jra .L10
.L34:
	cmp.l #248,238(%a2)
	jgt .L11
.L12:
	move.l %a2,-(%sp)
	jsr __Z17fighterShiftRightP7Fighter
	move.l sprite,%a4
	move.l #___floatsisf,%d3
	move.w 6920(%a4),%a0
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
	move.w %d0,6920(%a4)
	move.w 3656(%a4),%a0
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
	move.w %d0,3656(%a4)
	move.w 7112(%a4),%a0
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
	move.w %d0,7112(%a4)
	move.w 3848(%a4),%a0
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
	move.w %d0,3848(%a4)
	move.w 7304(%a4),%a0
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
	move.w %d0,7304(%a4)
	move.w 4040(%a4),%a0
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
	move.w %d0,4040(%a4)
	move.w 7496(%a4),%a0
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
	move.w %d0,7496(%a4)
	move.w 4232(%a4),%a0
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
	move.w %d0,4232(%a4)
	move.w 7688(%a4),%a0
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
	move.w %d0,7688(%a4)
	move.w 4424(%a4),%a0
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
	move.w %d0,4424(%a4)
	move.w 7880(%a4),%a0
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
	move.w %d0,7880(%a4)
	move.w 4616(%a4),%a0
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
	move.w %d0,4616(%a4)
	move.w 8072(%a4),%a0
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
	move.w %d0,8072(%a4)
	move.w 4808(%a4),%a0
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
	move.w %d0,4808(%a4)
	move.w 8264(%a4),%a0
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
	move.w %d0,8264(%a4)
	move.w 5000(%a4),%a0
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
	move.w %d0,5000(%a4)
	move.b #1,_backgroundChangedLeft
	addq.l #8,%sp
	moveq #1,%d0
	jra .L13
.L37:
	cmp.l #248,238(%a3)
	jle .L8
	moveq #1,%d1
	cmp.l 238(%a2),%d1
	jge .L8
	move.l %a2,-(%sp)
	jsr __Z16fighterShiftLeftP7Fighter
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 6920(%a2),%a0
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
	move.w %d0,6920(%a2)
	move.w 3656(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3656(%a2)
	move.w 7112(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7112(%a2)
	move.w 3848(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3848(%a2)
	move.w 7304(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7304(%a2)
	move.w 4040(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4040(%a2)
	move.w 7496(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7496(%a2)
	move.w 4232(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4232(%a2)
	move.w 7688(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7688(%a2)
	move.w 4424(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4424(%a2)
	move.w 7880(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7880(%a2)
	move.w 4616(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4616(%a2)
	move.w 8072(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8072(%a2)
	move.w 4808(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4808(%a2)
	move.w 8264(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8264(%a2)
	move.w 5000(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	jra .L38
.L36:
	cmp.l #248,238(%a3)
	jgt .L5
.L6:
	move.l %a3,-(%sp)
	jsr __Z17fighterShiftRightP7Fighter
	move.l sprite,%a4
	move.l #___floatsisf,%d3
	move.w 6920(%a4),%a0
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
	move.w %d0,6920(%a4)
	move.w 3656(%a4),%a0
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
	move.w %d0,3656(%a4)
	move.w 7112(%a4),%a0
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
	move.w %d0,7112(%a4)
	move.w 3848(%a4),%a0
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
	move.w %d0,3848(%a4)
	move.w 7304(%a4),%a0
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
	move.w %d0,7304(%a4)
	move.w 4040(%a4),%a0
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
	move.w %d0,4040(%a4)
	move.w 7496(%a4),%a0
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
	move.w %d0,7496(%a4)
	move.w 4232(%a4),%a0
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
	move.w %d0,4232(%a4)
	move.w 7688(%a4),%a0
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
	move.w %d0,7688(%a4)
	move.w 4424(%a4),%a0
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
	move.w %d0,4424(%a4)
	move.w 7880(%a4),%a0
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
	move.w %d0,7880(%a4)
	move.w 4616(%a4),%a0
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
	move.w %d0,4616(%a4)
	move.w 8072(%a4),%a0
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
	move.w %d0,8072(%a4)
	move.w 4808(%a4),%a0
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
	move.w %d0,4808(%a4)
	move.w 8264(%a4),%a0
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
	move.w %d0,8264(%a4)
	move.w 5000(%a4),%a0
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
	move.w %d0,5000(%a4)
	move.b #1,_backgroundChangedLeft
	addq.l #8,%sp
	moveq #1,%d0
	jra .L7
	.even
	.globl	__Z21cameraCheckBoundsLeftP7FighterS0_
__Z21cameraCheckBoundsLeftP7FighterS0_:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	tst.b 117(%a0)
	jeq .L41
	moveq #1,%d0
	cmp.l _cameraX.l,%d0
	jge .L41
	cmp.l 238(%a0),%d0
	jge .L49
.L41:
	tst.b 149(%a1)
	jeq .L47
	tst.b 151(%a0)
	jeq .L47
	moveq #1,%d0
	cmp.l _cameraX.l,%d0
	jge .L47
	cmp.l 238(%a0),%d0
	jge .L42
.L47:
	clr.b %d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L49:
	cmp.l #248,238(%a1)
	jgt .L41
.L42:
	move.l %a1,-(%sp)
	jsr __Z17fighterShiftRightP7Fighter
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 6920(%a2),%a0
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
	move.w %d0,6920(%a2)
	move.w 3656(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3656(%a2)
	move.w 7112(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7112(%a2)
	move.w 3848(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3848(%a2)
	move.w 7304(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7304(%a2)
	move.w 4040(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4040(%a2)
	move.w 7496(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7496(%a2)
	move.w 4232(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4232(%a2)
	move.w 7688(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7688(%a2)
	move.w 4424(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4424(%a2)
	move.w 7880(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7880(%a2)
	move.w 4616(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4616(%a2)
	move.w 8072(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8072(%a2)
	move.w 4808(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4808(%a2)
	move.w 8264(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8264(%a2)
	move.w 5000(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,5000(%a2)
	addq.l #8,%sp
	moveq #1,%d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
	.even
	.globl	__Z22cameraCheckBoundsRightP7FighterS0_
__Z22cameraCheckBoundsRightP7FighterS0_:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 117(%a0)
	jeq .L52
	move.l _cameraX,%d0
	cmp.l _cameraXMax.l,%d0
	jlt .L61
.L52:
	tst.b 149(%a1)
	jeq .L58
	tst.b 151(%a0)
	jeq .L58
	move.l _cameraX,%d0
	cmp.l _cameraXMax.l,%d0
	jge .L58
	cmp.l #248,238(%a0)
	jle .L58
	move.l %a1,-(%sp)
	jsr __Z16fighterShiftLeftP7Fighter
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 6920(%a2),%a0
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
	move.w %d0,6920(%a2)
	move.w 3656(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3656(%a2)
	move.w 7112(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7112(%a2)
	move.w 3848(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3848(%a2)
	move.w 7304(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7304(%a2)
	move.w 4040(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4040(%a2)
	move.w 7496(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7496(%a2)
	move.w 4232(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4232(%a2)
	move.w 7688(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7688(%a2)
	move.w 4424(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4424(%a2)
	move.w 7880(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7880(%a2)
	move.w 4616(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4616(%a2)
	move.w 8072(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8072(%a2)
	move.w 4808(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4808(%a2)
	move.w 8264(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8264(%a2)
	move.w 5000(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,5000(%a2)
	addq.l #8,%sp
	moveq #1,%d0
.L54:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L58:
	clr.b %d0
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L61:
	cmp.l #248,238(%a0)
	jle .L52
	moveq #1,%d0
	cmp.l 238(%a1),%d0
	jge .L52
	move.l %a1,-(%sp)
	jsr __Z16fighterShiftLeftP7Fighter
	move.l sprite,%a2
	lea ___floatsisf,%a5
	move.w 6920(%a2),%a0
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
	move.w %d0,6920(%a2)
	move.w 3656(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3656(%a2)
	move.w 7112(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7112(%a2)
	move.w 3848(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,3848(%a2)
	move.w 7304(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7304(%a2)
	move.w 4040(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4040(%a2)
	move.w 7496(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7496(%a2)
	move.w 4232(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4232(%a2)
	move.w 7688(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7688(%a2)
	move.w 4424(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4424(%a2)
	move.w 7880(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,7880(%a2)
	move.w 4616(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4616(%a2)
	move.w 8072(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8072(%a2)
	move.w 4808(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,4808(%a2)
	move.w 8264(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,8264(%a2)
	move.w 5000(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a5)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	move.w %d0,5000(%a2)
	addq.l #8,%sp
	moveq #1,%d0
	jra .L54
	.even
	.globl	__Z13cameraCanMovev
__Z13cameraCanMovev:
	link.w %fp,#0
	move.l _cameraX,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jge .L65
	cmp.l _cameraXMax.l,%d0
	slt %d0
	neg.b %d0
	unlk %fp
	rts
.L65:
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
