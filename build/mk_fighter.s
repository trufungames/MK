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
	clr.l 234(%a0)
	move.b #1,238(%a0)
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
	move.w #-1,310(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,290(%a0)
	move.w #106,292(%a0)
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
	move.w #1,310(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,290(%a0)
	move.w #106,292(%a0)
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
	move.l #0x400ccccd,316(%a2)
	clr.l 320(%a2)
	move.l #0xc1800000,324(%a2)
	move.l #0xc1a80000,328(%a2)
	move.l #0xc0800000,332(%a2)
	move.l #0x40a00000,336(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 202(%a2)
	clr.b 203(%a2)
	move.l 16(%fp),306(%a2)
	move.l 20(%fp),394(%a2)
	move.l 24(%fp),398(%a2)
	move.l 28(%fp),402(%a2)
	move.l 32(%fp),406(%a2)
	move.l 36(%fp),418(%a2)
	move.l 40(%fp),422(%a2)
	move.l 44(%fp),410(%a2)
	move.l 48(%fp),414(%a2)
	move.l 52(%fp),426(%a2)
	move.l 56(%fp),430(%a2)
	move.l 60(%fp),434(%a2)
	move.l 64(%fp),438(%a2)
	move.l 68(%fp),442(%a2)
	clr.l 230(%a2)
	move.l #0x40000000,244(%a2)
	move.l #0x40800000,248(%a2)
	move.l #0x40d00000,252(%a2)
	move.l #0x41000000,256(%a2)
	clr.l 264(%a2)
	move.l #0x40f00000,260(%a2)
	moveq #1,%d0
	move.l %d0,282(%a2)
	clr.l 286(%a2)
	clr.l 274(%a2)
	clr.l 124(%a2)
	move.b #1,170(%a2)
	move.b #1,82(%a2)
	clr.b 83(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.b 164(%a2)
	clr.b 86(%a2)
	clr.b 87(%a2)
	clr.b 88(%a2)
	clr.b 89(%a2)
	clr.b 90(%a2)
	clr.b 91(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 96(%a2)
	clr.b 98(%a2)
	clr.b 97(%a2)
	clr.b 99(%a2)
	move.b #1,120(%a2)
	move.b #1,118(%a2)
	clr.b 121(%a2)
	move.b #1,119(%a2)
	move.b #1,208(%a2)
	clr.b 272(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 165(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 168(%a2)
	clr.b 169(%a2)
	clr.b 105(%a2)
	clr.b 106(%a2)
	clr.b 107(%a2)
	clr.b 108(%a2)
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 111(%a2)
	clr.b 113(%a2)
	clr.b 116(%a2)
	clr.b 117(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	clr.b 161(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	clr.b 171(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 174(%a2)
	clr.b 188(%a2)
	clr.b 189(%a2)
	clr.b 190(%a2)
	clr.b 191(%a2)
	clr.b 197(%a2)
	clr.b 200(%a2)
	clr.b 201(%a2)
	clr.w 204(%a2)
	clr.w 206(%a2)
	clr.b 209(%a2)
	clr.b 210(%a2)
	clr.b 220(%a2)
	clr.b 221(%a2)
	clr.l 222(%a2)
	moveq #50,%d1
	move.l %d1,212(%a2)
	move.b #20,%d0
	move.l %d0,216(%a2)
	move.b %d2,314(%a2)
	move.b #120,%d1
	move.l %d1,296(%a2)
	clr.l 300(%a2)
	clr.b 304(%a2)
	clr.b 312(%a2)
	clr.b 313(%a2)
	move.b #1,342(%a2)
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
	move.l %d1,226(%a2)
	moveq #62,%d2
	move.l %d2,78(%a2)
	move.b #2,%d1
	move.l %d1,240(%a2)
	move.w #210,290(%a2)
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
	move.w #-1,310(%a2)
	move.l #11904,%d0
	move.b #62,%d1
.L26:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 450(%a2),%a1
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
	move.w #90,292(%a2)
	lea (12,%sp),%sp
	tst.b 82(%a2)
	jeq .L27
	move.l 226(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 290(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
.L27:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,203(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L29:
	moveq #63,%d2
	move.l %d2,226(%a2)
	move.b #59,%d1
	move.l %d1,78(%a2)
	move.b #1,%d2
	move.l %d2,240(%a2)
	move.w #50,290(%a2)
	move.l %d2,11352(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,310(%a2)
	move.l #11328,%d0
	jra .L26
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 340(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
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
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
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
	move.l 230(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L37
	tst.b 118(%a2)
	jne .L42
.L37:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L38
	tst.b 118(%a2)
	jne .L43
.L38:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L39
	tst.b 118(%a2)
	jne .L44
.L39:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L36
	tst.b 118(%a2)
	jeq .L36
	tst.b 121(%a2)
	jeq .L45
.L36:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L44:
	tst.b 121(%a2)
	jne .L39
	move.b #1,121(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 230(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L43:
	tst.b 121(%a2)
	jne .L38
	move.b #1,121(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 230(%a2),%d0
	addq.l #8,%sp
	jra .L38
.L42:
	tst.b 121(%a2)
	jne .L37
	move.b #1,121(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 230(%a2),%d0
	addq.l #8,%sp
	jra .L37
.L45:
	move.b #1,121(%a2)
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
	and.l 230(%a2),%d1
	jeq .L48
	tst.b 120(%a2)
	jne .L53
.L48:
	move.w 372(%a2),%a0
	move.l %a0,-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L54
	tst.b 189(%a2)
	jne .L55
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L55:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 378(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L54:
	move.b #1,189(%a2)
	clr.b 192(%a2)
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
	jeq .L61
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L62
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L65
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L65:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L62:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L61:
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
	jeq .L72
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L72:
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
	jeq .L76
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L80
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L76:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L80:
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
	jle .L87
.L83:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L87:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L88
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L88:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L83
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
	jne .L94
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L95
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L95:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L94:
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
	move.l 78(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 226(%a0),%d0
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
	clr.b 83(%a0)
	clr.b 84(%a0)
	clr.b 85(%a0)
	clr.b 164(%a0)
	clr.b 86(%a0)
	clr.b 87(%a0)
	clr.b 88(%a0)
	clr.b 89(%a0)
	clr.b 90(%a0)
	clr.b 91(%a0)
	clr.b 92(%a0)
	clr.b 93(%a0)
	clr.b 94(%a0)
	clr.b 95(%a0)
	clr.b 96(%a0)
	clr.b 98(%a0)
	clr.b 97(%a0)
	clr.b 99(%a0)
	clr.b 272(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 165(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 168(%a0)
	clr.b 105(%a0)
	clr.b 106(%a0)
	clr.b 107(%a0)
	clr.b 108(%a0)
	clr.b 109(%a0)
	clr.b 110(%a0)
	clr.b 111(%a0)
	clr.b 113(%a0)
	clr.b 112(%a0)
	clr.b 115(%a0)
	clr.b 116(%a0)
	clr.b 117(%a0)
	clr.b 158(%a0)
	clr.b 159(%a0)
	clr.b 160(%a0)
	clr.b 161(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	clr.b 173(%a0)
	clr.b 174(%a0)
	clr.b 188(%a0)
	clr.b 172(%a0)
	clr.b 197(%a0)
	clr.b 200(%a0)
	clr.b 201(%a0)
	clr.b 209(%a0)
	clr.b 210(%a0)
	clr.b 220(%a0)
	clr.b 221(%a0)
	clr.b 304(%a0)
	clr.b 312(%a0)
	clr.b 313(%a0)
	move.b #1,342(%a0)
	clr.b 189(%a0)
	clr.b 190(%a0)
	clr.b 191(%a0)
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
	move.b #1,171(%a2)
	clr.l 300(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
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
	move.l 450(%a3),%a0
	clr.w 16(%a0)
	move.l 78(%a3),%d0
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
	move.l 450(%a2),%a0
	clr.w 16(%a0)
	move.l 78(%a2),%d0
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
	move.b 162(%a0),%d0
	jne .L101
	tst.b 90(%a0)
	jne .L101
.L102:
	tst.b 92(%a1)
	jne .L131
.L104:
	tst.b 93(%a1)
	jeq .L106
	tst.b 89(%a0)
	jne .L106
	move.b #1,106(%a0)
	moveq #8,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	addq.l #5,234(%a1)
	move.b #1,238(%a1)
.L105:
	tst.b %d0
	jne .L100
.L125:
	tst.b 90(%a0)
	jeq .L118
.L132:
	tst.b 89(%a0)
	jeq .L118
	move.b #1,91(%a0)
	move.b #1,197(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a0)
.L121:
	tst.b 165(%a1)
	jeq .L100
	move.w 290(%a1),204(%a0)
	move.w 292(%a1),206(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,168(%a0)
	move.b #1,201(%a0)
	clr.b 208(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a1)
.L100:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L101:
	tst.b 171(%a0)
	jne .L102
	tst.b %d0
	jne .L100
	tst.b 90(%a0)
	jeq .L125
	move.b #1,91(%a0)
	move.b #1,197(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a0)
	tst.b 90(%a0)
	jne .L132
.L118:
	tst.b 100(%a1)
	jeq .L120
	move.b #1,114(%a0)
	moveq #16,%d0
	move.l %d0,300(%a0)
	clr.b 304(%a0)
	moveq #10,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L121
.L131:
	tst.b 89(%a0)
	jne .L104
	move.b #1,105(%a0)
	moveq #8,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	addq.l #5,234(%a1)
	move.b #1,238(%a1)
	jra .L105
.L106:
	tst.b 94(%a1)
	jeq .L107
	tst.b 89(%a0)
	jne .L107
	move.b #1,105(%a0)
	moveq #20,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
.L133:
	tst.b %d0
	jeq .L125
	jra .L100
.L107:
	tst.b 95(%a1)
	jeq .L108
	tst.b 89(%a0)
	jne .L108
	move.b #1,107(%a0)
	moveq #20,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L133
.L108:
	tst.b 101(%a1)
	jeq .L109
	tst.b 89(%a0)
	jeq .L134
.L109:
	tst.b 102(%a1)
	jeq .L110
	tst.b 89(%a0)
	jeq .L135
.L110:
	tst.b 96(%a1)
	jeq .L112
	move.b #1,109(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #20,%d1
	move.l %d1,300(%a0)
	move.b #1,304(%a0)
	move.b #10,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	tst.b %d0
	jeq .L125
	jra .L100
.L120:
	tst.b 104(%a1)
	jeq .L121
	move.b #1,108(%a0)
	clr.b 208(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #8,%d0
	move.l %d0,300(%a0)
	clr.b 304(%a0)
	addq.l #5,234(%a1)
	move.b #1,238(%a1)
	jra .L121
.L112:
	tst.b 97(%a1)
	jne .L136
	tst.b 99(%a1)
	jeq .L114
	move.b #1,112(%a0)
	clr.b 208(%a1)
	move.b #1,209(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #32,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
.L139:
	tst.b %d0
	jeq .L125
	jra .L100
.L134:
	move.b #1,107(%a0)
	moveq #24,%d1
	move.l %d1,300(%a0)
	move.b #1,304(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
.L138:
	tst.b %d0
	jeq .L125
	jra .L100
.L135:
	move.b #1,110(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L137
	moveq #16,%d1
.L140:
	move.l %d1,300(%a0)
	move.b #1,304(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L138
.L136:
	move.b #1,109(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #16,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L139
.L137:
	move.b #1,111(%a0)
	moveq #16,%d1
	jra .L140
.L114:
	tst.b 98(%a1)
	jeq .L115
	move.b #1,115(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #24,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L139
.L115:
	tst.b 103(%a1)
	jeq .L105
	move.b #1,116(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #16,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #50,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	tst.b %d0
	jeq .L125
	jra .L100
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 310(%a1),%d0
	cmp.w #1,%d0
	jeq .L156
	cmp.w #-1,%d0
	jeq .L157
.L145:
	move.w 310(%a0),%d0
	cmp.w #1,%d0
	jeq .L158
.L146:
	cmp.w #-1,%d0
	jne .L142
	move.w 290(%a0),%a2
	add.l _turnOffset,%a2
	move.w 290(%a1),%a1
	cmp.l %a2,%a1
	jle .L142
.L153:
	tst.b 164(%a0)
	jne .L142
	clr.b 313(%a0)
	move.b #1,164(%a0)
	move.b #1,312(%a0)
.L142:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L157:
	move.w 290(%a1),%a3
	add.l _turnOffset,%a3
	move.w 290(%a0),%a2
	cmp.l %a3,%a2
	jle .L145
	tst.b 164(%a1)
	jne .L145
.L159:
	clr.b 313(%a1)
	move.b #1,164(%a1)
	move.b #1,312(%a1)
	move.w 310(%a0),%d0
	cmp.w #1,%d0
	jne .L146
.L158:
	move.w 290(%a0),%a2
	move.w 290(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L153
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L156:
	move.w 290(%a1),%a3
	move.w 290(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L145
	tst.b 164(%a1)
	jne .L145
	jra .L159
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 310(%a0),%d0
	cmp.w #1,%d0
	jeq .L168
	cmp.w #-1,%d0
	jeq .L169
.L163:
	clr.b 169(%a0)
	clr.b 169(%a1)
.L161:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L169:
	move.w 290(%a1),%a3
	move.w 290(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L163
.L165:
	move.b #1,169(%a0)
	move.b #1,169(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L168:
	move.w 290(%a1),%a3
	move.w 290(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L165
	clr.b 169(%a0)
	clr.b 169(%a1)
	jra .L161
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
	move.l 12(%fp),300(%a1)
	move.b 19(%fp),304(%a1)
	move.l 24(%fp),%d0
	add.l %d0,234(%a0)
	move.b #1,238(%a0)
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
	tst.b 171(%a2)
	jne .L173
	tst.b 304(%a2)
	jne .L178
	move.l 296(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,296(%a2)
	jle .L179
.L176:
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	addq.l #4,%sp
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L173:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L178:
	clr.b 304(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 296(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,296(%a2)
	jgt .L176
.L179:
	clr.l 296(%a2)
	move.b #1,199(%a2)
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
	cmp.w #1,310(%a0)
	jeq .L186
	tst.b 342(%a0)
	jeq .L181
.L183:
	addq.w #2,290(%a0)
.L181:
	unlk %fp
	rts
.L186:
	tst.b 166(%a0)
	jeq .L183
	tst.b 342(%a0)
	jne .L183
	jra .L181
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,310(%a0)
	jeq .L189
	tst.b 166(%a0)
	jeq .L190
.L189:
	tst.b 342(%a0)
	jeq .L188
.L190:
	subq.w #2,290(%a0)
.L188:
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
	tst.b 82(%a0)
	jeq .L195
	move.l 226(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 290(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 292(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L195:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L203
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L203:
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
	move.w #90,292(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 290(%a2),%d0
	cmp.w #11,%d0
	jle .L219
.L207:
	cmp.w #280,%d0
	jgt .L211
.L216:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L219:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L215
	move.w 290(%a2),%d0
	cmp.w #11,%d0
	jgt .L207
	cmp.w #280,290(%a3)
	jgt .L215
	jsr (%a4)
	tst.b %d0
	jne .L215
	move.w 290(%a2),%d0
	cmp.w #280,%d0
	jle .L216
.L211:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L220
.L215:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L220:
	cmp.w #328,290(%a2)
	jle .L216
	cmp.w #10,290(%a3)
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
	move.w 310(%a0),%d1
	cmp.w #1,%d1
	jeq .L223
	tst.b 166(%a0)
	jne .L223
.L224:
	tst.l %d0
	jle .L227
	tst.b 342(%a0)
	jeq .L222
.L227:
	add.w %d0,290(%a0)
.L222:
	unlk %fp
	rts
.L223:
	tst.l %d0
	jlt .L230
	cmp.w #1,%d1
	jne .L224
.L231:
	tst.b 166(%a0)
	jne .L224
	add.w %d0,290(%a0)
	jra .L222
.L230:
	tst.b 342(%a0)
	jeq .L222
	cmp.w #1,%d1
	jne .L224
	jra .L231
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
	jeq .L233
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L239
	jlt .L243
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L237
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L238
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L275
.L235:
	sub.w 292(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L248
	jge .L276
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L250
	cmp.l #128,%d0
	jeq .L251
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L249
.L244:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L257
	jlt .L261
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L255
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L256
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L254
	moveq #84,%d1
	not.b %d1
.L253:
	cmp.l %a1,%d1
	jge .L233
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L264
	jlt .L270
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L264
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L264
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L264
	move.w #171,%d1
.L264:
	move.w %d1,12(%a0)
.L233:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L243:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L241
	cmp.l #128,%d0
	jeq .L242
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L235
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 292(%a2),%d1
.L249:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L258:
	moveq #78,%d1
	not.b %d1
	jra .L253
.L239:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 292(%a2),%d1
.L248:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L257:
	moveq #75,%d1
	not.b %d1
	jra .L253
.L237:
	move.w %a1,%d1
	sub.w 292(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L246:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L255:
	moveq #69,%d1
	not.b %d1
	jra .L253
.L241:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 292(%a2),%d1
.L250:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L259:
	moveq #81,%d1
	not.b %d1
	jra .L253
.L275:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 292(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L254:
	moveq #66,%d1
	not.b %d1
	jra .L253
.L270:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L264
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L264
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L264
	move.w #171,%d1
	jra .L264
.L238:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 292(%a2),%d1
.L247:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L256:
	moveq #72,%d1
	not.b %d1
	jra .L253
.L242:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 292(%a2),%d1
	add.w %a1,%d1
.L251:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L260:
	moveq #87,%d1
	not.b %d1
	jra .L253
.L276:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L246
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L247
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L244
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L254
.L261:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L259
	cmp.l #128,%d0
	jeq .L260
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L258
	moveq #84,%d1
	not.b %d1
	jra .L253
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L283
	jge .L290
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L285
	cmp.l #128,%d0
	jeq .L286
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L291
.L279:
	moveq #21,%d0
	unlk %fp
	rts
.L290:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L288
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L282
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L279
	moveq #3,%d0
	unlk %fp
	rts
.L282:
	moveq #9,%d0
	unlk %fp
	rts
.L286:
	moveq #24,%d0
	unlk %fp
	rts
.L291:
	moveq #15,%d0
	unlk %fp
	rts
.L285:
	moveq #18,%d0
	unlk %fp
	rts
.L288:
	moveq #6,%d0
	unlk %fp
	rts
.L283:
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
	cmp.w #1,310(%a0)
	jeq .L299
	move.w 290(%a0),%a2
	sub.w 290(%a1),%a2
	cmp.w #259,%a2
	jgt .L297
.L295:
	clr.b 343(%a0)
	clr.b 343(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L299:
	move.w 290(%a1),%a2
	sub.w 290(%a0),%a2
	cmp.w #259,%a2
	jle .L295
.L297:
	move.b #1,343(%a0)
	move.b #1,343(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,203(%a0)
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
	tst.b 238(%a3)
	jne .L303
	tst.b 238(%a2)
	jeq .L302
.L303:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 238(%a3)
	jne .L312
	tst.b 238(%a2)
	jeq .L302
.L313:
	clr.b 238(%a2)
	move.l 234(%a2),%d0
	move.l %d0,_tempScore
	jne .L309
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 234(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L302:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L312:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 234(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 238(%a2)
	jne .L313
	jra .L302
.L309:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L306:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L306
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L308
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 234(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L308:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 234(%a2),(%sp)
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
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 550(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 278(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L315
	move.b #1,208(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 115(%a2)
	clr.b 116(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 113(%a2)
	clr.b 112(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	move.b #1,161(%a2)
	clr.l 344(%a2)
	clr.w 16(%a3)
	move.w #90,292(%a2)
.L315:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 450(%a1),%a0
	clr.w 16(%a0)
	move.l 78(%a1),%d0
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
	tst.b 174(%a2)
	jne .L320
	move.b #1,174(%a2)
	clr.b 208(%a2)
	clr.b 175(%a2)
	moveq #-1,%d0
	move.l %d0,176(%a2)
	clr.l 180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,184(%a2)
	move.l %a0,278(%a2)
	move.b #1,123(%a2)
	tst.b 314(%a2)
	jeq .L322
	pea 16.w
	pea 14.w
	move.l 352(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
.L320:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L322:
	pea 16.w
	pea 15.w
	move.l 352(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
	jra .L320
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 174(%a0)
	move.b #1,208(%a0)
	tst.b 314(%a0)
	jne .L330
	pea 16.w
	pea 15.w
	move.l 348(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L330:
	pea 16.w
	pea 14.w
	move.l 348(%a0),-(%sp)
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
	tst.b 117(%a2)
	jne .L332
	move.b #1,117(%a2)
	clr.b 132(%a2)
	move.b #1,202(%a2)
	move.w 310(%a2),%d0
	move.w 290(%a2),%a4
	cmp.w #-1,%d0
	jeq .L346
	move.w 290(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,124(%a2)
.L335:
	cmp.w #149,%a0
	jgt .L336
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,124(%a2)
	tst.b 152(%a2)
	jeq .L347
.L337:
	moveq #0,%d2
	move.b 314(%a2),%d2
	move.l 306(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L339
.L350:
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L348
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L341:
	cmp.w #-1,310(%a2)
	jeq .L349
.L342:
	move.w 290(%a3),%d0
	ext.l %d0
	moveq #-48,%d3
	add.l %d0,%d3
	move.l %d3,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	move.l 78(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 450(%a3),%a1
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
.L332:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L336:
	clr.l 124(%a2)
	moveq #0,%d2
	move.b 314(%a2),%d2
	move.l 306(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jne .L350
.L339:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	cmp.w #-1,310(%a2)
	jne .L342
.L349:
	move.w 290(%a3),%d0
	ext.l %d0
	moveq #48,%d1
	add.l %d0,%d1
	move.l %d1,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	move.l 78(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 450(%a3),%a1
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
	jra .L332
.L348:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L341
.L346:
	move.l %a4,%a0
	sub.w 290(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,124(%a2)
	jra .L335
.L347:
	move.b #1,152(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,154(%a2)
	jra .L337
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
	jeq .L392
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L396
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L397
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L392
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L392
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L398
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L352
	tst.b 211(%a3)
	jne .L352
	move.b #1,211(%a3)
	tst.b 90(%a2)
	jeq .L399
	move.b #1,146(%a3)
.L384:
	move.b #1,91(%a2)
	move.b #1,197(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
.L352:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L392:
	move.b #1,211(%a3)
	tst.b 90(%a2)
	jne .L384
	tst.b 86(%a2)
	jeq .L372
	move.b #1,115(%a2)
	moveq #20,%d0
	move.l %d0,300(%a2)
	clr.b 304(%a2)
	add.l %d0,234(%a3)
	move.b #1,238(%a3)
.L400:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L396:
	move.b #1,211(%a3)
	tst.b 90(%a2)
	jne .L384
	tst.b 86(%a2)
	jeq .L360
	move.b #1,115(%a2)
	move.b #1,202(%a2)
.L387:
	move.b #1,122(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
.L401:
	moveq #20,%d0
	move.l %d0,300(%a2)
	clr.b 304(%a2)
	add.l %d0,234(%a3)
	move.b #1,238(%a3)
	jra .L400
.L397:
	move.b #1,211(%a3)
	tst.b 90(%a2)
	jne .L384
	tst.b 86(%a2)
	jeq .L364
	move.b #1,115(%a2)
	move.b #1,122(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L401
.L372:
	move.b #1,107(%a2)
	move.b #1,122(%a2)
	moveq #20,%d0
	move.l %d0,300(%a2)
	clr.b 304(%a2)
	add.l %d0,234(%a3)
	move.b #1,238(%a3)
	jra .L400
.L360:
	move.b #1,110(%a2)
	move.b #1,202(%a2)
	jra .L387
.L398:
	tst.b 211(%a3)
	jne .L352
	move.b #1,211(%a3)
	tst.b 174(%a2)
	jne .L402
	tst.b 90(%a2)
	jne .L384
	move.b #1,174(%a2)
	clr.b 208(%a2)
	clr.b 175(%a2)
	moveq #-1,%d0
	move.l %d0,176(%a2)
	clr.l 180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,184(%a2)
	move.l %a0,278(%a2)
	move.b #1,123(%a2)
	tst.b 314(%a2)
	jeq .L381
	pea 16.w
	pea 14.w
	move.l 352(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 300(%a2)
.L386:
	clr.b 304(%a2)
	moveq #20,%d1
	add.l %d1,234(%a3)
	move.b #1,238(%a3)
	addq.l #8,%sp
.L404:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L364:
	move.b #1,110(%a2)
	move.b #1,122(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L401
.L402:
	clr.b 174(%a2)
	move.b #1,208(%a2)
	tst.b 314(%a2)
	jne .L403
	pea 16.w
	pea 15.w
	move.l 348(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L377:
	move.l 78(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 174(%a3)
	jne .L352
	move.b #1,174(%a3)
	clr.b 208(%a3)
	clr.b 175(%a3)
	move.l %d1,176(%a3)
	clr.l 180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,184(%a3)
	move.l %a0,278(%a3)
	move.b #1,123(%a3)
	tst.b 314(%a3)
	jeq .L378
	pea 16.w
	pea 14.w
	move.l 352(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 314(%a3),%d0
	move.l %d0,12(%fp)
	move.l 306(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
.L399:
	move.b #1,133(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a3)
	move.w #-1,142(%a3)
	move.w #32,138(%a3)
	clr.w 144(%a3)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z14fighterHarpoonP7FighterS0_
	moveq #8,%d0
	move.l %d0,300(%a2)
	clr.b 304(%a2)
	moveq #20,%d1
	add.l %d1,234(%a3)
	move.b #1,238(%a3)
	addq.l #8,%sp
	jra .L404
.L403:
	pea 16.w
	pea 14.w
	move.l 348(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L377
.L381:
	pea 16.w
	pea 15.w
	move.l 352(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 300(%a2)
	jra .L386
.L378:
	pea 16.w
	pea 15.w
	move.l 352(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 314(%a3),%d0
	move.l %d0,12(%fp)
	move.l 306(%a3),8(%fp)
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
	tst.b 163(%a3)
	jeq .L407
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L424
.L407:
	tst.b 163(%a2)
	jeq .L408
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L425
.L408:
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
	jlt .L406
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L411
.L432:
	cmp.w #0,%a0
	jlt .L406
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 78(%a3),%d0
	cmp.l %d2,%d0
	jeq .L412
	cmp.l 78(%a2),%d2
	jeq .L412
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L412:
	cmp.l %d0,%d3
	jeq .L413
	cmp.l 78(%a2),%d3
	jeq .L413
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L413:
	moveq #63,%d5
	cmp.l %d2,%d5
	jeq .L426
	moveq #58,%d1
	cmp.l %d2,%d1
	jeq .L427
	moveq #64,%d0
	cmp.l %d2,%d0
	jne .L418
	moveq #58,%d1
	cmp.l %d3,%d1
	jeq .L428
.L418:
	tst.b 189(%a3)
	jeq .L419
	cmp.l 78(%a3),%d2
	jeq .L429
.L419:
	tst.b 189(%a2)
	jeq .L420
	cmp.l 78(%a2),%d2
	jeq .L430
.L420:
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L431
.L421:
	move.l colliders,%d0
.L422:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L432
.L411:
	cmp.w #0,%a0
	jge .L422
.L406:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L431:
	moveq #58,%d1
	cmp.l %d3,%d1
	jne .L421
	tst.b 84(%a2)
	jeq .L421
	move.b #1,163(%a2)
	move.b #1,188(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,274(%a3)
	move.l colliders,%d0
	jra .L422
.L429:
	moveq #61,%d5
	cmp.l %d3,%d5
	jne .L419
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L419
.L430:
	moveq #58,%d0
	cmp.l %d3,%d0
	jne .L420
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #61,%d0
	cmp.l %d2,%d0
	jne .L421
	jra .L431
.L427:
	moveq #61,%d5
	cmp.l %d3,%d5
	jne .L418
	tst.b 84(%a3)
	jeq .L418
	move.w 290(%a3),%d0
	cmp.w #10,%d0
	jle .L418
	cmp.w #328,%d0
	jgt .L418
	move.w 290(%a2),%d0
	cmp.w #10,%d0
	jle .L418
	cmp.w #328,%d0
	jgt .L418
	move.b #1,163(%a3)
	move.b #1,188(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,274(%a2)
	jra .L418
.L426:
	moveq #61,%d0
	cmp.l %d3,%d0
	jne .L418
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L418
.L428:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L418
.L424:
	clr.b 163(%a3)
	jra .L407
.L425:
	clr.b 163(%a2)
	jra .L408
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 152(%a0)
	jne .L434
	move.b #1,152(%a0)
	move.l 12(%fp),154(%a0)
.L434:
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHarpoonCheckP7FighterS0_
__Z19fighterHarpoonCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.b 134(%a2),%d2
	jeq .L439
	tst.b 152(%a0)
	jeq .L446
.L440:
	cmp.w #-1,310(%a0)
	jeq .L447
.L442:
	move.w 290(%a0),%d3
	move.w 290(%a2),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,140(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L450
	addq.l #1,%d1
.L450:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,136(%a2)
	tst.b %d2
	jne .L448
.L444:
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 310(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,136(%a2)
.L438:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L448:
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	move.l %a0,88(%a1,%d0.l)
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L446:
	tst.b 132(%a0)
	jeq .L440
	clr.b 134(%a2)
	move.l 450(%a2),%a0
	clr.w 16(%a0)
	move.l 78(%a2),%d0
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
	move.l 78(%a2),%d0
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
.L439:
	tst.b 133(%a2)
	jeq .L438
	cmp.w #-1,310(%a0)
	jne .L442
.L447:
	move.w 290(%a2),%d3
	move.w 290(%a0),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,140(%a2)
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
	sub.w %d1,%d0
	move.w %d0,136(%a2)
	tst.b %d2
	jeq .L444
	jra .L448
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
