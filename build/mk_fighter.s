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
	move.l 24(%fp),408(%a2)
	move.l 28(%fp),412(%a2)
	move.l 32(%fp),416(%a2)
	move.l 36(%fp),428(%a2)
	move.l 40(%fp),432(%a2)
	move.l 44(%fp),420(%a2)
	move.l 48(%fp),424(%a2)
	move.l 52(%fp),436(%a2)
	move.l 56(%fp),440(%a2)
	move.l 60(%fp),444(%a2)
	move.l 64(%fp),448(%a2)
	move.l 68(%fp),452(%a2)
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
	move.l 460(%a2),%a1
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.1)
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.1)
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
	jra (__Z17fighterCastShadowP7Fighterb.constprop.1)
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
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #6,%d2
	cmp.l %d0,%d2
	jeq .L69
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L70
	move.b #4,%d2
	cmp.l %d0,%d2
	jeq .L73
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandler
.L73:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandler
.L70:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandler
.L69:
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
	jeq .L80
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandler
.L80:
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
	jeq .L84
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L88
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandler
.L84:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandler
.L88:
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
	jle .L95
.L91:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandler
.L95:
	move.b #6,%d2
	cmp.l %d0,%d2
	jlt .L96
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandler
.L96:
	move.b #7,%d2
	cmp.l %d0,%d2
	jne .L91
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
	move.l 460(%a3),%a0
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
	move.l 460(%a2),%a0
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
	move.l 172(%a3),%a1
	move.w (%a1),%d0
	cmp.w #1,%d0
	jeq .L109
	cmp.w #8,%d0
	jeq .L146
	tst.b 172(%a2)
	jne .L108
	move.l 172(%a4),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L140
	cmp.w #10,%d0
	jeq .L140
	cmp.w #13,%d0
	jeq .L147
	cmp.w #11,%d0
	jeq .L141
	cmp.w #12,%d0
	jeq .L141
	cmp.w #15,%d0
	jeq .L148
	cmp.w #14,%d0
	jeq .L149
	cmp.w #17,%d0
	jeq .L150
	cmp.w #16,%d0
	jeq .L151
	cmp.w #21,%d0
	jeq .L152
	cmp.w #22,%d0
	jeq .L153
	cmp.w #23,%d0
	jeq .L144
	cmp.w #24,%d0
	jeq .L154
	cmp.w #18,%d0
	jeq .L144
	cmp.w #19,%d0
	jeq .L155
	cmp.w #38,%d0
	jeq .L156
	cmp.w #39,%d0
	jeq .L157
	cmp.w #40,%d0
	jeq .L158
.L108:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L109:
	move.l 172(%a4),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L159
	moveq #4,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	move.b #1,248(%a0)
	cmp.w #21,%d0
	jeq .L130
	cmp.w #23,%d0
	jeq .L130
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L130:
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
.L146:
	moveq #4,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L140:
	moveq #8,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	addq.l #5,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #25,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L141:
	moveq #8,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	addq.l #5,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #26,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L159:
	moveq #16,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	moveq #10,%d0
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #27,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L152:
	moveq #24,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	moveq #20,%d3
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
.L158:
	moveq #32,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	moveq #50,%d3
	add.l %d3,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #41,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L147:
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #25,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L144:
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	moveq #10,%d3
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
.L161:
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L148:
	moveq #24,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	moveq #20,%d3
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
.L149:
	moveq #20,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	add.l %d3,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L150:
	moveq #8,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	addq.l #5,244(%a0)
	move.b #1,248(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #30,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L151:
	moveq #32,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	moveq #20,%d0
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
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
.L153:
	moveq #24,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	moveq #20,%d0
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #33,%d3
.L162:
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L154:
	moveq #20,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	moveq #10,%d0
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d3
.L160:
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L155:
	moveq #16,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	moveq #20,%d0
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d3
	jra .L160
.L156:
	moveq #16,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	moveq #20,%d3
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
	jra .L161
.L157:
	moveq #16,%d3
	move.l %d3,310(%a2)
	clr.b 314(%a2)
	moveq #50,%d0
	add.l %d0,244(%a0)
	move.b #1,248(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #33,%d3
	jra .L162
	.even
	.globl	__Z16fighterTurnCheckP12StateMachineP7FighterS0_S2_
__Z16fighterTurnCheckP12StateMachineP7FighterS0_S2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 20(%fp),%a0
	move.w 320(%a1),%d0
	cmp.w #1,%d0
	jeq .L178
	cmp.w #-1,%d0
	jeq .L179
.L167:
	move.w 320(%a0),%d0
	cmp.w #1,%d0
	jeq .L180
.L168:
	cmp.w #-1,%d0
	jne .L164
	move.w 300(%a0),%a2
	add.l _turnOffset,%a2
	move.w 300(%a1),%a1
	cmp.l %a2,%a1
	jle .L164
.L175:
	tst.b 174(%a0)
	jne .L164
	move.b #1,174(%a0)
.L164:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L179:
	move.w 300(%a1),%a3
	add.l _turnOffset,%a3
	move.w 300(%a0),%a2
	cmp.l %a3,%a2
	jle .L167
	tst.b 174(%a1)
	jne .L167
.L181:
	move.b #1,174(%a1)
	move.w 320(%a0),%d0
	cmp.w #1,%d0
	jne .L168
.L180:
	move.w 300(%a0),%a2
	move.w 300(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L175
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L178:
	move.w 300(%a1),%a3
	move.w 300(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L167
	tst.b 174(%a1)
	jne .L167
	jra .L181
	.even
	.globl	__Z17fighterCloseCheckP12StateMachineP7FighterS0_S2_
__Z17fighterCloseCheckP12StateMachineP7FighterS0_S2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a0
	move.l 20(%fp),%a1
	move.l 8(%fp),%a2
	move.l 172(%a2),%a2
	move.w (%a2),%d0
	cmp.w #40,%d0
	jeq .L188
	move.l 16(%fp),%a2
	move.l 172(%a2),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L188
	cmp.w #1,%d0
	jeq .L188
	cmp.w #1,%d1
	jeq .L188
	cmp.w #8,%d0
	jeq .L188
	cmp.w #8,%d1
	jeq .L188
	move.w 320(%a0),%d0
	cmp.w #1,%d0
	jeq .L191
	cmp.w #-1,%d0
	jne .L188
	move.w 300(%a1),%a3
	move.w 300(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L189
.L188:
	clr.b 179(%a0)
	clr.b 179(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L191:
	move.w 300(%a1),%a3
	move.w 300(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L188
.L189:
	move.b #1,179(%a0)
	move.b #1,179(%a1)
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
	jne .L195
	tst.b 314(%a2)
	jne .L200
	move.l 306(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,306(%a2)
	jle .L201
.L198:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L195:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L200:
	clr.b 314(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 306(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,306(%a2)
	jgt .L198
.L201:
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
	jeq .L208
	tst.b 352(%a0)
	jeq .L203
.L205:
	addq.w #2,300(%a0)
.L203:
	unlk %fp
	rts
.L208:
	tst.b 176(%a0)
	jeq .L205
	tst.b 352(%a0)
	jne .L205
	jra .L203
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,320(%a0)
	jeq .L211
	tst.b 176(%a0)
	jeq .L212
.L211:
	tst.b 352(%a0)
	jeq .L210
.L212:
	subq.w #2,300(%a0)
.L210:
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
	jne .L217
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
.L217:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L225
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L225:
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
	jle .L241
.L229:
	cmp.w #280,%d0
	jgt .L233
.L238:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L241:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L237
	move.w 300(%a2),%d0
	cmp.w #11,%d0
	jgt .L229
	cmp.w #280,300(%a3)
	jgt .L237
	jsr (%a4)
	tst.b %d0
	jne .L237
	move.w 300(%a2),%d0
	cmp.w #280,%d0
	jle .L238
.L233:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L242
.L237:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L242:
	cmp.w #328,300(%a2)
	jle .L238
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
	jeq .L245
	tst.b 176(%a0)
	jne .L245
.L246:
	tst.l %d0
	jle .L249
	tst.b 352(%a0)
	jeq .L244
.L249:
	add.w %d0,300(%a0)
.L244:
	unlk %fp
	rts
.L245:
	tst.l %d0
	jlt .L252
	cmp.w #1,%d1
	jne .L246
.L253:
	tst.b 176(%a0)
	jne .L246
	add.w %d0,300(%a0)
	jra .L244
.L252:
	tst.b 352(%a0)
	jeq .L244
	cmp.w #1,%d1
	jne .L246
	jra .L253
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
	jeq .L255
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L261
	jlt .L265
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L259
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L260
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L297
.L257:
	sub.w 302(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L270
	jge .L298
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L272
	cmp.l #128,%d0
	jeq .L273
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L271
.L266:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L279
	jlt .L283
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L277
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L278
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L276
	moveq #84,%d1
	not.b %d1
.L275:
	cmp.l %a1,%d1
	jge .L255
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L286
	jlt .L292
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L286
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L286
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L286
	move.w #171,%d1
.L286:
	move.w %d1,12(%a0)
.L255:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L265:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L263
	cmp.l #128,%d0
	jeq .L264
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L257
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 302(%a2),%d1
.L271:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L280:
	moveq #78,%d1
	not.b %d1
	jra .L275
.L261:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 302(%a2),%d1
.L270:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L279:
	moveq #75,%d1
	not.b %d1
	jra .L275
.L259:
	move.w %a1,%d1
	sub.w 302(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L268:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L277:
	moveq #69,%d1
	not.b %d1
	jra .L275
.L263:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 302(%a2),%d1
.L272:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L281:
	moveq #81,%d1
	not.b %d1
	jra .L275
.L297:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 302(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L276:
	moveq #66,%d1
	not.b %d1
	jra .L275
.L292:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L286
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L286
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L286
	move.w #171,%d1
	jra .L286
.L260:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 302(%a2),%d1
.L269:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L278:
	moveq #72,%d1
	not.b %d1
	jra .L275
.L264:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 302(%a2),%d1
	add.w %a1,%d1
.L273:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L282:
	moveq #87,%d1
	not.b %d1
	jra .L275
.L298:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L268
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L269
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L266
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L276
.L283:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L281
	cmp.l #128,%d0
	jeq .L282
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L280
	moveq #84,%d1
	not.b %d1
	jra .L275
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L305
	jge .L312
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L307
	cmp.l #128,%d0
	jeq .L308
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L313
.L301:
	moveq #21,%d0
	unlk %fp
	rts
.L312:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L310
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L304
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L301
	moveq #3,%d0
	unlk %fp
	rts
.L304:
	moveq #9,%d0
	unlk %fp
	rts
.L308:
	moveq #24,%d0
	unlk %fp
	rts
.L313:
	moveq #15,%d0
	unlk %fp
	rts
.L307:
	moveq #18,%d0
	unlk %fp
	rts
.L310:
	moveq #6,%d0
	unlk %fp
	rts
.L305:
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
	jeq .L321
	move.w 300(%a0),%a2
	sub.w 300(%a1),%a2
	cmp.w #259,%a2
	jgt .L319
.L317:
	clr.b 353(%a0)
	clr.b 353(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L321:
	move.w 300(%a1),%a2
	sub.w 300(%a0),%a2
	cmp.w #259,%a2
	jle .L317
.L319:
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
	jne .L325
	tst.b 248(%a2)
	jeq .L324
.L325:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 248(%a3)
	jne .L334
	tst.b 248(%a2)
	jeq .L324
.L335:
	clr.b 248(%a2)
	move.l 244(%a2),%d0
	move.l %d0,_tempScore
	jne .L331
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
.L324:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L334:
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
	jne .L335
	jra .L324
.L331:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L328:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L328
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L330
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
.L330:
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
	move.l 572(%a2),-(%sp)
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
	jle .L337
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
.L337:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 460(%a1),%a0
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
	jne .L342
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
	jeq .L344
	pea 16.w
	pea 14.w
	move.l 362(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 316(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L344:
	pea 16.w
	pea 15.w
	move.l 362(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 316(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L342:
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 184(%a0)
	move.b #1,218(%a0)
	tst.b 324(%a0)
	jne .L352
	pea 16.w
	pea 15.w
	move.l 358(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L352:
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
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 127(%a2)
	jne .L354
	move.b #1,127(%a2)
	clr.b 142(%a2)
	move.b #1,212(%a2)
	move.w 320(%a2),%d0
	move.w 300(%a2),%a4
	cmp.w #-1,%d0
	jeq .L368
	move.w 300(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,134(%a2)
.L357:
	cmp.w #149,%a0
	jgt .L358
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,134(%a2)
	tst.b 162(%a2)
	jeq .L369
.L359:
	move.l 316(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L361
.L372:
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L370
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandler
	addq.l #4,%sp
.L363:
	cmp.w #-1,320(%a2)
	jeq .L371
.L364:
	move.w 300(%a3),%d0
	ext.l %d0
	moveq #-48,%d2
	add.l %d0,%d2
	move.l %d2,138(%a2)
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
	move.l 460(%a3),%a1
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
.L354:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L358:
	clr.l 134(%a2)
	move.l 316(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d2
	cmp.l %d0,%d2
	jne .L372
.L361:
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandler
	addq.l #4,%sp
	cmp.w #-1,320(%a2)
	jne .L364
.L371:
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
	move.l 460(%a3),%a1
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
	jra .L354
.L370:
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandler
	addq.l #4,%sp
	jra .L363
.L368:
	move.l %a4,%a0
	sub.w 300(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,134(%a2)
	jra .L357
.L369:
	move.b #1,162(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,164(%a2)
	jra .L359
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
	jeq .L413
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L417
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L418
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L413
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L413
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L419
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L374
	tst.b 221(%a3)
	jne .L374
	move.b #1,221(%a3)
	tst.b 100(%a2)
	jeq .L420
	move.b #1,156(%a3)
.L406:
	move.b #1,101(%a2)
	move.b #1,207(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
.L374:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L413:
	move.b #1,221(%a3)
	tst.b 100(%a2)
	jne .L406
	tst.b 96(%a2)
	jeq .L394
	move.b #1,125(%a2)
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a3)
	move.b #1,248(%a3)
.L421:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L417:
	move.b #1,221(%a3)
	tst.b 100(%a2)
	jne .L406
	tst.b 96(%a2)
	jeq .L382
	move.b #1,125(%a2)
	move.b #1,212(%a2)
.L408:
	move.b #1,132(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
.L422:
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a3)
	move.b #1,248(%a3)
	jra .L421
.L418:
	move.b #1,221(%a3)
	tst.b 100(%a2)
	jne .L406
	tst.b 96(%a2)
	jeq .L386
	move.b #1,125(%a2)
	move.b #1,132(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	jra .L422
.L394:
	move.b #1,117(%a2)
	move.b #1,132(%a2)
	moveq #20,%d0
	move.l %d0,310(%a2)
	clr.b 314(%a2)
	add.l %d0,244(%a3)
	move.b #1,248(%a3)
	jra .L421
.L382:
	move.b #1,120(%a2)
	move.b #1,212(%a2)
	jra .L408
.L419:
	tst.b 221(%a3)
	jne .L374
	move.b #1,221(%a3)
	tst.b 184(%a2)
	jne .L423
	tst.b 100(%a2)
	jne .L406
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
	jeq .L403
	pea 16.w
	pea 14.w
	move.l 362(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 316(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandler
	clr.l 310(%a2)
	clr.b 314(%a2)
	moveq #20,%d1
	add.l %d1,244(%a3)
	move.b #1,248(%a3)
	addq.l #4,%sp
.L425:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L386:
	move.b #1,120(%a2)
	move.b #1,132(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	jra .L422
.L423:
	clr.b 184(%a2)
	move.b #1,218(%a2)
	tst.b 324(%a2)
	jne .L424
	pea 16.w
	pea 15.w
	move.l 358(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L399:
	move.l 84(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 184(%a3)
	jne .L374
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
	jeq .L400
	pea 16.w
	pea 14.w
	move.l 362(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 316(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L420:
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
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L424:
	pea 16.w
	pea 14.w
	move.l 358(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L399
.L403:
	pea 16.w
	pea 15.w
	move.l 362(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 316(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandler
	clr.l 310(%a2)
	clr.b 314(%a2)
	moveq #20,%d1
	add.l %d1,244(%a3)
	move.b #1,248(%a3)
	addq.l #4,%sp
	jra .L425
.L400:
	pea 16.w
	pea 15.w
	move.l 362(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 316(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_:
	link.w %fp,#0
	movem.l #16188,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%d5
	move.l 24(%fp),%a2
	tst.b 173(%a3)
	jeq .L428
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L445
.L428:
	tst.b 173(%a2)
	jeq .L429
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d7
	cmp.l 112(%a0,%d0.l),%d7
	jeq .L446
.L429:
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
	jlt .L427
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d6
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L432
.L453:
	cmp.w #0,%a0
	jlt .L427
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 84(%a3),%d0
	cmp.l %d2,%d0
	jeq .L433
	cmp.l 84(%a2),%d2
	jeq .L433
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d7
	move.l %d7,112(%a0,%d1.l)
.L433:
	cmp.l %d0,%d3
	jeq .L434
	cmp.l 84(%a2),%d3
	jeq .L434
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L434:
	moveq #63,%d7
	cmp.l %d2,%d7
	jeq .L447
	moveq #58,%d1
	cmp.l %d2,%d1
	jeq .L448
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L439
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L449
.L439:
	tst.b 199(%a3)
	jeq .L440
	cmp.l 84(%a3),%d2
	jeq .L450
.L440:
	tst.b 199(%a2)
	jeq .L441
	cmp.l 84(%a2),%d2
	jeq .L451
.L441:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L452
.L442:
	move.l colliders,%d0
.L443:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L453
.L432:
	cmp.w #0,%a0
	jge .L443
.L427:
	movem.l -40(%fp),#15612
	unlk %fp
	rts
.L452:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L442
	move.l %d5,%a1
	move.l 172(%a1),%a0
	cmp.w #3,(%a0)
	jne .L442
	move.b #1,173(%a2)
	move.b #1,198(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a3)
	move.l colliders,%d0
	jra .L443
.L450:
	moveq #61,%d7
	cmp.l %d3,%d7
	jne .L440
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L440
.L451:
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L441
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L442
	jra .L452
.L448:
	moveq #61,%d7
	cmp.l %d3,%d7
	jne .L439
	move.l %d4,%a1
	move.l 172(%a1),%a0
	cmp.w #3,(%a0)
	jne .L439
	move.b #1,173(%a3)
	move.b #1,198(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	jra .L439
.L447:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L439
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d5,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (24,%sp),%sp
	jra .L439
.L449:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d5,-(%sp)
	jsr (%a5)
	lea (24,%sp),%sp
	jra .L439
.L446:
	clr.b 173(%a2)
	jra .L429
.L445:
	clr.b 173(%a3)
	jra .L428
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 162(%a0)
	jne .L455
	move.b #1,162(%a0)
	move.l 12(%fp),164(%a0)
.L455:
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
	jeq .L460
	tst.b 162(%a0)
	jeq .L467
.L461:
	cmp.w #-1,320(%a0)
	jeq .L468
.L463:
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
	jpl .L471
	addq.l #1,%d1
.L471:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,146(%a2)
	tst.b %d2
	jne .L469
.L465:
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
.L459:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L469:
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
.L467:
	tst.b 142(%a0)
	jeq .L461
	clr.b 144(%a2)
	move.l 460(%a2),%a0
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
.L460:
	tst.b 143(%a2)
	jeq .L459
	cmp.w #-1,320(%a0)
	jne .L463
.L468:
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
	jpl .L472
	addq.l #1,%d1
.L472:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,146(%a2)
	tst.b %d2
	jeq .L465
	jra .L469
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
	move.l 172(%a0),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L476
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L476:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z21fighterIsDuckBlockingP12StateMachineP7Fighter
__Z21fighterIsDuckBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 172(%a0),%a0
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
