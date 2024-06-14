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
	move.l #10263024,44(%a0)
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
	move.l #8534416,44(%a0)
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
	move.l #11401776,44(%a0)
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
	move.l #9689552,44(%a0)
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
	move.l #9124272,44(%a0)
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
	move.l #10910224,44(%a0)
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
	clr.l 226(%a0)
	move.b #1,230(%a0)
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
	move.w #-1,310(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,290(%a0)
	move.w #106,292(%a0)
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
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 194(%a2)
	clr.b 195(%a2)
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
	clr.l 222(%a2)
	move.l #0x40000000,236(%a2)
	move.l #0x40000000,240(%a2)
	move.l #0x40000000,244(%a2)
	move.l #0x40800000,248(%a2)
	move.l #0x40d00000,252(%a2)
	move.l #0x41000000,256(%a2)
	clr.l 264(%a2)
	move.l #0x40f00000,260(%a2)
	move.l #0x3f800000,268(%a2)
	moveq #1,%d0
	move.l %d0,282(%a2)
	clr.l 286(%a2)
	clr.l 274(%a2)
	clr.l 124(%a2)
	move.b #1,162(%a2)
	move.b #1,82(%a2)
	clr.b 83(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.b 156(%a2)
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
	move.b #1,200(%a2)
	clr.b 272(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 157(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	clr.b 161(%a2)
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
	clr.b 150(%a2)
	clr.b 151(%a2)
	clr.b 152(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	clr.b 163(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.b 166(%a2)
	clr.b 180(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	clr.b 183(%a2)
	clr.b 189(%a2)
	clr.b 192(%a2)
	clr.b 193(%a2)
	clr.w 196(%a2)
	clr.w 198(%a2)
	clr.b 201(%a2)
	clr.b 202(%a2)
	clr.b 212(%a2)
	clr.b 213(%a2)
	clr.l 214(%a2)
	moveq #50,%d1
	move.l %d1,204(%a2)
	move.b #20,%d0
	move.l %d0,208(%a2)
	move.b %d2,314(%a2)
	move.b #33,%d1
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
	jne .L28
	moveq #62,%d1
	move.l %d1,218(%a2)
	moveq #60,%d2
	move.l %d2,78(%a2)
	move.b #2,%d1
	move.l %d1,232(%a2)
	move.w #210,290(%a2)
	moveq #-1,%d2
	move.l %d2,11544(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #-1,310(%a2)
	move.l #11520,%d0
	move.b #60,%d1
.L25:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 446(%a2),%a1
	clr.w 16(%a1)
	move.l %d1,(%a1)
	move.l #11999920,8(%a1)
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12107440,-(%sp)
	jsr jsfLoadClut
	move.w #90,292(%a2)
	lea (12,%sp),%sp
	tst.b 82(%a2)
	jeq .L26
	move.l 218(%a2),%d0
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
.L26:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,195(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L28:
	moveq #61,%d2
	move.l %d2,218(%a2)
	move.b #57,%d1
	move.l %d1,78(%a2)
	move.b #1,%d2
	move.l %d2,232(%a2)
	move.w #50,290(%a2)
	move.l %d2,10968(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,310(%a2)
	move.l #10944,%d0
	jra .L25
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 340(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24fighterCaptureDpadInputsP7Fighter
__Z24fighterCaptureDpadInputsP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 222(%a2),%d0
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
	move.l 222(%a2),%d0
	addq.l #8,%sp
	jra .L34
.L38:
	tst.b 108(%a2)
	jne .L33
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 222(%a2),%d0
	addq.l #8,%sp
	jra .L33
.L37:
	tst.b 108(%a2)
	jne .L32
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 222(%a2),%d0
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
	and.l 222(%a2),%d1
	jeq .L43
	tst.b 107(%a2)
	jne .L48
.L43:
	move.w 372(%a2),%a0
	move.l %a0,-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L49
	tst.b 181(%a2)
	jne .L50
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L50:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 378(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L49:
	move.b #1,181(%a2)
	clr.b 184(%a2)
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
	tst.b 154(%a2)
	jne .L92
	tst.b 111(%a2)
	jne .L93
	tst.b 112(%a2)
	jeq .L235
.L93:
	move.l 300(%a2),%d2
	tst.b 163(%a2)
	jne .L95
	tst.b 304(%a2)
	jne .L236
	move.l 296(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,296(%a2)
	jle .L237
.L97:
	move.l sprite,%a0
	tst.b 314(%a2)
	jeq .L98
.L257:
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L95:
	clr.l 300(%a2)
	clr.l 264(%a2)
	move.b #1,154(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	move.l %a0,286(%a2)
	clr.w 16(%a3)
	move.l 328(%a2),320(%a2)
	move.b 121(%a2),%d1
	jne .L100
	tst.b 122(%a2)
	jne .L100
	tst.b 158(%a2)
	jeq .L102
	clr.l 320(%a2)
.L102:
	tst.b 111(%a2)
	jne .L103
.L251:
	tst.b 112(%a2)
	jne .L103
	tst.b 120(%a2)
	jne .L103
	tst.b 115(%a2)
	jne .L103
	tst.b 114(%a2)
	jne .L103
	move.b 110(%a2),%d0
.L105:
	tst.b 116(%a2)
	jeq .L238
.L109:
	tst.b %d0
	jne .L110
	tst.b 117(%a2)
	jeq .L111
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
.L108:
	tst.b %d0
	jne .L113
.L117:
	move.b 112(%a2),%d1
	jne .L118
	tst.b 113(%a2)
	jeq .L239
.L118:
	move.w 290(%a2),%a4
	move.w 310(%a2),%d0
	cmp.w #-1,%d0
	jeq .L240
.L119:
	cmp.w #1,%d0
	jeq .L241
.L120:
	tst.b 109(%a2)
	jne .L121
	tst.b %d1
	jne .L122
	tst.b 115(%a2)
	jne .L122
	tst.b 116(%a2)
	jne .L122
	tst.b 113(%a2)
	jne .L242
	tst.b 119(%a2)
	jne .L125
	tst.b 118(%a2)
	jne .L125
.L92:
	tst.b 111(%a2)
	jeq .L126
	tst.b 154(%a2)
	jne .L243
.L126:
	tst.b 112(%a2)
	jeq .L94
	tst.b 154(%a2)
	jne .L244
.L94:
	tst.b 113(%a2)
	jeq .L245
.L128:
	tst.b 154(%a2)
	jne .L246
.L129:
	tst.b 114(%a2)
	jeq .L136
	tst.b 154(%a2)
	jeq .L136
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 282(%a2),%d0
	cmp.l %a0,%d0
	jle .L137
	move.w 310(%a2),%a4
	move.w 290(%a2),%d0
.L138:
	move.l %a4,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
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
	clr.b 154(%a2)
.L91:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L245:
	tst.b 115(%a2)
	jeq .L129
	tst.b 154(%a2)
	jeq .L129
.L246:
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 282(%a2),%d0
	cmp.l %a0,%d0
	jle .L130
	move.w 310(%a2),%a4
	move.w 290(%a2),%d0
.L131:
	move.l %a4,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
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
	clr.b 154(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L136:
	tst.b 116(%a2)
	jeq .L143
	tst.b 154(%a2)
	jeq .L143
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 282(%a2),%d0
	cmp.l %a0,%d0
	jle .L144
	move.w 310(%a2),%a4
	move.w 290(%a2),%d0
	move.l %a4,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
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
.L273:
	clr.b 116(%a2)
	clr.b 117(%a2)
	clr.b 154(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L143:
	tst.b 120(%a2)
	jeq .L150
	tst.b 154(%a2)
	jne .L247
.L150:
	move.b 158(%a2),%d2
	jeq .L151
	tst.b 154(%a2)
	jeq .L151
	tst.b 159(%a2)
	jne .L152
	tst.b 160(%a2)
	jeq .L153
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 586(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L152:
	tst.b 152(%a2)
	jne .L219
.L154:
	cmp.w #1,16(%a3)
	jle .L91
	move.w raptor_ticks,%a0
	cmp.l 278(%a2),%a0
	jlt .L91
	tst.b 159(%a2)
	jeq .L248
	move.w 292(%a2),%d0
	cmp.w #122,%d0
	jle .L161
	move.b #1,152(%a2)
	move.l %a0,278(%a2)
	move.w #90,292(%a2)
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 582(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 306(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 163(%a2)
	jne .L162
	tst.b 304(%a2)
	jne .L249
	move.l 296(%a2),%d0
	subq.l #8,%d0
	move.l %d0,296(%a2)
	jle .L250
.L164:
	move.l sprite,%a0
	tst.b 314(%a2)
	jeq .L165
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L162:
	move.w 310(%a2),%d2
	lea ___floatsisf,%a5
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 256(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L167
	tst.b 158(%a2)
	jne .L167
.L168:
	tst.l %d0
	jle .L171
	tst.b 342(%a2)
	jeq .L170
.L171:
	add.w %d0,290(%a2)
.L170:
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 336(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,292(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
.L268:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L100:
	move.l 332(%a2),320(%a2)
	tst.b 111(%a2)
	jeq .L251
.L103:
	move.b 110(%a2),%d0
	jne .L105
	moveq #0,%d1
	move.b 314(%a2),%d1
	move.l 306(%a2),%d0
	moveq #7,%d2
	cmp.l (%a2),%d2
	jeq .L252
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L117
	jra .L113
.L238:
	tst.b 122(%a2)
	jne .L109
.L110:
	tst.b 113(%a2)
	jne .L112
	tst.b 119(%a2)
	jne .L112
	tst.b 118(%a2)
	jeq .L253
.L112:
	tst.b %d0
	jeq .L254
.L113:
	clr.b 110(%a2)
	jra .L117
.L122:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr __Z10bloodSpraysss
	lea (12,%sp),%sp
	jra .L92
.L121:
	clr.b 109(%a2)
	jra .L92
.L235:
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
	tst.b 158(%a2)
	jne .L93
	tst.b 113(%a2)
	jne .L128
	jra .L245
.L98:
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L95
.L243:
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
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
	clr.b 154(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L239:
	tst.b 119(%a2)
	jne .L118
	tst.b 118(%a2)
	jne .L118
	tst.b 115(%a2)
	jne .L118
	tst.b 116(%a2)
	jeq .L92
	move.w 290(%a2),%a4
	move.w 310(%a2),%d0
	cmp.w #-1,%d0
	jne .L119
.L240:
	lea (40,%a4),%a4
	jra .L120
.L244:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a1
	move.l %a1,-(%sp)
	move.l 534(%a2),-(%sp)
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
	clr.b 154(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L151:
	tst.b 121(%a2)
	jne .L172
	tst.b 122(%a2)
	jeq .L173
.L172:
	tst.b 154(%a2)
	jeq .L173
	tst.b 152(%a2)
	jne .L219
	move.w raptor_ticks,%a0
	cmp.l 278(%a2),%a0
	jlt .L91
	move.w 310(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 248(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L175
	tst.b %d2
	jne .L175
.L176:
	tst.l %d0
	jle .L179
	tst.b 342(%a2)
	jeq .L178
.L179:
	add.w %d0,290(%a2)
.L178:
	move.b 150(%a2),%d3
	move.l 320(%a2),%d2
	tst.b %d3
	jne .L181
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,292(%a2)
	move.l 316(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,320(%a2)
.L181:
	move.l %d2,-(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L182
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L255
.L182:
	tst.b 151(%a2)
	jne .L186
	tst.b %d3
	jne .L187
	tst.b 122(%a2)
	jeq .L256
.L187:
	move.b #1,150(%a2)
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L185
	move.b #1,151(%a2)
	clr.b 150(%a2)
.L185:
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
.L270:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L241:
	lea (-40,%a4),%a4
	jra .L120
.L236:
	clr.b 304(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 296(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,296(%a2)
	jgt .L97
.L237:
	clr.l 296(%a2)
	move.b #1,191(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 314(%a2)
	jeq .L98
	jra .L257
.L130:
	move.w 310(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 244(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L132
	tst.b 158(%a2)
	jeq .L133
.L132:
	tst.l %d0
	jlt .L258
.L134:
	cmp.w #1,%d2
	jne .L133
	tst.b 158(%a2)
	jeq .L135
.L133:
	tst.l %d0
	jle .L135
	tst.b 342(%a2)
	jeq .L211
.L135:
	add.w 290(%a2),%d0
	move.w %d0,290(%a2)
	jra .L131
.L254:
	move.l 306(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 314(%a2),%d2
	move.l 306(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L115
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L259
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L117
	jra .L113
.L173:
	tst.b 118(%a2)
	jeq .L189
	tst.b 154(%a2)
	jeq .L189
	tst.b 152(%a2)
	jne .L219
	move.l 278(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L91
	move.w 310(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 248(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L191
	tst.b %d2
	jne .L191
.L192:
	tst.l %d0
	jle .L195
	tst.b 342(%a2)
	jeq .L194
.L195:
	add.w %d0,290(%a2)
.L194:
	move.l 344(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,344(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L260
.L196:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L261
.L197:
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 542(%a2),-(%sp)
.L217:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	lea (36,%sp),%sp
.L264:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L189:
	tst.b 119(%a2)
	jeq .L198
	tst.b 154(%a2)
	jeq .L198
	tst.b 152(%a2)
	jne .L219
	move.l 278(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L91
	move.w 310(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 248(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L200
	tst.b %d2
	jne .L200
.L201:
	tst.l %d0
	jle .L204
	tst.b 342(%a2)
	jeq .L203
.L204:
	add.w %d0,290(%a2)
.L203:
	move.l 344(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,344(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L262
.L205:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L263
.L206:
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
.L271:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	lea (36,%sp),%sp
	jra .L264
.L198:
	tst.b 153(%a2)
	jeq .L91
	tst.b 154(%a2)
	jeq .L91
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 554(%a2),-(%sp)
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
	clr.b 154(%a2)
	clr.b 153(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L111:
	move.l 306(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.b 110(%a2),%d0
	addq.l #4,%sp
	jeq .L117
	jra .L113
.L252:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L117
	jra .L113
.L247:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a1
	move.l %a1,-(%sp)
	move.l 550(%a2),-(%sp)
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
	move.l 306(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 120(%a2)
	move.b #1,153(%a2)
	clr.w 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L253:
	tst.b %d1
	jeq .L108
	tst.b %d0
	jne .L113
	jra .L254
.L258:
	tst.b 342(%a2)
	jne .L134
.L211:
	move.w 290(%a2),%d0
	jra .L131
.L115:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L117
	jra .L113
.L219:
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a1
	pea -1(%a1)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 278(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L91
	move.b #1,200(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 119(%a2)
	clr.b 118(%a2)
	clr.b 150(%a2)
	clr.b 151(%a2)
	clr.b 152(%a2)
	move.b #1,153(%a2)
	clr.l 344(%a2)
	clr.w 16(%a3)
	move.w #90,292(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L125:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.w %a4,%d2
	ext.l %d2
	move.w 292(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.l %d2,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 292(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 292(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%d0
	add.w #-40,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	move.w 310(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.w 310(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 310(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%d1
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
.L175:
	tst.l %d0
	jlt .L265
.L177:
	cmp.w #1,%d3
	jne .L176
	tst.b %d2
	jne .L176
	add.w %d0,290(%a2)
	jra .L178
.L265:
	tst.b 342(%a2)
	jne .L177
	jra .L178
.L191:
	tst.l %d0
	jlt .L266
.L193:
	cmp.w #1,%d3
	jne .L192
	tst.b %d2
	jne .L192
	add.w %d0,290(%a2)
	jra .L194
.L167:
	tst.l %d0
	jlt .L267
.L169:
	cmp.w #1,%d2
	jne .L168
	tst.b 158(%a2)
	jne .L168
	add.w %d0,290(%a2)
	jra .L170
.L267:
	tst.b 342(%a2)
	jne .L169
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 336(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,292(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L268
.L200:
	tst.l %d0
	jlt .L269
.L202:
	cmp.w #1,%d3
	jne .L201
	tst.b %d2
	jne .L201
	add.w %d0,290(%a2)
	jra .L203
.L261:
	move.b #1,152(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	clr.l 344(%a2)
	move.w #90,292(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 306(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 344(%a2),%a0
	addq.l #4,%sp
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 542(%a2),-(%sp)
	jra .L217
.L249:
	clr.b 304(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 296(%a2),%d0
	subq.l #8,%d0
	move.l %d0,296(%a2)
	jgt .L164
.L250:
	clr.l 296(%a2)
	move.b #1,191(%a2)
	moveq #0,%d0
	jra .L164
.L266:
	tst.b 342(%a2)
	jne .L193
	move.l 344(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,344(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L196
	jra .L260
.L255:
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L270
.L256:
	move.l 306(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L187
.L263:
	move.b #1,152(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	clr.l 344(%a2)
	move.w #90,292(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 306(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 344(%a2),%a0
	addq.l #4,%sp
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	jra .L271
.L260:
	move.l 306(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 344(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L197
	jra .L261
.L269:
	tst.b 342(%a2)
	jne .L202
	move.l 344(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,344(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L205
.L262:
	move.l 306(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 344(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L206
	jra .L263
.L137:
	move.w 310(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 244(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L139
	tst.b 158(%a2)
	jne .L139
.L140:
	tst.l %d0
	jle .L142
	tst.b 342(%a2)
	jeq .L212
.L142:
	add.w 290(%a2),%d0
	move.w %d0,290(%a2)
	jra .L138
.L139:
	tst.l %d0
	jlt .L272
.L141:
	cmp.w #1,%d2
	jne .L140
	tst.b 158(%a2)
	jne .L140
	add.w 290(%a2),%d0
	move.w %d0,290(%a2)
	jra .L138
.L272:
	tst.b 342(%a2)
	jne .L141
.L212:
	move.w 290(%a2),%d0
	jra .L138
.L144:
	move.w 310(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 244(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L146
	tst.b 158(%a2)
	jne .L146
.L147:
	tst.l %d0
	jle .L149
	tst.b 342(%a2)
	jeq .L213
.L149:
	add.w 290(%a2),%d0
	move.w %d0,290(%a2)
.L275:
	move.l %a4,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
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
	jra .L273
.L146:
	tst.l %d0
	jlt .L274
.L148:
	cmp.w #1,%d2
	jne .L147
	tst.b 158(%a2)
	jne .L147
	add.w 290(%a2),%d0
	move.w %d0,290(%a2)
	jra .L275
.L274:
	tst.b 342(%a2)
	jne .L148
.L213:
	move.w 290(%a2),%d0
	move.l %a4,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
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
	jra .L273
.L259:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	move.b 110(%a2),%d0
	addq.l #8,%sp
	jeq .L117
	jra .L113
.L153:
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 582(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 152(%a2)
	jeq .L154
	jra .L219
.L242:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 310(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%d1
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
.L186:
	move.w 292(%a2),%d0
	cmp.w #90,%d0
	jle .L188
	move.b #1,152(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	move.w #90,292(%a2)
	move.w 310(%a2),%a1
	move.l %a1,-(%sp)
	pea 90.w
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 306(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L270
.L161:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 582(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L162
.L248:
	move.b #1,159(%a2)
	move.w 310(%a2),%d1
	move.w %d1,%d0
	ext.l %d0
	lsl.l #4,%d0
	cmp.w #1,%d1
	jeq .L156
	tst.b 158(%a2)
	jne .L156
.L157:
	tst.l %d0
	jle .L160
	tst.b 342(%a2)
	jeq .L159
.L160:
	add.w %d0,290(%a2)
.L159:
	move.w #48,292(%a2)
.L277:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L156:
	tst.l %d0
	jlt .L276
.L158:
	cmp.w #1,%d1
	jne .L157
	tst.b 158(%a2)
	jne .L157
	add.w %d0,290(%a2)
	jra .L159
.L276:
	tst.b 342(%a2)
	jne .L158
	move.w #48,292(%a2)
	jra .L277
.L188:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L270
.L165:
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L162
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
	move.l 218(%a0),%d0
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
	clr.b 156(%a0)
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
	clr.b 157(%a0)
	clr.b 158(%a0)
	clr.b 159(%a0)
	clr.b 160(%a0)
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
	clr.b 150(%a0)
	clr.b 151(%a0)
	clr.b 152(%a0)
	clr.b 153(%a0)
	clr.b 154(%a0)
	clr.b 155(%a0)
	clr.b 165(%a0)
	clr.b 166(%a0)
	clr.b 180(%a0)
	clr.b 164(%a0)
	clr.b 189(%a0)
	clr.b 192(%a0)
	clr.b 193(%a0)
	clr.b 201(%a0)
	clr.b 202(%a0)
	clr.b 212(%a0)
	clr.b 213(%a0)
	clr.b 304(%a0)
	clr.b 312(%a0)
	clr.b 313(%a0)
	move.b #1,342(%a0)
	clr.b 181(%a0)
	clr.b 182(%a0)
	clr.b 183(%a0)
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
	move.b #1,163(%a2)
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
	move.l 446(%a3),%a0
	clr.w 16(%a0)
	move.l 78(%a3),%d0
	move.l %d0,(%a0)
	move.l #11999920,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	moveq #3,%d0
	move.l %d0,(%sp)
	pea 13.w
	move.l #12107440,-(%sp)
	lea jsfLoadClut,%a3
	jsr (%a3)
	move.l 446(%a2),%a0
	clr.w 16(%a0)
	move.l 78(%a2),%d0
	move.l %d0,(%a0)
	move.l #11999920,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	addq.l #8,%sp
	moveq #3,%d1
	move.l %d1,(%sp)
	pea 13.w
	move.l #12107440,-(%sp)
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
	move.b 154(%a0),%d0
	jne .L283
	tst.b 90(%a0)
	jne .L283
.L284:
	tst.b 92(%a1)
	jne .L312
.L286:
	tst.b 93(%a1)
	jeq .L288
	tst.b 89(%a0)
	jne .L288
	move.b #1,112(%a0)
	moveq #2,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	addq.l #5,226(%a1)
	move.b #1,230(%a1)
.L287:
	tst.b %d0
	jne .L282
.L307:
	tst.b 90(%a0)
	jeq .L300
.L313:
	tst.b 89(%a0)
	jeq .L300
	move.b #1,91(%a0)
	move.b #1,189(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a0)
.L303:
	tst.b 157(%a1)
	jeq .L282
	move.w 290(%a1),196(%a0)
	move.w 292(%a1),198(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,160(%a0)
	move.b #1,193(%a0)
	clr.b 200(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a1)
.L282:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L283:
	tst.b 163(%a0)
	jne .L284
	tst.b %d0
	jne .L282
	tst.b 90(%a0)
	jeq .L307
	move.b #1,91(%a0)
	move.b #1,189(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a0)
	tst.b 90(%a0)
	jne .L313
.L300:
	tst.b 100(%a1)
	jeq .L302
	move.b #1,120(%a0)
	moveq #4,%d0
	move.l %d0,300(%a0)
	clr.b 304(%a0)
	moveq #10,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
	jra .L303
.L312:
	tst.b 89(%a0)
	jne .L286
	move.b #1,111(%a0)
	moveq #2,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	addq.l #5,226(%a1)
	move.b #1,230(%a1)
	jra .L287
.L288:
	tst.b 94(%a1)
	jeq .L289
	tst.b 89(%a0)
	jne .L289
	move.b #1,111(%a0)
	moveq #5,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #20,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
.L314:
	tst.b %d0
	jeq .L307
	jra .L282
.L289:
	tst.b 95(%a1)
	jeq .L290
	tst.b 89(%a0)
	jne .L290
	move.b #1,113(%a0)
	moveq #5,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #20,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
	jra .L314
.L290:
	tst.b 101(%a1)
	jeq .L291
	tst.b 89(%a0)
	jeq .L315
.L291:
	tst.b 102(%a1)
	jeq .L292
	tst.b 89(%a0)
	jeq .L316
.L292:
	tst.b 96(%a1)
	jeq .L294
	move.b #1,115(%a0)
	clr.b 200(%a1)
	move.b #1,202(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #5,%d1
	move.l %d1,300(%a0)
	move.b #1,304(%a0)
	move.b #10,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
	tst.b %d0
	jeq .L307
	jra .L282
.L302:
	tst.b 104(%a1)
	jeq .L303
	move.b #1,114(%a0)
	clr.b 200(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #2,%d0
	move.l %d0,300(%a0)
	clr.b 304(%a0)
	addq.l #5,226(%a1)
	move.b #1,230(%a1)
	jra .L303
.L294:
	tst.b 97(%a1)
	jne .L317
	tst.b 99(%a1)
	jeq .L296
	move.b #1,118(%a0)
	clr.b 200(%a1)
	move.b #1,201(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #8,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #20,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
	jra .L314
.L315:
	move.b #1,113(%a0)
	moveq #6,%d1
	move.l %d1,300(%a0)
	move.b #1,304(%a0)
	move.b #20,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
.L319:
	tst.b %d0
	jeq .L307
	jra .L282
.L316:
	move.b #1,116(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L318
	moveq #4,%d1
.L320:
	move.l %d1,300(%a0)
	move.b #1,304(%a0)
	move.b #20,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
	jra .L319
.L317:
	move.b #1,115(%a0)
	clr.b 200(%a1)
	move.b #1,202(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #4,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #20,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
	jra .L314
.L318:
	move.b #1,117(%a0)
	moveq #4,%d1
	jra .L320
.L296:
	tst.b 98(%a1)
	jeq .L297
	move.b #1,121(%a0)
	clr.b 200(%a1)
	move.b #1,202(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #6,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #20,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
	jra .L314
.L297:
	tst.b 103(%a1)
	jeq .L287
	move.b #1,122(%a0)
	clr.b 200(%a1)
	move.b #1,202(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,278(%a1)
	moveq #4,%d1
	move.l %d1,300(%a0)
	clr.b 304(%a0)
	move.b #50,%d1
	add.l %d1,226(%a1)
	move.b #1,230(%a1)
	tst.b %d0
	jeq .L307
	jra .L282
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
	jeq .L336
	cmp.w #-1,%d0
	jeq .L337
.L325:
	move.w 310(%a0),%d0
	cmp.w #1,%d0
	jeq .L338
.L326:
	cmp.w #-1,%d0
	jne .L322
	move.w 290(%a0),%a2
	add.l _turnOffset,%a2
	move.w 290(%a1),%a1
	cmp.l %a2,%a1
	jle .L322
.L333:
	tst.b 156(%a0)
	jne .L322
	clr.b 313(%a0)
	move.b #1,156(%a0)
	move.b #1,312(%a0)
.L322:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L337:
	move.w 290(%a1),%a3
	add.l _turnOffset,%a3
	move.w 290(%a0),%a2
	cmp.l %a3,%a2
	jle .L325
	tst.b 156(%a1)
	jne .L325
.L339:
	clr.b 313(%a1)
	move.b #1,156(%a1)
	move.b #1,312(%a1)
	move.w 310(%a0),%d0
	cmp.w #1,%d0
	jne .L326
.L338:
	move.w 290(%a0),%a2
	move.w 290(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L333
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L336:
	move.w 290(%a1),%a3
	move.w 290(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L325
	tst.b 156(%a1)
	jne .L325
	jra .L339
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
	jeq .L348
	cmp.w #-1,%d0
	jeq .L349
.L343:
	clr.b 161(%a0)
	clr.b 161(%a1)
.L341:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L349:
	move.w 290(%a1),%a3
	move.w 290(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L343
.L345:
	move.b #1,161(%a0)
	move.b #1,161(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L348:
	move.w 290(%a1),%a3
	move.w 290(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L345
	clr.b 161(%a0)
	clr.b 161(%a1)
	jra .L341
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 296(%a1),16792(%a0)
	move.l 12(%fp),%a1
	move.l 296(%a1),%d0
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterAddPendingDamageP7FighteribS0_i
__Z23fighterAddPendingDamageP7FighteribS0_i:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 20(%fp),%a0
	move.l 12(%fp),300(%a1)
	move.b 19(%fp),304(%a1)
	move.l 24(%fp),%d0
	add.l %d0,226(%a0)
	move.b #1,230(%a0)
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
	tst.b 163(%a2)
	jne .L353
	tst.b 304(%a2)
	jne .L360
	move.l 296(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,296(%a2)
	jle .L361
.L356:
	move.l sprite,%a0
	tst.b 314(%a2)
	jeq .L357
.L362:
	move.l %d0,16792(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L357:
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L353:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L360:
	clr.b 304(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 296(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,296(%a2)
	jgt .L356
.L361:
	clr.l 296(%a2)
	move.b #1,191(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 314(%a2)
	jeq .L357
	jra .L362
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,310(%a0)
	jeq .L369
	tst.b 342(%a0)
	jeq .L364
.L366:
	addq.w #2,290(%a0)
.L364:
	unlk %fp
	rts
.L369:
	tst.b 158(%a0)
	jeq .L366
	tst.b 342(%a0)
	jne .L366
	jra .L364
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,310(%a0)
	jeq .L372
	tst.b 158(%a0)
	jeq .L373
.L372:
	tst.b 342(%a0)
	jeq .L371
.L373:
	subq.w #2,290(%a0)
.L371:
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
	jeq .L378
	move.l 218(%a0),%d0
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
.L378:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L386
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L386:
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
	jle .L402
.L390:
	cmp.w #280,%d0
	jgt .L394
.L399:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L402:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L398
	move.w 290(%a2),%d0
	cmp.w #11,%d0
	jgt .L390
	cmp.w #280,290(%a3)
	jgt .L398
	jsr (%a4)
	tst.b %d0
	jne .L398
	move.w 290(%a2),%d0
	cmp.w #280,%d0
	jle .L399
.L394:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L403
.L398:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L403:
	cmp.w #328,290(%a2)
	jle .L399
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
	jeq .L406
	tst.b 158(%a0)
	jne .L406
.L407:
	tst.l %d0
	jle .L410
	tst.b 342(%a0)
	jeq .L405
.L410:
	add.w %d0,290(%a0)
.L405:
	unlk %fp
	rts
.L406:
	tst.l %d0
	jlt .L413
	cmp.w #1,%d1
	jne .L407
.L414:
	tst.b 158(%a0)
	jne .L407
	add.w %d0,290(%a0)
	jra .L405
.L413:
	tst.b 342(%a0)
	jeq .L405
	cmp.w #1,%d1
	jne .L407
	jra .L414
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #15408,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d3
	tst.b 154(%a2)
	jne .L417
	tst.b 84(%a2)
	jeq .L646
.L418:
	clr.b 82(%a2)
.L420:
	move.l 232(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,222(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L421
	tst.b 107(%a2)
	jeq .L421
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L421:
	move.w 372(%a2),%a0
	move.l %a0,-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L647
	tst.b 181(%a2)
	jne .L648
	move.l 222(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L616
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L616
.L424:
	tst.b 99(%a2)
	jne .L426
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L434
	tst.l %d1
	jeq .L435
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L436
	cmp.w #1,310(%a2)
	jeq .L434
.L436:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L435
	cmp.w #-1,310(%a2)
	jeq .L434
.L435:
	tst.b 93(%a2)
	jeq .L649
.L438:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L445
	clr.b 93(%a2)
.L445:
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L433:
	move.l 222(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L613
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L613
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L613
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L613
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L613
	and.l JAGPAD_7,%d0
	jne .L613
	move.b #1,107(%a2)
.L613:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 222(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L416
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L615
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L615
	and.l JAGPAD_RIGHT,%d0
	jne .L615
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L615:
	move.b #1,106(%a2)
.L416:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L417:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L646:
	tst.b 89(%a2)
	jne .L418
	tst.b 86(%a2)
	jne .L418
	tst.b 88(%a2)
	jne .L418
	tst.b 87(%a2)
	jne .L418
	tst.b 85(%a2)
	jeq .L420
	clr.b 82(%a2)
	jra .L420
.L648:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 378(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L616:
	tst.b 89(%a2)
	jeq .L424
	tst.b 107(%a2)
	jeq .L424
	tst.b 200(%a2)
	jeq .L424
	tst.b 99(%a2)
	jne .L426
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 306(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L426:
	move.l 418(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 201(%a2)
	jeq .L650
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 204(%a2),%d0
	cmp.l %a0,%d0
	jgt .L651
.L430:
	clr.b 201(%a2)
.L431:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L433
	clr.b 99(%a2)
	move.b #1,200(%a2)
	jra .L433
.L649:
	tst.l %d4
	jeq .L652
.L446:
	tst.b 107(%a2)
	jeq .L447
	tst.b 200(%a2)
	jeq .L447
	tst.b 86(%a2)
	jne .L447
	tst.b 155(%a2)
	jeq .L447
	tst.b 102(%a2)
	jne .L450
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L452:
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L647:
	move.b #1,181(%a2)
	clr.b 184(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L434:
	tst.b 107(%a2)
	jeq .L435
	tst.b 200(%a2)
	jeq .L435
	tst.b 86(%a2)
	jne .L435
	tst.b 155(%a2)
	jne .L435
	tst.b 93(%a2)
	jne .L438
	clr.b 107(%a2)
	move.b #1,93(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d2
	move.b 314(%a2),%d2
	move.l 306(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L442
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L443
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L653
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L656:
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L650:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 201(%a2)
	jeq .L431
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 204(%a2),%d0
	cmp.l %a0,%d0
	jle .L430
	jra .L651
.L652:
	tst.l %d1
	jeq .L447
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L448
	cmp.w #1,310(%a2)
	jeq .L446
.L448:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L447
	cmp.w #-1,310(%a2)
	jeq .L446
.L447:
	tst.b 102(%a2)
	jne .L450
	tst.l %d1
	jeq .L453
	tst.b 107(%a2)
	jeq .L453
	tst.b 200(%a2)
	jeq .L453
	tst.b 86(%a2)
	jne .L453
	tst.b 161(%a2)
	jeq .L453
	tst.b 157(%a2)
	jne .L455
	clr.b 107(%a2)
	move.b #1,157(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L457
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L458
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L654
.L457:
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L460:
	move.l 442(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 578(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L651:
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
	move.l 526(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 201(%a2)
	jne .L433
	jra .L431
.L450:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L452
	clr.b 102(%a2)
	move.b #1,200(%a2)
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L654:
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 442(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 578(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L453:
	tst.b 157(%a2)
	jne .L455
	tst.l %d1
	jeq .L461
	tst.b 107(%a2)
	jeq .L461
	tst.b 200(%a2)
	jeq .L461
	tst.b 86(%a2)
	jne .L461
	tst.b 161(%a2)
	jne .L461
	tst.b 92(%a2)
	jne .L463
	clr.b 107(%a2)
	move.b #1,92(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L465:
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L455:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L460
	clr.b 157(%a2)
	move.b #1,200(%a2)
	move.l 442(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 578(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L461:
	tst.b 92(%a2)
	jne .L463
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L466
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L466
	cmp.w #1,310(%a2)
	jeq .L467
.L466:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L468
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L468
	cmp.w #-1,310(%a2)
	jeq .L467
.L468:
	tst.b 100(%a2)
	jeq .L655
.L470:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L472
	clr.b 100(%a2)
.L472:
	move.l 422(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 558(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L463:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L465
	clr.b 92(%a2)
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L655:
	tst.l %d1
	jeq .L473
	cmp.w #1,310(%a2)
	jeq .L474
.L473:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L475
	cmp.w #-1,310(%a2)
	jeq .L474
.L475:
	tst.b 101(%a2)
	jne .L478
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L481
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L482
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L483
	cmp.w #1,310(%a2)
	jeq .L481
.L483:
	tst.l %d1
	jeq .L482
	cmp.w #-1,310(%a2)
	jeq .L481
.L482:
	tst.b 95(%a2)
	jne .L485
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L488
	tst.b 107(%a2)
	jeq .L488
	tst.b 200(%a2)
	jeq .L488
	tst.b 86(%a2)
	jne .L488
	tst.b 89(%a2)
	jne .L488
	tst.b 161(%a2)
	jeq .L488
	tst.b 103(%a2)
	jne .L490
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L492:
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 570(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L478:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L480
	clr.b 101(%a2)
.L480:
	move.l 426(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 562(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L467:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L468
	tst.b 107(%a2)
	jeq .L468
	tst.b 200(%a2)
	jeq .L468
	tst.b 86(%a2)
	jne .L468
	tst.b 100(%a2)
	jne .L470
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,100(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 422(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 558(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L474:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L476
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L475
.L476:
	tst.b 107(%a2)
	jeq .L475
	tst.b 200(%a2)
	jeq .L475
	tst.b 86(%a2)
	jne .L475
	tst.b 101(%a2)
	jne .L478
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,101(%a2)
	clr.w 16(%a3)
	move.l 306(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 426(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 562(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L481:
	tst.b 107(%a2)
	jeq .L482
	tst.b 200(%a2)
	jeq .L482
	tst.b 86(%a2)
	jne .L482
	tst.b 89(%a2)
	jne .L482
	tst.b 155(%a2)
	jne .L482
	tst.b 95(%a2)
	jne .L485
	clr.b 107(%a2)
	move.b #1,95(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L487:
	move.l 406(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L485:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L487
	clr.b 95(%a2)
	move.l 406(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L443:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L656
.L442:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L656
.L653:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L656
.L458:
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 442(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 578(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L488:
	tst.b 103(%a2)
	jne .L490
	and.l %d0,%d5
	jeq .L493
	tst.b 107(%a2)
	jeq .L493
	tst.b 200(%a2)
	jeq .L493
	tst.b 86(%a2)
	jne .L493
	tst.b 89(%a2)
	jne .L493
	tst.b 155(%a2)
	jne .L493
	tst.b 94(%a2)
	jne .L495
	clr.b 107(%a2)
	move.b #1,94(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L497:
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L490:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L492
	clr.b 103(%a2)
	move.b #1,200(%a2)
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 570(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L493:
	tst.b 94(%a2)
	jne .L495
	tst.l %d4
	jeq .L498
	tst.b 107(%a2)
	jeq .L498
	tst.b 200(%a2)
	jeq .L498
	tst.b 86(%a2)
	jne .L498
	tst.b 89(%a2)
	jeq .L498
	tst.b 104(%a2)
	jne .L500
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 306(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L502:
	move.l 438(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 574(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L495:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L497
	clr.b 94(%a2)
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L498:
	tst.b 104(%a2)
	jeq .L657
.L500:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L502
	clr.b 104(%a2)
	move.b #1,200(%a2)
	move.b #1,89(%a2)
	move.w #1,16(%a3)
	move.l 438(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 574(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L657:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L503
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L504
.L503:
	tst.b 86(%a2)
	jne .L504
	tst.b 200(%a2)
	jeq .L504
	tst.b 90(%a2)
	jne .L505
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L505:
	and.l JAGPAD_DOWN,%d0
	jeq .L506
	tst.b 89(%a2)
	jne .L507
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L507:
	tst.b 91(%a2)
	jne .L508
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L504:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L511
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L512
	cmp.w #1,310(%a2)
	jeq .L513
.L512:
	tst.l %d1
	jeq .L511
	cmp.w #-1,310(%a2)
	jeq .L513
.L511:
	tst.b 87(%a2)
	jeq .L658
.L515:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L517
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L518
.L517:
	tst.b 87(%a2)
	jeq .L518
	tst.b 212(%a2)
	jne .L518
	tst.b 272(%a2)
	jeq .L519
.L518:
	tst.b 96(%a2)
	jeq .L520
	tst.b 212(%a2)
	jne .L520
	tst.b 87(%a2)
	jeq .L520
.L519:
	tst.b 98(%a2)
	jne .L520
	tst.b 96(%a2)
	jne .L521
	clr.b 107(%a2)
	move.b #1,272(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L521:
	tst.b 202(%a2)
	jeq .L659
.L522:
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 208(%a2),%d0
	cmp.l %a0,%d0
	jgt .L660
	clr.b 202(%a2)
	clr.b 96(%a2)
.L523:
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 222(%a2),%d0
.L520:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L525
	and.l JAGPAD_9,%d0
	jeq .L526
.L525:
	tst.b 87(%a2)
	jeq .L526
	tst.b 212(%a2)
	jne .L526
	tst.b 272(%a2)
	jeq .L527
.L526:
	tst.b 98(%a2)
	jeq .L528
	tst.b 212(%a2)
	jne .L528
	tst.b 87(%a2)
	jeq .L528
.L527:
	tst.b 96(%a2)
	jne .L528
	tst.b 98(%a2)
	jne .L529
	clr.b 107(%a2)
	move.b #1,272(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L529:
	tst.b 202(%a2)
	jeq .L661
.L530:
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 208(%a2),%d0
	cmp.l %a0,%d0
	jgt .L662
	clr.b 202(%a2)
	clr.b 98(%a2)
.L531:
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L528:
	tst.w 16(%a3)
	jne .L533
	tst.b 96(%a2)
	jne .L533
	tst.b 98(%a2)
	jeq .L663
.L533:
	tst.b 87(%a2)
	jeq .L433
	tst.b 212(%a2)
	jne .L534
	move.l 214(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L534
	tst.b 213(%a2)
	jne .L535
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L535
	tst.b 96(%a2)
	jne .L535
	tst.b 98(%a2)
	jne .L535
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,213(%a2)
	addq.l #8,%sp
.L535:
	tst.b 202(%a2)
	jeq .L664
.L536:
	tst.b 96(%a2)
	jne .L538
	tst.b 98(%a2)
	jne .L538
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
	move.l 474(%a2),-(%sp)
	move.l 344(%a2),-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L538:
	move.w raptor_ticks,%a0
	move.l %a0,214(%a2)
.L534:
	clr.l -(%sp)
	move.l 320(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L539
	cmp.w #89,292(%a2)
	jgt .L639
.L539:
	tst.b 212(%a2)
	jeq .L433
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L433
	move.b #1,200(%a2)
	clr.b 87(%a2)
.L641:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 213(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L433
.L506:
	tst.b 89(%a2)
	jeq .L509
	clr.b 89(%a2)
.L509:
	tst.b 91(%a2)
	jne .L510
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L639:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,212(%a2)
	clr.l 320(%a2)
	move.w #90,292(%a2)
	addq.l #4,%sp
	jra .L433
.L508:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 34(%a2),%a0
.L643:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L433
	clr.b 91(%a2)
	jra .L433
.L510:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 30(%a2),%a0
	jra .L643
.L664:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 260(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 344(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,344(%a2)
	addq.l #8,%sp
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L537
	clr.l 344(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,212(%a2)
	move.w #90,292(%a2)
	addq.l #4,%sp
.L537:
	move.l 316(%a2),-(%sp)
	move.l 320(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,320(%a2)
	jra .L536
.L663:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L640:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L658:
	tst.l %d4
	jeq .L541
	tst.l %d1
	jeq .L542
	cmp.w #1,310(%a2)
	jeq .L543
.L542:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L541
	cmp.w #-1,310(%a2)
	jeq .L543
.L541:
	tst.b 88(%a2)
	jeq .L665
.L545:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L547
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L548
.L547:
	tst.b 88(%a2)
	jeq .L548
	tst.b 212(%a2)
	jne .L548
	tst.b 272(%a2)
	jeq .L549
.L548:
	tst.b 96(%a2)
	jeq .L550
	tst.b 212(%a2)
	jne .L550
	tst.b 88(%a2)
	jeq .L550
.L549:
	tst.b 98(%a2)
	jne .L550
	tst.b 96(%a2)
	jne .L551
	clr.b 107(%a2)
	move.b #1,272(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L551:
	tst.b 202(%a2)
	jeq .L666
.L552:
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 208(%a2),%d0
	cmp.l %a0,%d0
	jgt .L667
	clr.b 202(%a2)
	clr.b 98(%a2)
.L553:
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 222(%a2),%d0
.L550:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L555
	and.l JAGPAD_9,%d0
	jeq .L556
.L555:
	tst.b 88(%a2)
	jeq .L556
	tst.b 212(%a2)
	jne .L556
	tst.b 272(%a2)
	jeq .L557
.L556:
	tst.b 98(%a2)
	jeq .L558
	tst.b 212(%a2)
	jne .L558
	tst.b 88(%a2)
	jeq .L558
.L557:
	tst.b 96(%a2)
	jne .L558
	tst.b 98(%a2)
	jne .L559
	clr.b 107(%a2)
	move.b #1,272(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L559:
	tst.b 202(%a2)
	jeq .L668
.L560:
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 208(%a2),%d0
	cmp.l %a0,%d0
	jgt .L669
	clr.b 202(%a2)
	clr.b 98(%a2)
.L561:
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L558:
	tst.w 16(%a3)
	jne .L563
	tst.b 96(%a2)
	jne .L563
	tst.b 98(%a2)
	jeq .L670
.L563:
	tst.b 88(%a2)
	jeq .L433
	tst.b 212(%a2)
	jne .L564
	move.l 214(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L564
	tst.b 213(%a2)
	jne .L565
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L565
	tst.b 96(%a2)
	jne .L565
	tst.b 98(%a2)
	jne .L565
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,213(%a2)
	addq.l #8,%sp
.L565:
	tst.b 202(%a2)
	jne .L566
	tst.b 343(%a2)
	jne .L567
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 260(%a2),%d1
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
.L567:
	move.l 344(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,344(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L568
	clr.l 344(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,212(%a2)
	move.w #90,292(%a2)
	addq.l #4,%sp
.L568:
	move.l 316(%a2),-(%sp)
	move.l 320(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,320(%a2)
.L566:
	tst.b 96(%a2)
	jne .L569
	tst.b 98(%a2)
	jne .L569
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
	move.l 474(%a2),-(%sp)
	moveq #20,%d0
	sub.l 344(%a2),%d0
	move.l %d0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L569:
	move.w raptor_ticks,%a0
	move.l %a0,214(%a2)
.L564:
	clr.l -(%sp)
	move.l 320(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L570
	cmp.w #89,292(%a2)
	jgt .L639
.L570:
	tst.b 212(%a2)
	jeq .L433
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L433
	move.b #1,200(%a2)
	clr.b 88(%a2)
	jra .L641
.L670:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L640
.L669:
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
	move.l 522(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L561
.L668:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 202(%a2)
	jeq .L561
	jra .L560
.L667:
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
	move.l 514(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L553
.L666:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 202(%a2)
	jeq .L553
	jra .L552
.L665:
	tst.l %d1
	jeq .L572
	tst.b 200(%a2)
	jeq .L572
	tst.b 86(%a2)
	jne .L572
	tst.b 84(%a2)
	jne .L573
	clr.w 16(%a3)
.L573:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	and.l #255,%d3
	move.l %d3,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
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
	tst.w 290(%a2)
	jle .L433
	tst.b 155(%a2)
	jne .L574
	move.l 240(%a2),%d0
	cmp.w #-1,310(%a2)
	jne .L575
	move.l 236(%a2),%d0
.L575:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L638:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L433
.L574:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L433
	move.l 268(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L638
.L572:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L576
	tst.b 200(%a2)
	jeq .L576
	tst.b 86(%a2)
	jne .L576
	tst.b 84(%a2)
	jne .L577
	clr.w 16(%a3)
.L577:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	move.b %d3,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
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
	cmp.w #280,290(%a2)
	jgt .L433
	tst.b 155(%a2)
	jne .L578
	move.l 236(%a2),%d0
	cmp.w #-1,310(%a2)
	jne .L579
	move.l 240(%a2),%d0
.L579:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L638
.L578:
	move.l 268(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L638
.L576:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L580
	tst.b 200(%a2)
	jeq .L580
	tst.b 86(%a2)
	jne .L580
	tst.b 89(%a2)
	jne .L581
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L581:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L580:
	tst.l %d4
	jeq .L582
	tst.b 105(%a2)
	jeq .L582
	tst.b 200(%a2)
	jne .L583
.L582:
	tst.b 86(%a2)
	jeq .L671
.L584:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L586
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L587
.L586:
	tst.b 86(%a2)
	jeq .L587
	tst.b 212(%a2)
	jne .L587
	tst.b 272(%a2)
	jeq .L588
.L587:
	tst.b 96(%a2)
	jeq .L589
	tst.b 212(%a2)
	jne .L589
	tst.b 86(%a2)
	jeq .L589
.L588:
	tst.b 97(%a2)
	jne .L589
	tst.b 96(%a2)
	jne .L590
	clr.b 107(%a2)
	move.b #1,272(%a2)
	move.b #1,85(%a2)
	move.b #1,96(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L590:
	tst.b 202(%a2)
	jeq .L672
.L591:
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 208(%a2),%d0
	cmp.l %a0,%d0
	jgt .L673
	clr.b 202(%a2)
	clr.b 96(%a2)
.L592:
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 222(%a2),%d0
.L589:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L594
	and.l JAGPAD_9,%d0
	jeq .L595
.L594:
	tst.b 86(%a2)
	jeq .L595
	tst.b 212(%a2)
	jne .L595
	tst.b 272(%a2)
	jeq .L596
.L595:
	tst.b 97(%a2)
	jeq .L597
	tst.b 212(%a2)
	jne .L597
	tst.b 86(%a2)
	jeq .L597
.L596:
	tst.b 96(%a2)
	jne .L597
	tst.b 97(%a2)
	jne .L598
	clr.b 107(%a2)
	move.b #1,272(%a2)
	move.b #1,97(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 306(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L598:
	tst.b 202(%a2)
	jeq .L674
.L599:
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	add.l 208(%a2),%d0
	cmp.l %a0,%d0
	jgt .L675
	clr.b 202(%a2)
	clr.b 97(%a2)
.L600:
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L597:
	tst.w 16(%a3)
	jne .L602
	tst.b 96(%a2)
	jne .L602
	tst.b 97(%a2)
	jeq .L608
.L602:
	tst.b 86(%a2)
	jeq .L433
	tst.b 212(%a2)
	jne .L603
	move.l 278(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L604
	tst.b 202(%a2)
	jne .L604
	move.l 344(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,344(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L605
	clr.l 344(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,212(%a2)
	move.w #90,292(%a2)
	addq.l #4,%sp
.L605:
	move.l 316(%a2),-(%sp)
	move.l 320(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,320(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
.L604:
	tst.b 96(%a2)
	jne .L603
	tst.b 97(%a2)
	jne .L603
	move.w #1,16(%a3)
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
	move.l 470(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L603:
	clr.l -(%sp)
	move.l 320(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L606
	cmp.w #89,292(%a2)
	jgt .L676
.L606:
	tst.b 212(%a2)
	jeq .L433
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L608
	move.b #1,200(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L608:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L676:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,212(%a2)
	clr.l 320(%a2)
	move.w #90,292(%a2)
	addq.l #4,%sp
	jra .L433
.L662:
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
	move.l 522(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L531
.L661:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 202(%a2)
	jeq .L531
	jra .L530
.L660:
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
	move.l 514(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L523
.L659:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 202(%a2)
	jeq .L523
	jra .L522
.L513:
	tst.b 106(%a2)
	jeq .L511
	tst.b 200(%a2)
	jeq .L511
	tst.b 87(%a2)
	jne .L515
	clr.b 200(%a2)
	clr.b 272(%a2)
	clr.b 106(%a2)
	move.b #1,87(%a2)
	clr.w 16(%a3)
	move.l 324(%a2),320(%a2)
	clr.b 212(%a2)
	clr.l 344(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,214(%a2)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 222(%a2),%d0
	jra .L515
.L583:
	tst.b 86(%a2)
	jne .L584
	clr.b 105(%a2)
	clr.b 272(%a2)
	move.b #1,86(%a2)
	clr.w 16(%a3)
	clr.l 344(%a2)
	move.l 324(%a2),320(%a2)
	clr.b 212(%a2)
	clr.b 200(%a2)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 222(%a2),%d0
	jra .L584
.L543:
	tst.b 106(%a2)
	jeq .L541
	tst.b 200(%a2)
	jeq .L541
	tst.b 88(%a2)
	jne .L545
	clr.b 200(%a2)
	clr.b 272(%a2)
	clr.b 106(%a2)
	move.b #1,88(%a2)
	clr.w 16(%a3)
	clr.l 344(%a2)
	move.l 324(%a2),320(%a2)
	clr.b 212(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,214(%a2)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 222(%a2),%d0
	jra .L545
.L672:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 202(%a2)
	jeq .L592
	jra .L591
.L675:
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
	move.l 518(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L600
.L674:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 202(%a2)
	jeq .L600
	jra .L599
.L673:
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
	move.l 514(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L592
.L671:
	tst.b 89(%a2)
	jne .L677
	tst.b 90(%a2)
	jne .L678
	tst.b 84(%a2)
	jeq .L611
	clr.b 155(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L611:
	tst.b 82(%a2)
	jne .L612
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L612:
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
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L433
.L678:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L433
	clr.b 90(%a2)
	jra .L433
.L677:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L433
	clr.b 89(%a2)
	jra .L433
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
	jeq .L680
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L686
	jlt .L690
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L684
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L685
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L722
.L682:
	sub.w 292(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L695
	jge .L723
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L697
	cmp.l #128,%d0
	jeq .L698
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L696
.L691:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L704
	jlt .L708
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L702
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L703
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L701
	moveq #84,%d1
	not.b %d1
.L700:
	cmp.l %a1,%d1
	jge .L680
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L711
	jlt .L717
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L711
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L711
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L711
	move.w #171,%d1
.L711:
	move.w %d1,12(%a0)
.L680:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L690:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L688
	cmp.l #128,%d0
	jeq .L689
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L682
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 292(%a2),%d1
.L696:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L705:
	moveq #78,%d1
	not.b %d1
	jra .L700
.L686:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 292(%a2),%d1
.L695:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L704:
	moveq #75,%d1
	not.b %d1
	jra .L700
.L684:
	move.w %a1,%d1
	sub.w 292(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L693:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L702:
	moveq #69,%d1
	not.b %d1
	jra .L700
.L688:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 292(%a2),%d1
.L697:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L706:
	moveq #81,%d1
	not.b %d1
	jra .L700
.L722:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 292(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L701:
	moveq #66,%d1
	not.b %d1
	jra .L700
.L717:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L711
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L711
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L711
	move.w #171,%d1
	jra .L711
.L685:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 292(%a2),%d1
.L694:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L703:
	moveq #72,%d1
	not.b %d1
	jra .L700
.L689:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 292(%a2),%d1
	add.w %a1,%d1
.L698:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L707:
	moveq #87,%d1
	not.b %d1
	jra .L700
.L723:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L693
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L694
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L691
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L701
.L708:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L706
	cmp.l #128,%d0
	jeq .L707
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L705
	moveq #84,%d1
	not.b %d1
	jra .L700
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
	tst.b 195(%a2)
	jeq .L727
	clr.b 195(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	move.l %a0,274(%a2)
	move.l %a0,286(%a2)
	move.l %a0,214(%a2)
	move.l %a0,12(%a3)
.L727:
	tst.b 194(%a2)
	jne .L792
	tst.b 133(%a2)
	jne .L793
.L729:
	tst.b 144(%a2)
	jeq .L730
	move.l 146(%a2),%d0
	move.w 290(%a2),%d1
	move.w %d1,%a0
	cmp.l %d0,%a0
	jlt .L794
	jgt .L795
.L730:
	tst.b 166(%a2)
	jeq .L736
	move.w raptor_ticks,%a0
	tst.b 167(%a2)
	jne .L738
	move.l 176(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L796
	move.l 168(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,290(%a2)
	neg.l %d0
	move.l %d0,168(%a2)
	move.l 172(%a2),%d0
	addq.l #1,%d0
	move.l %d0,172(%a2)
	move.l %a0,176(%a2)
.L740:
	moveq #5,%d1
	cmp.l %d0,%d1
	jge .L738
	move.b #1,167(%a2)
.L738:
	move.l 278(%a2),%d0
	add.l #180,%d0
	cmp.l %d0,%a0
	jgt .L797
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 154(%a2)
	jne .L798
.L726:
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L736:
	tst.b 123(%a2)
	jne .L799
	tst.b 134(%a2)
	jne .L800
	tst.b 164(%a2)
	jeq .L751
	moveq #119,%d0
	add.l 278(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L752
	tst.b 154(%a2)
	jeq .L753
.L752:
	clr.b 164(%a2)
.L753:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L790:
	moveq #1,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
.L793:
	moveq #59,%d0
	add.l 278(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L729
	clr.b 133(%a2)
	clr.b 181(%a2)
	move.b #1,134(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z22sfxScorpionGetOverHereP12SoundHandlerb
	addq.l #8,%sp
	jra .L729
.L792:
	clr.b 194(%a2)
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	jra .L729
.L794:
	cmp.w #1,310(%a2)
	jeq .L801
	tst.b 342(%a2)
	jeq .L730
.L733:
	addq.w #8,%d1
	move.w %d1,290(%a2)
	move.w %d1,%a0
	cmp.l %d0,%a0
	jlt .L730
	clr.b 144(%a2)
	jra .L730
.L797:
	clr.b 166(%a2)
	move.b #1,200(%a2)
	tst.b 314(%a2)
	jne .L802
	pea 16.w
	pea 15.w
	move.l 348(%a2),-(%sp)
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
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 154(%a2)
	jeq .L726
.L798:
	clr.b 166(%a2)
	move.b #1,200(%a2)
	tst.b 314(%a2)
	jne .L803
	moveq #16,%d2
	move.l %d2,16(%fp)
	moveq #15,%d3
	move.l %d3,12(%fp)
	move.l 348(%a2),8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra jsfLoadClut
.L799:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	tst.b 144(%a2)
	jne .L790
	move.w raptor_ticks,%a0
	moveq #60,%d0
	add.l 278(%a2),%d0
	cmp.l %a0,%d0
	jge .L747
	tst.b 132(%a2)
	jne .L748
	move.l 128(%a2),%d0
	move.b #1,144(%a2)
	move.l %d0,146(%a2)
	move.l %a0,278(%a2)
	move.b #1,132(%a2)
	moveq #1,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
.L796:
	move.l 172(%a2),%d0
	jra .L740
.L795:
	cmp.w #1,310(%a2)
	jeq .L734
	tst.b 158(%a2)
	jeq .L735
.L734:
	tst.b 342(%a2)
	jeq .L730
.L735:
	subq.w #8,%d1
	move.w %d1,290(%a2)
	move.w %d1,%a0
	cmp.l %d0,%a0
	jgt .L730
	clr.b 144(%a2)
	jra .L730
.L751:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L754
	move.b 162(%a2),%d1
	jeq .L726
.L807:
	move.w 310(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 191(%a2)
	jeq .L760
	tst.b 119(%a2)
	jne .L760
	tst.b 118(%a2)
	jne .L760
	clr.b 191(%a2)
	move.w #90,292(%a2)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.w 16(%a3)
	move.w 340(%a2),%d0
	jle .L761
	tst.b 163(%a2)
	jeq .L804
.L761:
	move.b #1,165(%a2)
	clr.b 163(%a2)
	addq.w #1,%d0
	move.w %d0,340(%a2)
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L747:
	tst.b 132(%a2)
	jeq .L790
.L748:
	clr.b 123(%a2)
	move.b #1,164(%a2)
	clr.w 16(%a3)
	move.l %a0,278(%a2)
	moveq #1,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
.L800:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%d0
	add.w #32,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 138(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	move.l 610(%a2),-(%sp)
	move.l 446(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	lea (32,%sp),%sp
	moveq #-1,%d1
	cmp.l 4(%a0),%d1
	jeq .L805
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 594(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
.L806:
	moveq #1,%d0
	move.l %d0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z17fighterCastShadowP7Fighterb
.L802:
	pea 16.w
	pea 14.w
	move.l 348(%a2),-(%sp)
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
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 154(%a2)
	jeq .L726
	jra .L798
.L803:
	moveq #16,%d0
	move.l %d0,16(%fp)
	moveq #14,%d1
	move.l %d1,12(%fp)
	move.l 348(%a2),8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra jsfLoadClut
.L801:
	tst.b 158(%a2)
	jeq .L733
	tst.b 342(%a2)
	jne .L733
	jra .L730
.L805:
	move.l 446(%a2),%a1
	clr.w 16(%a1)
	move.l %d0,(%a1)
	move.l #12659264,8(%a1)
	move.l #12659264,44(%a0)
	moveq #104,%d2
	move.l %d2,144(%a0)
	moveq #16,%d3
	move.l %d3,40(%a0)
	move.l %d3,36(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d0,84(%a0)
	pea 16.w
	pea 13.w
	move.l #12736144,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 594(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
	jra .L806
.L804:
	move.l %a2,8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z16fighterMakeDizzyP7Fighter
.L760:
	tst.b 192(%a2)
	jeq .L762
	clr.b 192(%a2)
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
	move.w #90,292(%a2)
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L763
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L726
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,12(%fp)
	move.l 306(%a2),8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L754:
	move.l sprite,%a1
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a4
	move.w 310(%a2),%d1
	neg.w %d1
	add.w %d1,%d1
	add.w %d1,%d1
	move.l 4(%a2),%a0
	move.l %a0,%d3
	add.l %a0,%d3
	add.l %a0,%d3
	lsl.l #6,%d3
	add.w 8(%a1,%d3.l),%d1
	move.w %d1,8(%a4)
	tst.b 82(%a2)
	jne .L756
	move.b 162(%a2),%d1
.L757:
	tst.b 181(%a2)
	jne .L758
	moveq #-1,%d3
	move.l %d3,4(%a4)
	tst.b %d1
	jne .L807
	jra .L726
.L762:
	tst.b 189(%a2)
	jeq .L765
	move.w raptor_ticks,%a0
	move.l 278(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L808
.L765:
	tst.b 193(%a2)
	jeq .L771
	clr.b 193(%a2)
	clr.w 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	move.w 196(%a2),290(%a2)
	move.w 198(%a2),292(%a2)
	clr.w 196(%a2)
	clr.w 198(%a2)
	move.b #1,154(%a2)
	move.b #1,158(%a2)
.L766:
	tst.b 165(%a2)
	jne .L809
	tst.b 163(%a2)
	jeq .L780
	tst.b 154(%a2)
	jeq .L810
.L781:
	tst.l 300(%a2)
	jgt .L782
	tst.b 154(%a2)
	jeq .L726
.L782:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 154(%a2)
	jne .L726
	move.b #1,165(%a2)
	clr.b 163(%a2)
	addq.w #1,340(%a2)
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L808:
	clr.b 189(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 163(%a2)
	jne .L766
	tst.b 304(%a2)
	jne .L811
	move.l 296(%a2),%d0
	subq.l #1,%d0
	move.l %d0,296(%a2)
	jle .L812
.L768:
	move.l sprite,%a0
	tst.b 314(%a2)
	jeq .L769
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L766
.L810:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L781
.L812:
	clr.l 296(%a2)
	move.b #1,191(%a2)
	moveq #0,%d0
	jra .L768
.L811:
	clr.b 304(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 296(%a2),%d0
	subq.l #1,%d0
	move.l %d0,296(%a2)
	jgt .L768
	jra .L812
.L756:
	tst.b 162(%a2)
	jeq .L785
	moveq #1,%d1
	tst.b 165(%a2)
	jne .L757
	tst.b 83(%a2)
	jne .L757
.L758:
	moveq #1,%d3
	move.l %d3,4(%a4)
	tst.b %d1
	jne .L807
	jra .L726
.L771:
	tst.b 156(%a2)
	jeq .L766
	tst.b 86(%a2)
	jne .L766
	tst.b 88(%a2)
	jne .L766
	tst.b 87(%a2)
	jne .L766
	tst.b 154(%a2)
	jne .L766
	tst.b 85(%a2)
	jne .L766
	tst.b 312(%a2)
	jeq .L772
	clr.b 312(%a2)
	clr.w 16(%a3)
.L772:
	tst.b 313(%a2)
	jeq .L813
	tst.w 16(%a3)
	jle .L814
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L789:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L820:
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L780:
	tst.b 83(%a2)
	jne .L815
	tst.b 180(%a2)
	jne .L816
.L784:
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
	jeq .L726
	move.l 218(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 290(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 292(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L816:
	lea ___mulsf3,%a4
	move.l 268(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,-4(%fp)
	move.w 310(%a2),%d0
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
	move.l 274(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	cmp.l %d0,%a0
	jle .L784
	clr.b 180(%a2)
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	jra .L784
.L763:
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,12(%fp)
	move.l 306(%a2),8(%fp)
	movem.l -24(%fp),#7180
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L809:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L817
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L818:
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L817:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 306(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 162(%a2)
	addq.l #4,%sp
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L818
.L785:
	clr.b %d1
	jra .L757
.L815:
	move.w #90,292(%a2)
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -24(%fp),#7180
	unlk %fp
	rts
.L769:
	move.l %d0,16984(%a0)
	moveq #78,%d3
	sub.w %d0,%d3
	move.w %d3,%d0
	add.w %d3,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L766
.L814:
	clr.b 156(%a2)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L789
.L813:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L774
	move.b #1,313(%a2)
	move.w 310(%a2),%d0
	neg.w %d0
	move.w %d0,310(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L819
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
.L776:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L774:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L820
.L819:
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
	jra .L776
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L827
	jge .L834
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L829
	cmp.l #128,%d0
	jeq .L830
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L835
.L823:
	moveq #21,%d0
	unlk %fp
	rts
.L834:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L832
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L826
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L823
	moveq #3,%d0
	unlk %fp
	rts
.L826:
	moveq #9,%d0
	unlk %fp
	rts
.L830:
	moveq #24,%d0
	unlk %fp
	rts
.L835:
	moveq #15,%d0
	unlk %fp
	rts
.L829:
	moveq #18,%d0
	unlk %fp
	rts
.L832:
	moveq #6,%d0
	unlk %fp
	rts
.L827:
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
	jeq .L843
	move.w 290(%a0),%a2
	sub.w 290(%a1),%a2
	cmp.w #259,%a2
	jgt .L841
.L839:
	clr.b 343(%a0)
	clr.b 343(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L843:
	move.w 290(%a1),%a2
	sub.w 290(%a0),%a2
	cmp.w #259,%a2
	jle .L839
.L841:
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
	move.b #1,195(%a0)
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
	tst.b 230(%a3)
	jne .L847
	tst.b 230(%a2)
	jeq .L846
.L847:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 230(%a3)
	jne .L856
	tst.b 230(%a2)
	jeq .L846
.L857:
	clr.b 230(%a2)
	move.l 226(%a2),%d0
	move.l %d0,_tempScore
	jne .L853
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 226(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L846:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L856:
	pea 10.w
	pea 8.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 226(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 230(%a2)
	jne .L857
	jra .L846
.L853:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L850:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L850
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L852
	move.b #39,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	lsl.l #3,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 226(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L852:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 226(%a2),(%sp)
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
	move.l 546(%a2),-(%sp)
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
	jle .L859
	move.b #1,200(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 119(%a2)
	clr.b 118(%a2)
	clr.b 150(%a2)
	clr.b 151(%a2)
	clr.b 152(%a2)
	move.b #1,153(%a2)
	clr.l 344(%a2)
	clr.w 16(%a3)
	move.w #90,292(%a2)
.L859:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 446(%a1),%a0
	clr.w 16(%a0)
	move.l 78(%a1),%d0
	move.l %d0,(%a0)
	move.l #11999920,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12107440,-(%sp)
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
	tst.b 166(%a2)
	jne .L864
	move.b #1,166(%a2)
	clr.b 200(%a2)
	clr.b 167(%a2)
	moveq #-1,%d0
	move.l %d0,168(%a2)
	clr.l 172(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,176(%a2)
	move.l %a0,278(%a2)
	move.b #1,110(%a2)
	tst.b 314(%a2)
	jeq .L866
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
.L864:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L866:
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
	jra .L864
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 166(%a0)
	move.b #1,200(%a0)
	tst.b 314(%a0)
	jne .L874
	pea 16.w
	pea 15.w
	move.l 348(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L874:
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
	tst.b 123(%a2)
	jne .L876
	move.b #1,123(%a2)
	clr.b 132(%a2)
	move.b #1,194(%a2)
	move.w 310(%a2),%d0
	move.w 290(%a2),%a4
	cmp.w #-1,%d0
	jeq .L890
	move.w 290(%a3),%a0
	sub.l %a4,%a0
	lea (48,%a0),%a0
	move.l %a0,124(%a2)
.L879:
	cmp.w #149,%a0
	jgt .L880
	move.w #150,%a1
	sub.l %a0,%a1
	move.l %a1,%a0
	move.l %a1,124(%a2)
	tst.b 144(%a2)
	jeq .L891
.L881:
	moveq #0,%d2
	move.b 314(%a2),%d2
	move.l 306(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L883
.L894:
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L892
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L885:
	cmp.w #-1,310(%a2)
	jeq .L893
.L886:
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
	move.l 446(%a3),%a1
	clr.w 16(%a1)
	move.l %d0,(%a1)
	move.l #11999920,8(%a1)
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12107440,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L876:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L880:
	clr.l 124(%a2)
	moveq #0,%d2
	move.b 314(%a2),%d2
	move.l 306(%a2),%d1
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jne .L894
.L883:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	cmp.w #-1,310(%a2)
	jne .L886
.L893:
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
	move.l 446(%a3),%a1
	clr.w 16(%a1)
	move.l %d0,(%a1)
	move.l #11999920,8(%a1)
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12107440,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L876
.L892:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L885
.L890:
	move.l %a4,%a0
	sub.w 290(%a3),%a0
	lea (48,%a0),%a0
	move.l %a0,124(%a2)
	jra .L879
.L891:
	move.b #1,144(%a2)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	jsr ___mulsi3
	addq.l #8,%sp
	sub.l %d0,%a4
	move.l %a4,146(%a2)
	jra .L881
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
	jeq .L935
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L939
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L940
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L935
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L935
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L941
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L896
	tst.b 203(%a3)
	jne .L896
	move.b #1,203(%a3)
	tst.b 90(%a2)
	jne .L927
	move.b #1,133(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a3)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z14fighterHarpoonP7FighterS0_
	moveq #2,%d0
	move.l %d0,300(%a2)
	clr.b 304(%a2)
	moveq #20,%d1
	add.l %d1,226(%a3)
	move.b #1,230(%a3)
	addq.l #8,%sp
.L896:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L935:
	move.b #1,203(%a3)
	tst.b 90(%a2)
	jne .L927
	tst.b 86(%a2)
	jeq .L916
	move.b #1,121(%a2)
	moveq #5,%d0
	move.l %d0,300(%a2)
	clr.b 304(%a2)
	moveq #20,%d1
	add.l %d1,226(%a3)
	move.b #1,230(%a3)
.L943:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L939:
	move.b #1,203(%a3)
	tst.b 90(%a2)
	jeq .L942
.L927:
	move.b #1,91(%a2)
	move.b #1,189(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L940:
	move.b #1,203(%a3)
	tst.b 90(%a2)
	jne .L927
	tst.b 86(%a2)
	jeq .L908
	move.b #1,121(%a2)
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
.L944:
	moveq #5,%d0
	move.l %d0,300(%a2)
	clr.b 304(%a2)
	moveq #20,%d1
	add.l %d1,226(%a3)
	move.b #1,230(%a3)
	jra .L943
.L916:
	move.b #1,113(%a2)
	move.b #1,109(%a2)
	moveq #5,%d0
	move.l %d0,300(%a2)
	clr.b 304(%a2)
	moveq #20,%d1
	add.l %d1,226(%a3)
	move.b #1,230(%a3)
	jra .L943
.L942:
	tst.b 86(%a2)
	jeq .L904
	move.b #1,121(%a2)
	move.b #1,194(%a2)
.L945:
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L944
.L904:
	move.b #1,116(%a2)
	move.b #1,194(%a2)
	jra .L945
.L941:
	tst.b 203(%a3)
	jne .L896
	move.b #1,203(%a3)
	tst.b 166(%a2)
	jne .L946
	tst.b 90(%a2)
	jne .L927
	move.b #1,166(%a2)
	clr.b 200(%a2)
	clr.b 167(%a2)
	moveq #-1,%d0
	move.l %d0,168(%a2)
	clr.l 172(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,176(%a2)
	move.l %a0,278(%a2)
	move.b #1,110(%a2)
	tst.b 314(%a2)
	jeq .L925
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
.L948:
	clr.b 304(%a2)
	moveq #20,%d1
	add.l %d1,226(%a3)
	move.b #1,230(%a3)
	addq.l #8,%sp
	jra .L896
.L908:
	move.b #1,116(%a2)
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	jra .L944
.L946:
	clr.b 166(%a2)
	move.b #1,200(%a2)
	tst.b 314(%a2)
	jne .L947
	pea 16.w
	pea 15.w
	move.l 348(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L921:
	move.l 78(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 166(%a3)
	jne .L896
	move.b #1,166(%a3)
	clr.b 200(%a3)
	clr.b 167(%a3)
	move.l %d1,168(%a3)
	clr.l 172(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,176(%a3)
	move.l %a0,278(%a3)
	move.b #1,110(%a3)
	tst.b 314(%a3)
	jeq .L922
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
.L947:
	pea 16.w
	pea 14.w
	move.l 348(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L921
.L925:
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
	jra .L948
.L922:
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
	tst.b 155(%a3)
	jeq .L951
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L968
.L951:
	tst.b 155(%a2)
	jeq .L952
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L969
.L952:
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
	jlt .L950
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L955
.L976:
	cmp.w #0,%a0
	jlt .L950
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 78(%a3),%d0
	cmp.l %d2,%d0
	jeq .L956
	cmp.l 78(%a2),%d2
	jeq .L956
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L956:
	cmp.l %d0,%d3
	jeq .L957
	cmp.l 78(%a2),%d3
	jeq .L957
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L957:
	moveq #61,%d5
	cmp.l %d2,%d5
	jeq .L970
	moveq #56,%d1
	cmp.l %d2,%d1
	jeq .L971
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L962
	moveq #56,%d1
	cmp.l %d3,%d1
	jeq .L972
.L962:
	tst.b 181(%a3)
	jeq .L963
	cmp.l 78(%a3),%d2
	jeq .L973
.L963:
	tst.b 181(%a2)
	jeq .L964
	cmp.l 78(%a2),%d2
	jeq .L974
.L964:
	moveq #59,%d0
	cmp.l %d2,%d0
	jeq .L975
.L965:
	move.l colliders,%d0
.L966:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L976
.L955:
	cmp.w #0,%a0
	jge .L966
.L950:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L975:
	moveq #56,%d1
	cmp.l %d3,%d1
	jne .L965
	tst.b 84(%a2)
	jeq .L965
	move.b #1,155(%a2)
	move.b #1,180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,274(%a3)
	move.l colliders,%d0
	jra .L966
.L973:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L963
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L963
.L974:
	moveq #56,%d0
	cmp.l %d3,%d0
	jne .L964
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L965
	jra .L975
.L971:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L962
	tst.b 84(%a3)
	jeq .L962
	move.w 290(%a3),%d0
	cmp.w #10,%d0
	jle .L962
	cmp.w #328,%d0
	jgt .L962
	move.w 290(%a2),%d0
	cmp.w #10,%d0
	jle .L962
	cmp.w #328,%d0
	jgt .L962
	move.b #1,155(%a3)
	move.b #1,180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,274(%a2)
	jra .L962
.L970:
	moveq #59,%d0
	cmp.l %d3,%d0
	jne .L962
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L962
.L972:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L962
.L968:
	clr.b 155(%a3)
	jra .L951
.L969:
	clr.b 155(%a2)
	jra .L952
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 144(%a0)
	jne .L978
	move.b #1,144(%a0)
	move.l 12(%fp),146(%a0)
.L978:
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHarpoonCheckP7FighterS0_
__Z19fighterHarpoonCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	tst.b 134(%a2)
	jeq .L982
	tst.b 144(%a0)
	jne .L984
	tst.b 132(%a0)
	jne .L988
.L984:
	cmp.w #-1,310(%a0)
	jeq .L989
	move.w 290(%a0),%a1
	move.w 290(%a2),%a0
	sub.l %a1,%a0
	moveq #48,%d0
	add.l %a0,%d0
	move.l %d0,140(%a2)
	move.l %d0,%d1
	jpl .L991
	addq.l #1,%d1
.L991:
	asr.l #1,%d1
	add.l %d1,%a1
	lea (-16,%a0),%a0
	move.l %a0,%d1
	jpl .L992
	addq.l #1,%d1
.L992:
	asr.l #1,%d1
	add.l %d1,%a1
	move.l %a1,136(%a2)
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-64,%d2
	add.l %d0,%d2
	move.l %d2,88(%a0,%d1.l)
.L982:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L989:
	move.w 290(%a2),%a1
	move.w 290(%a0),%a0
	sub.l %a1,%a0
	moveq #48,%d0
	add.l %a0,%d0
	move.l %d0,140(%a2)
	move.l %d0,%d1
	jpl .L993
	addq.l #1,%d1
.L993:
	asr.l #1,%d1
	add.l %d1,%a1
	lea (-16,%a0),%a0
	move.l %a0,%d1
	jpl .L994
	addq.l #1,%d1
.L994:
	asr.l #1,%d1
	sub.l %d1,%a1
	move.l %a1,136(%a2)
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-64,%d2
	add.l %d0,%d2
	move.l %d2,88(%a0,%d1.l)
	jra .L982
.L988:
	clr.b 134(%a2)
	move.l 446(%a2),%a0
	clr.w 16(%a0)
	move.l 78(%a2),%d0
	move.l %d0,(%a0)
	move.l #11999920,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12107440,-(%sp)
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
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
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
