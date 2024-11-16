#NO_APP
	.text
	.even
	.globl	__Z14fighterStartUpv
__Z14fighterStartUpv:
	link.w %fp,#0
	move.l sprite,%a0
	move.w 2892(%a0),%a0
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
	cmp.w #6,(%a0)
	jls .L15
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
	move.l #10232256,44(%a0)
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
	move.l #9093504,44(%a0)
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
	move.l #10879456,44(%a0)
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
	move.l #8503648,44(%a0)
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
	move.l #11371008,44(%a0)
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
	move.l #9658784,44(%a0)
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
	move.l 20(%fp),376(%a2)
	move.l 24(%fp),380(%a2)
	move.l 28(%fp),384(%a2)
	move.l 32(%fp),388(%a2)
	move.l 36(%fp),400(%a2)
	move.l 40(%fp),404(%a2)
	move.l 44(%fp),392(%a2)
	move.l 48(%fp),396(%a2)
	move.l 52(%fp),408(%a2)
	move.l 56(%fp),412(%a2)
	move.l 60(%fp),416(%a2)
	move.l 64(%fp),420(%a2)
	move.l 68(%fp),424(%a2)
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
	clr.b 304(%a2)
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
	moveq #72,%d2
	move.l %d2,190(%a2)
	moveq #70,%d3
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
	move.l 436(%a2),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12113392,8(%a1)
	move.l #12113392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12220912,-(%sp)
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
	moveq #71,%d0
	move.l %d0,190(%a2)
	moveq #69,%d1
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
	move.l 436(%a2),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12113392,8(%a1)
	move.l #12113392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12220912,-(%sp)
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
	move.l 648(%a2),%a0
	move.l 296(%a0),%a1
	cmp.w #68,(%a1)
	jeq .L63
.L60:
	clr.b %d0
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L63:
	cmp.w #1,266(%a2)
	jeq .L64
	move.w 252(%a2),%d2
	add.w #-48,%d2
	sub.w 252(%a0),%d2
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L50
.L69:
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
	cmp.w #4,(%a2)
	jeq .L52
	move.l 194(%a2),%d0
	move.l JAGPAD_B,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L65
	tst.b 101(%a2)
	jne .L66
.L52:
	move.w 352(%a2),%a0
	move.l %a0,-(%sp)
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L60
.L68:
	tst.b 354(%a2)
	jne .L67
	cmp.w #39,%d2
	jle .L60
	cmp.w #100,%d2
	jgt .L60
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 372(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
.L70:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L65:
	and.l JAGPAD_8,%d0
	jeq .L52
	tst.b 101(%a2)
	jeq .L52
.L66:
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	move.w 352(%a2),%a0
	move.l %a0,-(%sp)
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L60
	jra .L68
.L64:
	move.w 252(%a0),%d2
	add.w #-48,%d2
	sub.w 252(%a2),%d2
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L50
	jra .L69
.L67:
	cmp.w #-32,%d2
	jlt .L60
	cmp.w #32,%d2
	jgt .L60
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 372(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	jra .L70
	.even
	.globl	__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	tst.b 136(%a2)
	jne .L80
	tst.b 146(%a2)
	jne .L80
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L74
	tst.b 101(%a2)
	jeq .L74
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
.L74:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L75
	tst.b 101(%a2)
	jeq .L75
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L75:
	move.w 346(%a2),%a0
	move.l %a0,-(%sp)
	move.l 330(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L82
	move.w 348(%a2),%a0
	move.l %a0,-(%sp)
	move.l 334(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L83
	move.w 350(%a2),%a0
	move.l %a0,-(%sp)
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L80
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 364(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L80:
	clr.b %d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L83:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 360(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L82:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 356(%a2),%a0
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
	jne .L87
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L91
.L87:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L86
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L89
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L89
	and.l JAGPAD_RIGHT,%d0
	jne .L89
	move.b #1,99(%a2)
	clr.b 102(%a2)
.L89:
	move.b #1,100(%a2)
.L86:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L91:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L87
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L87
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L87
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L87
	move.l %d0,%d1
	and.l JAGPAD_0,%d1
	jne .L87
	move.l %d0,%d1
	and.l JAGPAD_HASH,%d1
	jne .L87
	and.l JAGPAD_STAR,%d0
	jne .L87
	move.b #1,101(%a2)
	jra .L87
	.even
	.globl	__Z15fighterPlayHiyaiP12SoundHandlerb
__Z15fighterPlayHiyaiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #5,%d2
	cmp.l %d0,%d2
	jeq .L96
	move.b #6,%d2
	cmp.l %d0,%d2
	jeq .L97
	move.b #3,%d2
	cmp.l %d0,%d2
	jeq .L100
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandler
.L100:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandler
.L97:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandler
.L96:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxHiyaNinjaP12SoundHandler
	.even
	.globl	__Z16fighterPlayGroaniP12SoundHandlerb
__Z16fighterPlayGroaniP12SoundHandlerb:
	link.w %fp,#0
	move.l 12(%fp),%d0
	moveq #6,%d1
	cmp.l 8(%fp),%d1
	jeq .L107
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandler
.L107:
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
	moveq #3,%d2
	cmp.l %d0,%d2
	jeq .L111
	move.b #6,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L115
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandler
.L111:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandler
.L115:
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxYellFemaleP12SoundHandler
	.even
	.globl	__Z18fighterPlayPitFalliP12SoundHandlerb
__Z18fighterPlayPitFalliP12SoundHandlerb:
	link.w %fp,#0
	move.l 12(%fp),%d0
	moveq #6,%d1
	cmp.l 8(%fp),%d1
	jeq .L122
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z10sfxPitFallP12SoundHandler
.L122:
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z23sfxFatalityScreamFemaleP12SoundHandler
	.even
	.globl	__Z18fighterPlayPitLandiP12SoundHandlerb
__Z18fighterPlayPitLandiP12SoundHandlerb:
	link.w %fp,#0
	move.l 12(%fp),%d0
	moveq #6,%d1
	cmp.l 8(%fp),%d1
	jeq .L129
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z10sfxPitLandP12SoundHandler
.L129:
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z22sfxFatalityGroanFemaleP12SoundHandler
	.even
	.globl	__Z15fighterPlayJumpiP12SoundHandlerb
__Z15fighterPlayJumpiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #4,%d2
	cmp.l %d0,%d2
	jle .L136
.L132:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandler
.L136:
	move.b #5,%d2
	cmp.l %d0,%d2
	jlt .L137
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandler
.L137:
	move.b #6,%d2
	cmp.l %d0,%d2
	jne .L132
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
	moveq #3,%d2
	cmp.l %d0,%d2
	jeq .L141
	move.b #6,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L145
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanMaleP12SoundHandler
.L141:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanKangP12SoundHandler
.L145:
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
	moveq #3,%d2
	cmp.l %d0,%d2
	jeq .L149
	move.b #6,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L153
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z21sfxFatalityScreamMaleP12SoundHandler
.L149:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanKangP12SoundHandler
.L153:
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
	jne .L159
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L160
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L160:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L159:
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
	clr.b 304(%a0)
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
	clr.b 304(%a3)
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
	clr.b 304(%a2)
	move.l %a3,-(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 436(%a3),%a0
	clr.w 14(%a0)
	move.l 92(%a3),%d0
	move.l %d0,(%a0)
	move.l #12113392,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12113392,44(%a0)
	move.l #320,144(%a0)
	moveq #3,%d0
	move.l %d0,(%sp)
	pea 13.w
	move.l #12220912,-(%sp)
	lea jsfLoadClut,%a3
	jsr (%a3)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12113392,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12113392,44(%a0)
	move.l #320,144(%a0)
	addq.l #8,%sp
	moveq #3,%d1
	move.l %d1,(%sp)
	pea 13.w
	move.l #12220912,-(%sp)
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
	clr.b 304(%a0)
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
	jeq .L208
	cmp.w #1,%d0
	jeq .L212
	cmp.w #2,%d0
	jeq .L208
	cmp.w #3,%d0
	jeq .L208
	cmp.w #4,%d0
	jeq .L213
	cmp.w #5,%d0
	jeq .L214
	cmp.w #6,%d0
	jeq .L208
	cmp.w #7,%d0
	jeq .L215
.L165:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L208:
	move.b #1,175(%a3)
	move.l 296(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L189
	cmp.w #8,%d0
	jeq .L189
	cmp.w #35,%d0
	jeq .L189
	move.b #1,103(%a2)
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L216:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L189:
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L212:
	move.b #1,175(%a3)
	move.l 296(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L189
	cmp.w #8,%d0
	jeq .L189
	cmp.w #35,%d0
	jeq .L189
	move.b #1,166(%a2)
	move.b #1,103(%a2)
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L216
.L213:
	move.b #1,175(%a3)
	move.l 296(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L180
	cmp.w #8,%d0
	jeq .L180
	move.w #-1,120(%a3)
	move.w #32,116(%a3)
	clr.w 122(%a3)
	move.w #8,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 53.w
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 432(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 54.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L215:
	move.b #1,175(%a3)
	move.l 296(%a2),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L165
	cmp.w #19,%d0
	jeq .L165
	cmp.w #18,%d0
	jeq .L165
	cmp.w #7,%d0
	jeq .L165
	cmp.w #6,%d0
	jeq .L165
	cmp.w #22,%d0
	jeq .L165
	cmp.w #21,%d0
	jeq .L165
	cmp.w #24,%d0
	jeq .L165
	cmp.w #23,%d0
	jeq .L165
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L180:
	move.b #1,127(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L214:
	tst.b 175(%a3)
	jne .L165
	move.b #1,175(%a3)
	tst.b 146(%a2)
	jne .L217
	move.l 296(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L189
	cmp.w #8,%d0
	jeq .L189
	clr.w 258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L217:
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	clr.b 146(%a2)
	move.b #1,172(%a2)
	lea (16,%sp),%sp
	tst.b 270(%a2)
	jne .L218
	pea 16.w
	pea 15.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 432(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
.L219:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L218:
	pea 16.w
	pea 14.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 432(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	jra .L219
	.even
	.globl	__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #14384,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d4
	move.l 20(%fp),%a2
	move.l 24(%fp),%d3
	move.l 296(%a2),%a0
	move.w (%a0),%d1
	cmp.w #1,%d1
	jeq .L222
	cmp.w #8,%d1
	jeq .L292
	tst.b 136(%a2)
	jne .L221
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	cmp.w #9,%d0
	jeq .L273
	cmp.w #10,%d0
	jeq .L273
	cmp.w #13,%d0
	jeq .L293
	cmp.w #11,%d0
	jeq .L275
	cmp.w #12,%d0
	jeq .L275
	cmp.w #15,%d0
	jeq .L294
	cmp.w #14,%d0
	jeq .L295
	cmp.w #17,%d0
	jeq .L296
	cmp.w #16,%d0
	jeq .L297
	cmp.w #21,%d0
	jeq .L298
	cmp.w #22,%d0
	jeq .L299
	cmp.w #23,%d0
	jeq .L284
	cmp.w #24,%d0
	jeq .L300
	cmp.w #18,%d0
	jeq .L284
	cmp.w #19,%d0
	jeq .L301
	cmp.w #38,%d0
	jeq .L302
	cmp.w #39,%d0
	jeq .L303
	cmp.w #40,%d0
	jeq .L304
	cmp.w #44,%d0
	jeq .L289
	cmp.w #45,%d0
	jeq .L305
	cmp.w #47,%d0
	jeq .L289
	cmp.w #48,%d0
	jeq .L306
	cmp.w #51,%d0
	jeq .L289
	cmp.w #56,%d0
	jeq .L307
	cmp.w #20,%d0
	jeq .L308
	cmp.w #60,%d0
	jeq .L285
	cmp.w #61,%d0
	jeq .L309
	cmp.w #63,%d0
	jeq .L285
	cmp.w #65,%d0
	jne .L226
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.b #1,126(%a2)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L226:
	tst.b 146(%a2)
	jeq .L221
	clr.b 146(%a2)
	move.b #1,172(%a2)
	moveq #16,%d1
	tst.b 270(%a2)
	jne .L310
	move.l %d1,16(%fp)
	moveq #15,%d0
	move.l %d0,12(%fp)
	move.l 276(%a2),8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra jsfLoadClut
.L221:
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L222:
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	cmp.w #20,%d0
	jeq .L311
	cmp.w #65,%d0
	jeq .L312
	move.w #4,258(%a2)
	clr.b 260(%a2)
	move.b #1,202(%a3)
	cmp.w #21,%d0
	jeq .L259
	cmp.w #23,%d0
	jeq .L259
	cmp.w #48,%d0
	jeq .L259
	cmp.w #56,%d0
	jeq .L259
	cmp.w #60,%d0
	jeq .L259
	cmp.w #61,%d0
	jeq .L259
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d1
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L259:
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #37,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L273:
	move.w #8,258(%a2)
	clr.b 260(%a2)
	addq.l #5,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L292:
	move.w #4,258(%a2)
	clr.b 260(%a2)
	move.b #1,202(%a3)
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	cmp.w #48,%d0
	jeq .L267
	cmp.w #65,%d0
	jeq .L267
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d1
.L313:
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L275:
	move.w #8,258(%a2)
	clr.b 260(%a2)
	addq.l #5,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 26.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L310:
	move.l %d1,16(%fp)
	moveq #14,%d0
	move.l %d0,12(%fp)
	move.l 276(%a2),8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra jsfLoadClut
.L293:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L295:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
.L278:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L267:
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d1
	jra .L313
.L311:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #10,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
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
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L302:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L314:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L294:
	move.w #24,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	jra .L278
.L296:
	move.w #8,258(%a2)
	clr.b 260(%a2)
	addq.l #5,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 30.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L284:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #10,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L314
.L297:
	jsr __Z8stageGetv
	moveq #3,%d1
	move.l 296(%a2),%a0
	cmp.l %d0,%d1
	jeq .L315
	move.w (%a0),%d0
.L236:
	cmp.w #84,%d0
	jeq .L226
	move.w #32,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
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
	jra .L226
.L289:
	cmp.w #2,%d1
	jeq .L226
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
.L277:
	move.l %a3,-(%sp)
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
	jra .L226
.L298:
	move.w #24,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
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
	jra .L226
.L299:
	move.w #24,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
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
	jra .L226
.L312:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.b #1,126(%a2)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #41,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L300:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #10,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L314
.L301:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L314
.L303:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	jra .L277
.L315:
	move.w (%a0),%d0
	cmp.w #68,%d0
	jne .L236
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 83.w
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 84.w
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	jra .L226
.L304:
	move.w #32,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L305:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 46.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L307:
	cmp.w #2,%d1
	jeq .L226
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L314
.L306:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 49.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L226
.L285:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a3,-(%sp)
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
	jra .L226
.L308:
	move.w #16,258(%a2)
	clr.b 260(%a2)
	moveq #10,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a3,-(%sp)
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
	jra .L226
.L309:
	move.w #20,258(%a2)
	clr.b 260(%a2)
	moveq #50,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l %d3,-(%sp)
	move.l %a3,-(%sp)
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
	jra .L226
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a2
	tst.b 137(%a3)
	jeq .L318
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L340
.L318:
	tst.b 137(%a2)
	jeq .L319
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d6
	cmp.l 112(%a0,%d0.l),%d6
	jeq .L341
.L319:
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
	jlt .L317
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP12StateMachineP7FighterS2_,%d5
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L322
.L345:
	cmp.w #0,%a0
	jlt .L317
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 92(%a3),%d0
	cmp.l %d2,%d0
	jeq .L323
	cmp.l 92(%a2),%d2
	jeq .L323
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d6
	move.l %d6,112(%a0,%d1.l)
.L323:
	cmp.l %d0,%d3
	jeq .L324
	cmp.l 92(%a2),%d3
	jeq .L324
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L324:
	moveq #71,%d6
	cmp.l %d2,%d6
	jeq .L342
	moveq #66,%d1
	cmp.l %d2,%d1
	jeq .L343
	moveq #72,%d0
	cmp.l %d2,%d0
	jne .L326
	moveq #66,%d1
	cmp.l %d3,%d1
	jeq .L332
.L326:
	move.l 296(%a3),%a0
	move.w (%a0),%d0
.L331:
	cmp.w #43,%d0
	jeq .L333
	cmp.w #52,%d0
	jeq .L333
	cmp.w #57,%d0
	jeq .L333
	cmp.w #64,%d0
	jeq .L333
.L334:
	move.l 296(%a2),%a0
	move.w (%a0),%d0
	cmp.w #43,%d0
	jeq .L335
	cmp.w #52,%d0
	jeq .L335
	cmp.w #57,%d0
	jeq .L335
	cmp.w #64,%d0
	jeq .L335
.L336:
	moveq #68,%d0
	cmp.l %d2,%d0
	jeq .L344
.L337:
	move.l colliders,%d0
.L338:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L345
.L322:
	cmp.w #0,%a0
	jge .L338
.L317:
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L344:
	moveq #66,%d1
	cmp.l %d3,%d1
	jne .L337
	move.l 296(%a2),%a0
	cmp.w #3,(%a0)
	jne .L337
	move.b #1,137(%a2)
	move.b #1,160(%a3)
	move.w raptor_ticks,240(%a3)
	move.l colliders,%d0
	jra .L338
.L335:
	cmp.l 92(%a2),%d2
	jne .L336
	moveq #66,%d0
	cmp.l %d3,%d0
	jne .L336
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #68,%d0
	cmp.l %d2,%d0
	jne .L337
	jra .L344
.L333:
	cmp.l 92(%a3),%d2
	jne .L334
	moveq #68,%d6
	cmp.l %d3,%d6
	jne .L334
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L334
.L343:
	moveq #68,%d6
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L331
	cmp.w #3,%d0
	jne .L331
	move.b #1,137(%a3)
	move.b #1,160(%a2)
	move.w raptor_ticks,240(%a2)
	jra .L334
.L342:
	moveq #68,%d0
	cmp.l %d3,%d0
	jne .L326
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	jra .L331
.L332:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	lea (20,%sp),%sp
	jra .L331
.L341:
	clr.b 137(%a2)
	jra .L319
.L340:
	clr.b 137(%a3)
	jra .L318
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
	jeq .L401
	cmp.w #-1,%d0
	jeq .L402
.L350:
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L403
.L351:
	cmp.w #-1,%d0
	jne .L347
	move.w 252(%a0),%a3
	add.l _turnOffset,%a3
	move.w 252(%a1),%a2
	cmp.l %a3,%a2
	jle .L347
.L398:
	tst.b 138(%a0)
	jne .L347
	tst.b 146(%a0)
	jne .L347
	move.l 296(%a0),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L347
	cmp.w #56,%d0
	jeq .L347
	move.l 296(%a1),%a1
	move.w (%a1),%d1
	cmp.w #56,%d1
	jeq .L347
	cmp.w #61,%d1
	jeq .L347
	cmp.w #61,%d0
	jeq .L347
	cmp.w #62,%d1
	jeq .L347
	cmp.w #62,%d0
	jeq .L347
	cmp.w #63,%d0
	jeq .L347
	cmp.w #65,%d0
	jeq .L347
	move.b #1,138(%a0)
.L347:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L402:
	move.w 252(%a1),%a3
	add.l _turnOffset,%a3
	move.w 252(%a0),%a2
	cmp.l %a3,%a2
	jle .L350
	tst.b 138(%a1)
	jne .L350
.L404:
	tst.b 146(%a1)
	jne .L350
	move.l 296(%a1),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L350
	cmp.w #56,%d0
	jeq .L350
	move.l 296(%a0),%a2
	move.w (%a2),%d1
	cmp.w #56,%d1
	jeq .L350
	cmp.w #61,%d0
	jeq .L350
	cmp.w #61,%d1
	jeq .L350
	cmp.w #62,%d0
	jeq .L350
	cmp.w #62,%d1
	jeq .L350
	cmp.w #63,%d0
	jeq .L350
	cmp.w #65,%d0
	jeq .L350
	move.b #1,138(%a1)
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jne .L351
.L403:
	move.w 252(%a0),%a3
	move.w 252(%a1),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jlt .L398
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L401:
	move.w 252(%a1),%a3
	move.w 252(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L350
	tst.b 138(%a1)
	jne .L350
	jra .L404
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 296(%a0),%a2
	move.w (%a2),%d0
	cmp.w #40,%d0
	jeq .L411
	move.l 296(%a1),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L411
	cmp.w #1,%d0
	jeq .L411
	cmp.w #1,%d1
	jeq .L411
	cmp.w #8,%d0
	jeq .L411
	cmp.w #8,%d1
	jeq .L411
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L414
	cmp.w #-1,%d0
	jne .L411
	move.w 242(%a1),%a3
	move.w 242(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L412
.L411:
	clr.b 139(%a0)
	clr.b 139(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L414:
	move.w 242(%a1),%a3
	move.w 242(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L411
.L412:
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
	jne .L418
	tst.b 260(%a2)
	jne .L422
	sub.w %d2,256(%a2)
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L418:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L422:
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
	jeq .L425
	move.w 252(%a0),%d0
.L426:
	addq.w #2,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L431
	cmp.w #716,%d0
	jle .L424
	move.w #716,252(%a0)
.L424:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L431:
	move.w #16,252(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L425:
	move.w 252(%a0),%d0
	move.w %d0,%a1
	move.l 648(%a0),%a2
	sub.w 252(%a2),%a1
	cmp.w #279,%a1
	jle .L426
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,266(%a0)
	jeq .L434
	move.w 252(%a0),%d0
.L435:
	subq.w #2,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L440
	cmp.w #716,%d0
	jle .L433
	move.w #716,252(%a0)
.L433:
	unlk %fp
	rts
.L440:
	move.w #16,252(%a0)
	unlk %fp
	rts
.L434:
	move.w 252(%a0),%d0
	move.l 648(%a0),%a1
	move.w 252(%a1),%a1
	sub.w %d0,%a1
	cmp.w #279,%a1
	jle .L435
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
	jne .L448
	moveq #18,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L448:
	moveq #16,%d0
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
	jle .L464
.L452:
	cmp.w #261,%d0
	jgt .L456
.L461:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L464:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L460
	move.w 242(%a2),%d0
	cmp.w #11,%d0
	jgt .L452
	cmp.w #261,242(%a3)
	jgt .L460
	jsr (%a4)
	tst.b %d0
	jne .L460
	move.w 242(%a2),%d0
	cmp.w #261,%d0
	jle .L461
.L456:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L465
.L460:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L465:
	cmp.w #309,242(%a2)
	jle .L461
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
	jeq .L475
	cmp.w #-1,%d1
	jeq .L471
.L469:
	add.w %a1,%d0
	move.w %d0,252(%a0)
	cmp.w #15,%d0
	jle .L476
	cmp.w #716,%d0
	jle .L467
	move.w #716,252(%a0)
.L467:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L471:
	move.w %d0,%a2
	move.l 648(%a0),%a3
	sub.w 252(%a3),%a2
	cmp.w #279,%a2
	jle .L469
	cmp.w #0,%a1
	jle .L469
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L476:
	move.w #16,252(%a0)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L475:
	move.l 648(%a0),%a2
	move.w 252(%a2),%a2
	sub.w %d0,%a2
	cmp.w #279,%a2
	jle .L469
	cmp.w #0,%a1
	jge .L469
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
	jeq .L484
	jge .L491
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L486
	cmp.l #128,%d0
	jeq .L487
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L492
.L480:
	moveq #21,%d0
	unlk %fp
	rts
.L491:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L489
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L483
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L480
	moveq #3,%d0
	unlk %fp
	rts
.L483:
	moveq #9,%d0
	unlk %fp
	rts
.L487:
	moveq #24,%d0
	unlk %fp
	rts
.L492:
	moveq #15,%d0
	unlk %fp
	rts
.L486:
	moveq #18,%d0
	unlk %fp
	rts
.L489:
	moveq #6,%d0
	unlk %fp
	rts
.L484:
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
	jeq .L500
	move.w 242(%a0),%a2
	sub.w 242(%a1),%a2
	cmp.w #259,%a2
	jgt .L498
.L496:
	clr.b 275(%a0)
	clr.b 275(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L500:
	move.w 242(%a1),%a2
	sub.w 242(%a0),%a2
	cmp.w #259,%a2
	jle .L496
.L498:
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
	cmp.w #2,(%a1)
	jeq .L503
.L506:
	cmp.w #2,(%a0)
	jeq .L509
.L502:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L509:
	move.l 296(%a0),%a2
	cmp.w #48,(%a2)
	jne .L502
	cmp.w #1,284(%a0)
	jne .L502
	move.l 296(%a1),%a0
	cmp.w #49,(%a0)
	jne .L502
	move.l 432(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L503:
	move.l 296(%a1),%a2
	cmp.w #48,(%a2)
	jne .L506
	cmp.w #1,284(%a1)
	jne .L506
	move.l 296(%a0),%a2
	cmp.w #49,(%a2)
	jne .L506
	move.l 432(%a0),-(%sp)
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
	jne .L513
	tst.b 202(%a2)
	jeq .L512
.L513:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 202(%a3)
	jne .L522
	tst.b 202(%a2)
	jeq .L512
.L523:
	clr.b 202(%a2)
	move.l 198(%a2),%d0
	move.l %d0,_tempScore
	jne .L519
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
.L512:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L522:
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
	jne .L523
	jra .L512
.L519:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L516:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L516
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L518
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
.L518:
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
	move.l 548(%a2),-(%sp)
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
	jle .L525
	move.b #1,172(%a2)
	clr.w 14(%a3)
	move.w #90,244(%a2)
.L525:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 436(%a1),%a0
	clr.w 14(%a0)
	move.l 92(%a1),%d0
	move.l %d0,(%a0)
	move.l #12113392,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12113392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12220912,-(%sp)
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
	jne .L530
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
	jeq .L532
	pea 16.w
	pea 14.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L532:
	pea 16.w
	pea 15.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L530:
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
	jne .L540
	pea 16.w
	pea 15.w
	move.l 276(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L540:
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
	jne .L542
	move.b #1,125(%a0)
	clr.b 110(%a0)
	move.w 266(%a0),%d1
	cmp.w #-1,%d1
	jeq .L551
	move.w 242(%a1),%d2
	move.w 242(%a0),%d3
	move.w %d2,%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a0)
.L545:
	cmp.w #149,%d0
	jgt .L546
	move.w #150,%d4
	sub.w %d0,%d4
	move.w %d4,%d0
	move.w %d4,106(%a0)
	tst.b 130(%a0)
	jeq .L552
.L547:
	cmp.w #-1,%d1
	jeq .L553
.L548:
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
	move.l 436(%a1),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12113392,8(%a1)
	move.l #12113392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12220912,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L542:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L546:
	clr.w 106(%a0)
	cmp.w #-1,%d1
	jne .L548
.L553:
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
	move.l 436(%a1),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #12113392,8(%a1)
	move.l #12113392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12220912,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L542
.L551:
	move.w 242(%a0),%d3
	move.w 242(%a1),%d2
	move.w %d3,%d0
	add.w #48,%d0
	sub.w %d2,%d0
	move.w %d0,106(%a0)
	jra .L545
.L552:
	move.b #1,130(%a0)
	move.w %d3,%a2
	muls.w %d1,%d0
	sub.l %d0,%a2
	move.l %a2,132(%a0)
	jra .L547
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 130(%a0)
	jne .L555
	move.b #1,130(%a0)
	move.l 12(%fp),132(%a0)
.L555:
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
	jeq .L560
	tst.b 130(%a0)
	jeq .L567
.L561:
	cmp.w #-1,266(%a0)
	jeq .L568
.L563:
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
	jpl .L571
	addq.l #1,%d1
.L571:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L569
.L565:
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
.L559:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L569:
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
.L567:
	tst.b 110(%a0)
	jeq .L561
	clr.b 112(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12113392,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12113392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12220912,-(%sp)
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
.L560:
	tst.b 111(%a2)
	jeq .L559
	cmp.w #-1,266(%a0)
	jne .L563
.L568:
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
	jpl .L572
	addq.l #1,%d1
.L572:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L565
	jra .L569
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
	move.l 296(%a0),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L576
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L576:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z21fighterIsDuckBlockingP12StateMachineP7Fighter
__Z21fighterIsDuckBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 296(%a0),%a0
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
	move.l 296(%a0),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L589
	cmp.w #19,%d0
	jeq .L589
	cmp.w #18,%d0
	jeq .L589
	cmp.w #7,%d0
	jeq .L589
	cmp.w #6,%d0
	jeq .L589
	cmp.w #22,%d0
	jeq .L589
	cmp.w #21,%d0
	jeq .L589
	cmp.w #24,%d0
	jeq .L589
	cmp.w #23,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L589:
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
	jeq .L597
	cmp.w #-1,%d0
	jeq .L598
.L592:
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L598:
	move.w 242(%a0),%a2
	move.l 648(%a0),%a1
	add.l _turnOffset,%a2
	move.w 242(%a1),%a1
	cmp.l %a2,%a1
	jle .L592
.L599:
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
.L597:
	move.w 242(%a0),%a2
	move.l 648(%a0),%a1
	move.w 242(%a1),%a3
	add.l _turnOffset,%a3
	cmp.l %a2,%a3
	jge .L592
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
	jle .L592
	jra .L599
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
	jeq .L606
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
.L606:
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
