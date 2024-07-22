#NO_APP
	.text
	.even
__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_.part.1:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%d1
	move.l 20(%fp),%a0
	move.l 24(%fp),%d2
	move.l 8(%fp),%a2
	move.l 132(%a2),%a2
	move.l (%a2),%d0
	moveq #13,%d3
	cmp.l %d0,%d3
	jeq .L12
	moveq #11,%d3
	cmp.l %d0,%d3
	jeq .L13
	moveq #20,%d3
	cmp.l %d0,%d3
	jeq .L14
	moveq #15,%d3
	cmp.l %d0,%d3
	jeq .L15
	moveq #14,%d3
	cmp.l %d0,%d3
	jeq .L16
	moveq #17,%d3
	cmp.l %d0,%d3
	jeq .L17
	moveq #16,%d3
	cmp.l %d0,%d3
	jeq .L18
	movem.l (%sp)+,#1036
	unlk %fp
	rts
.L18:
	moveq #32,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	move.b #20,%d3
	add.l %d3,240(%a1)
	move.b #1,244(%a1)
	move.l %d2,20(%fp)
	move.l %a0,16(%fp)
	move.b #31,%d0
	move.l %d0,12(%fp)
	move.l %d1,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L12:
	moveq #20,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	add.l %d0,240(%a1)
	move.b #1,244(%a1)
	move.l %d2,20(%fp)
	move.l %a0,16(%fp)
	move.b #25,%d3
	move.l %d3,12(%fp)
	move.l %d1,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L13:
	moveq #8,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	addq.l #5,240(%a1)
	move.b #1,244(%a1)
	move.l %d2,20(%fp)
	move.l %a0,16(%fp)
	move.b #26,%d3
	move.l %d3,12(%fp)
	move.l %d1,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L14:
	moveq #16,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	move.b #10,%d3
	add.l %d3,240(%a1)
	move.b #1,244(%a1)
	move.l %d2,20(%fp)
	move.l %a0,16(%fp)
	move.b #27,%d0
	move.l %d0,12(%fp)
	move.l %d1,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L15:
	moveq #24,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	move.b #20,%d3
	add.l %d3,240(%a1)
	move.b #1,244(%a1)
	move.l %d2,20(%fp)
	move.l %a0,16(%fp)
	move.b #29,%d0
	move.l %d0,12(%fp)
	move.l %d1,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L16:
	moveq #20,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	add.l %d0,240(%a1)
	move.b #1,244(%a1)
	move.l %d2,20(%fp)
	move.l %a0,16(%fp)
	move.b #29,%d3
	move.l %d3,12(%fp)
	move.l %d1,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L17:
	moveq #8,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	addq.l #5,240(%a1)
	move.b #1,244(%a1)
	move.l %d2,20(%fp)
	move.l %a0,16(%fp)
	move.b #30,%d3
	move.l %d3,12(%fp)
	move.l %d1,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
	.even
__Z17fighterCastShadowP7Fighterb.constprop.2:
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
	jcc .L35
.L24:
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
.L35:
	move.l (%a0),%d0
	add.l %d0,%d0
	move.w .L32(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L32:
	.word .L24-.L32
	.word .L25-.L32
	.word .L26-.L32
	.word .L27-.L32
	.word .L28-.L32
	.word .L30-.L32
	.word .L30-.L32
	.word .L31-.L32
.L30:
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
.L25:
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
.L26:
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
.L27:
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
.L28:
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
.L31:
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
	clr.l 240(%a0)
	move.b #1,244(%a0)
	move.l sprite,%a2
	move.l 4(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a2,%d1.l),%a1
	tst.b 15(%fp)
	jne .L41
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
	move.w #-1,316(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,296(%a0)
	move.w #106,298(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L41:
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
	move.w #1,316(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,296(%a0)
	move.w #106,298(%a0)
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
	move.l #0x400ccccd,322(%a2)
	clr.l 326(%a2)
	move.l #0xc1800000,330(%a2)
	move.l #0xc1a80000,334(%a2)
	move.l #0xc0800000,338(%a2)
	move.l #0x40a00000,342(%a2)
	clr.b 128(%a2)
	clr.b 129(%a2)
	clr.b 208(%a2)
	clr.b 209(%a2)
	move.l 16(%fp),312(%a2)
	move.l 20(%fp),400(%a2)
	move.l 24(%fp),408(%a2)
	move.l 28(%fp),416(%a2)
	move.l 32(%fp),420(%a2)
	move.l 36(%fp),432(%a2)
	move.l 40(%fp),436(%a2)
	move.l 44(%fp),424(%a2)
	move.l 48(%fp),428(%a2)
	move.l 52(%fp),440(%a2)
	move.l 56(%fp),444(%a2)
	move.l 60(%fp),448(%a2)
	move.l 64(%fp),452(%a2)
	move.l 68(%fp),456(%a2)
	clr.l 236(%a2)
	move.l #0x40000000,250(%a2)
	move.l #0x40800000,254(%a2)
	move.l #0x40d00000,258(%a2)
	move.l #0x41000000,262(%a2)
	clr.l 270(%a2)
	move.l #0x40f00000,266(%a2)
	moveq #1,%d0
	move.l %d0,288(%a2)
	clr.l 292(%a2)
	clr.l 280(%a2)
	clr.l 130(%a2)
	move.b #1,176(%a2)
	move.b #1,88(%a2)
	clr.b 89(%a2)
	clr.b 90(%a2)
	clr.b 91(%a2)
	clr.b 170(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 99(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 104(%a2)
	clr.b 103(%a2)
	clr.b 105(%a2)
	move.b #1,126(%a2)
	move.b #1,124(%a2)
	clr.b 127(%a2)
	move.b #1,125(%a2)
	move.b #1,214(%a2)
	clr.b 278(%a2)
	clr.b 106(%a2)
	clr.b 107(%a2)
	clr.b 108(%a2)
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 171(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 174(%a2)
	clr.b 175(%a2)
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 113(%a2)
	clr.b 114(%a2)
	clr.b 115(%a2)
	clr.b 116(%a2)
	clr.b 117(%a2)
	clr.b 119(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 168(%a2)
	clr.b 169(%a2)
	clr.b 177(%a2)
	clr.b 178(%a2)
	clr.b 179(%a2)
	clr.b 180(%a2)
	clr.b 194(%a2)
	clr.b 195(%a2)
	clr.b 196(%a2)
	clr.b 197(%a2)
	clr.b 203(%a2)
	clr.b 206(%a2)
	clr.b 207(%a2)
	clr.w 210(%a2)
	clr.w 212(%a2)
	clr.b 215(%a2)
	clr.b 216(%a2)
	clr.b 226(%a2)
	clr.b 227(%a2)
	clr.l 228(%a2)
	moveq #50,%d1
	move.l %d1,218(%a2)
	move.b #20,%d0
	move.l %d0,222(%a2)
	move.b %d2,320(%a2)
	move.b #120,%d1
	move.l %d1,302(%a2)
	clr.l 306(%a2)
	clr.b 310(%a2)
	clr.b 318(%a2)
	clr.b 319(%a2)
	move.b #1,348(%a2)
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
	jne .L48
	moveq #64,%d1
	move.l %d1,232(%a2)
	moveq #62,%d2
	move.l %d2,84(%a2)
	move.b #2,%d1
	move.l %d1,246(%a2)
	move.w #210,296(%a2)
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
	move.w #-1,316(%a2)
	move.l #11904,%d0
	move.b #62,%d1
.L45:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 464(%a2),%a1
	clr.w 16(%a1)
	move.l %d1,(%a1)
	move.l #12001392,8(%a1)
	add.l %d0,%a0
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
	jsr jsfLoadClut
	move.w #90,298(%a2)
	lea (12,%sp),%sp
	tst.b 88(%a2)
	jeq .L46
	move.l 232(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 296(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
.L46:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,209(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L48:
	moveq #63,%d2
	move.l %d2,232(%a2)
	move.b #59,%d1
	move.l %d1,84(%a2)
	move.b #1,%d2
	move.l %d2,246(%a2)
	move.w #50,296(%a2)
	move.l %d2,11352(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,316(%a2)
	move.l #11328,%d0
	jra .L45
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 346(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 316(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.2)
	.even
	.globl	__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 316(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
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
	.globl	__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 316(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.2)
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
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
	move.l 236(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L57
	tst.b 124(%a2)
	jne .L62
.L57:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L58
	tst.b 124(%a2)
	jne .L63
.L58:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L59
	tst.b 124(%a2)
	jne .L64
.L59:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L56
	tst.b 124(%a2)
	jeq .L56
	tst.b 127(%a2)
	jeq .L65
.L56:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L64:
	tst.b 127(%a2)
	jne .L59
	move.b #1,127(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 236(%a2),%d0
	addq.l #8,%sp
	jra .L59
.L63:
	tst.b 127(%a2)
	jne .L58
	move.b #1,127(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 236(%a2),%d0
	addq.l #8,%sp
	jra .L58
.L62:
	tst.b 127(%a2)
	jne .L57
	move.b #1,127(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 236(%a2),%d0
	addq.l #8,%sp
	jra .L57
.L65:
	move.b #1,127(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z25fighterHandleSpecialMovesfP7FighterP14SpriteAnimatorb
__Z25fighterHandleSpecialMovesfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l JAGPAD_C,%d0
	move.l %d0,%d1
	and.l 236(%a2),%d1
	jeq .L68
	tst.b 126(%a2)
	jne .L73
.L68:
	move.w 378(%a2),%a0
	move.l %a0,-(%sp)
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L74
	tst.b 195(%a2)
	jne .L75
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L75:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 384(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L74:
	move.b #1,195(%a2)
	clr.b 198(%a2)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	addq.l #4,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L73:
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	jra .L68
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18fighterButtonCheckP7Fighter
__Z18fighterButtonCheckP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 236(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L79
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L83
.L79:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 236(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L78
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L81
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L81
	and.l JAGPAD_RIGHT,%d0
	jne .L81
	move.b #1,124(%a2)
	clr.b 127(%a2)
.L81:
	move.b #1,125(%a2)
.L78:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L83:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L79
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L79
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L79
	and.l JAGPAD_7,%d0
	jne .L79
	move.b #1,126(%a2)
	jra .L79
	.even
	.globl	__Z15fighterPlayHiyaiP12SoundHandlerb
__Z15fighterPlayHiyaiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.b 19(%fp),%d2
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L88
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L89
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L92
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L92:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L89:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L88:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxHiyaNinjaP12SoundHandlerb
	.even
	.globl	__Z16fighterPlayGroaniP12SoundHandlerb
__Z16fighterPlayGroaniP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 12(%fp),%d0
	move.b 19(%fp),%d1
	moveq #7,%d2
	and.l #255,%d1
	cmp.l 8(%fp),%d2
	jeq .L99
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L99:
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z14sfxGroanFemaleP12SoundHandlerb
	.even
	.globl	__Z15fighterPlayYelliP12SoundHandlerb
__Z15fighterPlayYelliP12SoundHandlerb:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.b 19(%fp),%d2
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L103
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L107
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L103:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L107:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxYellFemaleP12SoundHandlerb
	.even
	.globl	__Z15fighterPlayJumpiP12SoundHandlerb
__Z15fighterPlayJumpiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	move.b 19(%fp),%d2
	moveq #5,%d3
	cmp.l %d0,%d3
	jle .L114
.L110:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L114:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L115
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L115:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L110
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxJumpFemaleP12SoundHandlerb
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
	jne .L121
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L122
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L122:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L121:
	move.l %d2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z11sfxCrowdAwwP12SoundHandler
	.even
	.globl	__Z17fighterResetFlagsP7Fighter
__Z17fighterResetFlagsP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 84(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 232(%a0),%d0
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
	clr.b 89(%a0)
	clr.b 90(%a0)
	clr.b 91(%a0)
	clr.b 170(%a0)
	clr.b 92(%a0)
	clr.b 93(%a0)
	clr.b 94(%a0)
	clr.b 95(%a0)
	clr.b 96(%a0)
	clr.b 97(%a0)
	clr.b 98(%a0)
	clr.b 99(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 104(%a0)
	clr.b 103(%a0)
	clr.b 105(%a0)
	clr.b 278(%a0)
	clr.b 106(%a0)
	clr.b 107(%a0)
	clr.b 108(%a0)
	clr.b 109(%a0)
	clr.b 110(%a0)
	clr.b 171(%a0)
	clr.b 172(%a0)
	clr.b 173(%a0)
	clr.b 174(%a0)
	clr.b 111(%a0)
	clr.b 112(%a0)
	clr.b 113(%a0)
	clr.b 114(%a0)
	clr.b 115(%a0)
	clr.b 116(%a0)
	clr.b 117(%a0)
	clr.b 119(%a0)
	clr.b 118(%a0)
	clr.b 121(%a0)
	clr.b 122(%a0)
	clr.b 123(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 168(%a0)
	clr.b 169(%a0)
	clr.b 179(%a0)
	clr.b 180(%a0)
	clr.b 194(%a0)
	clr.b 178(%a0)
	clr.b 203(%a0)
	clr.b 206(%a0)
	clr.b 207(%a0)
	clr.b 215(%a0)
	clr.b 216(%a0)
	clr.b 226(%a0)
	clr.b 227(%a0)
	clr.b 310(%a0)
	clr.b 318(%a0)
	clr.b 319(%a0)
	move.b #1,348(%a0)
	clr.b 195(%a0)
	clr.b 196(%a0)
	clr.b 197(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z16fighterMakeDizzyP7Fighter
__Z16fighterMakeDizzyP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,177(%a2)
	clr.l 306(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	addq.l #4,%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z20fighterResetFlagsAllP7FighterS0_
__Z20fighterResetFlagsAllP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l %a3,-(%sp)
	lea __Z17fighterResetFlagsP7Fighter,%a4
	jsr (%a4)
	move.l %a2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %a3,(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 464(%a3),%a0
	clr.w 16(%a0)
	move.l 84(%a3),%d0
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
	move.l 464(%a2),%a0
	clr.w 16(%a0)
	move.l 84(%a2),%d0
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
	.globl	__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_
__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a4
	move.l 20(%fp),%a0
	move.l 24(%fp),%a1
	move.l 28(%fp),%d1
	move.l 132(%a0),%a2
	move.l (%a2),%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L127
	move.b #8,%d2
	cmp.l %d0,%d2
	jeq .L127
	tst.b 168(%a1)
	jne .L127
	move.l 132(%a3),%a2
	moveq #9,%d0
	cmp.l (%a2),%d0
	jeq .L134
	move.l %d1,24(%fp)
	move.l %a1,20(%fp)
	move.l %a0,16(%fp)
	move.l %a4,12(%fp)
	move.l %a3,8(%fp)
	movem.l (%sp)+,#7172
	unlk %fp
	jra (__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_.part.1)
.L127:
	movem.l (%sp)+,#7172
	unlk %fp
	rts
.L134:
	moveq #8,%d2
	move.l %d2,306(%a1)
	clr.b 310(%a1)
	addq.l #5,240(%a4)
	move.b #1,244(%a4)
	move.l %d1,20(%fp)
	move.l %a1,16(%fp)
	move.b #25,%d0
	move.l %d0,12(%fp)
	move.l %a0,8(%fp)
	movem.l (%sp)+,#7172
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 316(%a1),%d0
	cmp.w #1,%d0
	jeq .L150
	cmp.w #-1,%d0
	jeq .L151
.L139:
	move.w 316(%a0),%d0
	cmp.w #1,%d0
	jeq .L152
.L140:
	cmp.w #-1,%d0
	jne .L136
	move.w 296(%a0),%a2
	add.l _turnOffset,%a2
	move.w 296(%a1),%a1
	cmp.l %a2,%a1
	jle .L136
.L147:
	tst.b 170(%a0)
	jne .L136
	clr.b 319(%a0)
	move.b #1,170(%a0)
	move.b #1,318(%a0)
.L136:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L151:
	move.w 296(%a1),%a3
	add.l _turnOffset,%a3
	move.w 296(%a0),%a2
	cmp.l %a3,%a2
	jle .L139
	tst.b 170(%a1)
	jne .L139
.L153:
	clr.b 319(%a1)
	move.b #1,170(%a1)
	move.b #1,318(%a1)
	move.w 316(%a0),%d0
	cmp.w #1,%d0
	jne .L140
.L152:
	move.w 296(%a0),%a2
	move.w 296(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L147
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L150:
	move.w 296(%a1),%a3
	move.w 296(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L139
	tst.b 170(%a1)
	jne .L139
	jra .L153
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 316(%a0),%d0
	cmp.w #1,%d0
	jeq .L162
	cmp.w #-1,%d0
	jeq .L163
.L157:
	clr.b 175(%a0)
	clr.b 175(%a1)
.L155:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L163:
	move.w 296(%a1),%a3
	move.w 296(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L157
.L159:
	move.b #1,175(%a0)
	move.b #1,175(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L162:
	move.w 296(%a1),%a3
	move.w 296(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L159
	clr.b 175(%a0)
	clr.b 175(%a1)
	jra .L155
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
	move.l 12(%fp),306(%a1)
	move.b 19(%fp),310(%a1)
	move.l 24(%fp),%d0
	add.l %d0,240(%a0)
	move.b #1,244(%a0)
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
	tst.b 177(%a2)
	jne .L167
	tst.b 310(%a2)
	jne .L172
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jle .L173
.L170:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L167:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L172:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jgt .L170
.L173:
	clr.l 302(%a2)
	move.b #1,205(%a2)
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
	cmp.w #1,316(%a0)
	jeq .L180
	tst.b 348(%a0)
	jeq .L175
.L177:
	addq.w #2,296(%a0)
.L175:
	unlk %fp
	rts
.L180:
	tst.b 172(%a0)
	jeq .L177
	tst.b 348(%a0)
	jne .L177
	jra .L175
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,316(%a0)
	jeq .L183
	tst.b 172(%a0)
	jeq .L184
.L183:
	tst.b 348(%a0)
	jeq .L182
.L184:
	subq.w #2,296(%a0)
.L182:
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
	move.l 8(%fp),%a0
	tst.b 88(%a0)
	jeq .L189
	move.l 232(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 296(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 298(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L189:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L197
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L197:
	moveq #14,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterSetOnFloorP7Fighter
__Z17fighterSetOnFloorP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w #90,298(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 296(%a2),%d0
	cmp.w #11,%d0
	jle .L213
.L201:
	cmp.w #280,%d0
	jgt .L205
.L210:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L213:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L209
	move.w 296(%a2),%d0
	cmp.w #11,%d0
	jgt .L201
	cmp.w #280,296(%a3)
	jgt .L209
	jsr (%a4)
	tst.b %d0
	jne .L209
	move.w 296(%a2),%d0
	cmp.w #280,%d0
	jle .L210
.L205:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L214
.L209:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L214:
	cmp.w #328,296(%a2)
	jle .L210
	cmp.w #10,296(%a3)
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
	move.l 12(%fp),%d0
	move.w 316(%a0),%d1
	cmp.w #1,%d1
	jeq .L217
	tst.b 172(%a0)
	jne .L217
.L218:
	tst.l %d0
	jle .L221
	tst.b 348(%a0)
	jeq .L216
.L221:
	add.w %d0,296(%a0)
.L216:
	unlk %fp
	rts
.L217:
	tst.l %d0
	jlt .L224
	cmp.w #1,%d1
	jne .L218
.L225:
	tst.b 172(%a0)
	jne .L218
	add.w %d0,296(%a0)
	jra .L216
.L224:
	tst.b 348(%a0)
	jeq .L216
	cmp.w #1,%d1
	jne .L218
	jra .L225
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
	jeq .L227
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L233
	jlt .L237
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L231
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L232
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L269
.L229:
	sub.w 298(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L242
	jge .L270
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L244
	cmp.l #128,%d0
	jeq .L245
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L243
.L238:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L251
	jlt .L255
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L249
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L250
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L248
	moveq #84,%d1
	not.b %d1
.L247:
	cmp.l %a1,%d1
	jge .L227
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L258
	jlt .L264
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L258
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L258
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L258
	move.w #171,%d1
.L258:
	move.w %d1,12(%a0)
.L227:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L237:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L235
	cmp.l #128,%d0
	jeq .L236
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L229
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 298(%a2),%d1
.L243:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L252:
	moveq #78,%d1
	not.b %d1
	jra .L247
.L233:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 298(%a2),%d1
.L242:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L251:
	moveq #75,%d1
	not.b %d1
	jra .L247
.L231:
	move.w %a1,%d1
	sub.w 298(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L240:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L249:
	moveq #69,%d1
	not.b %d1
	jra .L247
.L235:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 298(%a2),%d1
.L244:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L253:
	moveq #81,%d1
	not.b %d1
	jra .L247
.L269:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 298(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L248:
	moveq #66,%d1
	not.b %d1
	jra .L247
.L264:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L258
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L258
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L258
	move.w #171,%d1
	jra .L258
.L232:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 298(%a2),%d1
.L241:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L250:
	moveq #72,%d1
	not.b %d1
	jra .L247
.L236:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 298(%a2),%d1
	add.w %a1,%d1
.L245:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L254:
	moveq #87,%d1
	not.b %d1
	jra .L247
.L270:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L240
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L241
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L238
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L248
.L255:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L253
	cmp.l #128,%d0
	jeq .L254
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L252
	moveq #84,%d1
	not.b %d1
	jra .L247
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L277
	jge .L284
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L279
	cmp.l #128,%d0
	jeq .L280
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L285
.L273:
	moveq #21,%d0
	unlk %fp
	rts
.L284:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L282
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L276
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L273
	moveq #3,%d0
	unlk %fp
	rts
.L276:
	moveq #9,%d0
	unlk %fp
	rts
.L280:
	moveq #24,%d0
	unlk %fp
	rts
.L285:
	moveq #15,%d0
	unlk %fp
	rts
.L279:
	moveq #18,%d0
	unlk %fp
	rts
.L282:
	moveq #6,%d0
	unlk %fp
	rts
.L277:
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
	cmp.w #1,316(%a0)
	jeq .L293
	move.w 296(%a0),%a2
	sub.w 296(%a1),%a2
	cmp.w #259,%a2
	jgt .L291
.L289:
	clr.b 349(%a0)
	clr.b 349(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L293:
	move.w 296(%a1),%a2
	sub.w 296(%a0),%a2
	cmp.w #259,%a2
	jle .L289
.L291:
	move.b #1,349(%a0)
	move.b #1,349(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,209(%a0)
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
	tst.b 244(%a3)
	jne .L297
	tst.b 244(%a2)
	jeq .L296
.L297:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 244(%a3)
	jne .L306
	tst.b 244(%a2)
	jeq .L296
.L307:
	clr.b 244(%a2)
	move.l 240(%a2),%d0
	move.l %d0,_tempScore
	jne .L303
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 240(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L296:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L306:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 240(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 244(%a2)
	jne .L307
	jra .L296
.L303:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L300:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L300
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L302
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 240(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L302:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 240(%a2),(%sp)
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
	move.w 316(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	moveq #0,%d0
	move.w 80(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 284(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L309
	move.b #1,214(%a2)
	clr.b 92(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 119(%a2)
	clr.b 118(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.b 166(%a2)
	move.b #1,167(%a2)
	clr.l 350(%a2)
	clr.w 16(%a3)
	move.w #90,298(%a2)
.L309:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 464(%a1),%a0
	clr.w 16(%a0)
	move.l 84(%a1),%d0
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
	tst.b 180(%a2)
	jne .L314
	move.b #1,180(%a2)
	clr.b 214(%a2)
	clr.b 181(%a2)
	moveq #-1,%d0
	move.l %d0,182(%a2)
	clr.l 186(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,190(%a2)
	move.l %a0,284(%a2)
	move.b #1,129(%a2)
	tst.b 320(%a2)
	jeq .L316
	pea 16.w
	pea 14.w
	move.l 358(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
.L314:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L316:
	pea 16.w
	pea 15.w
	move.l 358(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
	jra .L314
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 180(%a0)
	move.b #1,214(%a0)
	tst.b 320(%a0)
	jne .L324
	pea 16.w
	pea 15.w
	move.l 354(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L324:
	pea 16.w
	pea 14.w
	move.l 354(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z14fighterHarpoonP7FighterS0_
__Z14fighterHarpoonP7FighterS0_:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 123(%a2)
	jne .L326
	move.b #1,123(%a2)
	clr.b 138(%a2)
	move.b #1,208(%a2)
	move.w 316(%a2),%d0
	move.w 296(%a2),%a4
	cmp.w #-1,%d0
	jeq .L340
	move.w 296(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,130(%a2)
.L329:
	cmp.w #149,%a0
	jgt .L330
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,130(%a2)
	tst.b 158(%a2)
	jeq .L341
.L331:
	moveq #0,%d2
	move.b 320(%a2),%d2
	move.l 312(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L333
.L344:
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L342
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L335:
	cmp.w #-1,316(%a2)
	jeq .L343
.L336:
	move.w 296(%a3),%d0
	ext.l %d0
	moveq #-48,%d3
	add.l %d0,%d3
	move.l %d3,134(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	move.l 84(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 464(%a3),%a1
	clr.w 16(%a1)
	move.l %d0,(%a1)
	move.l #12001392,8(%a1)
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L326:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L330:
	clr.l 130(%a2)
	moveq #0,%d2
	move.b 320(%a2),%d2
	move.l 312(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jne .L344
.L333:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	cmp.w #-1,316(%a2)
	jne .L336
.L343:
	move.w 296(%a3),%d0
	ext.l %d0
	moveq #48,%d1
	add.l %d0,%d1
	move.l %d1,134(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	move.l 84(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 464(%a3),%a1
	clr.w 16(%a1)
	move.l %d0,(%a1)
	move.l #12001392,8(%a1)
	move.l #12001392,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12108912,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L326
.L342:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L335
.L340:
	move.l %a4,%a0
	sub.w 296(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,130(%a2)
	jra .L329
.L341:
	move.b #1,158(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,160(%a2)
	jra .L331
	.even
	.globl	__Z23fighterHandleProjectileP7FighterS0_
__Z23fighterHandleProjectileP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l (%a3),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L386
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L390
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L391
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L386
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L386
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L392
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L346
	tst.b 217(%a3)
	jne .L346
	move.b #1,217(%a3)
	tst.b 96(%a2)
	jeq .L393
	move.b #1,152(%a3)
.L378:
	move.b #1,97(%a2)
	move.b #1,203(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
.L346:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L386:
	move.b #1,217(%a3)
	tst.b 96(%a2)
	jne .L378
	tst.b 92(%a2)
	jeq .L366
	move.b #1,121(%a2)
	moveq #20,%d0
	move.l %d0,306(%a2)
	clr.b 310(%a2)
	add.l %d0,240(%a3)
	move.b #1,244(%a3)
.L394:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L390:
	move.b #1,217(%a3)
	tst.b 96(%a2)
	jne .L378
	tst.b 92(%a2)
	jeq .L354
	move.b #1,121(%a2)
	move.b #1,208(%a2)
.L381:
	move.b #1,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
.L395:
	moveq #20,%d0
	move.l %d0,306(%a2)
	clr.b 310(%a2)
	add.l %d0,240(%a3)
	move.b #1,244(%a3)
	jra .L394
.L391:
	move.b #1,217(%a3)
	tst.b 96(%a2)
	jne .L378
	tst.b 92(%a2)
	jeq .L358
	move.b #1,121(%a2)
	move.b #1,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	jra .L395
.L366:
	move.b #1,113(%a2)
	move.b #1,128(%a2)
	moveq #20,%d0
	move.l %d0,306(%a2)
	clr.b 310(%a2)
	add.l %d0,240(%a3)
	move.b #1,244(%a3)
	jra .L394
.L354:
	move.b #1,116(%a2)
	move.b #1,208(%a2)
	jra .L381
.L392:
	tst.b 217(%a3)
	jne .L346
	move.b #1,217(%a3)
	tst.b 180(%a2)
	jne .L396
	tst.b 96(%a2)
	jne .L378
	move.b #1,180(%a2)
	clr.b 214(%a2)
	clr.b 181(%a2)
	moveq #-1,%d0
	move.l %d0,182(%a2)
	clr.l 186(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,190(%a2)
	move.l %a0,284(%a2)
	move.b #1,129(%a2)
	tst.b 320(%a2)
	jeq .L375
	pea 16.w
	pea 14.w
	move.l 358(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 306(%a2)
.L380:
	clr.b 310(%a2)
	moveq #20,%d1
	add.l %d1,240(%a3)
	move.b #1,244(%a3)
	addq.l #8,%sp
.L398:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L358:
	move.b #1,116(%a2)
	move.b #1,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	jra .L395
.L396:
	clr.b 180(%a2)
	move.b #1,214(%a2)
	tst.b 320(%a2)
	jne .L397
	pea 16.w
	pea 15.w
	move.l 354(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L371:
	move.l 84(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 180(%a3)
	jne .L346
	move.b #1,180(%a3)
	clr.b 214(%a3)
	clr.b 181(%a3)
	move.l %d1,182(%a3)
	clr.l 186(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,190(%a3)
	move.l %a0,284(%a3)
	move.b #1,129(%a3)
	tst.b 320(%a3)
	jeq .L372
	pea 16.w
	pea 14.w
	move.l 358(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 320(%a3),%d0
	move.l %d0,12(%fp)
	move.l 312(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
.L393:
	move.b #1,139(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a3)
	move.w #-1,148(%a3)
	move.w #32,144(%a3)
	clr.w 150(%a3)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z14fighterHarpoonP7FighterS0_
	moveq #8,%d0
	move.l %d0,306(%a2)
	clr.b 310(%a2)
	moveq #20,%d1
	add.l %d1,240(%a3)
	move.b #1,244(%a3)
	addq.l #8,%sp
	jra .L398
.L397:
	pea 16.w
	pea 14.w
	move.l 354(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L371
.L375:
	pea 16.w
	pea 15.w
	move.l 358(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 306(%a2)
	jra .L380
.L372:
	pea 16.w
	pea 15.w
	move.l 358(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 320(%a3),%d0
	move.l %d0,12(%fp)
	move.l 312(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_:
	link.w %fp,#0
	movem.l #16188,-(%sp)
	move.l 12(%fp),%a3
	move.l 20(%fp),%d5
	move.l 24(%fp),%a2
	tst.b 169(%a3)
	jeq .L401
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L426
.L401:
	tst.b 169(%a2)
	jeq .L402
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d4
	cmp.l 112(%a0,%d0.l),%d4
	jeq .L427
.L402:
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
	jlt .L400
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d6
	lea (__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_.part.1),%a5
	move.l #__Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator,%d7
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L405
.L434:
	cmp.w #0,%a0
	jlt .L400
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 84(%a3),%d0
	cmp.l %d2,%d0
	jeq .L406
	cmp.l 84(%a2),%d2
	jeq .L406
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d4
	move.l %d4,112(%a0,%d1.l)
.L406:
	cmp.l %d0,%d3
	jeq .L407
	cmp.l 84(%a2),%d3
	jeq .L407
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L407:
	moveq #63,%d4
	cmp.l %d2,%d4
	jeq .L428
	moveq #58,%d0
	cmp.l %d2,%d0
	jeq .L429
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L414
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L430
.L414:
	tst.b 195(%a3)
	jeq .L417
	cmp.l 84(%a3),%d2
	jeq .L431
.L417:
	tst.b 195(%a2)
	jeq .L418
	cmp.l 84(%a2),%d2
	jeq .L432
.L418:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L433
.L419:
	move.l colliders,%d0
.L420:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L434
.L405:
	cmp.w #0,%a0
	jge .L420
.L400:
	movem.l -40(%fp),#15612
	unlk %fp
	rts
.L433:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L419
	tst.b 90(%a2)
	jeq .L419
	move.b #1,169(%a2)
	move.b #1,194(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a3)
	move.l colliders,%d0
	jra .L420
.L431:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L417
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L417
.L432:
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L418
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L419
	jra .L433
.L429:
	moveq #61,%d1
	cmp.l %d3,%d1
	jne .L414
	tst.b 90(%a3)
	jeq .L414
	move.w 296(%a3),%d0
	cmp.w #10,%d0
	jle .L414
	cmp.w #328,%d0
	jgt .L414
	move.w 296(%a2),%d0
	cmp.w #10,%d0
	jle .L414
	cmp.w #328,%d0
	jgt .L414
	move.b #1,169(%a3)
	move.b #1,194(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	jra .L414
.L428:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L414
	move.l %d5,%a1
	move.l 132(%a1),%a0
	move.l (%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L414
	move.b #8,%d4
	cmp.l %d0,%d4
	jeq .L414
	tst.b 168(%a2)
	jne .L414
	move.l 8(%fp),%a1
	move.l 132(%a1),%a0
	moveq #9,%d0
	cmp.l (%a0),%d0
	jeq .L435
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d5,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	jra .L414
.L430:
	move.l 8(%fp),%a1
	move.l 132(%a1),%a0
	move.l (%a0),%d0
	move.b #1,%d1
	cmp.l %d0,%d1
	jeq .L414
	moveq #8,%d4
	cmp.l %d0,%d4
	jeq .L414
	tst.b 168(%a3)
	jne .L414
	move.l %d5,%a1
	move.l 132(%a1),%a0
	moveq #9,%d0
	cmp.l (%a0),%d0
	jeq .L436
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d5,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	jra .L414
.L426:
	clr.b 169(%a3)
	jra .L401
.L427:
	clr.b 169(%a2)
	jra .L402
.L436:
	moveq #8,%d1
	move.l %d1,306(%a3)
	clr.b 310(%a3)
	addq.l #5,240(%a2)
	move.b #1,244(%a2)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	pea 25.w
	move.l 8(%fp),-(%sp)
	move.l %d7,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L414
.L435:
	moveq #8,%d1
	move.l %d1,306(%a2)
	clr.b 310(%a2)
	addq.l #5,240(%a3)
	move.b #1,244(%a3)
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d5,-(%sp)
	move.l %d7,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L414
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 158(%a0)
	jne .L438
	move.b #1,158(%a0)
	move.l 12(%fp),160(%a0)
.L438:
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHarpoonCheckP7FighterS0_
__Z19fighterHarpoonCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.b 140(%a2),%d2
	jeq .L443
	tst.b 158(%a0)
	jeq .L450
.L444:
	cmp.w #-1,316(%a0)
	jeq .L451
.L446:
	move.w 296(%a0),%d3
	move.w 296(%a2),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,146(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L454
	addq.l #1,%d1
.L454:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,142(%a2)
	tst.b %d2
	jne .L452
.L448:
	move.l 84(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 316(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,142(%a2)
.L442:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L452:
	move.l 84(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	move.l %a0,88(%a1,%d0.l)
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L450:
	tst.b 138(%a0)
	jeq .L444
	clr.b 140(%a2)
	move.l 464(%a2),%a0
	clr.w 16(%a0)
	move.l 84(%a2),%d0
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
	move.l 84(%a2),%d0
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
.L443:
	tst.b 139(%a2)
	jeq .L442
	cmp.w #-1,316(%a0)
	jne .L446
.L451:
	move.w 296(%a2),%d3
	move.w 296(%a0),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,146(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L455
	addq.l #1,%d1
.L455:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,142(%a2)
	tst.b %d2
	jeq .L448
	jra .L452
	.even
	.globl	__Z20fighterCanTakeDamageP12StateMachineP7Fighter
__Z20fighterCanTakeDamageP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b 168(%a0),%d0
	eor.b #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z17fighterIsBlockingP12StateMachineP7Fighter
__Z17fighterIsBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 132(%a0),%a0
	move.l (%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L459
	move.b #8,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L459:
	moveq #1,%d0
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
