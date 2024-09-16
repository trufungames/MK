#NO_APP
	.text
	.even
__Z17fighterCastShadowP7Fighterb.constprop.3:
	link.w %fp,#0
	move.l sprite,%a1
	move.l 8(%fp),%a0
	move.l 2(%a0),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a1
	move.w 8(%a1),8(%a0)
	move.l 28(%a1),28(%a0)
	move.l 32(%a1),32(%a0)
	move.l 104(%a1),104(%a0)
	move.l 48(%a1),48(%a0)
	move.l 44(%a1),44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z14fighterStartUpv
__Z14fighterStartUpv:
	link.w %fp,#0
	move.l sprite,%a0
	move.w 2700(%a0),%a0
	move.l %a0,_shadowY
	unlk %fp
	rts
	.even
	.globl	__Z11fighterHideP7Fighter
__Z11fighterHideP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	unlk %fp
	rts
	.even
	.globl	__Z11fighterShowP7Fighter
__Z11fighterShowP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #7,(%a0)
	jls .L16
.L5:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L16:
	moveq #0,%d0
	move.w (%a0),%d0
	add.l %d0,%d0
	move.w .L13(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L13:
	.word .L5-.L13
	.word .L6-.L13
	.word .L7-.L13
	.word .L8-.L13
	.word .L9-.L13
	.word .L11-.L13
	.word .L11-.L13
	.word .L12-.L13
.L11:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #10264496,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L6:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #8535888,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L7:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11403248,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L8:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #9691024,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L9:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #9125744,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L12:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #10911696,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z21fighterMakeSelectableP7Fighterb
__Z21fighterMakeSelectableP7Fighterb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	clr.l 196(%a0)
	move.b #1,200(%a0)
	move.l sprite,%a2
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a2,%d1.l),%a1
	tst.b 15(%fp)
	jne .L22
	move.w #256,8(%a1)
	moveq #-1,%d1
	move.l %d1,24(%a1)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,24(%a2,%d0.l)
	move.w #-1,262(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,240(%a0)
	move.w #106,242(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L22:
	move.w #14,8(%a1)
	moveq #1,%d1
	move.l %d1,24(%a1)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d1
	move.l %d1,24(%a2,%d0.l)
	move.w #1,262(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,240(%a0)
	move.w #106,242(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_
__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d1
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	move.l 16(%fp),258(%a2)
	move.l 20(%fp),352(%a2)
	move.l 24(%fp),356(%a2)
	move.l 28(%fp),360(%a2)
	move.l 32(%fp),364(%a2)
	move.l 36(%fp),376(%a2)
	move.l 40(%fp),380(%a2)
	move.l 44(%fp),368(%a2)
	move.l 48(%fp),372(%a2)
	move.l 52(%fp),384(%a2)
	move.l 56(%fp),388(%a2)
	move.l 60(%fp),392(%a2)
	move.l 64(%fp),396(%a2)
	move.l 68(%fp),400(%a2)
	clr.l 192(%a2)
	clr.w 238(%a2)
	clr.w 106(%a2)
	move.b #1,140(%a2)
	clr.b 98(%a2)
	clr.b 138(%a2)
	move.b #1,101(%a2)
	move.b #1,99(%a2)
	clr.b 102(%a2)
	move.b #1,100(%a2)
	move.b #1,170(%a2)
	clr.b 234(%a2)
	clr.b 139(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.b 141(%a2)
	clr.b 142(%a2)
	clr.b 143(%a2)
	clr.b 144(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	clr.w 166(%a2)
	clr.w 168(%a2)
	clr.b 171(%a2)
	clr.b 172(%a2)
	clr.b 182(%a2)
	clr.b 183(%a2)
	clr.l 184(%a2)
	moveq #50,%d0
	move.l %d0,174(%a2)
	moveq #20,%d2
	move.l %d2,178(%a2)
	move.b %d1,266(%a2)
	move.w #120,252(%a2)
	clr.w 254(%a2)
	clr.b 256(%a2)
	clr.b 264(%a2)
	clr.b 265(%a2)
	move.b #1,270(%a2)
	move.l 2(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d3
	move.l %d3,4(%a0,%d0.l)
	tst.b %d1
	jne .L28
	moveq #65,%d2
	move.l %d2,188(%a2)
	moveq #63,%d3
	move.l %d3,92(%a2)
	moveq #2,%d0
	move.l %d0,202(%a2)
	jsr __Z14stageGetStartXv
	add.w #220,%d0
	move.w %d0,248(%a2)
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a0
	moveq #-1,%d1
	move.l %d1,24(%a0)
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d1,%d2
	lsl.l #6,%d2
	moveq #-1,%d3
	move.l %d3,24(%a1,%d2.l)
	subq.l #1,%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	add.l %d1,%a1
	move.l %d3,24(%a1)
	move.w #-1,262(%a2)
	moveq #1,%d1
	move.l %d1,4(%a1)
	move.l 412(%a2),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12001440,8(%a1)
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108960,-(%sp)
	jsr jsfLoadClut
	move.w #90,242(%a2)
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,165(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L28:
	moveq #64,%d0
	move.l %d0,188(%a2)
	moveq #60,%d1
	move.l %d1,92(%a2)
	move.l %d3,202(%a2)
	jsr __Z14stageGetStartXv
	add.w #70,%d0
	move.w %d0,248(%a2)
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a0
	move.l %d3,24(%a0)
	move.l 2(%a2),%d2
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l %d3,24(%a1,%d1.l)
	subq.l #1,%d2
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d1,%d2
	lsl.l #6,%d2
	add.l %d2,%a1
	move.l %d3,24(%a1)
	move.w #1,262(%a2)
	moveq #1,%d1
	move.l %d1,4(%a1)
	move.l 412(%a2),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12001440,8(%a1)
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108960,-(%sp)
	jsr jsfLoadClut
	move.w #90,242(%a2)
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,165(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z15playerinputInitP7Fighter
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 268(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 240(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 10(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra (__Z17fighterCastShadowP7Fighterb.constprop.3)
	.even
	.globl	__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 240(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra (__Z17fighterCastShadowP7Fighterb.constprop.3)
	.even
	.globl	__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 240(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra (__Z17fighterCastShadowP7Fighterb.constprop.3)
	.even
	.globl	__Z13fighterUpdateP12StateMachineP7FighterP14SpriteAnimator
__Z13fighterUpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
__Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24fighterCaptureDpadInputsP7Fighter
__Z24fighterCaptureDpadInputsP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 192(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L37
	tst.b 99(%a2)
	jne .L42
.L37:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L38
	tst.b 99(%a2)
	jne .L43
.L38:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L39
	tst.b 99(%a2)
	jne .L44
.L39:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L36
	tst.b 99(%a2)
	jeq .L36
	tst.b 102(%a2)
	jeq .L45
.L36:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L44:
	tst.b 102(%a2)
	jne .L39
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 192(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L43:
	tst.b 102(%a2)
	jne .L38
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 192(%a2),%d0
	addq.l #8,%sp
	jra .L38
.L42:
	tst.b 102(%a2)
	jne .L37
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 192(%a2),%d0
	addq.l #8,%sp
	jra .L37
.L45:
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	tst.b 136(%a2)
	jne .L55
	tst.b 144(%a2)
	jne .L55
	move.l 192(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L49
	tst.b 101(%a2)
	jeq .L49
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 192(%a2),%d0
	addq.l #8,%sp
.L49:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L50
	tst.b 101(%a2)
	jeq .L50
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L50:
	move.w 330(%a2),%a0
	move.l %a0,-(%sp)
	move.l 318(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L57
	move.w 332(%a2),%a0
	move.l %a0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L58
	move.w 334(%a2),%a0
	move.l %a0,-(%sp)
	move.l 326(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L55
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 344(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L55:
	clr.b %d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L58:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 340(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L57:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 336(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z18fighterHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z18fighterHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18fighterButtonCheckP7Fighter
__Z18fighterButtonCheckP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 192(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L66
.L62:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 192(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L61
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L64
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L64
	and.l JAGPAD_RIGHT,%d0
	jne .L64
	move.b #1,99(%a2)
	clr.b 102(%a2)
.L64:
	move.b #1,100(%a2)
.L61:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L66:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_0,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_HASH,%d1
	jne .L62
	and.l JAGPAD_STAR,%d0
	jne .L62
	move.b #1,101(%a2)
	jra .L62
	.even
	.globl	__Z15fighterPlayHiyaiP12SoundHandlerb
__Z15fighterPlayHiyaiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #6,%d2
	cmp.l %d0,%d2
	jeq .L71
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L72
	move.b #4,%d2
	cmp.l %d0,%d2
	jeq .L75
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandler
.L75:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandler
.L72:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandler
.L71:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxHiyaNinjaP12SoundHandler
	.even
	.globl	__Z16fighterPlayGroaniP12SoundHandlerb
__Z16fighterPlayGroaniP12SoundHandlerb:
	link.w %fp,#0
	move.l 12(%fp),%d0
	moveq #7,%d1
	cmp.l 8(%fp),%d1
	jeq .L82
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandler
.L82:
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z14sfxGroanFemaleP12SoundHandler
	.even
	.globl	__Z15fighterPlayYelliP12SoundHandlerb
__Z15fighterPlayYelliP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L86
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L90
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandler
.L86:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandler
.L90:
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxYellFemaleP12SoundHandler
	.even
	.globl	__Z15fighterPlayJumpiP12SoundHandlerb
__Z15fighterPlayJumpiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #5,%d2
	cmp.l %d0,%d2
	jle .L97
.L93:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandler
.L97:
	move.b #6,%d2
	cmp.l %d0,%d2
	jlt .L98
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandler
.L98:
	move.b #7,%d2
	cmp.l %d0,%d2
	jne .L93
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxJumpFemaleP12SoundHandler
	.even
	.globl	__Z27fighterPlayUppercutReactionP12SoundHandler
__Z27fighterPlayUppercutReactionP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	lea RAPTOR_random,%a2
	jsr (%a2)
	btst #0,%d0
	jne .L104
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L105
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L105:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L104:
	move.l %d2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z11sfxCrowdAwwP12SoundHandler
	.even
	.globl	__Z16fighterMakeDizzyP7Fighter
__Z16fighterMakeDizzyP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 188(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a1,%d0.l)
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a1,%d0.l)
	clr.b 98(%a0)
	clr.b 138(%a0)
	clr.b 124(%a0)
	clr.b 136(%a0)
	clr.b 137(%a0)
	clr.b 143(%a0)
	clr.b 144(%a0)
	clr.b 158(%a0)
	clr.b 142(%a0)
	clr.b 159(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	clr.b 171(%a0)
	clr.b 256(%a0)
	clr.b 264(%a0)
	clr.b 265(%a0)
	move.b #1,270(%a0)
	move.b #1,141(%a0)
	clr.w 254(%a0)
	move.w raptor_ticks,236(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterResetFlagsAllP7FighterS0_
__Z20fighterResetFlagsAllP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l sprite,%a0
	move.l 92(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 188(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	clr.b 98(%a3)
	clr.b 138(%a3)
	clr.b 124(%a3)
	clr.b 136(%a3)
	clr.b 137(%a3)
	clr.b 143(%a3)
	clr.b 144(%a3)
	clr.b 158(%a3)
	clr.b 142(%a3)
	clr.b 159(%a3)
	clr.b 162(%a3)
	clr.b 163(%a3)
	clr.b 171(%a3)
	clr.b 256(%a3)
	clr.b 264(%a3)
	clr.b 265(%a3)
	move.b #1,270(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 188(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	clr.b 98(%a2)
	clr.b 138(%a2)
	clr.b 124(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.b 143(%a2)
	clr.b 144(%a2)
	clr.b 158(%a2)
	clr.b 142(%a2)
	clr.b 159(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	clr.b 171(%a2)
	clr.b 256(%a2)
	clr.b 264(%a2)
	clr.b 265(%a2)
	move.b #1,270(%a2)
	move.l %a3,-(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 412(%a3),%a0
	clr.w 14(%a0)
	move.l 92(%a3),%d0
	move.l %d0,(%a0)
	move.l #12001440,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	moveq #3,%d0
	move.l %d0,(%sp)
	pea 13.w
	move.l #12108960,-(%sp)
	lea jsfLoadClut,%a3
	jsr (%a3)
	move.l 412(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12001440,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	addq.l #8,%sp
	moveq #3,%d1
	move.l %d1,(%sp)
	pea 13.w
	move.l #12108960,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetFlagsP7Fighter
__Z17fighterResetFlagsP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 188(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a1,%d0.l)
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a1,%d0.l)
	clr.b 98(%a0)
	clr.b 138(%a0)
	clr.b 124(%a0)
	clr.b 136(%a0)
	clr.b 137(%a0)
	clr.b 143(%a0)
	clr.b 144(%a0)
	clr.b 158(%a0)
	clr.b 142(%a0)
	clr.b 159(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	clr.b 171(%a0)
	clr.b 256(%a0)
	clr.b 264(%a0)
	clr.b 265(%a0)
	move.b #1,270(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterHandleProjectileP12StateMachineP7FighterS2_
__Z23fighterHandleProjectileP12StateMachineP7FighterS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a3
	move.l 16(%fp),%a2
	move.w (%a3),%d0
	cmp.w #1,%d0
	jeq .L153
	cmp.w #2,%d0
	jeq .L157
	cmp.w #3,%d0
	jeq .L153
	cmp.w #4,%d0
	jeq .L153
	cmp.w #5,%d0
	jeq .L158
	cmp.w #6,%d0
	jeq .L159
	cmp.w #7,%d0
	jeq .L153
	cmp.w #9,%d0
	jeq .L160
.L110:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L153:
	move.b #1,173(%a3)
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L134
	cmp.w #8,%d0
	jeq .L134
	cmp.w #35,%d0
	jeq .L134
	move.b #1,103(%a2)
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a3)
	move.b #1,200(%a3)
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L162:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L157:
	move.b #1,173(%a3)
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jne .L161
.L134:
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L161:
	cmp.w #8,%d0
	jeq .L134
	cmp.w #35,%d0
	jeq .L134
	move.b #1,164(%a2)
	move.b #1,103(%a2)
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a3)
	move.b #1,200(%a3)
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L162
.L158:
	move.b #1,173(%a3)
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L125
	cmp.w #8,%d0
	jeq .L125
	move.w #-1,120(%a3)
	move.w #32,116(%a3)
	clr.w 122(%a3)
	move.w #8,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a3)
	move.b #1,200(%a3)
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 53.w
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 408(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 54.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L159:
	tst.b 173(%a3)
	jne .L110
	move.b #1,173(%a3)
	tst.b 144(%a2)
	jne .L163
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L134
	cmp.w #8,%d0
	jeq .L134
	clr.w 254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a3)
	move.b #1,200(%a3)
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L160:
	move.b #1,173(%a3)
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L110
	cmp.w #19,%d0
	jeq .L110
	cmp.w #18,%d0
	jeq .L110
	cmp.w #7,%d0
	jeq .L110
	cmp.w #6,%d0
	jeq .L110
	cmp.w #22,%d0
	jeq .L110
	cmp.w #21,%d0
	jeq .L110
	cmp.w #24,%d0
	jeq .L110
	cmp.w #23,%d0
	jeq .L110
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a3)
	move.b #1,200(%a3)
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L125:
	move.b #1,127(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L163:
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	clr.b 144(%a2)
	move.b #1,170(%a2)
	lea (16,%sp),%sp
	tst.b 266(%a2)
	jne .L164
	pea 16.w
	pea 15.w
	move.l 272(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 408(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
.L165:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L164:
	pea 16.w
	pea 14.w
	move.l 272(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 408(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	jra .L165
	.even
	.globl	__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a0
	move.l 16(%fp),%d4
	move.l 20(%fp),%a2
	move.l 24(%fp),%d3
	move.l 286(%a2),%a1
	move.w (%a1),%d1
	cmp.w #1,%d1
	jeq .L168
	cmp.w #8,%d1
	jeq .L237
	tst.b 136(%a2)
	jne .L167
	move.l 286(%a0),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L216
	cmp.w #10,%d0
	jeq .L216
	cmp.w #13,%d0
	jeq .L238
	cmp.w #11,%d0
	jeq .L218
	cmp.w #12,%d0
	jeq .L218
	cmp.w #15,%d0
	jeq .L239
	cmp.w #14,%d0
	jeq .L240
	cmp.w #17,%d0
	jeq .L241
	cmp.w #16,%d0
	jeq .L242
	cmp.w #21,%d0
	jeq .L229
	cmp.w #22,%d0
	jeq .L229
	cmp.w #23,%d0
	jeq .L228
	cmp.w #24,%d0
	jeq .L228
	cmp.w #18,%d0
	jeq .L228
	cmp.w #19,%d0
	jeq .L227
	cmp.w #38,%d0
	jeq .L227
	cmp.w #39,%d0
	jeq .L243
	cmp.w #40,%d0
	jeq .L244
	cmp.w #44,%d0
	jeq .L234
	cmp.w #45,%d0
	jeq .L245
	cmp.w #47,%d0
	jeq .L234
	cmp.w #48,%d0
	jeq .L246
	cmp.w #51,%d0
	jeq .L234
	cmp.w #56,%d0
	jeq .L247
	cmp.w #20,%d0
	jeq .L248
	cmp.w #60,%d0
	jeq .L231
	cmp.w #61,%d0
	jeq .L249
	cmp.w #63,%d0
	jeq .L231
	cmp.w #65,%d0
	jne .L172
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.b #1,126(%a2)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L172:
	tst.b 144(%a2)
	jeq .L167
	clr.b 144(%a2)
	move.b #1,170(%a2)
	moveq #16,%d0
	tst.b 266(%a2)
	jne .L250
	move.l %d0,16(%fp)
	move.b #15,%d0
	move.l %d0,12(%fp)
	move.l 272(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L167:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L168:
	move.l 286(%a0),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L251
	cmp.w #65,%d0
	jeq .L252
	move.w #4,254(%a2)
	clr.b 256(%a2)
	move.b #1,200(%a0)
	cmp.w #21,%d0
	jeq .L203
	cmp.w #23,%d0
	jeq .L203
	cmp.w #48,%d0
	jeq .L203
	cmp.w #56,%d0
	jeq .L203
	cmp.w #60,%d0
	jeq .L203
	cmp.w #61,%d0
	jeq .L203
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L203:
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #37,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L216:
	move.w #8,254(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L237:
	move.w #4,254(%a2)
	clr.b 256(%a2)
	move.b #1,200(%a0)
	move.l 286(%a0),%a1
	move.w (%a1),%d0
	cmp.w #48,%d0
	jeq .L210
	cmp.w #65,%d0
	jeq .L210
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
.L253:
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L218:
	move.w #8,254(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 26.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L250:
	move.l %d0,16(%fp)
	move.b #14,%d0
	move.l %d0,12(%fp)
	move.l 272(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L238:
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L240:
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
.L221:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L210:
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
	jra .L253
.L251:
	move.w #16,254(%a2)
	clr.b 256(%a2)
	moveq #10,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #27,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L227:
	move.w #16,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L254:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L228:
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #10,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L254
.L229:
	move.w #24,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L239:
	move.w #24,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	jra .L221
.L241:
	move.w #8,254(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 30.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L242:
	move.w #32,254(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 50.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 31.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L234:
	cmp.w #2,%d1
	jeq .L172
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
.L255:
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L252:
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.b #1,126(%a2)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	move.b #41,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L243:
	move.w #16,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
	jra .L255
.L244:
	move.w #32,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L245:
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 46.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L247:
	cmp.w #2,%d1
	jeq .L172
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L254
.L246:
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 49.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L231:
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L248:
	move.w #16,254(%a2)
	clr.b 256(%a2)
	moveq #10,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a0,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 27.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L249:
	move.w #20,254(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 62.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a2
	tst.b 137(%a3)
	jeq .L258
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L280
.L258:
	tst.b 137(%a2)
	jeq .L259
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d6
	cmp.l 112(%a0,%d0.l),%d6
	jeq .L281
.L259:
	lea __Z26stageGetFighterHitboxIndexv,%a4
	jsr (%a4)
	move.l %d0,%d3
	jsr (%a4)
	move.l %d0,%d2
	jsr (%a4)
	move.l %d0,%a5
	jsr (%a4)
	move.l %d3,%a0
	pea 12(%a0)
	move.l %d2,-(%sp)
	pea 12(%a5)
	move.l %d0,-(%sp)
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L257
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP12StateMachineP7FighterS2_,%d5
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L262
.L285:
	cmp.w #0,%a0
	jlt .L257
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 92(%a3),%d0
	cmp.l %d2,%d0
	jeq .L263
	cmp.l 92(%a2),%d2
	jeq .L263
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d6
	move.l %d6,112(%a0,%d1.l)
.L263:
	cmp.l %d0,%d3
	jeq .L264
	cmp.l 92(%a2),%d3
	jeq .L264
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L264:
	moveq #64,%d6
	cmp.l %d2,%d6
	jeq .L282
	moveq #59,%d1
	cmp.l %d2,%d1
	jeq .L283
	moveq #65,%d0
	cmp.l %d2,%d0
	jne .L266
	moveq #59,%d1
	cmp.l %d3,%d1
	jeq .L272
.L266:
	move.l 286(%a3),%a0
	move.w (%a0),%d0
.L271:
	cmp.w #43,%d0
	jeq .L273
	cmp.w #52,%d0
	jeq .L273
	cmp.w #57,%d0
	jeq .L273
	cmp.w #64,%d0
	jeq .L273
.L274:
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #43,%d0
	jeq .L275
	cmp.w #52,%d0
	jeq .L275
	cmp.w #57,%d0
	jeq .L275
	cmp.w #64,%d0
	jeq .L275
.L276:
	moveq #62,%d0
	cmp.l %d2,%d0
	jeq .L284
.L277:
	move.l colliders,%d0
.L278:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L285
.L262:
	cmp.w #0,%a0
	jge .L278
.L257:
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L284:
	moveq #59,%d1
	cmp.l %d3,%d1
	jne .L277
	move.l 286(%a2),%a0
	cmp.w #3,(%a0)
	jne .L277
	move.b #1,137(%a2)
	move.b #1,158(%a3)
	move.w raptor_ticks,238(%a3)
	move.l colliders,%d0
	jra .L278
.L275:
	cmp.l 92(%a2),%d2
	jne .L276
	moveq #59,%d0
	cmp.l %d3,%d0
	jne .L276
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L277
	jra .L284
.L273:
	cmp.l 92(%a3),%d2
	jne .L274
	moveq #62,%d6
	cmp.l %d3,%d6
	jne .L274
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L274
.L283:
	moveq #62,%d6
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L271
	cmp.w #3,%d0
	jne .L271
	move.b #1,137(%a3)
	move.b #1,158(%a2)
	move.w raptor_ticks,238(%a2)
	jra .L274
.L282:
	moveq #62,%d0
	cmp.l %d3,%d0
	jne .L266
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	jra .L271
.L272:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	lea (20,%sp),%sp
	jra .L271
.L281:
	clr.b 137(%a2)
	jra .L259
.L280:
	clr.b 137(%a3)
	jra .L258
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 262(%a1),%d0
	cmp.w #1,%d0
	jeq .L341
	cmp.w #-1,%d0
	jeq .L342
.L290:
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L343
.L291:
	cmp.w #-1,%d0
	jne .L287
	move.w 240(%a0),%a3
	add.l _turnOffset,%a3
	move.w 240(%a1),%a2
	cmp.l %a3,%a2
	jle .L287
.L338:
	tst.b 138(%a0)
	jne .L287
	tst.b 144(%a0)
	jne .L287
	move.l 286(%a0),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L287
	cmp.w #56,%d0
	jeq .L287
	move.l 286(%a1),%a1
	move.w (%a1),%d1
	cmp.w #56,%d1
	jeq .L287
	cmp.w #61,%d1
	jeq .L287
	cmp.w #61,%d0
	jeq .L287
	cmp.w #62,%d1
	jeq .L287
	cmp.w #62,%d0
	jeq .L287
	cmp.w #63,%d0
	jeq .L287
	cmp.w #65,%d0
	jeq .L287
	move.b #1,138(%a0)
.L287:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L342:
	move.w 240(%a1),%a3
	add.l _turnOffset,%a3
	move.w 240(%a0),%a2
	cmp.l %a3,%a2
	jle .L290
	tst.b 138(%a1)
	jne .L290
.L344:
	tst.b 144(%a1)
	jne .L290
	move.l 286(%a1),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L290
	cmp.w #56,%d0
	jeq .L290
	move.l 286(%a0),%a2
	move.w (%a2),%d1
	cmp.w #56,%d1
	jeq .L290
	cmp.w #61,%d0
	jeq .L290
	cmp.w #61,%d1
	jeq .L290
	cmp.w #62,%d0
	jeq .L290
	cmp.w #62,%d1
	jeq .L290
	cmp.w #63,%d0
	jeq .L290
	cmp.w #65,%d0
	jeq .L290
	move.b #1,138(%a1)
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jne .L291
.L343:
	move.w 240(%a0),%a3
	move.w 240(%a1),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jlt .L338
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L341:
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L290
	tst.b 138(%a1)
	jne .L290
	jra .L344
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 286(%a0),%a2
	move.w (%a2),%d0
	cmp.w #40,%d0
	jeq .L351
	move.l 286(%a1),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L351
	cmp.w #1,%d0
	jeq .L351
	cmp.w #1,%d1
	jeq .L351
	cmp.w #8,%d0
	jeq .L351
	cmp.w #8,%d1
	jeq .L351
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L354
	cmp.w #-1,%d0
	jne .L351
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L352
.L351:
	clr.b 139(%a0)
	clr.b 139(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L354:
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L351
.L352:
	move.b #1,139(%a0)
	move.b #1,139(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	unlk %fp
	jra __Z9hudUpdateP7FighterS0_
	.even
	.globl	__Z23fighterAddPendingDamageP7FighteribS0_i
__Z23fighterAddPendingDamageP7FighteribS0_i:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 20(%fp),%a0
	move.w 14(%fp),254(%a1)
	move.b 19(%fp),256(%a1)
	move.l 24(%fp),%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterTakeDamageP7Fighteri
__Z17fighterTakeDamageP7Fighteri:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d2
	tst.b 141(%a2)
	jne .L358
	tst.b 256(%a2)
	jne .L363
	move.w 252(%a2),%d0
	sub.w %d2,%d0
	move.w %d0,252(%a2)
	jle .L364
.L361:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L358:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L363:
	clr.b 256(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.w 252(%a2),%d0
	sub.w %d2,%d0
	move.w %d0,252(%a2)
	jgt .L361
.L364:
	clr.w 252(%a2)
	move.b #1,161(%a2)
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	cmp.w #-1,262(%a0)
	jeq .L367
	move.w 248(%a0),%d0
.L368:
	addq.w #2,%d0
	move.w %d0,248(%a0)
	cmp.w #9,%d0
	jle .L373
	cmp.w #716,%d0
	jle .L366
	move.w #716,248(%a0)
.L366:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L373:
	move.w #10,248(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L367:
	move.w 248(%a0),%d0
	move.w %d0,%a1
	move.l 604(%a0),%a2
	sub.w 248(%a2),%a1
	cmp.w #279,%a1
	jle .L368
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,262(%a0)
	jeq .L376
	move.w 248(%a0),%d0
.L377:
	subq.w #2,%d0
	move.w %d0,248(%a0)
	cmp.w #9,%d0
	jle .L382
	cmp.w #716,%d0
	jle .L375
	move.w #716,248(%a0)
.L375:
	unlk %fp
	rts
.L382:
	move.w #10,248(%a0)
	unlk %fp
	rts
.L376:
	move.w 248(%a0),%d0
	move.l 604(%a0),%a1
	move.w 248(%a1),%a1
	sub.w %d0,%a1
	cmp.w #279,%a1
	jle .L377
	unlk %fp
	rts
	.even
	.globl	__Z21fighterLockBoundariesP7Fighter
__Z21fighterLockBoundariesP7Fighter:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27fighterAlignSpriteAndHitboxP7Fighter
__Z27fighterAlignSpriteAndHitboxP7Fighter:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L390
	moveq #17,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L390:
	moveq #15,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterSetOnFloorP7Fighter
__Z17fighterSetOnFloorP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w #90,242(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 240(%a2),%d0
	cmp.w #11,%d0
	jle .L406
.L394:
	cmp.w #261,%d0
	jgt .L398
.L403:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L406:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L402
	move.w 240(%a2),%d0
	cmp.w #11,%d0
	jgt .L394
	cmp.w #261,240(%a3)
	jgt .L402
	jsr (%a4)
	tst.b %d0
	jne .L402
	move.w 240(%a2),%d0
	cmp.w #261,%d0
	jle .L403
.L398:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L407
.L402:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L407:
	cmp.w #309,240(%a2)
	jle .L403
	cmp.w #10,240(%a3)
	sgt %d0
	neg.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z19fighterPositionXAddP7Fighteri
__Z19fighterPositionXAddP7Fighteri:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 262(%a0),%d1
	move.w 248(%a0),%d0
	cmp.w #1,%d1
	jeq .L417
	cmp.w #-1,%d1
	jeq .L413
.L411:
	add.w %a1,%d0
	move.w %d0,248(%a0)
	cmp.w #9,%d0
	jle .L418
	cmp.w #716,%d0
	jle .L409
	move.w #716,248(%a0)
.L409:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L413:
	move.w %d0,%a2
	move.l 604(%a0),%a3
	sub.w 248(%a3),%a2
	cmp.w #279,%a2
	jle .L411
	cmp.w #0,%a1
	jle .L411
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L418:
	move.w #10,248(%a0)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L417:
	move.l 604(%a0),%a2
	move.w 248(%a2),%a2
	sub.w %d0,%a2
	cmp.w #279,%a2
	jle .L411
	cmp.w #0,%a1
	jge .L411
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.even
	.globl	__Z17fighterCastShadowP7Fighterb
__Z17fighterCastShadowP7Fighterb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l sprite,%a1
	move.l 2(%a2),%d0
	move.l %d0,%d1
	subq.l #1,%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a1
	move.w 8(%a1),8(%a0)
	move.l 28(%a1),28(%a0)
	move.l 32(%a1),32(%a0)
	move.l 104(%a1),104(%a0)
	move.l 48(%a1),48(%a0)
	move.l 44(%a1),44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	tst.b 15(%fp)
	jeq .L420
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L426
	jlt .L430
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L424
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L425
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L462
.L422:
	sub.w 242(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L435
	jge .L463
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L437
	cmp.l #128,%d0
	jeq .L438
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L436
.L431:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L444
	jlt .L448
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L442
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L443
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L441
	moveq #84,%d1
	not.b %d1
.L440:
	cmp.l %a1,%d1
	jge .L420
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L451
	jlt .L457
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L451
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L451
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L451
	move.w #171,%d1
.L451:
	move.w %d1,12(%a0)
.L420:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L430:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L428
	cmp.l #128,%d0
	jeq .L429
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L422
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L436:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L445:
	moveq #78,%d1
	not.b %d1
	jra .L440
.L426:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L435:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L444:
	moveq #75,%d1
	not.b %d1
	jra .L440
.L424:
	move.w %a1,%d1
	sub.w 242(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L433:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L442:
	moveq #69,%d1
	not.b %d1
	jra .L440
.L428:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L437:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L446:
	moveq #81,%d1
	not.b %d1
	jra .L440
.L462:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 242(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L441:
	moveq #66,%d1
	not.b %d1
	jra .L440
.L457:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L451
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L451
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L451
	move.w #171,%d1
	jra .L451
.L425:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L434:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L443:
	moveq #72,%d1
	not.b %d1
	jra .L440
.L429:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 242(%a2),%d1
	add.w %a1,%d1
.L438:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L447:
	moveq #87,%d1
	not.b %d1
	jra .L440
.L463:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L433
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L434
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L431
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L441
.L448:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L446
	cmp.l #128,%d0
	jeq .L447
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L445
	moveq #84,%d1
	not.b %d1
	jra .L440
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L470
	jge .L477
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L472
	cmp.l #128,%d0
	jeq .L473
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L478
.L466:
	moveq #21,%d0
	unlk %fp
	rts
.L477:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L475
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L469
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L466
	moveq #3,%d0
	unlk %fp
	rts
.L469:
	moveq #9,%d0
	unlk %fp
	rts
.L473:
	moveq #24,%d0
	unlk %fp
	rts
.L478:
	moveq #15,%d0
	unlk %fp
	rts
.L472:
	moveq #18,%d0
	unlk %fp
	rts
.L475:
	moveq #6,%d0
	unlk %fp
	rts
.L470:
	moveq #12,%d0
	unlk %fp
	rts
	.even
	.globl	__Z20fighterIsMaxDistanceP7FighterS0_
__Z20fighterIsMaxDistanceP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	cmp.w #1,262(%a0)
	jeq .L486
	move.w 240(%a0),%a2
	sub.w 240(%a1),%a2
	cmp.w #259,%a2
	jgt .L484
.L482:
	clr.b 271(%a0)
	clr.b 271(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L486:
	move.w 240(%a1),%a2
	sub.w 240(%a0),%a2
	cmp.w #259,%a2
	jle .L482
.L484:
	move.b #1,271(%a0)
	move.b #1,271(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z19fighterTorpedoCheckP12StateMachineP7FighterS2_
__Z19fighterTorpedoCheckP12StateMachineP7FighterS2_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	cmp.w #3,(%a1)
	jeq .L489
.L492:
	cmp.w #3,(%a0)
	jeq .L495
.L488:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L495:
	move.l 286(%a0),%a2
	cmp.w #48,(%a2)
	jne .L488
	cmp.w #1,280(%a0)
	jne .L488
	move.l 286(%a1),%a0
	cmp.w #49,(%a0)
	jne .L488
	move.l 408(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L489:
	move.l 286(%a1),%a2
	cmp.w #48,(%a2)
	jne .L492
	cmp.w #1,280(%a1)
	jne .L492
	move.l 286(%a0),%a2
	cmp.w #49,(%a2)
	jne .L492
	move.l 408(%a0),-(%sp)
	move.l %a0,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,165(%a0)
	unlk %fp
	rts
.LC0:
	.ascii "%02ld00\0"
	.even
	.globl	__Z17fighterDrawScoresP7FighterS0_
__Z17fighterDrawScoresP7FighterS0_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.b 200(%a3)
	jne .L499
	tst.b 200(%a2)
	jeq .L498
.L499:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 200(%a3)
	jne .L508
	tst.b 200(%a2)
	jeq .L498
.L509:
	clr.b 200(%a2)
	move.l 196(%a2),%d0
	move.l %d0,_tempScore
	jne .L505
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 196(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L498:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L508:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 196(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 200(%a2)
	jne .L509
	jra .L498
.L505:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L502:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L502
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L504
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 196(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L504:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 196(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
	.even
	.globl	__Z14fighterLaydownP7FighterP14SpriteAnimator
__Z14fighterLaydownP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 240(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 524(%a2),-(%sp)
	moveq #0,%d0
	move.w 78(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w 236(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jle .L511
	move.b #1,170(%a2)
	clr.w 14(%a3)
	move.w #90,242(%a2)
.L511:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 412(%a1),%a0
	clr.w 14(%a0)
	move.l 92(%a1),%d0
	move.l %d0,(%a0)
	move.l #12001440,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108960,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z13fighterFreezeP7Fighter
__Z13fighterFreezeP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 144(%a2)
	jne .L516
	move.b #1,144(%a2)
	clr.b 170(%a2)
	clr.b 145(%a2)
	moveq #-1,%d0
	move.l %d0,146(%a2)
	clr.l 150(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l %a0,154(%a2)
	move.w %d0,236(%a2)
	move.b #1,104(%a2)
	tst.b 266(%a2)
	jeq .L518
	pea 16.w
	pea 14.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 258(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L518:
	pea 16.w
	pea 15.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 258(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L516:
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 144(%a0)
	move.b #1,170(%a0)
	tst.b 266(%a0)
	jne .L526
	pea 16.w
	pea 15.w
	move.l 272(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L526:
	pea 16.w
	pea 14.w
	move.l 272(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z14fighterHarpoonP7FighterS0_
__Z14fighterHarpoonP7FighterS0_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	tst.b 125(%a0)
	jne .L528
	move.b #1,125(%a0)
	clr.b 110(%a0)
	move.w 262(%a0),%d1
	cmp.w #-1,%d1
	jeq .L537
	move.w 240(%a1),%d2
	move.w 240(%a0),%d3
	move.w %d2,%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a0)
.L531:
	cmp.w #149,%d0
	jgt .L532
	move.w #150,%d4
	sub.w %d0,%d4
	move.w %d4,%d0
	move.w %d4,106(%a0)
	tst.b 130(%a0)
	jeq .L538
.L533:
	cmp.w #-1,%d1
	jeq .L539
.L534:
	add.w #-48,%d2
	move.w %d2,108(%a0)
	move.w raptor_ticks,236(%a0)
	move.l 92(%a1),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 412(%a1),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12001440,8(%a1)
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108960,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L528:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L532:
	clr.w 106(%a0)
	cmp.w #-1,%d1
	jne .L534
.L539:
	add.w #48,%d2
	move.w %d2,108(%a0)
	move.w raptor_ticks,236(%a0)
	move.l 92(%a1),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 412(%a1),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12001440,8(%a1)
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108960,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L528
.L537:
	move.w 240(%a0),%d3
	move.w 240(%a1),%d2
	move.w %d3,%d0
	add.w #48,%d0
	sub.w %d2,%d0
	move.w %d0,106(%a0)
	jra .L531
.L538:
	move.b #1,130(%a0)
	move.w %d3,%a2
	muls.w %d1,%d0
	sub.l %d0,%a2
	move.l %a2,132(%a0)
	jra .L533
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 130(%a0)
	jne .L541
	move.b #1,130(%a0)
	move.l 12(%fp),132(%a0)
.L541:
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHarpoonCheckP7FighterS0_
__Z19fighterHarpoonCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.b 112(%a2),%d2
	jeq .L546
	tst.b 130(%a0)
	jeq .L553
.L547:
	cmp.w #-1,262(%a0)
	jeq .L554
.L549:
	move.w 240(%a0),%d3
	move.w 240(%a2),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,118(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L557
	addq.l #1,%d1
.L557:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L555
.L551:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 262(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
.L545:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L555:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	move.l %a0,88(%a1,%d0.l)
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L553:
	tst.b 110(%a0)
	jeq .L547
	clr.b 112(%a2)
	move.l 412(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12001440,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108960,-(%sp)
	jsr jsfLoadClut
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (12,%sp),%sp
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L546:
	tst.b 111(%a2)
	jeq .L545
	cmp.w #-1,262(%a0)
	jne .L549
.L554:
	move.w 240(%a2),%d3
	move.w 240(%a0),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,118(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L558
	addq.l #1,%d1
.L558:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L551
	jra .L555
	.even
	.globl	__Z20fighterCanTakeDamageP12StateMachineP7Fighter
__Z20fighterCanTakeDamageP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b 136(%a0),%d0
	eor.b #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z17fighterIsBlockingP12StateMachineP7Fighter
__Z17fighterIsBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 286(%a0),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L562
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L562:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z21fighterIsDuckBlockingP12StateMachineP7Fighter
__Z21fighterIsDuckBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 286(%a0),%a0
	cmp.w #8,(%a0)
	seq %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z16fighterIsJumpingP12StateMachineP7Fighter
__Z16fighterIsJumpingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 286(%a0),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L575
	cmp.w #19,%d0
	jeq .L575
	cmp.w #18,%d0
	jeq .L575
	cmp.w #7,%d0
	jeq .L575
	cmp.w #6,%d0
	jeq .L575
	cmp.w #22,%d0
	jeq .L575
	cmp.w #21,%d0
	jeq .L575
	cmp.w #24,%d0
	jeq .L575
	cmp.w #23,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L575:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z19fighterFaceOpponentP7Fighter
__Z19fighterFaceOpponentP7Fighter:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a0
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L583
	cmp.w #-1,%d0
	jeq .L584
.L578:
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L584:
	move.w 240(%a0),%a2
	move.l 604(%a0),%a1
	add.l _turnOffset,%a2
	move.w 240(%a1),%a1
	cmp.l %a2,%a1
	jle .L578
.L585:
	move.w #1,262(%a0)
	move.l sprite,%a1
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #1,%d2
	move.l %d2,24(%a1,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L583:
	move.w 240(%a0),%a2
	move.l 604(%a0),%a1
	move.w 240(%a1),%a3
	add.l _turnOffset,%a3
	cmp.l %a2,%a3
	jge .L578
	move.w #-1,262(%a0)
	move.l sprite,%a3
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d2
	move.l %d2,24(%a3,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a3,%d0.l)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a3,%d0.l)
	add.l _turnOffset,%a2
	move.w 240(%a1),%a1
	cmp.l %a2,%a1
	jle .L578
	jra .L585
	.even
	.globl	__Z20fighterTurnInstantlyP7Fighter
__Z20fighterTurnInstantlyP7Fighter:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.w 262(%a0),%d0
	neg.w %d0
	move.w %d0,262(%a0)
	move.l sprite,%a1
	cmp.w #1,%d0
	jeq .L592
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d2
	move.l %d2,24(%a1,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L592:
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #1,%d2
	move.l %d2,24(%a1,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.globl	_scoreLength
	.data
	.even
_scoreLength:
	.long	4
	.globl	_tempScore
	.bss
	.even
_tempScore:
	.skip 4
	.globl	_shadowY
	.even
_shadowY:
	.skip 4
	.globl	_walkForward
_walkForward:
	.skip 1
	.globl	_turnOffset
	.data
	.even
_turnOffset:
	.long	32
	.globl	_collision
	.bss
	.even
_collision:
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
