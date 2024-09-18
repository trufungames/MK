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
	move.w #-1,264(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,242(%a0)
	move.w #106,244(%a0)
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
	move.w #1,264(%a0)
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
	move.l 16(%fp),260(%a2)
	move.l 20(%fp),354(%a2)
	move.l 24(%fp),358(%a2)
	move.l 28(%fp),362(%a2)
	move.l 32(%fp),366(%a2)
	move.l 36(%fp),378(%a2)
	move.l 40(%fp),382(%a2)
	move.l 44(%fp),370(%a2)
	move.l 48(%fp),374(%a2)
	move.l 52(%fp),386(%a2)
	move.l 56(%fp),390(%a2)
	move.l 60(%fp),394(%a2)
	move.l 64(%fp),398(%a2)
	move.l 68(%fp),402(%a2)
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
	clr.b 141(%a2)
	clr.b 142(%a2)
	clr.b 143(%a2)
	clr.b 144(%a2)
	clr.b 145(%a2)
	clr.b 160(%a2)
	clr.b 161(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
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
	move.b %d1,268(%a2)
	move.w #120,254(%a2)
	clr.w 256(%a2)
	clr.b 258(%a2)
	clr.b 266(%a2)
	clr.b 267(%a2)
	move.b #1,272(%a2)
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
	move.l %d2,190(%a2)
	moveq #63,%d3
	move.l %d3,92(%a2)
	moveq #2,%d0
	move.l %d0,204(%a2)
	jsr __Z14stageGetStartXv
	add.w #220,%d0
	move.w %d0,250(%a2)
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
	move.w #-1,264(%a2)
	moveq #1,%d1
	move.l %d1,4(%a1)
	move.l 414(%a2),%a1
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
.L28:
	moveq #64,%d0
	move.l %d0,190(%a2)
	moveq #60,%d1
	move.l %d1,92(%a2)
	move.l %d3,204(%a2)
	jsr __Z14stageGetStartXv
	add.w #70,%d0
	move.w %d0,250(%a2)
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
	move.w #1,264(%a2)
	moveq #1,%d1
	move.l %d1,4(%a1)
	move.l 414(%a2),%a1
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
	clr.w 270(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 264(%a2),%a0
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
	move.w 264(%a2),%a0
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
	move.w 264(%a2),%a0
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
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L39
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
	tst.b 145(%a2)
	jne .L55
	move.l 194(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L49
	tst.b 101(%a2)
	jeq .L49
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
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
	move.w 332(%a2),%a0
	move.l %a0,-(%sp)
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L57
	move.w 334(%a2),%a0
	move.l %a0,-(%sp)
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L58
	move.w 336(%a2),%a0
	move.l %a0,-(%sp)
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L55
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 346(%a2),%a0
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
	move.l 342(%a2),%a0
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
	move.l 338(%a2),%a0
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
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L66
.L62:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 194(%a2),%d0
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
	clr.b 145(%a0)
	clr.b 160(%a0)
	clr.b 143(%a0)
	clr.b 161(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 173(%a0)
	clr.b 258(%a0)
	clr.b 266(%a0)
	clr.b 267(%a0)
	move.b #1,272(%a0)
	move.b #1,141(%a0)
	clr.w 256(%a0)
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
	clr.b 145(%a3)
	clr.b 160(%a3)
	clr.b 143(%a3)
	clr.b 161(%a3)
	clr.b 164(%a3)
	clr.b 165(%a3)
	clr.b 173(%a3)
	clr.b 258(%a3)
	clr.b 266(%a3)
	clr.b 267(%a3)
	move.b #1,272(%a3)
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
	clr.b 145(%a2)
	clr.b 160(%a2)
	clr.b 143(%a2)
	clr.b 161(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.b 173(%a2)
	clr.b 258(%a2)
	clr.b 266(%a2)
	clr.b 267(%a2)
	move.b #1,272(%a2)
	move.l %a3,-(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 414(%a3),%a0
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
	move.l 414(%a2),%a0
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
	clr.b 145(%a0)
	clr.b 160(%a0)
	clr.b 143(%a0)
	clr.b 161(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 173(%a0)
	clr.b 258(%a0)
	clr.b 266(%a0)
	clr.b 267(%a0)
	move.b #1,272(%a0)
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
	move.b #1,175(%a3)
	move.l 288(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L134
	cmp.w #8,%d0
	jeq .L134
	cmp.w #35,%d0
	jeq .L134
	move.b #1,103(%a2)
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 410(%a2),-(%sp)
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
	move.b #1,175(%a3)
	move.l 288(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jne .L161
.L134:
	move.l 410(%a2),-(%sp)
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
	move.b #1,166(%a2)
	move.b #1,103(%a2)
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L162
.L158:
	move.b #1,175(%a3)
	move.l 288(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L125
	cmp.w #8,%d0
	jeq .L125
	move.w #-1,120(%a3)
	move.w #32,116(%a3)
	clr.w 122(%a3)
	move.w #8,256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 53.w
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 410(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 54.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L159:
	tst.b 175(%a3)
	jne .L110
	move.b #1,175(%a3)
	tst.b 145(%a2)
	jne .L163
	move.l 288(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L134
	cmp.w #8,%d0
	jeq .L134
	clr.w 256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L160:
	move.b #1,175(%a3)
	move.l 288(%a2),%a0
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
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a3)
	move.b #1,202(%a3)
	move.l 410(%a2),-(%sp)
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
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	clr.b 145(%a2)
	move.b #1,172(%a2)
	lea (16,%sp),%sp
	tst.b 268(%a2)
	jne .L164
	pea 16.w
	pea 15.w
	move.l 274(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 410(%a3),(%sp)
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
	move.l 274(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 410(%a3),(%sp)
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
	move.l 288(%a2),%a1
	move.w (%a1),%d1
	cmp.w #1,%d1
	jeq .L168
	cmp.w #8,%d1
	jeq .L237
	tst.b 136(%a2)
	jne .L167
	move.l 288(%a0),%a1
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
	move.w #20,256(%a2)
	clr.b 258(%a2)
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
.L172:
	tst.b 145(%a2)
	jeq .L167
	clr.b 145(%a2)
	move.b #1,172(%a2)
	moveq #16,%d0
	tst.b 268(%a2)
	jne .L250
	move.l %d0,16(%fp)
	move.b #15,%d0
	move.l %d0,12(%fp)
	move.l 274(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L167:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L168:
	move.l 288(%a0),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L251
	cmp.w #65,%d0
	jeq .L252
	move.w #4,256(%a2)
	clr.b 258(%a2)
	move.b #1,202(%a0)
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
	move.w #8,256(%a2)
	clr.b 258(%a2)
	addq.l #5,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L237:
	move.w #4,256(%a2)
	clr.b 258(%a2)
	move.b #1,202(%a0)
	move.l 288(%a0),%a1
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
	move.w #8,256(%a2)
	clr.b 258(%a2)
	addq.l #5,198(%a0)
	move.b #1,202(%a0)
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
	move.l 274(%a2),8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra jsfLoadClut
.L238:
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L240:
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	move.w #16,256(%a2)
	clr.b 258(%a2)
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
.L227:
	move.w #16,256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #10,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L254
.L229:
	move.w #24,256(%a2)
	clr.b 258(%a2)
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
	jra .L172
.L239:
	move.w #24,256(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	jra .L221
.L241:
	move.w #8,256(%a2)
	clr.b 258(%a2)
	addq.l #5,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 30.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L242:
	move.w #32,256(%a2)
	clr.b 258(%a2)
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
	jra .L172
.L234:
	cmp.w #2,%d1
	jeq .L172
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	move.w #20,256(%a2)
	clr.b 258(%a2)
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
.L243:
	move.w #16,256(%a2)
	clr.b 258(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
	jra .L255
.L244:
	move.w #32,256(%a2)
	clr.b 258(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L245:
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L254
.L246:
	move.w #20,256(%a2)
	clr.b 258(%a2)
	moveq #50,%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 49.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L172
.L231:
	move.w #20,256(%a2)
	clr.b 258(%a2)
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
	jra .L172
.L248:
	move.w #16,256(%a2)
	clr.b 258(%a2)
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
	jra .L172
.L249:
	move.w #20,256(%a2)
	clr.b 258(%a2)
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
	move.l 288(%a3),%a0
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
	move.l 288(%a2),%a0
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
	move.l 288(%a2),%a0
	cmp.w #3,(%a0)
	jne .L277
	move.b #1,137(%a2)
	move.b #1,160(%a3)
	move.w raptor_ticks,240(%a3)
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
	move.l 288(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L271
	cmp.w #3,%d0
	jne .L271
	move.b #1,137(%a3)
	move.b #1,160(%a2)
	move.w raptor_ticks,240(%a2)
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
	move.l 288(%a3),%a0
	move.w (%a0),%d0
	jra .L271
.L272:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 288(%a3),%a0
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
	move.w 264(%a1),%d0
	cmp.w #1,%d0
	jeq .L341
	cmp.w #-1,%d0
	jeq .L342
.L290:
	move.w 264(%a0),%d0
	cmp.w #1,%d0
	jeq .L343
.L291:
	cmp.w #-1,%d0
	jne .L287
	move.w 250(%a0),%a3
	add.l _turnOffset,%a3
	move.w 250(%a1),%a2
	cmp.l %a3,%a2
	jle .L287
.L338:
	tst.b 138(%a0)
	jne .L287
	tst.b 145(%a0)
	jne .L287
	move.l 288(%a0),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L287
	cmp.w #56,%d0
	jeq .L287
	move.l 288(%a1),%a1
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
	move.w 250(%a1),%a3
	add.l _turnOffset,%a3
	move.w 250(%a0),%a2
	cmp.l %a3,%a2
	jle .L290
	tst.b 138(%a1)
	jne .L290
.L344:
	tst.b 145(%a1)
	jne .L290
	move.l 288(%a1),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L290
	cmp.w #56,%d0
	jeq .L290
	move.l 288(%a0),%a2
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
	move.w 264(%a0),%d0
	cmp.w #1,%d0
	jne .L291
.L343:
	move.w 250(%a0),%a3
	move.w 250(%a1),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jlt .L338
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L341:
	move.w 250(%a1),%a3
	move.w 250(%a0),%a2
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
	move.l 288(%a0),%a2
	move.w (%a2),%d0
	cmp.w #40,%d0
	jeq .L351
	move.l 288(%a1),%a2
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
	move.w 264(%a0),%d0
	cmp.w #1,%d0
	jeq .L354
	cmp.w #-1,%d0
	jne .L351
	move.w 242(%a1),%a3
	move.w 242(%a0),%a2
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
	move.w 242(%a1),%a3
	move.w 242(%a0),%a2
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
	move.w 14(%fp),256(%a1)
	move.b 19(%fp),258(%a1)
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
	jne .L358
	tst.b 258(%a2)
	jne .L362
	sub.w %d2,254(%a2)
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
.L362:
	clr.b 258(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	sub.w %d2,254(%a2)
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
	cmp.w #-1,264(%a0)
	jeq .L365
	move.w 250(%a0),%d0
.L366:
	addq.w #2,%d0
	move.w %d0,250(%a0)
	cmp.w #15,%d0
	jle .L371
	cmp.w #716,%d0
	jle .L364
	move.w #716,250(%a0)
.L364:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L371:
	move.w #16,250(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L365:
	move.w 250(%a0),%d0
	move.w %d0,%a1
	move.l 606(%a0),%a2
	sub.w 250(%a2),%a1
	cmp.w #279,%a1
	jle .L366
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,264(%a0)
	jeq .L374
	move.w 250(%a0),%d0
.L375:
	subq.w #2,%d0
	move.w %d0,250(%a0)
	cmp.w #15,%d0
	jle .L380
	cmp.w #716,%d0
	jle .L373
	move.w #716,250(%a0)
.L373:
	unlk %fp
	rts
.L380:
	move.w #16,250(%a0)
	unlk %fp
	rts
.L374:
	move.w 250(%a0),%d0
	move.l 606(%a0),%a1
	move.w 250(%a1),%a1
	sub.w %d0,%a1
	cmp.w #279,%a1
	jle .L375
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
	jne .L388
	moveq #17,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L388:
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
	jle .L404
.L392:
	cmp.w #261,%d0
	jgt .L396
.L401:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L404:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L400
	move.w 242(%a2),%d0
	cmp.w #11,%d0
	jgt .L392
	cmp.w #261,242(%a3)
	jgt .L400
	jsr (%a4)
	tst.b %d0
	jne .L400
	move.w 242(%a2),%d0
	cmp.w #261,%d0
	jle .L401
.L396:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L405
.L400:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L405:
	cmp.w #309,242(%a2)
	jle .L401
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
	move.w 264(%a0),%d1
	move.w 250(%a0),%d0
	cmp.w #1,%d1
	jeq .L415
	cmp.w #-1,%d1
	jeq .L411
.L409:
	add.w %a1,%d0
	move.w %d0,250(%a0)
	cmp.w #15,%d0
	jle .L416
	cmp.w #716,%d0
	jle .L407
	move.w #716,250(%a0)
.L407:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L411:
	move.w %d0,%a2
	move.l 606(%a0),%a3
	sub.w 250(%a3),%a2
	cmp.w #279,%a2
	jle .L409
	cmp.w #0,%a1
	jle .L409
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L416:
	move.w #16,250(%a0)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L415:
	move.l 606(%a0),%a2
	move.w 250(%a2),%a2
	sub.w %d0,%a2
	cmp.w #279,%a2
	jle .L409
	cmp.w #0,%a1
	jge .L409
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
	jeq .L418
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L424
	jlt .L428
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L422
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L423
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L460
.L420:
	sub.w 244(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L433
	jge .L461
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L435
	cmp.l #128,%d0
	jeq .L436
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L434
.L429:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L442
	jlt .L446
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L440
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L441
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L439
	moveq #84,%d1
	not.b %d1
.L438:
	cmp.l %a1,%d1
	jge .L418
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L449
	jlt .L455
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L449
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L449
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L449
	move.w #171,%d1
.L449:
	move.w %d1,12(%a0)
.L418:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L428:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L426
	cmp.l #128,%d0
	jeq .L427
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L420
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 244(%a2),%d1
.L434:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L443:
	moveq #78,%d1
	not.b %d1
	jra .L438
.L424:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 244(%a2),%d1
.L433:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L442:
	moveq #75,%d1
	not.b %d1
	jra .L438
.L422:
	move.w %a1,%d1
	sub.w 244(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L431:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L440:
	moveq #69,%d1
	not.b %d1
	jra .L438
.L426:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 244(%a2),%d1
.L435:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L444:
	moveq #81,%d1
	not.b %d1
	jra .L438
.L460:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 244(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L439:
	moveq #66,%d1
	not.b %d1
	jra .L438
.L455:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L449
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L449
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L449
	move.w #171,%d1
	jra .L449
.L423:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 244(%a2),%d1
.L432:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L441:
	moveq #72,%d1
	not.b %d1
	jra .L438
.L427:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 244(%a2),%d1
	add.w %a1,%d1
.L436:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L445:
	moveq #87,%d1
	not.b %d1
	jra .L438
.L461:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L431
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L432
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L429
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L439
.L446:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L444
	cmp.l #128,%d0
	jeq .L445
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L443
	moveq #84,%d1
	not.b %d1
	jra .L438
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L468
	jge .L475
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L470
	cmp.l #128,%d0
	jeq .L471
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L476
.L464:
	moveq #21,%d0
	unlk %fp
	rts
.L475:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L473
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L467
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L464
	moveq #3,%d0
	unlk %fp
	rts
.L467:
	moveq #9,%d0
	unlk %fp
	rts
.L471:
	moveq #24,%d0
	unlk %fp
	rts
.L476:
	moveq #15,%d0
	unlk %fp
	rts
.L470:
	moveq #18,%d0
	unlk %fp
	rts
.L473:
	moveq #6,%d0
	unlk %fp
	rts
.L468:
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
	cmp.w #1,264(%a0)
	jeq .L484
	move.w 242(%a0),%a2
	sub.w 242(%a1),%a2
	cmp.w #259,%a2
	jgt .L482
.L480:
	clr.b 273(%a0)
	clr.b 273(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L484:
	move.w 242(%a1),%a2
	sub.w 242(%a0),%a2
	cmp.w #259,%a2
	jle .L480
.L482:
	move.b #1,273(%a0)
	move.b #1,273(%a1)
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
	jeq .L487
.L490:
	cmp.w #3,(%a0)
	jeq .L493
.L486:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L493:
	move.l 288(%a0),%a2
	cmp.w #48,(%a2)
	jne .L486
	cmp.w #1,282(%a0)
	jne .L486
	move.l 288(%a1),%a0
	cmp.w #49,(%a0)
	jne .L486
	move.l 410(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L487:
	move.l 288(%a1),%a2
	cmp.w #48,(%a2)
	jne .L490
	cmp.w #1,282(%a1)
	jne .L490
	move.l 288(%a0),%a2
	cmp.w #49,(%a2)
	jne .L490
	move.l 410(%a0),-(%sp)
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
	jne .L497
	tst.b 202(%a2)
	jeq .L496
.L497:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 202(%a3)
	jne .L506
	tst.b 202(%a2)
	jeq .L496
.L507:
	clr.b 202(%a2)
	move.l 198(%a2),%d0
	move.l %d0,_tempScore
	jne .L503
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
.L496:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L506:
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
	jne .L507
	jra .L496
.L503:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L500:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L500
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L502
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
.L502:
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
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 526(%a2),-(%sp)
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
	jle .L509
	move.b #1,172(%a2)
	clr.w 14(%a3)
	move.w #90,244(%a2)
.L509:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 414(%a1),%a0
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
	tst.b 145(%a2)
	jne .L514
	move.b #1,145(%a2)
	clr.b 172(%a2)
	clr.b 146(%a2)
	moveq #-1,%d0
	move.l %d0,148(%a2)
	clr.l 152(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l %a0,156(%a2)
	move.w %d0,238(%a2)
	move.b #1,104(%a2)
	tst.b 268(%a2)
	jeq .L516
	pea 16.w
	pea 14.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 260(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L516:
	pea 16.w
	pea 15.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 260(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L514:
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 145(%a0)
	move.b #1,172(%a0)
	tst.b 268(%a0)
	jne .L524
	pea 16.w
	pea 15.w
	move.l 274(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L524:
	pea 16.w
	pea 14.w
	move.l 274(%a0),-(%sp)
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
	jne .L526
	move.b #1,125(%a0)
	clr.b 110(%a0)
	move.w 264(%a0),%d1
	cmp.w #-1,%d1
	jeq .L535
	move.w 242(%a1),%d2
	move.w 242(%a0),%d3
	move.w %d2,%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a0)
.L529:
	cmp.w #149,%d0
	jgt .L530
	move.w #150,%d4
	sub.w %d0,%d4
	move.w %d4,%d0
	move.w %d4,106(%a0)
	tst.b 130(%a0)
	jeq .L536
.L531:
	cmp.w #-1,%d1
	jeq .L537
.L532:
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
	move.l 414(%a1),%a1
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
.L526:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L530:
	clr.w 106(%a0)
	cmp.w #-1,%d1
	jne .L532
.L537:
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
	move.l 414(%a1),%a1
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
	jra .L526
.L535:
	move.w 242(%a0),%d3
	move.w 242(%a1),%d2
	move.w %d3,%d0
	add.w #48,%d0
	sub.w %d2,%d0
	move.w %d0,106(%a0)
	jra .L529
.L536:
	move.b #1,130(%a0)
	move.w %d3,%a2
	muls.w %d1,%d0
	sub.l %d0,%a2
	move.l %a2,132(%a0)
	jra .L531
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 130(%a0)
	jne .L539
	move.b #1,130(%a0)
	move.l 12(%fp),132(%a0)
.L539:
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
	jeq .L544
	tst.b 130(%a0)
	jeq .L551
.L545:
	cmp.w #-1,264(%a0)
	jeq .L552
.L547:
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
	jpl .L555
	addq.l #1,%d1
.L555:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L553
.L549:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 264(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
.L543:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L553:
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
.L551:
	tst.b 110(%a0)
	jeq .L545
	clr.b 112(%a2)
	move.l 414(%a2),%a0
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
.L544:
	tst.b 111(%a2)
	jeq .L543
	cmp.w #-1,264(%a0)
	jne .L547
.L552:
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
	jpl .L556
	addq.l #1,%d1
.L556:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L549
	jra .L553
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
	move.l 288(%a0),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L560
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L560:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z21fighterIsDuckBlockingP12StateMachineP7Fighter
__Z21fighterIsDuckBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 288(%a0),%a0
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
	move.l 288(%a0),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L573
	cmp.w #19,%d0
	jeq .L573
	cmp.w #18,%d0
	jeq .L573
	cmp.w #7,%d0
	jeq .L573
	cmp.w #6,%d0
	jeq .L573
	cmp.w #22,%d0
	jeq .L573
	cmp.w #21,%d0
	jeq .L573
	cmp.w #24,%d0
	jeq .L573
	cmp.w #23,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L573:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z19fighterFaceOpponentP7Fighter
__Z19fighterFaceOpponentP7Fighter:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a0
	move.w 264(%a0),%d0
	cmp.w #1,%d0
	jeq .L581
	cmp.w #-1,%d0
	jeq .L582
.L576:
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L582:
	move.w 242(%a0),%a2
	move.l 606(%a0),%a1
	add.l _turnOffset,%a2
	move.w 242(%a1),%a1
	cmp.l %a2,%a1
	jle .L576
.L583:
	move.w #1,264(%a0)
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
.L581:
	move.w 242(%a0),%a2
	move.l 606(%a0),%a1
	move.w 242(%a1),%a3
	add.l _turnOffset,%a3
	cmp.l %a2,%a3
	jge .L576
	move.w #-1,264(%a0)
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
	jle .L576
	jra .L583
	.even
	.globl	__Z20fighterTurnInstantlyP7Fighter
__Z20fighterTurnInstantlyP7Fighter:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.w 264(%a0),%d0
	neg.w %d0
	move.w %d0,264(%a0)
	move.l sprite,%a1
	cmp.w #1,%d0
	jeq .L590
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
.L590:
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
