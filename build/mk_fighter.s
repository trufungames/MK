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
	move.w #-1,316(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,296(%a0)
	move.w #106,298(%a0)
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
	jne .L29
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
.L26:
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
	jeq .L27
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
.L27:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,209(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L29:
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
	jra .L26
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
	jeq .L38
	tst.b 124(%a2)
	jne .L43
.L38:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L39
	tst.b 124(%a2)
	jne .L44
.L39:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L40
	tst.b 124(%a2)
	jne .L45
.L40:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L37
	tst.b 124(%a2)
	jeq .L37
	tst.b 127(%a2)
	jeq .L46
.L37:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L45:
	tst.b 127(%a2)
	jne .L40
	move.b #1,127(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 236(%a2),%d0
	addq.l #8,%sp
	jra .L40
.L44:
	tst.b 127(%a2)
	jne .L39
	move.b #1,127(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 236(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L43:
	tst.b 127(%a2)
	jne .L38
	move.b #1,127(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 236(%a2),%d0
	addq.l #8,%sp
	jra .L38
.L46:
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
	jeq .L49
	tst.b 126(%a2)
	jne .L54
.L49:
	move.w 378(%a2),%a0
	move.l %a0,-(%sp)
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L55
	tst.b 195(%a2)
	jne .L56
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L56:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 384(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L55:
	move.b #1,195(%a2)
	clr.b 198(%a2)
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
	move.l 236(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L60
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L64
.L60:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 236(%a2),%d0
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
	move.b #1,124(%a2)
	clr.b 127(%a2)
.L62:
	move.b #1,125(%a2)
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
	move.b #1,126(%a2)
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
	move.l 8(%fp),%a4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a0
	move.l 24(%fp),%a2
	move.l 28(%fp),%d1
	move.l 104(%a0),%a1
	move.l (%a1),%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L108
	move.b #8,%d2
	cmp.l %d0,%d2
	jeq .L108
	tst.b 168(%a2)
	jne .L108
	move.l 104(%a4),%a1
	moveq #9,%d0
	cmp.l (%a1),%d0
	jeq .L114
.L108:
	movem.l (%sp)+,#7172
	unlk %fp
	rts
.L114:
	moveq #8,%d2
	move.l %d2,306(%a2)
	clr.b 310(%a2)
	addq.l #5,240(%a3)
	move.b #1,244(%a3)
	move.l %d1,20(%fp)
	move.l %a2,16(%fp)
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
	jeq .L130
	cmp.w #-1,%d0
	jeq .L131
.L119:
	move.w 316(%a0),%d0
	cmp.w #1,%d0
	jeq .L132
.L120:
	cmp.w #-1,%d0
	jne .L116
	move.w 296(%a0),%a2
	add.l _turnOffset,%a2
	move.w 296(%a1),%a1
	cmp.l %a2,%a1
	jle .L116
.L127:
	tst.b 170(%a0)
	jne .L116
	clr.b 319(%a0)
	move.b #1,170(%a0)
	move.b #1,318(%a0)
.L116:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L131:
	move.w 296(%a1),%a3
	add.l _turnOffset,%a3
	move.w 296(%a0),%a2
	cmp.l %a3,%a2
	jle .L119
	tst.b 170(%a1)
	jne .L119
.L133:
	clr.b 319(%a1)
	move.b #1,170(%a1)
	move.b #1,318(%a1)
	move.w 316(%a0),%d0
	cmp.w #1,%d0
	jne .L120
.L132:
	move.w 296(%a0),%a2
	move.w 296(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L127
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L130:
	move.w 296(%a1),%a3
	move.w 296(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L119
	tst.b 170(%a1)
	jne .L119
	jra .L133
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
	jeq .L142
	cmp.w #-1,%d0
	jeq .L143
.L137:
	clr.b 175(%a0)
	clr.b 175(%a1)
.L135:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L143:
	move.w 296(%a1),%a3
	move.w 296(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L137
.L139:
	move.b #1,175(%a0)
	move.b #1,175(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L142:
	move.w 296(%a1),%a3
	move.w 296(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L139
	clr.b 175(%a0)
	clr.b 175(%a1)
	jra .L135
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
	jne .L147
	tst.b 310(%a2)
	jne .L152
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jle .L153
.L150:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L147:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L152:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jgt .L150
.L153:
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
	jeq .L160
	tst.b 348(%a0)
	jeq .L155
.L157:
	addq.w #2,296(%a0)
.L155:
	unlk %fp
	rts
.L160:
	tst.b 172(%a0)
	jeq .L157
	tst.b 348(%a0)
	jne .L157
	jra .L155
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,316(%a0)
	jeq .L163
	tst.b 172(%a0)
	jeq .L164
.L163:
	tst.b 348(%a0)
	jeq .L162
.L164:
	subq.w #2,296(%a0)
.L162:
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
	jeq .L169
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
.L169:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L177
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L177:
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
	jle .L193
.L181:
	cmp.w #280,%d0
	jgt .L185
.L190:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L193:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L189
	move.w 296(%a2),%d0
	cmp.w #11,%d0
	jgt .L181
	cmp.w #280,296(%a3)
	jgt .L189
	jsr (%a4)
	tst.b %d0
	jne .L189
	move.w 296(%a2),%d0
	cmp.w #280,%d0
	jle .L190
.L185:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L194
.L189:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L194:
	cmp.w #328,296(%a2)
	jle .L190
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
	jeq .L197
	tst.b 172(%a0)
	jne .L197
.L198:
	tst.l %d0
	jle .L201
	tst.b 348(%a0)
	jeq .L196
.L201:
	add.w %d0,296(%a0)
.L196:
	unlk %fp
	rts
.L197:
	tst.l %d0
	jlt .L204
	cmp.w #1,%d1
	jne .L198
.L205:
	tst.b 172(%a0)
	jne .L198
	add.w %d0,296(%a0)
	jra .L196
.L204:
	tst.b 348(%a0)
	jeq .L196
	cmp.w #1,%d1
	jne .L198
	jra .L205
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
	jeq .L207
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L213
	jlt .L217
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L211
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L212
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L249
.L209:
	sub.w 298(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L222
	jge .L250
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L224
	cmp.l #128,%d0
	jeq .L225
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L223
.L218:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L231
	jlt .L235
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L229
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L230
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L228
	moveq #84,%d1
	not.b %d1
.L227:
	cmp.l %a1,%d1
	jge .L207
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L238
	jlt .L244
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L238
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L238
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L238
	move.w #171,%d1
.L238:
	move.w %d1,12(%a0)
.L207:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L217:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L215
	cmp.l #128,%d0
	jeq .L216
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L209
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 298(%a2),%d1
.L223:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L232:
	moveq #78,%d1
	not.b %d1
	jra .L227
.L213:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 298(%a2),%d1
.L222:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L231:
	moveq #75,%d1
	not.b %d1
	jra .L227
.L211:
	move.w %a1,%d1
	sub.w 298(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L220:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L229:
	moveq #69,%d1
	not.b %d1
	jra .L227
.L215:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 298(%a2),%d1
.L224:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L233:
	moveq #81,%d1
	not.b %d1
	jra .L227
.L249:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 298(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L228:
	moveq #66,%d1
	not.b %d1
	jra .L227
.L244:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L238
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L238
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L238
	move.w #171,%d1
	jra .L238
.L212:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 298(%a2),%d1
.L221:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L230:
	moveq #72,%d1
	not.b %d1
	jra .L227
.L216:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 298(%a2),%d1
	add.w %a1,%d1
.L225:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L234:
	moveq #87,%d1
	not.b %d1
	jra .L227
.L250:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L220
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L221
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L218
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L228
.L235:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L233
	cmp.l #128,%d0
	jeq .L234
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L232
	moveq #84,%d1
	not.b %d1
	jra .L227
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L257
	jge .L264
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L259
	cmp.l #128,%d0
	jeq .L260
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L265
.L253:
	moveq #21,%d0
	unlk %fp
	rts
.L264:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L262
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L256
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L253
	moveq #3,%d0
	unlk %fp
	rts
.L256:
	moveq #9,%d0
	unlk %fp
	rts
.L260:
	moveq #24,%d0
	unlk %fp
	rts
.L265:
	moveq #15,%d0
	unlk %fp
	rts
.L259:
	moveq #18,%d0
	unlk %fp
	rts
.L262:
	moveq #6,%d0
	unlk %fp
	rts
.L257:
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
	jeq .L273
	move.w 296(%a0),%a2
	sub.w 296(%a1),%a2
	cmp.w #259,%a2
	jgt .L271
.L269:
	clr.b 349(%a0)
	clr.b 349(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L273:
	move.w 296(%a1),%a2
	sub.w 296(%a0),%a2
	cmp.w #259,%a2
	jle .L269
.L271:
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
	jne .L277
	tst.b 244(%a2)
	jeq .L276
.L277:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 244(%a3)
	jne .L286
	tst.b 244(%a2)
	jeq .L276
.L287:
	clr.b 244(%a2)
	move.l 240(%a2),%d0
	move.l %d0,_tempScore
	jne .L283
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
.L276:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L286:
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
	jne .L287
	jra .L276
.L283:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L280:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L280
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L282
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
.L282:
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
	jle .L289
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
.L289:
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
	jne .L294
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
	jeq .L296
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
.L294:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L296:
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
	jra .L294
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 180(%a0)
	move.b #1,214(%a0)
	tst.b 320(%a0)
	jne .L304
	pea 16.w
	pea 15.w
	move.l 354(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L304:
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
	jne .L306
	move.b #1,123(%a2)
	clr.b 138(%a2)
	move.b #1,208(%a2)
	move.w 316(%a2),%d0
	move.w 296(%a2),%a4
	cmp.w #-1,%d0
	jeq .L320
	move.w 296(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,130(%a2)
.L309:
	cmp.w #149,%a0
	jgt .L310
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,130(%a2)
	tst.b 158(%a2)
	jeq .L321
.L311:
	moveq #0,%d2
	move.b 320(%a2),%d2
	move.l 312(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L313
.L324:
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L322
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L315:
	cmp.w #-1,316(%a2)
	jeq .L323
.L316:
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
.L306:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L310:
	clr.l 130(%a2)
	moveq #0,%d2
	move.b 320(%a2),%d2
	move.l 312(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jne .L324
.L313:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	cmp.w #-1,316(%a2)
	jne .L316
.L323:
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
	jra .L306
.L322:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L315
.L320:
	move.l %a4,%a0
	sub.w 296(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,130(%a2)
	jra .L309
.L321:
	move.b #1,158(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,160(%a2)
	jra .L311
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
	jeq .L366
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L370
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L371
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L366
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L366
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L372
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L326
	tst.b 217(%a3)
	jne .L326
	move.b #1,217(%a3)
	tst.b 96(%a2)
	jeq .L373
	move.b #1,152(%a3)
.L358:
	move.b #1,97(%a2)
	move.b #1,203(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
.L326:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L366:
	move.b #1,217(%a3)
	tst.b 96(%a2)
	jne .L358
	tst.b 92(%a2)
	jeq .L346
	move.b #1,121(%a2)
	moveq #20,%d0
	move.l %d0,306(%a2)
	clr.b 310(%a2)
	add.l %d0,240(%a3)
	move.b #1,244(%a3)
.L374:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L370:
	move.b #1,217(%a3)
	tst.b 96(%a2)
	jne .L358
	tst.b 92(%a2)
	jeq .L334
	move.b #1,121(%a2)
	move.b #1,208(%a2)
.L361:
	move.b #1,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
.L375:
	moveq #20,%d0
	move.l %d0,306(%a2)
	clr.b 310(%a2)
	add.l %d0,240(%a3)
	move.b #1,244(%a3)
	jra .L374
.L371:
	move.b #1,217(%a3)
	tst.b 96(%a2)
	jne .L358
	tst.b 92(%a2)
	jeq .L338
	move.b #1,121(%a2)
	move.b #1,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	jra .L375
.L346:
	move.b #1,113(%a2)
	move.b #1,128(%a2)
	moveq #20,%d0
	move.l %d0,306(%a2)
	clr.b 310(%a2)
	add.l %d0,240(%a3)
	move.b #1,244(%a3)
	jra .L374
.L334:
	move.b #1,116(%a2)
	move.b #1,208(%a2)
	jra .L361
.L372:
	tst.b 217(%a3)
	jne .L326
	move.b #1,217(%a3)
	tst.b 180(%a2)
	jne .L376
	tst.b 96(%a2)
	jne .L358
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
	jeq .L355
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
.L360:
	clr.b 310(%a2)
	moveq #20,%d1
	add.l %d1,240(%a3)
	move.b #1,244(%a3)
	addq.l #8,%sp
.L378:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L338:
	move.b #1,116(%a2)
	move.b #1,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,284(%a2)
	jra .L375
.L376:
	clr.b 180(%a2)
	move.b #1,214(%a2)
	tst.b 320(%a2)
	jne .L377
	pea 16.w
	pea 15.w
	move.l 354(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L351:
	move.l 84(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 180(%a3)
	jne .L326
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
	jeq .L352
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
.L373:
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
	jra .L378
.L377:
	pea 16.w
	pea 14.w
	move.l 354(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L351
.L355:
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
	jra .L360
.L352:
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
	movem.l #15420,-(%sp)
	move.l 12(%fp),%a3
	move.l 24(%fp),%a2
	tst.b 169(%a3)
	jeq .L381
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L404
.L381:
	tst.b 169(%a2)
	jeq .L382
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L405
.L382:
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
	jlt .L380
	move.l colliders,%d0
	sub.l %a4,%a4
	lea __Z23fighterHandleProjectileP7FighterS0_,%a5
	move.l #__Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator,%d4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L385
.L412:
	cmp.w #0,%a0
	jlt .L380
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 84(%a3),%d0
	cmp.l %d2,%d0
	jeq .L386
	cmp.l 84(%a2),%d2
	jeq .L386
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L386:
	cmp.l %d0,%d3
	jeq .L387
	cmp.l 84(%a2),%d3
	jeq .L387
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L387:
	moveq #63,%d5
	cmp.l %d2,%d5
	jeq .L406
	moveq #58,%d0
	cmp.l %d2,%d0
	jeq .L407
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L393
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L408
.L393:
	tst.b 195(%a3)
	jeq .L395
	cmp.l 84(%a3),%d2
	jeq .L409
.L395:
	tst.b 195(%a2)
	jeq .L396
	cmp.l 84(%a2),%d2
	jeq .L410
.L396:
	moveq #61,%d5
	cmp.l %d2,%d5
	jeq .L411
.L397:
	move.l colliders,%d0
.L398:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L412
.L385:
	cmp.w #0,%a0
	jge .L398
.L380:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L411:
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L397
	tst.b 90(%a2)
	jeq .L397
	move.b #1,169(%a2)
	move.b #1,194(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a3)
	move.l colliders,%d0
	jra .L398
.L409:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L395
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L395
.L410:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L396
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	moveq #61,%d5
	cmp.l %d2,%d5
	jne .L397
	jra .L411
.L407:
	moveq #61,%d1
	cmp.l %d3,%d1
	jne .L393
	tst.b 90(%a3)
	jeq .L393
	move.w 296(%a3),%d0
	cmp.w #10,%d0
	jle .L393
	cmp.w #328,%d0
	jgt .L393
	move.w 296(%a2),%d0
	cmp.w #10,%d0
	jle .L393
	cmp.w #328,%d0
	jgt .L393
	move.b #1,169(%a3)
	move.b #1,194(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	jra .L393
.L406:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L393
	move.l 20(%fp),%a1
	move.l 104(%a1),%a0
	move.l (%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L393
	move.b #8,%d5
	cmp.l %d0,%d5
	jeq .L393
	tst.b 168(%a2)
	jne .L393
	move.l 8(%fp),%a1
	move.l 104(%a1),%a0
	moveq #9,%d0
	cmp.l (%a0),%d0
	jne .L393
	moveq #8,%d1
	move.l %d1,306(%a2)
	clr.b 310(%a2)
	addq.l #5,240(%a3)
	move.b #1,244(%a3)
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l 20(%fp),-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L393
.L408:
	move.l 8(%fp),%a1
	move.l 104(%a1),%a0
	move.l (%a0),%d0
	move.b #1,%d1
	cmp.l %d0,%d1
	jeq .L393
	moveq #8,%d5
	cmp.l %d0,%d5
	jeq .L393
	tst.b 168(%a3)
	jne .L393
	move.l 20(%fp),%a1
	move.l 104(%a1),%a0
	moveq #9,%d0
	cmp.l (%a0),%d0
	jne .L393
	moveq #8,%d1
	move.l %d1,306(%a3)
	clr.b 310(%a3)
	addq.l #5,240(%a2)
	move.b #1,244(%a2)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	pea 25.w
	move.l 8(%fp),-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L393
.L404:
	clr.b 169(%a3)
	jra .L381
.L405:
	clr.b 169(%a2)
	jra .L382
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 158(%a0)
	jne .L414
	move.b #1,158(%a0)
	move.l 12(%fp),160(%a0)
.L414:
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
	jeq .L419
	tst.b 158(%a0)
	jeq .L426
.L420:
	cmp.w #-1,316(%a0)
	jeq .L427
.L422:
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
	jpl .L430
	addq.l #1,%d1
.L430:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,142(%a2)
	tst.b %d2
	jne .L428
.L424:
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
.L418:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L428:
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
.L426:
	tst.b 138(%a0)
	jeq .L420
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
.L419:
	tst.b 139(%a2)
	jeq .L418
	cmp.w #-1,316(%a0)
	jne .L422
.L427:
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
	jpl .L431
	addq.l #1,%d1
.L431:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,142(%a2)
	tst.b %d2
	jeq .L424
	jra .L428
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
	move.l 104(%a0),%a0
	move.l (%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L435
	move.b #8,%d1
	cmp.l %d0,%d1
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L435:
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
