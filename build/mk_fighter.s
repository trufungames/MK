#NO_APP
	.text
	.even
__Z17fighterCastShadowP7Fighterb.constprop.0:
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
	clr.l 206(%a0)
	move.b #1,210(%a0)
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
	move.w #-1,272(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,250(%a0)
	move.w #106,252(%a0)
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
	move.w #1,272(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,250(%a0)
	move.w #106,252(%a0)
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
	clr.b 174(%a2)
	clr.b 175(%a2)
	move.l 16(%fp),268(%a2)
	move.l 20(%fp),362(%a2)
	move.l 24(%fp),366(%a2)
	move.l 28(%fp),370(%a2)
	move.l 32(%fp),374(%a2)
	move.l 36(%fp),386(%a2)
	move.l 40(%fp),390(%a2)
	move.l 44(%fp),378(%a2)
	move.l 48(%fp),382(%a2)
	move.l 52(%fp),394(%a2)
	move.l 56(%fp),398(%a2)
	move.l 60(%fp),402(%a2)
	move.l 64(%fp),406(%a2)
	move.l 68(%fp),410(%a2)
	clr.l 202(%a2)
	clr.w 248(%a2)
	clr.w 106(%a2)
	move.b #1,142(%a2)
	clr.b 98(%a2)
	clr.b 140(%a2)
	move.b #1,101(%a2)
	move.b #1,99(%a2)
	clr.b 102(%a2)
	move.b #1,100(%a2)
	move.b #1,180(%a2)
	clr.b 244(%a2)
	clr.b 141(%a2)
	clr.b 125(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 143(%a2)
	clr.b 144(%a2)
	clr.b 145(%a2)
	clr.b 146(%a2)
	clr.b 160(%a2)
	clr.b 161(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	clr.b 169(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.w 176(%a2)
	clr.w 178(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	clr.b 192(%a2)
	clr.b 193(%a2)
	clr.l 194(%a2)
	moveq #50,%d0
	move.l %d0,184(%a2)
	moveq #20,%d1
	move.l %d1,188(%a2)
	move.b %d2,276(%a2)
	move.b #120,%d0
	move.l %d0,258(%a2)
	clr.l 262(%a2)
	clr.b 266(%a2)
	clr.b 274(%a2)
	clr.b 275(%a2)
	move.b #1,280(%a2)
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
	move.l %d1,198(%a2)
	moveq #62,%d2
	move.l %d2,92(%a2)
	move.b #2,%d1
	move.l %d1,212(%a2)
	move.w #210,250(%a2)
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
	move.w #-1,272(%a2)
	move.l #11904,%d0
	move.b #62,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 422(%a2),%a1
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
	move.w #90,252(%a2)
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,175(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L28:
	moveq #63,%d2
	move.l %d2,198(%a2)
	move.b #59,%d1
	move.l %d1,92(%a2)
	move.b #1,%d2
	move.l %d2,212(%a2)
	move.w #50,250(%a2)
	move.l %d2,11352(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,272(%a2)
	move.l #11328,%d0
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 422(%a2),%a1
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
	move.w #90,252(%a2)
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,175(%a2)
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
	clr.w 278(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 272(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.0)
	.even
	.globl	__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 272(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.0)
	.even
	.globl	__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 272(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.0)
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
	move.l 202(%a2),%d0
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
	move.l 202(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L43:
	tst.b 102(%a2)
	jne .L38
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 202(%a2),%d0
	addq.l #8,%sp
	jra .L38
.L42:
	tst.b 102(%a2)
	jne .L37
	move.b #1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 202(%a2),%d0
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
	movem.l #14384,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%d3
	tst.b 138(%a2)
	jne .L54
	move.l 202(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d4
	and.l %d0,%d4
	jeq .L49
	tst.b 101(%a2)
	jne .L56
.L49:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L50
.L61:
	tst.b 101(%a2)
	jne .L57
.L50:
	move.w 340(%a2),%a0
	move.l %a0,-(%sp)
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L58
.L51:
	move.w 342(%a2),%a0
	move.l %a0,-(%sp)
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L59
	move.w 344(%a2),%a0
	move.l %a0,-(%sp)
	move.l 336(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L60
.L54:
	clr.b %d0
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L58:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 346(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L60:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 354(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L56:
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 202(%a2),%d0
	addq.l #8,%sp
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L50
	jra .L61
.L57:
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	move.w 340(%a2),%a0
	move.l %a0,-(%sp)
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L51
	jra .L58
.L59:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 350(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -20(%fp),#3100
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
	move.l 202(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L65
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L69
.L65:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 202(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L64
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L67
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L67
	and.l JAGPAD_RIGHT,%d0
	jne .L67
	move.b #1,99(%a2)
	clr.b 102(%a2)
.L67:
	move.b #1,100(%a2)
.L64:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L69:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L65
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L65
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L65
	and.l JAGPAD_7,%d0
	jne .L65
	move.b #1,101(%a2)
	jra .L65
	.even
	.globl	__Z15fighterPlayHiyaiP12SoundHandlerb
__Z15fighterPlayHiyaiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #6,%d2
	cmp.l %d0,%d2
	jeq .L74
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L75
	move.b #4,%d2
	cmp.l %d0,%d2
	jeq .L78
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandler
.L78:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandler
.L75:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandler
.L74:
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
	jeq .L85
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandler
.L85:
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
	jeq .L89
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L93
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandler
.L89:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandler
.L93:
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
	jle .L100
.L96:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandler
.L100:
	move.b #6,%d2
	cmp.l %d0,%d2
	jlt .L101
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandler
.L101:
	move.b #7,%d2
	cmp.l %d0,%d2
	jne .L96
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
	jne .L107
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L108
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L108:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L107:
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
	move.l 198(%a0),%d0
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
	clr.b 140(%a0)
	clr.b 124(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
	clr.b 145(%a0)
	clr.b 146(%a0)
	clr.b 160(%a0)
	clr.b 144(%a0)
	clr.b 169(%a0)
	clr.b 172(%a0)
	clr.b 173(%a0)
	clr.b 181(%a0)
	clr.b 266(%a0)
	clr.b 274(%a0)
	clr.b 275(%a0)
	move.b #1,280(%a0)
	clr.b 161(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	move.b #1,143(%a0)
	clr.l 262(%a0)
	move.w raptor_ticks,246(%a0)
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
	move.l 198(%a3),%d0
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
	clr.b 140(%a3)
	clr.b 124(%a3)
	clr.b 138(%a3)
	clr.b 139(%a3)
	clr.b 145(%a3)
	clr.b 146(%a3)
	clr.b 160(%a3)
	clr.b 144(%a3)
	clr.b 169(%a3)
	clr.b 172(%a3)
	clr.b 173(%a3)
	clr.b 181(%a3)
	clr.b 266(%a3)
	clr.b 274(%a3)
	clr.b 275(%a3)
	move.b #1,280(%a3)
	clr.b 161(%a3)
	clr.b 162(%a3)
	clr.b 163(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 198(%a2),%d0
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
	clr.b 140(%a2)
	clr.b 124(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 145(%a2)
	clr.b 146(%a2)
	clr.b 160(%a2)
	clr.b 144(%a2)
	clr.b 169(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 181(%a2)
	clr.b 266(%a2)
	clr.b 274(%a2)
	clr.b 275(%a2)
	move.b #1,280(%a2)
	clr.b 161(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	move.l %a3,-(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 422(%a3),%a0
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
	move.l 422(%a2),%a0
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
	move.l 198(%a0),%d0
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
	clr.b 140(%a0)
	clr.b 124(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
	clr.b 145(%a0)
	clr.b 146(%a0)
	clr.b 160(%a0)
	clr.b 144(%a0)
	clr.b 169(%a0)
	clr.b 172(%a0)
	clr.b 173(%a0)
	clr.b 181(%a0)
	clr.b 266(%a0)
	clr.b 274(%a0)
	clr.b 275(%a0)
	move.b #1,280(%a0)
	clr.b 161(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterHandleProjectileP12StateMachineP7FighterS2_
__Z23fighterHandleProjectileP12StateMachineP7FighterS2_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%d1
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w (%a1),%d0
	cmp.w #1,%d0
	jeq .L138
	cmp.w #2,%d0
	jeq .L141
	cmp.w #3,%d0
	jeq .L138
	cmp.w #4,%d0
	jeq .L138
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L138:
	move.b #1,183(%a1)
	move.l 296(%a0),%a2
	move.w (%a2),%d0
	cmp.w #1,%d0
	jeq .L124
	cmp.w #8,%d0
	jeq .L124
	cmp.w #35,%d0
	jeq .L124
	move.b #1,103(%a0)
	moveq #20,%d0
	move.l %d0,262(%a0)
	clr.b 266(%a0)
	add.l %d0,206(%a1)
	move.b #1,210(%a1)
	move.l 418(%a0),-(%sp)
	move.l %a0,-(%sp)
	pea 29.w
	move.l %d1,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L143:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L141:
	move.b #1,183(%a1)
	move.l 296(%a0),%a2
	move.w (%a2),%d0
	cmp.w #1,%d0
	jne .L142
.L124:
	move.l 418(%a0),-(%sp)
	move.l %a0,-(%sp)
	pea 35.w
	move.l %d1,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L142:
	cmp.w #8,%d0
	jeq .L124
	cmp.w #35,%d0
	jeq .L124
	move.b #1,174(%a0)
	move.b #1,103(%a0)
	moveq #20,%d0
	move.l %d0,262(%a0)
	clr.b 266(%a0)
	add.l %d0,206(%a1)
	move.b #1,210(%a1)
	move.l 418(%a0),-(%sp)
	move.l %a0,-(%sp)
	pea 29.w
	move.l %d1,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L143
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
	move.l 296(%a2),%a1
	move.w (%a1),%d1
	cmp.w #1,%d1
	jeq .L146
	cmp.w #8,%d1
	jeq .L198
	tst.b 138(%a2)
	jne .L145
	move.l 296(%a0),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L183
	cmp.w #10,%d0
	jeq .L183
	cmp.w #13,%d0
	jeq .L199
	cmp.w #11,%d0
	jeq .L188
	cmp.w #12,%d0
	jeq .L188
	cmp.w #15,%d0
	jeq .L200
	cmp.w #14,%d0
	jeq .L201
	cmp.w #17,%d0
	jeq .L202
	cmp.w #16,%d0
	jeq .L203
	cmp.w #21,%d0
	jeq .L204
	cmp.w #22,%d0
	jeq .L205
	cmp.w #23,%d0
	jeq .L196
	cmp.w #24,%d0
	jeq .L206
	cmp.w #18,%d0
	jeq .L196
	cmp.w #19,%d0
	jeq .L207
	cmp.w #38,%d0
	jeq .L208
	cmp.w #39,%d0
	jeq .L209
	cmp.w #40,%d0
	jeq .L210
	cmp.w #44,%d0
	jeq .L193
	cmp.w #45,%d0
	jeq .L211
	cmp.w #47,%d0
	jeq .L193
	cmp.w #48,%d0
	jeq .L212
	cmp.w #51,%d0
	jeq .L193
.L145:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L146:
	move.l 296(%a0),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L213
	moveq #4,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	move.b #1,210(%a0)
	cmp.w #21,%d0
	jeq .L172
	cmp.w #23,%d0
	jeq .L172
	cmp.w #48,%d0
	jeq .L172
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L193:
	cmp.w #2,%d1
	jeq .L145
	moveq #20,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	moveq #50,%d0
.L190:
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #33,%d1
.L185:
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L172:
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
.L198:
	moveq #4,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	move.b #1,210(%a0)
	move.l 296(%a0),%a1
	cmp.w #48,(%a1)
	jeq .L214
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
.L215:
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L183:
	moveq #8,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	addq.l #5,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #25,%d1
.L216:
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L188:
	moveq #8,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	addq.l #5,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #26,%d1
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L213:
	moveq #16,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	moveq #10,%d1
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	move.b #27,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L214:
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d0
	jra .L215
.L204:
	moveq #24,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	moveq #20,%d1
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #33,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L199:
	moveq #20,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #25,%d1
	jra .L216
.L196:
	moveq #20,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	moveq #10,%d1
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
.L218:
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L200:
	moveq #24,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	moveq #20,%d1
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L201:
	moveq #20,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L202:
	moveq #8,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	addq.l #5,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #30,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L203:
	moveq #32,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	moveq #20,%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 50.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #31,%d1
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L205:
	moveq #24,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	moveq #20,%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #33,%d1
	jra .L185
.L206:
	moveq #20,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	moveq #10,%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d1
.L217:
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L207:
	moveq #16,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	moveq #20,%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d1
	jra .L217
.L208:
	moveq #16,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	moveq #20,%d1
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d4,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
	jra .L218
.L209:
	moveq #16,%d1
	move.l %d1,262(%a2)
	clr.b 266(%a2)
	moveq #50,%d0
	jra .L190
.L210:
	moveq #32,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	moveq #50,%d1
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	move.b #41,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L211:
	moveq #20,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	moveq #50,%d1
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	move.b #46,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L212:
	moveq #20,%d0
	move.l %d0,262(%a2)
	clr.b 266(%a2)
	moveq #50,%d1
	add.l %d1,206(%a0)
	move.b #1,210(%a0)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	move.b #49,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -16(%fp),#1052
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a2
	tst.b 139(%a3)
	jeq .L221
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L241
.L221:
	tst.b 139(%a2)
	jeq .L222
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d6
	cmp.l 112(%a0,%d0.l),%d6
	jeq .L242
.L222:
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
	jlt .L220
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP12StateMachineP7FighterS2_,%d5
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L225
.L248:
	cmp.w #0,%a0
	jlt .L220
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 92(%a3),%d0
	cmp.l %d2,%d0
	jeq .L226
	cmp.l 92(%a2),%d2
	jeq .L226
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d6
	move.l %d6,112(%a0,%d1.l)
.L226:
	cmp.l %d0,%d3
	jeq .L227
	cmp.l 92(%a2),%d3
	jeq .L227
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L227:
	moveq #63,%d6
	cmp.l %d2,%d6
	jeq .L243
	moveq #58,%d1
	cmp.l %d2,%d1
	jeq .L244
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L229
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L235
.L229:
	move.l 296(%a3),%a0
	move.w (%a0),%d0
.L234:
	cmp.w #43,%d0
	jeq .L245
.L236:
	move.l 296(%a2),%a0
	cmp.w #43,(%a0)
	jeq .L246
.L237:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L247
.L238:
	move.l colliders,%d0
.L239:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L248
.L225:
	cmp.w #0,%a0
	jge .L239
.L220:
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L247:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L238
	move.l 296(%a2),%a0
	cmp.w #3,(%a0)
	jne .L238
	move.b #1,139(%a2)
	move.b #1,160(%a3)
	move.w raptor_ticks,248(%a3)
	move.l colliders,%d0
	jra .L239
.L246:
	cmp.l 92(%a2),%d2
	jne .L237
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L237
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L238
	jra .L247
.L245:
	cmp.l 92(%a3),%d2
	jne .L236
	moveq #61,%d6
	cmp.l %d3,%d6
	jne .L236
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.l 296(%a2),%a0
	cmp.w #43,(%a0)
	jne .L237
	jra .L246
.L244:
	moveq #61,%d6
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L234
	cmp.w #3,%d0
	jne .L234
	move.b #1,139(%a3)
	move.b #1,160(%a2)
	move.w raptor_ticks,248(%a2)
	move.l 296(%a2),%a0
	cmp.w #43,(%a0)
	jne .L237
	jra .L246
.L243:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L229
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	jra .L234
.L235:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 296(%a3),%a0
	move.w (%a0),%d0
	lea (20,%sp),%sp
	cmp.w #43,%d0
	jne .L236
	jra .L245
.L242:
	clr.b 139(%a2)
	jra .L222
.L241:
	clr.b 139(%a3)
	jra .L221
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 272(%a1),%d0
	cmp.w #1,%d0
	jeq .L268
	cmp.w #-1,%d0
	jeq .L269
.L253:
	move.w 272(%a0),%d0
	cmp.w #1,%d0
	jeq .L270
.L254:
	cmp.w #-1,%d0
	jne .L250
	move.w 250(%a0),%a2
	add.l _turnOffset,%a2
	move.w 250(%a1),%a1
	cmp.l %a2,%a1
	jle .L250
.L265:
	tst.b 140(%a0)
	jne .L250
	move.l 296(%a0),%a1
	cmp.w #51,(%a1)
	jeq .L250
	move.b #1,140(%a0)
.L250:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L269:
	move.w 250(%a1),%a3
	add.l _turnOffset,%a3
	move.w 250(%a0),%a2
	cmp.l %a3,%a2
	jle .L253
	tst.b 140(%a1)
	jne .L253
.L271:
	move.l 296(%a1),%a2
	cmp.w #51,(%a2)
	jeq .L253
	move.b #1,140(%a1)
	move.w 272(%a0),%d0
	cmp.w #1,%d0
	jne .L254
.L270:
	move.w 250(%a0),%a2
	move.w 250(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L265
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L268:
	move.w 250(%a1),%a3
	move.w 250(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L253
	tst.b 140(%a1)
	jne .L253
	jra .L271
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
	jeq .L278
	move.l 296(%a1),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L278
	cmp.w #1,%d0
	jeq .L278
	cmp.w #1,%d1
	jeq .L278
	cmp.w #8,%d0
	jeq .L278
	cmp.w #8,%d1
	jeq .L278
	move.w 272(%a0),%d0
	cmp.w #1,%d0
	jeq .L281
	cmp.w #-1,%d0
	jne .L278
	move.w 250(%a1),%a3
	move.w 250(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L279
.L278:
	clr.b 141(%a0)
	clr.b 141(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L281:
	move.w 250(%a1),%a3
	move.w 250(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L278
.L279:
	move.b #1,141(%a0)
	move.b #1,141(%a1)
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
	move.l 12(%fp),262(%a1)
	move.b 19(%fp),266(%a1)
	move.l 24(%fp),%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
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
	tst.b 143(%a2)
	jne .L285
	tst.b 266(%a2)
	jne .L290
	move.l 258(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,258(%a2)
	jle .L291
.L288:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L285:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L290:
	clr.b 266(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 258(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,258(%a2)
	jgt .L288
.L291:
	clr.l 258(%a2)
	move.b #1,171(%a2)
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
	addq.w #2,250(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	subq.w #2,250(%a0)
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
	jne .L301
	moveq #16,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L301:
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
	move.w #90,252(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 250(%a2),%d0
	cmp.w #11,%d0
	jle .L317
.L305:
	cmp.w #261,%d0
	jgt .L309
.L314:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L317:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L313
	move.w 250(%a2),%d0
	cmp.w #11,%d0
	jgt .L305
	cmp.w #261,250(%a3)
	jgt .L313
	jsr (%a4)
	tst.b %d0
	jne .L313
	move.w 250(%a2),%d0
	cmp.w #261,%d0
	jle .L314
.L309:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L318
.L313:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L318:
	cmp.w #309,250(%a2)
	jle .L314
	cmp.w #10,250(%a3)
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
	add.w %d0,250(%a0)
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
	jeq .L321
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L327
	jlt .L331
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L325
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L326
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L363
.L323:
	sub.w 252(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L336
	jge .L364
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L338
	cmp.l #128,%d0
	jeq .L339
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L337
.L332:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L345
	jlt .L349
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L343
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L344
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L342
	moveq #84,%d1
	not.b %d1
.L341:
	cmp.l %a1,%d1
	jge .L321
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L352
	jlt .L358
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L352
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L352
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L352
	move.w #171,%d1
.L352:
	move.w %d1,12(%a0)
.L321:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L331:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L329
	cmp.l #128,%d0
	jeq .L330
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L323
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 252(%a2),%d1
.L337:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L346:
	moveq #78,%d1
	not.b %d1
	jra .L341
.L327:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 252(%a2),%d1
.L336:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L345:
	moveq #75,%d1
	not.b %d1
	jra .L341
.L325:
	move.w %a1,%d1
	sub.w 252(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L334:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L343:
	moveq #69,%d1
	not.b %d1
	jra .L341
.L329:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 252(%a2),%d1
.L338:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L347:
	moveq #81,%d1
	not.b %d1
	jra .L341
.L363:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 252(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L342:
	moveq #66,%d1
	not.b %d1
	jra .L341
.L358:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L352
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L352
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L352
	move.w #171,%d1
	jra .L352
.L326:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 252(%a2),%d1
.L335:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L344:
	moveq #72,%d1
	not.b %d1
	jra .L341
.L330:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 252(%a2),%d1
	add.w %a1,%d1
.L339:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L348:
	moveq #87,%d1
	not.b %d1
	jra .L341
.L364:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L334
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L335
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L332
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L342
.L349:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L347
	cmp.l #128,%d0
	jeq .L348
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L346
	moveq #84,%d1
	not.b %d1
	jra .L341
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L371
	jge .L378
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L373
	cmp.l #128,%d0
	jeq .L374
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L379
.L367:
	moveq #21,%d0
	unlk %fp
	rts
.L378:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L376
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L370
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L367
	moveq #3,%d0
	unlk %fp
	rts
.L370:
	moveq #9,%d0
	unlk %fp
	rts
.L374:
	moveq #24,%d0
	unlk %fp
	rts
.L379:
	moveq #15,%d0
	unlk %fp
	rts
.L373:
	moveq #18,%d0
	unlk %fp
	rts
.L376:
	moveq #6,%d0
	unlk %fp
	rts
.L371:
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
	cmp.w #1,272(%a0)
	jeq .L387
	move.w 250(%a0),%a2
	sub.w 250(%a1),%a2
	cmp.w #259,%a2
	jgt .L385
.L383:
	clr.b 281(%a0)
	clr.b 281(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L387:
	move.w 250(%a1),%a2
	sub.w 250(%a0),%a2
	cmp.w #259,%a2
	jle .L383
.L385:
	move.b #1,281(%a0)
	move.b #1,281(%a1)
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
	jeq .L390
.L393:
	cmp.w #3,(%a0)
	jeq .L396
.L389:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L396:
	move.l 296(%a0),%a2
	cmp.w #48,(%a2)
	jne .L389
	cmp.w #1,290(%a0)
	jne .L389
	move.l 296(%a1),%a0
	cmp.w #49,(%a0)
	jne .L389
	move.l 418(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L390:
	move.l 296(%a1),%a2
	cmp.w #48,(%a2)
	jne .L393
	cmp.w #1,290(%a1)
	jne .L393
	move.l 296(%a0),%a2
	cmp.w #49,(%a2)
	jne .L393
	move.l 418(%a0),-(%sp)
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
	move.b #1,175(%a0)
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
	tst.b 210(%a3)
	jne .L400
	tst.b 210(%a2)
	jeq .L399
.L400:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 210(%a3)
	jne .L409
	tst.b 210(%a2)
	jeq .L399
.L410:
	clr.b 210(%a2)
	move.l 206(%a2),%d0
	move.l %d0,_tempScore
	jne .L406
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 206(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L399:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L409:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 206(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 210(%a2)
	jne .L410
	jra .L399
.L406:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L403:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L403
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L405
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 206(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L405:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 206(%a2),(%sp)
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
	move.w 272(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 534(%a2),-(%sp)
	moveq #0,%d0
	move.w 78(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w 246(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %a1,%a0
	jle .L412
	move.b #1,180(%a2)
	clr.w 14(%a3)
	move.w #90,252(%a2)
.L412:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 422(%a1),%a0
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
	tst.b 146(%a2)
	jne .L417
	move.b #1,146(%a2)
	clr.b 180(%a2)
	clr.b 147(%a2)
	moveq #-1,%d0
	move.l %d0,148(%a2)
	clr.l 152(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l %a0,156(%a2)
	move.w %d0,246(%a2)
	move.b #1,104(%a2)
	tst.b 276(%a2)
	jeq .L419
	pea 16.w
	pea 14.w
	move.l 286(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 268(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L419:
	pea 16.w
	pea 15.w
	move.l 286(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 268(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L417:
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 146(%a0)
	move.b #1,180(%a0)
	tst.b 276(%a0)
	jne .L427
	pea 16.w
	pea 15.w
	move.l 282(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L427:
	pea 16.w
	pea 14.w
	move.l 282(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z14fighterHarpoonP7FighterS0_
__Z14fighterHarpoonP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 125(%a2)
	jne .L429
	move.b #1,125(%a2)
	clr.b 110(%a2)
	move.b #1,174(%a2)
	move.w 272(%a2),%d1
	move.w 250(%a2),%a0
	cmp.w #-1,%d1
	jeq .L443
	move.w 250(%a3),%d0
	add.w #48,%d0
	sub.w %a0,%d0
	move.w %d0,106(%a2)
.L432:
	cmp.w #149,%d0
	jgt .L433
	move.w #150,%a1
	sub.w %d0,%a1
	move.w %a1,%d0
	move.w %a1,106(%a2)
	tst.b 132(%a2)
	jeq .L444
.L434:
	move.l 268(%a2),%d1
	move.w (%a2),%d0
	cmp.w #4,%d0
	jeq .L436
.L447:
	cmp.w #7,%d0
	jeq .L445
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandler
	addq.l #4,%sp
.L438:
	cmp.w #-1,272(%a2)
	jeq .L446
.L439:
	move.w 250(%a3),%d1
	add.w #-48,%d1
	move.w %d1,108(%a2)
	move.w raptor_ticks,246(%a2)
	move.l 92(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 422(%a3),%a1
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
.L429:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L433:
	clr.w 106(%a2)
	move.l 268(%a2),%d1
	move.w (%a2),%d0
	cmp.w #4,%d0
	jne .L447
.L436:
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandler
	addq.l #4,%sp
	cmp.w #-1,272(%a2)
	jne .L439
.L446:
	move.w 250(%a3),%d0
	add.w #48,%d0
	move.w %d0,108(%a2)
	move.w raptor_ticks,246(%a2)
	move.l 92(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 422(%a3),%a1
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
	jra .L429
.L445:
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandler
	addq.l #4,%sp
	jra .L438
.L443:
	move.w %a0,%d0
	add.w #48,%d0
	sub.w 250(%a3),%d0
	move.w %d0,106(%a2)
	jra .L432
.L444:
	move.b #1,132(%a2)
	move.w %a0,%a0
	muls.w %d1,%d0
	sub.l %d0,%a0
	move.l %a0,134(%a2)
	jra .L434
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 132(%a0)
	jne .L449
	move.b #1,132(%a0)
	move.l 12(%fp),134(%a0)
.L449:
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
	jeq .L454
	tst.b 132(%a0)
	jeq .L461
.L455:
	cmp.w #-1,272(%a0)
	jeq .L462
.L457:
	move.w 250(%a0),%d3
	move.w 250(%a2),%d1
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
	jpl .L465
	addq.l #1,%d1
.L465:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L463
.L459:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 272(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
.L453:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L463:
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
.L461:
	tst.b 110(%a0)
	jeq .L455
	clr.b 112(%a2)
	move.l 422(%a2),%a0
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
.L454:
	tst.b 111(%a2)
	jeq .L453
	cmp.w #-1,272(%a0)
	jne .L457
.L462:
	move.w 250(%a2),%d3
	move.w 250(%a0),%d1
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
	jpl .L466
	addq.l #1,%d1
.L466:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L459
	jra .L463
	.even
	.globl	__Z20fighterCanTakeDamageP12StateMachineP7Fighter
__Z20fighterCanTakeDamageP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b 138(%a0),%d0
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
	jeq .L470
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L470:
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
