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
	clr.l 250(%a0)
	move.b #1,254(%a0)
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
	move.w #-1,326(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,306(%a0)
	move.w #106,308(%a0)
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
	move.w #1,326(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,306(%a0)
	move.w #106,308(%a0)
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
	clr.l 94(%a2)
	move.l #0x400ccccd,332(%a2)
	clr.l 336(%a2)
	move.l #0xc1800000,340(%a2)
	move.l #0xc1a80000,344(%a2)
	move.l #0xc0800000,348(%a2)
	move.l #0x40a00000,352(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 218(%a2)
	clr.b 219(%a2)
	move.l 16(%fp),322(%a2)
	move.l 20(%fp),430(%a2)
	move.l 24(%fp),434(%a2)
	move.l 28(%fp),438(%a2)
	move.l 32(%fp),442(%a2)
	move.l 36(%fp),454(%a2)
	move.l 40(%fp),458(%a2)
	move.l 44(%fp),446(%a2)
	move.l 48(%fp),450(%a2)
	move.l 52(%fp),462(%a2)
	move.l 56(%fp),466(%a2)
	move.l 60(%fp),470(%a2)
	move.l 64(%fp),474(%a2)
	move.l 68(%fp),478(%a2)
	clr.l 246(%a2)
	move.l #0x40000000,260(%a2)
	move.l #0x40800000,264(%a2)
	move.l #0x40d00000,268(%a2)
	move.l #0x41000000,272(%a2)
	clr.l 280(%a2)
	move.l #0x40f00000,276(%a2)
	moveq #1,%d0
	move.l %d0,298(%a2)
	clr.l 302(%a2)
	clr.l 290(%a2)
	clr.l 140(%a2)
	move.b #1,186(%a2)
	move.b #1,98(%a2)
	clr.b 99(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 180(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 105(%a2)
	clr.b 106(%a2)
	clr.b 107(%a2)
	clr.b 108(%a2)
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 114(%a2)
	clr.b 113(%a2)
	clr.b 115(%a2)
	move.b #1,136(%a2)
	move.b #1,134(%a2)
	clr.b 137(%a2)
	move.b #1,135(%a2)
	move.b #1,224(%a2)
	clr.b 288(%a2)
	clr.b 116(%a2)
	clr.b 117(%a2)
	clr.b 118(%a2)
	clr.b 119(%a2)
	clr.b 120(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	clr.b 183(%a2)
	clr.b 184(%a2)
	clr.b 185(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.b 129(%a2)
	clr.b 132(%a2)
	clr.b 133(%a2)
	clr.b 174(%a2)
	clr.b 175(%a2)
	clr.b 176(%a2)
	clr.b 177(%a2)
	clr.b 178(%a2)
	clr.b 179(%a2)
	clr.b 187(%a2)
	clr.b 188(%a2)
	clr.b 189(%a2)
	clr.b 190(%a2)
	clr.b 204(%a2)
	clr.b 205(%a2)
	clr.b 206(%a2)
	clr.b 207(%a2)
	clr.b 213(%a2)
	clr.b 216(%a2)
	clr.b 217(%a2)
	clr.w 220(%a2)
	clr.w 222(%a2)
	clr.b 225(%a2)
	clr.b 226(%a2)
	clr.b 236(%a2)
	clr.b 237(%a2)
	clr.l 238(%a2)
	moveq #50,%d1
	move.l %d1,228(%a2)
	move.b #20,%d0
	move.l %d0,232(%a2)
	move.b %d2,330(%a2)
	move.b #120,%d1
	move.l %d1,312(%a2)
	clr.l 316(%a2)
	clr.b 320(%a2)
	clr.b 328(%a2)
	clr.b 329(%a2)
	move.b #1,358(%a2)
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
	move.l %d1,242(%a2)
	moveq #62,%d2
	move.l %d2,90(%a2)
	move.b #2,%d1
	move.l %d1,256(%a2)
	move.w #210,306(%a2)
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
	move.w #-1,326(%a2)
	move.l #11904,%d0
	move.b #62,%d1
.L26:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 486(%a2),%a1
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
	move.w #90,308(%a2)
	lea (12,%sp),%sp
	tst.l 94(%a2)
	jne .L27
	move.l 242(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 306(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
.L27:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,219(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L29:
	moveq #63,%d2
	move.l %d2,242(%a2)
	move.b #59,%d1
	move.l %d1,90(%a2)
	move.b #1,%d2
	move.l %d2,256(%a2)
	move.w #50,306(%a2)
	move.l %d2,11352(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,326(%a2)
	move.l #11328,%d0
	jra .L26
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 356(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
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
	move.l 246(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L38
	tst.b 134(%a2)
	jne .L43
.L38:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L39
	tst.b 134(%a2)
	jne .L44
.L39:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L40
	tst.b 134(%a2)
	jne .L45
.L40:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L37
	tst.b 134(%a2)
	jeq .L37
	tst.b 137(%a2)
	jeq .L46
.L37:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L45:
	tst.b 137(%a2)
	jne .L40
	move.b #1,137(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 246(%a2),%d0
	addq.l #8,%sp
	jra .L40
.L44:
	tst.b 137(%a2)
	jne .L39
	move.b #1,137(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 246(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L43:
	tst.b 137(%a2)
	jne .L38
	move.b #1,137(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 246(%a2),%d0
	addq.l #8,%sp
	jra .L38
.L46:
	move.b #1,137(%a2)
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
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	tst.b 178(%a2)
	jne .L52
	move.l JAGPAD_C,%d0
	move.l %d0,%d1
	and.l 246(%a2),%d1
	jeq .L50
	tst.b 136(%a2)
	jne .L54
.L50:
	move.w 408(%a2),%a0
	move.l %a0,-(%sp)
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L55
.L52:
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L55:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 414(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L54:
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	move.w 408(%a2),%a0
	move.l %a0,-(%sp)
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L52
	jra .L55
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
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L59
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L63
.L59:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 246(%a2),%d0
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
	move.b #1,134(%a2)
	clr.b 137(%a2)
.L61:
	move.b #1,135(%a2)
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
	move.b #1,136(%a2)
	jra .L59
	.even
	.globl	__Z15fighterPlayHiyaiP12SoundHandlerb
__Z15fighterPlayHiyaiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #6,%d2
	cmp.l %d0,%d2
	jeq .L68
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L69
	move.b #4,%d2
	cmp.l %d0,%d2
	jeq .L72
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandler
.L72:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandler
.L69:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandler
.L68:
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
	jeq .L79
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandler
.L79:
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
	jeq .L83
	move.b #7,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L87
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandler
.L83:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandler
.L87:
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
	jle .L94
.L90:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandler
.L94:
	move.b #6,%d2
	cmp.l %d0,%d2
	jlt .L95
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandler
.L95:
	move.b #7,%d2
	cmp.l %d0,%d2
	jne .L90
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
	move.l 90(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 242(%a0),%d0
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
	clr.b 99(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 180(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 105(%a0)
	clr.b 106(%a0)
	clr.b 107(%a0)
	clr.b 108(%a0)
	clr.b 109(%a0)
	clr.b 110(%a0)
	clr.b 111(%a0)
	clr.b 112(%a0)
	clr.b 114(%a0)
	clr.b 113(%a0)
	clr.b 115(%a0)
	clr.b 288(%a0)
	clr.b 116(%a0)
	clr.b 117(%a0)
	clr.b 118(%a0)
	clr.b 119(%a0)
	clr.b 120(%a0)
	clr.b 181(%a0)
	clr.b 182(%a0)
	clr.b 183(%a0)
	clr.b 184(%a0)
	clr.b 121(%a0)
	clr.b 122(%a0)
	clr.b 123(%a0)
	clr.b 124(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 127(%a0)
	clr.b 129(%a0)
	clr.b 128(%a0)
	clr.b 131(%a0)
	clr.b 132(%a0)
	clr.b 133(%a0)
	clr.b 174(%a0)
	clr.b 175(%a0)
	clr.b 176(%a0)
	clr.b 177(%a0)
	clr.b 178(%a0)
	clr.b 179(%a0)
	clr.b 189(%a0)
	clr.b 190(%a0)
	clr.b 204(%a0)
	clr.b 188(%a0)
	clr.b 213(%a0)
	clr.b 216(%a0)
	clr.b 217(%a0)
	clr.b 225(%a0)
	clr.b 226(%a0)
	clr.b 236(%a0)
	clr.b 237(%a0)
	clr.b 320(%a0)
	clr.b 328(%a0)
	clr.b 329(%a0)
	move.b #1,358(%a0)
	clr.b 205(%a0)
	clr.b 206(%a0)
	clr.b 207(%a0)
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
	move.b #1,187(%a2)
	clr.l 316(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
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
	move.l 486(%a3),%a0
	clr.w 16(%a0)
	move.l 90(%a3),%d0
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
	move.l 486(%a2),%a0
	clr.w 16(%a0)
	move.l 90(%a2),%d0
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
	jeq .L115
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L115:
	move.b #1,227(%a0)
	move.l 176(%a2),%a3
	move.w (%a3),%d0
	cmp.w #1,%d0
	jeq .L109
	cmp.w #8,%d0
	jeq .L109
	cmp.w #35,%d0
	jeq .L109
	move.b #1,138(%a1)
	moveq #20,%d0
	move.l %d0,316(%a1)
	clr.b 320(%a1)
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
	move.l 482(%a1),20(%fp)
	move.l %a1,16(%fp)
	move.b #29,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L109:
	move.l 482(%a1),20(%fp)
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
	move.l 176(%a3),%a1
	move.w (%a1),%d0
	cmp.w #1,%d0
	jeq .L118
	cmp.w #8,%d0
	jeq .L155
	tst.b 178(%a2)
	jne .L117
	move.l 176(%a4),%a1
	move.w (%a1),%d0
	cmp.w #9,%d0
	jeq .L149
	cmp.w #10,%d0
	jeq .L149
	cmp.w #13,%d0
	jeq .L156
	cmp.w #11,%d0
	jeq .L150
	cmp.w #12,%d0
	jeq .L150
	cmp.w #15,%d0
	jeq .L157
	cmp.w #14,%d0
	jeq .L158
	cmp.w #17,%d0
	jeq .L159
	cmp.w #16,%d0
	jeq .L160
	cmp.w #21,%d0
	jeq .L161
	cmp.w #22,%d0
	jeq .L162
	cmp.w #23,%d0
	jeq .L153
	cmp.w #24,%d0
	jeq .L163
	cmp.w #18,%d0
	jeq .L153
	cmp.w #19,%d0
	jeq .L164
	cmp.w #38,%d0
	jeq .L165
	cmp.w #39,%d0
	jeq .L166
	cmp.w #40,%d0
	jeq .L167
.L117:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L118:
	move.l 176(%a4),%a1
	move.w (%a1),%d0
	cmp.w #20,%d0
	jeq .L168
	moveq #4,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	move.b #1,254(%a0)
	cmp.w #21,%d0
	jeq .L139
	cmp.w #23,%d0
	jeq .L139
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L139:
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
.L155:
	moveq #4,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L149:
	moveq #8,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	addq.l #5,250(%a0)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #25,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L150:
	moveq #8,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	addq.l #5,250(%a0)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #26,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L168:
	moveq #16,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	moveq #10,%d0
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #27,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L161:
	moveq #24,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	moveq #20,%d3
	add.l %d3,250(%a0)
	move.b #1,254(%a0)
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
.L167:
	moveq #32,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	moveq #50,%d3
	add.l %d3,250(%a0)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #41,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L156:
	moveq #20,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #25,%d3
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L153:
	moveq #20,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	moveq #10,%d3
	add.l %d3,250(%a0)
	move.b #1,254(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
.L170:
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L157:
	moveq #24,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	moveq #20,%d3
	add.l %d3,250(%a0)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L158:
	moveq #20,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	add.l %d3,250(%a0)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L159:
	moveq #8,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	addq.l #5,250(%a0)
	move.b #1,254(%a0)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #30,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L160:
	moveq #32,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	moveq #20,%d0
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
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
.L162:
	moveq #24,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	moveq #20,%d0
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #33,%d3
.L171:
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L163:
	moveq #20,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	moveq #10,%d0
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d3
.L169:
	move.l %d3,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
.L164:
	moveq #16,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	moveq #20,%d0
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #29,%d3
	jra .L169
.L165:
	moveq #16,%d0
	move.l %d0,316(%a2)
	clr.b 320(%a2)
	moveq #20,%d3
	add.l %d3,250(%a0)
	move.b #1,254(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #29,%d0
	jra .L170
.L166:
	moveq #16,%d3
	move.l %d3,316(%a2)
	clr.b 320(%a2)
	moveq #50,%d0
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	pea 8.w
	move.l %a4,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	move.b #33,%d3
	jra .L171
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_:
	link.w %fp,#0
	movem.l #16188,-(%sp)
	move.l 8(%fp),%a5
	move.l 12(%fp),%a3
	move.l 20(%fp),%a4
	move.l 24(%fp),%a2
	tst.b 179(%a3)
	jeq .L174
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L202
.L174:
	tst.b 179(%a2)
	jeq .L175
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d7
	cmp.l 112(%a0,%d0.l),%d7
	jeq .L203
.L175:
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
	jlt .L173
	move.l colliders,%d0
	moveq #0,%d4
	move.l #__Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator,%d6
	move.l #__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS0_S2_S4_,%d5
	move.l %d0,%a0
	add.l %d4,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L178
.L209:
	cmp.w #0,%a0
	jlt .L173
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 90(%a3),%d0
	cmp.l %d2,%d0
	jeq .L179
	cmp.l 90(%a2),%d2
	jeq .L179
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d7
	move.l %d7,112(%a0,%d1.l)
.L179:
	cmp.l %d0,%d3
	jeq .L180
	cmp.l 90(%a2),%d3
	jeq .L180
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L180:
	moveq #63,%d7
	cmp.l %d2,%d7
	jeq .L204
	moveq #58,%d0
	cmp.l %d2,%d0
	jeq .L205
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L182
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L188
.L182:
	move.l 176(%a5),%a0
	move.w (%a0),%d0
.L187:
	cmp.w #43,%d0
	jeq .L206
.L189:
	move.l 176(%a4),%a0
	cmp.w #43,(%a0)
	jeq .L207
.L192:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L208
.L195:
	move.l colliders,%d0
.L196:
	addq.l #8,%d4
	move.l %d0,%a0
	add.l %d4,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L209
.L178:
	cmp.w #0,%a0
	jge .L196
.L173:
	movem.l -40(%fp),#15612
	unlk %fp
	rts
.L208:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L195
	move.l 176(%a4),%a0
	cmp.w #3,(%a0)
	jne .L195
	move.b #1,179(%a2)
	move.b #1,204(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,290(%a3)
	move.l colliders,%d0
	jra .L196
.L207:
	cmp.l 90(%a2),%d2
	jne .L192
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L192
	moveq #1,%d1
	cmp.l (%a2),%d1
	jne .L192
	move.b #1,227(%a2)
	move.l 176(%a5),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L193
	cmp.w #8,%d0
	jeq .L193
	cmp.w #35,%d0
	jeq .L193
	move.b #1,138(%a3)
	moveq #20,%d7
	move.l %d7,316(%a3)
	clr.b 320(%a3)
	add.l %d7,250(%a2)
	move.b #1,254(%a2)
	move.l 482(%a3),-(%sp)
	move.l %a3,-(%sp)
	pea 29.w
	move.l %a5,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L195
	jra .L208
.L206:
	cmp.l 90(%a3),%d2
	jne .L189
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L189
	moveq #1,%d1
	cmp.l (%a3),%d1
	jne .L189
	move.b #1,227(%a3)
	move.l 176(%a4),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L190
	cmp.w #8,%d0
	jeq .L190
	cmp.w #35,%d0
	jeq .L190
	move.b #1,138(%a2)
	moveq #20,%d7
	move.l %d7,316(%a2)
	clr.b 320(%a2)
	add.l %d7,250(%a3)
	move.b #1,254(%a3)
	move.l 482(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	move.l 176(%a4),%a0
	cmp.w #43,(%a0)
	jne .L192
	jra .L207
.L205:
	moveq #61,%d1
	move.l 176(%a5),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d1
	jne .L187
	cmp.w #3,%d0
	jne .L187
	move.b #1,179(%a3)
	move.b #1,204(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,290(%a2)
	move.l 176(%a4),%a0
	cmp.w #43,(%a0)
	jne .L192
	jra .L207
.L204:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L182
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %a5,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (24,%sp),%sp
	move.l 176(%a5),%a0
	move.w (%a0),%d0
	jra .L187
.L188:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %a5,-(%sp)
	move.l 28(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	move.l 176(%a5),%a0
	move.w (%a0),%d0
	lea (24,%sp),%sp
	cmp.w #43,%d0
	jne .L189
	jra .L206
.L203:
	clr.b 179(%a2)
	jra .L175
.L202:
	clr.b 179(%a3)
	jra .L174
.L193:
	move.l 482(%a3),-(%sp)
	move.l %a3,-(%sp)
	pea 35.w
	move.l %a5,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L195
	jra .L208
.L190:
	move.l 482(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	move.l 176(%a4),%a0
	cmp.w #43,(%a0)
	jne .L192
	jra .L207
	.even
	.globl	__Z16fighterTurnCheckP12StateMachineP7FighterS0_S2_
__Z16fighterTurnCheckP12StateMachineP7FighterS0_S2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 20(%fp),%a0
	move.w 326(%a1),%d0
	cmp.w #1,%d0
	jeq .L225
	cmp.w #-1,%d0
	jeq .L226
.L214:
	move.w 326(%a0),%d0
	cmp.w #1,%d0
	jeq .L227
.L215:
	cmp.w #-1,%d0
	jne .L211
	move.w 306(%a0),%a2
	add.l _turnOffset,%a2
	move.w 306(%a1),%a1
	cmp.l %a2,%a1
	jle .L211
.L222:
	tst.b 180(%a0)
	jne .L211
	move.b #1,180(%a0)
.L211:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L226:
	move.w 306(%a1),%a3
	add.l _turnOffset,%a3
	move.w 306(%a0),%a2
	cmp.l %a3,%a2
	jle .L214
	tst.b 180(%a1)
	jne .L214
.L228:
	move.b #1,180(%a1)
	move.w 326(%a0),%d0
	cmp.w #1,%d0
	jne .L215
.L227:
	move.w 306(%a0),%a2
	move.w 306(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L222
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L225:
	move.w 306(%a1),%a3
	move.w 306(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L214
	tst.b 180(%a1)
	jne .L214
	jra .L228
	.even
	.globl	__Z17fighterCloseCheckP12StateMachineP7FighterS0_S2_
__Z17fighterCloseCheckP12StateMachineP7FighterS0_S2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a0
	move.l 20(%fp),%a1
	move.l 8(%fp),%a2
	move.l 176(%a2),%a2
	move.w (%a2),%d0
	cmp.w #40,%d0
	jeq .L235
	move.l 16(%fp),%a2
	move.l 176(%a2),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L235
	cmp.w #1,%d0
	jeq .L235
	cmp.w #1,%d1
	jeq .L235
	cmp.w #8,%d0
	jeq .L235
	cmp.w #8,%d1
	jeq .L235
	move.w 326(%a0),%d0
	cmp.w #1,%d0
	jeq .L238
	cmp.w #-1,%d0
	jne .L235
	move.w 306(%a1),%a3
	move.w 306(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L236
.L235:
	clr.b 185(%a0)
	clr.b 185(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L238:
	move.w 306(%a1),%a3
	move.w 306(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L235
.L236:
	move.b #1,185(%a0)
	move.b #1,185(%a1)
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
	move.l 12(%fp),316(%a1)
	move.b 19(%fp),320(%a1)
	move.l 24(%fp),%d0
	add.l %d0,250(%a0)
	move.b #1,254(%a0)
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
	tst.b 187(%a2)
	jne .L242
	tst.b 320(%a2)
	jne .L247
	move.l 312(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,312(%a2)
	jle .L248
.L245:
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L242:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L247:
	clr.b 320(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 312(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,312(%a2)
	jgt .L245
.L248:
	clr.l 312(%a2)
	move.b #1,215(%a2)
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
	cmp.w #1,326(%a0)
	jeq .L255
	tst.b 358(%a0)
	jeq .L250
.L252:
	addq.w #2,306(%a0)
.L250:
	unlk %fp
	rts
.L255:
	tst.b 182(%a0)
	jeq .L252
	tst.b 358(%a0)
	jne .L252
	jra .L250
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,326(%a0)
	jeq .L258
	tst.b 182(%a0)
	jeq .L259
.L258:
	tst.b 358(%a0)
	jeq .L257
.L259:
	subq.w #2,306(%a0)
.L257:
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
	tst.l 94(%a0)
	jne .L264
	move.l 242(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 306(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 308(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L264:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L272
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L272:
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
	move.w #90,308(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 306(%a2),%d0
	cmp.w #11,%d0
	jle .L288
.L276:
	cmp.w #280,%d0
	jgt .L280
.L285:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L288:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L284
	move.w 306(%a2),%d0
	cmp.w #11,%d0
	jgt .L276
	cmp.w #280,306(%a3)
	jgt .L284
	jsr (%a4)
	tst.b %d0
	jne .L284
	move.w 306(%a2),%d0
	cmp.w #280,%d0
	jle .L285
.L280:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L289
.L284:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L289:
	cmp.w #328,306(%a2)
	jle .L285
	cmp.w #10,306(%a3)
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
	move.w 326(%a0),%d1
	cmp.w #1,%d1
	jeq .L292
	tst.b 182(%a0)
	jne .L292
.L293:
	tst.l %d0
	jle .L296
	tst.b 358(%a0)
	jeq .L291
.L296:
	add.w %d0,306(%a0)
.L291:
	unlk %fp
	rts
.L292:
	tst.l %d0
	jlt .L299
	cmp.w #1,%d1
	jne .L293
.L300:
	tst.b 182(%a0)
	jne .L293
	add.w %d0,306(%a0)
	jra .L291
.L299:
	tst.b 358(%a0)
	jeq .L291
	cmp.w #1,%d1
	jne .L293
	jra .L300
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
	jeq .L302
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L308
	jlt .L312
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L306
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L307
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L344
.L304:
	sub.w 308(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L317
	jge .L345
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L319
	cmp.l #128,%d0
	jeq .L320
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L318
.L313:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L326
	jlt .L330
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L324
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L325
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L323
	moveq #84,%d1
	not.b %d1
.L322:
	cmp.l %a1,%d1
	jge .L302
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L333
	jlt .L339
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L333
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L333
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L333
	move.w #171,%d1
.L333:
	move.w %d1,12(%a0)
.L302:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L312:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L310
	cmp.l #128,%d0
	jeq .L311
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L304
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 308(%a2),%d1
.L318:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L327:
	moveq #78,%d1
	not.b %d1
	jra .L322
.L308:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 308(%a2),%d1
.L317:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L326:
	moveq #75,%d1
	not.b %d1
	jra .L322
.L306:
	move.w %a1,%d1
	sub.w 308(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L315:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L324:
	moveq #69,%d1
	not.b %d1
	jra .L322
.L310:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 308(%a2),%d1
.L319:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L328:
	moveq #81,%d1
	not.b %d1
	jra .L322
.L344:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 308(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L323:
	moveq #66,%d1
	not.b %d1
	jra .L322
.L339:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L333
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L333
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L333
	move.w #171,%d1
	jra .L333
.L307:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 308(%a2),%d1
.L316:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L325:
	moveq #72,%d1
	not.b %d1
	jra .L322
.L311:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 308(%a2),%d1
	add.w %a1,%d1
.L320:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L329:
	moveq #87,%d1
	not.b %d1
	jra .L322
.L345:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L315
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L316
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L313
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L323
.L330:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L328
	cmp.l #128,%d0
	jeq .L329
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L327
	moveq #84,%d1
	not.b %d1
	jra .L322
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L352
	jge .L359
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L354
	cmp.l #128,%d0
	jeq .L355
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L360
.L348:
	moveq #21,%d0
	unlk %fp
	rts
.L359:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L357
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L351
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L348
	moveq #3,%d0
	unlk %fp
	rts
.L351:
	moveq #9,%d0
	unlk %fp
	rts
.L355:
	moveq #24,%d0
	unlk %fp
	rts
.L360:
	moveq #15,%d0
	unlk %fp
	rts
.L354:
	moveq #18,%d0
	unlk %fp
	rts
.L357:
	moveq #6,%d0
	unlk %fp
	rts
.L352:
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
	cmp.w #1,326(%a0)
	jeq .L368
	move.w 306(%a0),%a2
	sub.w 306(%a1),%a2
	cmp.w #259,%a2
	jgt .L366
.L364:
	clr.b 359(%a0)
	clr.b 359(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L368:
	move.w 306(%a1),%a2
	sub.w 306(%a0),%a2
	cmp.w #259,%a2
	jle .L364
.L366:
	move.b #1,359(%a0)
	move.b #1,359(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,219(%a0)
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
	tst.b 254(%a3)
	jne .L372
	tst.b 254(%a2)
	jeq .L371
.L372:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 254(%a3)
	jne .L381
	tst.b 254(%a2)
	jeq .L371
.L382:
	clr.b 254(%a2)
	move.l 250(%a2),%d0
	move.l %d0,_tempScore
	jne .L378
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 250(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L371:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L381:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 250(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 254(%a2)
	jne .L382
	jra .L371
.L378:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L375:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L375
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L377
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 250(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L377:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 250(%a2),(%sp)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 598(%a2),-(%sp)
	moveq #0,%d0
	move.w 80(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 294(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L384
	move.b #1,224(%a2)
	clr.b 102(%a2)
	clr.b 112(%a2)
	clr.b 113(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 182(%a2)
	clr.b 183(%a2)
	clr.b 129(%a2)
	clr.b 128(%a2)
	clr.b 174(%a2)
	clr.b 175(%a2)
	clr.b 176(%a2)
	move.b #1,177(%a2)
	clr.l 360(%a2)
	clr.w 16(%a3)
	move.w #90,308(%a2)
.L384:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 486(%a1),%a0
	clr.w 16(%a0)
	move.l 90(%a1),%d0
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
	tst.b 190(%a2)
	jne .L389
	move.b #1,190(%a2)
	clr.b 224(%a2)
	clr.b 191(%a2)
	moveq #-1,%d0
	move.l %d0,192(%a2)
	clr.l 196(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,200(%a2)
	move.l %a0,294(%a2)
	move.b #1,139(%a2)
	tst.b 330(%a2)
	jeq .L391
	pea 16.w
	pea 14.w
	move.l 368(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 322(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L391:
	pea 16.w
	pea 15.w
	move.l 368(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 322(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L389:
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 190(%a0)
	move.b #1,224(%a0)
	tst.b 330(%a0)
	jne .L399
	pea 16.w
	pea 15.w
	move.l 364(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L399:
	pea 16.w
	pea 14.w
	move.l 364(%a0),-(%sp)
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
	tst.b 133(%a2)
	jne .L401
	move.b #1,133(%a2)
	clr.b 148(%a2)
	move.b #1,218(%a2)
	move.w 326(%a2),%d0
	move.w 306(%a2),%a4
	cmp.w #-1,%d0
	jeq .L415
	move.w 306(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,140(%a2)
.L404:
	cmp.w #149,%a0
	jgt .L405
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,140(%a2)
	tst.b 168(%a2)
	jeq .L416
.L406:
	move.l 322(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L408
.L419:
	move.b #7,%d2
	cmp.l %d0,%d2
	jeq .L417
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandler
	addq.l #4,%sp
.L410:
	cmp.w #-1,326(%a2)
	jeq .L418
.L411:
	move.w 306(%a3),%d0
	ext.l %d0
	moveq #-48,%d2
	add.l %d0,%d2
	move.l %d2,144(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	move.l 90(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 486(%a3),%a1
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
.L401:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L405:
	clr.l 140(%a2)
	move.l 322(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d2
	cmp.l %d0,%d2
	jne .L419
.L408:
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandler
	addq.l #4,%sp
	cmp.w #-1,326(%a2)
	jne .L411
.L418:
	move.w 306(%a3),%d0
	ext.l %d0
	moveq #48,%d1
	add.l %d0,%d1
	move.l %d1,144(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	move.l 90(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 486(%a3),%a1
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
	jra .L401
.L417:
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandler
	addq.l #4,%sp
	jra .L410
.L415:
	move.l %a4,%a0
	sub.w 306(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,140(%a2)
	jra .L404
.L416:
	move.b #1,168(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,170(%a2)
	jra .L406
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 168(%a0)
	jne .L421
	move.b #1,168(%a0)
	move.l 12(%fp),170(%a0)
.L421:
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHarpoonCheckP7FighterS0_
__Z19fighterHarpoonCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.b 150(%a2),%d2
	jeq .L426
	tst.b 168(%a0)
	jeq .L433
.L427:
	cmp.w #-1,326(%a0)
	jeq .L434
.L429:
	move.w 306(%a0),%d3
	move.w 306(%a2),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,156(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L437
	addq.l #1,%d1
.L437:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,152(%a2)
	tst.b %d2
	jne .L435
.L431:
	move.l 90(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 326(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,152(%a2)
.L425:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L435:
	move.l 90(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	move.l %a0,88(%a1,%d0.l)
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L433:
	tst.b 148(%a0)
	jeq .L427
	clr.b 150(%a2)
	move.l 486(%a2),%a0
	clr.w 16(%a0)
	move.l 90(%a2),%d0
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
	move.l 90(%a2),%d0
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
.L426:
	tst.b 149(%a2)
	jeq .L425
	cmp.w #-1,326(%a0)
	jne .L429
.L434:
	move.w 306(%a2),%d3
	move.w 306(%a0),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,156(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L438
	addq.l #1,%d1
.L438:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,152(%a2)
	tst.b %d2
	jeq .L431
	jra .L435
	.even
	.globl	__Z20fighterCanTakeDamageP12StateMachineP7Fighter
__Z20fighterCanTakeDamageP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b 178(%a0),%d0
	eor.b #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z17fighterIsBlockingP12StateMachineP7Fighter
__Z17fighterIsBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 176(%a0),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L442
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L442:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z21fighterIsDuckBlockingP12StateMachineP7Fighter
__Z21fighterIsDuckBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 176(%a0),%a0
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
