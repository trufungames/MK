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
	clr.l 238(%a0)
	move.b #1,242(%a0)
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
	move.w #-1,314(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,294(%a0)
	move.w #106,296(%a0)
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
	move.w #1,314(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,294(%a0)
	move.w #106,296(%a0)
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
	move.l #0x400ccccd,320(%a2)
	clr.l 324(%a2)
	move.l #0xc1800000,328(%a2)
	move.l #0xc1a80000,332(%a2)
	move.l #0xc0800000,336(%a2)
	move.l #0x40a00000,340(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.b 206(%a2)
	clr.b 207(%a2)
	move.l 16(%fp),310(%a2)
	move.l 20(%fp),398(%a2)
	move.l 24(%fp),406(%a2)
	move.l 28(%fp),414(%a2)
	move.l 32(%fp),418(%a2)
	move.l 36(%fp),430(%a2)
	move.l 40(%fp),434(%a2)
	move.l 44(%fp),422(%a2)
	move.l 48(%fp),426(%a2)
	move.l 52(%fp),438(%a2)
	move.l 56(%fp),442(%a2)
	move.l 60(%fp),446(%a2)
	move.l 64(%fp),450(%a2)
	move.l 68(%fp),454(%a2)
	clr.l 234(%a2)
	move.l #0x40000000,248(%a2)
	move.l #0x40800000,252(%a2)
	move.l #0x40d00000,256(%a2)
	move.l #0x41000000,260(%a2)
	clr.l 268(%a2)
	move.l #0x40f00000,264(%a2)
	moveq #1,%d0
	move.l %d0,286(%a2)
	clr.l 290(%a2)
	clr.l 278(%a2)
	clr.l 128(%a2)
	move.b #1,174(%a2)
	move.b #1,86(%a2)
	clr.b 87(%a2)
	clr.b 88(%a2)
	clr.b 89(%a2)
	clr.b 168(%a2)
	clr.b 90(%a2)
	clr.b 91(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 99(%a2)
	clr.b 100(%a2)
	clr.b 102(%a2)
	clr.b 101(%a2)
	clr.b 103(%a2)
	move.b #1,124(%a2)
	move.b #1,122(%a2)
	clr.b 125(%a2)
	move.b #1,123(%a2)
	move.b #1,212(%a2)
	clr.b 276(%a2)
	clr.b 104(%a2)
	clr.b 105(%a2)
	clr.b 106(%a2)
	clr.b 107(%a2)
	clr.b 108(%a2)
	clr.b 169(%a2)
	clr.b 170(%a2)
	clr.b 171(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 113(%a2)
	clr.b 114(%a2)
	clr.b 115(%a2)
	clr.b 117(%a2)
	clr.b 120(%a2)
	clr.b 121(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 175(%a2)
	clr.b 176(%a2)
	clr.b 177(%a2)
	clr.b 178(%a2)
	clr.b 192(%a2)
	clr.b 193(%a2)
	clr.b 194(%a2)
	clr.b 195(%a2)
	clr.b 201(%a2)
	clr.b 204(%a2)
	clr.b 205(%a2)
	clr.w 208(%a2)
	clr.w 210(%a2)
	clr.b 213(%a2)
	clr.b 214(%a2)
	clr.b 224(%a2)
	clr.b 225(%a2)
	clr.l 226(%a2)
	moveq #50,%d1
	move.l %d1,216(%a2)
	move.b #20,%d0
	move.l %d0,220(%a2)
	move.b %d2,318(%a2)
	move.b #120,%d1
	move.l %d1,300(%a2)
	clr.l 304(%a2)
	clr.b 308(%a2)
	clr.b 316(%a2)
	clr.b 317(%a2)
	move.b #1,346(%a2)
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
	move.l %d1,230(%a2)
	moveq #62,%d2
	move.l %d2,82(%a2)
	move.b #2,%d1
	move.l %d1,244(%a2)
	move.w #210,294(%a2)
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
	move.w #-1,314(%a2)
	move.l #11904,%d0
	move.b #62,%d1
.L26:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 462(%a2),%a1
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
	move.w #90,296(%a2)
	lea (12,%sp),%sp
	tst.b 86(%a2)
	jeq .L27
	move.l 230(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 294(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
.L27:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,207(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L29:
	moveq #63,%d2
	move.l %d2,230(%a2)
	move.b #59,%d1
	move.l %d1,82(%a2)
	move.b #1,%d2
	move.l %d2,244(%a2)
	move.w #50,294(%a2)
	move.l %d2,11352(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,314(%a2)
	move.l #11328,%d0
	jra .L26
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 344(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
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
	move.l 234(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L37
	tst.b 122(%a2)
	jne .L42
.L37:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L38
	tst.b 122(%a2)
	jne .L43
.L38:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L39
	tst.b 122(%a2)
	jne .L44
.L39:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L36
	tst.b 122(%a2)
	jeq .L36
	tst.b 125(%a2)
	jeq .L45
.L36:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L44:
	tst.b 125(%a2)
	jne .L39
	move.b #1,125(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 234(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L43:
	tst.b 125(%a2)
	jne .L38
	move.b #1,125(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 234(%a2),%d0
	addq.l #8,%sp
	jra .L38
.L42:
	tst.b 125(%a2)
	jne .L37
	move.b #1,125(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 234(%a2),%d0
	addq.l #8,%sp
	jra .L37
.L45:
	move.b #1,125(%a2)
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
	and.l 234(%a2),%d1
	jeq .L48
	tst.b 124(%a2)
	jne .L53
.L48:
	move.w 376(%a2),%a0
	move.l %a0,-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L54
	tst.b 193(%a2)
	jne .L55
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L55:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 382(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L54:
	move.b #1,193(%a2)
	clr.b 196(%a2)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	addq.l #4,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L53:
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	jra .L48
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
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L59
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L63
.L59:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L58
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L61
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L61
	and.l JAGPAD_RIGHT,%d0
	jne .L61
	move.b #1,122(%a2)
	clr.b 125(%a2)
.L61:
	move.b #1,123(%a2)
.L58:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L63:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L59
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L59
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L59
	and.l JAGPAD_7,%d0
	jne .L59
	move.b #1,124(%a2)
	jra .L59
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
	jeq .L68
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L69
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L72
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L72:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L69:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L68:
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
	jeq .L79
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L79:
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
	jeq .L83
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L87
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L83:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L87:
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
	jle .L94
.L90:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L94:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L95
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L95:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L90
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
	jne .L101
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L102
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L102:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L101:
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
	move.l 82(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 230(%a0),%d0
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
	clr.b 87(%a0)
	clr.b 88(%a0)
	clr.b 89(%a0)
	clr.b 168(%a0)
	clr.b 90(%a0)
	clr.b 91(%a0)
	clr.b 92(%a0)
	clr.b 93(%a0)
	clr.b 94(%a0)
	clr.b 95(%a0)
	clr.b 96(%a0)
	clr.b 97(%a0)
	clr.b 98(%a0)
	clr.b 99(%a0)
	clr.b 100(%a0)
	clr.b 102(%a0)
	clr.b 101(%a0)
	clr.b 103(%a0)
	clr.b 276(%a0)
	clr.b 104(%a0)
	clr.b 105(%a0)
	clr.b 106(%a0)
	clr.b 107(%a0)
	clr.b 108(%a0)
	clr.b 169(%a0)
	clr.b 170(%a0)
	clr.b 171(%a0)
	clr.b 172(%a0)
	clr.b 109(%a0)
	clr.b 110(%a0)
	clr.b 111(%a0)
	clr.b 112(%a0)
	clr.b 113(%a0)
	clr.b 114(%a0)
	clr.b 115(%a0)
	clr.b 117(%a0)
	clr.b 116(%a0)
	clr.b 119(%a0)
	clr.b 120(%a0)
	clr.b 121(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 177(%a0)
	clr.b 178(%a0)
	clr.b 192(%a0)
	clr.b 176(%a0)
	clr.b 201(%a0)
	clr.b 204(%a0)
	clr.b 205(%a0)
	clr.b 213(%a0)
	clr.b 214(%a0)
	clr.b 224(%a0)
	clr.b 225(%a0)
	clr.b 308(%a0)
	clr.b 316(%a0)
	clr.b 317(%a0)
	move.b #1,346(%a0)
	clr.b 193(%a0)
	clr.b 194(%a0)
	clr.b 195(%a0)
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
	move.b #1,175(%a2)
	clr.l 304(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
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
	move.l 462(%a3),%a0
	clr.w 16(%a0)
	move.l 82(%a3),%d0
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
	move.l 462(%a2),%a0
	clr.w 16(%a0)
	move.l 82(%a2),%d0
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
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 166(%a0),%d0
	jne .L108
	tst.b 94(%a0)
	jne .L108
.L109:
	tst.b 96(%a1)
	jne .L138
.L111:
	tst.b 97(%a1)
	jeq .L113
	tst.b 93(%a0)
	jne .L113
	move.b #1,110(%a0)
	moveq #8,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	addq.l #5,238(%a1)
	move.b #1,242(%a1)
.L112:
	tst.b %d0
	jne .L107
.L132:
	tst.b 94(%a0)
	jeq .L125
.L139:
	tst.b 93(%a0)
	jeq .L125
	move.b #1,95(%a0)
	move.b #1,201(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a0)
.L128:
	tst.b 169(%a1)
	jeq .L107
	move.w 294(%a1),208(%a0)
	move.w 296(%a1),210(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,172(%a0)
	move.b #1,205(%a0)
	clr.b 212(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a1)
.L107:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L108:
	tst.b 175(%a0)
	jne .L109
	tst.b %d0
	jne .L107
	tst.b 94(%a0)
	jeq .L132
	move.b #1,95(%a0)
	move.b #1,201(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a0)
	tst.b 94(%a0)
	jne .L139
.L125:
	tst.b 104(%a1)
	jeq .L127
	move.b #1,118(%a0)
	moveq #16,%d0
	move.l %d0,304(%a0)
	clr.b 308(%a0)
	moveq #10,%d1
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
	jra .L128
.L138:
	tst.b 93(%a0)
	jne .L111
	move.b #1,109(%a0)
	moveq #8,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	addq.l #5,238(%a1)
	move.b #1,242(%a1)
	jra .L112
.L113:
	tst.b 98(%a1)
	jeq .L114
	tst.b 93(%a0)
	jne .L114
	move.b #1,109(%a0)
	moveq #20,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
.L140:
	tst.b %d0
	jeq .L132
	jra .L107
.L114:
	tst.b 99(%a1)
	jeq .L115
	tst.b 93(%a0)
	jne .L115
	move.b #1,111(%a0)
	moveq #20,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
	jra .L140
.L115:
	tst.b 105(%a1)
	jeq .L116
	tst.b 93(%a0)
	jeq .L141
.L116:
	tst.b 106(%a1)
	jeq .L117
	tst.b 93(%a0)
	jeq .L142
.L117:
	tst.b 100(%a1)
	jeq .L119
	move.b #1,113(%a0)
	clr.b 212(%a1)
	move.b #1,214(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #20,%d1
	move.l %d1,304(%a0)
	move.b #1,308(%a0)
	move.b #10,%d1
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
	tst.b %d0
	jeq .L132
	jra .L107
.L127:
	tst.b 108(%a1)
	jeq .L128
	move.b #1,112(%a0)
	clr.b 212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #8,%d0
	move.l %d0,304(%a0)
	clr.b 308(%a0)
	addq.l #5,238(%a1)
	move.b #1,242(%a1)
	jra .L128
.L119:
	tst.b 101(%a1)
	jne .L143
	tst.b 103(%a1)
	jeq .L121
	move.b #1,116(%a0)
	clr.b 212(%a1)
	move.b #1,213(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #32,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	move.b #20,%d1
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
.L146:
	tst.b %d0
	jeq .L132
	jra .L107
.L141:
	move.b #1,111(%a0)
	moveq #24,%d1
	move.l %d1,304(%a0)
	move.b #1,308(%a0)
	move.b #20,%d1
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
.L145:
	tst.b %d0
	jeq .L132
	jra .L107
.L142:
	move.b #1,114(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L144
	moveq #16,%d1
.L147:
	move.l %d1,304(%a0)
	move.b #1,308(%a0)
	move.b #20,%d1
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
	jra .L145
.L143:
	move.b #1,113(%a0)
	clr.b 212(%a1)
	move.b #1,214(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #16,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	move.b #20,%d1
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
	jra .L146
.L144:
	move.b #1,115(%a0)
	moveq #16,%d1
	jra .L147
.L121:
	tst.b 102(%a1)
	jeq .L122
	move.b #1,119(%a0)
	clr.b 212(%a1)
	move.b #1,214(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #24,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	move.b #20,%d1
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
	jra .L146
.L122:
	tst.b 107(%a1)
	jeq .L112
	move.b #1,120(%a0)
	clr.b 212(%a1)
	move.b #1,214(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #16,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	move.b #50,%d1
	add.l %d1,238(%a1)
	move.b #1,242(%a1)
	tst.b %d0
	jeq .L132
	jra .L107
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 314(%a1),%d0
	cmp.w #1,%d0
	jeq .L163
	cmp.w #-1,%d0
	jeq .L164
.L152:
	move.w 314(%a0),%d0
	cmp.w #1,%d0
	jeq .L165
.L153:
	cmp.w #-1,%d0
	jne .L149
	move.w 294(%a0),%a2
	add.l _turnOffset,%a2
	move.w 294(%a1),%a1
	cmp.l %a2,%a1
	jle .L149
.L160:
	tst.b 168(%a0)
	jne .L149
	clr.b 317(%a0)
	move.b #1,168(%a0)
	move.b #1,316(%a0)
.L149:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L164:
	move.w 294(%a1),%a3
	add.l _turnOffset,%a3
	move.w 294(%a0),%a2
	cmp.l %a3,%a2
	jle .L152
	tst.b 168(%a1)
	jne .L152
.L166:
	clr.b 317(%a1)
	move.b #1,168(%a1)
	move.b #1,316(%a1)
	move.w 314(%a0),%d0
	cmp.w #1,%d0
	jne .L153
.L165:
	move.w 294(%a0),%a2
	move.w 294(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L160
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L163:
	move.w 294(%a1),%a3
	move.w 294(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L152
	tst.b 168(%a1)
	jne .L152
	jra .L166
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 314(%a0),%d0
	cmp.w #1,%d0
	jeq .L175
	cmp.w #-1,%d0
	jeq .L176
.L170:
	clr.b 173(%a0)
	clr.b 173(%a1)
.L168:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L176:
	move.w 294(%a1),%a3
	move.w 294(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L170
.L172:
	move.b #1,173(%a0)
	move.b #1,173(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L175:
	move.w 294(%a1),%a3
	move.w 294(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L172
	clr.b 173(%a0)
	clr.b 173(%a1)
	jra .L168
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
	move.l 12(%fp),304(%a1)
	move.b 19(%fp),308(%a1)
	move.l 24(%fp),%d0
	add.l %d0,238(%a0)
	move.b #1,242(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterTakeDamageP7Fighterii
__Z17fighterTakeDamageP7Fighterii:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d3
	move.l 16(%fp),%d2
	tst.b 175(%a2)
	jne .L180
	tst.b 308(%a2)
	jne .L185
	move.l 300(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,300(%a2)
	jle .L186
.L183:
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	addq.l #4,%sp
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L180:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L185:
	clr.b 308(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 300(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,300(%a2)
	jgt .L183
.L186:
	clr.l 300(%a2)
	move.b #1,203(%a2)
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	addq.l #4,%sp
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,314(%a0)
	jeq .L193
	tst.b 346(%a0)
	jeq .L188
.L190:
	addq.w #2,294(%a0)
.L188:
	unlk %fp
	rts
.L193:
	tst.b 170(%a0)
	jeq .L190
	tst.b 346(%a0)
	jne .L190
	jra .L188
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,314(%a0)
	jeq .L196
	tst.b 170(%a0)
	jeq .L197
.L196:
	tst.b 346(%a0)
	jeq .L195
.L197:
	subq.w #2,294(%a0)
.L195:
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
	tst.b 86(%a0)
	jeq .L202
	move.l 230(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 294(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 296(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L202:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L210
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L210:
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
	move.w #90,296(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 294(%a2),%d0
	cmp.w #11,%d0
	jle .L226
.L214:
	cmp.w #280,%d0
	jgt .L218
.L223:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L226:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L222
	move.w 294(%a2),%d0
	cmp.w #11,%d0
	jgt .L214
	cmp.w #280,294(%a3)
	jgt .L222
	jsr (%a4)
	tst.b %d0
	jne .L222
	move.w 294(%a2),%d0
	cmp.w #280,%d0
	jle .L223
.L218:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L227
.L222:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L227:
	cmp.w #328,294(%a2)
	jle .L223
	cmp.w #10,294(%a3)
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
	move.w 314(%a0),%d1
	cmp.w #1,%d1
	jeq .L230
	tst.b 170(%a0)
	jne .L230
.L231:
	tst.l %d0
	jle .L234
	tst.b 346(%a0)
	jeq .L229
.L234:
	add.w %d0,294(%a0)
.L229:
	unlk %fp
	rts
.L230:
	tst.l %d0
	jlt .L237
	cmp.w #1,%d1
	jne .L231
.L238:
	tst.b 170(%a0)
	jne .L231
	add.w %d0,294(%a0)
	jra .L229
.L237:
	tst.b 346(%a0)
	jeq .L229
	cmp.w #1,%d1
	jne .L231
	jra .L238
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
	jeq .L240
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L246
	jlt .L250
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L244
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L245
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L282
.L242:
	sub.w 296(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L255
	jge .L283
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L257
	cmp.l #128,%d0
	jeq .L258
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L256
.L251:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L264
	jlt .L268
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L262
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L263
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L261
	moveq #84,%d1
	not.b %d1
.L260:
	cmp.l %a1,%d1
	jge .L240
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L271
	jlt .L277
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L271
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L271
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L271
	move.w #171,%d1
.L271:
	move.w %d1,12(%a0)
.L240:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L250:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L248
	cmp.l #128,%d0
	jeq .L249
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L242
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 296(%a2),%d1
.L256:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L265:
	moveq #78,%d1
	not.b %d1
	jra .L260
.L246:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 296(%a2),%d1
.L255:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L264:
	moveq #75,%d1
	not.b %d1
	jra .L260
.L244:
	move.w %a1,%d1
	sub.w 296(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L253:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L262:
	moveq #69,%d1
	not.b %d1
	jra .L260
.L248:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 296(%a2),%d1
.L257:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L266:
	moveq #81,%d1
	not.b %d1
	jra .L260
.L282:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 296(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L261:
	moveq #66,%d1
	not.b %d1
	jra .L260
.L277:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L271
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L271
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L271
	move.w #171,%d1
	jra .L271
.L245:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 296(%a2),%d1
.L254:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L263:
	moveq #72,%d1
	not.b %d1
	jra .L260
.L249:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 296(%a2),%d1
	add.w %a1,%d1
.L258:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L267:
	moveq #87,%d1
	not.b %d1
	jra .L260
.L283:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L253
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L254
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L251
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L261
.L268:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L266
	cmp.l #128,%d0
	jeq .L267
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L265
	moveq #84,%d1
	not.b %d1
	jra .L260
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L290
	jge .L297
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L292
	cmp.l #128,%d0
	jeq .L293
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L298
.L286:
	moveq #21,%d0
	unlk %fp
	rts
.L297:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L295
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L289
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L286
	moveq #3,%d0
	unlk %fp
	rts
.L289:
	moveq #9,%d0
	unlk %fp
	rts
.L293:
	moveq #24,%d0
	unlk %fp
	rts
.L298:
	moveq #15,%d0
	unlk %fp
	rts
.L292:
	moveq #18,%d0
	unlk %fp
	rts
.L295:
	moveq #6,%d0
	unlk %fp
	rts
.L290:
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
	cmp.w #1,314(%a0)
	jeq .L306
	move.w 294(%a0),%a2
	sub.w 294(%a1),%a2
	cmp.w #259,%a2
	jgt .L304
.L302:
	clr.b 347(%a0)
	clr.b 347(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L306:
	move.w 294(%a1),%a2
	sub.w 294(%a0),%a2
	cmp.w #259,%a2
	jle .L302
.L304:
	move.b #1,347(%a0)
	move.b #1,347(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,207(%a0)
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
	tst.b 242(%a3)
	jne .L310
	tst.b 242(%a2)
	jeq .L309
.L310:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 242(%a3)
	jne .L319
	tst.b 242(%a2)
	jeq .L309
.L320:
	clr.b 242(%a2)
	move.l 238(%a2),%d0
	move.l %d0,_tempScore
	jne .L316
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 238(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L309:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L319:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 238(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 242(%a2)
	jne .L320
	jra .L309
.L316:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L313:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L313
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L315
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 238(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L315:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 238(%a2),(%sp)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 570(%a2),-(%sp)
	moveq #0,%d0
	move.w 78(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 282(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L322
	move.b #1,212(%a2)
	clr.b 90(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 119(%a2)
	clr.b 120(%a2)
	clr.b 170(%a2)
	clr.b 171(%a2)
	clr.b 117(%a2)
	clr.b 116(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	clr.b 164(%a2)
	move.b #1,165(%a2)
	clr.l 348(%a2)
	clr.w 16(%a3)
	move.w #90,296(%a2)
.L322:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 462(%a1),%a0
	clr.w 16(%a0)
	move.l 82(%a1),%d0
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
	tst.b 178(%a2)
	jne .L327
	move.b #1,178(%a2)
	clr.b 212(%a2)
	clr.b 179(%a2)
	moveq #-1,%d0
	move.l %d0,180(%a2)
	clr.l 184(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,188(%a2)
	move.l %a0,282(%a2)
	move.b #1,127(%a2)
	tst.b 318(%a2)
	jeq .L329
	pea 16.w
	pea 14.w
	move.l 356(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
.L327:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L329:
	pea 16.w
	pea 15.w
	move.l 356(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
	jra .L327
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 178(%a0)
	move.b #1,212(%a0)
	tst.b 318(%a0)
	jne .L337
	pea 16.w
	pea 15.w
	move.l 352(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L337:
	pea 16.w
	pea 14.w
	move.l 352(%a0),-(%sp)
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
	tst.b 121(%a2)
	jne .L339
	move.b #1,121(%a2)
	clr.b 136(%a2)
	move.b #1,206(%a2)
	move.w 314(%a2),%d0
	move.w 294(%a2),%a4
	cmp.w #-1,%d0
	jeq .L353
	move.w 294(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,128(%a2)
.L342:
	cmp.w #149,%a0
	jgt .L343
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,128(%a2)
	tst.b 156(%a2)
	jeq .L354
.L344:
	moveq #0,%d2
	move.b 318(%a2),%d2
	move.l 310(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L346
.L357:
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L355
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L348:
	cmp.w #-1,314(%a2)
	jeq .L356
.L349:
	move.w 294(%a3),%d0
	ext.l %d0
	moveq #-48,%d3
	add.l %d0,%d3
	move.l %d3,132(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	move.l 82(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 462(%a3),%a1
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
.L339:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L343:
	clr.l 128(%a2)
	moveq #0,%d2
	move.b 318(%a2),%d2
	move.l 310(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jne .L357
.L346:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	cmp.w #-1,314(%a2)
	jne .L349
.L356:
	move.w 294(%a3),%d0
	ext.l %d0
	moveq #48,%d1
	add.l %d0,%d1
	move.l %d1,132(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	move.l 82(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 462(%a3),%a1
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
	jra .L339
.L355:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L348
.L353:
	move.l %a4,%a0
	sub.w 294(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,128(%a2)
	jra .L342
.L354:
	move.b #1,156(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,158(%a2)
	jra .L344
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
	jeq .L399
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L403
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L404
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L399
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L399
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L405
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L359
	tst.b 215(%a3)
	jne .L359
	move.b #1,215(%a3)
	tst.b 94(%a2)
	jeq .L406
	move.b #1,150(%a3)
.L391:
	move.b #1,95(%a2)
	move.b #1,201(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
.L359:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L399:
	move.b #1,215(%a3)
	tst.b 94(%a2)
	jne .L391
	tst.b 90(%a2)
	jeq .L379
	move.b #1,119(%a2)
	moveq #20,%d0
	move.l %d0,304(%a2)
	clr.b 308(%a2)
	add.l %d0,238(%a3)
	move.b #1,242(%a3)
.L407:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L403:
	move.b #1,215(%a3)
	tst.b 94(%a2)
	jne .L391
	tst.b 90(%a2)
	jeq .L367
	move.b #1,119(%a2)
	move.b #1,206(%a2)
.L394:
	move.b #1,126(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
.L408:
	moveq #20,%d0
	move.l %d0,304(%a2)
	clr.b 308(%a2)
	add.l %d0,238(%a3)
	move.b #1,242(%a3)
	jra .L407
.L404:
	move.b #1,215(%a3)
	tst.b 94(%a2)
	jne .L391
	tst.b 90(%a2)
	jeq .L371
	move.b #1,119(%a2)
	move.b #1,126(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	jra .L408
.L379:
	move.b #1,111(%a2)
	move.b #1,126(%a2)
	moveq #20,%d0
	move.l %d0,304(%a2)
	clr.b 308(%a2)
	add.l %d0,238(%a3)
	move.b #1,242(%a3)
	jra .L407
.L367:
	move.b #1,114(%a2)
	move.b #1,206(%a2)
	jra .L394
.L405:
	tst.b 215(%a3)
	jne .L359
	move.b #1,215(%a3)
	tst.b 178(%a2)
	jne .L409
	tst.b 94(%a2)
	jne .L391
	move.b #1,178(%a2)
	clr.b 212(%a2)
	clr.b 179(%a2)
	moveq #-1,%d0
	move.l %d0,180(%a2)
	clr.l 184(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,188(%a2)
	move.l %a0,282(%a2)
	move.b #1,127(%a2)
	tst.b 318(%a2)
	jeq .L388
	pea 16.w
	pea 14.w
	move.l 356(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 304(%a2)
.L393:
	clr.b 308(%a2)
	moveq #20,%d1
	add.l %d1,238(%a3)
	move.b #1,242(%a3)
	addq.l #8,%sp
.L411:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L371:
	move.b #1,114(%a2)
	move.b #1,126(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	jra .L408
.L409:
	clr.b 178(%a2)
	move.b #1,212(%a2)
	tst.b 318(%a2)
	jne .L410
	pea 16.w
	pea 15.w
	move.l 352(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L384:
	move.l 82(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 178(%a3)
	jne .L359
	move.b #1,178(%a3)
	clr.b 212(%a3)
	clr.b 179(%a3)
	move.l %d1,180(%a3)
	clr.l 184(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,188(%a3)
	move.l %a0,282(%a3)
	move.b #1,127(%a3)
	tst.b 318(%a3)
	jeq .L385
	pea 16.w
	pea 14.w
	move.l 356(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 318(%a3),%d0
	move.l %d0,12(%fp)
	move.l 310(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
.L406:
	move.b #1,137(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a3)
	move.w #-1,146(%a3)
	move.w #32,142(%a3)
	clr.w 148(%a3)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z14fighterHarpoonP7FighterS0_
	moveq #8,%d0
	move.l %d0,304(%a2)
	clr.b 308(%a2)
	moveq #20,%d1
	add.l %d1,238(%a3)
	move.b #1,242(%a3)
	addq.l #8,%sp
	jra .L411
.L410:
	pea 16.w
	pea 14.w
	move.l 352(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L384
.L388:
	pea 16.w
	pea 15.w
	move.l 356(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 304(%a2)
	jra .L393
.L385:
	pea 16.w
	pea 15.w
	move.l 356(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 318(%a3),%d0
	move.l %d0,12(%fp)
	move.l 310(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.b 167(%a3)
	jeq .L414
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L431
.L414:
	tst.b 167(%a2)
	jeq .L415
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L432
.L415:
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
	jlt .L413
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L418
.L439:
	cmp.w #0,%a0
	jlt .L413
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 82(%a3),%d0
	cmp.l %d2,%d0
	jeq .L419
	cmp.l 82(%a2),%d2
	jeq .L419
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L419:
	cmp.l %d0,%d3
	jeq .L420
	cmp.l 82(%a2),%d3
	jeq .L420
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L420:
	moveq #63,%d5
	cmp.l %d2,%d5
	jeq .L433
	moveq #58,%d1
	cmp.l %d2,%d1
	jeq .L434
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L425
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L435
.L425:
	tst.b 193(%a3)
	jeq .L426
	cmp.l 82(%a3),%d2
	jeq .L436
.L426:
	tst.b 193(%a2)
	jeq .L427
	cmp.l 82(%a2),%d2
	jeq .L437
.L427:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L438
.L428:
	move.l colliders,%d0
.L429:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L439
.L418:
	cmp.w #0,%a0
	jge .L429
.L413:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L438:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L428
	tst.b 88(%a2)
	jeq .L428
	move.b #1,167(%a2)
	move.b #1,192(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a3)
	move.l colliders,%d0
	jra .L429
.L436:
	moveq #61,%d5
	cmp.l %d3,%d5
	jne .L426
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L426
.L437:
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L427
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L428
	jra .L438
.L434:
	moveq #61,%d5
	cmp.l %d3,%d5
	jne .L425
	tst.b 88(%a3)
	jeq .L425
	move.w 294(%a3),%d0
	cmp.w #10,%d0
	jle .L425
	cmp.w #328,%d0
	jgt .L425
	move.w 294(%a2),%d0
	cmp.w #10,%d0
	jle .L425
	cmp.w #328,%d0
	jgt .L425
	move.b #1,167(%a3)
	move.b #1,192(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L425
.L433:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L425
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L425
.L435:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L425
.L431:
	clr.b 167(%a3)
	jra .L414
.L432:
	clr.b 167(%a2)
	jra .L415
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 156(%a0)
	jne .L441
	move.b #1,156(%a0)
	move.l 12(%fp),158(%a0)
.L441:
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHarpoonCheckP7FighterS0_
__Z19fighterHarpoonCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.b 138(%a2),%d2
	jeq .L446
	tst.b 156(%a0)
	jeq .L453
.L447:
	cmp.w #-1,314(%a0)
	jeq .L454
.L449:
	move.w 294(%a0),%d3
	move.w 294(%a2),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,144(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L457
	addq.l #1,%d1
.L457:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,140(%a2)
	tst.b %d2
	jne .L455
.L451:
	move.l 82(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 314(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,140(%a2)
.L445:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L455:
	move.l 82(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	move.l %a0,88(%a1,%d0.l)
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L453:
	tst.b 136(%a0)
	jeq .L447
	clr.b 138(%a2)
	move.l 462(%a2),%a0
	clr.w 16(%a0)
	move.l 82(%a2),%d0
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
	move.l 82(%a2),%d0
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
.L446:
	tst.b 137(%a2)
	jeq .L445
	cmp.w #-1,314(%a0)
	jne .L449
.L454:
	move.w 294(%a2),%d3
	move.w 294(%a0),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,144(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L458
	addq.l #1,%d1
.L458:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,140(%a2)
	tst.b %d2
	jeq .L451
	jra .L455
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
