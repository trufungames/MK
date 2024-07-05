#NO_APP
	.text
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
	jcc .L15
.L4:
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
.L15:
	move.l (%a0),%d0
	add.l %d0,%d0
	move.w .L12(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L12:
	.word .L4-.L12
	.word .L5-.L12
	.word .L6-.L12
	.word .L7-.L12
	.word .L8-.L12
	.word .L10-.L12
	.word .L10-.L12
	.word .L11-.L12
.L10:
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
.L5:
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
.L6:
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
.L7:
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
.L8:
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
.L11:
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
	jne .L21
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
	move.w #-1,318(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,298(%a0)
	move.w #106,300(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L21:
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
	move.w #1,318(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,298(%a0)
	move.w #106,300(%a0)
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
	move.l #0x400ccccd,324(%a2)
	clr.l 328(%a2)
	move.l #0xc1800000,332(%a2)
	move.l #0xc1a80000,336(%a2)
	move.l #0xc0800000,340(%a2)
	move.l #0x40a00000,344(%a2)
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 202(%a2)
	clr.b 203(%a2)
	move.l 16(%fp),314(%a2)
	move.l 20(%fp),402(%a2)
	move.l 24(%fp),406(%a2)
	move.l 28(%fp),410(%a2)
	move.l 32(%fp),414(%a2)
	move.l 36(%fp),426(%a2)
	move.l 40(%fp),430(%a2)
	move.l 44(%fp),418(%a2)
	move.l 48(%fp),422(%a2)
	move.l 52(%fp),434(%a2)
	move.l 56(%fp),438(%a2)
	move.l 60(%fp),442(%a2)
	move.l 64(%fp),446(%a2)
	move.l 68(%fp),450(%a2)
	clr.l 230(%a2)
	move.l #0x40000000,244(%a2)
	move.l #0x40000000,248(%a2)
	move.l #0x40000000,252(%a2)
	move.l #0x40800000,256(%a2)
	move.l #0x40d00000,260(%a2)
	move.l #0x41000000,264(%a2)
	clr.l 272(%a2)
	move.l #0x40f00000,268(%a2)
	move.l #0x3f800000,276(%a2)
	moveq #1,%d0
	move.l %d0,290(%a2)
	clr.l 294(%a2)
	clr.l 282(%a2)
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
	move.b #1,107(%a2)
	move.b #1,105(%a2)
	clr.b 108(%a2)
	move.b #1,106(%a2)
	move.b #1,208(%a2)
	clr.b 280(%a2)
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
	move.b %d2,322(%a2)
	move.b #120,%d1
	move.l %d1,304(%a2)
	clr.l 308(%a2)
	clr.b 312(%a2)
	clr.b 320(%a2)
	clr.b 321(%a2)
	move.b #1,350(%a2)
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
	moveq #63,%d1
	move.l %d1,226(%a2)
	moveq #61,%d2
	move.l %d2,78(%a2)
	move.b #2,%d1
	move.l %d1,240(%a2)
	move.w #210,298(%a2)
	moveq #-1,%d2
	move.l %d2,11736(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #-1,318(%a2)
	move.l #11712,%d0
	move.b #61,%d1
.L25:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 454(%a2),%a1
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
	move.w #90,300(%a2)
	lea (12,%sp),%sp
	tst.b 82(%a2)
	jeq .L26
	move.l 226(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 298(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
.L26:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,203(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L28:
	moveq #62,%d2
	move.l %d2,226(%a2)
	move.b #58,%d1
	move.l %d1,78(%a2)
	move.b #1,%d2
	move.l %d2,240(%a2)
	move.w #50,298(%a2)
	move.l %d2,11160(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,318(%a2)
	move.l #11136,%d0
	jra .L25
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 348(%a0)
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
	jeq .L32
	tst.b 105(%a2)
	jne .L37
.L32:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L33
	tst.b 105(%a2)
	jne .L38
.L33:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L34
	tst.b 105(%a2)
	jne .L39
.L34:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L31
	tst.b 105(%a2)
	jeq .L31
	tst.b 108(%a2)
	jeq .L40
.L31:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L39:
	tst.b 108(%a2)
	jne .L34
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 230(%a2),%d0
	addq.l #8,%sp
	jra .L34
.L38:
	tst.b 108(%a2)
	jne .L33
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 230(%a2),%d0
	addq.l #8,%sp
	jra .L33
.L37:
	tst.b 108(%a2)
	jne .L32
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 230(%a2),%d0
	addq.l #8,%sp
	jra .L32
.L40:
	move.b #1,108(%a2)
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
	jeq .L43
	tst.b 107(%a2)
	jne .L48
.L43:
	move.w 380(%a2),%a0
	move.l %a0,-(%sp)
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L49
	tst.b 189(%a2)
	jne .L50
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L50:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 386(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L49:
	move.b #1,189(%a2)
	clr.b 192(%a2)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	addq.l #4,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L48:
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	jra .L43
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
	jeq .L55
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L56
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L59
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L59:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L56:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L55:
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
	jeq .L66
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L66:
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
	jeq .L70
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L74
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L70:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L74:
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
	jle .L81
.L77:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L81:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L82
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L82:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L77
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
	jne .L88
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L89
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L89:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L88:
	move.l %d2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z11sfxCrowdAwwP12SoundHandler
	.even
	.globl	__Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
__Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #12348,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 162(%a2)
	jne .L92
	tst.b 111(%a2)
	jne .L93
	tst.b 112(%a2)
	jeq .L233
.L93:
	move.l 308(%a2),%d2
	tst.b 171(%a2)
	jne .L95
	tst.b 312(%a2)
	jne .L234
	move.l 304(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,304(%a2)
	jle .L235
.L97:
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	clr.l (%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L95:
	clr.l 308(%a2)
	clr.l 272(%a2)
	move.b #1,162(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	move.l %a0,294(%a2)
	clr.w 16(%a3)
	move.l 336(%a2),328(%a2)
	move.b 121(%a2),%d1
	jne .L98
	tst.b 122(%a2)
	jne .L98
	tst.b 166(%a2)
	jeq .L100
	clr.l 328(%a2)
.L100:
	tst.b 111(%a2)
	jne .L101
.L245:
	tst.b 112(%a2)
	jne .L101
	tst.b 120(%a2)
	jne .L101
	tst.b 115(%a2)
	jne .L101
	tst.b 114(%a2)
	jne .L101
	move.b 110(%a2),%d0
.L103:
	tst.b 116(%a2)
	jeq .L236
.L107:
	tst.b %d0
	jne .L108
	tst.b 117(%a2)
	jeq .L109
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
.L106:
	tst.b %d0
	jne .L111
.L115:
	move.b 112(%a2),%d1
	jne .L116
	tst.b 113(%a2)
	jeq .L237
.L116:
	move.w 298(%a2),%a4
	move.w 318(%a2),%d0
	cmp.w #-1,%d0
	jeq .L238
.L117:
	cmp.w #1,%d0
	jeq .L239
.L118:
	tst.b 109(%a2)
	jne .L119
	tst.b %d1
	jne .L120
	tst.b 115(%a2)
	jne .L120
	tst.b 116(%a2)
	jne .L120
	tst.b 113(%a2)
	jne .L240
	tst.b 119(%a2)
	jne .L123
	tst.b 118(%a2)
	jne .L123
.L92:
	tst.b 111(%a2)
	jeq .L124
	tst.b 162(%a2)
	jne .L241
.L124:
	tst.b 112(%a2)
	jeq .L94
	tst.b 162(%a2)
	jne .L242
.L94:
	tst.b 113(%a2)
	jeq .L243
.L126:
	tst.b 162(%a2)
	jne .L244
.L127:
	tst.b 114(%a2)
	jeq .L134
	tst.b 162(%a2)
	jeq .L134
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 290(%a2),%d0
	cmp.l %a0,%d0
	jle .L135
	move.w 318(%a2),%a4
	move.w 298(%a2),%d0
.L136:
	move.l %a4,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 114(%a2)
	clr.b 162(%a2)
.L91:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L243:
	tst.b 115(%a2)
	jeq .L127
	tst.b 162(%a2)
	jeq .L127
.L244:
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 290(%a2),%d0
	cmp.l %a0,%d0
	jle .L128
	move.w 318(%a2),%a4
	move.w 298(%a2),%d0
.L129:
	move.l %a4,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 113(%a2)
	clr.b 115(%a2)
	clr.b 162(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L98:
	move.l 340(%a2),328(%a2)
	tst.b 111(%a2)
	jeq .L245
.L101:
	move.b 110(%a2),%d0
	jne .L103
	moveq #0,%d1
	move.b 322(%a2),%d1
	move.l 314(%a2),%d0
	moveq #7,%d2
	cmp.l (%a2),%d2
	jeq .L246
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L115
	jra .L111
.L236:
	tst.b 122(%a2)
	jne .L107
.L108:
	tst.b 113(%a2)
	jne .L110
	tst.b 119(%a2)
	jne .L110
	tst.b 118(%a2)
	jeq .L247
.L110:
	tst.b %d0
	jeq .L248
.L111:
	clr.b 110(%a2)
	jra .L115
.L134:
	tst.b 116(%a2)
	jeq .L141
	tst.b 162(%a2)
	jeq .L141
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 290(%a2),%d0
	cmp.l %a0,%d0
	jle .L142
	move.w 318(%a2),%a4
	move.w 298(%a2),%d0
	move.l %a4,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
.L270:
	clr.b 116(%a2)
	clr.b 117(%a2)
	clr.b 162(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L141:
	tst.b 120(%a2)
	jeq .L148
	tst.b 162(%a2)
	jne .L249
.L148:
	move.b 166(%a2),%d2
	jeq .L149
	tst.b 162(%a2)
	jeq .L149
	tst.b 167(%a2)
	jne .L150
	tst.b 168(%a2)
	jeq .L151
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L150:
	tst.b 160(%a2)
	jne .L218
.L152:
	cmp.w #1,16(%a3)
	jle .L91
	move.w raptor_ticks,%a0
	cmp.l 286(%a2),%a0
	jlt .L91
	tst.b 167(%a2)
	jeq .L250
	move.w 300(%a2),%d0
	cmp.w #122,%d0
	jle .L159
	move.b #1,160(%a2)
	move.l %a0,286(%a2)
	move.w #90,300(%a2)
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 590(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 314(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 171(%a2)
	jne .L160
	tst.b 312(%a2)
	jne .L251
	moveq #-32,%d0
	add.l 304(%a2),%d0
	move.l %d0,304(%a2)
	jle .L252
.L162:
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	clr.l (%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L160:
	move.w 318(%a2),%d2
	lea ___floatsisf,%a5
	move.w %d2,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 264(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L163
	tst.b 166(%a2)
	jne .L163
.L164:
	tst.l %d0
	jle .L167
	tst.b 350(%a2)
	jeq .L166
.L167:
	add.w %d0,298(%a2)
.L166:
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 344(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,300(%a2)
	move.w raptor_ticks,%a1
	move.l %a1,286(%a2)
.L265:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L120:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr __Z10bloodSpraysss
	lea (12,%sp),%sp
	jra .L92
.L119:
	clr.b 109(%a2)
	jra .L92
.L233:
	tst.b 113(%a2)
	jne .L93
	tst.b 119(%a2)
	jne .L93
	tst.b 118(%a2)
	jne .L93
	tst.b 120(%a2)
	jne .L93
	tst.b 115(%a2)
	jne .L93
	tst.b 114(%a2)
	jne .L93
	tst.b 121(%a2)
	jne .L93
	tst.b 116(%a2)
	jne .L93
	tst.b 122(%a2)
	jne .L93
	tst.b 166(%a2)
	jne .L93
	tst.b 113(%a2)
	jne .L126
	jra .L243
.L241:
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 111(%a2)
	clr.b 162(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L237:
	tst.b 119(%a2)
	jne .L116
	tst.b 118(%a2)
	jne .L116
	tst.b 115(%a2)
	jne .L116
	tst.b 116(%a2)
	jeq .L92
	move.w 298(%a2),%a4
	move.w 318(%a2),%d0
	cmp.w #-1,%d0
	jne .L117
.L238:
	lea (40,%a4),%a4
	jra .L118
.L242:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a1
	move.l %a1,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 112(%a2)
	clr.b 162(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L149:
	tst.b 121(%a2)
	jne .L168
	tst.b 122(%a2)
	jeq .L169
.L168:
	tst.b 162(%a2)
	jeq .L169
	tst.b 160(%a2)
	jne .L219
	move.w raptor_ticks,%a0
	cmp.l 286(%a2),%a0
	jlt .L91
	move.w 318(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 256(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L171
	tst.b %d2
	jne .L171
.L172:
	tst.l %d0
	jle .L175
	tst.b 350(%a2)
	jeq .L174
.L175:
	add.w %d0,298(%a2)
.L174:
	move.b 158(%a2),%d3
	move.l 328(%a2),%d2
	tst.b %d3
	jne .L177
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,300(%a2)
	move.l 324(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,328(%a2)
.L177:
	move.l %d2,-(%sp)
	move.l 336(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L178
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L253
.L178:
	tst.b 159(%a2)
	jne .L182
	tst.b %d3
	jne .L183
	tst.b 122(%a2)
	jeq .L254
.L183:
	move.b #1,158(%a2)
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a1
	move.l %a1,-(%sp)
	move.l 554(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L181
	move.b #1,159(%a2)
	clr.b 158(%a2)
.L181:
	move.w raptor_ticks,%a1
	move.l %a1,286(%a2)
.L267:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L239:
	lea (-40,%a4),%a4
	jra .L118
.L234:
	clr.b 312(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 304(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,304(%a2)
	jgt .L97
.L235:
	clr.l 304(%a2)
	move.b #1,199(%a2)
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	clr.l (%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L95
.L128:
	move.w 318(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 252(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L130
	tst.b 166(%a2)
	jeq .L131
.L130:
	tst.l %d0
	jlt .L255
.L132:
	cmp.w #1,%d2
	jne .L131
	tst.b 166(%a2)
	jeq .L133
.L131:
	tst.l %d0
	jle .L133
	tst.b 350(%a2)
	jeq .L207
.L133:
	add.w 298(%a2),%d0
	move.w %d0,298(%a2)
	jra .L129
.L248:
	move.l 314(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 322(%a2),%d2
	move.l 314(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L113
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L256
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L115
	jra .L111
.L169:
	tst.b 118(%a2)
	jeq .L185
	tst.b 162(%a2)
	jeq .L185
	tst.b 160(%a2)
	jne .L219
	move.l 286(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L91
	move.w 318(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 256(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L187
	tst.b %d2
	jne .L187
.L188:
	tst.l %d0
	jle .L191
	tst.b 350(%a2)
	jeq .L190
.L191:
	add.w %d0,298(%a2)
.L190:
	move.l 352(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,300(%a2)
	addq.l #1,%a0
	move.l %a0,352(%a2)
	moveq #8,%d2
	cmp.l %a0,%d2
	jeq .L257
.L192:
	moveq #25,%d3
	cmp.l %a0,%d3
	jeq .L258
.L193:
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 550(%a2),-(%sp)
.L213:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	lea (36,%sp),%sp
.L261:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L185:
	tst.b 119(%a2)
	jeq .L194
	tst.b 162(%a2)
	jeq .L194
	tst.b 160(%a2)
	jne .L218
	move.l 286(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L91
	move.w 318(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 256(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L196
	tst.b %d2
	jne .L196
.L197:
	tst.l %d0
	jle .L200
	tst.b 350(%a2)
	jeq .L199
.L200:
	add.w %d0,298(%a2)
.L199:
	move.l 352(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,300(%a2)
	addq.l #1,%a0
	move.l %a0,352(%a2)
	moveq #8,%d2
	cmp.l %a0,%d2
	jeq .L259
.L201:
	moveq #25,%d3
	cmp.l %a0,%d3
	jeq .L260
.L202:
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
.L268:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	lea (36,%sp),%sp
	jra .L261
.L194:
	tst.b 161(%a2)
	jeq .L91
	tst.b 162(%a2)
	jeq .L91
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 562(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 50(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 162(%a2)
	clr.b 161(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L109:
	move.l 314(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.b 110(%a2),%d0
	addq.l #4,%sp
	jeq .L115
	jra .L111
.L246:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L115
	jra .L111
.L249:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a1
	move.l %a1,-(%sp)
	move.l 558(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	move.l 314(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 120(%a2)
	move.b #1,161(%a2)
	clr.w 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L247:
	tst.b %d1
	jeq .L106
	tst.b %d0
	jne .L111
	jra .L248
.L255:
	tst.b 350(%a2)
	jne .L132
.L207:
	move.w 298(%a2),%d0
	jra .L129
.L113:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L115
	jra .L111
.L219:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
.L215:
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 286(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L91
	move.b #1,208(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 119(%a2)
	clr.b 118(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	move.b #1,161(%a2)
	clr.l 352(%a2)
	clr.w 16(%a3)
	move.w #90,300(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L218:
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a1
	pea -1(%a1)
	jra .L215
.L123:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.w %a4,%d2
	ext.l %d2
	move.w 300(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.l %d2,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 300(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 300(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%d0
	add.w #-40,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	move.w 318(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.w 318(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 318(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w %d0,%a4
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	jra .L92
.L171:
	tst.l %d0
	jlt .L262
.L173:
	cmp.w #1,%d3
	jne .L172
	tst.b %d2
	jne .L172
	add.w %d0,298(%a2)
	jra .L174
.L163:
	tst.l %d0
	jlt .L263
.L165:
	cmp.w #1,%d2
	jne .L164
	tst.b 166(%a2)
	jne .L164
	add.w %d0,298(%a2)
	jra .L166
.L262:
	tst.b 350(%a2)
	jne .L173
	jra .L174
.L187:
	tst.l %d0
	jlt .L264
.L189:
	cmp.w #1,%d3
	jne .L188
	tst.b %d2
	jne .L188
	add.w %d0,298(%a2)
	jra .L190
.L263:
	tst.b 350(%a2)
	jne .L165
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 344(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,300(%a2)
	move.w raptor_ticks,%a1
	move.l %a1,286(%a2)
	jra .L265
.L196:
	tst.l %d0
	jlt .L266
.L198:
	cmp.w #1,%d3
	jne .L197
	tst.b %d2
	jne .L197
	add.w %d0,298(%a2)
	jra .L199
.L258:
	move.b #1,160(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	clr.l 352(%a2)
	move.w #90,300(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 314(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 352(%a2),%a0
	addq.l #4,%sp
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 550(%a2),-(%sp)
	jra .L213
.L251:
	clr.b 312(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	moveq #-32,%d0
	add.l 304(%a2),%d0
	move.l %d0,304(%a2)
	jgt .L162
	jra .L252
.L264:
	tst.b 350(%a2)
	jne .L189
	move.l 352(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,300(%a2)
	addq.l #1,%a0
	move.l %a0,352(%a2)
	moveq #8,%d2
	cmp.l %a0,%d2
	jne .L192
	jra .L257
.L252:
	clr.l 304(%a2)
	move.b #1,199(%a2)
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	clr.l (%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L160
.L253:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a1
	move.l %a1,286(%a2)
	jra .L267
.L254:
	move.l 314(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L183
.L260:
	move.b #1,160(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	clr.l 352(%a2)
	move.w #90,300(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 314(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 352(%a2),%a0
	addq.l #4,%sp
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	jra .L268
.L257:
	move.l 314(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 352(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d3
	cmp.l %a0,%d3
	jne .L193
	jra .L258
.L266:
	tst.b 350(%a2)
	jne .L198
	move.l 352(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,300(%a2)
	addq.l #1,%a0
	move.l %a0,352(%a2)
	moveq #8,%d2
	cmp.l %a0,%d2
	jne .L201
.L259:
	move.l 314(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 352(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d3
	cmp.l %a0,%d3
	jne .L202
	jra .L260
.L135:
	move.w 318(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 252(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L137
	tst.b 166(%a2)
	jne .L137
.L138:
	tst.l %d0
	jle .L140
	tst.b 350(%a2)
	jeq .L208
.L140:
	add.w 298(%a2),%d0
	move.w %d0,298(%a2)
	jra .L136
.L137:
	tst.l %d0
	jlt .L269
.L139:
	cmp.w #1,%d2
	jne .L138
	tst.b 166(%a2)
	jne .L138
	add.w 298(%a2),%d0
	move.w %d0,298(%a2)
	jra .L136
.L269:
	tst.b 350(%a2)
	jne .L139
.L208:
	move.w 298(%a2),%d0
	jra .L136
.L142:
	move.w 318(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 252(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L144
	tst.b 166(%a2)
	jne .L144
.L145:
	tst.l %d0
	jle .L147
	tst.b 350(%a2)
	jeq .L209
.L147:
	add.w 298(%a2),%d0
	move.w %d0,298(%a2)
.L272:
	move.l %a4,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	jra .L270
.L144:
	tst.l %d0
	jlt .L271
.L146:
	cmp.w #1,%d2
	jne .L145
	tst.b 166(%a2)
	jne .L145
	add.w 298(%a2),%d0
	move.w %d0,298(%a2)
	jra .L272
.L271:
	tst.b 350(%a2)
	jne .L146
.L209:
	move.w 298(%a2),%d0
	move.l %a4,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	jra .L270
.L256:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L115
	jra .L111
.L151:
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 590(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 160(%a2)
	jeq .L152
	jra .L218
.L240:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 318(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%d1
	add.w #-30,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr __Z9bloodDropsss
	lea (12,%sp),%sp
	jra .L92
.L182:
	move.w 300(%a2),%d0
	cmp.w #90,%d0
	jle .L184
	move.b #1,160(%a2)
	move.w raptor_ticks,%a1
	move.l %a1,286(%a2)
	move.w #90,300(%a2)
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 314(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a1
	move.l %a1,286(%a2)
	jra .L267
.L159:
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 590(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L160
.L250:
	move.b #1,167(%a2)
	move.w 318(%a2),%d1
	move.w %d1,%d0
	ext.l %d0
	lsl.l #4,%d0
	cmp.w #1,%d1
	jeq .L154
	tst.b 166(%a2)
	jne .L154
.L155:
	tst.l %d0
	jle .L158
	tst.b 350(%a2)
	jeq .L157
.L158:
	add.w %d0,298(%a2)
.L157:
	move.w #48,300(%a2)
.L274:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L154:
	tst.l %d0
	jlt .L273
.L156:
	cmp.w #1,%d1
	jne .L155
	tst.b 166(%a2)
	jne .L155
	add.w %d0,298(%a2)
	jra .L157
.L273:
	tst.b 350(%a2)
	jne .L156
	move.w #48,300(%a2)
	jra .L274
.L184:
	move.w 318(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a1
	move.l %a1,286(%a2)
	jra .L267
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
	clr.b 280(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 165(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 168(%a0)
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
	clr.b 312(%a0)
	clr.b 320(%a0)
	clr.b 321(%a0)
	move.b #1,350(%a0)
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
	clr.l 308(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
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
	move.l 454(%a3),%a0
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
	move.l 454(%a2),%a0
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
	jne .L280
	tst.b 90(%a0)
	jne .L280
.L281:
	tst.b 92(%a1)
	jne .L310
.L283:
	tst.b 93(%a1)
	jeq .L285
	tst.b 89(%a0)
	jne .L285
	move.b #1,112(%a0)
	moveq #8,%d1
	move.l %d1,308(%a0)
	clr.b 312(%a0)
	addq.l #5,234(%a1)
	move.b #1,238(%a1)
.L284:
	tst.b %d0
	jne .L279
.L304:
	tst.b 90(%a0)
	jeq .L297
.L311:
	tst.b 89(%a0)
	jeq .L297
	move.b #1,91(%a0)
	move.b #1,197(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,286(%a0)
.L300:
	tst.b 165(%a1)
	jeq .L279
	move.w 298(%a1),204(%a0)
	move.w 300(%a1),206(%a0)
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
	move.l %a0,286(%a1)
.L279:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L280:
	tst.b 171(%a0)
	jne .L281
	tst.b %d0
	jne .L279
	tst.b 90(%a0)
	jeq .L304
	move.b #1,91(%a0)
	move.b #1,197(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,286(%a0)
	tst.b 90(%a0)
	jne .L311
.L297:
	tst.b 100(%a1)
	jeq .L299
	move.b #1,120(%a0)
	moveq #16,%d0
	move.l %d0,308(%a0)
	clr.b 312(%a0)
	moveq #10,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L300
.L310:
	tst.b 89(%a0)
	jne .L283
	move.b #1,111(%a0)
	moveq #8,%d1
	move.l %d1,308(%a0)
	clr.b 312(%a0)
	addq.l #5,234(%a1)
	move.b #1,238(%a1)
	jra .L284
.L285:
	tst.b 94(%a1)
	jeq .L286
	tst.b 89(%a0)
	jne .L286
	move.b #1,111(%a0)
	moveq #20,%d1
	move.l %d1,308(%a0)
	clr.b 312(%a0)
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
.L312:
	tst.b %d0
	jeq .L304
	jra .L279
.L286:
	tst.b 95(%a1)
	jeq .L287
	tst.b 89(%a0)
	jne .L287
	move.b #1,113(%a0)
	moveq #20,%d1
	move.l %d1,308(%a0)
	clr.b 312(%a0)
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L312
.L287:
	tst.b 101(%a1)
	jeq .L288
	tst.b 89(%a0)
	jeq .L313
.L288:
	tst.b 102(%a1)
	jeq .L289
	tst.b 89(%a0)
	jeq .L314
.L289:
	tst.b 96(%a1)
	jeq .L291
	move.b #1,115(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,286(%a1)
	moveq #20,%d1
	move.l %d1,308(%a0)
	move.b #1,312(%a0)
	move.b #10,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	tst.b %d0
	jeq .L304
	jra .L279
.L299:
	tst.b 104(%a1)
	jeq .L300
	move.b #1,114(%a0)
	clr.b 208(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,286(%a1)
	moveq #8,%d0
	move.l %d0,308(%a0)
	clr.b 312(%a0)
	addq.l #5,234(%a1)
	move.b #1,238(%a1)
	jra .L300
.L291:
	tst.b 97(%a1)
	jne .L315
	tst.b 99(%a1)
	jeq .L293
	move.b #1,118(%a0)
	clr.b 208(%a1)
	move.b #1,209(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,286(%a1)
	moveq #32,%d1
	move.l %d1,308(%a0)
	clr.b 312(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
.L318:
	tst.b %d0
	jeq .L304
	jra .L279
.L313:
	move.b #1,113(%a0)
	moveq #24,%d1
	move.l %d1,308(%a0)
	move.b #1,312(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
.L317:
	tst.b %d0
	jeq .L304
	jra .L279
.L314:
	move.b #1,116(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L316
	moveq #16,%d1
.L319:
	move.l %d1,308(%a0)
	move.b #1,312(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L317
.L315:
	move.b #1,115(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,286(%a1)
	moveq #16,%d1
	move.l %d1,308(%a0)
	clr.b 312(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L318
.L316:
	move.b #1,117(%a0)
	moveq #16,%d1
	jra .L319
.L293:
	tst.b 98(%a1)
	jeq .L294
	move.b #1,121(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,286(%a1)
	moveq #24,%d1
	move.l %d1,308(%a0)
	clr.b 312(%a0)
	move.b #20,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	jra .L318
.L294:
	tst.b 103(%a1)
	jeq .L284
	move.b #1,122(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,286(%a1)
	moveq #16,%d1
	move.l %d1,308(%a0)
	clr.b 312(%a0)
	move.b #50,%d1
	add.l %d1,234(%a1)
	move.b #1,238(%a1)
	tst.b %d0
	jeq .L304
	jra .L279
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 318(%a1),%d0
	cmp.w #1,%d0
	jeq .L335
	cmp.w #-1,%d0
	jeq .L336
.L324:
	move.w 318(%a0),%d0
	cmp.w #1,%d0
	jeq .L337
.L325:
	cmp.w #-1,%d0
	jne .L321
	move.w 298(%a0),%a2
	add.l _turnOffset,%a2
	move.w 298(%a1),%a1
	cmp.l %a2,%a1
	jle .L321
.L332:
	tst.b 164(%a0)
	jne .L321
	clr.b 321(%a0)
	move.b #1,164(%a0)
	move.b #1,320(%a0)
.L321:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L336:
	move.w 298(%a1),%a3
	add.l _turnOffset,%a3
	move.w 298(%a0),%a2
	cmp.l %a3,%a2
	jle .L324
	tst.b 164(%a1)
	jne .L324
.L338:
	clr.b 321(%a1)
	move.b #1,164(%a1)
	move.b #1,320(%a1)
	move.w 318(%a0),%d0
	cmp.w #1,%d0
	jne .L325
.L337:
	move.w 298(%a0),%a2
	move.w 298(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L332
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L335:
	move.w 298(%a1),%a3
	move.w 298(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L324
	tst.b 164(%a1)
	jne .L324
	jra .L338
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 318(%a0),%d0
	cmp.w #1,%d0
	jeq .L347
	cmp.w #-1,%d0
	jeq .L348
.L342:
	clr.b 169(%a0)
	clr.b 169(%a1)
.L340:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L348:
	move.w 298(%a1),%a3
	move.w 298(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L342
.L344:
	move.b #1,169(%a0)
	move.b #1,169(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L347:
	move.w 298(%a1),%a3
	move.w 298(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L344
	clr.b 169(%a0)
	clr.b 169(%a1)
	jra .L340
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
	move.l 12(%fp),308(%a1)
	move.b 19(%fp),312(%a1)
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
	jne .L352
	tst.b 312(%a2)
	jne .L357
	move.l 304(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,304(%a2)
	jle .L358
.L355:
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	addq.l #4,%sp
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L352:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L357:
	clr.b 312(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 304(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,304(%a2)
	jgt .L355
.L358:
	clr.l 304(%a2)
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
	cmp.w #1,318(%a0)
	jeq .L365
	tst.b 350(%a0)
	jeq .L360
.L362:
	addq.w #2,298(%a0)
.L360:
	unlk %fp
	rts
.L365:
	tst.b 166(%a0)
	jeq .L362
	tst.b 350(%a0)
	jne .L362
	jra .L360
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,318(%a0)
	jeq .L368
	tst.b 166(%a0)
	jeq .L369
.L368:
	tst.b 350(%a0)
	jeq .L367
.L369:
	subq.w #2,298(%a0)
.L367:
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
	jeq .L374
	move.l 226(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 298(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 300(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L374:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L382
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L382:
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
	move.w #90,300(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 298(%a2),%d0
	cmp.w #11,%d0
	jle .L398
.L386:
	cmp.w #280,%d0
	jgt .L390
.L395:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L398:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L394
	move.w 298(%a2),%d0
	cmp.w #11,%d0
	jgt .L386
	cmp.w #280,298(%a3)
	jgt .L394
	jsr (%a4)
	tst.b %d0
	jne .L394
	move.w 298(%a2),%d0
	cmp.w #280,%d0
	jle .L395
.L390:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L399
.L394:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L399:
	cmp.w #328,298(%a2)
	jle .L395
	cmp.w #10,298(%a3)
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
	move.w 318(%a0),%d1
	cmp.w #1,%d1
	jeq .L402
	tst.b 166(%a0)
	jne .L402
.L403:
	tst.l %d0
	jle .L406
	tst.b 350(%a0)
	jeq .L401
.L406:
	add.w %d0,298(%a0)
.L401:
	unlk %fp
	rts
.L402:
	tst.l %d0
	jlt .L409
	cmp.w #1,%d1
	jne .L403
.L410:
	tst.b 166(%a0)
	jne .L403
	add.w %d0,298(%a0)
	jra .L401
.L409:
	tst.b 350(%a0)
	jeq .L401
	cmp.w #1,%d1
	jne .L403
	jra .L410
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #15408,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d3
	tst.b 162(%a2)
	jne .L413
	tst.b 84(%a2)
	jeq .L642
.L414:
	clr.b 82(%a2)
.L416:
	move.l 240(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,230(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L417
	tst.b 107(%a2)
	jeq .L417
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L417:
	move.w 380(%a2),%a0
	move.l %a0,-(%sp)
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L643
	tst.b 189(%a2)
	jne .L644
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L612
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L612
.L420:
	tst.b 99(%a2)
	jne .L422
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L430
	tst.l %d1
	jeq .L431
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L432
	cmp.w #1,318(%a2)
	jeq .L430
.L432:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L431
	cmp.w #-1,318(%a2)
	jeq .L430
.L431:
	tst.b 93(%a2)
	jeq .L645
.L434:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L441
	clr.b 93(%a2)
.L441:
	move.l 406(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L429:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L609
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L609
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L609
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L609
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L609
	and.l JAGPAD_7,%d0
	jne .L609
	move.b #1,107(%a2)
.L609:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L412
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L611
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L611
	and.l JAGPAD_RIGHT,%d0
	jne .L611
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L611:
	move.b #1,106(%a2)
.L412:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L413:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L642:
	tst.b 89(%a2)
	jne .L414
	tst.b 86(%a2)
	jne .L414
	tst.b 88(%a2)
	jne .L414
	tst.b 87(%a2)
	jne .L414
	tst.b 85(%a2)
	jeq .L416
	clr.b 82(%a2)
	jra .L416
.L644:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 386(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L612:
	tst.b 89(%a2)
	jeq .L420
	tst.b 107(%a2)
	jeq .L420
	tst.b 208(%a2)
	jeq .L420
	tst.b 99(%a2)
	jne .L422
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 314(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L422:
	move.l 426(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 209(%a2)
	jeq .L646
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 212(%a2),%d0
	cmp.l %a0,%d0
	jgt .L647
.L426:
	clr.b 209(%a2)
.L427:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L429
	clr.b 99(%a2)
	move.b #1,208(%a2)
	jra .L429
.L645:
	tst.l %d4
	jeq .L648
.L442:
	tst.b 107(%a2)
	jeq .L443
	tst.b 208(%a2)
	jeq .L443
	tst.b 86(%a2)
	jne .L443
	tst.b 163(%a2)
	jeq .L443
	tst.b 102(%a2)
	jne .L446
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L448:
	move.l 438(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 574(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L643:
	move.b #1,189(%a2)
	clr.b 192(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L430:
	tst.b 107(%a2)
	jeq .L431
	tst.b 208(%a2)
	jeq .L431
	tst.b 86(%a2)
	jne .L431
	tst.b 163(%a2)
	jne .L431
	tst.b 93(%a2)
	jne .L434
	clr.b 107(%a2)
	move.b #1,93(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d2
	move.b 322(%a2),%d2
	move.l 314(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L438
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L439
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L649
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L652:
	move.l 406(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L646:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 209(%a2)
	jeq .L427
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 212(%a2),%d0
	cmp.l %a0,%d0
	jle .L426
	jra .L647
.L648:
	tst.l %d1
	jeq .L443
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L444
	cmp.w #1,318(%a2)
	jeq .L442
.L444:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L443
	cmp.w #-1,318(%a2)
	jeq .L442
.L443:
	tst.b 102(%a2)
	jne .L446
	tst.l %d1
	jeq .L449
	tst.b 107(%a2)
	jeq .L449
	tst.b 208(%a2)
	jeq .L449
	tst.b 86(%a2)
	jne .L449
	tst.b 169(%a2)
	jeq .L449
	tst.b 165(%a2)
	jne .L451
	clr.b 107(%a2)
	move.b #1,165(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L453
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L454
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L650
.L453:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L456:
	move.l 450(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 586(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L647:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 534(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 209(%a2)
	jne .L429
	jra .L427
.L446:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L448
	clr.b 102(%a2)
	move.b #1,208(%a2)
	move.l 438(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 574(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L650:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 450(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 586(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L449:
	tst.b 165(%a2)
	jne .L451
	tst.l %d1
	jeq .L457
	tst.b 107(%a2)
	jeq .L457
	tst.b 208(%a2)
	jeq .L457
	tst.b 86(%a2)
	jne .L457
	tst.b 169(%a2)
	jne .L457
	tst.b 92(%a2)
	jne .L459
	clr.b 107(%a2)
	move.b #1,92(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L461:
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L451:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L456
	clr.b 165(%a2)
	move.b #1,208(%a2)
	move.l 450(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 586(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L457:
	tst.b 92(%a2)
	jne .L459
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L462
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L462
	cmp.w #1,318(%a2)
	jeq .L463
.L462:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L464
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L464
	cmp.w #-1,318(%a2)
	jeq .L463
.L464:
	tst.b 100(%a2)
	jeq .L651
.L466:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L468
	clr.b 100(%a2)
.L468:
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L459:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L461
	clr.b 92(%a2)
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L651:
	tst.l %d1
	jeq .L469
	cmp.w #1,318(%a2)
	jeq .L470
.L469:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L471
	cmp.w #-1,318(%a2)
	jeq .L470
.L471:
	tst.b 101(%a2)
	jne .L474
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L477
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L478
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L479
	cmp.w #1,318(%a2)
	jeq .L477
.L479:
	tst.l %d1
	jeq .L478
	cmp.w #-1,318(%a2)
	jeq .L477
.L478:
	tst.b 95(%a2)
	jne .L481
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L484
	tst.b 107(%a2)
	jeq .L484
	tst.b 208(%a2)
	jeq .L484
	tst.b 86(%a2)
	jne .L484
	tst.b 89(%a2)
	jne .L484
	tst.b 169(%a2)
	jeq .L484
	tst.b 103(%a2)
	jne .L486
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L488:
	move.l 442(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 578(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L474:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L476
	clr.b 101(%a2)
.L476:
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 570(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L463:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L464
	tst.b 107(%a2)
	jeq .L464
	tst.b 208(%a2)
	jeq .L464
	tst.b 86(%a2)
	jne .L464
	tst.b 100(%a2)
	jne .L466
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,100(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L470:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L472
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L471
.L472:
	tst.b 107(%a2)
	jeq .L471
	tst.b 208(%a2)
	jeq .L471
	tst.b 86(%a2)
	jne .L471
	tst.b 101(%a2)
	jne .L474
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,101(%a2)
	clr.w 16(%a3)
	move.l 314(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 570(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L477:
	tst.b 107(%a2)
	jeq .L478
	tst.b 208(%a2)
	jeq .L478
	tst.b 86(%a2)
	jne .L478
	tst.b 89(%a2)
	jne .L478
	tst.b 163(%a2)
	jne .L478
	tst.b 95(%a2)
	jne .L481
	clr.b 107(%a2)
	move.b #1,95(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L483:
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L481:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L483
	clr.b 95(%a2)
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L439:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L652
.L438:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L652
.L649:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L652
.L454:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 450(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 586(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L484:
	tst.b 103(%a2)
	jne .L486
	and.l %d0,%d5
	jeq .L489
	tst.b 107(%a2)
	jeq .L489
	tst.b 208(%a2)
	jeq .L489
	tst.b 86(%a2)
	jne .L489
	tst.b 89(%a2)
	jne .L489
	tst.b 163(%a2)
	jne .L489
	tst.b 94(%a2)
	jne .L491
	clr.b 107(%a2)
	move.b #1,94(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L493:
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L486:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L488
	clr.b 103(%a2)
	move.b #1,208(%a2)
	move.l 442(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 578(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L489:
	tst.b 94(%a2)
	jne .L491
	tst.l %d4
	jeq .L494
	tst.b 107(%a2)
	jeq .L494
	tst.b 208(%a2)
	jeq .L494
	tst.b 86(%a2)
	jne .L494
	tst.b 89(%a2)
	jeq .L494
	tst.b 104(%a2)
	jne .L496
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 314(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L498:
	move.l 446(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 582(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L491:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L493
	clr.b 94(%a2)
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L494:
	tst.b 104(%a2)
	jeq .L653
.L496:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L498
	clr.b 104(%a2)
	move.b #1,208(%a2)
	move.b #1,89(%a2)
	move.w #1,16(%a3)
	move.l 446(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 582(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L653:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L499
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L500
.L499:
	tst.b 86(%a2)
	jne .L500
	tst.b 208(%a2)
	jeq .L500
	tst.b 90(%a2)
	jne .L501
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L501:
	and.l JAGPAD_DOWN,%d0
	jeq .L502
	tst.b 89(%a2)
	jne .L503
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L503:
	tst.b 91(%a2)
	jne .L504
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L500:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L507
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L508
	cmp.w #1,318(%a2)
	jeq .L509
.L508:
	tst.l %d1
	jeq .L507
	cmp.w #-1,318(%a2)
	jeq .L509
.L507:
	tst.b 87(%a2)
	jeq .L654
.L511:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L513
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L514
.L513:
	tst.b 87(%a2)
	jeq .L514
	tst.b 220(%a2)
	jne .L514
	tst.b 280(%a2)
	jeq .L515
.L514:
	tst.b 96(%a2)
	jeq .L516
	tst.b 220(%a2)
	jne .L516
	tst.b 87(%a2)
	jeq .L516
.L515:
	tst.b 98(%a2)
	jne .L516
	tst.b 96(%a2)
	jne .L517
	clr.b 107(%a2)
	move.b #1,280(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L517:
	tst.b 210(%a2)
	jeq .L655
.L518:
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L656
	clr.b 210(%a2)
	clr.b 96(%a2)
.L519:
	move.l 418(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
.L516:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L521
	and.l JAGPAD_9,%d0
	jeq .L522
.L521:
	tst.b 87(%a2)
	jeq .L522
	tst.b 220(%a2)
	jne .L522
	tst.b 280(%a2)
	jeq .L523
.L522:
	tst.b 98(%a2)
	jeq .L524
	tst.b 220(%a2)
	jne .L524
	tst.b 87(%a2)
	jeq .L524
.L523:
	tst.b 96(%a2)
	jne .L524
	tst.b 98(%a2)
	jne .L525
	clr.b 107(%a2)
	move.b #1,280(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L525:
	tst.b 210(%a2)
	jeq .L657
.L526:
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L658
	clr.b 210(%a2)
	clr.b 98(%a2)
.L527:
	move.l 422(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L524:
	tst.w 16(%a3)
	jne .L529
	tst.b 96(%a2)
	jne .L529
	tst.b 98(%a2)
	jeq .L659
.L529:
	tst.b 87(%a2)
	jeq .L429
	tst.b 220(%a2)
	jne .L530
	move.l 222(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L530
	tst.b 221(%a2)
	jne .L531
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L531
	tst.b 96(%a2)
	jne .L531
	tst.b 98(%a2)
	jne .L531
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,221(%a2)
	addq.l #8,%sp
.L531:
	tst.b 210(%a2)
	jeq .L660
.L532:
	tst.b 96(%a2)
	jne .L534
	tst.b 98(%a2)
	jne .L534
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 482(%a2),-(%sp)
	move.l 352(%a2),-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L534:
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
.L530:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L535
	cmp.w #89,300(%a2)
	jgt .L635
.L535:
	tst.b 220(%a2)
	jeq .L429
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L429
	move.b #1,208(%a2)
	clr.b 87(%a2)
.L637:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 221(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L429
.L502:
	tst.b 89(%a2)
	jeq .L505
	clr.b 89(%a2)
.L505:
	tst.b 91(%a2)
	jne .L506
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L635:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,220(%a2)
	clr.l 328(%a2)
	move.w #90,300(%a2)
	addq.l #4,%sp
	jra .L429
.L504:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 34(%a2),%a0
.L639:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L429
	clr.b 91(%a2)
	jra .L429
.L506:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 30(%a2),%a0
	jra .L639
.L660:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 268(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 352(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,300(%a2)
	addq.l #1,%a0
	move.l %a0,352(%a2)
	addq.l #8,%sp
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L533
	clr.l 352(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,220(%a2)
	move.w #90,300(%a2)
	addq.l #4,%sp
.L533:
	move.l 324(%a2),-(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,328(%a2)
	jra .L532
.L659:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L636:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L654:
	tst.l %d4
	jeq .L537
	tst.l %d1
	jeq .L538
	cmp.w #1,318(%a2)
	jeq .L539
.L538:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L537
	cmp.w #-1,318(%a2)
	jeq .L539
.L537:
	tst.b 88(%a2)
	jeq .L661
.L541:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L543
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L544
.L543:
	tst.b 88(%a2)
	jeq .L544
	tst.b 220(%a2)
	jne .L544
	tst.b 280(%a2)
	jeq .L545
.L544:
	tst.b 96(%a2)
	jeq .L546
	tst.b 220(%a2)
	jne .L546
	tst.b 88(%a2)
	jeq .L546
.L545:
	tst.b 98(%a2)
	jne .L546
	tst.b 96(%a2)
	jne .L547
	clr.b 107(%a2)
	move.b #1,280(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L547:
	tst.b 210(%a2)
	jeq .L662
.L548:
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L663
	clr.b 210(%a2)
	clr.b 98(%a2)
.L549:
	move.l 418(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
.L546:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L551
	and.l JAGPAD_9,%d0
	jeq .L552
.L551:
	tst.b 88(%a2)
	jeq .L552
	tst.b 220(%a2)
	jne .L552
	tst.b 280(%a2)
	jeq .L553
.L552:
	tst.b 98(%a2)
	jeq .L554
	tst.b 220(%a2)
	jne .L554
	tst.b 88(%a2)
	jeq .L554
.L553:
	tst.b 96(%a2)
	jne .L554
	tst.b 98(%a2)
	jne .L555
	clr.b 107(%a2)
	move.b #1,280(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L555:
	tst.b 210(%a2)
	jeq .L664
.L556:
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L665
	clr.b 210(%a2)
	clr.b 98(%a2)
.L557:
	move.l 422(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L554:
	tst.w 16(%a3)
	jne .L559
	tst.b 96(%a2)
	jne .L559
	tst.b 98(%a2)
	jeq .L666
.L559:
	tst.b 88(%a2)
	jeq .L429
	tst.b 220(%a2)
	jne .L560
	move.l 222(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L560
	tst.b 221(%a2)
	jne .L561
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L561
	tst.b 96(%a2)
	jne .L561
	tst.b 98(%a2)
	jne .L561
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,221(%a2)
	addq.l #8,%sp
.L561:
	tst.b 210(%a2)
	jne .L562
	tst.b 351(%a2)
	jne .L563
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 268(%a2),%d1
	add.l #-2147483648,%d1
	move.l %d1,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
.L563:
	move.l 352(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,300(%a2)
	addq.l #1,%a0
	move.l %a0,352(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L564
	clr.l 352(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,220(%a2)
	move.w #90,300(%a2)
	addq.l #4,%sp
.L564:
	move.l 324(%a2),-(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,328(%a2)
.L562:
	tst.b 96(%a2)
	jne .L565
	tst.b 98(%a2)
	jne .L565
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 482(%a2),-(%sp)
	moveq #20,%d0
	sub.l 352(%a2),%d0
	move.l %d0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L565:
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
.L560:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L566
	cmp.w #89,300(%a2)
	jgt .L635
.L566:
	tst.b 220(%a2)
	jeq .L429
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L429
	move.b #1,208(%a2)
	clr.b 88(%a2)
	jra .L637
.L666:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L636
.L665:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 530(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L557
.L664:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L557
	jra .L556
.L663:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 522(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L549
.L662:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L549
	jra .L548
.L661:
	tst.l %d1
	jeq .L568
	tst.b 208(%a2)
	jeq .L568
	tst.b 86(%a2)
	jne .L568
	tst.b 84(%a2)
	jne .L569
	clr.w 16(%a3)
.L569:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	and.l #255,%d3
	move.l %d3,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.b #1,84(%a2)
	clr.b 89(%a2)
	clr.b 104(%a2)
	clr.b 90(%a2)
	clr.b 85(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	lea (32,%sp),%sp
	tst.w 298(%a2)
	jle .L429
	tst.b 163(%a2)
	jne .L570
	move.l 248(%a2),%d0
	cmp.w #-1,318(%a2)
	jne .L571
	move.l 244(%a2),%d0
.L571:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L634:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L429
.L570:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L429
	move.l 276(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L634
.L568:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L572
	tst.b 208(%a2)
	jeq .L572
	tst.b 86(%a2)
	jne .L572
	tst.b 84(%a2)
	jne .L573
	clr.w 16(%a3)
.L573:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	move.b %d3,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.b #1,84(%a2)
	clr.b 89(%a2)
	clr.b 104(%a2)
	clr.b 90(%a2)
	clr.b 85(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	lea (32,%sp),%sp
	cmp.w #280,298(%a2)
	jgt .L429
	tst.b 163(%a2)
	jne .L574
	move.l 244(%a2),%d0
	cmp.w #-1,318(%a2)
	jne .L575
	move.l 248(%a2),%d0
.L575:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L634
.L574:
	move.l 276(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L634
.L572:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L576
	tst.b 208(%a2)
	jeq .L576
	tst.b 86(%a2)
	jne .L576
	tst.b 89(%a2)
	jne .L577
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L577:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L576:
	tst.l %d4
	jeq .L578
	tst.b 105(%a2)
	jeq .L578
	tst.b 208(%a2)
	jne .L579
.L578:
	tst.b 86(%a2)
	jeq .L667
.L580:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L582
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L583
.L582:
	tst.b 86(%a2)
	jeq .L583
	tst.b 220(%a2)
	jne .L583
	tst.b 280(%a2)
	jeq .L584
.L583:
	tst.b 96(%a2)
	jeq .L585
	tst.b 220(%a2)
	jne .L585
	tst.b 86(%a2)
	jeq .L585
.L584:
	tst.b 97(%a2)
	jne .L585
	tst.b 96(%a2)
	jne .L586
	clr.b 107(%a2)
	move.b #1,280(%a2)
	move.b #1,85(%a2)
	move.b #1,96(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L586:
	tst.b 210(%a2)
	jeq .L668
.L587:
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L669
	clr.b 210(%a2)
	clr.b 96(%a2)
.L588:
	move.l 418(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
.L585:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L590
	and.l JAGPAD_9,%d0
	jeq .L591
.L590:
	tst.b 86(%a2)
	jeq .L591
	tst.b 220(%a2)
	jne .L591
	tst.b 280(%a2)
	jeq .L592
.L591:
	tst.b 97(%a2)
	jeq .L593
	tst.b 220(%a2)
	jne .L593
	tst.b 86(%a2)
	jeq .L593
.L592:
	tst.b 96(%a2)
	jne .L593
	tst.b 97(%a2)
	jne .L594
	clr.b 107(%a2)
	move.b #1,280(%a2)
	move.b #1,97(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L594:
	tst.b 210(%a2)
	jeq .L670
.L595:
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L671
	clr.b 210(%a2)
	clr.b 97(%a2)
.L596:
	move.l 422(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L593:
	tst.w 16(%a3)
	jne .L598
	tst.b 96(%a2)
	jne .L598
	tst.b 97(%a2)
	jeq .L604
.L598:
	tst.b 86(%a2)
	jeq .L429
	tst.b 220(%a2)
	jne .L599
	move.l 286(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L600
	tst.b 210(%a2)
	jne .L600
	move.l 352(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,300(%a2)
	addq.l #1,%a0
	move.l %a0,352(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L601
	clr.l 352(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,220(%a2)
	move.w #90,300(%a2)
	addq.l #4,%sp
.L601:
	move.l 324(%a2),-(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,328(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
.L600:
	tst.b 96(%a2)
	jne .L599
	tst.b 97(%a2)
	jne .L599
	move.w #1,16(%a3)
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 478(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L599:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L602
	cmp.w #89,300(%a2)
	jgt .L672
.L602:
	tst.b 220(%a2)
	jeq .L429
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L604
	move.b #1,208(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L604:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L672:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,220(%a2)
	clr.l 328(%a2)
	move.w #90,300(%a2)
	addq.l #4,%sp
	jra .L429
.L658:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 530(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L527
.L657:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L527
	jra .L526
.L656:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 522(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L519
.L655:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L519
	jra .L518
.L509:
	tst.b 106(%a2)
	jeq .L507
	tst.b 208(%a2)
	jeq .L507
	tst.b 87(%a2)
	jne .L511
	clr.b 208(%a2)
	clr.b 280(%a2)
	clr.b 106(%a2)
	move.b #1,87(%a2)
	clr.w 16(%a3)
	move.l 332(%a2),328(%a2)
	clr.b 220(%a2)
	clr.l 352(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
	jra .L511
.L579:
	tst.b 86(%a2)
	jne .L580
	clr.b 105(%a2)
	clr.b 280(%a2)
	move.b #1,86(%a2)
	clr.w 16(%a3)
	clr.l 352(%a2)
	move.l 332(%a2),328(%a2)
	clr.b 220(%a2)
	clr.b 208(%a2)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
	jra .L580
.L539:
	tst.b 106(%a2)
	jeq .L537
	tst.b 208(%a2)
	jeq .L537
	tst.b 88(%a2)
	jne .L541
	clr.b 208(%a2)
	clr.b 280(%a2)
	clr.b 106(%a2)
	move.b #1,88(%a2)
	clr.w 16(%a3)
	clr.l 352(%a2)
	move.l 332(%a2),328(%a2)
	clr.b 220(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
	jra .L541
.L668:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L588
	jra .L587
.L671:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 526(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L596
.L670:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L596
	jra .L595
.L669:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 522(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L588
.L667:
	tst.b 89(%a2)
	jne .L673
	tst.b 90(%a2)
	jne .L674
	tst.b 84(%a2)
	jeq .L607
	clr.b 163(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L607:
	tst.b 82(%a2)
	jne .L608
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L608:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L429
.L674:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L429
	clr.b 90(%a2)
	jra .L429
.L673:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L429
	clr.b 89(%a2)
	jra .L429
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
	jeq .L676
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L682
	jlt .L686
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L680
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L681
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L718
.L678:
	sub.w 300(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L691
	jge .L719
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L693
	cmp.l #128,%d0
	jeq .L694
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L692
.L687:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L700
	jlt .L704
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L698
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L699
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L697
	moveq #84,%d1
	not.b %d1
.L696:
	cmp.l %a1,%d1
	jge .L676
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L707
	jlt .L713
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L707
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L707
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L707
	move.w #171,%d1
.L707:
	move.w %d1,12(%a0)
.L676:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L686:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L684
	cmp.l #128,%d0
	jeq .L685
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L678
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 300(%a2),%d1
.L692:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L701:
	moveq #78,%d1
	not.b %d1
	jra .L696
.L682:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 300(%a2),%d1
.L691:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L700:
	moveq #75,%d1
	not.b %d1
	jra .L696
.L680:
	move.w %a1,%d1
	sub.w 300(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L689:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L698:
	moveq #69,%d1
	not.b %d1
	jra .L696
.L684:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 300(%a2),%d1
.L693:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L702:
	moveq #81,%d1
	not.b %d1
	jra .L696
.L718:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 300(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L697:
	moveq #66,%d1
	not.b %d1
	jra .L696
.L713:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L707
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L707
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L707
	move.w #171,%d1
	jra .L707
.L681:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 300(%a2),%d1
.L690:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L699:
	moveq #72,%d1
	not.b %d1
	jra .L696
.L685:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 300(%a2),%d1
	add.w %a1,%d1
.L694:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L703:
	moveq #87,%d1
	not.b %d1
	jra .L696
.L719:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L689
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L690
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L687
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L697
.L704:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L702
	cmp.l #128,%d0
	jeq .L703
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L701
	moveq #84,%d1
	not.b %d1
	jra .L696
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	clr.l 12(%fp)
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#-4
	movem.l #12344,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 203(%a2)
	jeq .L723
	clr.b 203(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	move.l %a0,282(%a2)
	move.l %a0,294(%a2)
	move.l %a0,222(%a2)
	move.l %a0,12(%a3)
.L723:
	tst.b 202(%a2)
	jne .L789
	tst.b 133(%a2)
	jeq .L725
	moveq #59,%d0
	add.l 286(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L790
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	cmp.l 4(%a0),%d1
	jeq .L791
	move.w 144(%a2),%d0
	cmp.w #7,%d0
	jle .L792
.L725:
	tst.b 134(%a2)
	jne .L728
	tst.b 133(%a2)
	jne .L728
.L729:
	tst.b 152(%a2)
	jeq .L730
	move.l 154(%a2),%d0
	move.w 298(%a2),%d1
	move.w %d1,%a0
	cmp.l %d0,%a0
	jlt .L793
	jgt .L794
.L730:
	tst.b 174(%a2)
	jeq .L736
	move.w raptor_ticks,%a0
	tst.b 175(%a2)
	jne .L738
	move.l 184(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L795
	move.l 176(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,298(%a2)
	neg.l %d0
	move.l %d0,176(%a2)
	move.l 180(%a2),%d0
	addq.l #1,%d0
	move.l %d0,180(%a2)
	move.l %a0,184(%a2)
.L740:
	moveq #5,%d1
	cmp.l %d0,%d1
	jge .L738
	move.b #1,175(%a2)
.L738:
	move.l 286(%a2),%d0
	add.l #180,%d0
	cmp.l %d0,%a0
	jgt .L796
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 162(%a2)
	jne .L797
.L722:
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L728:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 138(%a2),%d0
	add.w 300(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 136(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	move.l 618(%a2),-(%sp)
	move.l 454(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L729
.L736:
	tst.b 123(%a2)
	jne .L798
	tst.b 134(%a2)
	jne .L799
	tst.b 172(%a2)
	jeq .L750
	moveq #119,%d0
	add.l 286(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L751
	tst.b 162(%a2)
	jeq .L752
.L751:
	clr.b 172(%a2)
.L752:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L787:
	moveq #1,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
.L789:
	clr.b 202(%a2)
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	jra .L725
.L792:
	move.w 142(%a2),%d1
	move.w %d1,%d3
	add.w %d1,%d3
	add.w %d3,138(%a2)
	neg.w %d1
	move.w %d1,142(%a2)
	addq.w #1,%d0
	move.w %d0,144(%a2)
	jra .L725
.L793:
	cmp.w #1,318(%a2)
	jeq .L800
	tst.b 350(%a2)
	jeq .L730
.L733:
	addq.w #8,%d1
	move.w %d1,298(%a2)
	move.w %d1,%a0
	cmp.l %d0,%a0
	jlt .L730
	clr.b 152(%a2)
	jra .L730
.L797:
	clr.b 174(%a2)
	move.b #1,208(%a2)
	tst.b 322(%a2)
	jne .L801
	moveq #16,%d2
	move.l %d2,16(%fp)
	moveq #15,%d3
	move.l %d3,12(%fp)
	move.l 356(%a2),8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra jsfLoadClut
.L798:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	tst.b 152(%a2)
	jne .L787
	move.w raptor_ticks,%a0
	moveq #60,%d0
	add.l 286(%a2),%d0
	cmp.l %a0,%d0
	jge .L747
	tst.b 132(%a2)
	jne .L748
	move.l 128(%a2),%d0
	move.b #1,152(%a2)
	move.l %d0,154(%a2)
	move.l %a0,286(%a2)
	move.b #1,132(%a2)
	moveq #1,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
.L796:
	clr.b 174(%a2)
	move.b #1,208(%a2)
	tst.b 322(%a2)
	jne .L802
	pea 16.w
	pea 15.w
	move.l 356(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 162(%a2)
	jeq .L722
	jra .L797
.L795:
	move.l 180(%a2),%d0
	jra .L740
.L794:
	cmp.w #1,318(%a2)
	jeq .L734
	tst.b 166(%a2)
	jeq .L735
.L734:
	tst.b 350(%a2)
	jeq .L730
.L735:
	subq.w #8,%d1
	move.w %d1,298(%a2)
	move.w %d1,%a0
	cmp.l %d0,%a0
	jgt .L730
	clr.b 152(%a2)
	jra .L730
.L750:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L753
	move.b 170(%a2),%d1
	jeq .L722
.L804:
	move.w 318(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 199(%a2)
	jeq .L759
	tst.b 119(%a2)
	jne .L759
	tst.b 118(%a2)
	jne .L759
	clr.b 199(%a2)
	move.w #90,300(%a2)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.w 16(%a3)
	move.w 348(%a2),%d0
	jle .L760
	tst.b 171(%a2)
	jeq .L803
.L760:
	move.b #1,173(%a2)
	clr.b 171(%a2)
	addq.w #1,%d0
	move.w %d0,348(%a2)
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L747:
	tst.b 132(%a2)
	jeq .L787
.L748:
	clr.b 123(%a2)
	move.b #1,172(%a2)
	clr.w 16(%a3)
	move.l %a0,286(%a2)
	moveq #1,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
.L790:
	clr.b 133(%a2)
	clr.b 189(%a2)
	move.b #1,134(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z22sfxScorpionGetOverHereP12SoundHandlerb
	addq.l #8,%sp
	jra .L725
.L799:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 602(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	moveq #1,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
.L801:
	moveq #16,%d0
	move.l %d0,16(%fp)
	moveq #14,%d1
	move.l %d1,12(%fp)
	move.l 356(%a2),8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra jsfLoadClut
.L802:
	pea 16.w
	pea 14.w
	move.l 356(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 162(%a2)
	jeq .L722
	jra .L797
.L791:
	move.l 454(%a2),%a1
	clr.w 16(%a1)
	move.l %d0,(%a1)
	move.l #12729888,8(%a1)
	move.l #12729888,44(%a0)
	moveq #104,%d3
	move.l %d3,144(%a0)
	moveq #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.l %d1,84(%a0)
	pea 16.w
	pea 13.w
	move.l #12806768,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.w 144(%a2),%d0
	cmp.w #7,%d0
	jgt .L725
	jra .L792
.L800:
	tst.b 166(%a2)
	jeq .L733
	tst.b 350(%a2)
	jne .L733
	jra .L730
.L803:
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z16fighterMakeDizzyP7Fighter
.L759:
	tst.b 200(%a2)
	jeq .L761
	clr.b 200(%a2)
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d1.l)
	clr.w 16(%a3)
	move.b #1,83(%a2)
	move.w #90,300(%a2)
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L762
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L722
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,12(%fp)
	move.l 314(%a2),8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L753:
	move.l sprite,%a4
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a4,%d1.l),%a1
	move.w 318(%a2),%d1
	neg.w %d1
	add.w %d1,%d1
	add.w %d1,%d1
	move.l 4(%a2),%a0
	move.l %a0,%d3
	add.l %a0,%d3
	add.l %a0,%d3
	lsl.l #6,%d3
	add.w 8(%a4,%d3.l),%d1
	move.w %d1,8(%a1)
	tst.b 82(%a2)
	jne .L755
	move.b 170(%a2),%d1
.L756:
	tst.b 189(%a2)
	jne .L757
	moveq #-1,%d3
	move.l %d3,4(%a1)
	tst.b %d1
	jne .L804
	jra .L722
.L761:
	tst.b 197(%a2)
	jeq .L764
	move.w raptor_ticks,%a0
	move.l 286(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L805
.L764:
	tst.b 201(%a2)
	jeq .L768
	clr.b 201(%a2)
	clr.w 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	move.w 204(%a2),298(%a2)
	move.w 206(%a2),300(%a2)
	clr.w 204(%a2)
	clr.w 206(%a2)
	move.b #1,162(%a2)
	move.b #1,166(%a2)
.L765:
	tst.b 173(%a2)
	jne .L806
	tst.b 171(%a2)
	jeq .L777
	tst.b 162(%a2)
	jeq .L807
.L778:
	tst.l 308(%a2)
	jgt .L779
	tst.b 162(%a2)
	jeq .L722
.L779:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 162(%a2)
	jne .L722
	move.b #1,173(%a2)
	clr.b 171(%a2)
	addq.w #1,348(%a2)
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L805:
	clr.b 197(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 171(%a2)
	jne .L765
	tst.b 312(%a2)
	jne .L808
	move.l 304(%a2),%d0
	subq.l #4,%d0
	move.l %d0,304(%a2)
	jle .L809
.L767:
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	clr.l (%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L765
.L807:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L778
.L808:
	clr.b 312(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 304(%a2),%d0
	subq.l #4,%d0
	move.l %d0,304(%a2)
	jgt .L767
.L809:
	clr.l 304(%a2)
	move.b #1,199(%a2)
	move.l %a2,-(%sp)
	jsr __Z16hudUpdateFighterP7Fighter
	clr.l (%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L765
.L755:
	tst.b 170(%a2)
	jeq .L782
	moveq #1,%d1
	tst.b 173(%a2)
	jne .L756
	tst.b 83(%a2)
	jne .L756
.L757:
	moveq #1,%d3
	move.l %d3,4(%a1)
	tst.b %d1
	jne .L804
	jra .L722
.L768:
	tst.b 164(%a2)
	jeq .L765
	tst.b 86(%a2)
	jne .L765
	tst.b 88(%a2)
	jne .L765
	tst.b 87(%a2)
	jne .L765
	tst.b 162(%a2)
	jne .L765
	tst.b 85(%a2)
	jne .L765
	tst.b 320(%a2)
	jeq .L769
	clr.b 320(%a2)
	clr.w 16(%a3)
.L769:
	tst.b 321(%a2)
	jeq .L810
	tst.w 16(%a3)
	jle .L811
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L786:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L817:
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L777:
	tst.b 83(%a2)
	jne .L812
	tst.b 188(%a2)
	jne .L813
.L781:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 82(%a2)
	jeq .L722
	move.l 226(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 298(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 300(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L813:
	lea ___mulsf3,%a4
	move.l 276(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,-4(%fp)
	move.w 318(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l -4(%fp),-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 282(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	cmp.l %d0,%a0
	jle .L781
	clr.b 188(%a2)
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	jra .L781
.L762:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,12(%fp)
	move.l 314(%a2),8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L806:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L814
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 554(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L815:
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L814:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 314(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 170(%a2)
	addq.l #4,%sp
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 554(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L815
.L782:
	clr.b %d1
	jra .L756
.L812:
	move.w #90,300(%a2)
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L811:
	clr.b 164(%a2)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L786
.L810:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L771
	move.b #1,321(%a2)
	move.w 318(%a2),%d0
	neg.w %d0
	move.w %d0,318(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L816
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d3
	move.l %d3,24(%a0,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
.L773:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L771:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L817
.L816:
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #1,%d2
	move.l %d2,24(%a0,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	jra .L773
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L824
	jge .L831
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L826
	cmp.l #128,%d0
	jeq .L827
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L832
.L820:
	moveq #21,%d0
	unlk %fp
	rts
.L831:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L829
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L823
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L820
	moveq #3,%d0
	unlk %fp
	rts
.L823:
	moveq #9,%d0
	unlk %fp
	rts
.L827:
	moveq #24,%d0
	unlk %fp
	rts
.L832:
	moveq #15,%d0
	unlk %fp
	rts
.L826:
	moveq #18,%d0
	unlk %fp
	rts
.L829:
	moveq #6,%d0
	unlk %fp
	rts
.L824:
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
	cmp.w #1,318(%a0)
	jeq .L840
	move.w 298(%a0),%a2
	sub.w 298(%a1),%a2
	cmp.w #259,%a2
	jgt .L838
.L836:
	clr.b 351(%a0)
	clr.b 351(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L840:
	move.w 298(%a1),%a2
	sub.w 298(%a0),%a2
	cmp.w #259,%a2
	jle .L836
.L838:
	move.b #1,351(%a0)
	move.b #1,351(%a1)
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
	jne .L844
	tst.b 238(%a2)
	jeq .L843
.L844:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 238(%a3)
	jne .L853
	tst.b 238(%a2)
	jeq .L843
.L854:
	clr.b 238(%a2)
	move.l 234(%a2),%d0
	move.l %d0,_tempScore
	jne .L850
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
.L843:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L853:
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
	jne .L854
	jra .L843
.L850:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L847:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L847
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L849
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
.L849:
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
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 298(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 286(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L856
	move.b #1,208(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 119(%a2)
	clr.b 118(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	move.b #1,161(%a2)
	clr.l 352(%a2)
	clr.w 16(%a3)
	move.w #90,300(%a2)
.L856:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 454(%a1),%a0
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
	jne .L861
	move.b #1,174(%a2)
	clr.b 208(%a2)
	clr.b 175(%a2)
	moveq #-1,%d0
	move.l %d0,176(%a2)
	clr.l 180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,184(%a2)
	move.l %a0,286(%a2)
	move.b #1,110(%a2)
	tst.b 322(%a2)
	jeq .L863
	pea 16.w
	pea 14.w
	move.l 360(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
.L861:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L863:
	pea 16.w
	pea 15.w
	move.l 360(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
	jra .L861
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 174(%a0)
	move.b #1,208(%a0)
	tst.b 322(%a0)
	jne .L871
	pea 16.w
	pea 15.w
	move.l 356(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L871:
	pea 16.w
	pea 14.w
	move.l 356(%a0),-(%sp)
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
	jne .L873
	move.b #1,123(%a2)
	clr.b 132(%a2)
	move.b #1,202(%a2)
	move.w 318(%a2),%d0
	move.w 298(%a2),%a4
	cmp.w #-1,%d0
	jeq .L887
	move.w 298(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,124(%a2)
.L876:
	cmp.w #149,%a0
	jgt .L877
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,124(%a2)
	tst.b 152(%a2)
	jeq .L888
.L878:
	moveq #0,%d2
	move.b 322(%a2),%d2
	move.l 314(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L880
.L891:
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L889
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L882:
	cmp.w #-1,318(%a2)
	jeq .L890
.L883:
	move.w 298(%a3),%d0
	ext.l %d0
	moveq #-48,%d3
	add.l %d0,%d3
	move.l %d3,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	move.l 78(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 454(%a3),%a1
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
.L873:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L877:
	clr.l 124(%a2)
	moveq #0,%d2
	move.b 322(%a2),%d2
	move.l 314(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jne .L891
.L880:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	cmp.w #-1,318(%a2)
	jne .L883
.L890:
	move.w 298(%a3),%d0
	ext.l %d0
	moveq #48,%d1
	add.l %d0,%d1
	move.l %d1,128(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	move.l 78(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 454(%a3),%a1
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
	jra .L873
.L889:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L882
.L887:
	move.l %a4,%a0
	sub.w 298(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,124(%a2)
	jra .L876
.L888:
	move.b #1,152(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,154(%a2)
	jra .L878
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
	jeq .L933
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L937
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L938
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L933
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L933
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L939
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L893
	tst.b 211(%a3)
	jne .L893
	move.b #1,211(%a3)
	tst.b 90(%a2)
	jeq .L940
	move.b #1,146(%a3)
.L925:
	move.b #1,91(%a2)
	move.b #1,197(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
.L893:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L933:
	move.b #1,211(%a3)
	tst.b 90(%a2)
	jne .L925
	tst.b 86(%a2)
	jeq .L913
	move.b #1,121(%a2)
	moveq #20,%d0
	move.l %d0,308(%a2)
	clr.b 312(%a2)
	add.l %d0,234(%a3)
	move.b #1,238(%a3)
.L941:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L937:
	move.b #1,211(%a3)
	tst.b 90(%a2)
	jne .L925
	tst.b 86(%a2)
	jeq .L901
	move.b #1,121(%a2)
	move.b #1,202(%a2)
.L928:
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
.L942:
	moveq #20,%d0
	move.l %d0,308(%a2)
	clr.b 312(%a2)
	add.l %d0,234(%a3)
	move.b #1,238(%a3)
	jra .L941
.L938:
	move.b #1,211(%a3)
	tst.b 90(%a2)
	jne .L925
	tst.b 86(%a2)
	jeq .L905
	move.b #1,121(%a2)
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	jra .L942
.L913:
	move.b #1,113(%a2)
	move.b #1,109(%a2)
	moveq #20,%d0
	move.l %d0,308(%a2)
	clr.b 312(%a2)
	add.l %d0,234(%a3)
	move.b #1,238(%a3)
	jra .L941
.L901:
	move.b #1,116(%a2)
	move.b #1,202(%a2)
	jra .L928
.L939:
	tst.b 211(%a3)
	jne .L893
	move.b #1,211(%a3)
	tst.b 174(%a2)
	jne .L943
	tst.b 90(%a2)
	jne .L925
	move.b #1,174(%a2)
	clr.b 208(%a2)
	clr.b 175(%a2)
	moveq #-1,%d0
	move.l %d0,176(%a2)
	clr.l 180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,184(%a2)
	move.l %a0,286(%a2)
	move.b #1,110(%a2)
	tst.b 322(%a2)
	jeq .L922
	pea 16.w
	pea 14.w
	move.l 360(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 308(%a2)
.L927:
	clr.b 312(%a2)
	moveq #20,%d1
	add.l %d1,234(%a3)
	move.b #1,238(%a3)
	addq.l #8,%sp
.L945:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L905:
	move.b #1,116(%a2)
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a2)
	jra .L942
.L943:
	clr.b 174(%a2)
	move.b #1,208(%a2)
	tst.b 322(%a2)
	jne .L944
	pea 16.w
	pea 15.w
	move.l 356(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L918:
	move.l 78(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 174(%a3)
	jne .L893
	move.b #1,174(%a3)
	clr.b 208(%a3)
	clr.b 175(%a3)
	move.l %d1,176(%a3)
	clr.l 180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,184(%a3)
	move.l %a0,286(%a3)
	move.b #1,110(%a3)
	tst.b 322(%a3)
	jeq .L919
	pea 16.w
	pea 14.w
	move.l 360(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 322(%a3),%d0
	move.l %d0,12(%fp)
	move.l 314(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
.L940:
	move.b #1,133(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,286(%a3)
	move.w #-1,142(%a3)
	move.w #32,138(%a3)
	clr.w 144(%a3)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z14fighterHarpoonP7FighterS0_
	moveq #8,%d0
	move.l %d0,308(%a2)
	clr.b 312(%a2)
	moveq #20,%d1
	add.l %d1,234(%a3)
	move.b #1,238(%a3)
	addq.l #8,%sp
	jra .L945
.L944:
	pea 16.w
	pea 14.w
	move.l 356(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L918
.L922:
	pea 16.w
	pea 15.w
	move.l 360(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 314(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 308(%a2)
	jra .L927
.L919:
	pea 16.w
	pea 15.w
	move.l 360(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 322(%a3),%d0
	move.l %d0,12(%fp)
	move.l 314(%a3),8(%fp)
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
	jeq .L948
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L965
.L948:
	tst.b 163(%a2)
	jeq .L949
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L966
.L949:
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
	jlt .L947
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L952
.L973:
	cmp.w #0,%a0
	jlt .L947
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 78(%a3),%d0
	cmp.l %d2,%d0
	jeq .L953
	cmp.l 78(%a2),%d2
	jeq .L953
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L953:
	cmp.l %d0,%d3
	jeq .L954
	cmp.l 78(%a2),%d3
	jeq .L954
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L954:
	moveq #62,%d5
	cmp.l %d2,%d5
	jeq .L967
	moveq #57,%d1
	cmp.l %d2,%d1
	jeq .L968
	moveq #63,%d0
	cmp.l %d2,%d0
	jne .L959
	moveq #57,%d1
	cmp.l %d3,%d1
	jeq .L969
.L959:
	tst.b 189(%a3)
	jeq .L960
	cmp.l 78(%a3),%d2
	jeq .L970
.L960:
	tst.b 189(%a2)
	jeq .L961
	cmp.l 78(%a2),%d2
	jeq .L971
.L961:
	moveq #60,%d0
	cmp.l %d2,%d0
	jeq .L972
.L962:
	move.l colliders,%d0
.L963:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L973
.L952:
	cmp.w #0,%a0
	jge .L963
.L947:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L972:
	moveq #57,%d1
	cmp.l %d3,%d1
	jne .L962
	tst.b 84(%a2)
	jeq .L962
	move.b #1,163(%a2)
	move.b #1,188(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a3)
	move.l colliders,%d0
	jra .L963
.L970:
	moveq #60,%d5
	cmp.l %d3,%d5
	jne .L960
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L960
.L971:
	moveq #57,%d0
	cmp.l %d3,%d0
	jne .L961
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #60,%d0
	cmp.l %d2,%d0
	jne .L962
	jra .L972
.L968:
	moveq #60,%d5
	cmp.l %d3,%d5
	jne .L959
	tst.b 84(%a3)
	jeq .L959
	move.w 298(%a3),%d0
	cmp.w #10,%d0
	jle .L959
	cmp.w #328,%d0
	jgt .L959
	move.w 298(%a2),%d0
	cmp.w #10,%d0
	jle .L959
	cmp.w #328,%d0
	jgt .L959
	move.b #1,163(%a3)
	move.b #1,188(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	jra .L959
.L967:
	moveq #60,%d0
	cmp.l %d3,%d0
	jne .L959
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L959
.L969:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L959
.L965:
	clr.b 163(%a3)
	jra .L948
.L966:
	clr.b 163(%a2)
	jra .L949
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 152(%a0)
	jne .L975
	move.b #1,152(%a0)
	move.l 12(%fp),154(%a0)
.L975:
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
	jeq .L980
	tst.b 152(%a0)
	jeq .L987
.L981:
	cmp.w #-1,318(%a0)
	jeq .L988
.L983:
	move.w 298(%a0),%d3
	move.w 298(%a2),%d1
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
	jpl .L991
	addq.l #1,%d1
.L991:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,136(%a2)
	tst.b %d2
	jne .L989
.L985:
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 318(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,136(%a2)
.L979:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L989:
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
.L987:
	tst.b 132(%a0)
	jeq .L981
	clr.b 134(%a2)
	move.l 454(%a2),%a0
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
.L980:
	tst.b 133(%a2)
	jeq .L979
	cmp.w #-1,318(%a0)
	jne .L983
.L988:
	move.w 298(%a2),%d3
	move.w 298(%a0),%d1
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
	jpl .L992
	addq.l #1,%d1
.L992:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,136(%a2)
	tst.b %d2
	jeq .L985
	jra .L989
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
	.text
	.even
__ZL15UppercutOffsets:
	.word	-20
	.word	-20
	.word	-16
	.word	-14
	.word	-13
	.word	-10
	.word	-9
	.word	-6
	.word	-4
	.word	-3
	.word	-2
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	2
	.word	3
	.word	4
	.word	6
	.word	9
	.word	12
	.word	13
	.word	14
	.word	20
	.word	22
	.word	24
	.even
__ZL11FlipOffsets:
	.word	-20
	.word	-16
	.word	-12
	.word	-10
	.word	-8
	.word	-6
	.word	-4
	.word	-2
	.word	0
	.word	0
	.word	2
	.word	4
	.word	6
	.word	8
	.word	10
	.word	12
	.word	16
	.word	20
	.skip 4
	.even
__ZL11JumpOffsets:
	.word	-20
	.word	-16
	.word	-12
	.word	-10
	.word	-8
	.word	-6
	.word	-4
	.word	-2
	.word	0
	.word	0
	.word	2
	.word	4
	.word	6
	.word	8
	.word	10
	.word	12
	.word	16
	.word	20
	.skip 4
