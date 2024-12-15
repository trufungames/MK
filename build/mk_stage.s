#NO_APP
	.text
	.even
	.globl	__Z9stageInitv
__Z9stageInitv:
	link.w %fp,#0
	clr.l __ZL11cloudTicks1
	clr.l __ZL11cloudTicks2
	clr.l __ZL11cloudTicks3
	clr.w __ZL13monksAnimator+14
	move.w raptor_ticks,__ZL13monksAnimator+12
	unlk %fp
	rts
	.even
	.globl	__Z10stageResetv
__Z10stageResetv:
	link.w %fp,#0
	move.w #2,__ZL12currentStage
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
	cmp.w #6,%d0
	jle .L4
	clr.w __ZL12currentStage
.L4:
	unlk %fp
	rts
	.even
	.globl	__Z17stageLoadVsBattlev
__Z17stageLoadVsBattlev:
	link.w %fp,#0
	cmp.w #6,__ZL12currentStage.l
	jhi .L8
	moveq #0,%d0
	move.w __ZL12currentStage,%d0
	add.l %d0,%d0
	move.w .L16(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L16:
	.word .L10-.L16
	.word .L11-.L16
	.word .L12-.L16
	.word .L13-.L16
	.word .L13-.L16
	.word .L14-.L16
	.word .L15-.L16
.L15:
	pea 16.w
	pea 1.w
	move.l #8502000,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8500560,4844(%a0)
	lea (12,%sp),%sp
.L8:
	unlk %fp
	rts
.L14:
	pea 16.w
	pea 1.w
	move.l #8500528,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8499088,4844(%a0)
	lea (12,%sp),%sp
	unlk %fp
	rts
.L10:
	pea 16.w
	pea 1.w
	move.l #8494640,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8493200,4844(%a0)
	lea (12,%sp),%sp
	unlk %fp
	rts
.L11:
	pea 16.w
	pea 1.w
	move.l #8496112,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8494672,4844(%a0)
	lea (12,%sp),%sp
	unlk %fp
	rts
.L12:
	pea 16.w
	pea 1.w
	move.l #8499056,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8497616,4844(%a0)
	lea (12,%sp),%sp
	unlk %fp
	rts
.L13:
	pea 16.w
	pea 1.w
	move.l #8497584,-(%sp)
	jsr jsfLoadClut
	move.l sprite,%a0
	move.l #8496144,4844(%a0)
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
	jeq .L22
	cmp.w #3,%d0
	jeq .L23
	tst.w %d0
	jne .L19
	jsr __Z14matchHasWinnerv
	tst.b %d0
	jeq .L24
	pea 1.w
	pea 1.w
	pea 3.w
	pea __ZL14monkClapFrames
	pea __ZL13monksAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
.L19:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L23:
	move.w raptor_ticks,%a2
	move.l __ZL11cloudTicks1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a2
	jle .L25
	move.l sprite,%a3
	move.l #___floatsisf,%d2
	move.w 5576(%a3),%a0
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
	move.w %d0,5576(%a3)
	move.w 5768(%a3),%a0
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
	move.w %d0,5768(%a3)
	move.l %a2,__ZL11cloudTicks1
.L25:
	move.l __ZL11cloudTicks2,%d0
	addq.l #3,%d0
	cmp.l %a2,%d0
	jge .L26
	move.l sprite,%a3
	move.l #___floatsisf,%d2
	move.w 5960(%a3),%a0
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
	move.w %d0,6152(%a3)
	move.w 6344(%a3),%a0
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
	move.w %d0,6344(%a3)
	move.l %a2,__ZL11cloudTicks2
.L26:
	move.l __ZL11cloudTicks3,%d0
	addq.l #7,%d0
	cmp.l %a2,%d0
	jge .L19
	move.l sprite,%a3
	move.l #___floatsisf,%d2
	move.w 6536(%a3),%a0
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
	move.w %d0,6728(%a3)
	move.w 6920(%a3),%a0
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
	move.w %d0,6920(%a3)
	move.l %a2,__ZL11cloudTicks3
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L22:
	move.w raptor_ticks,%a2
	move.l __ZL11cloudTicks1,%d0
	addq.l #3,%d0
	cmp.l %d0,%a2
	jle .L19
	move.l sprite,%a3
	move.l #___floatsisf,%d2
	move.w 7112(%a3),%a0
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
	move.w %d0,7112(%a3)
	move.w 7304(%a3),%a0
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
	move.w %d0,7304(%a3)
	move.l %a2,__ZL11cloudTicks1
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L24:
	pea 1.w
	pea 1.w
	pea 8.w
	pea __ZL10monkFrames
	pea __ZL13monksAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
	.even
	.globl	__Z26stageGetFighterHitboxIndexv
__Z26stageGetFighterHitboxIndexv:
	link.w %fp,#0
	moveq #34,%d0
	unlk %fp
	rts
	.even
	.globl	__Z14stageGetHeightv
__Z14stageGetHeightv:
	link.w %fp,#0
	moveq #79,%d0
	not.b %d0
	cmp.w #3,__ZL12currentStage.l
	jeq .L31
	move.b #-16,%d0
.L31:
	unlk %fp
	rts
	.even
	.globl	__Z14stageGetStartXv
__Z14stageGetStartXv:
	link.w %fp,#0
	move.w __ZL12currentStage,%d1
	subq.w #2,%d1
	moveq #63,%d0
	not.b %d0
	cmp.w #4,%d1
	jhi .L36
	and.l #65535,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	move.l %a0,%a1
	add.l #_CSWTCH.27,%a1
	move.l (%a1,%a0.l),%d0
.L36:
	unlk %fp
	rts
	.even
	.globl	__Z14stageGetStartYv
__Z14stageGetStartYv:
	link.w %fp,#0
	moveq #0,%d0
	unlk %fp
	rts
	.even
	.globl	__Z9stageMoveii
__Z9stageMoveii:
	link.w %fp,#0
	move.l 8(%fp),%d1
	move.w __ZL12currentStage,%d0
	cmp.w #1,%d0
	jeq .L44
	jle .L49
	cmp.w #2,%d0
	jeq .L45
	cmp.w #5,%d0
	jeq .L50
.L41:
	unlk %fp
	rts
.L45:
	move.l sprite,%a0
	add.w %d1,7688(%a0)
	add.w %d1,7880(%a0)
	add.w %d1,8072(%a0)
	add.w %d1,8264(%a0)
	add.w %d1,%d1
	add.w %d1,13832(%a0)
	add.w %d1,14024(%a0)
	unlk %fp
	rts
.L50:
	move.l sprite,%a0
	add.w %d1,%d1
	add.w %d1,10568(%a0)
	unlk %fp
	rts
.L44:
	move.l sprite,%a0
	add.w %d1,%d1
	add.w %d1,13832(%a0)
	add.w %d1,9800(%a0)
	add.w %d1,9992(%a0)
	unlk %fp
	rts
.L49:
	tst.w %d0
	jne .L41
	move.l sprite,%a0
	add.w %d1,9224(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z19stageHideShowSpriteii
__Z19stageHideShowSpriteii:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z15stageResetTicksv
__Z15stageResetTicksv:
	link.w %fp,#0
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l %a0,__ZL11cloudTicks1
	move.l %a0,__ZL11cloudTicks2
	move.l %a0,__ZL11cloudTicks3
	move.w %d0,__ZL13monksAnimator+12
	unlk %fp
	rts
	.even
	.globl	__Z19stagePositionAssetsv
__Z19stagePositionAssetsv:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.w __ZL12currentStage,%d0
	cmp.w #1,%d0
	jeq .L57
	jle .L62
	cmp.w #2,%d0
	jeq .L58
	cmp.w #5,%d0
	jeq .L63
.L54:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L58:
	move.l sprite,%a3
	lea __Z17cameraGetParalaxXv,%a2
	jsr (%a2)
	move.w #128,%d1
	sub.w %d0,%d1
	move.w %d1,7688(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #220,%d1
	sub.w %d0,%d1
	move.w %d1,7880(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #340,%d1
	sub.w %d0,%d1
	move.w %d1,8072(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #416,%d1
	sub.w %d0,%d1
	move.w %d1,8264(%a3)
	move.l sprite,%a3
	lea __Z10cameraGetXv,%a2
	jsr (%a2)
	moveq #10,%d1
	sub.w %d0,%d1
	move.w %d1,13832(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #730,%d1
	sub.w %d0,%d1
	move.w %d1,14024(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #135,%d1
	sub.w %d0,%d1
	move.w %d1,9800(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #338,%d1
	sub.w %d0,%d1
	move.w %d1,9992(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #428,%d1
	sub.w %d0,%d1
	move.w %d1,10184(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #639,%d1
	sub.w %d0,%d1
	move.w %d1,10376(%a3)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L63:
	move.l sprite,%a2
	jsr __Z10cameraGetXv
	move.w #352,%d1
	sub.w %d0,%d1
	move.w %d1,10568(%a2)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L57:
	move.l sprite,%a3
	lea __Z10cameraGetXv,%a2
	jsr (%a2)
	moveq #10,%d1
	sub.w %d0,%d1
	move.w %d1,13832(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #137,%d1
	sub.w %d0,%d1
	move.w %d1,9800(%a3)
	move.l sprite,%a3
	jsr (%a2)
	move.w #660,%d1
	sub.w %d0,%d1
	move.w %d1,9992(%a3)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L62:
	tst.w %d0
	jne .L54
	move.l sprite,%a2
	jsr __Z17cameraGetParalaxXv
	neg.w %d0
	move.w %d0,9224(%a2)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z23stageGetFatalityPalettev
__Z23stageGetFatalityPalettev:
	link.w %fp,#0
	move.w __ZL12currentStage,%d0
	cmp.w #3,%d0
	jhi .L67
	and.l #65535,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	move.l %a0,%a1
	add.l #_CSWTCH.29,%a1
	move.l (%a1,%a0.l),%d0
	unlk %fp
	rts
.L67:
	moveq #96,%d0
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
__ZL13monksAnimator:
	.long	48
	.long	1056964608
	.long	12499376
	.word	0
	.word	0
	.word	0
	.skip 4
	.even
__ZL12currentStage:
	.word	2
	.even
__ZL14monkClapFrames:
	.word	576
	.word	32
	.word	0
	.word	160
	.word	0
	.word	0
	.word	6
	.word	576
	.word	32
	.word	0
	.word	192
	.word	0
	.word	0
	.word	6
	.word	576
	.word	32
	.word	0
	.word	224
	.word	0
	.word	0
	.word	6
	.even
__ZL10monkFrames:
	.word	576
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	10
	.word	576
	.word	32
	.word	0
	.word	32
	.word	0
	.word	0
	.word	10
	.word	576
	.word	32
	.word	0
	.word	64
	.word	0
	.word	0
	.word	10
	.word	576
	.word	32
	.word	0
	.word	96
	.word	0
	.word	0
	.word	10
	.word	576
	.word	32
	.word	0
	.word	128
	.word	0
	.word	0
	.word	10
	.word	576
	.word	32
	.word	0
	.word	96
	.word	0
	.word	0
	.word	10
	.word	576
	.word	32
	.word	0
	.word	64
	.word	0
	.word	0
	.word	10
	.word	576
	.word	32
	.word	0
	.word	32
	.word	0
	.word	0
	.word	10
	.text
	.even
_CSWTCH.27:
	.long	224
	.long	256
	.long	256
	.long	224
	.long	144
	.even
_CSWTCH.29:
	.long	128
	.long	96
	.long	96
	.long	80
