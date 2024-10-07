#NO_APP
	.text
	.even
__Z17fighterCastShadowP7Fighterb.constprop.3:
	link.w %fp,#0
	move.l %a2,-(%sp)
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
	tst.b 145(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,4(%a0)
	move.l (%sp)+,%a2
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
	jls .L18
.L7:
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
.L18:
	moveq #0,%d0
	move.w (%a0),%d0
	add.l %d0,%d0
	move.w .L15(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L15:
	.word .L7-.L15
	.word .L8-.L15
	.word .L9-.L15
	.word .L10-.L15
	.word .L11-.L15
	.word .L13-.L15
	.word .L13-.L15
	.word .L14-.L15
.L13:
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
.L8:
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
.L9:
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
.L10:
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
.L11:
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
.L14:
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
	clr.l 198(%a0)
	move.b #1,202(%a0)
	move.l sprite,%a2
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a2,%d1.l),%a1
	tst.b 15(%fp)
	jne .L24
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
	move.w #-1,266(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,242(%a0)
	move.w #106,244(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L24:
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
	move.w #1,266(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,242(%a0)
	move.w #106,244(%a0)
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
	clr.b 166(%a2)
	clr.b 167(%a2)
	move.l 16(%fp),262(%a2)
	move.l 20(%fp),374(%a2)
	move.l 24(%fp),378(%a2)
	move.l 28(%fp),382(%a2)
	move.l 32(%fp),386(%a2)
	move.l 36(%fp),398(%a2)
	move.l 40(%fp),402(%a2)
	move.l 44(%fp),390(%a2)
	move.l 48(%fp),394(%a2)
	move.l 52(%fp),406(%a2)
	move.l 56(%fp),410(%a2)
	move.l 60(%fp),414(%a2)
	move.l 64(%fp),418(%a2)
	move.l 68(%fp),422(%a2)
	clr.l 194(%a2)
	clr.w 240(%a2)
	clr.w 106(%a2)
	move.b #1,140(%a2)
	clr.b 98(%a2)
	clr.b 138(%a2)
	move.b #1,101(%a2)
	move.b #1,99(%a2)
	clr.b 102(%a2)
	move.b #1,100(%a2)
	move.b #1,172(%a2)
	clr.b 236(%a2)
	clr.b 139(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.b 271(%a2)
	clr.b 141(%a2)
	clr.b 142(%a2)
	clr.b 143(%a2)
	clr.b 144(%a2)
	clr.b 146(%a2)
	clr.b 160(%a2)
	clr.b 145(%a2)
	clr.b 161(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.b 302(%a2)
	clr.w 168(%a2)
	clr.w 170(%a2)
	clr.b 173(%a2)
	clr.b 174(%a2)
	clr.b 184(%a2)
	clr.b 185(%a2)
	clr.l 186(%a2)
	moveq #50,%d0
	move.l %d0,176(%a2)
	moveq #20,%d2
	move.l %d2,180(%a2)
	move.b %d1,270(%a2)
	move.w #120,256(%a2)
	clr.w 258(%a2)
	clr.b 260(%a2)
	clr.b 268(%a2)
	clr.b 269(%a2)
	move.b #1,274(%a2)
	move.l 2(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d3
	move.l %d3,4(%a0,%d0.l)
	tst.b %d1
	jne .L30
	moveq #65,%d2
	move.l %d2,190(%a2)
	moveq #63,%d3
	move.l %d3,92(%a2)
	moveq #2,%d0
	move.l %d0,204(%a2)
	jsr __Z14stageGetStartXv
	add.w #220,%d0
	move.w %d0,252(%a2)
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
	move.w #-1,266(%a2)
	moveq #1,%d1
	move.l %d1,4(%a1)
	move.l 434(%a2),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12001440,8(%a1)
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108960,-(%sp)
	jsr jsfLoadClut
	move.w #90,244(%a2)
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,167(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L30:
	moveq #64,%d0
	move.l %d0,190(%a2)
	moveq #62,%d1
	move.l %d1,92(%a2)
	move.l %d3,204(%a2)
	jsr __Z14stageGetStartXv
	add.w #70,%d0
	move.w %d0,252(%a2)
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
	move.w #1,266(%a2)
	moveq #1,%d1
	move.l %d1,4(%a1)
	move.l 434(%a2),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12001440,8(%a1)
	move.l #12001440,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108960,-(%sp)
	jsr jsfLoadClut
	move.w #90,244(%a2)
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,167(%a2)
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
	clr.w 272(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
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
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
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
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
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
	move.l 194(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L39
	tst.b 99(%a2)
	jne .L44
.L39:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L40
	tst.b 99(%a2)
	jne .L45
.L40:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L41
	tst.b 99(%a2)
	jne .L46
.L41:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L38
	tst.b 99(%a2)
	jeq .L38
	tst.b 102(%a2)
	jeq .L47
.L38:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L46:
	tst.b 102(%a2)
	jne .L41
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L41
.L45:
	tst.b 102(%a2)
	jne .L40
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L40
.L44:
	tst.b 102(%a2)
	jne .L39
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L47:
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
	.globl	__Z21fighterHandleFatalityP12StateMachineP7FighterP14SpriteAnimator
__Z21fighterHandleFatalityP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 12(%fp),%a2
	move.l 646(%a2),%a0
	move.l 294(%a0),%a1
	cmp.w #68,(%a1)
	jeq .L64
.L61:
	clr.b %d0
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L64:
	cmp.w #1,266(%a2)
	jeq .L65
	move.w 252(%a2),%d2
	add.w #-48,%d2
	sub.w 252(%a0),%d2
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L53
.L67:
	tst.b 101(%a2)
	jeq .L53
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
.L53:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L54
	tst.b 101(%a2)
	jeq .L54
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L54:
	move.w 350(%a2),%a0
	move.l %a0,-(%sp)
	move.l 340(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L61
	tst.b 352(%a2)
	jne .L66
	cmp.w #39,%d2
	jle .L61
	cmp.w #100,%d2
	jgt .L61
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 370(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
.L68:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L65:
	move.w 252(%a0),%d2
	add.w #-48,%d2
	sub.w 252(%a2),%d2
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L53
	jra .L67
.L66:
	cmp.w #-32,%d2
	jlt .L61
	cmp.w #32,%d2
	jgt .L61
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 370(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	jra .L68
	.even
	.globl	__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	tst.b 136(%a2)
	jne .L78
	tst.b 146(%a2)
	jne .L78
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L72
	tst.b 101(%a2)
	jeq .L72
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
.L72:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L73
	tst.b 101(%a2)
	jeq .L73
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L73:
	move.w 344(%a2),%a0
	move.l %a0,-(%sp)
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L80
	move.w 346(%a2),%a0
	move.l %a0,-(%sp)
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L81
	move.w 348(%a2),%a0
	move.l %a0,-(%sp)
	move.l 336(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L78
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 362(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L78:
	clr.b %d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L81:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 358(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L80:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 354(%a2),%a0
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
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L85
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L89
.L85:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L84
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L87
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L87
	and.l JAGPAD_RIGHT,%d0
	jne .L87
	move.b #1,99(%a2)
	clr.b 102(%a2)
.L87:
	move.b #1,100(%a2)
.L84:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L89:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L85
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L85
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L85
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L85
	move.l %d0,%d1
	and.l JAGPAD_0,%d1
	jne .L85
	move.l %d0,%d1
	and.l JAGPAD_HASH,%d1
	jne .L85
	and.l JAGPAD_STAR,%d0
	jne .L85
	move.b #1,101(%a2)
	jra .L85
	.even
	.globl	__Z15fighterPlayHiyaiP12SoundHandlerb
__Z15fighterPlayHiyaiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #6,%d2
	cmp.l %d0,%d2
	jeq .L94
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L95
	move.b #4,%d2
	cmp.l %d0,%d2
	jeq .L98
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandler
.L98:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandler
.L95:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandler
.L94:
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
	jeq .L105
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandler
.L105:
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
	jeq .L109
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L113
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandler
.L109:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandler
.L113:
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
	jle .L120
.L116:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandler
.L120:
	move.b #6,%d2
	cmp.l %d0,%d2
	jlt .L121
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandler
.L121:
	move.b #7,%d2
	cmp.l %d0,%d2
	jne .L116
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxJumpFemaleP12SoundHandler
	.even
	.globl	__Z24fighterPlayFatalityGroaniP12SoundHandlerb
__Z24fighterPlayFatalityGroaniP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L125
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L129
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanMaleP12SoundHandler
.L125:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanKangP12SoundHandler
.L129:
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z22sfxFatalityGroanFemaleP12SoundHandler
	.even
	.globl	__Z25fighterPlayFatalityScreamiP12SoundHandlerb
__Z25fighterPlayFatalityScreamiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L133
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L137
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z21sfxFatalityScreamMaleP12SoundHandler
.L133:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanKangP12SoundHandler
.L137:
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z23sfxFatalityScreamFemaleP12SoundHandler
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
	jne .L143
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L144
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L144:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L143:
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
	move.l 190(%a0),%d0
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
	clr.b 144(%a0)
	clr.b 142(%a0)
	clr.b 271(%a0)
	clr.b 146(%a0)
	clr.b 160(%a0)
	clr.b 145(%a0)
	clr.b 143(%a0)
	clr.b 161(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 173(%a0)
	clr.b 260(%a0)
	clr.b 268(%a0)
	clr.b 269(%a0)
	move.b #1,274(%a0)
	clr.b 302(%a0)
	move.b #1,141(%a0)
	clr.w 258(%a0)
	move.w raptor_ticks,238(%a0)
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
	move.l 190(%a3),%d0
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
	clr.b 144(%a3)
	clr.b 142(%a3)
	clr.b 271(%a3)
	clr.b 146(%a3)
	clr.b 160(%a3)
	clr.b 145(%a3)
	clr.b 143(%a3)
	clr.b 161(%a3)
	clr.b 164(%a3)
	clr.b 165(%a3)
	clr.b 173(%a3)
	clr.b 260(%a3)
	clr.b 268(%a3)
	clr.b 269(%a3)
	move.b #1,274(%a3)
	clr.b 302(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 190(%a2),%d0
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
	clr.b 144(%a2)
	clr.b 142(%a2)
	clr.b 271(%a2)
	clr.b 146(%a2)
	clr.b 160(%a2)
	clr.b 145(%a2)
	clr.b 143(%a2)
	clr.b 161(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.b 173(%a2)
	clr.b 260(%a2)
	clr.b 268(%a2)
	clr.b 269(%a2)
	move.b #1,274(%a2)
	clr.b 302(%a2)
	move.l %a3,-(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 434(%a3),%a0
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
	move.l 434(%a2),%a0
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
	move.l 190(%a0),%d0
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
	clr.b 144(%a0)
	clr.b 142(%a0)
	clr.b 271(%a0)
	clr.b 146(%a0)
	clr.b 160(%a0)
	clr.b 145(%a0)
	clr.b 143(%a0)
	clr.b 161(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 173(%a0)
	clr.b 260(%a0)
	clr.b 268(%a0)
	clr.b 269(%a0)
	move.b #1,274(%a0)
	clr.b 302(%a0)
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
	jeq .L192
	cmp.w #2,%d0
	jeq .L196
	cmp.w #3,%d0
	jeq .L192
	cmp.w #4,%d0
	jeq .L192
	cmp.w #5,%d0
	jeq .L197
	cmp.w #6,%d0
	jeq .L198
	cmp.w #7,%d0
	jeq .L192
	cmp.w #9,%d0
	jeq .L199
.L149:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L192:
	move.b #1,175(%a3)
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L173
	cmp.w #8,%d0
	jeq .L173
	cmp.w #35,%d0
	jeq .L173
	move.b #1,103(%a2)
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L201:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L196:
	move.b #1,175(%a3)
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jne .L200
.L173:
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L200:
	cmp.w #8,%d0
	jeq .L173
	cmp.w #35,%d0
	jeq .L173
	move.b #1,166(%a2)
	move.b #1,103(%a2)
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L201
.L197:
	move.b #1,175(%a3)
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L164
	cmp.w #8,%d0
	jeq .L164
	move.w #-1,120(%a3)
	move.w #32,116(%a3)
	clr.w 122(%a3)
	move.w #8,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 53.w
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 430(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 54.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L198:
	tst.b 175(%a3)
	jne .L149
	move.b #1,175(%a3)
	tst.b 146(%a2)
	jne .L202
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L173
	cmp.w #8,%d0
	jeq .L173
	clr.w 258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L199:
	move.b #1,175(%a3)
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L149
	cmp.w #19,%d0
	jeq .L149
	cmp.w #18,%d0
	jeq .L149
	cmp.w #7,%d0
	jeq .L149
	cmp.w #6,%d0
	jeq .L149
	cmp.w #22,%d0
	jeq .L149
	cmp.w #21,%d0
	jeq .L149
	cmp.w #24,%d0
	jeq .L149
	cmp.w #23,%d0
	jeq .L149
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L164:
	move.b #1,127(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L202:
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	clr.b 146(%a2)
	move.b #1,172(%a2)
	lea (16,%sp),%sp
	tst.b 270(%a2)
	jne .L203
	pea 16.w
	pea 15.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 430(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
.L204:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L203:
	pea 16.w
	pea 14.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 430(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	jra .L204
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
	move.l 294(%a2),%a1
	move.w (%a1),%d1
	cmp.w #1,%d1
	jeq .L207
	cmp.w #8,%d1
	jeq .L276
	tst.b 136(%a2)
	jne .L206
	move.l 294(%a0),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L255
	cmp.w #10,%d0
	jeq .L255
	cmp.w #13,%d0
	jeq .L277
	cmp.w #11,%d0
	jeq .L257
	cmp.w #12,%d0
	jeq .L257
	cmp.w #15,%d0
	jeq .L278
	cmp.w #14,%d0
	jeq .L279
	cmp.w #17,%d0
	jeq .L280
	cmp.w #16,%d0
	jeq .L281
	cmp.w #21,%d0
	jeq .L268
	cmp.w #22,%d0
	jeq .L268
	cmp.w #23,%d0
	jeq .L267
	cmp.w #24,%d0
	jeq .L267
	cmp.w #18,%d0
	jeq .L267
	cmp.w #19,%d0
	jeq .L266
	cmp.w #38,%d0
	jeq .L266
	cmp.w #39,%d0
	jeq .L282
	cmp.w #40,%d0
	jeq .L283
	cmp.w #44,%d0
	jeq .L273
	cmp.w #45,%d0
	jeq .L284
	cmp.w #47,%d0
	jeq .L273
	cmp.w #48,%d0
	jeq .L285
	cmp.w #51,%d0
	jeq .L273
	cmp.w #56,%d0
	jeq .L286
	cmp.w #20,%d0
	jeq .L287
	cmp.w #60,%d0
	jeq .L270
	cmp.w #61,%d0
	jeq .L288
	cmp.w #63,%d0
	jeq .L270
	cmp.w #65,%d0
	jne .L211
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.b #1,126(%a2)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L211:
	tst.b 146(%a2)
	jeq .L206
	clr.b 146(%a2)
	move.b #1,172(%a2)
	moveq #16,%d0
	tst.b 270(%a2)
	jne .L289
	move.l %d0,16(%fp)
	move.b #15,%d0
	move.l %d0,12(%fp)
	move.l 276(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L206:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L207:
	move.l 294(%a0),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L290
	cmp.w #65,%d0
	jeq .L291
	move.w #4,258(%a2)
	clr.b 260(%a2)
	move.b #1,202(%a0)
	cmp.w #21,%d0
	jeq .L242
	cmp.w #23,%d0
	jeq .L242
	cmp.w #48,%d0
	jeq .L242
	cmp.w #56,%d0
	jeq .L242
	cmp.w #60,%d0
	jeq .L242
	cmp.w #61,%d0
	jeq .L242
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L242:
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
.L255:
	move.w #8,258(%a2)
	clr.b 260(%a2)
	addq.l #5,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L276:
	move.w #4,258(%a2)
	clr.b 260(%a2)
	move.b #1,202(%a0)
	move.l 294(%a0),%a1
	move.w (%a1),%d0
	cmp.w #48,%d0
	jeq .L249
	cmp.w #65,%d0
	jeq .L249
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
.L292:
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L257:
	move.w #8,258(%a2)
	clr.b 260(%a2)
	addq.l #5,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 26.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L289:
	move.l %d0,16(%fp)
	move.b #14,%d0
	move.l %d0,12(%fp)
	move.l 276(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L277:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L279:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
.L260:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L249:
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
	jra .L292
.L290:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #10,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
.L266:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L293:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L267:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #10,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L293
.L268:
	move.w #24,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	jra .L211
.L278:
	move.w #24,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	jra .L260
.L280:
	move.w #8,258(%a2)
	clr.b 260(%a2)
	addq.l #5,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 30.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L281:
	move.w #32,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	jra .L211
.L273:
	cmp.w #2,%d1
	jeq .L211
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
.L294:
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
	jra .L211
.L291:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.b #1,126(%a2)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	move.b #41,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L282:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
	jra .L294
.L283:
	move.w #32,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L284:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 46.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L286:
	cmp.w #2,%d1
	jeq .L211
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L293
.L285:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 49.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L211
.L270:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	jra .L211
.L287:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #10,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	jra .L211
.L288:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	jra .L211
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a2
	tst.b 137(%a3)
	jeq .L297
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L319
.L297:
	tst.b 137(%a2)
	jeq .L298
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d6
	cmp.l 112(%a0,%d0.l),%d6
	jeq .L320
.L298:
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
	jlt .L296
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP12StateMachineP7FighterS2_,%d5
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L301
.L324:
	cmp.w #0,%a0
	jlt .L296
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 92(%a3),%d0
	cmp.l %d2,%d0
	jeq .L302
	cmp.l 92(%a2),%d2
	jeq .L302
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d6
	move.l %d6,112(%a0,%d1.l)
.L302:
	cmp.l %d0,%d3
	jeq .L303
	cmp.l 92(%a2),%d3
	jeq .L303
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L303:
	moveq #64,%d6
	cmp.l %d2,%d6
	jeq .L321
	moveq #59,%d1
	cmp.l %d2,%d1
	jeq .L322
	moveq #65,%d0
	cmp.l %d2,%d0
	jne .L305
	moveq #59,%d1
	cmp.l %d3,%d1
	jeq .L311
.L305:
	move.l 294(%a3),%a0
	move.w (%a0),%d0
.L310:
	cmp.w #43,%d0
	jeq .L312
	cmp.w #52,%d0
	jeq .L312
	cmp.w #57,%d0
	jeq .L312
	cmp.w #64,%d0
	jeq .L312
.L313:
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #43,%d0
	jeq .L314
	cmp.w #52,%d0
	jeq .L314
	cmp.w #57,%d0
	jeq .L314
	cmp.w #64,%d0
	jeq .L314
.L315:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L323
.L316:
	move.l colliders,%d0
.L317:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L324
.L301:
	cmp.w #0,%a0
	jge .L317
.L296:
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L323:
	moveq #59,%d1
	cmp.l %d3,%d1
	jne .L316
	move.l 294(%a2),%a0
	cmp.w #3,(%a0)
	jne .L316
	move.b #1,137(%a2)
	move.b #1,160(%a3)
	move.w raptor_ticks,240(%a3)
	move.l colliders,%d0
	jra .L317
.L314:
	cmp.l 92(%a2),%d2
	jne .L315
	moveq #59,%d0
	cmp.l %d3,%d0
	jne .L315
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L316
	jra .L323
.L312:
	cmp.l 92(%a3),%d2
	jne .L313
	moveq #61,%d6
	cmp.l %d3,%d6
	jne .L313
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L313
.L322:
	moveq #61,%d6
	move.l 294(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L310
	cmp.w #3,%d0
	jne .L310
	move.b #1,137(%a3)
	move.b #1,160(%a2)
	move.w raptor_ticks,240(%a2)
	jra .L313
.L321:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L305
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	move.l 294(%a3),%a0
	move.w (%a0),%d0
	jra .L310
.L311:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 294(%a3),%a0
	move.w (%a0),%d0
	lea (20,%sp),%sp
	jra .L310
.L320:
	clr.b 137(%a2)
	jra .L298
.L319:
	clr.b 137(%a3)
	jra .L297
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 266(%a1),%d0
	cmp.w #1,%d0
	jeq .L380
	cmp.w #-1,%d0
	jeq .L381
.L329:
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L382
.L330:
	cmp.w #-1,%d0
	jne .L326
	move.w 252(%a0),%a3
	add.l _turnOffset,%a3
	move.w 252(%a1),%a2
	cmp.l %a3,%a2
	jle .L326
.L377:
	tst.b 138(%a0)
	jne .L326
	tst.b 146(%a0)
	jne .L326
	move.l 294(%a0),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L326
	cmp.w #56,%d0
	jeq .L326
	move.l 294(%a1),%a1
	move.w (%a1),%d1
	cmp.w #56,%d1
	jeq .L326
	cmp.w #61,%d1
	jeq .L326
	cmp.w #61,%d0
	jeq .L326
	cmp.w #62,%d1
	jeq .L326
	cmp.w #62,%d0
	jeq .L326
	cmp.w #63,%d0
	jeq .L326
	cmp.w #65,%d0
	jeq .L326
	move.b #1,138(%a0)
.L326:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L381:
	move.w 252(%a1),%a3
	add.l _turnOffset,%a3
	move.w 252(%a0),%a2
	cmp.l %a3,%a2
	jle .L329
	tst.b 138(%a1)
	jne .L329
.L383:
	tst.b 146(%a1)
	jne .L329
	move.l 294(%a1),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L329
	cmp.w #56,%d0
	jeq .L329
	move.l 294(%a0),%a2
	move.w (%a2),%d1
	cmp.w #56,%d1
	jeq .L329
	cmp.w #61,%d0
	jeq .L329
	cmp.w #61,%d1
	jeq .L329
	cmp.w #62,%d0
	jeq .L329
	cmp.w #62,%d1
	jeq .L329
	cmp.w #63,%d0
	jeq .L329
	cmp.w #65,%d0
	jeq .L329
	move.b #1,138(%a1)
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jne .L330
.L382:
	move.w 252(%a0),%a3
	move.w 252(%a1),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jlt .L377
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L380:
	move.w 252(%a1),%a3
	move.w 252(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L329
	tst.b 138(%a1)
	jne .L329
	jra .L383
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 294(%a0),%a2
	move.w (%a2),%d0
	cmp.w #40,%d0
	jeq .L390
	move.l 294(%a1),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L390
	cmp.w #1,%d0
	jeq .L390
	cmp.w #1,%d1
	jeq .L390
	cmp.w #8,%d0
	jeq .L390
	cmp.w #8,%d1
	jeq .L390
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L393
	cmp.w #-1,%d0
	jne .L390
	move.w 242(%a1),%a3
	move.w 242(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L391
.L390:
	clr.b 139(%a0)
	clr.b 139(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L393:
	move.w 242(%a1),%a3
	move.w 242(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L390
.L391:
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
	move.w 14(%fp),258(%a1)
	move.b 19(%fp),260(%a1)
	move.l 24(%fp),%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	jne .L397
	tst.b 260(%a2)
	jne .L401
	sub.w %d2,256(%a2)
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L397:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L401:
	clr.b 260(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	sub.w %d2,256(%a2)
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
	cmp.w #-1,266(%a0)
	jeq .L404
	move.w 252(%a0),%d0
.L405:
	addq.w #2,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L410
	cmp.w #716,%d0
	jle .L403
	move.w #716,252(%a0)
.L403:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L410:
	move.w #16,252(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L404:
	move.w 252(%a0),%d0
	move.w %d0,%a1
	move.l 646(%a0),%a2
	sub.w 252(%a2),%a1
	cmp.w #279,%a1
	jle .L405
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,266(%a0)
	jeq .L413
	move.w 252(%a0),%d0
.L414:
	subq.w #2,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L419
	cmp.w #716,%d0
	jle .L412
	move.w #716,252(%a0)
.L412:
	unlk %fp
	rts
.L419:
	move.w #16,252(%a0)
	unlk %fp
	rts
.L413:
	move.w 252(%a0),%d0
	move.l 646(%a0),%a1
	move.w 252(%a1),%a1
	sub.w %d0,%a1
	cmp.w #279,%a1
	jle .L414
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
	jne .L427
	moveq #17,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L427:
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
	move.w #90,244(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 242(%a2),%d0
	cmp.w #11,%d0
	jle .L443
.L431:
	cmp.w #261,%d0
	jgt .L435
.L440:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L443:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L439
	move.w 242(%a2),%d0
	cmp.w #11,%d0
	jgt .L431
	cmp.w #261,242(%a3)
	jgt .L439
	jsr (%a4)
	tst.b %d0
	jne .L439
	move.w 242(%a2),%d0
	cmp.w #261,%d0
	jle .L440
.L435:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L444
.L439:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L444:
	cmp.w #309,242(%a2)
	jle .L440
	cmp.w #10,242(%a3)
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
	move.w 266(%a0),%d1
	move.w 252(%a0),%d0
	cmp.w #1,%d1
	jeq .L454
	cmp.w #-1,%d1
	jeq .L450
.L448:
	add.w %a1,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L455
	cmp.w #716,%d0
	jle .L446
	move.w #716,252(%a0)
.L446:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L450:
	move.w %d0,%a2
	move.l 646(%a0),%a3
	sub.w 252(%a3),%a2
	cmp.w #279,%a2
	jle .L448
	cmp.w #0,%a1
	jle .L448
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L455:
	move.w #16,252(%a0)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L454:
	move.l 646(%a0),%a2
	move.w 252(%a2),%a2
	sub.w %d0,%a2
	cmp.w #279,%a2
	jle .L448
	cmp.w #0,%a1
	jge .L448
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
	tst.b 145(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,4(%a0)
	tst.b 15(%fp)
	jeq .L457
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L464
	jlt .L468
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L462
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L463
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L501
.L460:
	sub.w 244(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L473
	jge .L502
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L475
	cmp.l #128,%d0
	jeq .L476
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L474
.L469:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L482
	jlt .L486
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L480
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L481
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L479
	moveq #84,%d1
	not.b %d1
.L478:
	cmp.l %a1,%d1
	jge .L457
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L489
	jlt .L495
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L489
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L489
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L489
	move.w #171,%d1
.L489:
	move.w %d1,12(%a0)
.L457:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L468:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L466
	cmp.l #128,%d0
	jeq .L467
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L460
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 244(%a2),%d1
.L474:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L483:
	moveq #78,%d1
	not.b %d1
	jra .L478
.L464:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 244(%a2),%d1
.L473:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L482:
	moveq #75,%d1
	not.b %d1
	jra .L478
.L462:
	move.w %a1,%d1
	sub.w 244(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L471:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L480:
	moveq #69,%d1
	not.b %d1
	jra .L478
.L466:
	move.w %d0,%d1
	add.w #-18,%d1
	sub.w 244(%a2),%d1
	add.w %a1,%d1
.L475:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L484:
	moveq #81,%d1
	not.b %d1
	jra .L478
.L501:
	move.w %d0,%d1
	subq.w #3,%d1
	add.w %a1,%d1
	sub.w 244(%a2),%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L479:
	moveq #66,%d1
	not.b %d1
	jra .L478
.L495:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L489
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L489
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L489
	move.w #171,%d1
	jra .L489
.L463:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 244(%a2),%d1
.L472:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L481:
	moveq #72,%d1
	not.b %d1
	jra .L478
.L467:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 244(%a2),%d1
	add.w %a1,%d1
.L476:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L485:
	moveq #87,%d1
	not.b %d1
	jra .L478
.L502:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L471
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L472
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L469
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L479
.L486:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L484
	cmp.l #128,%d0
	jeq .L485
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L483
	moveq #84,%d1
	not.b %d1
	jra .L478
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L509
	jge .L516
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L511
	cmp.l #128,%d0
	jeq .L512
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L517
.L505:
	moveq #21,%d0
	unlk %fp
	rts
.L516:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L514
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L508
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L505
	moveq #3,%d0
	unlk %fp
	rts
.L508:
	moveq #9,%d0
	unlk %fp
	rts
.L512:
	moveq #24,%d0
	unlk %fp
	rts
.L517:
	moveq #15,%d0
	unlk %fp
	rts
.L511:
	moveq #18,%d0
	unlk %fp
	rts
.L514:
	moveq #6,%d0
	unlk %fp
	rts
.L509:
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
	cmp.w #1,266(%a0)
	jeq .L525
	move.w 242(%a0),%a2
	sub.w 242(%a1),%a2
	cmp.w #259,%a2
	jgt .L523
.L521:
	clr.b 275(%a0)
	clr.b 275(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L525:
	move.w 242(%a1),%a2
	sub.w 242(%a0),%a2
	cmp.w #259,%a2
	jle .L521
.L523:
	move.b #1,275(%a0)
	move.b #1,275(%a1)
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
	jeq .L528
.L531:
	cmp.w #3,(%a0)
	jeq .L534
.L527:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L534:
	move.l 294(%a0),%a2
	cmp.w #48,(%a2)
	jne .L527
	cmp.w #1,284(%a0)
	jne .L527
	move.l 294(%a1),%a0
	cmp.w #49,(%a0)
	jne .L527
	move.l 430(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L528:
	move.l 294(%a1),%a2
	cmp.w #48,(%a2)
	jne .L531
	cmp.w #1,284(%a1)
	jne .L531
	move.l 294(%a0),%a2
	cmp.w #49,(%a2)
	jne .L531
	move.l 430(%a0),-(%sp)
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
	move.b #1,167(%a0)
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
	tst.b 202(%a3)
	jne .L538
	tst.b 202(%a2)
	jeq .L537
.L538:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 202(%a3)
	jne .L547
	tst.b 202(%a2)
	jeq .L537
.L548:
	clr.b 202(%a2)
	move.l 198(%a2),%d0
	move.l %d0,_tempScore
	jne .L544
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 198(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L537:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L547:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 198(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 202(%a2)
	jne .L548
	jra .L537
.L544:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L541:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L541
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L543
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 198(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L543:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 198(%a2),(%sp)
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
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	moveq #0,%d0
	move.w 78(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w 238(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jle .L550
	move.b #1,172(%a2)
	clr.w 14(%a3)
	move.w #90,244(%a2)
.L550:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 434(%a1),%a0
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
	tst.b 146(%a2)
	jne .L555
	move.b #1,146(%a2)
	clr.b 172(%a2)
	clr.b 147(%a2)
	moveq #-1,%d0
	move.l %d0,148(%a2)
	clr.l 152(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l %a0,156(%a2)
	move.w %d0,238(%a2)
	move.b #1,104(%a2)
	tst.b 270(%a2)
	jeq .L557
	pea 16.w
	pea 14.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L557:
	pea 16.w
	pea 15.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L555:
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 146(%a0)
	move.b #1,172(%a0)
	tst.b 270(%a0)
	jne .L565
	pea 16.w
	pea 15.w
	move.l 276(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L565:
	pea 16.w
	pea 14.w
	move.l 276(%a0),-(%sp)
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
	jne .L567
	move.b #1,125(%a0)
	clr.b 110(%a0)
	move.w 266(%a0),%d1
	cmp.w #-1,%d1
	jeq .L576
	move.w 242(%a1),%d2
	move.w 242(%a0),%d3
	move.w %d2,%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a0)
.L570:
	cmp.w #149,%d0
	jgt .L571
	move.w #150,%d4
	sub.w %d0,%d4
	move.w %d4,%d0
	move.w %d4,106(%a0)
	tst.b 130(%a0)
	jeq .L577
.L572:
	cmp.w #-1,%d1
	jeq .L578
.L573:
	add.w #-48,%d2
	move.w %d2,108(%a0)
	move.w raptor_ticks,238(%a0)
	move.l 92(%a1),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 434(%a1),%a1
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
.L567:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L571:
	clr.w 106(%a0)
	cmp.w #-1,%d1
	jne .L573
.L578:
	add.w #48,%d2
	move.w %d2,108(%a0)
	move.w raptor_ticks,238(%a0)
	move.l 92(%a1),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 434(%a1),%a1
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
	jra .L567
.L576:
	move.w 242(%a0),%d3
	move.w 242(%a1),%d2
	move.w %d3,%d0
	add.w #48,%d0
	sub.w %d2,%d0
	move.w %d0,106(%a0)
	jra .L570
.L577:
	move.b #1,130(%a0)
	move.w %d3,%a2
	muls.w %d1,%d0
	sub.l %d0,%a2
	move.l %a2,132(%a0)
	jra .L572
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 130(%a0)
	jne .L580
	move.b #1,130(%a0)
	move.l 12(%fp),132(%a0)
.L580:
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
	jeq .L585
	tst.b 130(%a0)
	jeq .L592
.L586:
	cmp.w #-1,266(%a0)
	jeq .L593
.L588:
	move.w 242(%a0),%d3
	move.w 242(%a2),%d1
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
	jpl .L596
	addq.l #1,%d1
.L596:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L594
.L590:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 266(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
.L584:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L594:
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
.L592:
	tst.b 110(%a0)
	jeq .L586
	clr.b 112(%a2)
	move.l 434(%a2),%a0
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
.L585:
	tst.b 111(%a2)
	jeq .L584
	cmp.w #-1,266(%a0)
	jne .L588
.L593:
	move.w 242(%a2),%d3
	move.w 242(%a0),%d1
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
	jpl .L597
	addq.l #1,%d1
.L597:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L590
	jra .L594
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
	move.l 294(%a0),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L601
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L601:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z21fighterIsDuckBlockingP12StateMachineP7Fighter
__Z21fighterIsDuckBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 294(%a0),%a0
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
	move.l 294(%a0),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L614
	cmp.w #19,%d0
	jeq .L614
	cmp.w #18,%d0
	jeq .L614
	cmp.w #7,%d0
	jeq .L614
	cmp.w #6,%d0
	jeq .L614
	cmp.w #22,%d0
	jeq .L614
	cmp.w #21,%d0
	jeq .L614
	cmp.w #24,%d0
	jeq .L614
	cmp.w #23,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L614:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z19fighterFaceOpponentP7Fighter
__Z19fighterFaceOpponentP7Fighter:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a0
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L622
	cmp.w #-1,%d0
	jeq .L623
.L617:
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L623:
	move.w 242(%a0),%a2
	move.l 646(%a0),%a1
	add.l _turnOffset,%a2
	move.w 242(%a1),%a1
	cmp.l %a2,%a1
	jle .L617
.L624:
	move.w #1,266(%a0)
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
.L622:
	move.w 242(%a0),%a2
	move.l 646(%a0),%a1
	move.w 242(%a1),%a3
	add.l _turnOffset,%a3
	cmp.l %a2,%a3
	jge .L617
	move.w #-1,266(%a0)
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
	move.w 242(%a1),%a1
	cmp.l %a2,%a1
	jle .L617
	jra .L624
	.even
	.globl	__Z20fighterTurnInstantlyP7Fighter
__Z20fighterTurnInstantlyP7Fighter:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.w 266(%a0),%d0
	neg.w %d0
	move.w %d0,266(%a0)
	move.l sprite,%a1
	cmp.w #1,%d0
	jeq .L631
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
.L631:
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
