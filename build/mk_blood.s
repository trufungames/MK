#NO_APP
	.text
	.even
	.globl	__Z9bloodInitv
__Z9bloodInitv:
	link.w %fp,#0
	move.l #180,_bloodStayDelay
	moveq #3,%d0
	move.l %d0,_updateTicks
	move.l #0x40c00000,_bloodSpeed
	move.l #0x40000000,_gravity
	move.l #0xc1880000,_bloodDropMomentumStart
	clr.b _bloodSpray1InUse
	clr.b _bloodSpray2InUse
	clr.b _bloodGlobInUse
	move.b #1,%d0
	move.l %d0,_bloodDirection
	unlk %fp
	rts
	.even
	.globl	__Z11bloodUpdateP12SoundHandler
__Z11bloodUpdateP12SoundHandler:
	link.w %fp,#-4
	movem.l #16188,-(%sp)
	tst.b _bloodSpray1InUse
	jne .L35
.L3:
	tst.b _bloodSpray2InUse
	jne .L36
.L6:
	tst.b _bloodGlobInUse
	jne .L37
.L7:
	lea _bloodDrops+8,%a3
	lea _bloodDrops,%a2
	move.l #_bloodDrops+18,%d2
	lea _bloodDrops+10,%a5
	lea _bloodDrops+14,%a4
	move.l #__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb,%d5
	move.l #___addsf3,%d6
	move.l #___fixsfsi,%d7
.L12:
	tst.b (%a3)
	jne .L38
.L8:
	lea (22,%a3),%a3
	lea (22,%a2),%a2
	moveq #22,%d0
	add.l %d0,%d2
	lea (22,%a5),%a5
	lea (22,%a4),%a4
	cmp.l #_bloodDrops+176,%a2
	jne .L12
.L52:
	tst.b _bloodPools+8
	jne .L39
	tst.b _bloodPools+18
	jne .L40
.L14:
	tst.b _bloodPools+28
	jne .L41
.L15:
	tst.b _bloodPools+38
	jne .L42
.L16:
	tst.b _bloodPools+48
	jne .L43
.L17:
	tst.b _bloodPools+58
	jne .L44
.L18:
	tst.b _bloodPools+68
	jne .L45
.L19:
	tst.b _bloodPools+78
	jne .L46
.L20:
	tst.b _bloodSquirts+8
	jne .L47
.L21:
	tst.b _bloodSquirts+18
	jne .L48
.L22:
	tst.b _bloodSquirts+28
	jne .L49
.L23:
	tst.b _bloodSquirts+38
	jne .L50
.L2:
	movem.l -44(%fp),#15612
	unlk %fp
	rts
.L38:
	pea 1.w
	moveq #-1,%d0
	cmp.l (%a4),%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	pea 8.w
	pea _bloodDropFrames
	move.l 4(%a2),-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	move.w raptor_ticks,%d3
	ext.l %d3
	move.l %d3,%a0
	sub.l (%a5),%a0
	lea (20,%sp),%sp
	cmp.l _updateTicks.l,%a0
	jlt .L8
	move.l (%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 2(%a4),%d0
	muls.w _bloodSpeedRnd+2,%d0
	sub.w %d0,8(%a0)
	move.l %d2,%a1
	move.l (%a1),%d4
	move.w 12(%a0),%a1
	move.l %a1,-(%sp)
	move.l %a0,-4(%fp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l %d4,-(%sp)
	move.l %d6,%a1
	jsr (%a1)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d7,%a1
	jsr (%a1)
	addq.l #4,%sp
	move.l -4(%fp),%a0
	move.w %d0,12(%a0)
	cmp.w #188,%d0
	jgt .L51
	move.l _gravity,-(%sp)
	move.l %d4,-(%sp)
	move.l %d6,%a1
	jsr (%a1)
	addq.l #8,%sp
	move.l %d2,%a0
	move.l %d0,(%a0)
	move.l %d3,(%a5)
.L54:
	lea (22,%a3),%a3
	lea (22,%a2),%a2
	moveq #22,%d0
	add.l %d0,%d2
	lea (22,%a5),%a5
	lea (22,%a4),%a4
	cmp.l #_bloodDrops+176,%a2
	jne .L12
	jra .L52
.L51:
	jsr RAPTOR_random
	move.l sprite,%a0
	move.l (%a2),%d1
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%d1
	lsl.l #6,%d1
	move.w 8(%a0,%d1.l),%d1
	tst.b _bloodPools+8
	jeq .L26
	tst.b _bloodPools+18
	jeq .L27
	tst.b _bloodPools+28
	jeq .L28
	tst.b _bloodPools+38
	jeq .L29
	tst.b _bloodPools+48
	jeq .L30
	tst.b _bloodPools+58
	jeq .L31
	tst.b _bloodPools+68
	jeq .L32
	tst.b _bloodPools+78
	jeq .L53
	move.l 8(%fp),-(%sp)
	jsr __Z8sfxBloodP12SoundHandler
	move.l (%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.b (%a3)
	move.l %d2,%a0
	move.l (%a0),%d4
	move.w raptor_ticks,%d3
	ext.l %d3
	addq.l #4,%sp
.L57:
	move.l _gravity,-(%sp)
	move.l %d4,-(%sp)
	move.l %d6,%a1
	jsr (%a1)
	addq.l #8,%sp
	move.l %d2,%a0
	move.l %d0,(%a0)
	move.l %d3,(%a5)
	jra .L54
.L37:
	pea 1.w
	pea 1.w
	pea 6.w
	pea _bloodGlobFrames
	pea _bloodGlobAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	pea 6.w
	pea _bloodGlobAnimator
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L7
	clr.b _bloodGlobInUse
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,7108(%a0)
	lea _bloodDrops+8,%a3
	lea _bloodDrops,%a2
	move.l #_bloodDrops+18,%d2
	lea _bloodDrops+10,%a5
	lea _bloodDrops+14,%a4
	move.l #__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb,%d5
	move.l #___addsf3,%d6
	move.l #___fixsfsi,%d7
	jra .L12
.L36:
	pea 1.w
	pea 1.w
	pea 5.w
	pea _bloodSprayFrames
	pea _bloodSpray2Animator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	pea 5.w
	pea _bloodSpray2Animator
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L6
	clr.b _bloodSpray2InUse
	move.l sprite,%a0
	moveq #-1,%d0
	move.l %d0,6916(%a0)
	tst.b _bloodGlobInUse
	jeq .L7
	jra .L37
.L35:
	pea 1.w
	pea 1.w
	pea 5.w
	pea _bloodSprayFrames
	pea _bloodSpray1Animator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	moveq #3,%d0
	cmp.l _bloodSpray1Animator+16.l,%d0
	jeq .L55
.L4:
	pea 5.w
	pea _bloodSpray1Animator
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L3
.L56:
	clr.b _bloodSpray1InUse
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,6724(%a0)
	tst.b _bloodSpray2InUse
	jeq .L6
	jra .L36
.L50:
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	pea _bloodSquirtFrames
	move.l _bloodSquirts+34,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	pea 6.w
	move.l _bloodSquirts+34,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L2
	clr.b _bloodSquirts+38
	move.l _bloodSquirts+30,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	movem.l -44(%fp),#15612
	unlk %fp
	rts
.L48:
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	pea _bloodSquirtFrames
	move.l _bloodSquirts+14,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	pea 6.w
	move.l _bloodSquirts+14,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L22
	clr.b _bloodSquirts+18
	move.l _bloodSquirts+10,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b _bloodSquirts+28
	jeq .L23
	jra .L49
.L47:
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	pea _bloodSquirtFrames
	move.l _bloodSquirts+4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	pea 6.w
	move.l _bloodSquirts+4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L21
	clr.b _bloodSquirts+8
	move.l _bloodSquirts,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b _bloodSquirts+18
	jeq .L22
	jra .L48
.L49:
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	pea _bloodSquirtFrames
	move.l _bloodSquirts+24,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	pea 6.w
	move.l _bloodSquirts+24,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L23
	clr.b _bloodSquirts+28
	move.l _bloodSquirts+20,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b _bloodSquirts+38
	jeq .L2
	jra .L50
.L46:
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	pea _bloodPoolFrames
	move.l _bloodPools+74,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	tst.b _bloodSquirts+8
	jeq .L21
	jra .L47
.L45:
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	pea _bloodPoolFrames
	move.l _bloodPools+64,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	tst.b _bloodPools+78
	jeq .L20
	jra .L46
.L44:
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	pea _bloodPoolFrames
	move.l _bloodPools+54,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	tst.b _bloodPools+68
	jeq .L19
	jra .L45
.L43:
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	pea _bloodPoolFrames
	move.l _bloodPools+44,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	tst.b _bloodPools+58
	jeq .L18
	jra .L44
.L42:
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	pea _bloodPoolFrames
	move.l _bloodPools+34,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	tst.b _bloodPools+48
	jeq .L17
	jra .L43
.L41:
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	pea _bloodPoolFrames
	move.l _bloodPools+24,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	tst.b _bloodPools+38
	jeq .L16
	jra .L42
.L40:
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	pea _bloodPoolFrames
	move.l _bloodPools+14,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	tst.b _bloodPools+28
	jeq .L15
	jra .L41
.L39:
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	pea _bloodPoolFrames
	move.l _bloodPools+4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	tst.b _bloodPools+18
	jeq .L14
	jra .L40
.L55:
	tst.b _bloodSpray2InUse
	jne .L4
	move.b #1,_bloodSpray2InUse
	move.l sprite,%a0
	move.l _bloodDirection,%d1
	move.w %d1,%d0
	move.w %d1,%d2
	muls.w #-12,%d2
	add.w 6728(%a0),%d2
	move.w %d2,6920(%a0)
	neg.w %d0
	add.w %d0,%d0
	add.w %d0,%d0
	add.w 6732(%a0),%d0
	move.w %d0,6924(%a0)
	moveq #1,%d0
	cmp.l %d1,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,6936(%a0)
	moveq #1,%d0
	move.l %d0,6916(%a0)
	clr.l _bloodSpray2Animator+16
	pea 5.w
	pea _bloodSpray1Animator
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L3
	jra .L56
.L53:
	move.w #7,%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	lea _bloodPools+8,%a1
	move.b #1,(%a1,%d3.l)
	lea _bloodPools,%a1
	move.l (%a1,%d3.l),%a1
	move.l %a1,%d4
	add.l %a1,%d4
	add.l %a1,%d4
	lsl.l #6,%d4
	add.l %d4,%a0
	move.w %d1,8(%a0)
	moveq #8,%d1
	and.l %d1,%d0
	add.w #188,%d0
	move.w %d0,12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d3,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d3
	move.l %d3,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %a1,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
.L58:
	move.l 8(%fp),-(%sp)
	jsr __Z8sfxBloodP12SoundHandler
	move.l (%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.b (%a3)
	move.l %d2,%a0
	move.l (%a0),%d4
	move.w raptor_ticks,%d3
	ext.l %d3
	addq.l #4,%sp
	jra .L57
.L26:
	sub.l %a1,%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	lea _bloodPools+8,%a1
	move.b #1,(%a1,%d3.l)
	lea _bloodPools,%a1
	move.l (%a1,%d3.l),%a1
	move.l %a1,%d4
	add.l %a1,%d4
	add.l %a1,%d4
	lsl.l #6,%d4
	add.l %d4,%a0
	move.w %d1,8(%a0)
	moveq #8,%d1
	and.l %d1,%d0
	add.w #188,%d0
	move.w %d0,12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d3,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d3
	move.l %d3,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %a1,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L58
.L27:
	move.w #1,%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	lea _bloodPools+8,%a1
	move.b #1,(%a1,%d3.l)
	lea _bloodPools,%a1
	move.l (%a1,%d3.l),%a1
	move.l %a1,%d4
	add.l %a1,%d4
	add.l %a1,%d4
	lsl.l #6,%d4
	add.l %d4,%a0
	move.w %d1,8(%a0)
	moveq #8,%d1
	and.l %d1,%d0
	add.w #188,%d0
	move.w %d0,12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d3,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d3
	move.l %d3,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %a1,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L58
.L29:
	move.w #3,%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	lea _bloodPools+8,%a1
	move.b #1,(%a1,%d3.l)
	lea _bloodPools,%a1
	move.l (%a1,%d3.l),%a1
	move.l %a1,%d4
	add.l %a1,%d4
	add.l %a1,%d4
	lsl.l #6,%d4
	add.l %d4,%a0
	move.w %d1,8(%a0)
	moveq #8,%d1
	and.l %d1,%d0
	add.w #188,%d0
	move.w %d0,12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d3,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d3
	move.l %d3,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %a1,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L58
.L28:
	move.w #2,%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	lea _bloodPools+8,%a1
	move.b #1,(%a1,%d3.l)
	lea _bloodPools,%a1
	move.l (%a1,%d3.l),%a1
	move.l %a1,%d4
	add.l %a1,%d4
	add.l %a1,%d4
	lsl.l #6,%d4
	add.l %d4,%a0
	move.w %d1,8(%a0)
	moveq #8,%d1
	and.l %d1,%d0
	add.w #188,%d0
	move.w %d0,12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d3,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d3
	move.l %d3,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %a1,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L58
.L31:
	move.w #5,%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	lea _bloodPools+8,%a1
	move.b #1,(%a1,%d3.l)
	lea _bloodPools,%a1
	move.l (%a1,%d3.l),%a1
	move.l %a1,%d4
	add.l %a1,%d4
	add.l %a1,%d4
	lsl.l #6,%d4
	add.l %d4,%a0
	move.w %d1,8(%a0)
	moveq #8,%d1
	and.l %d1,%d0
	add.w #188,%d0
	move.w %d0,12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d3,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d3
	move.l %d3,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %a1,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L58
.L30:
	move.w #4,%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	lea _bloodPools+8,%a1
	move.b #1,(%a1,%d3.l)
	lea _bloodPools,%a1
	move.l (%a1,%d3.l),%a1
	move.l %a1,%d4
	add.l %a1,%d4
	add.l %a1,%d4
	lsl.l #6,%d4
	add.l %d4,%a0
	move.w %d1,8(%a0)
	moveq #8,%d1
	and.l %d1,%d0
	add.w #188,%d0
	move.w %d0,12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d3,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d3
	move.l %d3,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %a1,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L58
.L32:
	move.w #6,%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	add.l %a1,%d3
	add.l %d3,%d3
	lea _bloodPools+8,%a1
	move.b #1,(%a1,%d3.l)
	lea _bloodPools,%a1
	move.l (%a1,%d3.l),%a1
	move.l %a1,%d4
	add.l %a1,%d4
	add.l %a1,%d4
	lsl.l #6,%d4
	add.l %d4,%a0
	move.w %d1,8(%a0)
	moveq #8,%d1
	and.l %d1,%d0
	add.w #188,%d0
	move.w %d0,12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d3,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d3
	move.l %d3,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %a1,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L58
	.even
	.globl	__Z10bloodSprayiii
__Z10bloodSprayiii:
	link.w %fp,#0
	move.l 16(%fp),%d0
	tst.b _bloodSpray1InUse
	jne .L60
	move.b #1,_bloodSpray1InUse
	move.l %d0,_bloodDirection
	move.l sprite,%a0
	move.w 10(%fp),6728(%a0)
	move.w 14(%fp),6732(%a0)
	moveq #1,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	or.l %d0,%d1
	move.l %d1,6744(%a0)
	moveq #1,%d0
	move.l %d0,6724(%a0)
	clr.l _bloodSpray1Animator+16
.L60:
	unlk %fp
	rts
	.even
	.globl	__Z9bloodGlobiii
__Z9bloodGlobiii:
	link.w %fp,#0
	move.l 16(%fp),%d0
	tst.b _bloodGlobInUse
	jne .L66
	move.b #1,_bloodGlobInUse
	move.l %d0,_bloodDirection
	move.l sprite,%a0
	move.w 10(%fp),7112(%a0)
	move.w 14(%fp),7116(%a0)
	moveq #1,%d1
	cmp.l %d0,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	or.l %d0,%d1
	move.l %d1,7128(%a0)
	moveq #1,%d0
	move.l %d0,7108(%a0)
	clr.l _bloodGlobAnimator+16
.L66:
	unlk %fp
	rts
	.even
	.globl	__Z9bloodDropiii
__Z9bloodDropiii:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 16(%fp),%d2
	move.l _bloodSpeed,-(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	move.l %d0,_bloodSpeedRnd
	tst.b _bloodDrops+8
	jeq .L76
	tst.b _bloodDrops+30
	jeq .L77
	tst.b _bloodDrops+52
	jeq .L78
	tst.b _bloodDrops+74
	jeq .L79
	tst.b _bloodDrops+96
	jeq .L80
	tst.b _bloodDrops+118
	jeq .L81
	tst.b _bloodDrops+140
	jeq .L82
	tst.b _bloodDrops+162
	jeq .L85
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L85:
	moveq #7,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea _bloodDrops+8,%a1
	move.b #1,(%a0,%a1.l)
	move.l %a0,%a1
	add.l #_bloodDrops,%a1
	move.l %d2,14(%a1)
	lea _bloodDrops,%a2
	move.l (%a2,%a0.l),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d0
	cmp.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l 4(%a1),%a0
	clr.l 16(%a0)
	move.l _bloodDropMomentumStart,18(%a1)
.L86:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L76:
	moveq #0,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea _bloodDrops+8,%a1
	move.b #1,(%a0,%a1.l)
	move.l %a0,%a1
	add.l #_bloodDrops,%a1
	move.l %d2,14(%a1)
	lea _bloodDrops,%a2
	move.l (%a2,%a0.l),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d0
	cmp.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l 4(%a1),%a0
	clr.l 16(%a0)
	move.l _bloodDropMomentumStart,18(%a1)
	jra .L86
.L77:
	moveq #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea _bloodDrops+8,%a1
	move.b #1,(%a0,%a1.l)
	move.l %a0,%a1
	add.l #_bloodDrops,%a1
	move.l %d2,14(%a1)
	lea _bloodDrops,%a2
	move.l (%a2,%a0.l),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d0
	cmp.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l 4(%a1),%a0
	clr.l 16(%a0)
	move.l _bloodDropMomentumStart,18(%a1)
	jra .L86
.L78:
	moveq #2,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea _bloodDrops+8,%a1
	move.b #1,(%a0,%a1.l)
	move.l %a0,%a1
	add.l #_bloodDrops,%a1
	move.l %d2,14(%a1)
	lea _bloodDrops,%a2
	move.l (%a2,%a0.l),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d0
	cmp.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l 4(%a1),%a0
	clr.l 16(%a0)
	move.l _bloodDropMomentumStart,18(%a1)
	jra .L86
.L79:
	moveq #3,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea _bloodDrops+8,%a1
	move.b #1,(%a0,%a1.l)
	move.l %a0,%a1
	add.l #_bloodDrops,%a1
	move.l %d2,14(%a1)
	lea _bloodDrops,%a2
	move.l (%a2,%a0.l),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d0
	cmp.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l 4(%a1),%a0
	clr.l 16(%a0)
	move.l _bloodDropMomentumStart,18(%a1)
	jra .L86
.L80:
	moveq #4,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea _bloodDrops+8,%a1
	move.b #1,(%a0,%a1.l)
	move.l %a0,%a1
	add.l #_bloodDrops,%a1
	move.l %d2,14(%a1)
	lea _bloodDrops,%a2
	move.l (%a2,%a0.l),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d0
	cmp.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l 4(%a1),%a0
	clr.l 16(%a0)
	move.l _bloodDropMomentumStart,18(%a1)
	jra .L86
.L81:
	moveq #5,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea _bloodDrops+8,%a1
	move.b #1,(%a0,%a1.l)
	move.l %a0,%a1
	add.l #_bloodDrops,%a1
	move.l %d2,14(%a1)
	lea _bloodDrops,%a2
	move.l (%a2,%a0.l),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d0
	cmp.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l 4(%a1),%a0
	clr.l 16(%a0)
	move.l _bloodDropMomentumStart,18(%a1)
	jra .L86
.L82:
	moveq #6,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	lea _bloodDrops+8,%a1
	move.b #1,(%a0,%a1.l)
	move.l %a0,%a1
	add.l #_bloodDrops,%a1
	move.l %d2,14(%a1)
	lea _bloodDrops,%a2
	move.l (%a2,%a0.l),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d0
	cmp.l %d2,%d0
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l 4(%a1),%a0
	clr.l 16(%a0)
	move.l _bloodDropMomentumStart,18(%a1)
	jra .L86
	.even
	.globl	__Z9bloodPoolii
__Z9bloodPoolii:
	link.w %fp,#0
	move.l %d2,-(%sp)
	tst.b _bloodPools+8
	jeq .L91
	tst.b _bloodPools+18
	jeq .L92
	tst.b _bloodPools+28
	jeq .L93
	tst.b _bloodPools+38
	jeq .L94
	tst.b _bloodPools+48
	jeq .L95
	tst.b _bloodPools+58
	jeq .L96
	tst.b _bloodPools+68
	jeq .L97
	tst.b _bloodPools+78
	jeq .L99
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L99:
	moveq #7,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	lea _bloodPools+8,%a0
	move.b #1,(%a0,%d1.l)
	lea _bloodPools,%a0
	move.l (%a0,%d1.l),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.l %d1,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d1
	move.l %d1,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
.L100:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L91:
	moveq #0,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	lea _bloodPools+8,%a0
	move.b #1,(%a0,%d1.l)
	lea _bloodPools,%a0
	move.l (%a0,%d1.l),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.l %d1,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d1
	move.l %d1,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L100
.L92:
	moveq #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	lea _bloodPools+8,%a0
	move.b #1,(%a0,%d1.l)
	lea _bloodPools,%a0
	move.l (%a0,%d1.l),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.l %d1,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d1
	move.l %d1,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L100
.L93:
	moveq #2,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	lea _bloodPools+8,%a0
	move.b #1,(%a0,%d1.l)
	lea _bloodPools,%a0
	move.l (%a0,%d1.l),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.l %d1,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d1
	move.l %d1,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L100
.L94:
	moveq #3,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	lea _bloodPools+8,%a0
	move.b #1,(%a0,%d1.l)
	lea _bloodPools,%a0
	move.l (%a0,%d1.l),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.l %d1,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d1
	move.l %d1,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L100
.L95:
	moveq #4,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	lea _bloodPools+8,%a0
	move.b #1,(%a0,%d1.l)
	lea _bloodPools,%a0
	move.l (%a0,%d1.l),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.l %d1,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d1
	move.l %d1,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L100
.L96:
	moveq #5,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	lea _bloodPools+8,%a0
	move.b #1,(%a0,%d1.l)
	lea _bloodPools,%a0
	move.l (%a0,%d1.l),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.l %d1,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d1
	move.l %d1,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L100
.L97:
	moveq #6,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	lea _bloodPools+8,%a0
	move.b #1,(%a0,%d1.l)
	lea _bloodPools,%a0
	move.l (%a0,%d1.l),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w 10(%fp),8(%a0)
	move.w 14(%fp),12(%a0)
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.l %d1,%a0
	add.l #_bloodPools+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	add.l #_bloodPools+8,%d1
	move.l %d1,-(%sp)
	move.w raptor_ticks,%a0
	add.l _bloodStayDelay,%a0
	move.l %a0,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z22spriteDelaySetInactiveiiPb
	lea (12,%sp),%sp
	jra .L100
	.even
	.globl	__Z11bloodSquirtii
__Z11bloodSquirtii:
	link.w %fp,#0
	tst.b _bloodSquirts+8
	jeq .L105
	tst.b _bloodSquirts+18
	jeq .L106
	tst.b _bloodSquirts+28
	jeq .L107
	tst.b _bloodSquirts+38
	jeq .L109
	unlk %fp
	rts
.L109:
	moveq #3,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	lea _bloodSquirts+8,%a1
	move.b #1,(%a0,%a1.l)
	lea _bloodSquirts,%a1
	move.l (%a1,%a0.l),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 10(%fp),8(%a1)
	move.w 14(%fp),12(%a1)
	moveq #1,%d0
	move.l %d0,4(%a1)
	add.l #_bloodSquirts+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
.L110:
	unlk %fp
	rts
.L105:
	moveq #0,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	lea _bloodSquirts+8,%a1
	move.b #1,(%a0,%a1.l)
	lea _bloodSquirts,%a1
	move.l (%a1,%a0.l),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 10(%fp),8(%a1)
	move.w 14(%fp),12(%a1)
	moveq #1,%d0
	move.l %d0,4(%a1)
	add.l #_bloodSquirts+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	jra .L110
.L106:
	moveq #1,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	lea _bloodSquirts+8,%a1
	move.b #1,(%a0,%a1.l)
	lea _bloodSquirts,%a1
	move.l (%a1,%a0.l),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 10(%fp),8(%a1)
	move.w 14(%fp),12(%a1)
	moveq #1,%d0
	move.l %d0,4(%a1)
	add.l #_bloodSquirts+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	jra .L110
.L107:
	moveq #2,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	add.l %d0,%a0
	add.l %a0,%a0
	lea _bloodSquirts+8,%a1
	move.b #1,(%a0,%a1.l)
	lea _bloodSquirts,%a1
	move.l (%a1,%a0.l),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 10(%fp),8(%a1)
	move.w 14(%fp),12(%a1)
	moveq #1,%d0
	move.l %d0,4(%a1)
	add.l #_bloodSquirts+4,%a0
	move.l (%a0),%a0
	clr.l 16(%a0)
	jra .L110
	.globl	_bloodSpeedRnd
	.bss
	.even
_bloodSpeedRnd:
	.skip 4
	.globl	_bloodStayDelay
	.even
_bloodStayDelay:
	.skip 4
	.globl	_bloodDropMomentumStart
	.even
_bloodDropMomentumStart:
	.skip 4
	.globl	_gravity
	.even
_gravity:
	.skip 4
	.globl	_bloodSpeed
	.even
_bloodSpeed:
	.skip 4
	.globl	_updateTicks
	.even
_updateTicks:
	.skip 4
	.globl	_bloodDirection
	.data
	.even
_bloodDirection:
	.long	1
	.globl	_bloodGlobInUse
	.bss
_bloodGlobInUse:
	.skip 1
	.globl	_bloodSpray2InUse
_bloodSpray2InUse:
	.skip 1
	.globl	_bloodSpray1InUse
_bloodSpray1InUse:
	.skip 1
	.globl	_bloodSquirts
	.data
	.even
_bloodSquirts:
	.long	46
	.long	_bloodSquirt1Animator
	.byte	0
	.skip 1
	.long	47
	.long	_bloodSquirt2Animator
	.byte	0
	.skip 1
	.long	48
	.long	_bloodSquirt3Animator
	.byte	0
	.skip 1
	.long	49
	.long	_bloodSquirt4Animator
	.byte	0
	.skip 1
	.globl	_bloodSquirt4Animator
	.even
_bloodSquirt4Animator:
	.long	49
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodSquirt3Animator
	.even
_bloodSquirt3Animator:
	.long	48
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodSquirt2Animator
	.even
_bloodSquirt2Animator:
	.long	47
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodSquirt1Animator
	.even
_bloodSquirt1Animator:
	.long	46
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodSquirtFrames
	.even
_bloodSquirtFrames:
	.long	48
	.long	64
	.long	0
	.long	64
	.long	0
	.long	0
	.long	8
	.long	48
	.long	64
	.long	48
	.long	64
	.long	0
	.long	0
	.long	8
	.long	48
	.long	64
	.long	96
	.long	64
	.long	0
	.long	0
	.long	8
	.long	48
	.long	64
	.long	144
	.long	64
	.long	0
	.long	0
	.long	8
	.long	48
	.long	64
	.long	192
	.long	64
	.long	0
	.long	0
	.long	8
	.long	48
	.long	64
	.long	240
	.long	64
	.long	0
	.long	0
	.long	8
	.long	48
	.long	64
	.long	288
	.long	64
	.long	0
	.long	0
	.long	8
	.globl	_bloodPools
	.even
_bloodPools:
	.long	21
	.long	_bloodPool1Animator
	.byte	0
	.skip 1
	.long	22
	.long	_bloodPool2Animator
	.byte	0
	.skip 1
	.long	23
	.long	_bloodPool3Animator
	.byte	0
	.skip 1
	.long	24
	.long	_bloodPool4Animator
	.byte	0
	.skip 1
	.long	25
	.long	_bloodPool5Animator
	.byte	0
	.skip 1
	.long	26
	.long	_bloodPool6Animator
	.byte	0
	.skip 1
	.long	27
	.long	_bloodPool7Animator
	.byte	0
	.skip 1
	.long	28
	.long	_bloodPool8Animator
	.byte	0
	.skip 1
	.globl	_bloodDrops
	.even
_bloodDrops:
	.long	38
	.long	_bloodDrop1Animator
	.byte	0
	.skip 1
	.long	0
	.long	0
	.long	0
	.long	39
	.long	_bloodDrop2Animator
	.byte	0
	.skip 1
	.long	0
	.long	0
	.long	0
	.long	40
	.long	_bloodDrop3Animator
	.byte	0
	.skip 1
	.long	0
	.long	0
	.long	0
	.long	41
	.long	_bloodDrop4Animator
	.byte	0
	.skip 1
	.long	0
	.long	0
	.long	0
	.long	42
	.long	_bloodDrop5Animator
	.byte	0
	.skip 1
	.long	0
	.long	0
	.long	0
	.long	43
	.long	_bloodDrop6Animator
	.byte	0
	.skip 1
	.long	0
	.long	0
	.long	0
	.long	44
	.long	_bloodDrop7Animator
	.byte	0
	.skip 1
	.long	0
	.long	0
	.long	0
	.long	45
	.long	_bloodDrop8Animator
	.byte	0
	.skip 1
	.long	0
	.long	0
	.long	0
	.globl	_bloodPoolFrames
	.even
_bloodPoolFrames:
	.long	48
	.long	48
	.long	144
	.long	128
	.long	0
	.long	0
	.long	6
	.long	48
	.long	48
	.long	192
	.long	128
	.long	0
	.long	0
	.long	4
	.long	48
	.long	48
	.long	240
	.long	128
	.long	0
	.long	0
	.long	4
	.globl	_bloodPool8Animator
	.even
_bloodPool8Animator:
	.long	28
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodPool7Animator
	.even
_bloodPool7Animator:
	.long	27
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodPool6Animator
	.even
_bloodPool6Animator:
	.long	26
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodPool5Animator
	.even
_bloodPool5Animator:
	.long	25
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodPool4Animator
	.even
_bloodPool4Animator:
	.long	24
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodPool3Animator
	.even
_bloodPool3Animator:
	.long	23
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodPool2Animator
	.even
_bloodPool2Animator:
	.long	22
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodPool1Animator
	.even
_bloodPool1Animator:
	.long	21
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodDropFrames
	.even
_bloodDropFrames:
	.long	48
	.long	48
	.long	288
	.long	128
	.long	0
	.long	0
	.long	1
	.long	48
	.long	48
	.long	336
	.long	128
	.long	0
	.long	0
	.long	1
	.long	48
	.long	48
	.long	0
	.long	176
	.long	0
	.long	0
	.long	1
	.long	48
	.long	48
	.long	48
	.long	176
	.long	0
	.long	0
	.long	1
	.long	48
	.long	48
	.long	96
	.long	176
	.long	0
	.long	0
	.long	1
	.long	48
	.long	48
	.long	144
	.long	176
	.long	0
	.long	0
	.long	1
	.long	48
	.long	48
	.long	192
	.long	176
	.long	0
	.long	0
	.long	1
	.long	48
	.long	48
	.long	240
	.long	176
	.long	0
	.long	0
	.long	1
	.globl	_bloodDrop8Animator
	.even
_bloodDrop8Animator:
	.long	45
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodDrop7Animator
	.even
_bloodDrop7Animator:
	.long	44
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodDrop6Animator
	.even
_bloodDrop6Animator:
	.long	43
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodDrop5Animator
	.even
_bloodDrop5Animator:
	.long	42
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodDrop4Animator
	.even
_bloodDrop4Animator:
	.long	41
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodDrop3Animator
	.even
_bloodDrop3Animator:
	.long	40
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodDrop2Animator
	.even
_bloodDrop2Animator:
	.long	39
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodDrop1Animator
	.even
_bloodDrop1Animator:
	.long	38
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodGlobFrames
	.even
_bloodGlobFrames:
	.long	64
	.long	32
	.long	0
	.long	32
	.long	0
	.long	0
	.long	5
	.long	64
	.long	32
	.long	64
	.long	32
	.long	0
	.long	0
	.long	4
	.long	64
	.long	32
	.long	128
	.long	32
	.long	0
	.long	0
	.long	4
	.long	64
	.long	32
	.long	192
	.long	32
	.long	0
	.long	0
	.long	4
	.long	64
	.long	32
	.long	256
	.long	32
	.long	0
	.long	0
	.long	4
	.long	64
	.long	32
	.long	320
	.long	32
	.long	0
	.long	0
	.long	4
	.globl	_bloodGlobAnimator
	.even
_bloodGlobAnimator:
	.long	37
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodSprayFrames
	.even
_bloodSprayFrames:
	.long	64
	.long	32
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	64
	.long	32
	.long	64
	.long	0
	.long	0
	.long	0
	.long	4
	.long	64
	.long	32
	.long	128
	.long	0
	.long	0
	.long	0
	.long	4
	.long	64
	.long	32
	.long	192
	.long	0
	.long	0
	.long	0
	.long	4
	.long	64
	.long	32
	.long	256
	.long	0
	.long	0
	.long	0
	.long	4
	.globl	_bloodSpray2Animator
	.even
_bloodSpray2Animator:
	.long	36
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	_bloodSpray1Animator
	.even
_bloodSpray1Animator:
	.long	35
	.long	1056964608
	.long	12383344
	.long	0
	.long	0
	.skip 4
	.globl	colliders
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
