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
	move.w 2508(%a0),%a0
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
	moveq #64,%d1
	move.l %d1,188(%a2)
	moveq #62,%d2
	move.l %d2,92(%a2)
	move.b #2,%d1
	move.l %d1,202(%a2)
	move.w #210,240(%a2)
	moveq #-1,%d2
	move.l %d2,11928(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #-1,262(%a2)
	move.l #11904,%d0
	move.b #62,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 412(%a2),%a1
	clr.w 14(%a1)
	move.l %d1,(%a1)
	move.l #12001392,8(%a1)
	add.l %d0,%a0
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
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
	moveq #63,%d2
	move.l %d2,188(%a2)
	move.b #59,%d1
	move.l %d1,92(%a2)
	move.b #1,%d2
	move.l %d2,202(%a2)
	move.w #50,240(%a2)
	move.l %d2,11352(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,262(%a2)
	move.l #11328,%d0
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 412(%a2),%a1
	clr.w 14(%a1)
	move.l %d1,(%a1)
	move.l #12001392,8(%a1)
	add.l %d0,%a0
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
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
	and.l JAGPAD_7,%d0
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
	move.l #12001392,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	moveq #3,%d0
	move.l %d0,(%sp)
	pea 13.w
	move.l #12108912,-(%sp)
	lea jsfLoadClut,%a3
	jsr (%a3)
	move.l 412(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12001392,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	addq.l #8,%sp
	moveq #3,%d1
	move.l %d1,(%sp)
	pea 13.w
	move.l #12108912,-(%sp)
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
	jeq .L146
	cmp.w #2,%d0
	jeq .L148
	cmp.w #3,%d0
	jeq .L146
	cmp.w #4,%d0
	jeq .L146
	cmp.w #5,%d0
	jeq .L149
	cmp.w #6,%d0
	jne .L110
	tst.b 173(%a3)
	jne .L110
	move.b #1,173(%a3)
	tst.b 144(%a2)
	jne .L150
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L122
	cmp.w #8,%d0
	jeq .L122
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
.L110:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L146:
	move.b #1,173(%a3)
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L122
	cmp.w #8,%d0
	jeq .L122
	cmp.w #35,%d0
	jeq .L122
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
.L152:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L148:
	move.b #1,173(%a3)
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jne .L151
.L122:
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L151:
	cmp.w #8,%d0
	jeq .L122
	cmp.w #35,%d0
	jeq .L122
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
	jra .L152
.L149:
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
.L125:
	move.b #1,126(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L150:
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	clr.b 144(%a2)
	move.b #1,170(%a2)
	lea (16,%sp),%sp
	tst.b 266(%a2)
	jne .L153
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
.L154:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L153:
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
	jra .L154
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
	jeq .L157
	cmp.w #8,%d1
	jeq .L218
	tst.b 136(%a2)
	jne .L156
	move.l 286(%a0),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L219
	cmp.w #10,%d0
	jeq .L220
	cmp.w #13,%d0
	jeq .L221
	cmp.w #11,%d0
	jeq .L222
	cmp.w #12,%d0
	jeq .L223
	cmp.w #15,%d0
	jeq .L224
	cmp.w #14,%d0
	jeq .L225
	cmp.w #17,%d0
	jeq .L226
	cmp.w #16,%d0
	jeq .L227
	cmp.w #21,%d0
	jeq .L211
	cmp.w #22,%d0
	jeq .L211
	cmp.w #23,%d0
	jeq .L209
	cmp.w #24,%d0
	jeq .L209
	cmp.w #18,%d0
	jeq .L209
	cmp.w #19,%d0
	jeq .L210
	cmp.w #38,%d0
	jeq .L210
	cmp.w #39,%d0
	jeq .L228
	cmp.w #40,%d0
	jeq .L229
	cmp.w #44,%d0
	jeq .L215
	cmp.w #45,%d0
	jeq .L230
	cmp.w #47,%d0
	jeq .L215
	cmp.w #48,%d0
	jeq .L231
	cmp.w #51,%d0
	jeq .L215
	cmp.w #56,%d0
	jeq .L232
	cmp.w #20,%d0
	jeq .L233
	cmp.w #60,%d0
	jne .L161
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
.L161:
	tst.b 144(%a2)
	jeq .L156
	clr.b 144(%a2)
	move.b #1,170(%a2)
	moveq #16,%d1
	tst.b 266(%a2)
	jne .L234
	move.l %d1,16(%fp)
	moveq #15,%d0
	move.l %d0,12(%fp)
	move.l 272(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L156:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L157:
	move.l 286(%a0),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L235
	moveq #4,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	move.b #1,200(%a0)
	cmp.w #21,%d0
	jeq .L188
	cmp.w #23,%d0
	jeq .L188
	cmp.w #48,%d0
	jeq .L188
	cmp.w #56,%d0
	jeq .L188
	cmp.w #60,%d0
	jeq .L188
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L188:
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
.L218:
	moveq #4,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	move.b #1,200(%a0)
	move.l 286(%a0),%a1
	cmp.w #48,(%a1)
	jeq .L236
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
.L237:
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L219:
	moveq #8,%d0
	move.l %d0,252(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
.L200:
	move.b #1,200(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L161
.L220:
	moveq #8,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	addq.l #5,196(%a0)
	jra .L200
.L234:
	move.l %d1,16(%fp)
	moveq #14,%d0
	move.l %d0,12(%fp)
	move.l 272(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L221:
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
	jra .L161
.L225:
	moveq #20,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	add.l %d1,196(%a0)
	move.b #1,200(%a0)
.L204:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L161
.L235:
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
.L236:
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
	jra .L237
.L210:
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
.L238:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L161
.L222:
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
	jra .L161
.L223:
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
	jra .L161
.L209:
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
	jra .L238
.L211:
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
	jra .L161
.L224:
	moveq #24,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	moveq #20,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	jra .L204
.L226:
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
	jra .L161
.L227:
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
	jra .L161
.L215:
	cmp.w #2,%d1
	jeq .L161
	moveq #20,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
.L239:
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
	jra .L161
.L228:
	moveq #16,%d1
	move.l %d1,252(%a2)
	clr.b 256(%a2)
	moveq #50,%d0
	add.l %d0,196(%a0)
	move.b #1,200(%a0)
	move.l %d4,-(%sp)
	jra .L239
.L229:
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
	jra .L161
.L230:
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
	jra .L161
.L232:
	cmp.w #2,%d1
	jeq .L161
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
	jra .L238
.L231:
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
	jra .L161
.L233:
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
	jra .L161
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a2
	tst.b 137(%a3)
	jeq .L242
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L264
.L242:
	tst.b 137(%a2)
	jeq .L243
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d6
	cmp.l 112(%a0,%d0.l),%d6
	jeq .L265
.L243:
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
	jlt .L241
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP12StateMachineP7FighterS2_,%d5
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L246
.L269:
	cmp.w #0,%a0
	jlt .L241
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 92(%a3),%d0
	cmp.l %d2,%d0
	jeq .L247
	cmp.l 92(%a2),%d2
	jeq .L247
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d6
	move.l %d6,112(%a0,%d1.l)
.L247:
	cmp.l %d0,%d3
	jeq .L248
	cmp.l 92(%a2),%d3
	jeq .L248
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L248:
	moveq #63,%d6
	cmp.l %d2,%d6
	jeq .L266
	moveq #58,%d1
	cmp.l %d2,%d1
	jeq .L267
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L250
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L256
.L250:
	move.l 286(%a3),%a0
	move.w (%a0),%d0
.L255:
	cmp.w #43,%d0
	jeq .L257
	cmp.w #52,%d0
	jeq .L257
	cmp.w #57,%d0
	jeq .L257
.L258:
	move.l 286(%a2),%a0
	move.w (%a0),%d0
	cmp.w #43,%d0
	jeq .L259
	cmp.w #52,%d0
	jeq .L259
	cmp.w #57,%d0
	jeq .L259
.L260:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L268
.L261:
	move.l colliders,%d0
.L262:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L269
.L246:
	cmp.w #0,%a0
	jge .L262
.L241:
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L268:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L261
	move.l 286(%a2),%a0
	cmp.w #3,(%a0)
	jne .L261
	move.b #1,137(%a2)
	move.b #1,158(%a3)
	move.w raptor_ticks,238(%a3)
	move.l colliders,%d0
	jra .L262
.L259:
	cmp.l 92(%a2),%d2
	jne .L260
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L260
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L261
	jra .L268
.L257:
	cmp.l 92(%a3),%d2
	jne .L258
	moveq #61,%d6
	cmp.l %d3,%d6
	jne .L258
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L258
.L267:
	moveq #61,%d6
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L255
	cmp.w #3,%d0
	jne .L255
	move.b #1,137(%a3)
	move.b #1,158(%a2)
	move.w raptor_ticks,238(%a2)
	jra .L258
.L266:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L250
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	jra .L255
.L256:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 286(%a3),%a0
	move.w (%a0),%d0
	lea (20,%sp),%sp
	jra .L255
.L265:
	clr.b 137(%a2)
	jra .L243
.L264:
	clr.b 137(%a3)
	jra .L242
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
	jeq .L301
	cmp.w #-1,%d0
	jeq .L302
.L274:
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L303
.L275:
	cmp.w #-1,%d0
	jne .L271
	move.w 240(%a0),%a3
	add.l _turnOffset,%a3
	move.w 240(%a1),%a2
	cmp.l %a3,%a2
	jle .L271
.L298:
	tst.b 138(%a0)
	jne .L271
	tst.b 144(%a0)
	jne .L271
	move.l 286(%a0),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L271
	cmp.w #56,%d0
	jeq .L271
	move.l 286(%a1),%a1
	cmp.w #56,(%a1)
	jeq .L271
	move.b #1,138(%a0)
.L271:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L302:
	move.w 240(%a1),%a3
	add.l _turnOffset,%a3
	move.w 240(%a0),%a2
	cmp.l %a3,%a2
	jle .L274
	tst.b 138(%a1)
	jne .L274
.L304:
	tst.b 144(%a1)
	jne .L274
	move.l 286(%a1),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L274
	cmp.w #56,%d0
	jeq .L274
	move.l 286(%a0),%a2
	cmp.w #56,(%a2)
	jeq .L274
	move.b #1,138(%a1)
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jne .L275
.L303:
	move.w 240(%a0),%a3
	move.w 240(%a1),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jlt .L298
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L301:
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L274
	tst.b 138(%a1)
	jne .L274
	jra .L304
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
	jeq .L311
	move.l 286(%a1),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L311
	cmp.w #1,%d0
	jeq .L311
	cmp.w #1,%d1
	jeq .L311
	cmp.w #8,%d0
	jeq .L311
	cmp.w #8,%d1
	jeq .L311
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L314
	cmp.w #-1,%d0
	jne .L311
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L312
.L311:
	clr.b 139(%a0)
	clr.b 139(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L314:
	move.w 240(%a1),%a3
	move.w 240(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L311
.L312:
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
	jne .L318
	tst.b 256(%a2)
	jne .L323
	move.l 248(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,248(%a2)
	jle .L324
.L321:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L318:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L323:
	clr.b 256(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 248(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,248(%a2)
	jgt .L321
.L324:
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
	jne .L334
	moveq #16,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L334:
	moveq #14,%d0
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
	jle .L350
.L338:
	cmp.w #261,%d0
	jgt .L342
.L347:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L350:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L346
	move.w 240(%a2),%d0
	cmp.w #11,%d0
	jgt .L338
	cmp.w #261,240(%a3)
	jgt .L346
	jsr (%a4)
	tst.b %d0
	jne .L346
	move.w 240(%a2),%d0
	cmp.w #261,%d0
	jle .L347
.L342:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L351
.L346:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L351:
	cmp.w #309,240(%a2)
	jle .L347
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
	jeq .L354
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L360
	jlt .L364
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L358
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L359
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L396
.L356:
	sub.w 242(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L369
	jge .L397
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L371
	cmp.l #128,%d0
	jeq .L372
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L370
.L365:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L378
	jlt .L382
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L376
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L377
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L375
	moveq #84,%d1
	not.b %d1
.L374:
	cmp.l %a1,%d1
	jge .L354
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L385
	jlt .L391
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L385
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L385
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L385
	move.w #171,%d1
.L385:
	move.w %d1,12(%a0)
.L354:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L364:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L362
	cmp.l #128,%d0
	jeq .L363
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L356
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L370:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L379:
	moveq #78,%d1
	not.b %d1
	jra .L374
.L360:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L369:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L378:
	moveq #75,%d1
	not.b %d1
	jra .L374
.L358:
	move.w %a1,%d1
	sub.w 242(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L367:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L376:
	moveq #69,%d1
	not.b %d1
	jra .L374
.L362:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L371:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L380:
	moveq #81,%d1
	not.b %d1
	jra .L374
.L396:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 242(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L375:
	moveq #66,%d1
	not.b %d1
	jra .L374
.L391:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L385
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L385
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L385
	move.w #171,%d1
	jra .L385
.L359:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 242(%a2),%d1
.L368:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L377:
	moveq #72,%d1
	not.b %d1
	jra .L374
.L363:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 242(%a2),%d1
	add.w %a1,%d1
.L372:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L381:
	moveq #87,%d1
	not.b %d1
	jra .L374
.L397:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L367
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L368
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L365
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L375
.L382:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L380
	cmp.l #128,%d0
	jeq .L381
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L379
	moveq #84,%d1
	not.b %d1
	jra .L374
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L404
	jge .L411
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L406
	cmp.l #128,%d0
	jeq .L407
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L412
.L400:
	moveq #21,%d0
	unlk %fp
	rts
.L411:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L409
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L403
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L400
	moveq #3,%d0
	unlk %fp
	rts
.L403:
	moveq #9,%d0
	unlk %fp
	rts
.L407:
	moveq #24,%d0
	unlk %fp
	rts
.L412:
	moveq #15,%d0
	unlk %fp
	rts
.L406:
	moveq #18,%d0
	unlk %fp
	rts
.L409:
	moveq #6,%d0
	unlk %fp
	rts
.L404:
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
	jeq .L420
	move.w 240(%a0),%a2
	sub.w 240(%a1),%a2
	cmp.w #259,%a2
	jgt .L418
.L416:
	clr.b 271(%a0)
	clr.b 271(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L420:
	move.w 240(%a1),%a2
	sub.w 240(%a0),%a2
	cmp.w #259,%a2
	jle .L416
.L418:
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
	jeq .L423
.L426:
	cmp.w #3,(%a0)
	jeq .L429
.L422:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L429:
	move.l 286(%a0),%a2
	cmp.w #48,(%a2)
	jne .L422
	cmp.w #1,280(%a0)
	jne .L422
	move.l 286(%a1),%a0
	cmp.w #49,(%a0)
	jne .L422
	move.l 408(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L423:
	move.l 286(%a1),%a2
	cmp.w #48,(%a2)
	jne .L426
	cmp.w #1,280(%a1)
	jne .L426
	move.l 286(%a0),%a2
	cmp.w #49,(%a2)
	jne .L426
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
	jne .L433
	tst.b 200(%a2)
	jeq .L432
.L433:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 200(%a3)
	jne .L442
	tst.b 200(%a2)
	jeq .L432
.L443:
	clr.b 200(%a2)
	move.l 196(%a2),%d0
	move.l %d0,_tempScore
	jne .L439
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
.L432:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L442:
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
	jne .L443
	jra .L432
.L439:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L436:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L436
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L438
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
.L438:
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
	jle .L445
	move.b #1,170(%a2)
	clr.w 14(%a3)
	move.w #90,242(%a2)
.L445:
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
	move.l #12001392,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
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
	jne .L450
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
	jeq .L452
	pea 16.w
	pea 14.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 258(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L452:
	pea 16.w
	pea 15.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 258(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L450:
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
	jne .L460
	pea 16.w
	pea 15.w
	move.l 272(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L460:
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
	jne .L462
	move.b #1,125(%a0)
	clr.b 110(%a0)
	move.w 262(%a0),%d1
	cmp.w #-1,%d1
	jeq .L471
	move.w 240(%a1),%d2
	move.w 240(%a0),%d3
	move.w %d2,%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a0)
.L465:
	cmp.w #149,%d0
	jgt .L466
	move.w #150,%d4
	sub.w %d0,%d4
	move.w %d4,%d0
	move.w %d4,106(%a0)
	tst.b 130(%a0)
	jeq .L472
.L467:
	cmp.w #-1,%d1
	jeq .L473
.L468:
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
	move.l #12001392,8(%a1)
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L462:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L466:
	clr.w 106(%a0)
	cmp.w #-1,%d1
	jne .L468
.L473:
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
	move.l #12001392,8(%a1)
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L462
.L471:
	move.w 240(%a0),%d3
	move.w 240(%a1),%d2
	move.w %d3,%d0
	add.w #48,%d0
	sub.w %d2,%d0
	move.w %d0,106(%a0)
	jra .L465
.L472:
	move.b #1,130(%a0)
	move.w %d3,%a2
	muls.w %d1,%d0
	sub.l %d0,%a2
	move.l %a2,132(%a0)
	jra .L467
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 130(%a0)
	jne .L475
	move.b #1,130(%a0)
	move.l 12(%fp),132(%a0)
.L475:
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
	jeq .L480
	tst.b 130(%a0)
	jeq .L487
.L481:
	cmp.w #-1,262(%a0)
	jeq .L488
.L483:
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
	jpl .L491
	addq.l #1,%d1
.L491:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L489
.L485:
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
.L479:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L489:
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
.L487:
	tst.b 110(%a0)
	jeq .L481
	clr.b 112(%a2)
	move.l 412(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12001392,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
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
.L480:
	tst.b 111(%a2)
	jeq .L479
	cmp.w #-1,262(%a0)
	jne .L483
.L488:
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
	jpl .L492
	addq.l #1,%d1
.L492:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L485
	jra .L489
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
	jeq .L496
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L496:
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
	jeq .L505
	cmp.w #-1,%d0
	jeq .L506
.L500:
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L506:
	move.w 240(%a0),%a2
	move.l 604(%a0),%a1
	add.l _turnOffset,%a2
	move.w 240(%a1),%a1
	cmp.l %a2,%a1
	jle .L500
.L507:
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
.L505:
	move.w 240(%a0),%a2
	move.l 604(%a0),%a1
	move.w 240(%a1),%a3
	add.l _turnOffset,%a3
	cmp.l %a2,%a3
	jge .L500
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
	jle .L500
	jra .L507
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
	jeq .L514
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
.L514:
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
