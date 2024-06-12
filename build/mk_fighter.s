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
	clr.l 198(%a0)
	move.b #1,202(%a0)
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
	move.w #-1,282(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,262(%a0)
	move.w #106,264(%a0)
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
	move.w #1,282(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,262(%a0)
	move.w #106,264(%a0)
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
	move.l #0x400ccccd,288(%a2)
	clr.l 292(%a2)
	move.l #0xc1800000,296(%a2)
	move.l #0xc1a80000,300(%a2)
	move.l #0xc0800000,304(%a2)
	move.l #0x40a00000,308(%a2)
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	move.l 16(%fp),278(%a2)
	move.l 20(%fp),366(%a2)
	move.l 24(%fp),370(%a2)
	move.l 28(%fp),374(%a2)
	move.l 32(%fp),378(%a2)
	move.l 36(%fp),390(%a2)
	move.l 40(%fp),394(%a2)
	move.l 44(%fp),382(%a2)
	move.l 48(%fp),386(%a2)
	move.l 52(%fp),398(%a2)
	move.l 56(%fp),402(%a2)
	move.l 60(%fp),406(%a2)
	move.l 64(%fp),410(%a2)
	move.l 68(%fp),414(%a2)
	clr.l 194(%a2)
	move.l #0x40000000,208(%a2)
	move.l #0x40000000,212(%a2)
	move.l #0x40000000,216(%a2)
	move.l #0x40800000,220(%a2)
	move.l #0x40d00000,224(%a2)
	move.l #0x41000000,228(%a2)
	clr.l 236(%a2)
	move.l #0x40f00000,232(%a2)
	move.l #0x3f800000,240(%a2)
	moveq #1,%d0
	move.l %d0,254(%a2)
	clr.l 258(%a2)
	clr.l 246(%a2)
	move.b #1,135(%a2)
	move.b #1,82(%a2)
	clr.b 83(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.b 129(%a2)
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
	move.b #1,172(%a2)
	clr.b 244(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 133(%a2)
	clr.b 134(%a2)
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
	clr.b 124(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.b 128(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.b 138(%a2)
	clr.b 152(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	clr.b 161(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.w 168(%a2)
	clr.w 170(%a2)
	clr.b 173(%a2)
	clr.b 174(%a2)
	clr.b 184(%a2)
	clr.b 185(%a2)
	clr.l 186(%a2)
	moveq #50,%d1
	move.l %d1,176(%a2)
	move.b #20,%d0
	move.l %d0,180(%a2)
	move.b %d2,286(%a2)
	move.b #33,%d1
	move.l %d1,268(%a2)
	clr.l 272(%a2)
	clr.b 276(%a2)
	clr.b 284(%a2)
	clr.b 285(%a2)
	move.b #1,314(%a2)
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
	move.l %d1,190(%a2)
	moveq #60,%d2
	move.l %d2,78(%a2)
	move.b #2,%d1
	move.l %d1,204(%a2)
	move.w #210,262(%a2)
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
	move.w #-1,282(%a2)
	move.l #11520,%d0
	move.b #60,%d1
.L25:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 418(%a2),%a1
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
	move.w #90,264(%a2)
	lea (12,%sp),%sp
	tst.b 82(%a2)
	jeq .L26
	move.l 190(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 262(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
.L26:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,167(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L28:
	moveq #61,%d2
	move.l %d2,190(%a2)
	move.b #57,%d1
	move.l %d1,78(%a2)
	move.b #1,%d2
	move.l %d2,204(%a2)
	move.w #50,262(%a2)
	move.l %d2,10968(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,282(%a2)
	move.l #10944,%d0
	jra .L25
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 312(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24fighterCaptureDpadInputsP7Fighter
__Z24fighterCaptureDpadInputsP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 194(%a2),%d0
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
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L34
.L38:
	tst.b 108(%a2)
	jne .L33
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
	addq.l #8,%sp
	jra .L33
.L37:
	tst.b 108(%a2)
	jne .L32
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 194(%a2),%d0
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
	and.l 194(%a2),%d1
	jeq .L43
	tst.b 107(%a2)
	jne .L48
.L43:
	move.w 344(%a2),%a0
	move.l %a0,-(%sp)
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L49
	tst.b 153(%a2)
	jne .L50
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L50:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 350(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L49:
	move.b #1,153(%a2)
	clr.b 156(%a2)
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
	tst.b 127(%a2)
	jne .L92
	tst.b 111(%a2)
	jne .L93
	tst.b 112(%a2)
	jeq .L235
.L93:
	move.l 272(%a2),%d2
	tst.b 136(%a2)
	jne .L95
	tst.b 276(%a2)
	jne .L236
	move.l 268(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,268(%a2)
	jle .L237
.L97:
	move.l sprite,%a0
	tst.b 286(%a2)
	jeq .L98
.L257:
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L95:
	clr.l 272(%a2)
	clr.l 236(%a2)
	move.b #1,127(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	move.l %a0,258(%a2)
	clr.w 16(%a3)
	move.l 300(%a2),292(%a2)
	move.b 121(%a2),%d1
	jne .L100
	tst.b 122(%a2)
	jne .L100
	tst.b 131(%a2)
	jeq .L102
	clr.l 292(%a2)
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
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
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
	move.w 262(%a2),%a4
	move.w 282(%a2),%d0
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
	tst.b 127(%a2)
	jne .L243
.L126:
	tst.b 112(%a2)
	jeq .L94
	tst.b 127(%a2)
	jne .L244
.L94:
	tst.b 113(%a2)
	jeq .L245
.L128:
	tst.b 127(%a2)
	jne .L246
.L129:
	tst.b 114(%a2)
	jeq .L136
	tst.b 127(%a2)
	jeq .L136
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 254(%a2),%d0
	cmp.l %a0,%d0
	jle .L137
	move.w 282(%a2),%a4
	move.w 262(%a2),%d0
.L138:
	move.l %a4,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
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
	clr.b 127(%a2)
.L91:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L245:
	tst.b 115(%a2)
	jeq .L129
	tst.b 127(%a2)
	jeq .L129
.L246:
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 254(%a2),%d0
	cmp.l %a0,%d0
	jle .L130
	move.w 282(%a2),%a4
	move.w 262(%a2),%d0
.L131:
	move.l %a4,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
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
	clr.b 127(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L136:
	tst.b 116(%a2)
	jeq .L143
	tst.b 127(%a2)
	jeq .L143
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 254(%a2),%d0
	cmp.l %a0,%d0
	jle .L144
	move.w 282(%a2),%a4
	move.w 262(%a2),%d0
	move.l %a4,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
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
	clr.b 127(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L143:
	tst.b 120(%a2)
	jeq .L150
	tst.b 127(%a2)
	jne .L247
.L150:
	move.b 131(%a2),%d2
	jeq .L151
	tst.b 127(%a2)
	jeq .L151
	tst.b 132(%a2)
	jne .L152
	tst.b 133(%a2)
	jeq .L153
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 558(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L152:
	tst.b 125(%a2)
	jne .L219
.L154:
	cmp.w #1,16(%a3)
	jle .L91
	move.w raptor_ticks,%a0
	cmp.l 250(%a2),%a0
	jlt .L91
	tst.b 132(%a2)
	jeq .L248
	move.w 264(%a2),%d0
	cmp.w #122,%d0
	jle .L161
	move.b #1,125(%a2)
	move.l %a0,250(%a2)
	move.w #90,264(%a2)
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 278(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 136(%a2)
	jne .L162
	tst.b 276(%a2)
	jne .L249
	move.l 268(%a2),%d0
	subq.l #8,%d0
	move.l %d0,268(%a2)
	jle .L250
.L164:
	move.l sprite,%a0
	tst.b 286(%a2)
	jeq .L165
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L162:
	move.w 282(%a2),%d2
	lea ___floatsisf,%a5
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 228(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L167
	tst.b 131(%a2)
	jne .L167
.L168:
	tst.l %d0
	jle .L171
	tst.b 314(%a2)
	jeq .L170
.L171:
	add.w %d0,262(%a2)
.L170:
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 308(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,264(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
.L268:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L100:
	move.l 304(%a2),292(%a2)
	tst.b 111(%a2)
	jeq .L251
.L103:
	move.b 110(%a2),%d0
	jne .L105
	moveq #0,%d1
	move.b 286(%a2),%d1
	move.l 278(%a2),%d0
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
	move.w 264(%a2),%d0
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
	tst.b 131(%a2)
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
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
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
	clr.b 127(%a2)
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
	move.w 262(%a2),%a4
	move.w 282(%a2),%d0
	cmp.w #-1,%d0
	jne .L119
.L240:
	lea (40,%a4),%a4
	jra .L120
.L244:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a1
	move.l %a1,-(%sp)
	move.l 506(%a2),-(%sp)
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
	clr.b 127(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L151:
	tst.b 121(%a2)
	jne .L172
	tst.b 122(%a2)
	jeq .L173
.L172:
	tst.b 127(%a2)
	jeq .L173
	tst.b 125(%a2)
	jne .L219
	move.w raptor_ticks,%a0
	cmp.l 250(%a2),%a0
	jlt .L91
	move.w 282(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 220(%a2),(%sp)
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
	tst.b 314(%a2)
	jeq .L178
.L179:
	add.w %d0,262(%a2)
.L178:
	move.b 123(%a2),%d3
	move.l 292(%a2),%d2
	tst.b %d3
	jne .L181
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,264(%a2)
	move.l 288(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,292(%a2)
.L181:
	move.l %d2,-(%sp)
	move.l 300(%a2),-(%sp)
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
	tst.b 124(%a2)
	jne .L186
	tst.b %d3
	jne .L187
	tst.b 122(%a2)
	jeq .L256
.L187:
	move.b #1,123(%a2)
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
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
	move.b #1,124(%a2)
	clr.b 123(%a2)
.L185:
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
.L270:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L241:
	lea (-40,%a4),%a4
	jra .L120
.L236:
	clr.b 276(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 268(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,268(%a2)
	jgt .L97
.L237:
	clr.l 268(%a2)
	move.b #1,163(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 286(%a2)
	jeq .L98
	jra .L257
.L130:
	move.w 282(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 216(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L132
	tst.b 131(%a2)
	jeq .L133
.L132:
	tst.l %d0
	jlt .L258
.L134:
	cmp.w #1,%d2
	jne .L133
	tst.b 131(%a2)
	jeq .L135
.L133:
	tst.l %d0
	jle .L135
	tst.b 314(%a2)
	jeq .L211
.L135:
	add.w 262(%a2),%d0
	move.w %d0,262(%a2)
	jra .L131
.L254:
	move.l 278(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 286(%a2),%d2
	move.l 278(%a2),%d1
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
	tst.b 127(%a2)
	jeq .L189
	tst.b 125(%a2)
	jne .L219
	move.l 250(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L91
	move.w 282(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 220(%a2),(%sp)
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
	tst.b 314(%a2)
	jeq .L194
.L195:
	add.w %d0,262(%a2)
.L194:
	move.l 316(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,264(%a2)
	addq.l #1,%a0
	move.l %a0,316(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L260
.L196:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L261
.L197:
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 514(%a2),-(%sp)
.L217:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	lea (36,%sp),%sp
.L264:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L189:
	tst.b 119(%a2)
	jeq .L198
	tst.b 127(%a2)
	jeq .L198
	tst.b 125(%a2)
	jne .L219
	move.l 250(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L91
	move.w 282(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 220(%a2),(%sp)
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
	tst.b 314(%a2)
	jeq .L203
.L204:
	add.w %d0,262(%a2)
.L203:
	move.l 316(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,264(%a2)
	addq.l #1,%a0
	move.l %a0,316(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L262
.L205:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L263
.L206:
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
.L271:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	lea (36,%sp),%sp
	jra .L264
.L198:
	tst.b 126(%a2)
	jeq .L91
	tst.b 127(%a2)
	jeq .L91
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
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
	clr.b 127(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L111:
	move.l 278(%a2),-(%sp)
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
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a1
	move.l %a1,-(%sp)
	move.l 522(%a2),-(%sp)
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
	move.l 278(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 120(%a2)
	move.b #1,126(%a2)
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
	tst.b 314(%a2)
	jne .L134
.L211:
	move.w 262(%a2),%d0
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
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a1
	pea -1(%a1)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 250(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L91
	move.b #1,172(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 119(%a2)
	clr.b 118(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	clr.b 125(%a2)
	move.b #1,126(%a2)
	clr.l 316(%a2)
	clr.w 16(%a3)
	move.w #90,264(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L125:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.w %a4,%d2
	ext.l %d2
	move.w 264(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.l %d2,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 264(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 264(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%d0
	add.w #-40,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	move.w 282(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.w 282(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 282(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%d1
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
	add.w %d0,262(%a2)
	jra .L178
.L265:
	tst.b 314(%a2)
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
	add.w %d0,262(%a2)
	jra .L194
.L167:
	tst.l %d0
	jlt .L267
.L169:
	cmp.w #1,%d2
	jne .L168
	tst.b 131(%a2)
	jne .L168
	add.w %d0,262(%a2)
	jra .L170
.L267:
	tst.b 314(%a2)
	jne .L169
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 308(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,264(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	jra .L268
.L200:
	tst.l %d0
	jlt .L269
.L202:
	cmp.w #1,%d3
	jne .L201
	tst.b %d2
	jne .L201
	add.w %d0,262(%a2)
	jra .L203
.L261:
	move.b #1,125(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	clr.l 316(%a2)
	move.w #90,264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 278(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 316(%a2),%a0
	addq.l #4,%sp
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 514(%a2),-(%sp)
	jra .L217
.L249:
	clr.b 276(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 268(%a2),%d0
	subq.l #8,%d0
	move.l %d0,268(%a2)
	jgt .L164
.L250:
	clr.l 268(%a2)
	move.b #1,163(%a2)
	moveq #0,%d0
	jra .L164
.L266:
	tst.b 314(%a2)
	jne .L193
	move.l 316(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,264(%a2)
	addq.l #1,%a0
	move.l %a0,316(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L196
	jra .L260
.L255:
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	jra .L270
.L256:
	move.l 278(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L187
.L263:
	move.b #1,125(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	clr.l 316(%a2)
	move.w #90,264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 278(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 316(%a2),%a0
	addq.l #4,%sp
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	jra .L271
.L260:
	move.l 278(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 316(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L197
	jra .L261
.L269:
	tst.b 314(%a2)
	jne .L202
	move.l 316(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,264(%a2)
	addq.l #1,%a0
	move.l %a0,316(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L205
.L262:
	move.l 278(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 316(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L206
	jra .L263
.L137:
	move.w 282(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 216(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L139
	tst.b 131(%a2)
	jne .L139
.L140:
	tst.l %d0
	jle .L142
	tst.b 314(%a2)
	jeq .L212
.L142:
	add.w 262(%a2),%d0
	move.w %d0,262(%a2)
	jra .L138
.L139:
	tst.l %d0
	jlt .L272
.L141:
	cmp.w #1,%d2
	jne .L140
	tst.b 131(%a2)
	jne .L140
	add.w 262(%a2),%d0
	move.w %d0,262(%a2)
	jra .L138
.L272:
	tst.b 314(%a2)
	jne .L141
.L212:
	move.w 262(%a2),%d0
	jra .L138
.L144:
	move.w 282(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 216(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L146
	tst.b 131(%a2)
	jne .L146
.L147:
	tst.l %d0
	jle .L149
	tst.b 314(%a2)
	jeq .L213
.L149:
	add.w 262(%a2),%d0
	move.w %d0,262(%a2)
.L275:
	move.l %a4,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
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
	tst.b 131(%a2)
	jne .L147
	add.w 262(%a2),%d0
	move.w %d0,262(%a2)
	jra .L275
.L274:
	tst.b 314(%a2)
	jne .L148
.L213:
	move.w 262(%a2),%d0
	move.l %a4,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
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
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 554(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 125(%a2)
	jeq .L154
	jra .L219
.L242:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 282(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 264(%a2),%d1
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
	move.w 264(%a2),%d0
	cmp.w #90,%d0
	jle .L188
	move.b #1,125(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	move.w #90,264(%a2)
	move.w 282(%a2),%a1
	move.l %a1,-(%sp)
	pea 90.w
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 278(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	jra .L270
.L161:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 554(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L162
.L248:
	move.b #1,132(%a2)
	move.w 282(%a2),%d1
	move.w %d1,%d0
	ext.l %d0
	lsl.l #4,%d0
	cmp.w #1,%d1
	jeq .L156
	tst.b 131(%a2)
	jne .L156
.L157:
	tst.l %d0
	jle .L160
	tst.b 314(%a2)
	jeq .L159
.L160:
	add.w %d0,262(%a2)
.L159:
	move.w #48,264(%a2)
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
	tst.b 131(%a2)
	jne .L157
	add.w %d0,262(%a2)
	jra .L159
.L276:
	tst.b 314(%a2)
	jne .L158
	move.w #48,264(%a2)
	jra .L277
.L188:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
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
	move.l 190(%a0),%d0
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
	clr.b 129(%a0)
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
	clr.b 244(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 130(%a0)
	clr.b 131(%a0)
	clr.b 132(%a0)
	clr.b 133(%a0)
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
	clr.b 124(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 127(%a0)
	clr.b 128(%a0)
	clr.b 137(%a0)
	clr.b 138(%a0)
	clr.b 152(%a0)
	clr.b 161(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 173(%a0)
	clr.b 174(%a0)
	clr.b 184(%a0)
	clr.b 185(%a0)
	clr.b 276(%a0)
	clr.b 284(%a0)
	clr.b 285(%a0)
	move.b #1,314(%a0)
	clr.b 153(%a0)
	clr.b 154(%a0)
	clr.b 155(%a0)
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
	move.b #1,136(%a2)
	clr.l 272(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
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
	move.l 418(%a3),%a0
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
	move.l 418(%a2),%a0
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
	jeq .L318
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L322
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L323
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L318
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L318
	moveq #6,%d1
	cmp.l %d0,%d1
	jne .L282
	tst.b 175(%a3)
	jne .L282
	move.b #1,175(%a3)
	tst.b 138(%a2)
	jne .L324
	tst.b 90(%a2)
	jne .L309
	move.b #1,138(%a2)
	clr.b 172(%a2)
	clr.b 139(%a2)
	moveq #-1,%d0
	move.l %d0,140(%a2)
	clr.l 144(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,148(%a2)
	move.l %a0,250(%a2)
	move.b #1,110(%a2)
	tst.b 286(%a2)
	jeq .L310
	pea 16.w
	pea 14.w
	move.l 324(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 272(%a2)
	clr.b 276(%a2)
	moveq #20,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	addq.l #8,%sp
.L282:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L318:
	move.b #1,175(%a3)
	tst.b 90(%a2)
	jne .L309
	tst.b 86(%a2)
	jeq .L302
	move.b #1,121(%a2)
	moveq #5,%d0
	move.l %d0,272(%a2)
	clr.b 276(%a2)
	moveq #20,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
.L326:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L322:
	move.b #1,175(%a3)
	tst.b 90(%a2)
	jeq .L325
.L309:
	move.b #1,91(%a2)
	move.b #1,161(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L323:
	move.b #1,175(%a3)
	tst.b 90(%a2)
	jne .L309
	tst.b 86(%a2)
	jeq .L294
	move.b #1,121(%a2)
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
.L327:
	moveq #5,%d0
	move.l %d0,272(%a2)
	clr.b 276(%a2)
	moveq #20,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	jra .L326
.L302:
	move.b #1,113(%a2)
	move.b #1,109(%a2)
	moveq #5,%d0
	move.l %d0,272(%a2)
	clr.b 276(%a2)
	moveq #20,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	jra .L326
.L325:
	tst.b 86(%a2)
	jeq .L290
	move.b #1,121(%a2)
	move.b #1,166(%a2)
.L328:
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	jra .L327
.L290:
	move.b #1,116(%a2)
	move.b #1,166(%a2)
	jra .L328
.L294:
	move.b #1,116(%a2)
	move.b #1,109(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	jra .L327
.L324:
	clr.b 138(%a2)
	move.b #1,172(%a2)
	tst.b 286(%a2)
	jne .L329
	pea 16.w
	pea 15.w
	move.l 320(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
.L306:
	move.l 78(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.b 138(%a3)
	jne .L282
	move.b #1,138(%a3)
	clr.b 172(%a3)
	clr.b 139(%a3)
	move.l %d1,140(%a3)
	clr.l 144(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,148(%a3)
	move.l %a0,250(%a3)
	move.b #1,110(%a3)
	tst.b 286(%a3)
	jeq .L307
	pea 16.w
	pea 14.w
	move.l 324(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 286(%a3),%d0
	move.l %d0,12(%fp)
	move.l 278(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
.L329:
	pea 16.w
	pea 14.w
	move.l 320(%a2),-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	jra .L306
.L307:
	pea 16.w
	pea 15.w
	move.l 324(%a3),-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 286(%a3),%d0
	move.l %d0,12(%fp)
	move.l 278(%a3),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandlerb
.L310:
	pea 16.w
	pea 15.w
	move.l 324(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	clr.l 272(%a2)
	clr.b 276(%a2)
	moveq #20,%d1
	add.l %d1,198(%a3)
	move.b #1,202(%a3)
	addq.l #8,%sp
	jra .L282
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 127(%a0),%d0
	jne .L332
	tst.b 90(%a0)
	jne .L332
.L333:
	tst.b 92(%a1)
	jne .L361
.L335:
	tst.b 93(%a1)
	jeq .L337
	tst.b 89(%a0)
	jne .L337
	move.b #1,112(%a0)
	moveq #2,%d1
	move.l %d1,272(%a0)
	clr.b 276(%a0)
	addq.l #5,198(%a1)
	move.b #1,202(%a1)
.L336:
	tst.b %d0
	jne .L331
.L356:
	tst.b 90(%a0)
	jeq .L349
.L362:
	tst.b 89(%a0)
	jeq .L349
	move.b #1,91(%a0)
	move.b #1,161(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,250(%a0)
.L352:
	tst.b 130(%a1)
	jeq .L331
	move.w 262(%a1),168(%a0)
	move.w 264(%a1),170(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,133(%a0)
	move.b #1,165(%a0)
	clr.b 172(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a1)
.L331:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L332:
	tst.b 136(%a0)
	jne .L333
	tst.b %d0
	jne .L331
	tst.b 90(%a0)
	jeq .L356
	move.b #1,91(%a0)
	move.b #1,161(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,250(%a0)
	tst.b 90(%a0)
	jne .L362
.L349:
	tst.b 100(%a1)
	jeq .L351
	move.b #1,120(%a0)
	moveq #4,%d0
	move.l %d0,272(%a0)
	clr.b 276(%a0)
	moveq #10,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
	jra .L352
.L361:
	tst.b 89(%a0)
	jne .L335
	move.b #1,111(%a0)
	moveq #2,%d1
	move.l %d1,272(%a0)
	clr.b 276(%a0)
	addq.l #5,198(%a1)
	move.b #1,202(%a1)
	jra .L336
.L337:
	tst.b 94(%a1)
	jeq .L338
	tst.b 89(%a0)
	jne .L338
	move.b #1,111(%a0)
	moveq #5,%d1
	move.l %d1,272(%a0)
	clr.b 276(%a0)
	move.b #20,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
.L363:
	tst.b %d0
	jeq .L356
	jra .L331
.L338:
	tst.b 95(%a1)
	jeq .L339
	tst.b 89(%a0)
	jne .L339
	move.b #1,113(%a0)
	moveq #5,%d1
	move.l %d1,272(%a0)
	clr.b 276(%a0)
	move.b #20,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
	jra .L363
.L339:
	tst.b 101(%a1)
	jeq .L340
	tst.b 89(%a0)
	jeq .L364
.L340:
	tst.b 102(%a1)
	jeq .L341
	tst.b 89(%a0)
	jeq .L365
.L341:
	tst.b 96(%a1)
	jeq .L343
	move.b #1,115(%a0)
	clr.b 172(%a1)
	move.b #1,174(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,250(%a1)
	moveq #5,%d1
	move.l %d1,272(%a0)
	move.b #1,276(%a0)
	move.b #10,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
	tst.b %d0
	jeq .L356
	jra .L331
.L351:
	tst.b 104(%a1)
	jeq .L352
	move.b #1,114(%a0)
	clr.b 172(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,250(%a1)
	moveq #2,%d0
	move.l %d0,272(%a0)
	clr.b 276(%a0)
	addq.l #5,198(%a1)
	move.b #1,202(%a1)
	jra .L352
.L343:
	tst.b 97(%a1)
	jne .L366
	tst.b 99(%a1)
	jeq .L345
	move.b #1,118(%a0)
	clr.b 172(%a1)
	move.b #1,173(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,250(%a1)
	moveq #8,%d1
	move.l %d1,272(%a0)
	clr.b 276(%a0)
	move.b #20,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
	jra .L363
.L364:
	move.b #1,113(%a0)
	moveq #6,%d1
	move.l %d1,272(%a0)
	move.b #1,276(%a0)
	move.b #20,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
.L368:
	tst.b %d0
	jeq .L356
	jra .L331
.L365:
	move.b #1,116(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L367
	moveq #4,%d1
.L369:
	move.l %d1,272(%a0)
	move.b #1,276(%a0)
	move.b #20,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
	jra .L368
.L366:
	move.b #1,115(%a0)
	clr.b 172(%a1)
	move.b #1,174(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,250(%a1)
	moveq #4,%d1
	move.l %d1,272(%a0)
	clr.b 276(%a0)
	move.b #20,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
	jra .L363
.L367:
	move.b #1,117(%a0)
	moveq #4,%d1
	jra .L369
.L345:
	tst.b 98(%a1)
	jeq .L346
	move.b #1,121(%a0)
	clr.b 172(%a1)
	move.b #1,174(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,250(%a1)
	moveq #6,%d1
	move.l %d1,272(%a0)
	clr.b 276(%a0)
	move.b #20,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
	jra .L363
.L346:
	tst.b 103(%a1)
	jeq .L336
	move.b #1,122(%a0)
	clr.b 172(%a1)
	move.b #1,174(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,250(%a1)
	moveq #4,%d1
	move.l %d1,272(%a0)
	clr.b 276(%a0)
	move.b #50,%d1
	add.l %d1,198(%a1)
	move.b #1,202(%a1)
	tst.b %d0
	jeq .L356
	jra .L331
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.b 128(%a3)
	jeq .L372
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L389
.L372:
	tst.b 128(%a2)
	jeq .L373
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L390
.L373:
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
	jlt .L371
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L376
.L397:
	cmp.w #0,%a0
	jlt .L371
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 78(%a3),%d0
	cmp.l %d2,%d0
	jeq .L377
	cmp.l 78(%a2),%d2
	jeq .L377
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L377:
	cmp.l %d0,%d3
	jeq .L378
	cmp.l 78(%a2),%d3
	jeq .L378
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L378:
	moveq #61,%d5
	cmp.l %d2,%d5
	jeq .L391
	moveq #56,%d1
	cmp.l %d2,%d1
	jeq .L392
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L383
	moveq #56,%d1
	cmp.l %d3,%d1
	jeq .L393
.L383:
	tst.b 153(%a3)
	jeq .L384
	cmp.l 78(%a3),%d2
	jeq .L394
.L384:
	tst.b 153(%a2)
	jeq .L385
	cmp.l 78(%a2),%d2
	jeq .L395
.L385:
	moveq #59,%d0
	cmp.l %d2,%d0
	jeq .L396
.L386:
	move.l colliders,%d0
.L387:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L397
.L376:
	cmp.w #0,%a0
	jge .L387
.L371:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L396:
	moveq #56,%d1
	cmp.l %d3,%d1
	jne .L386
	tst.b 84(%a2)
	jeq .L386
	move.b #1,128(%a2)
	move.b #1,152(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,246(%a3)
	move.l colliders,%d0
	jra .L387
.L394:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L384
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L384
.L395:
	moveq #56,%d0
	cmp.l %d3,%d0
	jne .L385
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L386
	jra .L396
.L392:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L383
	tst.b 84(%a3)
	jeq .L383
	move.w 262(%a3),%d0
	cmp.w #10,%d0
	jle .L383
	cmp.w #328,%d0
	jgt .L383
	move.w 262(%a2),%d0
	cmp.w #10,%d0
	jle .L383
	cmp.w #328,%d0
	jgt .L383
	move.b #1,128(%a3)
	move.b #1,152(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,246(%a2)
	jra .L383
.L391:
	moveq #59,%d0
	cmp.l %d3,%d0
	jne .L383
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L383
.L393:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L383
.L389:
	clr.b 128(%a3)
	jra .L372
.L390:
	clr.b 128(%a2)
	jra .L373
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 282(%a1),%d0
	cmp.w #1,%d0
	jeq .L413
	cmp.w #-1,%d0
	jeq .L414
.L402:
	move.w 282(%a0),%d0
	cmp.w #1,%d0
	jeq .L415
.L403:
	cmp.w #-1,%d0
	jne .L399
	move.w 262(%a0),%a2
	add.l _turnOffset,%a2
	move.w 262(%a1),%a1
	cmp.l %a2,%a1
	jle .L399
.L410:
	tst.b 129(%a0)
	jne .L399
	clr.b 285(%a0)
	move.b #1,129(%a0)
	move.b #1,284(%a0)
.L399:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L414:
	move.w 262(%a1),%a3
	add.l _turnOffset,%a3
	move.w 262(%a0),%a2
	cmp.l %a3,%a2
	jle .L402
	tst.b 129(%a1)
	jne .L402
.L416:
	clr.b 285(%a1)
	move.b #1,129(%a1)
	move.b #1,284(%a1)
	move.w 282(%a0),%d0
	cmp.w #1,%d0
	jne .L403
.L415:
	move.w 262(%a0),%a2
	move.w 262(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L410
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L413:
	move.w 262(%a1),%a3
	move.w 262(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L402
	tst.b 129(%a1)
	jne .L402
	jra .L416
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 282(%a0),%d0
	cmp.w #1,%d0
	jeq .L425
	cmp.w #-1,%d0
	jeq .L426
.L420:
	clr.b 134(%a0)
	clr.b 134(%a1)
.L418:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L426:
	move.w 262(%a1),%a3
	move.w 262(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L420
.L422:
	move.b #1,134(%a0)
	move.b #1,134(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L425:
	move.w 262(%a1),%a3
	move.w 262(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L422
	clr.b 134(%a0)
	clr.b 134(%a1)
	jra .L418
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 268(%a1),16792(%a0)
	move.l 12(%fp),%a1
	move.l 268(%a1),%d0
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
	move.l 12(%fp),272(%a1)
	move.b 19(%fp),276(%a1)
	move.l 24(%fp),%d0
	add.l %d0,198(%a0)
	move.b #1,202(%a0)
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
	tst.b 136(%a2)
	jne .L430
	tst.b 276(%a2)
	jne .L437
	move.l 268(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,268(%a2)
	jle .L438
.L433:
	move.l sprite,%a0
	tst.b 286(%a2)
	jeq .L434
.L439:
	move.l %d0,16792(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L434:
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
.L430:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L437:
	clr.b 276(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 268(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,268(%a2)
	jgt .L433
.L438:
	clr.l 268(%a2)
	move.b #1,163(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 286(%a2)
	jeq .L434
	jra .L439
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,282(%a0)
	jeq .L446
	tst.b 314(%a0)
	jeq .L441
.L443:
	addq.w #2,262(%a0)
.L441:
	unlk %fp
	rts
.L446:
	tst.b 131(%a0)
	jeq .L443
	tst.b 314(%a0)
	jne .L443
	jra .L441
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,282(%a0)
	jeq .L449
	tst.b 131(%a0)
	jeq .L450
.L449:
	tst.b 314(%a0)
	jeq .L448
.L450:
	subq.w #2,262(%a0)
.L448:
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
	jeq .L455
	move.l 190(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 262(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 264(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L455:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L463
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L463:
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
	move.w #90,264(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 262(%a2),%d0
	cmp.w #11,%d0
	jle .L479
.L467:
	cmp.w #280,%d0
	jgt .L471
.L476:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L479:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L475
	move.w 262(%a2),%d0
	cmp.w #11,%d0
	jgt .L467
	cmp.w #280,262(%a3)
	jgt .L475
	jsr (%a4)
	tst.b %d0
	jne .L475
	move.w 262(%a2),%d0
	cmp.w #280,%d0
	jle .L476
.L471:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L480
.L475:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L480:
	cmp.w #328,262(%a2)
	jle .L476
	cmp.w #10,262(%a3)
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
	move.w 282(%a0),%d1
	cmp.w #1,%d1
	jeq .L483
	tst.b 131(%a0)
	jne .L483
.L484:
	tst.l %d0
	jle .L487
	tst.b 314(%a0)
	jeq .L482
.L487:
	add.w %d0,262(%a0)
.L482:
	unlk %fp
	rts
.L483:
	tst.l %d0
	jlt .L490
	cmp.w #1,%d1
	jne .L484
.L491:
	tst.b 131(%a0)
	jne .L484
	add.w %d0,262(%a0)
	jra .L482
.L490:
	tst.b 314(%a0)
	jeq .L482
	cmp.w #1,%d1
	jne .L484
	jra .L491
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #15408,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d3
	tst.b 127(%a2)
	jne .L494
	tst.b 84(%a2)
	jeq .L723
.L495:
	clr.b 82(%a2)
.L497:
	move.l 204(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,194(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L498
	tst.b 107(%a2)
	jeq .L498
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L498:
	move.w 344(%a2),%a0
	move.l %a0,-(%sp)
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L724
	tst.b 153(%a2)
	jne .L725
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L693
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L693
.L501:
	tst.b 99(%a2)
	jne .L503
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L511
	tst.l %d1
	jeq .L512
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L513
	cmp.w #1,282(%a2)
	jeq .L511
.L513:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L512
	cmp.w #-1,282(%a2)
	jeq .L511
.L512:
	tst.b 93(%a2)
	jeq .L726
.L515:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L522
	clr.b 93(%a2)
.L522:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L510:
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L690
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L690
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L690
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L690
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L690
	and.l JAGPAD_7,%d0
	jne .L690
	move.b #1,107(%a2)
.L690:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L493
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L692
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L692
	and.l JAGPAD_RIGHT,%d0
	jne .L692
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L692:
	move.b #1,106(%a2)
.L493:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L494:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L723:
	tst.b 89(%a2)
	jne .L495
	tst.b 86(%a2)
	jne .L495
	tst.b 88(%a2)
	jne .L495
	tst.b 87(%a2)
	jne .L495
	tst.b 85(%a2)
	jeq .L497
	clr.b 82(%a2)
	jra .L497
.L725:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 350(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L693:
	tst.b 89(%a2)
	jeq .L501
	tst.b 107(%a2)
	jeq .L501
	tst.b 172(%a2)
	jeq .L501
	tst.b 99(%a2)
	jne .L503
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 278(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L503:
	move.l 390(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 173(%a2)
	jeq .L727
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L728
.L507:
	clr.b 173(%a2)
.L508:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L510
	clr.b 99(%a2)
	move.b #1,172(%a2)
	jra .L510
.L726:
	tst.l %d4
	jeq .L729
.L523:
	tst.b 107(%a2)
	jeq .L524
	tst.b 172(%a2)
	jeq .L524
	tst.b 86(%a2)
	jne .L524
	tst.b 128(%a2)
	jeq .L524
	tst.b 102(%a2)
	jne .L527
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L529:
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L724:
	move.b #1,153(%a2)
	clr.b 156(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L511:
	tst.b 107(%a2)
	jeq .L512
	tst.b 172(%a2)
	jeq .L512
	tst.b 86(%a2)
	jne .L512
	tst.b 128(%a2)
	jne .L512
	tst.b 93(%a2)
	jne .L515
	clr.b 107(%a2)
	move.b #1,93(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d2
	move.b 286(%a2),%d2
	move.l 278(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L519
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L520
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L730
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L733:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L727:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 173(%a2)
	jeq .L508
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jle .L507
	jra .L728
.L729:
	tst.l %d1
	jeq .L524
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L525
	cmp.w #1,282(%a2)
	jeq .L523
.L525:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L524
	cmp.w #-1,282(%a2)
	jeq .L523
.L524:
	tst.b 102(%a2)
	jne .L527
	tst.l %d1
	jeq .L530
	tst.b 107(%a2)
	jeq .L530
	tst.b 172(%a2)
	jeq .L530
	tst.b 86(%a2)
	jne .L530
	tst.b 134(%a2)
	jeq .L530
	tst.b 130(%a2)
	jne .L532
	clr.b 107(%a2)
	move.b #1,130(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L534
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L535
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L731
.L534:
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L537:
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L728:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 498(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 173(%a2)
	jne .L510
	jra .L508
.L527:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L529
	clr.b 102(%a2)
	move.b #1,172(%a2)
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L731:
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L530:
	tst.b 130(%a2)
	jne .L532
	tst.l %d1
	jeq .L538
	tst.b 107(%a2)
	jeq .L538
	tst.b 172(%a2)
	jeq .L538
	tst.b 86(%a2)
	jne .L538
	tst.b 134(%a2)
	jne .L538
	tst.b 92(%a2)
	jne .L540
	clr.b 107(%a2)
	move.b #1,92(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L542:
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L532:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L537
	clr.b 130(%a2)
	move.b #1,172(%a2)
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L538:
	tst.b 92(%a2)
	jne .L540
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L543
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L543
	cmp.w #1,282(%a2)
	jeq .L544
.L543:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L545
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L545
	cmp.w #-1,282(%a2)
	jeq .L544
.L545:
	tst.b 100(%a2)
	jeq .L732
.L547:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L549
	clr.b 100(%a2)
.L549:
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L540:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L542
	clr.b 92(%a2)
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L732:
	tst.l %d1
	jeq .L550
	cmp.w #1,282(%a2)
	jeq .L551
.L550:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L552
	cmp.w #-1,282(%a2)
	jeq .L551
.L552:
	tst.b 101(%a2)
	jne .L555
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L558
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L559
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L560
	cmp.w #1,282(%a2)
	jeq .L558
.L560:
	tst.l %d1
	jeq .L559
	cmp.w #-1,282(%a2)
	jeq .L558
.L559:
	tst.b 95(%a2)
	jne .L562
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L565
	tst.b 107(%a2)
	jeq .L565
	tst.b 172(%a2)
	jeq .L565
	tst.b 86(%a2)
	jne .L565
	tst.b 89(%a2)
	jne .L565
	tst.b 134(%a2)
	jeq .L565
	tst.b 103(%a2)
	jne .L567
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L569:
	move.l 406(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L555:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L557
	clr.b 101(%a2)
.L557:
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L544:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L545
	tst.b 107(%a2)
	jeq .L545
	tst.b 172(%a2)
	jeq .L545
	tst.b 86(%a2)
	jne .L545
	tst.b 100(%a2)
	jne .L547
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,100(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L551:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L553
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L552
.L553:
	tst.b 107(%a2)
	jeq .L552
	tst.b 172(%a2)
	jeq .L552
	tst.b 86(%a2)
	jne .L552
	tst.b 101(%a2)
	jne .L555
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,101(%a2)
	clr.w 16(%a3)
	move.l 278(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L558:
	tst.b 107(%a2)
	jeq .L559
	tst.b 172(%a2)
	jeq .L559
	tst.b 86(%a2)
	jne .L559
	tst.b 89(%a2)
	jne .L559
	tst.b 128(%a2)
	jne .L559
	tst.b 95(%a2)
	jne .L562
	clr.b 107(%a2)
	move.b #1,95(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L564:
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L562:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L564
	clr.b 95(%a2)
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L520:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L733
.L519:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L733
.L730:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L733
.L535:
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L565:
	tst.b 103(%a2)
	jne .L567
	and.l %d0,%d5
	jeq .L570
	tst.b 107(%a2)
	jeq .L570
	tst.b 172(%a2)
	jeq .L570
	tst.b 86(%a2)
	jne .L570
	tst.b 89(%a2)
	jne .L570
	tst.b 128(%a2)
	jne .L570
	tst.b 94(%a2)
	jne .L572
	clr.b 107(%a2)
	move.b #1,94(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L574:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L567:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L569
	clr.b 103(%a2)
	move.b #1,172(%a2)
	move.l 406(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L570:
	tst.b 94(%a2)
	jne .L572
	tst.l %d4
	jeq .L575
	tst.b 107(%a2)
	jeq .L575
	tst.b 172(%a2)
	jeq .L575
	tst.b 86(%a2)
	jne .L575
	tst.b 89(%a2)
	jeq .L575
	tst.b 104(%a2)
	jne .L577
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 278(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L579:
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L572:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L574
	clr.b 94(%a2)
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L575:
	tst.b 104(%a2)
	jeq .L734
.L577:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L579
	clr.b 104(%a2)
	move.b #1,172(%a2)
	move.b #1,89(%a2)
	move.w #1,16(%a3)
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L734:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L580
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L581
.L580:
	tst.b 86(%a2)
	jne .L581
	tst.b 172(%a2)
	jeq .L581
	tst.b 90(%a2)
	jne .L582
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L582:
	and.l JAGPAD_DOWN,%d0
	jeq .L583
	tst.b 89(%a2)
	jne .L584
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L584:
	tst.b 91(%a2)
	jne .L585
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L581:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L588
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L589
	cmp.w #1,282(%a2)
	jeq .L590
.L589:
	tst.l %d1
	jeq .L588
	cmp.w #-1,282(%a2)
	jeq .L590
.L588:
	tst.b 87(%a2)
	jeq .L735
.L592:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L594
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L595
.L594:
	tst.b 87(%a2)
	jeq .L595
	tst.b 184(%a2)
	jne .L595
	tst.b 244(%a2)
	jeq .L596
.L595:
	tst.b 96(%a2)
	jeq .L597
	tst.b 184(%a2)
	jne .L597
	tst.b 87(%a2)
	jeq .L597
.L596:
	tst.b 98(%a2)
	jne .L597
	tst.b 96(%a2)
	jne .L598
	clr.b 107(%a2)
	move.b #1,244(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L598:
	tst.b 174(%a2)
	jeq .L736
.L599:
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 180(%a2),%d0
	cmp.l %a0,%d0
	jgt .L737
	clr.b 174(%a2)
	clr.b 96(%a2)
.L600:
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
.L597:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L602
	and.l JAGPAD_9,%d0
	jeq .L603
.L602:
	tst.b 87(%a2)
	jeq .L603
	tst.b 184(%a2)
	jne .L603
	tst.b 244(%a2)
	jeq .L604
.L603:
	tst.b 98(%a2)
	jeq .L605
	tst.b 184(%a2)
	jne .L605
	tst.b 87(%a2)
	jeq .L605
.L604:
	tst.b 96(%a2)
	jne .L605
	tst.b 98(%a2)
	jne .L606
	clr.b 107(%a2)
	move.b #1,244(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L606:
	tst.b 174(%a2)
	jeq .L738
.L607:
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 180(%a2),%d0
	cmp.l %a0,%d0
	jgt .L739
	clr.b 174(%a2)
	clr.b 98(%a2)
.L608:
	move.l 386(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L605:
	tst.w 16(%a3)
	jne .L610
	tst.b 96(%a2)
	jne .L610
	tst.b 98(%a2)
	jeq .L740
.L610:
	tst.b 87(%a2)
	jeq .L510
	tst.b 184(%a2)
	jne .L611
	move.l 186(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L611
	tst.b 185(%a2)
	jne .L612
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L612
	tst.b 96(%a2)
	jne .L612
	tst.b 98(%a2)
	jne .L612
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,185(%a2)
	addq.l #8,%sp
.L612:
	tst.b 174(%a2)
	jeq .L741
.L613:
	tst.b 96(%a2)
	jne .L615
	tst.b 98(%a2)
	jne .L615
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 446(%a2),-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L615:
	move.w raptor_ticks,%a0
	move.l %a0,186(%a2)
.L611:
	clr.l -(%sp)
	move.l 292(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L616
	cmp.w #89,264(%a2)
	jgt .L716
.L616:
	tst.b 184(%a2)
	jeq .L510
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L510
	move.b #1,172(%a2)
	clr.b 87(%a2)
.L718:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 185(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L510
.L583:
	tst.b 89(%a2)
	jeq .L586
	clr.b 89(%a2)
.L586:
	tst.b 91(%a2)
	jne .L587
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L716:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,184(%a2)
	clr.l 292(%a2)
	move.w #90,264(%a2)
	addq.l #4,%sp
	jra .L510
.L585:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 34(%a2),%a0
.L720:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L510
	clr.b 91(%a2)
	jra .L510
.L587:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 30(%a2),%a0
	jra .L720
.L741:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 232(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 316(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,264(%a2)
	addq.l #1,%a0
	move.l %a0,316(%a2)
	addq.l #8,%sp
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L614
	clr.l 316(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,184(%a2)
	move.w #90,264(%a2)
	addq.l #4,%sp
.L614:
	move.l 288(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,292(%a2)
	jra .L613
.L740:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L717:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L735:
	tst.l %d4
	jeq .L618
	tst.l %d1
	jeq .L619
	cmp.w #1,282(%a2)
	jeq .L620
.L619:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L618
	cmp.w #-1,282(%a2)
	jeq .L620
.L618:
	tst.b 88(%a2)
	jeq .L742
.L622:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L624
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L625
.L624:
	tst.b 88(%a2)
	jeq .L625
	tst.b 184(%a2)
	jne .L625
	tst.b 244(%a2)
	jeq .L626
.L625:
	tst.b 96(%a2)
	jeq .L627
	tst.b 184(%a2)
	jne .L627
	tst.b 88(%a2)
	jeq .L627
.L626:
	tst.b 98(%a2)
	jne .L627
	tst.b 96(%a2)
	jne .L628
	clr.b 107(%a2)
	move.b #1,244(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L628:
	tst.b 174(%a2)
	jeq .L743
.L629:
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 180(%a2),%d0
	cmp.l %a0,%d0
	jgt .L744
	clr.b 174(%a2)
	clr.b 98(%a2)
.L630:
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
.L627:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L632
	and.l JAGPAD_9,%d0
	jeq .L633
.L632:
	tst.b 88(%a2)
	jeq .L633
	tst.b 184(%a2)
	jne .L633
	tst.b 244(%a2)
	jeq .L634
.L633:
	tst.b 98(%a2)
	jeq .L635
	tst.b 184(%a2)
	jne .L635
	tst.b 88(%a2)
	jeq .L635
.L634:
	tst.b 96(%a2)
	jne .L635
	tst.b 98(%a2)
	jne .L636
	clr.b 107(%a2)
	move.b #1,244(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L636:
	tst.b 174(%a2)
	jeq .L745
.L637:
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 180(%a2),%d0
	cmp.l %a0,%d0
	jgt .L746
	clr.b 174(%a2)
	clr.b 98(%a2)
.L638:
	move.l 386(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L635:
	tst.w 16(%a3)
	jne .L640
	tst.b 96(%a2)
	jne .L640
	tst.b 98(%a2)
	jeq .L747
.L640:
	tst.b 88(%a2)
	jeq .L510
	tst.b 184(%a2)
	jne .L641
	move.l 186(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L641
	tst.b 185(%a2)
	jne .L642
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L642
	tst.b 96(%a2)
	jne .L642
	tst.b 98(%a2)
	jne .L642
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,185(%a2)
	addq.l #8,%sp
.L642:
	tst.b 174(%a2)
	jne .L643
	tst.b 315(%a2)
	jne .L644
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 232(%a2),%d1
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
.L644:
	move.l 316(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,264(%a2)
	addq.l #1,%a0
	move.l %a0,316(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L645
	clr.l 316(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,184(%a2)
	move.w #90,264(%a2)
	addq.l #4,%sp
.L645:
	move.l 288(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,292(%a2)
.L643:
	tst.b 96(%a2)
	jne .L646
	tst.b 98(%a2)
	jne .L646
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 446(%a2),-(%sp)
	moveq #20,%d0
	sub.l 316(%a2),%d0
	move.l %d0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L646:
	move.w raptor_ticks,%a0
	move.l %a0,186(%a2)
.L641:
	clr.l -(%sp)
	move.l 292(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L647
	cmp.w #89,264(%a2)
	jgt .L716
.L647:
	tst.b 184(%a2)
	jeq .L510
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L510
	move.b #1,172(%a2)
	clr.b 88(%a2)
	jra .L718
.L747:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L717
.L746:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L638
.L745:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 174(%a2)
	jeq .L638
	jra .L637
.L744:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L630
.L743:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 174(%a2)
	jeq .L630
	jra .L629
.L742:
	tst.l %d1
	jeq .L649
	tst.b 172(%a2)
	jeq .L649
	tst.b 86(%a2)
	jne .L649
	tst.b 84(%a2)
	jne .L650
	clr.w 16(%a3)
.L650:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	and.l #255,%d3
	move.l %d3,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
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
	tst.w 262(%a2)
	jle .L510
	tst.b 128(%a2)
	jne .L651
	move.l 212(%a2),%d0
	cmp.w #-1,282(%a2)
	jne .L652
	move.l 208(%a2),%d0
.L652:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L715:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L510
.L651:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L510
	move.l 240(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L715
.L649:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L653
	tst.b 172(%a2)
	jeq .L653
	tst.b 86(%a2)
	jne .L653
	tst.b 84(%a2)
	jne .L654
	clr.w 16(%a3)
.L654:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	move.b %d3,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
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
	cmp.w #280,262(%a2)
	jgt .L510
	tst.b 128(%a2)
	jne .L655
	move.l 208(%a2),%d0
	cmp.w #-1,282(%a2)
	jne .L656
	move.l 212(%a2),%d0
.L656:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L715
.L655:
	move.l 240(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L715
.L653:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L657
	tst.b 172(%a2)
	jeq .L657
	tst.b 86(%a2)
	jne .L657
	tst.b 89(%a2)
	jne .L658
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L658:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L657:
	tst.l %d4
	jeq .L659
	tst.b 105(%a2)
	jeq .L659
	tst.b 172(%a2)
	jne .L660
.L659:
	tst.b 86(%a2)
	jeq .L748
.L661:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L663
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L664
.L663:
	tst.b 86(%a2)
	jeq .L664
	tst.b 184(%a2)
	jne .L664
	tst.b 244(%a2)
	jeq .L665
.L664:
	tst.b 96(%a2)
	jeq .L666
	tst.b 184(%a2)
	jne .L666
	tst.b 86(%a2)
	jeq .L666
.L665:
	tst.b 97(%a2)
	jne .L666
	tst.b 96(%a2)
	jne .L667
	clr.b 107(%a2)
	move.b #1,244(%a2)
	move.b #1,85(%a2)
	move.b #1,96(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L667:
	tst.b 174(%a2)
	jeq .L749
.L668:
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 180(%a2),%d0
	cmp.l %a0,%d0
	jgt .L750
	clr.b 174(%a2)
	clr.b 96(%a2)
.L669:
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
.L666:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L671
	and.l JAGPAD_9,%d0
	jeq .L672
.L671:
	tst.b 86(%a2)
	jeq .L672
	tst.b 184(%a2)
	jne .L672
	tst.b 244(%a2)
	jeq .L673
.L672:
	tst.b 97(%a2)
	jeq .L674
	tst.b 184(%a2)
	jne .L674
	tst.b 86(%a2)
	jeq .L674
.L673:
	tst.b 96(%a2)
	jne .L674
	tst.b 97(%a2)
	jne .L675
	clr.b 107(%a2)
	move.b #1,244(%a2)
	move.b #1,97(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 278(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L675:
	tst.b 174(%a2)
	jeq .L751
.L676:
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	add.l 180(%a2),%d0
	cmp.l %a0,%d0
	jgt .L752
	clr.b 174(%a2)
	clr.b 97(%a2)
.L677:
	move.l 386(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L674:
	tst.w 16(%a3)
	jne .L679
	tst.b 96(%a2)
	jne .L679
	tst.b 97(%a2)
	jeq .L685
.L679:
	tst.b 86(%a2)
	jeq .L510
	tst.b 184(%a2)
	jne .L680
	move.l 250(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L681
	tst.b 174(%a2)
	jne .L681
	move.l 316(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,264(%a2)
	addq.l #1,%a0
	move.l %a0,316(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L682
	clr.l 316(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,184(%a2)
	move.w #90,264(%a2)
	addq.l #4,%sp
.L682:
	move.l 288(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,292(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
.L681:
	tst.b 96(%a2)
	jne .L680
	tst.b 97(%a2)
	jne .L680
	move.w #1,16(%a3)
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 442(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L680:
	clr.l -(%sp)
	move.l 292(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L683
	cmp.w #89,264(%a2)
	jgt .L753
.L683:
	tst.b 184(%a2)
	jeq .L510
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L685
	move.b #1,172(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L685:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L753:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,184(%a2)
	clr.l 292(%a2)
	move.w #90,264(%a2)
	addq.l #4,%sp
	jra .L510
.L739:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L608
.L738:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 174(%a2)
	jeq .L608
	jra .L607
.L737:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L600
.L736:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 174(%a2)
	jeq .L600
	jra .L599
.L590:
	tst.b 106(%a2)
	jeq .L588
	tst.b 172(%a2)
	jeq .L588
	tst.b 87(%a2)
	jne .L592
	clr.b 172(%a2)
	clr.b 244(%a2)
	clr.b 106(%a2)
	move.b #1,87(%a2)
	clr.w 16(%a3)
	move.l 296(%a2),292(%a2)
	clr.b 184(%a2)
	clr.l 316(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,186(%a2)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
	jra .L592
.L660:
	tst.b 86(%a2)
	jne .L661
	clr.b 105(%a2)
	clr.b 244(%a2)
	move.b #1,86(%a2)
	clr.w 16(%a3)
	clr.l 316(%a2)
	move.l 296(%a2),292(%a2)
	clr.b 184(%a2)
	clr.b 172(%a2)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
	jra .L661
.L620:
	tst.b 106(%a2)
	jeq .L618
	tst.b 172(%a2)
	jeq .L618
	tst.b 88(%a2)
	jne .L622
	clr.b 172(%a2)
	clr.b 244(%a2)
	clr.b 106(%a2)
	move.b #1,88(%a2)
	clr.w 16(%a3)
	clr.l 316(%a2)
	move.l 296(%a2),292(%a2)
	clr.b 184(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,186(%a2)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
	jra .L622
.L749:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 174(%a2)
	jeq .L669
	jra .L668
.L752:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 490(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L677
.L751:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 174(%a2)
	jeq .L677
	jra .L676
.L750:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L669
.L748:
	tst.b 89(%a2)
	jne .L754
	tst.b 90(%a2)
	jne .L755
	tst.b 84(%a2)
	jeq .L688
	clr.b 128(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L688:
	tst.b 82(%a2)
	jne .L689
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L689:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L510
.L755:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L510
	clr.b 90(%a2)
	jra .L510
.L754:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L510
	clr.b 89(%a2)
	jra .L510
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
	jeq .L757
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L763
	jlt .L767
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L761
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L762
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L799
.L759:
	sub.w 264(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L772
	jge .L800
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L774
	cmp.l #128,%d0
	jeq .L775
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L773
.L768:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L781
	jlt .L785
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L779
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L780
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L778
	moveq #84,%d1
	not.b %d1
.L777:
	cmp.l %a1,%d1
	jge .L757
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L788
	jlt .L794
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L788
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L788
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L788
	move.w #171,%d1
.L788:
	move.w %d1,12(%a0)
.L757:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L767:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L765
	cmp.l #128,%d0
	jeq .L766
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L759
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 264(%a2),%d1
.L773:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L782:
	moveq #78,%d1
	not.b %d1
	jra .L777
.L763:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 264(%a2),%d1
.L772:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L781:
	moveq #75,%d1
	not.b %d1
	jra .L777
.L761:
	move.w %a1,%d1
	sub.w 264(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L770:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L779:
	moveq #69,%d1
	not.b %d1
	jra .L777
.L765:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 264(%a2),%d1
.L774:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L783:
	moveq #81,%d1
	not.b %d1
	jra .L777
.L799:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 264(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L778:
	moveq #66,%d1
	not.b %d1
	jra .L777
.L794:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L788
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L788
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L788
	move.w #171,%d1
	jra .L788
.L762:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 264(%a2),%d1
.L771:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L780:
	moveq #72,%d1
	not.b %d1
	jra .L777
.L766:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 264(%a2),%d1
	add.w %a1,%d1
.L775:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L784:
	moveq #87,%d1
	not.b %d1
	jra .L777
.L800:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L770
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L771
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L768
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L778
.L785:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L783
	cmp.l #128,%d0
	jeq .L784
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L782
	moveq #84,%d1
	not.b %d1
	jra .L777
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
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
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 167(%a2)
	jeq .L804
	clr.b 167(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	move.l %a0,246(%a2)
	move.l %a0,258(%a2)
	move.l %a0,186(%a2)
	move.l %a0,12(%a3)
.L804:
	tst.b 138(%a2)
	jeq .L805
	move.w raptor_ticks,%a0
	tst.b 139(%a2)
	jne .L807
	move.l 148(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L857
	move.l 140(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,262(%a2)
	neg.l %d0
	move.l %d0,140(%a2)
	move.l 144(%a2),%d0
	addq.l #1,%d0
	move.l %d0,144(%a2)
	move.l %a0,148(%a2)
.L809:
	moveq #5,%d1
	cmp.l %d0,%d1
	jge .L807
	move.b #1,139(%a2)
.L807:
	move.l 250(%a2),%d0
	add.l #180,%d0
	cmp.l %d0,%a0
	jgt .L858
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 127(%a2)
	jne .L859
.L803:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L859:
	clr.b 138(%a2)
	move.b #1,172(%a2)
	tst.b 286(%a2)
	jne .L860
	moveq #16,%d2
	move.l %d2,16(%fp)
	moveq #15,%d3
	move.l %d3,12(%fp)
	move.l 320(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra jsfLoadClut
.L858:
	clr.b 138(%a2)
	move.b #1,172(%a2)
	tst.b 286(%a2)
	jne .L861
	pea 16.w
	pea 15.w
	move.l 320(%a2),-(%sp)
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
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 127(%a2)
	jeq .L803
	jra .L859
.L805:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L814
	move.b 135(%a2),%d1
	jeq .L803
.L864:
	move.w 282(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 163(%a2)
	jeq .L820
	tst.b 119(%a2)
	jne .L820
	tst.b 118(%a2)
	jne .L820
	clr.b 163(%a2)
	move.w #90,264(%a2)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.w 16(%a3)
	move.w 312(%a2),%d0
	jle .L821
	tst.b 136(%a2)
	jeq .L862
.L821:
	move.b #1,137(%a2)
	clr.b 136(%a2)
	addq.w #1,%d0
	move.w %d0,312(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L857:
	move.l 144(%a2),%d0
	jra .L809
.L860:
	moveq #16,%d0
	move.l %d0,16(%fp)
	moveq #14,%d1
	move.l %d1,12(%fp)
	move.l 320(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra jsfLoadClut
.L861:
	pea 16.w
	pea 14.w
	move.l 320(%a2),-(%sp)
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
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	lea (32,%sp),%sp
	tst.b 127(%a2)
	jeq .L803
	jra .L859
.L820:
	tst.b 164(%a2)
	jeq .L822
	clr.b 164(%a2)
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
	move.w #90,264(%a2)
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L823
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L803
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,12(%fp)
	move.l 278(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L814:
	move.l sprite,%a4
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a4,%d1.l),%a1
	move.w 282(%a2),%d1
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
	jeq .L863
	tst.b 135(%a2)
	jeq .L851
	moveq #1,%d1
	tst.b 137(%a2)
	jne .L817
	tst.b 83(%a2)
	jeq .L818
.L817:
	tst.b 153(%a2)
	jne .L818
	moveq #-1,%d3
	move.l %d3,4(%a1)
	tst.b %d1
	jne .L864
	jra .L803
.L822:
	tst.b 166(%a2)
	jne .L865
	tst.b 161(%a2)
	jeq .L826
.L873:
	move.w raptor_ticks,%a0
	move.l 250(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jge .L826
	clr.b 161(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 136(%a2)
	jne .L827
	tst.b 276(%a2)
	jne .L866
	move.l 268(%a2),%d0
	subq.l #1,%d0
	move.l %d0,268(%a2)
	jle .L867
.L829:
	move.l sprite,%a0
	tst.b 286(%a2)
	jeq .L830
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L827:
	tst.b 137(%a2)
	jne .L868
	tst.b 136(%a2)
	jeq .L841
	tst.b 127(%a2)
	jeq .L869
.L842:
	tst.l 272(%a2)
	jgt .L843
	tst.b 127(%a2)
	jeq .L803
.L843:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 127(%a2)
	jne .L803
	move.b #1,137(%a2)
	clr.b 136(%a2)
	addq.w #1,312(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L826:
	tst.b 165(%a2)
	jne .L870
	tst.b 129(%a2)
	jeq .L827
	tst.b 86(%a2)
	jne .L827
	tst.b 88(%a2)
	jne .L827
	tst.b 87(%a2)
	jne .L827
	tst.b 127(%a2)
	jne .L827
	tst.b 85(%a2)
	jne .L827
	tst.b 284(%a2)
	jeq .L833
	clr.b 284(%a2)
	clr.w 16(%a3)
.L833:
	tst.b 285(%a2)
	jeq .L871
	tst.w 16(%a3)
	jle .L872
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L854:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L880:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L863:
	move.b 135(%a2),%d1
	jra .L817
.L870:
	clr.b 165(%a2)
	clr.w 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	move.w 168(%a2),262(%a2)
	move.w 170(%a2),264(%a2)
	clr.w 168(%a2)
	clr.w 170(%a2)
	move.b #1,127(%a2)
	move.b #1,131(%a2)
	jra .L827
.L865:
	clr.b 166(%a2)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	tst.b 161(%a2)
	jeq .L826
	jra .L873
.L869:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L842
.L818:
	moveq #1,%d3
	move.l %d3,4(%a1)
	tst.b %d1
	jne .L864
	jra .L803
.L862:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,136(%a2)
	clr.l 272(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	addq.l #4,%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L866:
	clr.b 276(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 268(%a2),%d0
	subq.l #1,%d0
	move.l %d0,268(%a2)
	jgt .L829
.L867:
	clr.l 268(%a2)
	move.b #1,163(%a2)
	moveq #0,%d0
	jra .L829
.L872:
	clr.b 129(%a2)
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L854
.L841:
	tst.b 83(%a2)
	jne .L874
	tst.b 152(%a2)
	jne .L875
.L845:
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
	jeq .L803
	move.l 190(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 262(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 264(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L875:
	move.w 282(%a2),%d3
	lea ___mulsf3,%a4
	move.l 240(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,%d4
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l %d4,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L846
	tst.b 131(%a2)
	jne .L846
.L847:
	tst.l %d0
	jle .L850
	tst.b 314(%a2)
	jeq .L849
.L850:
	add.w %d0,262(%a2)
.L849:
	move.l 246(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L845
	clr.b 152(%a2)
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	jra .L845
.L846:
	tst.l %d0
	jlt .L876
.L848:
	cmp.w #1,%d3
	jne .L847
	tst.b 131(%a2)
	jne .L847
	add.w %d0,262(%a2)
	jra .L849
.L876:
	tst.b 314(%a2)
	jne .L848
	jra .L849
.L823:
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,12(%fp)
	move.l 278(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L868:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L877
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L878:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L877:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 278(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 135(%a2)
	addq.l #4,%sp
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L878
.L851:
	clr.b %d1
	jra .L817
.L874:
	move.w #90,264(%a2)
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L830:
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
	jra .L827
.L871:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L835
	move.b #1,285(%a2)
	move.w 282(%a2),%d0
	neg.w %d0
	move.w %d0,282(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L879
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
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L835:
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L880
.L879:
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
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L835
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L887
	jge .L894
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L889
	cmp.l #128,%d0
	jeq .L890
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L895
.L883:
	moveq #21,%d0
	unlk %fp
	rts
.L894:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L892
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L886
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L883
	moveq #3,%d0
	unlk %fp
	rts
.L886:
	moveq #9,%d0
	unlk %fp
	rts
.L890:
	moveq #24,%d0
	unlk %fp
	rts
.L895:
	moveq #15,%d0
	unlk %fp
	rts
.L889:
	moveq #18,%d0
	unlk %fp
	rts
.L892:
	moveq #6,%d0
	unlk %fp
	rts
.L887:
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
	cmp.w #1,282(%a0)
	jeq .L903
	move.w 262(%a0),%a2
	sub.w 262(%a1),%a2
	cmp.w #259,%a2
	jgt .L901
.L899:
	clr.b 315(%a0)
	clr.b 315(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L903:
	move.w 262(%a1),%a2
	sub.w 262(%a0),%a2
	cmp.w #259,%a2
	jle .L899
.L901:
	move.b #1,315(%a0)
	move.b #1,315(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,167(%a0)
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
	tst.b 202(%a3)
	jne .L907
	tst.b 202(%a2)
	jeq .L906
.L907:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 202(%a3)
	jne .L916
	tst.b 202(%a2)
	jeq .L906
.L917:
	clr.b 202(%a2)
	move.l 198(%a2),%d0
	move.l %d0,_tempScore
	jne .L913
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 198(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L906:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L916:
	pea 10.w
	pea 8.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 198(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 202(%a2)
	jne .L917
	jra .L906
.L913:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L910:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L910
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L912
	move.b #39,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	lsl.l #3,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 198(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L912:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 198(%a2),(%sp)
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
	move.w 282(%a2),%a0
	move.l %a0,-(%sp)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 250(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L919
	move.b #1,172(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 119(%a2)
	clr.b 118(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	clr.b 125(%a2)
	move.b #1,126(%a2)
	clr.l 316(%a2)
	clr.w 16(%a3)
	move.w #90,264(%a2)
.L919:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 418(%a1),%a0
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
	tst.b 138(%a2)
	jne .L924
	move.b #1,138(%a2)
	clr.b 172(%a2)
	clr.b 139(%a2)
	moveq #-1,%d0
	move.l %d0,140(%a2)
	clr.l 144(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,148(%a2)
	move.l %a0,250(%a2)
	move.b #1,110(%a2)
	tst.b 286(%a2)
	jeq .L926
	pea 16.w
	pea 14.w
	move.l 324(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
.L924:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L926:
	pea 16.w
	pea 15.w
	move.l 324(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l 278(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandlerb
	addq.l #8,%sp
	jra .L924
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 138(%a0)
	move.b #1,172(%a0)
	tst.b 286(%a0)
	jne .L934
	pea 16.w
	pea 15.w
	move.l 320(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L934:
	pea 16.w
	pea 14.w
	move.l 320(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
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
