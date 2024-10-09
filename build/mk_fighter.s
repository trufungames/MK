#NO_APP
	.text
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
	jls .L15
.L4:
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
.L15:
	moveq #0,%d0
	move.w (%a0),%d0
	add.l %d0,%d0
	move.w .L12(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L12:
	.word .L4-.L12
	.word .L5-.L12
	.word .L6-.L12
	.word .L7-.L12
	.word .L8-.L12
	.word .L10-.L12
	.word .L10-.L12
	.word .L11-.L12
.L10:
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
.L5:
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
.L6:
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
.L7:
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
.L8:
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
.L11:
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
	jne .L21
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
.L21:
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
	jne .L27
	moveq #64,%d2
	move.l %d2,190(%a2)
	moveq #62,%d3
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
.L27:
	moveq #63,%d0
	move.l %d0,190(%a2)
	moveq #61,%d1
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
	move.l 2(%a2),%d0
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (32,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
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
	move.l 2(%a2),%d0
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (32,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
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
	move.l 2(%a2),%d0
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (32,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
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
	jeq .L36
	tst.b 99(%a2)
	jne .L41
.L36:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L37
	tst.b 99(%a2)
	jne .L42
.L37:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L38
	tst.b 99(%a2)
	jne .L43
.L38:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L35
	tst.b 99(%a2)
	jeq .L35
	tst.b 102(%a2)
	jeq .L44
.L35:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L43:
	tst.b 102(%a2)
	jne .L38
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L38
.L42:
	tst.b 102(%a2)
	jne .L37
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L37
.L41:
	tst.b 102(%a2)
	jne .L36
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L36
.L44:
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
	jeq .L61
.L58:
	clr.b %d0
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L61:
	cmp.w #1,266(%a2)
	jeq .L62
	move.w 252(%a2),%d2
	add.w #-48,%d2
	sub.w 252(%a0),%d2
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L50
.L64:
	tst.b 101(%a2)
	jeq .L50
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
.L50:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L51
	tst.b 101(%a2)
	jeq .L51
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L51:
	move.w 350(%a2),%a0
	move.l %a0,-(%sp)
	move.l 340(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L58
	tst.b 352(%a2)
	jne .L63
	cmp.w #39,%d2
	jle .L58
	cmp.w #100,%d2
	jgt .L58
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 370(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
.L65:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L62:
	move.w 252(%a0),%d2
	add.w #-48,%d2
	sub.w 252(%a2),%d2
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L50
	jra .L64
.L63:
	cmp.w #-32,%d2
	jlt .L58
	cmp.w #32,%d2
	jgt .L58
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 370(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	jra .L65
	.even
	.globl	__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	tst.b 136(%a2)
	jne .L75
	tst.b 146(%a2)
	jne .L75
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L69
	tst.b 101(%a2)
	jeq .L69
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
.L69:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L70
	tst.b 101(%a2)
	jeq .L70
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L70:
	move.w 344(%a2),%a0
	move.l %a0,-(%sp)
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L77
	move.w 346(%a2),%a0
	move.l %a0,-(%sp)
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L78
	move.w 348(%a2),%a0
	move.l %a0,-(%sp)
	move.l 336(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L75
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
.L75:
	clr.b %d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L78:
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
.L77:
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
	jne .L82
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L86
.L82:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L81
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L84
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L84
	and.l JAGPAD_RIGHT,%d0
	jne .L84
	move.b #1,99(%a2)
	clr.b 102(%a2)
.L84:
	move.b #1,100(%a2)
.L81:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L86:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L82
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L82
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L82
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L82
	move.l %d0,%d1
	and.l JAGPAD_0,%d1
	jne .L82
	move.l %d0,%d1
	and.l JAGPAD_HASH,%d1
	jne .L82
	and.l JAGPAD_STAR,%d0
	jne .L82
	move.b #1,101(%a2)
	jra .L82
	.even
	.globl	__Z15fighterPlayHiyaiP12SoundHandlerb
__Z15fighterPlayHiyaiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #6,%d2
	cmp.l %d0,%d2
	jeq .L91
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L92
	move.b #4,%d2
	cmp.l %d0,%d2
	jeq .L95
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandler
.L95:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandler
.L92:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandler
.L91:
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
	jeq .L102
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandler
.L102:
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
	jeq .L106
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L110
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandler
.L106:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandler
.L110:
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
	jle .L117
.L113:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandler
.L117:
	move.b #6,%d2
	cmp.l %d0,%d2
	jlt .L118
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandler
.L118:
	move.b #7,%d2
	cmp.l %d0,%d2
	jne .L113
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
	jeq .L122
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L126
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanMaleP12SoundHandler
.L122:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanKangP12SoundHandler
.L126:
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
	jeq .L130
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L134
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z21sfxFatalityScreamMaleP12SoundHandler
.L130:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanKangP12SoundHandler
.L134:
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
	jne .L140
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L141
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L141:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L140:
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
	jeq .L189
	cmp.w #2,%d0
	jeq .L193
	cmp.w #3,%d0
	jeq .L189
	cmp.w #4,%d0
	jeq .L189
	cmp.w #5,%d0
	jeq .L194
	cmp.w #6,%d0
	jeq .L195
	cmp.w #7,%d0
	jeq .L189
	cmp.w #9,%d0
	jeq .L196
.L146:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L189:
	move.b #1,175(%a3)
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L170
	cmp.w #8,%d0
	jeq .L170
	cmp.w #35,%d0
	jeq .L170
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
.L198:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L193:
	move.b #1,175(%a3)
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jne .L197
.L170:
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L197:
	cmp.w #8,%d0
	jeq .L170
	cmp.w #35,%d0
	jeq .L170
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
	jra .L198
.L194:
	move.b #1,175(%a3)
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L161
	cmp.w #8,%d0
	jeq .L161
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
.L195:
	tst.b 175(%a3)
	jne .L146
	move.b #1,175(%a3)
	tst.b 146(%a2)
	jne .L199
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L170
	cmp.w #8,%d0
	jeq .L170
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
.L196:
	move.b #1,175(%a3)
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L146
	cmp.w #19,%d0
	jeq .L146
	cmp.w #18,%d0
	jeq .L146
	cmp.w #7,%d0
	jeq .L146
	cmp.w #6,%d0
	jeq .L146
	cmp.w #22,%d0
	jeq .L146
	cmp.w #21,%d0
	jeq .L146
	cmp.w #24,%d0
	jeq .L146
	cmp.w #23,%d0
	jeq .L146
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
.L161:
	move.b #1,127(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L199:
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	clr.b 146(%a2)
	move.b #1,172(%a2)
	lea (16,%sp),%sp
	tst.b 270(%a2)
	jne .L200
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
.L201:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L200:
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
	jra .L201
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
	jeq .L204
	cmp.w #8,%d1
	jeq .L273
	tst.b 136(%a2)
	jne .L203
	move.l 294(%a0),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L252
	cmp.w #10,%d0
	jeq .L252
	cmp.w #13,%d0
	jeq .L274
	cmp.w #11,%d0
	jeq .L254
	cmp.w #12,%d0
	jeq .L254
	cmp.w #15,%d0
	jeq .L275
	cmp.w #14,%d0
	jeq .L276
	cmp.w #17,%d0
	jeq .L277
	cmp.w #16,%d0
	jeq .L278
	cmp.w #21,%d0
	jeq .L265
	cmp.w #22,%d0
	jeq .L265
	cmp.w #23,%d0
	jeq .L264
	cmp.w #24,%d0
	jeq .L264
	cmp.w #18,%d0
	jeq .L264
	cmp.w #19,%d0
	jeq .L263
	cmp.w #38,%d0
	jeq .L263
	cmp.w #39,%d0
	jeq .L279
	cmp.w #40,%d0
	jeq .L280
	cmp.w #44,%d0
	jeq .L270
	cmp.w #45,%d0
	jeq .L281
	cmp.w #47,%d0
	jeq .L270
	cmp.w #48,%d0
	jeq .L282
	cmp.w #51,%d0
	jeq .L270
	cmp.w #56,%d0
	jeq .L283
	cmp.w #20,%d0
	jeq .L284
	cmp.w #60,%d0
	jeq .L267
	cmp.w #61,%d0
	jeq .L285
	cmp.w #63,%d0
	jeq .L267
	cmp.w #65,%d0
	jne .L208
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
.L208:
	tst.b 146(%a2)
	jeq .L203
	clr.b 146(%a2)
	move.b #1,172(%a2)
	moveq #16,%d0
	tst.b 270(%a2)
	jne .L286
	move.l %d0,16(%fp)
	move.b #15,%d0
	move.l %d0,12(%fp)
	move.l 276(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L203:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L204:
	move.l 294(%a0),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L287
	cmp.w #65,%d0
	jeq .L288
	move.w #4,258(%a2)
	clr.b 260(%a2)
	move.b #1,202(%a0)
	cmp.w #21,%d0
	jeq .L239
	cmp.w #23,%d0
	jeq .L239
	cmp.w #48,%d0
	jeq .L239
	cmp.w #56,%d0
	jeq .L239
	cmp.w #60,%d0
	jeq .L239
	cmp.w #61,%d0
	jeq .L239
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L239:
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
.L252:
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
	jra .L208
.L273:
	move.w #4,258(%a2)
	clr.b 260(%a2)
	move.b #1,202(%a0)
	move.l 294(%a0),%a1
	move.w (%a1),%d0
	cmp.w #48,%d0
	jeq .L246
	cmp.w #65,%d0
	jeq .L246
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
.L289:
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L254:
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
	jra .L208
.L286:
	move.l %d0,16(%fp)
	move.b #14,%d0
	move.l %d0,12(%fp)
	move.l 276(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L274:
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
	jra .L208
.L276:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
.L257:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L208
.L246:
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
	jra .L289
.L287:
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
.L263:
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
.L290:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L208
.L264:
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
	jra .L290
.L265:
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
	jra .L208
.L275:
	move.w #24,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	jra .L257
.L277:
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
	jra .L208
.L278:
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
	jra .L208
.L270:
	cmp.w #2,%d1
	jeq .L208
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
.L291:
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
	jra .L208
.L288:
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
.L279:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
	jra .L291
.L280:
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
	jra .L208
.L281:
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
	jra .L208
.L283:
	cmp.w #2,%d1
	jeq .L208
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
	jra .L290
.L282:
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
	jra .L208
.L267:
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
	jra .L208
.L284:
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
	jra .L208
.L285:
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
	jra .L208
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a2
	tst.b 137(%a3)
	jeq .L294
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L316
.L294:
	tst.b 137(%a2)
	jeq .L295
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d6
	cmp.l 112(%a0,%d0.l),%d6
	jeq .L317
.L295:
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
	jlt .L293
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP12StateMachineP7FighterS2_,%d5
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L298
.L321:
	cmp.w #0,%a0
	jlt .L293
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 92(%a3),%d0
	cmp.l %d2,%d0
	jeq .L299
	cmp.l 92(%a2),%d2
	jeq .L299
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d6
	move.l %d6,112(%a0,%d1.l)
.L299:
	cmp.l %d0,%d3
	jeq .L300
	cmp.l 92(%a2),%d3
	jeq .L300
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L300:
	moveq #63,%d6
	cmp.l %d2,%d6
	jeq .L318
	moveq #58,%d1
	cmp.l %d2,%d1
	jeq .L319
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L302
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L308
.L302:
	move.l 294(%a3),%a0
	move.w (%a0),%d0
.L307:
	cmp.w #43,%d0
	jeq .L309
	cmp.w #52,%d0
	jeq .L309
	cmp.w #57,%d0
	jeq .L309
	cmp.w #64,%d0
	jeq .L309
.L310:
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #43,%d0
	jeq .L311
	cmp.w #52,%d0
	jeq .L311
	cmp.w #57,%d0
	jeq .L311
	cmp.w #64,%d0
	jeq .L311
.L312:
	moveq #60,%d0
	cmp.l %d2,%d0
	jeq .L320
.L313:
	move.l colliders,%d0
.L314:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L321
.L298:
	cmp.w #0,%a0
	jge .L314
.L293:
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L320:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L313
	move.l 294(%a2),%a0
	cmp.w #3,(%a0)
	jne .L313
	move.b #1,137(%a2)
	move.b #1,160(%a3)
	move.w raptor_ticks,240(%a3)
	move.l colliders,%d0
	jra .L314
.L311:
	cmp.l 92(%a2),%d2
	jne .L312
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L312
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #60,%d0
	cmp.l %d2,%d0
	jne .L313
	jra .L320
.L309:
	cmp.l 92(%a3),%d2
	jne .L310
	moveq #60,%d6
	cmp.l %d3,%d6
	jne .L310
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L310
.L319:
	moveq #60,%d6
	move.l 294(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L307
	cmp.w #3,%d0
	jne .L307
	move.b #1,137(%a3)
	move.b #1,160(%a2)
	move.w raptor_ticks,240(%a2)
	jra .L310
.L318:
	moveq #60,%d0
	cmp.l %d3,%d0
	jne .L302
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	move.l 294(%a3),%a0
	move.w (%a0),%d0
	jra .L307
.L308:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 294(%a3),%a0
	move.w (%a0),%d0
	lea (20,%sp),%sp
	jra .L307
.L317:
	clr.b 137(%a2)
	jra .L295
.L316:
	clr.b 137(%a3)
	jra .L294
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
	jeq .L377
	cmp.w #-1,%d0
	jeq .L378
.L326:
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L379
.L327:
	cmp.w #-1,%d0
	jne .L323
	move.w 252(%a0),%a3
	add.l _turnOffset,%a3
	move.w 252(%a1),%a2
	cmp.l %a3,%a2
	jle .L323
.L374:
	tst.b 138(%a0)
	jne .L323
	tst.b 146(%a0)
	jne .L323
	move.l 294(%a0),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L323
	cmp.w #56,%d0
	jeq .L323
	move.l 294(%a1),%a1
	move.w (%a1),%d1
	cmp.w #56,%d1
	jeq .L323
	cmp.w #61,%d1
	jeq .L323
	cmp.w #61,%d0
	jeq .L323
	cmp.w #62,%d1
	jeq .L323
	cmp.w #62,%d0
	jeq .L323
	cmp.w #63,%d0
	jeq .L323
	cmp.w #65,%d0
	jeq .L323
	move.b #1,138(%a0)
.L323:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L378:
	move.w 252(%a1),%a3
	add.l _turnOffset,%a3
	move.w 252(%a0),%a2
	cmp.l %a3,%a2
	jle .L326
	tst.b 138(%a1)
	jne .L326
.L380:
	tst.b 146(%a1)
	jne .L326
	move.l 294(%a1),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L326
	cmp.w #56,%d0
	jeq .L326
	move.l 294(%a0),%a2
	move.w (%a2),%d1
	cmp.w #56,%d1
	jeq .L326
	cmp.w #61,%d0
	jeq .L326
	cmp.w #61,%d1
	jeq .L326
	cmp.w #62,%d0
	jeq .L326
	cmp.w #62,%d1
	jeq .L326
	cmp.w #63,%d0
	jeq .L326
	cmp.w #65,%d0
	jeq .L326
	move.b #1,138(%a1)
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jne .L327
.L379:
	move.w 252(%a0),%a3
	move.w 252(%a1),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jlt .L374
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L377:
	move.w 252(%a1),%a3
	move.w 252(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L326
	tst.b 138(%a1)
	jne .L326
	jra .L380
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
	jeq .L387
	move.l 294(%a1),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L387
	cmp.w #1,%d0
	jeq .L387
	cmp.w #1,%d1
	jeq .L387
	cmp.w #8,%d0
	jeq .L387
	cmp.w #8,%d1
	jeq .L387
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L390
	cmp.w #-1,%d0
	jne .L387
	move.w 242(%a1),%a3
	move.w 242(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L388
.L387:
	clr.b 139(%a0)
	clr.b 139(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L390:
	move.w 242(%a1),%a3
	move.w 242(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L387
.L388:
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
	jne .L394
	tst.b 260(%a2)
	jne .L398
	sub.w %d2,256(%a2)
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L394:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L398:
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
	jeq .L401
	move.w 252(%a0),%d0
.L402:
	addq.w #2,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L407
	cmp.w #716,%d0
	jle .L400
	move.w #716,252(%a0)
.L400:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L407:
	move.w #16,252(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L401:
	move.w 252(%a0),%d0
	move.w %d0,%a1
	move.l 646(%a0),%a2
	sub.w 252(%a2),%a1
	cmp.w #279,%a1
	jle .L402
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,266(%a0)
	jeq .L410
	move.w 252(%a0),%d0
.L411:
	subq.w #2,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L416
	cmp.w #716,%d0
	jle .L409
	move.w #716,252(%a0)
.L409:
	unlk %fp
	rts
.L416:
	move.w #16,252(%a0)
	unlk %fp
	rts
.L410:
	move.w 252(%a0),%d0
	move.l 646(%a0),%a1
	move.w 252(%a1),%a1
	sub.w %d0,%a1
	cmp.w #279,%a1
	jle .L411
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
	jne .L424
	moveq #17,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L424:
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
	jle .L440
.L428:
	cmp.w #261,%d0
	jgt .L432
.L437:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L440:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L436
	move.w 242(%a2),%d0
	cmp.w #11,%d0
	jgt .L428
	cmp.w #261,242(%a3)
	jgt .L436
	jsr (%a4)
	tst.b %d0
	jne .L436
	move.w 242(%a2),%d0
	cmp.w #261,%d0
	jle .L437
.L432:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L441
.L436:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L441:
	cmp.w #309,242(%a2)
	jle .L437
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
	jeq .L451
	cmp.w #-1,%d1
	jeq .L447
.L445:
	add.w %a1,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L452
	cmp.w #716,%d0
	jle .L443
	move.w #716,252(%a0)
.L443:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L447:
	move.w %d0,%a2
	move.l 646(%a0),%a3
	sub.w 252(%a3),%a2
	cmp.w #279,%a2
	jle .L445
	cmp.w #0,%a1
	jle .L445
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L452:
	move.w #16,252(%a0)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L451:
	move.l 646(%a0),%a2
	move.w 252(%a2),%a2
	sub.w %d0,%a2
	cmp.w #279,%a2
	jle .L445
	cmp.w #0,%a1
	jge .L445
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.even
	.globl	__Z17fighterCastShadowP7Fighterb
__Z17fighterCastShadowP7Fighterb:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 2(%a0),%d0
	subq.l #1,%d0
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
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L460
	jge .L467
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L462
	cmp.l #128,%d0
	jeq .L463
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L468
.L456:
	moveq #21,%d0
	unlk %fp
	rts
.L467:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L465
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L459
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L456
	moveq #3,%d0
	unlk %fp
	rts
.L459:
	moveq #9,%d0
	unlk %fp
	rts
.L463:
	moveq #24,%d0
	unlk %fp
	rts
.L468:
	moveq #15,%d0
	unlk %fp
	rts
.L462:
	moveq #18,%d0
	unlk %fp
	rts
.L465:
	moveq #6,%d0
	unlk %fp
	rts
.L460:
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
	jeq .L476
	move.w 242(%a0),%a2
	sub.w 242(%a1),%a2
	cmp.w #259,%a2
	jgt .L474
.L472:
	clr.b 275(%a0)
	clr.b 275(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L476:
	move.w 242(%a1),%a2
	sub.w 242(%a0),%a2
	cmp.w #259,%a2
	jle .L472
.L474:
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
	jeq .L479
.L482:
	cmp.w #3,(%a0)
	jeq .L485
.L478:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L485:
	move.l 294(%a0),%a2
	cmp.w #48,(%a2)
	jne .L478
	cmp.w #1,284(%a0)
	jne .L478
	move.l 294(%a1),%a0
	cmp.w #49,(%a0)
	jne .L478
	move.l 430(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L479:
	move.l 294(%a1),%a2
	cmp.w #48,(%a2)
	jne .L482
	cmp.w #1,284(%a1)
	jne .L482
	move.l 294(%a0),%a2
	cmp.w #49,(%a2)
	jne .L482
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
	jne .L489
	tst.b 202(%a2)
	jeq .L488
.L489:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 202(%a3)
	jne .L498
	tst.b 202(%a2)
	jeq .L488
.L499:
	clr.b 202(%a2)
	move.l 198(%a2),%d0
	move.l %d0,_tempScore
	jne .L495
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
.L488:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L498:
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
	jne .L499
	jra .L488
.L495:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L492:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L492
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L494
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
.L494:
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
	jle .L501
	move.b #1,172(%a2)
	clr.w 14(%a3)
	move.w #90,244(%a2)
.L501:
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
	jne .L506
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
	jeq .L508
	pea 16.w
	pea 14.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L508:
	pea 16.w
	pea 15.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L506:
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
	jne .L516
	pea 16.w
	pea 15.w
	move.l 276(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L516:
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
	jne .L518
	move.b #1,125(%a0)
	clr.b 110(%a0)
	move.w 266(%a0),%d1
	cmp.w #-1,%d1
	jeq .L527
	move.w 242(%a1),%d2
	move.w 242(%a0),%d3
	move.w %d2,%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a0)
.L521:
	cmp.w #149,%d0
	jgt .L522
	move.w #150,%d4
	sub.w %d0,%d4
	move.w %d4,%d0
	move.w %d4,106(%a0)
	tst.b 130(%a0)
	jeq .L528
.L523:
	cmp.w #-1,%d1
	jeq .L529
.L524:
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
.L518:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L522:
	clr.w 106(%a0)
	cmp.w #-1,%d1
	jne .L524
.L529:
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
	jra .L518
.L527:
	move.w 242(%a0),%d3
	move.w 242(%a1),%d2
	move.w %d3,%d0
	add.w #48,%d0
	sub.w %d2,%d0
	move.w %d0,106(%a0)
	jra .L521
.L528:
	move.b #1,130(%a0)
	move.w %d3,%a2
	muls.w %d1,%d0
	sub.l %d0,%a2
	move.l %a2,132(%a0)
	jra .L523
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 130(%a0)
	jne .L531
	move.b #1,130(%a0)
	move.l 12(%fp),132(%a0)
.L531:
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
	jeq .L536
	tst.b 130(%a0)
	jeq .L543
.L537:
	cmp.w #-1,266(%a0)
	jeq .L544
.L539:
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
	jpl .L547
	addq.l #1,%d1
.L547:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L545
.L541:
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
.L535:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L545:
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
.L543:
	tst.b 110(%a0)
	jeq .L537
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
.L536:
	tst.b 111(%a2)
	jeq .L535
	cmp.w #-1,266(%a0)
	jne .L539
.L544:
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
	jpl .L548
	addq.l #1,%d1
.L548:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L541
	jra .L545
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
	jeq .L552
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L552:
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
	jeq .L565
	cmp.w #19,%d0
	jeq .L565
	cmp.w #18,%d0
	jeq .L565
	cmp.w #7,%d0
	jeq .L565
	cmp.w #6,%d0
	jeq .L565
	cmp.w #22,%d0
	jeq .L565
	cmp.w #21,%d0
	jeq .L565
	cmp.w #24,%d0
	jeq .L565
	cmp.w #23,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L565:
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
	jeq .L573
	cmp.w #-1,%d0
	jeq .L574
.L568:
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L574:
	move.w 242(%a0),%a2
	move.l 646(%a0),%a1
	add.l _turnOffset,%a2
	move.w 242(%a1),%a1
	cmp.l %a2,%a1
	jle .L568
.L575:
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
.L573:
	move.w 242(%a0),%a2
	move.l 646(%a0),%a1
	move.w 242(%a1),%a3
	add.l _turnOffset,%a3
	cmp.l %a2,%a3
	jge .L568
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
	jle .L568
	jra .L575
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
	jeq .L582
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
.L582:
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
