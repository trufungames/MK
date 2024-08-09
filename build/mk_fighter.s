#NO_APP
	.text
	.even
__Z17fighterCastShadowP7Fighterb.constprop.1:
	link.w %fp,#0
	move.l sprite,%a1
	move.l 8(%fp),%a0
	move.l 4(%a0),%d0
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
	move.l 4(%a0),%d0
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
	moveq #7,%d0
	cmp.l (%a0),%d0
	jcc .L16
.L5:
	move.l 4(%a0),%d0
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
	move.l (%a0),%d0
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
	move.l 4(%a0),%d0
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
	move.l 4(%a0),%d0
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
	move.l 4(%a0),%d0
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
	move.l 4(%a0),%d0
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
	move.l 4(%a0),%d0
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
	move.l 4(%a0),%d0
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
	move.l 4(%a0),%d0
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
	move.w #-1,270(%a0)
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
	move.w #1,270(%a0)
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
	move.l 16(%fp),266(%a2)
	move.l 20(%fp),346(%a2)
	move.l 24(%fp),350(%a2)
	move.l 28(%fp),354(%a2)
	move.l 32(%fp),358(%a2)
	move.l 36(%fp),370(%a2)
	move.l 40(%fp),374(%a2)
	move.l 44(%fp),362(%a2)
	move.l 48(%fp),366(%a2)
	move.l 52(%fp),378(%a2)
	move.l 56(%fp),382(%a2)
	move.l 60(%fp),386(%a2)
	move.l 64(%fp),390(%a2)
	move.l 68(%fp),394(%a2)
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
	move.b %d2,274(%a2)
	move.b #120,%d0
	move.l %d0,256(%a2)
	clr.l 260(%a2)
	clr.b 264(%a2)
	clr.b 272(%a2)
	clr.b 273(%a2)
	move.b #1,278(%a2)
	move.l sprite,%a0
	move.l 4(%a2),%d0
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
	move.l %d2,94(%a2)
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
	move.w #-1,270(%a2)
	move.l #11904,%d0
	move.b #62,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 406(%a2),%a1
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
	move.l %d1,94(%a2)
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
	move.w #1,270(%a2)
	move.l #11328,%d0
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 406(%a2),%a1
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
	clr.w 276(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 270(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra (__Z17fighterCastShadowP7Fighterb.constprop.1)
	.even
	.globl	__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 270(%a2),%a0
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.1)
	.even
	.globl	__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 270(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra (__Z17fighterCastShadowP7Fighterb.constprop.1)
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
	move.w 324(%a2),%a0
	move.l %a0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L58
.L51:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L59
	move.w 328(%a2),%a0
	move.l %a0,-(%sp)
	move.l 320(%a2),-(%sp)
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
	move.l 330(%a2),%a0
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
	move.l 338(%a2),%a0
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
	move.w 324(%a2),%a0
	move.l %a0,-(%sp)
	move.l 312(%a2),-(%sp)
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
	move.l 334(%a2),%a0
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
	move.l 94(%a0),%d0
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
	move.l 4(%a0),%d0
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
	clr.b 264(%a0)
	clr.b 272(%a0)
	clr.b 273(%a0)
	move.b #1,278(%a0)
	clr.b 161(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	move.b #1,143(%a0)
	clr.l 260(%a0)
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
	move.l 94(%a3),%d0
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
	move.l 4(%a3),%d0
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
	clr.b 264(%a3)
	clr.b 272(%a3)
	clr.b 273(%a3)
	move.b #1,278(%a3)
	clr.b 161(%a3)
	clr.b 162(%a3)
	clr.b 163(%a3)
	move.l 94(%a2),%d0
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
	move.l 4(%a2),%d0
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
	clr.b 264(%a2)
	clr.b 272(%a2)
	clr.b 273(%a2)
	move.b #1,278(%a2)
	clr.b 161(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	move.l %a3,-(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 406(%a3),%a0
	clr.w 14(%a0)
	move.l 94(%a3),%d0
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
	move.l 406(%a2),%a0
	clr.w 14(%a0)
	move.l 94(%a2),%d0
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
	move.l 94(%a0),%d0
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
	move.l 4(%a0),%d0
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
	clr.b 264(%a0)
	clr.b 272(%a0)
	clr.b 273(%a0)
	move.b #1,278(%a0)
	clr.b 161(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterHandleProjectileP12StateMachineP7FighterS0_S2_
__Z23fighterHandleProjectileP12StateMachineP7FighterS0_S2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	move.l 20(%fp),%a1
	moveq #1,%d0
	cmp.l (%a0),%d0
	jeq .L121
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L121:
	move.b #1,183(%a0)
	move.l 188(%a2),%a3
	move.w (%a3),%d0
	cmp.w #1,%d0
	jeq .L115
	cmp.w #8,%d0
	jeq .L115
	cmp.w #35,%d0
	jeq .L115
	move.b #1,103(%a1)
	moveq #20,%d0
	move.l %d0,260(%a1)
	clr.b 264(%a1)
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l 402(%a1),20(%fp)
	move.l %a1,16(%fp)
	move.b #29,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L115:
	move.l 402(%a1),20(%fp)
	move.l %a1,16(%fp)
	moveq #35,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
	.even
	.globl	__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_
__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a0
	move.l 16(%fp),%d1
	move.l 20(%fp),%a3
	move.l 24(%fp),%a2
	move.l 28(%fp),%d2
	move.l 188(%a3),%a1
	move.w (%a1),%d0
	cmp.w #1,%d0
	jeq .L124
	cmp.w #8,%d0
	jeq .L163
	tst.b 138(%a2)
	jne .L123
	move.l 188(%a4),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L156
	cmp.w #10,%d0
	jeq .L156
	cmp.w #13,%d0
	jeq .L164
	cmp.w #11,%d0
	jeq .L157
	cmp.w #12,%d0
	jeq .L157
	cmp.w #15,%d0
	jeq .L165
	cmp.w #14,%d0
	jeq .L166
	cmp.w #17,%d0
	jeq .L167
	cmp.w #16,%d0
	jeq .L168
	cmp.w #21,%d0
	jeq .L169
	cmp.w #22,%d0
	jeq .L170
	cmp.w #23,%d0
	jeq .L161
	cmp.w #24,%d0
	jeq .L171
	cmp.w #18,%d0
	jeq .L161
	cmp.w #19,%d0
	jeq .L172
	cmp.w #38,%d0
	jeq .L173
	cmp.w #39,%d0
	jeq .L174
	cmp.w #40,%d0
	jeq .L175
	cmp.w #44,%d0
	jeq .L176
.L123:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L124:
	move.l 188(%a4),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L177
	moveq #4,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	move.b #1,210(%a0)
	cmp.w #21,%d0
	jeq .L146
	cmp.w #23,%d0
	jeq .L146
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L146:
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #37,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L163:
	moveq #4,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L156:
	moveq #8,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	addq.l #5,206(%a0)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #25,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L157:
	moveq #8,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	addq.l #5,206(%a0)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #26,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L177:
	moveq #16,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	moveq #10,%d3
	add.l %d3,206(%a0)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #27,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L169:
	moveq #24,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	moveq #20,%d3
	add.l %d3,206(%a0)
	move.b #1,210(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #33,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L176:
	moveq #20,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	moveq #50,%d0
.L160:
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #33,%d3
.L178:
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L164:
	moveq #20,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #25,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L161:
	moveq #20,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	moveq #10,%d3
	add.l %d3,206(%a0)
	move.b #1,210(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
.L180:
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L165:
	moveq #24,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	moveq #20,%d3
	add.l %d3,206(%a0)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L166:
	moveq #20,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	add.l %d3,206(%a0)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L167:
	moveq #8,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	addq.l #5,206(%a0)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #30,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L168:
	moveq #32,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	moveq #20,%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 50.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #31,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L170:
	moveq #24,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	moveq #20,%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #33,%d3
	jra .L178
.L171:
	moveq #20,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	moveq #10,%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d3
.L179:
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L172:
	moveq #16,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	moveq #20,%d0
	add.l %d0,206(%a0)
	move.b #1,210(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d3
	jra .L179
.L173:
	moveq #16,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	moveq #20,%d3
	add.l %d3,206(%a0)
	move.b #1,210(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
	jra .L180
.L174:
	moveq #16,%d3
	move.l %d3,260(%a2)
	clr.b 264(%a2)
	moveq #50,%d0
	jra .L160
.L175:
	moveq #32,%d0
	move.l %d0,260(%a2)
	clr.b 264(%a2)
	moveq #50,%d3
	add.l %d3,206(%a0)
	move.b #1,210(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #41,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_:
	link.w %fp,#0
	movem.l #16188,-(%sp)
	move.l 8(%fp),%a5
	move.l 12(%fp),%a3
	move.l 20(%fp),%a4
	move.l 24(%fp),%a2
	tst.b 139(%a3)
	jeq .L183
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L211
.L183:
	tst.b 139(%a2)
	jeq .L184
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d7
	cmp.l 112(%a0,%d0.l),%d7
	jeq .L212
.L184:
	move.l #__Z26stageGetFighterHitboxIndexv,%d2
	move.l %d2,%a0
	jsr (%a0)
	move.l %d0,%d5
	move.l %d2,%a0
	jsr (%a0)
	move.l %d0,%d4
	move.l %d2,%a0
	jsr (%a0)
	move.l %d0,%d3
	move.l %d2,%a0
	jsr (%a0)
	move.l %d5,%a0
	pea 12(%a0)
	move.l %d4,-(%sp)
	move.l %d3,%a0
	pea 12(%a0)
	move.l %d0,-(%sp)
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L182
	move.l colliders,%d0
	moveq #0,%d4
	move.l #__Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator,%d6
	move.l #__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_,%d5
	move.l %d0,%a0
	add.l %d4,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L187
.L218:
	cmp.w #0,%a0
	jlt .L182
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 94(%a3),%d0
	cmp.l %d2,%d0
	jeq .L188
	cmp.l 94(%a2),%d2
	jeq .L188
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d7
	move.l %d7,112(%a0,%d1.l)
.L188:
	cmp.l %d0,%d3
	jeq .L189
	cmp.l 94(%a2),%d3
	jeq .L189
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L189:
	moveq #63,%d7
	cmp.l %d2,%d7
	jeq .L213
	moveq #58,%d0
	cmp.l %d2,%d0
	jeq .L214
	moveq #64,%d7
	cmp.l %d2,%d7
	jne .L191
	moveq #58,%d0
	cmp.l %d3,%d0
	jeq .L197
.L191:
	move.l 188(%a5),%a0
	move.w (%a0),%d0
.L196:
	cmp.w #43,%d0
	jeq .L215
.L198:
	move.l 188(%a4),%a0
	cmp.w #43,(%a0)
	jeq .L216
.L201:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L217
.L204:
	move.l colliders,%d0
.L205:
	addq.l #8,%d4
	move.l %d0,%a0
	add.l %d4,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L218
.L187:
	cmp.w #0,%a0
	jge .L205
.L182:
	movem.l -40(%fp),#15612
	unlk %fp
	rts
.L217:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L204
	move.l 188(%a4),%a0
	cmp.w #3,(%a0)
	jne .L204
	move.b #1,139(%a2)
	move.b #1,160(%a3)
	move.w raptor_ticks,248(%a3)
	move.l colliders,%d0
	jra .L205
.L216:
	cmp.l 94(%a2),%d2
	jne .L201
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L201
	moveq #1,%d1
	cmp.l (%a2),%d1
	jne .L201
	move.b #1,183(%a2)
	move.l 188(%a5),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L202
	cmp.w #8,%d0
	jeq .L202
	cmp.w #35,%d0
	jeq .L202
	move.b #1,103(%a3)
	moveq #20,%d7
	move.l %d7,260(%a3)
	clr.b 264(%a3)
	add.l %d7,206(%a2)
	move.b #1,210(%a2)
	move.l 402(%a3),-(%sp)
	move.l %a3,-(%sp)
	pea 29.w
	move.l %a5,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L204
	jra .L217
.L215:
	cmp.l 94(%a3),%d2
	jne .L198
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L198
	moveq #1,%d1
	cmp.l (%a3),%d1
	jne .L198
	move.b #1,183(%a3)
	move.l 188(%a4),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L199
	cmp.w #8,%d0
	jeq .L199
	cmp.w #35,%d0
	jeq .L199
	move.b #1,103(%a2)
	moveq #20,%d7
	move.l %d7,260(%a2)
	clr.b 264(%a2)
	add.l %d7,206(%a3)
	move.b #1,210(%a3)
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	move.l 188(%a4),%a0
	cmp.w #43,(%a0)
	jne .L201
	jra .L216
.L214:
	moveq #61,%d1
	move.l 188(%a5),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d1
	jne .L196
	cmp.w #3,%d0
	jne .L196
	move.b #1,139(%a3)
	move.b #1,160(%a2)
	move.w raptor_ticks,248(%a2)
	move.l 188(%a4),%a0
	cmp.w #43,(%a0)
	jne .L201
	jra .L216
.L213:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L191
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %a5,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (24,%sp),%sp
	move.l 188(%a5),%a0
	move.w (%a0),%d0
	jra .L196
.L197:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %a5,-(%sp)
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	move.l 188(%a5),%a0
	move.w (%a0),%d0
	lea (24,%sp),%sp
	cmp.w #43,%d0
	jne .L198
	jra .L215
.L212:
	clr.b 139(%a2)
	jra .L184
.L211:
	clr.b 139(%a3)
	jra .L183
.L202:
	move.l 402(%a3),-(%sp)
	move.l %a3,-(%sp)
	pea 35.w
	move.l %a5,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L204
	jra .L217
.L199:
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	move.l 188(%a4),%a0
	cmp.w #43,(%a0)
	jne .L201
	jra .L216
	.even
	.globl	__Z16fighterTurnCheckP12StateMachineP7FighterS0_S2_
__Z16fighterTurnCheckP12StateMachineP7FighterS0_S2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 20(%fp),%a0
	move.w 270(%a1),%d0
	cmp.w #1,%d0
	jeq .L234
	cmp.w #-1,%d0
	jeq .L235
.L223:
	move.w 270(%a0),%d0
	cmp.w #1,%d0
	jeq .L236
.L224:
	cmp.w #-1,%d0
	jne .L220
	move.w 250(%a0),%a2
	add.l _turnOffset,%a2
	move.w 250(%a1),%a1
	cmp.l %a2,%a1
	jle .L220
.L231:
	tst.b 140(%a0)
	jne .L220
	move.b #1,140(%a0)
.L220:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L235:
	move.w 250(%a1),%a3
	add.l _turnOffset,%a3
	move.w 250(%a0),%a2
	cmp.l %a3,%a2
	jle .L223
	tst.b 140(%a1)
	jne .L223
.L237:
	move.b #1,140(%a1)
	move.w 270(%a0),%d0
	cmp.w #1,%d0
	jne .L224
.L236:
	move.w 250(%a0),%a2
	move.w 250(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L231
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L234:
	move.w 250(%a1),%a3
	move.w 250(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L223
	tst.b 140(%a1)
	jne .L223
	jra .L237
	.even
	.globl	__Z17fighterCloseCheckP12StateMachineP7FighterS0_S2_
__Z17fighterCloseCheckP12StateMachineP7FighterS0_S2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a0
	move.l 20(%fp),%a1
	move.l 8(%fp),%a2
	move.l 188(%a2),%a2
	move.w (%a2),%d0
	cmp.w #40,%d0
	jeq .L244
	move.l 16(%fp),%a2
	move.l 188(%a2),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L244
	cmp.w #1,%d0
	jeq .L244
	cmp.w #1,%d1
	jeq .L244
	cmp.w #8,%d0
	jeq .L244
	cmp.w #8,%d1
	jeq .L244
	move.w 270(%a0),%d0
	cmp.w #1,%d0
	jeq .L247
	cmp.w #-1,%d0
	jne .L244
	move.w 250(%a1),%a3
	move.w 250(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L245
.L244:
	clr.b 141(%a0)
	clr.b 141(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L247:
	move.w 250(%a1),%a3
	move.w 250(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L244
.L245:
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
	move.l 12(%fp),260(%a1)
	move.b 19(%fp),264(%a1)
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
	jne .L251
	tst.b 264(%a2)
	jne .L256
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jle .L257
.L254:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L251:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L256:
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jgt .L254
.L257:
	clr.l 256(%a2)
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
	jne .L267
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L267:
	moveq #14,%d0
	move.l %d0,4(%a1)
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
	jle .L283
.L271:
	cmp.w #280,%d0
	jgt .L275
.L280:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L283:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L279
	move.w 250(%a2),%d0
	cmp.w #11,%d0
	jgt .L271
	cmp.w #280,250(%a3)
	jgt .L279
	jsr (%a4)
	tst.b %d0
	jne .L279
	move.w 250(%a2),%d0
	cmp.w #280,%d0
	jle .L280
.L275:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L284
.L279:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L284:
	cmp.w #328,250(%a2)
	jle .L280
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
	move.l 4(%a2),%d0
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
	jeq .L287
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L293
	jlt .L297
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L291
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L292
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L329
.L289:
	sub.w 252(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L302
	jge .L330
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L304
	cmp.l #128,%d0
	jeq .L305
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L303
.L298:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L311
	jlt .L315
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L309
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L310
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L308
	moveq #84,%d1
	not.b %d1
.L307:
	cmp.l %a1,%d1
	jge .L287
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L318
	jlt .L324
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L318
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L318
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L318
	move.w #171,%d1
.L318:
	move.w %d1,12(%a0)
.L287:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L297:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L295
	cmp.l #128,%d0
	jeq .L296
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L289
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 252(%a2),%d1
.L303:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L312:
	moveq #78,%d1
	not.b %d1
	jra .L307
.L293:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 252(%a2),%d1
.L302:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L311:
	moveq #75,%d1
	not.b %d1
	jra .L307
.L291:
	move.w %a1,%d1
	sub.w 252(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L300:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L309:
	moveq #69,%d1
	not.b %d1
	jra .L307
.L295:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 252(%a2),%d1
.L304:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L313:
	moveq #81,%d1
	not.b %d1
	jra .L307
.L329:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 252(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L308:
	moveq #66,%d1
	not.b %d1
	jra .L307
.L324:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L318
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L318
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L318
	move.w #171,%d1
	jra .L318
.L292:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 252(%a2),%d1
.L301:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L310:
	moveq #72,%d1
	not.b %d1
	jra .L307
.L296:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 252(%a2),%d1
	add.w %a1,%d1
.L305:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L314:
	moveq #87,%d1
	not.b %d1
	jra .L307
.L330:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L300
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L301
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L298
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L308
.L315:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L313
	cmp.l #128,%d0
	jeq .L314
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L312
	moveq #84,%d1
	not.b %d1
	jra .L307
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L337
	jge .L344
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L339
	cmp.l #128,%d0
	jeq .L340
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L345
.L333:
	moveq #21,%d0
	unlk %fp
	rts
.L344:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L342
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L336
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L333
	moveq #3,%d0
	unlk %fp
	rts
.L336:
	moveq #9,%d0
	unlk %fp
	rts
.L340:
	moveq #24,%d0
	unlk %fp
	rts
.L345:
	moveq #15,%d0
	unlk %fp
	rts
.L339:
	moveq #18,%d0
	unlk %fp
	rts
.L342:
	moveq #6,%d0
	unlk %fp
	rts
.L337:
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
	cmp.w #1,270(%a0)
	jeq .L353
	move.w 250(%a0),%a2
	sub.w 250(%a1),%a2
	cmp.w #259,%a2
	jgt .L351
.L349:
	clr.b 279(%a0)
	clr.b 279(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L353:
	move.w 250(%a1),%a2
	sub.w 250(%a0),%a2
	cmp.w #259,%a2
	jle .L349
.L351:
	move.b #1,279(%a0)
	move.b #1,279(%a1)
	move.l (%sp)+,%a2
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
	jne .L357
	tst.b 210(%a2)
	jeq .L356
.L357:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 210(%a3)
	jne .L366
	tst.b 210(%a2)
	jeq .L356
.L367:
	clr.b 210(%a2)
	move.l 206(%a2),%d0
	move.l %d0,_tempScore
	jne .L363
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
.L356:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L366:
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
	jne .L367
	jra .L356
.L363:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L360:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L360
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L362
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
.L362:
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
	move.w 270(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	moveq #0,%d0
	move.w 80(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w 246(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %a1,%a0
	jle .L369
	move.b #1,180(%a2)
	clr.w 14(%a3)
	move.w #90,252(%a2)
.L369:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 406(%a1),%a0
	clr.w 14(%a0)
	move.l 94(%a1),%d0
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
	jne .L374
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
	tst.b 274(%a2)
	jeq .L376
	pea 16.w
	pea 14.w
	move.l 284(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 266(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L376:
	pea 16.w
	pea 15.w
	move.l 284(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 266(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L374:
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
	tst.b 274(%a0)
	jne .L384
	pea 16.w
	pea 15.w
	move.l 280(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L384:
	pea 16.w
	pea 14.w
	move.l 280(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z14fighterHarpoonP7FighterS0_
__Z14fighterHarpoonP7FighterS0_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 125(%a2)
	jne .L386
	move.b #1,125(%a2)
	clr.b 110(%a2)
	move.b #1,174(%a2)
	move.w 270(%a2),%d1
	move.w 250(%a2),%a0
	cmp.w #-1,%d1
	jeq .L400
	move.w 250(%a3),%d0
	add.w #48,%d0
	sub.w %a0,%d0
	move.w %d0,106(%a2)
.L389:
	cmp.w #149,%d0
	jgt .L390
	move.w #150,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	move.w %d2,106(%a2)
	tst.b 132(%a2)
	jeq .L401
.L391:
	move.l 266(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L393
.L404:
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L402
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandler
	addq.l #4,%sp
.L395:
	cmp.w #-1,270(%a2)
	jeq .L403
.L396:
	move.w 250(%a3),%d0
	add.w #-48,%d0
	move.w %d0,108(%a2)
	move.w raptor_ticks,246(%a2)
	move.l 94(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 406(%a3),%a1
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
.L386:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L390:
	clr.w 106(%a2)
	move.l 266(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d2
	cmp.l %d0,%d2
	jne .L404
.L393:
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandler
	addq.l #4,%sp
	cmp.w #-1,270(%a2)
	jne .L396
.L403:
	move.w 250(%a3),%a1
	lea (48,%a1),%a1
	move.w %a1,108(%a2)
	move.w raptor_ticks,246(%a2)
	move.l 94(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 406(%a3),%a1
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
	jra .L386
.L402:
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandler
	addq.l #4,%sp
	jra .L395
.L400:
	move.w %a0,%d0
	add.w #48,%d0
	sub.w 250(%a3),%d0
	move.w %d0,106(%a2)
	jra .L389
.L401:
	move.b #1,132(%a2)
	move.w %a0,%a0
	muls.w %d1,%d0
	sub.l %d0,%a0
	move.l %a0,134(%a2)
	jra .L391
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 132(%a0)
	jne .L406
	move.b #1,132(%a0)
	move.l 12(%fp),134(%a0)
.L406:
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
	jeq .L411
	tst.b 132(%a0)
	jeq .L418
.L412:
	cmp.w #-1,270(%a0)
	jeq .L419
.L414:
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
	jpl .L422
	addq.l #1,%d1
.L422:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jne .L420
.L416:
	move.l 94(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 270(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,114(%a2)
.L410:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L420:
	move.l 94(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	move.l %a0,88(%a1,%d0.l)
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L418:
	tst.b 110(%a0)
	jeq .L412
	clr.b 112(%a2)
	move.l 406(%a2),%a0
	clr.w 14(%a0)
	move.l 94(%a2),%d0
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
	move.l 94(%a2),%d0
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
.L411:
	tst.b 111(%a2)
	jeq .L410
	cmp.w #-1,270(%a0)
	jne .L414
.L419:
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
	jpl .L423
	addq.l #1,%d1
.L423:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,114(%a2)
	tst.b %d2
	jeq .L416
	jra .L420
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
	move.l 8(%fp),%a0
	move.l 188(%a0),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L427
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L427:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z21fighterIsDuckBlockingP12StateMachineP7Fighter
__Z21fighterIsDuckBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 188(%a0),%a0
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
