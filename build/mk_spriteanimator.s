#NO_APP
	.text
	.even
	.globl	__Z12animateFramejjP14AnimationFramefjiiii
__Z12animateFramejjP14AnimationFramefjiiii:
	link.w %fp,#-4
	movem.l #16188,-(%sp)
	move.l 8(%fp),%d0
	move.l 20(%fp),%d2
	move.l 32(%fp),%d4
	move.l 36(%fp),%d3
	move.l 40(%fp),%d6
	move.l %d0,%a2
	add.l %d0,%a2
	add.l %a2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	add.l %d0,%a2
	tst.l %d4
	jne .L3
	move.w 8(%a2),%d4
	ext.l %d4
.L3:
	tst.l %d3
	jne .L4
	move.w 12(%a2),%d3
	ext.l %d3
.L4:
	move.l 12(%fp),%d0
	lsl.l #4,%d0
	move.l 16(%fp),%a3
	add.l %d0,%a3
	move.w (%a3),%d5
	moveq #0,%d0
	move.w %d5,%d0
	move.l %d0,28(%a2)
	move.w 2(%a3),%d1
	moveq #0,%d7
	move.w %d1,%d7
	move.l %d7,32(%a2)
	lea ___floatsisf,%a4
	move.l %d0,-(%sp)
	move.l %d1,-4(%fp)
	jsr (%a4)
	lea ___mulsf3,%a5
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l #___fixsfsi,%d7
	move.l %d0,-(%sp)
	move.l %d7,%a0
	jsr (%a0)
	move.l %d0,104(%a2)
	move.l -4(%fp),%d1
	mulu.w %d5,%d1
	move.l %d1,(%sp)
	jsr (%a4)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d7,%a0
	jsr (%a0)
	move.l %d0,48(%a2)
	moveq #0,%d0
	move.w 4(%a3),%d0
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	moveq #0,%d0
	move.w 6(%a3),%d0
	move.l 144(%a2),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsi3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l 24(%fp),-(%sp)
	jsr ___floatunsisf
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixunssfsi
	addq.l #4,%sp
	move.l %d0,44(%a2)
	move.w 8(%a3),%d0
	muls.w %d6,%d0
	add.w %d4,%d0
	move.w %d0,8(%a2)
	moveq #0,%d1
	move.w 10(%a3),%d1
	add.l %d1,%d3
	move.l %d3,__ZL5tempY
	moveq #7,%d1
	cmp.l %d3,%d1
	jlt .L6
	moveq #8,%d1
	move.l %d1,__ZL5tempY
	moveq #8,%d3
.L6:
	move.w %d3,12(%a2)
	moveq #-1,%d1
	cmp.l %d6,%d1
	jeq .L9
	movem.l -44(%fp),#15612
	unlk %fp
	rts
.L9:
	move.w 30(%fp),%a0
	sub.w %d5,%a0
	move.w %a0,%d5
	add.w %d0,%d5
	move.w %d5,8(%a2)
	movem.l -44(%fp),#15612
	unlk %fp
	rts
	.even
	.globl	__Z12animateFramejjP14AnimationFramefji
__Z12animateFramejjP14AnimationFramefji:
	link.w %fp,#0
	pea 1.w
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 28(%fp),-(%sp)
	move.l 24(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z8setFramejssssfj
__Z8setFramejssssfj:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d0
	move.l 28(%fp),%d2
	move.w 14(%fp),%d3
	move.w 18(%fp),%d4
	move.w 22(%fp),%d5
	move.w 26(%fp),%d6
	move.l %d0,%a2
	add.l %d0,%a2
	add.l %a2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	add.l %d0,%a2
	move.w %d3,%a0
	move.l %a0,28(%a2)
	move.w %d4,%a0
	move.l %a0,32(%a2)
	lea ___floatsisf,%a3
	move.w %d3,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	lea ___mulsf3,%a4
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	lea ___fixsfsi,%a5
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l %d0,104(%a2)
	muls.w %d4,%d3
	move.l %d3,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.l %d0,48(%a2)
	move.l 32(%fp),(%sp)
	jsr ___floatunsisf
	move.l %d0,%d3
	move.l 144(%a2),(%sp)
	move.w %d6,%a0
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	lea ___addsf3,%a5
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d3
	move.w %d5,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixunssfsi
	addq.l #4,%sp
	move.l %d0,44(%a2)
	movem.l -36(%fp),#15484
	unlk %fp
	rts
	.even
	.globl	__Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
__Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii:
	link.w %fp,#-8
	movem.l #16188,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a3
	move.l 28(%fp),%d4
	move.l 8(%a0),-4(%fp)
	move.l 4(%a0),%d3
	move.w 6(%a3),%d7
	ext.l %d7
	move.w 4(%a3),-6(%fp)
	move.w 2(%a3),%d6
	move.w (%a3),%d2
	move.l %d0,%a2
	add.l %d0,%a2
	add.l %a2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	add.l %d0,%a2
	move.w %d2,%a0
	move.l %a0,28(%a2)
	move.w %d6,%a0
	move.l %a0,32(%a2)
	lea ___floatsisf,%a4
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea ___mulsf3,%a5
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l #___fixsfsi,%d5
	move.l %d0,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	move.l %d0,104(%a2)
	muls.w %d2,%d6
	move.l %d6,(%sp)
	jsr (%a4)
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	move.l %d0,48(%a2)
	move.w -6(%fp),%a0
	move.l %a0,(%sp)
	jsr (%a4)
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d3
	move.l -4(%fp),-(%sp)
	jsr ___floatunsisf
	lea ___addsf3,%a5
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d3
	move.l 144(%a2),-(%sp)
	move.l %d7,-(%sp)
	jsr ___mulsi3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixunssfsi
	addq.l #4,%sp
	move.l %d0,44(%a2)
	move.w 8(%a3),%d0
	muls.w %d4,%d0
	add.w 22(%fp),%d0
	move.w %d0,8(%a2)
	moveq #0,%d1
	move.w 10(%a3),%d1
	add.l 24(%fp),%d1
	move.l %d1,__ZL5tempY
	jlt .L18
	move.w %d1,12(%a2)
	moveq #-1,%d1
	cmp.l %d4,%d1
	jeq .L19
.L13:
	movem.l -48(%fp),#15612
	unlk %fp
	rts
.L19:
	moveq #48,%d1
	sub.w %d2,%d1
	move.w %d1,%d2
	add.w %d0,%d2
	move.w %d2,8(%a2)
	movem.l -48(%fp),#15612
	unlk %fp
	rts
.L18:
	clr.l __ZL5tempY
	clr.w %d1
	move.w %d1,12(%a2)
	moveq #-1,%d1
	cmp.l %d4,%d1
	jne .L13
	jra .L19
	.even
	.globl	__Z22getAnimationFrameWidthP14AnimationFrames
__Z22getAnimationFrameWidthP14AnimationFrames:
	link.w %fp,#0
	move.w 14(%fp),%d0
	ext.l %d0
	lsl.l #4,%d0
	move.l 8(%fp),%a0
	move.w (%a0,%d0.l),%d0
	unlk %fp
	rts
	.even
	.globl	__Z19animationIsCompleteP14SpriteAnimators
__Z19animationIsCompleteP14SpriteAnimators:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w 16(%a0),%a1
	move.w 14(%fp),%a0
	subq.l #1,%a0
	cmp.l %a1,%a0
	sle %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb:
	link.w %fp,#0
	movem.l #14384,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 18(%fp),%d3
	move.b 23(%fp),%d2
	move.b 27(%fp),%d4
	move.w 16(%a2),%d0
	ext.l %d0
	move.l %d0,%d1
	lsl.l #4,%d1
	add.l %a3,%d1
	move.l %d1,20(%a2)
	pea 1.w
	clr.l -(%sp)
	clr.l -(%sp)
	pea 48.w
	move.l 8(%a2),-(%sp)
	move.l 4(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.l %d0,-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%d1
	move.w 16(%a2),%a0
	move.w %d1,%a1
	move.w %a0,%d0
	ext.l %d0
	lsl.l #4,%d0
	move.l 12(%a3,%d0.l),%d0
	add.l 12(%a2),%d0
	lea (36,%sp),%sp
	cmp.l %a1,%d0
	jhi .L23
	tst.b %d2
	jne .L25
	move.w %a0,%d0
	subq.w #1,%d0
	move.w %d0,16(%a2)
	jlt .L31
.L26:
	move.w %d1,%a0
	move.l %a0,12(%a2)
.L23:
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L25:
	addq.w #1,%a0
	move.w %a0,16(%a2)
	cmp.w %a0,%d3
	jgt .L26
	tst.b %d4
	jeq .L28
.L29:
	clr.w 16(%a2)
	move.w %d1,%a0
	move.l %a0,12(%a2)
	jra .L23
.L31:
	tst.b %d4
	jeq .L29
.L28:
	subq.w #1,%d3
	move.w %d3,16(%a2)
	move.w %d1,%a0
	move.l %a0,12(%a2)
	jra .L23
	.even
	.globl	__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss:
	link.w %fp,#0
	movem.l #14384,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 18(%fp),%d3
	move.b 23(%fp),%d2
	move.b 27(%fp),%d4
	move.w 16(%a2),%d0
	ext.l %d0
	move.l %d0,%d1
	lsl.l #4,%d1
	add.l %a3,%d1
	move.l %d1,20(%a2)
	move.w 38(%fp),%a0
	move.l %a0,-(%sp)
	move.w 34(%fp),%a0
	move.l %a0,-(%sp)
	move.w 30(%fp),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a2),-(%sp)
	move.l 4(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.l %d0,-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%d1
	move.w 16(%a2),%a0
	move.w %d1,%a1
	move.w %a0,%d0
	ext.l %d0
	lsl.l #4,%d0
	move.l 12(%a3,%d0.l),%d0
	add.l 12(%a2),%d0
	lea (36,%sp),%sp
	cmp.l %a1,%d0
	jhi .L33
	tst.b %d2
	jne .L35
	move.w %a0,%d0
	subq.w #1,%d0
	move.w %d0,16(%a2)
	jlt .L41
.L36:
	move.w %d1,%a0
	move.l %a0,12(%a2)
.L33:
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L35:
	addq.w #1,%a0
	move.w %a0,16(%a2)
	cmp.w %a0,%d3
	jgt .L36
	tst.b %d4
	jeq .L38
.L39:
	clr.w 16(%a2)
	move.w %d1,%a0
	move.l %a0,12(%a2)
	jra .L33
.L41:
	tst.b %d4
	jeq .L39
.L38:
	subq.w #1,%d3
	move.w %d3,16(%a2)
	move.w %d1,%a0
	move.l %a0,12(%a2)
	jra .L33
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
.lcomm __ZL5tempY,4
