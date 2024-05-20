#NO_APP
	.text
	.even
	.globl	__Z9stageInitv
__Z9stageInitv:
	link.w %fp,#0
	clr.l __ZL11cloudTicks1
	clr.l __ZL11cloudTicks2
	clr.l __ZL11cloudTicks3
	unlk %fp
	rts
	.even
	.globl	__Z8stageGetv
__Z8stageGetv:
	link.w %fp,#0
	move.w __ZL12currentStage,%d0
	ext.l %d0
	unlk %fp
	rts
	.even
	.globl	__Z12stageSetNextv
__Z12stageSetNextv:
	link.w %fp,#0
	move.w __ZL12currentStage,%d0
	addq.w #1,%d0
	move.w %d0,__ZL12currentStage
	cmp.w #3,%d0
	jle .L3
	clr.w __ZL12currentStage
.L3:
	unlk %fp
	rts
	.even
	.globl	__Z17stageLoadVsBattlev
__Z17stageLoadVsBattlev:
	link.w %fp,#0
	move.w __ZL12currentStage,%d0
	cmp.w #1,%d0
	jeq .L10
	jle .L15
	cmp.w #2,%d0
	jeq .L11
	cmp.w #3,%d0
	jeq .L16
.L7:
	unlk %fp
	rts
.L11:
	pea 16.w
	pea 1.w
	move.l #8531440,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8530000,4652(%a0)
	lea (12,%sp),%sp
	unlk %fp
	rts
.L16:
	pea 16.w
	pea 1.w
	move.l #8534384,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8532944,4652(%a0)
	lea (12,%sp),%sp
	unlk %fp
	rts
.L10:
	pea 16.w
	pea 1.w
	move.l #8532912,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8531472,4652(%a0)
	lea (12,%sp),%sp
	unlk %fp
	rts
.L15:
	tst.w %d0
	jne .L7
	pea 16.w
	pea 1.w
	move.l #8529968,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8528528,4652(%a0)
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z11stageUpdatev
__Z11stageUpdatev:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.w __ZL12currentStage,%d0
	cmp.w #1,%d0
	jeq .L21
	jle .L65
	cmp.w #2,%d0
	jeq .L22
	cmp.w #3,%d0
	jeq .L66
.L18:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L22:
	move.w raptor_ticks,%a2
	move.l __ZL11cloudTicks1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a2
	jle .L53
	move.l sprite,%a3
	move.l #___floatsisf,%d2
	move.w 5384(%a3),%a0
	move.l %a0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	lea ___addsf3,%a5
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	move.w %d0,5384(%a3)
	move.w 5576(%a3),%a0
	move.l %a0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,5576(%a3)
	move.l %a2,__ZL11cloudTicks1
.L53:
	move.l __ZL11cloudTicks2,%d0
	addq.l #3,%d0
	cmp.l %a2,%d0
	jge .L54
	move.l sprite,%a3
	move.l #___floatsisf,%d2
	move.w 5768(%a3),%a0
	move.l %a0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	lea ___addsf3,%a5
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	move.w %d0,5768(%a3)
	move.w 5960(%a3),%a0
	move.l %a0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,5960(%a3)
	move.w 6152(%a3),%a0
	move.l %a0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,6152(%a3)
	move.l %a2,__ZL11cloudTicks2
.L54:
	move.l __ZL11cloudTicks3,%d0
	addq.l #7,%d0
	cmp.l %a2,%d0
	jge .L18
	move.l sprite,%a3
	move.l #___floatsisf,%d2
	move.w 6344(%a3),%a0
	move.l %a0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	lea ___addsf3,%a5
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	move.w %d0,6344(%a3)
	move.w 6536(%a3),%a0
	move.l %a0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,6536(%a3)
	move.w 6728(%a3),%a0
	move.l %a0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,6728(%a3)
	move.l %a2,__ZL11cloudTicks3
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L66:
	move.l sprite,%a0
	move.w 8072(%a0),%d0
	cmp.w #-16,%d0
	jlt .L55
	cmp.w #319,%d0
	jgt .L55
	moveq #1,%d0
	move.l %d0,8068(%a0)
.L57:
	move.w 8264(%a0),%d0
	cmp.w #-16,%d0
	jlt .L58
	cmp.w #319,%d0
	jgt .L58
	moveq #1,%d0
	move.l %d0,8260(%a0)
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L21:
	move.l sprite,%a0
	move.w 7112(%a0),%d0
	cmp.w #-48,%d0
	jlt .L36
	cmp.w #319,%d0
	jgt .L36
	moveq #1,%d0
	move.l %d0,7108(%a0)
.L38:
	move.w 7304(%a0),%d0
	cmp.w #-48,%d0
	jlt .L39
	cmp.w #319,%d0
	jgt .L39
	moveq #1,%d0
	move.l %d0,7300(%a0)
.L41:
	move.w 7496(%a0),%d0
	cmp.w #-48,%d0
	jlt .L42
	cmp.w #319,%d0
	jgt .L42
	moveq #1,%d0
	move.l %d0,7492(%a0)
.L44:
	move.w 7688(%a0),%d0
	cmp.w #-48,%d0
	jlt .L45
	cmp.w #319,%d0
	jgt .L45
	moveq #1,%d0
	move.l %d0,7684(%a0)
.L47:
	move.w 12104(%a0),%d0
	cmp.w #-32,%d0
	jlt .L48
	cmp.w #319,%d0
	jgt .L48
	moveq #1,%d0
	move.l %d0,12100(%a0)
	move.w 12296(%a0),%d0
	cmp.w #-32,%d0
	jlt .L51
.L67:
	cmp.w #319,%d0
	jgt .L51
	moveq #1,%d0
	move.l %d0,12292(%a0)
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L36:
	moveq #-1,%d0
	move.l %d0,7108(%a0)
	jra .L38
.L55:
	moveq #-1,%d0
	move.l %d0,8068(%a0)
	jra .L57
.L48:
	moveq #-1,%d0
	move.l %d0,12100(%a0)
	move.w 12296(%a0),%d0
	cmp.w #-32,%d0
	jge .L67
.L51:
	moveq #-1,%d0
	move.l %d0,12292(%a0)
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L65:
	tst.w %d0
	jne .L18
	move.l sprite,%a0
	move.w 8648(%a0),%d0
	cmp.w #-16,%d0
	jlt .L25
	cmp.w #319,%d0
	jgt .L25
	moveq #1,%d0
	move.l %d0,8644(%a0)
.L27:
	move.w 8840(%a0),%d0
	cmp.w #-16,%d0
	jlt .L28
	cmp.w #319,%d0
	jgt .L28
	moveq #1,%d0
	move.l %d0,8836(%a0)
	jra .L47
.L25:
	moveq #-1,%d0
	move.l %d0,8644(%a0)
	jra .L27
.L28:
	moveq #-1,%d0
	move.l %d0,8836(%a0)
	jra .L47
.L45:
	moveq #-1,%d0
	move.l %d0,7684(%a0)
	jra .L47
.L42:
	moveq #-1,%d0
	move.l %d0,7492(%a0)
	jra .L44
.L39:
	moveq #-1,%d0
	move.l %d0,7300(%a0)
	jra .L41
.L58:
	moveq #-1,%d0
	move.l %d0,8260(%a0)
	movem.l -20(%fp),#15364
	unlk %fp
	rts
	.even
	.globl	__Z26stageGetFighterHitboxIndexv
__Z26stageGetFighterHitboxIndexv:
	link.w %fp,#0
	moveq #25,%d0
	unlk %fp
	rts
	.even
	.globl	__Z14stageGetHeightv
__Z14stageGetHeightv:
	link.w %fp,#0
	moveq #79,%d0
	not.b %d0
	cmp.w #2,__ZL12currentStage.l
	jeq .L71
	move.b #-16,%d0
.L71:
	unlk %fp
	rts
	.even
	.globl	__Z14stageGetStartXv
__Z14stageGetStartXv:
	link.w %fp,#0
	move.w __ZL12currentStage,%d0
	cmp.w #3,%d0
	jhi .L77
	and.l #65535,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	move.l %a0,%a1
	add.l #_CSWTCH.23,%a1
	move.l (%a1,%a0.l),%d0
	unlk %fp
	rts
.L77:
	moveq #120,%d0
	unlk %fp
	rts
	.even
	.globl	__Z9stageMovei
__Z9stageMovei:
	link.w %fp,#0
	move.l 8(%fp),%d1
	move.w __ZL12currentStage,%d0
	jne .L85
	move.l sprite,%a0
	add.w %d1,6920(%a0)
	add.w %d1,%d1
	add.w %d1,12104(%a0)
	add.w %d1,8648(%a0)
	add.w %d1,8840(%a0)
.L80:
	unlk %fp
	rts
.L85:
	cmp.w #1,%d0
	jne .L80
	move.l sprite,%a0
	add.w %d1,7112(%a0)
	add.w %d1,7304(%a0)
	add.w %d1,7496(%a0)
	add.w %d1,7688(%a0)
	add.w %d1,%d1
	add.w %d1,12104(%a0)
	add.w %d1,12296(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z19stageHideShowSpriteii
__Z19stageHideShowSpriteii:
	link.w %fp,#0
	move.l 8(%fp),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 8(%a0),%d0
	move.w %d0,%a1
	move.l 12(%fp),%d1
	neg.l %d1
	cmp.l %a1,%d1
	jgt .L88
	cmp.w #319,%d0
	jgt .L88
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L88:
	moveq #-1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z15stageResetTicksv
__Z15stageResetTicksv:
	link.w %fp,#0
	move.w raptor_ticks,%a0
	move.l %a0,__ZL11cloudTicks1
	move.l %a0,__ZL11cloudTicks2
	move.l %a0,__ZL11cloudTicks3
	unlk %fp
	rts
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
.lcomm __ZL11cloudTicks1,4
.lcomm __ZL11cloudTicks2,4
.lcomm __ZL11cloudTicks3,4
	.even
__ZL12currentStage:
	.word	3
	.text
	.even
_CSWTCH.23:
	.long	80
	.long	113
	.long	130
	.long	70
