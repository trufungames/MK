#NO_APP
	.text
	.even
	.globl	__Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
__Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii:
	link.w %fp,#-4
	movem.l #16188,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%d0
	move.l 16(%fp),%a0
	move.l 20(%fp),%a3
	move.l 24(%fp),%d2
	move.l 36(%fp),%d4
	move.l 40(%fp),%d3
	move.l 44(%fp),%d6
	move.w 14(%a1),%a2
	move.l %a2,%d5
	add.l %a2,%d5
	move.l %d5,%d1
	lsl.l #3,%d1
	sub.l %d5,%d1
	add.l %a3,%d1
	move.l %d1,18(%a1)
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
	move.l %a0,%d1
	add.l %a0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
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
	move.l 28(%fp),-(%sp)
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
	move.w 34(%fp),%a0
	sub.w %d5,%a0
	move.w %a0,%d5
	add.w %d0,%d5
	move.w %d5,8(%a2)
	movem.l -44(%fp),#15612
	unlk %fp
	rts
	.even
	.globl	__Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefji
__Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefji:
	link.w %fp,#0
	pea 1.w
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 32(%fp),-(%sp)
	move.l 28(%fp),-(%sp)
	move.l 24(%fp),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
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
	.globl	__Z8setFramejssssfjssssi
__Z8setFramejssssfjssssi:
	link.w %fp,#-8
	movem.l #16188,-(%sp)
	move.l 8(%fp),%d0
	move.l 28(%fp),%d3
	move.w 14(%fp),%d2
	move.w 18(%fp),%d4
	move.w 22(%fp),-2(%fp)
	move.w 26(%fp),-4(%fp)
	move.w 38(%fp),%d6
	move.w 42(%fp),-6(%fp)
	move.w 46(%fp),%d7
	move.w 50(%fp),%d5
	move.l %d0,%a2
	add.l %d0,%a2
	add.l %a2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	add.l %d0,%a2
	move.w %d2,%a0
	move.l %a0,28(%a2)
	move.w %d4,%a0
	move.l %a0,32(%a2)
	lea ___floatsisf,%a3
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	lea ___mulsf3,%a4
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	lea ___fixsfsi,%a5
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l %d0,104(%a2)
	muls.w %d2,%d4
	move.l %d4,(%sp)
	jsr (%a3)
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.l %d0,48(%a2)
	move.l 32(%fp),(%sp)
	jsr ___floatunsisf
	move.l %d0,%d4
	move.l 144(%a2),(%sp)
	move.w -4(%fp),%a0
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a3)
	lea ___addsf3,%a5
	move.l %d0,(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d4
	move.w -2(%fp),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixunssfsi
	addq.l #4,%sp
	move.l %d0,44(%a2)
	move.w 54(%fp),%d0
	muls.w %d0,%d7
	add.w %d6,%d7
	move.w %d7,8(%a2)
	add.w -6(%fp),%d5
	move.w %d5,12(%a2)
	moveq #-1,%d0
	cmp.l 52(%fp),%d0
	jeq .L16
	movem.l -48(%fp),#15612
	unlk %fp
	rts
.L16:
	moveq #48,%d0
	sub.w %d2,%d0
	move.w %d0,%d2
	add.w %d7,%d2
	move.w %d2,8(%a2)
	movem.l -48(%fp),#15612
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
	jlt .L23
	move.w %d1,12(%a2)
	moveq #-1,%d1
	cmp.l %d4,%d1
	jeq .L24
.L18:
	movem.l -48(%fp),#15612
	unlk %fp
	rts
.L24:
	moveq #48,%d1
	sub.w %d2,%d1
	move.w %d1,%d2
	add.w %d0,%d2
	move.w %d2,8(%a2)
	movem.l -48(%fp),#15612
	unlk %fp
	rts
.L23:
	clr.l __ZL5tempY
	clr.w %d1
	move.w %d1,12(%a2)
	moveq #-1,%d1
	cmp.l %d4,%d1
	jne .L18
	jra .L24
	.even
	.globl	__Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiiib
__Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiiib:
	link.w %fp,#-8
	movem.l #16188,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a3
	move.l 28(%fp),%d4
	move.b 35(%fp),-7(%fp)
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
	moveq #0,%d0
	move.w 10(%a3),%d0
	add.l 24(%fp),%d0
	move.l %d0,__ZL5tempY
	jlt .L32
.L28:
	move.w %d0,12(%a2)
	moveq #-1,%d0
	cmp.l %d4,%d0
	jeq .L33
.L26:
	movem.l -48(%fp),#15612
	unlk %fp
	rts
.L33:
	move.w 8(%a2),%a0
	sub.w %d2,%a0
	move.w %a0,%d2
	add.w #48,%d2
	move.w %d2,8(%a2)
	movem.l -48(%fp),#15612
	unlk %fp
	rts
.L32:
	tst.b -7(%fp)
	jeq .L28
	clr.l __ZL5tempY
	clr.w %d0
	move.w %d0,12(%a2)
	moveq #-1,%d0
	cmp.l %d4,%d0
	jne .L26
	jra .L33
	.even
	.globl	__Z22getAnimationFrameWidthP14AnimationFrames
__Z22getAnimationFrameWidthP14AnimationFrames:
	link.w %fp,#0
	move.w 14(%fp),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	move.l 8(%fp),%a0
	sub.l %d0,%a0
	move.w (%a0,%d1.l),%d0
	unlk %fp
	rts
	.even
	.globl	__Z19animationIsCompleteP14SpriteAnimators
__Z19animationIsCompleteP14SpriteAnimators:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w 14(%a0),%a1
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
	movem.l #15420,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 18(%fp),%d4
	move.b 23(%fp),%d3
	move.b 27(%fp),%d5
	pea 1.w
	clr.l -(%sp)
	clr.l -(%sp)
	pea 48.w
	move.l 8(%a2),-(%sp)
	move.l 4(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l (%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,%a1
	move.w 14(%a2),%d2
	move.w %a1,%a4
	move.w 12(%a2),%a5
	move.w %d2,%a0
	move.l %a0,%d1
	add.l %a0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	move.w 12(%a3,%d0.l),%d0
	and.l #65535,%d0
	add.l %a5,%d0
	lea (40,%sp),%sp
	cmp.l %a4,%d0
	jgt .L37
	tst.b %d3
	jne .L39
	subq.w #1,%d2
	move.w %d2,14(%a2)
	jlt .L45
.L40:
	move.w %a1,12(%a2)
.L37:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L39:
	addq.w #1,%d2
	move.w %d2,14(%a2)
	cmp.w %d4,%d2
	jlt .L40
	tst.b %d5
	jeq .L42
.L43:
	clr.w 14(%a2)
	move.w %a1,12(%a2)
	jra .L37
.L45:
	tst.b %d5
	jeq .L43
.L42:
	subq.w #1,%d4
	move.w %d4,14(%a2)
	move.w %a1,12(%a2)
	jra .L37
	.even
	.globl	__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 18(%fp),%d4
	move.b 23(%fp),%d3
	move.b 27(%fp),%d5
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
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l (%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,%a1
	move.w 14(%a2),%d2
	move.w %a1,%a4
	move.w 12(%a2),%a5
	move.w %d2,%a0
	move.l %a0,%d1
	add.l %a0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	move.w 12(%a3,%d0.l),%d0
	and.l #65535,%d0
	add.l %a5,%d0
	lea (40,%sp),%sp
	cmp.l %a4,%d0
	jgt .L47
	tst.b %d3
	jne .L49
	subq.w #1,%d2
	move.w %d2,14(%a2)
	jlt .L55
.L50:
	move.w %a1,12(%a2)
.L47:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L49:
	addq.w #1,%d2
	move.w %d2,14(%a2)
	cmp.w %d4,%d2
	jlt .L50
	tst.b %d5
	jeq .L52
.L53:
	clr.w 14(%a2)
	move.w %a1,12(%a2)
	jra .L47
.L55:
	tst.b %d5
	jeq .L53
.L52:
	subq.w #1,%d4
	move.w %d4,14(%a2)
	move.w %a1,12(%a2)
	jra .L47
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
