#NO_APP
	.text
	.even
__Z17fighterCastShadowP7Fighterb.constprop.2:
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
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d2
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
	moveq #20,%d1
	move.l %d1,178(%a2)
	move.b %d2,266(%a2)
	move.b #120,%d0
	move.l %d0,248(%a2)
	clr.l 252(%a2)
	clr.b 256(%a2)
	clr.b 264(%a2)
	clr.b 265(%a2)
	move.b #1,270(%a2)
	move.l sprite,%a0
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a1
	moveq #1,%d1
	move.l %d1,4(%a1)
	tst.b %d2
	jne .L28
	moveq #65,%d1
	move.l %d1,188(%a2)
	moveq #63,%d2
	move.l %d2,92(%a2)
	move.b #2,%d1
	move.l %d1,202(%a2)
	move.w #210,240(%a2)
	moveq #-1,%d2
	move.l %d2,12120(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #-1,262(%a2)
	move.l #12096,%d0
	move.b #63,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 412(%a2),%a1
	clr.w 14(%a1)
	move.l %d1,(%a1)
	move.l #12001440,8(%a1)
	add.l %d0,%a0
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
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L28:
	moveq #64,%d2
	move.l %d2,188(%a2)
	move.b #60,%d1
	move.l %d1,92(%a2)
	move.b #1,%d2
	move.l %d2,202(%a2)
	move.w #50,240(%a2)
	move.l %d2,11544(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,262(%a2)
	move.l #11520,%d0
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 412(%a2),%a1
	clr.w 14(%a1)
	move.l %d1,(%a1)
	move.l #12001440,8(%a1)
	add.l %d0,%a0
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
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.2)
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.2)
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.2)
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
	clr.l 252(%a0)
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
	jeq .L151
	cmp.w #2,%d0
	jeq .L155
	cmp.w #3,%d0
	jeq .L151
	cmp.w #4,%d0
	jeq .L151
	cmp.w #5,%d0
	jeq .L156
	cmp.w #6,%d0
	jeq .L157
	cmp.w #7,%d0
	jeq .L151
.L110:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L151:
	move.b #1,173(%a3)
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L133
	cmp.w #8,%d0
	jeq .L133
	cmp.w #35,%d0
	jeq .L133
	move.b #1,103(%a2)
	moveq #20,%d0
	move.l %d0,252(%a2)
	clr.b 256(%a2)
	add.l %d0,196(%a3)
	move.b #1,200(%a3)
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L159:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L155:
	move.b #1,173(%a3)
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jne .L158
.L133:
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L158:
	cmp.w #8,%d0
	jeq .L133
	cmp.w #35,%d0
	jeq .L133
	move.b #1,164(%a2)
	move.b #1,103(%a2)
	moveq #20,%d0
	move.l %d0,252(%a2)
	clr.b 256(%a2)
	add.l %d0,196(%a3)
	move.b #1,200(%a3)
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L159
.L156:
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
	moveq #8,%d0
	move.l %d0,252(%a2)
	clr.b 256(%a2)
	move.b #20,%d0
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
.L157:
	tst.b 173(%a3)
	jne .L110
	move.b #1,173(%a3)
	tst.b 144(%a2)
	jne .L160
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L133
	cmp.w #8,%d0
	jeq .L133
	clr.l 252(%a2)
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
.L125:
	move.b #1,126(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L160:
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	clr.b 144(%a2)
	move.b #1,170(%a2)
	lea (16,%sp),%sp
	tst.b 266(%a2)
	jne .L161
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
.L162:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L161:
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
	jra .L162
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
	jeq .L165
	cmp.w #8,%d1
	jeq .L230
	tst.b 136(%a2)
	jne .L164
	move.l 286(%a0),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L231
	cmp.w #10,%d0
	jeq .L232
	cmp.w #13,%d0
	jeq .L233
	cmp.w #11,%d0
	jeq .L234
	cmp.w #12,%d0
	jeq .L235
	cmp.w #15,%d0
	jeq .L236
	cmp.w #14,%d0
	jeq .L237
	cmp.w #17,%d0
	jeq .L238
	cmp.w #16,%d0
	jeq .L239
	cmp.w #21,%d0
	jeq .L222
	cmp.w #22,%d0
	jeq .L222
	cmp.w #23,%d0
	jeq .L221
	cmp.w #24,%d0
	jeq .L221
	cmp.w #18,%d0
	jeq .L221
	cmp.w #19,%d0
	jeq .L220
	cmp.w #38,%d0
	jeq .L220
	cmp.w #39,%d0
	jeq .L240
	cmp.w #40,%d0
	jeq .L241
	cmp.w #44,%d0
	jeq .L227
	cmp.w #45,%d0
	jeq .L242
	cmp.w #47,%d0
	jeq .L227
	cmp.w #48,%d0
	jeq .L243
	cmp.w #51,%d0
	jeq .L227
	cmp.w #56,%d0
	jeq .L244
	cmp.w #20,%d0
	jeq .L245
	cmp.w #60,%d0
	jeq .L224
	cmp.w #61,%d0
	jeq .L246
	cmp.w #63,%d0
	jeq .L224
.L169:
	tst.b 144(%a2)
	jeq .L164
	clr.b 144(%a2)
	move.b #1,170(%a2)
	moveq #16,%d1
	tst.b 266(%a2)
	jne .L247
	move.l %d1,16(%fp)
	moveq #15,%d0
	move.l %d0,12(%fp)
	move.l 272(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L164:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L165:
	move.l 286(%a0),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L248
	moveq #4,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	move.b #1,200(%a0)
	cmp.w #21,%d0
	jeq .L198
	cmp.w #23,%d0
	jeq .L198
	cmp.w #48,%d0
	jeq .L198
	cmp.w #56,%d0
	jeq .L198
	cmp.w #60,%d0
	jeq .L198
	cmp.w #61,%d0
	jeq .L198
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L198:
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #37,%d1
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L230:
	moveq #4,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	move.b #1,200(%a0)
	move.l 286(%a0),%a1
	cmp.w #48,(%a1)
	jeq .L249
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
.L250:
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L231:
	moveq #8,%d0
	move.l %d0,252(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
.L210:
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L169
.L232:
	moveq #8,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
	jra .L210
.L247:
	move.l %d1,16(%fp)
	moveq #14,%d0
	move.l %d0,12(%fp)
	move.l 272(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L233:
	moveq #20,%d0
	move.l %d0,252(%a2)
	clr.b 256(%a2)
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L169
.L237:
	moveq #20,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	add.l %d1,196(%a0)
	move.b #1,200(%a0)
.L214:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L169
.L248:
	moveq #16,%d1
	move.l %d1,252(%a2)
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
	moveq #27,%d1
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L249:
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
	jra .L250
.L220:
	moveq #16,%d1
	move.l %d1,252(%a2)
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
.L251:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L169
.L224:
	moveq #20,%d1
	move.l %d1,252(%a2)
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
	jra .L169
.L234:
	moveq #8,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 26.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L169
.L235:
	moveq #8,%d0
	move.l %d0,252(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 26.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L169
.L221:
	moveq #20,%d1
	move.l %d1,252(%a2)
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
	jra .L251
.L222:
	moveq #24,%d1
	move.l %d1,252(%a2)
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
	jra .L169
.L236:
	moveq #24,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	jra .L214
.L238:
	moveq #8,%d0
	move.l %d0,252(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 30.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L169
.L239:
	moveq #32,%d1
	move.l %d1,252(%a2)
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
	jra .L169
.L227:
	cmp.w #2,%d1
	jeq .L169
	moveq #20,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
.L252:
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
	jra .L169
.L240:
	moveq #16,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
	jra .L252
.L241:
	moveq #32,%d1
	move.l %d1,252(%a2)
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
	jra .L169
.L242:
	moveq #20,%d1
	move.l %d1,252(%a2)
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
	jra .L169
.L244:
	cmp.w #2,%d1
	jeq .L169
	moveq #20,%d1
	move.l %d1,252(%a2)
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
	jra .L251
.L243:
	moveq #20,%d1
	move.l %d1,252(%a2)
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
	jra .L169
.L245:
	moveq #16,%d1
	move.l %d1,252(%a2)
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
	jra .L169
.L246:
	moveq #20,%d1
	move.l %d1,252(%a2)
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
	jra .L169
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a2
	tst.b 137(%a3)
	jeq .L255
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L277
.L255:
	tst.b 137(%a2)
	jeq .L256
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d6
	cmp.l 112(%a0,%d0.l),%d6
	jeq .L278
.L256:
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
	jlt .L254
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP12StateMachineP7FighterS2_,%d5
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L259
.L282:
	cmp.w #0,%a0
	jlt .L254
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 92(%a3),%d0
	cmp.l %d2,%d0
	jeq .L260
	cmp.l 92(%a2),%d2
	jeq .L260
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d6
	move.l %d6,112(%a0,%d1.l)
.L260:
	cmp.l %d0,%d3
	jeq .L261
	cmp.l 92(%a2),%d3
	jeq .L261
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L261:
	moveq #64,%d6
	cmp.l %d2,%d6
	jeq .L279
	moveq #59,%d1
	cmp.l %d2,%d1
	jeq .L280
	moveq #65,%d0
	cmp.l %d2,%d0
	jne .L263
	moveq #59,%d1
	cmp.l %d3,%d1
	jeq .L269
.L263:
	move.l 286(%a3),%a0
	move.w (%a0),%d0
.L268:
	cmp.w #43,%d0
	jeq .L270
	cmp.w #52,%d0
	jeq .L270
	cmp.w #57,%d0
	jeq .L270
.L271:
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #43,%d0
	jeq .L272
	cmp.w #52,%d0
	jeq .L272
	cmp.w #57,%d0
	jeq .L272
.L273:
	moveq #62,%d0
	cmp.l %d2,%d0
	jeq .L281
.L274:
	move.l colliders,%d0
.L275:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L282
.L259:
	cmp.w #0,%a0
	jge .L275
.L254:
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L281:
	moveq #59,%d1
	cmp.l %d3,%d1
	jne .L274
	move.l 286(%a2),%a0
	cmp.w #3,(%a0)
	jne .L274
	move.b #1,137(%a2)
	move.b #1,158(%a3)
	move.w raptor_ticks,238(%a3)
	move.l colliders,%d0
	jra .L275
.L272:
	cmp.l 92(%a2),%d2
	jne .L273
	moveq #59,%d0
	cmp.l %d3,%d0
	jne .L273
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L274
	jra .L281
.L270:
	cmp.l 92(%a3),%d2
	jne .L271
	moveq #62,%d6
	cmp.l %d3,%d6
	jne .L271
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L271
.L280:
	moveq #62,%d6
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L268
	cmp.w #3,%d0
	jne .L268
	move.b #1,137(%a3)
	move.b #1,158(%a2)
	move.w raptor_ticks,238(%a2)
	jra .L271
.L279:
	moveq #62,%d0
	cmp.l %d3,%d0
	jne .L263
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	jra .L268
.L269:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	lea (20,%sp),%sp
	jra .L268
.L278:
	clr.b 137(%a2)
	jra .L256
.L277:
	clr.b 137(%a3)
	jra .L255
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
	jeq .L334
	cmp.w #-1,%d0
	jeq .L335
.L287:
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L336
.L288:
	cmp.w #-1,%d0
	jne .L284
	move.w 240(%a0),%a3
	add.l _turnOffset,%a3
	move.w 240(%a1),%a2
	cmp.l %a3,%a2
	jle .L284
.L331:
	tst.b 138(%a0)
	jne .L284
	tst.b 144(%a0)
	jne .L284
	move.l 286(%a0),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L284
	cmp.w #56,%d0
	jeq .L284
	move.l 286(%a1),%a1
	move.w (%a1),%d1
	cmp.w #56,%d1
	jeq .L284
	cmp.w #61,%d1
	jeq .L284
	cmp.w #61,%d0
	jeq .L284
	cmp.w #62,%d1
	jeq .L284
	cmp.w #62,%d0
	jeq .L284
	cmp.w #63,%d0
	jeq .L284
	move.b #1,138(%a0)
.L284:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L335:
	move.w 240(%a1),%a3
	add.l _turnOffset,%a3
	move.w 240(%a0),%a2
	cmp.l %a3,%a2
	jle .L287
	tst.b 138(%a1)
	jne .L287
.L337:
	tst.b 144(%a1)
	jne .L287
	move.l 286(%a1),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L287
	cmp.w #56,%d0
	jeq .L287
	move.l 286(%a0),%a2
	move.w (%a2),%d1
	cmp.w #56,%d1
	jeq .L287
	cmp.w #61,%d0
	jeq .L287
	cmp.w #61,%d1
	jeq .L287
	cmp.w #62,%d0
	jeq .L287
	cmp.w #62,%d1
	jeq .L287
	cmp.w #63,%d0
	jeq .L287
	move.b #1,138(%a1)
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jne .L288
.L336:
	move.w 240(%a0),%a3
	move.w 240(%a1),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jlt .L331
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L334:
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L287
	tst.b 138(%a1)
	jne .L287
	jra .L337
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
	jeq .L344
	move.l 286(%a1),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L344
	cmp.w #1,%d0
	jeq .L344
	cmp.w #1,%d1
	jeq .L344
	cmp.w #8,%d0
	jeq .L344
	cmp.w #8,%d1
	jeq .L344
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L347
	cmp.w #-1,%d0
	jne .L344
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L345
.L344:
	clr.b 139(%a0)
	clr.b 139(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L347:
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L344
.L345:
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
	move.l 12(%fp),252(%a1)
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
	jne .L351
	tst.b 256(%a2)
	jne .L356
	move.l 248(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,248(%a2)
	jle .L357
.L354:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L351:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L356:
	clr.b 256(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 248(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,248(%a2)
	jgt .L354
.L357:
	clr.l 248(%a2)
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
	move.l 8(%fp),%a0
	addq.w #2,240(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	subq.w #2,240(%a0)
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
	jne .L367
	moveq #17,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L367:
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
	jle .L383
.L371:
	cmp.w #261,%d0
	jgt .L375
.L380:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L383:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L379
	move.w 240(%a2),%d0
	cmp.w #11,%d0
	jgt .L371
	cmp.w #261,240(%a3)
	jgt .L379
	jsr (%a4)
	tst.b %d0
	jne .L379
	move.w 240(%a2),%d0
	cmp.w #261,%d0
	jle .L380
.L375:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L384
.L379:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L384:
	cmp.w #309,240(%a2)
	jle .L380
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
	move.l 8(%fp),%a0
	move.w 14(%fp),%d0
	add.w %d0,240(%a0)
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
	jeq .L387
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L393
	jlt .L397
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L391
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L392
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L429
.L389:
	sub.w 242(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L402
	jge .L430
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L404
	cmp.l #128,%d0
	jeq .L405
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L403
.L398:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L411
	jlt .L415
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L409
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L410
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L408
	moveq #84,%d1
	not.b %d1
.L407:
	cmp.l %a1,%d1
	jge .L387
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L418
	jlt .L424
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L418
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L418
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L418
	move.w #171,%d1
.L418:
	move.w %d1,12(%a0)
.L387:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L397:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L395
	cmp.l #128,%d0
	jeq .L396
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L389
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L403:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L412:
	moveq #78,%d1
	not.b %d1
	jra .L407
.L393:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L402:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L411:
	moveq #75,%d1
	not.b %d1
	jra .L407
.L391:
	move.w %a1,%d1
	sub.w 242(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L400:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L409:
	moveq #69,%d1
	not.b %d1
	jra .L407
.L395:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L404:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L413:
	moveq #81,%d1
	not.b %d1
	jra .L407
.L429:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 242(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L408:
	moveq #66,%d1
	not.b %d1
	jra .L407
.L424:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L418
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L418
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L418
	move.w #171,%d1
	jra .L418
.L392:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L401:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L410:
	moveq #72,%d1
	not.b %d1
	jra .L407
.L396:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 242(%a2),%d1
	add.w %a1,%d1
.L405:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L414:
	moveq #87,%d1
	not.b %d1
	jra .L407
.L430:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L400
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L401
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L398
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L408
.L415:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L413
	cmp.l #128,%d0
	jeq .L414
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L412
	moveq #84,%d1
	not.b %d1
	jra .L407
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L437
	jge .L444
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L439
	cmp.l #128,%d0
	jeq .L440
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L445
.L433:
	moveq #21,%d0
	unlk %fp
	rts
.L444:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L442
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L436
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L433
	moveq #3,%d0
	unlk %fp
	rts
.L436:
	moveq #9,%d0
	unlk %fp
	rts
.L440:
	moveq #24,%d0
	unlk %fp
	rts
.L445:
	moveq #15,%d0
	unlk %fp
	rts
.L439:
	moveq #18,%d0
	unlk %fp
	rts
.L442:
	moveq #6,%d0
	unlk %fp
	rts
.L437:
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
	jeq .L453
	move.w 240(%a0),%a2
	sub.w 240(%a1),%a2
	cmp.w #259,%a2
	jgt .L451
.L449:
	clr.b 271(%a0)
	clr.b 271(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L453:
	move.w 240(%a1),%a2
	sub.w 240(%a0),%a2
	cmp.w #259,%a2
	jle .L449
.L451:
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
	jeq .L456
.L459:
	cmp.w #3,(%a0)
	jeq .L462
.L455:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L462:
	move.l 286(%a0),%a2
	cmp.w #48,(%a2)
	jne .L455
	cmp.w #1,280(%a0)
	jne .L455
	move.l 286(%a1),%a0
	cmp.w #49,(%a0)
	jne .L455
	move.l 408(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L456:
	move.l 286(%a1),%a2
	cmp.w #48,(%a2)
	jne .L459
	cmp.w #1,280(%a1)
	jne .L459
	move.l 286(%a0),%a2
	cmp.w #49,(%a2)
	jne .L459
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
	jne .L466
	tst.b 200(%a2)
	jeq .L465
.L466:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 200(%a3)
	jne .L475
	tst.b 200(%a2)
	jeq .L465
.L476:
	clr.b 200(%a2)
	move.l 196(%a2),%d0
	move.l %d0,_tempScore
	jne .L472
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
.L465:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L475:
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
	jne .L476
	jra .L465
.L472:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L469:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L469
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L471
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
.L471:
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
	jle .L478
	move.b #1,170(%a2)
	clr.w 14(%a3)
	move.w #90,242(%a2)
.L478:
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
	jne .L483
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
	jeq .L485
	pea 16.w
	pea 14.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 258(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L485:
	pea 16.w
	pea 15.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 258(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L483:
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
	jne .L493
	pea 16.w
	pea 15.w
	move.l 272(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L493:
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
	jne .L495
	move.b #1,125(%a0)
	clr.b 110(%a0)
	move.w 262(%a0),%d1
	cmp.w #-1,%d1
	jeq .L504
	move.w 240(%a1),%d2
	move.w 240(%a0),%d3
	move.w %d2,%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a0)
.L498:
	cmp.w #149,%d0
	jgt .L499
	move.w #150,%d4
	sub.w %d0,%d4
	move.w %d4,%d0
	move.w %d4,106(%a0)
	tst.b 130(%a0)
	jeq .L505
.L500:
	cmp.w #-1,%d1
	jeq .L506
.L501:
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
.L495:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L499:
	clr.w 106(%a0)
	cmp.w #-1,%d1
	jne .L501
.L506:
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
	jra .L495
.L504:
	move.w 240(%a0),%d3
	move.w 240(%a1),%d2
	move.w %d3,%d0
	add.w #48,%d0
	sub.w %d2,%d0
	move.w %d0,106(%a0)
	jra .L498
.L505:
	move.b #1,130(%a0)
	move.w %d3,%a2
	muls.w %d1,%d0
	sub.l %d0,%a2
	move.l %a2,132(%a0)
	jra .L500
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 130(%a0)
	jne .L508
	move.b #1,130(%a0)
	move.l 12(%fp),132(%a0)
.L508:
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
	jeq .L513
	tst.b 130(%a0)
	jeq .L520
.L514:
	cmp.w #-1,262(%a0)
	jeq .L521
.L516:
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
	jpl .L524
	addq.l #1,%d1
.L524:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L522
.L518:
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
.L512:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L522:
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
.L520:
	tst.b 110(%a0)
	jeq .L514
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
.L513:
	tst.b 111(%a2)
	jeq .L512
	cmp.w #-1,262(%a0)
	jne .L516
.L521:
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
	jpl .L525
	addq.l #1,%d1
.L525:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L518
	jra .L522
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
	jeq .L529
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L529:
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
	.globl	__Z19fighterFaceOpponentP7Fighter
__Z19fighterFaceOpponentP7Fighter:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a0
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L538
	cmp.w #-1,%d0
	jeq .L539
.L533:
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L539:
	move.w 240(%a0),%a2
	move.l 604(%a0),%a1
	add.l _turnOffset,%a2
	move.w 240(%a1),%a1
	cmp.l %a2,%a1
	jle .L533
.L540:
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
.L538:
	move.w 240(%a0),%a2
	move.l 604(%a0),%a1
	move.w 240(%a1),%a3
	add.l _turnOffset,%a3
	cmp.l %a2,%a3
	jge .L533
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
	jle .L533
	jra .L540
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
	jeq .L547
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
.L547:
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
