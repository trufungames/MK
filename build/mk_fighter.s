#NO_APP
	.text
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
	clr.l 244(%a0)
	move.b #1,248(%a0)
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
	move.w #-1,320(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,300(%a0)
	move.w #106,302(%a0)
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
	move.w #1,320(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,300(%a0)
	move.w #106,302(%a0)
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
	clr.l 88(%a2)
	move.l #0x400ccccd,326(%a2)
	clr.l 330(%a2)
	move.l #0xc1800000,334(%a2)
	move.l #0xc1a80000,338(%a2)
	move.l #0xc0800000,342(%a2)
	move.l #0x40a00000,346(%a2)
	clr.b 132(%a2)
	clr.b 133(%a2)
	clr.b 212(%a2)
	clr.b 213(%a2)
	move.l 16(%fp),316(%a2)
	move.l 20(%fp),404(%a2)
	move.l 24(%fp),412(%a2)
	move.l 28(%fp),420(%a2)
	move.l 32(%fp),424(%a2)
	move.l 36(%fp),436(%a2)
	move.l 40(%fp),440(%a2)
	move.l 44(%fp),428(%a2)
	move.l 48(%fp),432(%a2)
	move.l 52(%fp),444(%a2)
	move.l 56(%fp),448(%a2)
	move.l 60(%fp),452(%a2)
	move.l 64(%fp),456(%a2)
	move.l 68(%fp),460(%a2)
	clr.l 240(%a2)
	move.l #0x40000000,254(%a2)
	move.l #0x40800000,258(%a2)
	move.l #0x40d00000,262(%a2)
	move.l #0x41000000,266(%a2)
	clr.l 274(%a2)
	move.l #0x40f00000,270(%a2)
	moveq #1,%d0
	move.l %d0,292(%a2)
	clr.l 296(%a2)
	clr.l 284(%a2)
	clr.l 134(%a2)
	move.b #1,180(%a2)
	move.b #1,92(%a2)
	clr.b 93(%a2)
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 174(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 99(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 105(%a2)
	clr.b 106(%a2)
	clr.b 108(%a2)
	clr.b 107(%a2)
	clr.b 109(%a2)
	move.b #1,130(%a2)
	move.b #1,128(%a2)
	clr.b 131(%a2)
	move.b #1,129(%a2)
	move.b #1,218(%a2)
	clr.b 282(%a2)
	clr.b 110(%a2)
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 113(%a2)
	clr.b 114(%a2)
	clr.b 175(%a2)
	clr.b 176(%a2)
	clr.b 177(%a2)
	clr.b 178(%a2)
	clr.b 179(%a2)
	clr.b 115(%a2)
	clr.b 116(%a2)
	clr.b 117(%a2)
	clr.b 118(%a2)
	clr.b 119(%a2)
	clr.b 120(%a2)
	clr.b 121(%a2)
	clr.b 123(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.b 168(%a2)
	clr.b 169(%a2)
	clr.b 170(%a2)
	clr.b 171(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	clr.b 183(%a2)
	clr.b 184(%a2)
	clr.b 198(%a2)
	clr.b 199(%a2)
	clr.b 200(%a2)
	clr.b 201(%a2)
	clr.b 207(%a2)
	clr.b 210(%a2)
	clr.b 211(%a2)
	clr.w 214(%a2)
	clr.w 216(%a2)
	clr.b 219(%a2)
	clr.b 220(%a2)
	clr.b 230(%a2)
	clr.b 231(%a2)
	clr.l 232(%a2)
	moveq #50,%d1
	move.l %d1,222(%a2)
	move.b #20,%d0
	move.l %d0,226(%a2)
	move.b %d2,324(%a2)
	move.b #120,%d1
	move.l %d1,306(%a2)
	clr.l 310(%a2)
	clr.b 314(%a2)
	clr.b 322(%a2)
	clr.b 323(%a2)
	move.b #1,352(%a2)
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
	jne .L29
	moveq #64,%d1
	move.l %d1,236(%a2)
	moveq #62,%d2
	move.l %d2,84(%a2)
	move.b #2,%d1
	move.l %d1,250(%a2)
	move.w #210,300(%a2)
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
	move.w #-1,320(%a2)
	move.l #11904,%d0
	move.b #62,%d1
.L26:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 468(%a2),%a1
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
	move.w #90,302(%a2)
	lea (12,%sp),%sp
	tst.l 88(%a2)
	jne .L27
	move.l 236(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 300(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
.L27:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,213(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L29:
	moveq #63,%d2
	move.l %d2,236(%a2)
	move.b #59,%d1
	move.l %d1,84(%a2)
	move.b #1,%d2
	move.l %d2,250(%a2)
	move.w #50,300(%a2)
	move.l %d2,11352(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,320(%a2)
	move.l #11328,%d0
	jra .L26
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 350(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
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
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
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
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
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
	move.l 240(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L38
	tst.b 128(%a2)
	jne .L43
.L38:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L39
	tst.b 128(%a2)
	jne .L44
.L39:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L40
	tst.b 128(%a2)
	jne .L45
.L40:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L37
	tst.b 128(%a2)
	jeq .L37
	tst.b 131(%a2)
	jeq .L46
.L37:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L45:
	tst.b 131(%a2)
	jne .L40
	move.b #1,131(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 240(%a2),%d0
	addq.l #8,%sp
	jra .L40
.L44:
	tst.b 131(%a2)
	jne .L39
	move.b #1,131(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 240(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L43:
	tst.b 131(%a2)
	jne .L38
	move.b #1,131(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 240(%a2),%d0
	addq.l #8,%sp
	jra .L38
.L46:
	move.b #1,131(%a2)
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
	and.l 240(%a2),%d1
	jeq .L49
	tst.b 130(%a2)
	jne .L54
.L49:
	move.w 382(%a2),%a0
	move.l %a0,-(%sp)
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L55
	tst.b 199(%a2)
	jne .L56
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L56:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 388(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L55:
	move.b #1,199(%a2)
	clr.b 202(%a2)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	addq.l #4,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L54:
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	jra .L49
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
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L60
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L64
.L60:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L59
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L62
	and.l JAGPAD_RIGHT,%d0
	jne .L62
	move.b #1,128(%a2)
	clr.b 131(%a2)
.L62:
	move.b #1,129(%a2)
.L59:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L64:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L60
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L60
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L60
	and.l JAGPAD_7,%d0
	jne .L60
	move.b #1,130(%a2)
	jra .L60
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
	jeq .L69
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L70
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L73
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L73:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L70:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L69:
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
	jeq .L80
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L80:
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
	jeq .L84
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L88
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L84:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L88:
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
	jle .L95
.L91:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L95:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L96
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L96:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L91
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
	jne .L102
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L103
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L103:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L102:
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
	move.l 236(%a0),%d0
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
	clr.b 93(%a0)
	clr.b 94(%a0)
	clr.b 95(%a0)
	clr.b 174(%a0)
	clr.b 96(%a0)
	clr.b 97(%a0)
	clr.b 98(%a0)
	clr.b 99(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 105(%a0)
	clr.b 106(%a0)
	clr.b 108(%a0)
	clr.b 107(%a0)
	clr.b 109(%a0)
	clr.b 282(%a0)
	clr.b 110(%a0)
	clr.b 111(%a0)
	clr.b 112(%a0)
	clr.b 113(%a0)
	clr.b 114(%a0)
	clr.b 175(%a0)
	clr.b 176(%a0)
	clr.b 177(%a0)
	clr.b 178(%a0)
	clr.b 115(%a0)
	clr.b 116(%a0)
	clr.b 117(%a0)
	clr.b 118(%a0)
	clr.b 119(%a0)
	clr.b 120(%a0)
	clr.b 121(%a0)
	clr.b 123(%a0)
	clr.b 122(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 127(%a0)
	clr.b 168(%a0)
	clr.b 169(%a0)
	clr.b 170(%a0)
	clr.b 171(%a0)
	clr.b 172(%a0)
	clr.b 173(%a0)
	clr.b 183(%a0)
	clr.b 184(%a0)
	clr.b 198(%a0)
	clr.b 182(%a0)
	clr.b 207(%a0)
	clr.b 210(%a0)
	clr.b 211(%a0)
	clr.b 219(%a0)
	clr.b 220(%a0)
	clr.b 230(%a0)
	clr.b 231(%a0)
	clr.b 314(%a0)
	clr.b 322(%a0)
	clr.b 323(%a0)
	move.b #1,352(%a0)
	clr.b 199(%a0)
	clr.b 200(%a0)
	clr.b 201(%a0)
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
	move.b #1,181(%a2)
	clr.l 310(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
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
	move.l 468(%a3),%a0
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
	move.l 468(%a2),%a0
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
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a0
	move.l 16(%fp),%d1
	move.l 20(%fp),%a3
	move.l 24(%fp),%a2
	move.l 28(%fp),%d2
	move.l 140(%a3),%a1
	move.l (%a1),%d0
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L108
	move.b #8,%d3
	cmp.l %d0,%d3
	jeq .L108
	tst.b 172(%a2)
	jne .L108
	move.l 140(%a4),%a1
	move.l (%a1),%d0
	moveq #9,%d3
	cmp.l %d0,%d3
	jeq .L133
	moveq #13,%d3
	cmp.l %d0,%d3
	jeq .L134
	moveq #11,%d3
	cmp.l %d0,%d3
	jeq .L135
	moveq #20,%d3
	cmp.l %d0,%d3
	jeq .L136
	moveq #15,%d3
	cmp.l %d0,%d3
	jeq .L137
	moveq #14,%d3
	cmp.l %d0,%d3
	jeq .L138
	moveq #17,%d3
	cmp.l %d0,%d3
	jeq .L139
	moveq #16,%d3
	cmp.l %d0,%d3
	jeq .L140
	moveq #21,%d3
	cmp.l %d0,%d3
	jeq .L131
	moveq #22,%d3
	cmp.l %d0,%d3
	jeq .L131
	moveq #23,%d3
	cmp.l %d0,%d3
	jeq .L130
	moveq #24,%d3
	cmp.l %d0,%d3
	jeq .L130
	moveq #18,%d3
	cmp.l %d0,%d3
	jeq .L130
	moveq #19,%d3
	cmp.l %d0,%d3
	jeq .L141
.L108:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L130:
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	move.b #10,%d3
	add.l %d3,244(%a0)
	move.b #1,248(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
.L129:
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L133:
	moveq #8,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	addq.l #5,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #25,%d3
.L127:
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L134:
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #25,%d3
	jra .L127
.L141:
	moveq #16,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	move.b #20,%d3
	add.l %d3,244(%a0)
	move.b #1,248(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
	jra .L129
.L131:
	moveq #24,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	move.b #20,%d3
	add.l %d3,244(%a0)
	move.b #1,248(%a0)
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
.L135:
	moveq #8,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	addq.l #5,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #26,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L136:
	moveq #16,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	move.b #10,%d3
	add.l %d3,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #27,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L137:
	moveq #24,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	move.b #20,%d3
	add.l %d3,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L138:
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L139:
	moveq #8,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	addq.l #5,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #30,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L140:
	moveq #32,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	move.b #20,%d3
	add.l %d3,244(%a0)
	move.b #1,248(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 50.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #31,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
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
	move.w 320(%a1),%d0
	cmp.w #1,%d0
	jeq .L157
	cmp.w #-1,%d0
	jeq .L158
.L146:
	move.w 320(%a0),%d0
	cmp.w #1,%d0
	jeq .L159
.L147:
	cmp.w #-1,%d0
	jne .L143
	move.w 300(%a0),%a2
	add.l _turnOffset,%a2
	move.w 300(%a1),%a1
	cmp.l %a2,%a1
	jle .L143
.L154:
	tst.b 174(%a0)
	jne .L143
	clr.b 323(%a0)
	move.b #1,174(%a0)
	move.b #1,322(%a0)
.L143:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L158:
	move.w 300(%a1),%a3
	add.l _turnOffset,%a3
	move.w 300(%a0),%a2
	cmp.l %a3,%a2
	jle .L146
	tst.b 174(%a1)
	jne .L146
.L160:
	clr.b 323(%a1)
	move.b #1,174(%a1)
	move.b #1,322(%a1)
	move.w 320(%a0),%d0
	cmp.w #1,%d0
	jne .L147
.L159:
	move.w 300(%a0),%a2
	move.w 300(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L154
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L157:
	move.w 300(%a1),%a3
	move.w 300(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L146
	tst.b 174(%a1)
	jne .L146
	jra .L160
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 320(%a0),%d0
	cmp.w #1,%d0
	jeq .L169
	cmp.w #-1,%d0
	jeq .L170
.L164:
	clr.b 179(%a0)
	clr.b 179(%a1)
.L162:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L170:
	move.w 300(%a1),%a3
	move.w 300(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L164
.L166:
	move.b #1,179(%a0)
	move.b #1,179(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L169:
	move.w 300(%a1),%a3
	move.w 300(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L166
	clr.b 179(%a0)
	clr.b 179(%a1)
	jra .L162
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
	move.l 12(%fp),310(%a1)
	move.b 19(%fp),314(%a1)
	move.l 24(%fp),%d0
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
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
	tst.b 181(%a2)
	jne .L174
	tst.b 314(%a2)
	jne .L179
	move.l 306(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,306(%a2)
	jle .L180
.L177:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L174:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L179:
	clr.b 314(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 306(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,306(%a2)
	jgt .L177
.L180:
	clr.l 306(%a2)
	move.b #1,209(%a2)
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
	cmp.w #1,320(%a0)
	jeq .L187
	tst.b 352(%a0)
	jeq .L182
.L184:
	addq.w #2,300(%a0)
.L182:
	unlk %fp
	rts
.L187:
	tst.b 176(%a0)
	jeq .L184
	tst.b 352(%a0)
	jne .L184
	jra .L182
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,320(%a0)
	jeq .L190
	tst.b 176(%a0)
	jeq .L191
.L190:
	tst.b 352(%a0)
	jeq .L189
.L191:
	subq.w #2,300(%a0)
.L189:
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
	tst.l 88(%a0)
	jne .L196
	move.l 236(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 300(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 302(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L196:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L204
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L204:
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
	move.w #90,302(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 300(%a2),%d0
	cmp.w #11,%d0
	jle .L220
.L208:
	cmp.w #280,%d0
	jgt .L212
.L217:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L220:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L216
	move.w 300(%a2),%d0
	cmp.w #11,%d0
	jgt .L208
	cmp.w #280,300(%a3)
	jgt .L216
	jsr (%a4)
	tst.b %d0
	jne .L216
	move.w 300(%a2),%d0
	cmp.w #280,%d0
	jle .L217
.L212:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L221
.L216:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L221:
	cmp.w #328,300(%a2)
	jle .L217
	cmp.w #10,300(%a3)
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
	move.w 320(%a0),%d1
	cmp.w #1,%d1
	jeq .L224
	tst.b 176(%a0)
	jne .L224
.L225:
	tst.l %d0
	jle .L228
	tst.b 352(%a0)
	jeq .L223
.L228:
	add.w %d0,300(%a0)
.L223:
	unlk %fp
	rts
.L224:
	tst.l %d0
	jlt .L231
	cmp.w #1,%d1
	jne .L225
.L232:
	tst.b 176(%a0)
	jne .L225
	add.w %d0,300(%a0)
	jra .L223
.L231:
	tst.b 352(%a0)
	jeq .L223
	cmp.w #1,%d1
	jne .L225
	jra .L232
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
	jeq .L234
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L240
	jlt .L244
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L238
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L239
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L276
.L236:
	sub.w 302(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L249
	jge .L277
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L251
	cmp.l #128,%d0
	jeq .L252
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L250
.L245:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L258
	jlt .L262
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L256
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L257
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L255
	moveq #84,%d1
	not.b %d1
.L254:
	cmp.l %a1,%d1
	jge .L234
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L265
	jlt .L271
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L265
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L265
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L265
	move.w #171,%d1
.L265:
	move.w %d1,12(%a0)
.L234:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L244:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L242
	cmp.l #128,%d0
	jeq .L243
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L236
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 302(%a2),%d1
.L250:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L259:
	moveq #78,%d1
	not.b %d1
	jra .L254
.L240:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 302(%a2),%d1
.L249:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L258:
	moveq #75,%d1
	not.b %d1
	jra .L254
.L238:
	move.w %a1,%d1
	sub.w 302(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L247:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L256:
	moveq #69,%d1
	not.b %d1
	jra .L254
.L242:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 302(%a2),%d1
.L251:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L260:
	moveq #81,%d1
	not.b %d1
	jra .L254
.L276:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 302(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L255:
	moveq #66,%d1
	not.b %d1
	jra .L254
.L271:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L265
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L265
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L265
	move.w #171,%d1
	jra .L265
.L239:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 302(%a2),%d1
.L248:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L257:
	moveq #72,%d1
	not.b %d1
	jra .L254
.L243:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 302(%a2),%d1
	add.w %a1,%d1
.L252:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L261:
	moveq #87,%d1
	not.b %d1
	jra .L254
.L277:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L247
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L248
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L245
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L255
.L262:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L260
	cmp.l #128,%d0
	jeq .L261
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L259
	moveq #84,%d1
	not.b %d1
	jra .L254
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L284
	jge .L291
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L286
	cmp.l #128,%d0
	jeq .L287
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L292
.L280:
	moveq #21,%d0
	unlk %fp
	rts
.L291:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L289
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L283
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L280
	moveq #3,%d0
	unlk %fp
	rts
.L283:
	moveq #9,%d0
	unlk %fp
	rts
.L287:
	moveq #24,%d0
	unlk %fp
	rts
.L292:
	moveq #15,%d0
	unlk %fp
	rts
.L286:
	moveq #18,%d0
	unlk %fp
	rts
.L289:
	moveq #6,%d0
	unlk %fp
	rts
.L284:
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
	cmp.w #1,320(%a0)
	jeq .L300
	move.w 300(%a0),%a2
	sub.w 300(%a1),%a2
	cmp.w #259,%a2
	jgt .L298
.L296:
	clr.b 353(%a0)
	clr.b 353(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L300:
	move.w 300(%a1),%a2
	sub.w 300(%a0),%a2
	cmp.w #259,%a2
	jle .L296
.L298:
	move.b #1,353(%a0)
	move.b #1,353(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,213(%a0)
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
	tst.b 248(%a3)
	jne .L304
	tst.b 248(%a2)
	jeq .L303
.L304:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 248(%a3)
	jne .L313
	tst.b 248(%a2)
	jeq .L303
.L314:
	clr.b 248(%a2)
	move.l 244(%a2),%d0
	move.l %d0,_tempScore
	jne .L310
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 244(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L303:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L313:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 244(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 248(%a2)
	jne .L314
	jra .L303
.L310:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L307:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L307
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L309
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 244(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L309:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 244(%a2),(%sp)
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
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 580(%a2),-(%sp)
	moveq #0,%d0
	move.w 80(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 288(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L316
	move.b #1,218(%a2)
	clr.b 96(%a2)
	clr.b 106(%a2)
	clr.b 107(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 176(%a2)
	clr.b 177(%a2)
	clr.b 123(%a2)
	clr.b 122(%a2)
	clr.b 168(%a2)
	clr.b 169(%a2)
	clr.b 170(%a2)
	move.b #1,171(%a2)
	clr.l 354(%a2)
	clr.w 16(%a3)
	move.w #90,302(%a2)
.L316:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 468(%a1),%a0
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
	tst.b 184(%a2)
	jne .L321
	move.b #1,184(%a2)
	clr.b 218(%a2)
	clr.b 185(%a2)
	moveq #-1,%d0
	move.l %d0,186(%a2)
	clr.l 190(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,194(%a2)
	move.l %a0,288(%a2)
	move.b #1,133(%a2)
	tst.b 324(%a2)
	jeq .L323
	pea 16.w
	pea 14.w
	move.l 362(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
.L321:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L323:
	pea 16.w
	pea 15.w
	move.l 362(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
	jra .L321
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 184(%a0)
	move.b #1,218(%a0)
	tst.b 324(%a0)
	jne .L331
	pea 16.w
	pea 15.w
	move.l 358(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L331:
	pea 16.w
	pea 14.w
	move.l 358(%a0),-(%sp)
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
	tst.b 127(%a2)
	jne .L333
	move.b #1,127(%a2)
	clr.b 142(%a2)
	move.b #1,212(%a2)
	move.w 320(%a2),%d0
	move.w 300(%a2),%a4
	cmp.w #-1,%d0
	jeq .L347
	move.w 300(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,134(%a2)
.L336:
	cmp.w #149,%a0
	jgt .L337
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,134(%a2)
	tst.b 162(%a2)
	jeq .L348
.L338:
	moveq #0,%d2
	move.b 324(%a2),%d2
	move.l 316(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L340
.L351:
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L349
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L342:
	cmp.w #-1,320(%a2)
	jeq .L350
.L343:
	move.w 300(%a3),%d0
	ext.l %d0
	moveq #-48,%d3
	add.l %d0,%d3
	move.l %d3,138(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	move.l 84(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 468(%a3),%a1
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
.L333:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L337:
	clr.l 134(%a2)
	moveq #0,%d2
	move.b 324(%a2),%d2
	move.l 316(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jne .L351
.L340:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	cmp.w #-1,320(%a2)
	jne .L343
.L350:
	move.w 300(%a3),%d0
	ext.l %d0
	moveq #48,%d1
	add.l %d0,%d1
	move.l %d1,138(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	move.l 84(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 468(%a3),%a1
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
	jra .L333
.L349:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L342
.L347:
	move.l %a4,%a0
	sub.w 300(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,134(%a2)
	jra .L336
.L348:
	move.b #1,162(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,164(%a2)
	jra .L338
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
	jeq .L393
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L397
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L398
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L393
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L393
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L399
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L353
	tst.b 221(%a3)
	jne .L353
	move.b #1,221(%a3)
	tst.b 100(%a2)
	jeq .L400
	move.b #1,156(%a3)
.L385:
	move.b #1,101(%a2)
	move.b #1,207(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
.L353:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L393:
	move.b #1,221(%a3)
	tst.b 100(%a2)
	jne .L385
	tst.b 96(%a2)
	jeq .L373
	move.b #1,125(%a2)
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a3)
	move.b #1,248(%a3)
.L401:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L397:
	move.b #1,221(%a3)
	tst.b 100(%a2)
	jne .L385
	tst.b 96(%a2)
	jeq .L361
	move.b #1,125(%a2)
	move.b #1,212(%a2)
.L388:
	move.b #1,132(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
.L402:
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a3)
	move.b #1,248(%a3)
	jra .L401
.L398:
	move.b #1,221(%a3)
	tst.b 100(%a2)
	jne .L385
	tst.b 96(%a2)
	jeq .L365
	move.b #1,125(%a2)
	move.b #1,132(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	jra .L402
.L373:
	move.b #1,117(%a2)
	move.b #1,132(%a2)
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a3)
	move.b #1,248(%a3)
	jra .L401
.L361:
	move.b #1,120(%a2)
	move.b #1,212(%a2)
	jra .L388
.L399:
	tst.b 221(%a3)
	jne .L353
	move.b #1,221(%a3)
	tst.b 184(%a2)
	jne .L403
	tst.b 100(%a2)
	jne .L385
	move.b #1,184(%a2)
	clr.b 218(%a2)
	clr.b 185(%a2)
	moveq #-1,%d0
	move.l %d0,186(%a2)
	clr.l 190(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,194(%a2)
	move.l %a0,288(%a2)
	move.b #1,133(%a2)
	tst.b 324(%a2)
	jeq .L382
	pea 16.w
	pea 14.w
	move.l 362(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 310(%a2)
.L387:
	clr.b 314(%a2)
	moveq #20,%d1
	add.l %d1,244(%a3)
	move.b #1,248(%a3)
	addq.l #8,%sp
.L405:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L365:
	move.b #1,120(%a2)
	move.b #1,132(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	jra .L402
.L403:
	clr.b 184(%a2)
	move.b #1,218(%a2)
	tst.b 324(%a2)
	jne .L404
	pea 16.w
	pea 15.w
	move.l 358(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L378:
	move.l 84(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 184(%a3)
	jne .L353
	move.b #1,184(%a3)
	clr.b 218(%a3)
	clr.b 185(%a3)
	move.l %d1,186(%a3)
	clr.l 190(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,194(%a3)
	move.l %a0,288(%a3)
	move.b #1,133(%a3)
	tst.b 324(%a3)
	jeq .L379
	pea 16.w
	pea 14.w
	move.l 362(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 324(%a3),%d0
	move.l %d0,12(%fp)
	move.l 316(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
.L400:
	move.b #1,143(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a3)
	move.w #-1,152(%a3)
	move.w #32,148(%a3)
	clr.w 154(%a3)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z14fighterHarpoonP7FighterS0_
	moveq #8,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	moveq #20,%d1
	add.l %d1,244(%a3)
	move.b #1,248(%a3)
	addq.l #8,%sp
	jra .L405
.L404:
	pea 16.w
	pea 14.w
	move.l 358(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L378
.L382:
	pea 16.w
	pea 15.w
	move.l 362(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 310(%a2)
	jra .L387
.L379:
	pea 16.w
	pea 15.w
	move.l 362(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 324(%a3),%d0
	move.l %d0,12(%fp)
	move.l 316(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l 12(%fp),%a3
	move.l 24(%fp),%a2
	tst.b 173(%a3)
	jeq .L408
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L425
.L408:
	tst.b 173(%a2)
	jeq .L409
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L426
.L409:
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
	jlt .L407
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L412
.L433:
	cmp.w #0,%a0
	jlt .L407
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 84(%a3),%d0
	cmp.l %d2,%d0
	jeq .L413
	cmp.l 84(%a2),%d2
	jeq .L413
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L413:
	cmp.l %d0,%d3
	jeq .L414
	cmp.l 84(%a2),%d3
	jeq .L414
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L414:
	moveq #63,%d5
	cmp.l %d2,%d5
	jeq .L427
	moveq #58,%d1
	cmp.l %d2,%d1
	jeq .L428
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L419
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L429
.L419:
	tst.b 199(%a3)
	jeq .L420
	cmp.l 84(%a3),%d2
	jeq .L430
.L420:
	tst.b 199(%a2)
	jeq .L421
	cmp.l 84(%a2),%d2
	jeq .L431
.L421:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L432
.L422:
	move.l colliders,%d0
.L423:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L433
.L412:
	cmp.w #0,%a0
	jge .L423
.L407:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L432:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L422
	tst.b 94(%a2)
	jeq .L422
	move.b #1,173(%a2)
	move.b #1,198(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a3)
	move.l colliders,%d0
	jra .L423
.L430:
	moveq #61,%d5
	cmp.l %d3,%d5
	jne .L420
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L420
.L431:
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L421
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L422
	jra .L432
.L428:
	moveq #61,%d5
	cmp.l %d3,%d5
	jne .L419
	tst.b 94(%a3)
	jeq .L419
	move.w 300(%a3),%d0
	cmp.w #10,%d0
	jle .L419
	cmp.w #328,%d0
	jgt .L419
	move.w 300(%a2),%d0
	cmp.w #10,%d0
	jle .L419
	cmp.w #328,%d0
	jgt .L419
	move.b #1,173(%a3)
	move.b #1,198(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	jra .L419
.L427:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L419
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr (%a5)
	lea (24,%sp),%sp
	jra .L419
.L429:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 20(%fp),-(%sp)
	jsr (%a5)
	lea (24,%sp),%sp
	jra .L419
.L425:
	clr.b 173(%a3)
	jra .L408
.L426:
	clr.b 173(%a2)
	jra .L409
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 162(%a0)
	jne .L435
	move.b #1,162(%a0)
	move.l 12(%fp),164(%a0)
.L435:
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHarpoonCheckP7FighterS0_
__Z19fighterHarpoonCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.b 144(%a2),%d2
	jeq .L440
	tst.b 162(%a0)
	jeq .L447
.L441:
	cmp.w #-1,320(%a0)
	jeq .L448
.L443:
	move.w 300(%a0),%d3
	move.w 300(%a2),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,150(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L451
	addq.l #1,%d1
.L451:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,146(%a2)
	tst.b %d2
	jne .L449
.L445:
	move.l 84(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 320(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,146(%a2)
.L439:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L449:
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
.L447:
	tst.b 142(%a0)
	jeq .L441
	clr.b 144(%a2)
	move.l 468(%a2),%a0
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
.L440:
	tst.b 143(%a2)
	jeq .L439
	cmp.w #-1,320(%a0)
	jne .L443
.L448:
	move.w 300(%a2),%d3
	move.w 300(%a0),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,150(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L452
	addq.l #1,%d1
.L452:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,146(%a2)
	tst.b %d2
	jeq .L445
	jra .L449
	.even
	.globl	__Z20fighterCanTakeDamageP12StateMachineP7Fighter
__Z20fighterCanTakeDamageP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b 172(%a0),%d0
	eor.b #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z17fighterIsBlockingP12StateMachineP7Fighter
__Z17fighterIsBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 140(%a0),%a0
	move.l (%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L456
	move.b #8,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L456:
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
