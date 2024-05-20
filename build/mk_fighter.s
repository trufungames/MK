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
	clr.l 180(%a0)
	move.b #1,184(%a0)
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
	move.w #-1,264(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,244(%a0)
	move.w #106,246(%a0)
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
	move.w #1,264(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,244(%a0)
	move.w #106,246(%a0)
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
	move.l #0x400ccccd,270(%a2)
	clr.l 274(%a2)
	move.l #0xc1800000,278(%a2)
	move.l #0xc1a80000,282(%a2)
	move.l #0xc1200000,286(%a2)
	move.l #0x40a00000,290(%a2)
	clr.b 149(%a2)
	move.l 16(%fp),260(%a2)
	move.l 20(%fp),340(%a2)
	move.l 24(%fp),344(%a2)
	move.l 28(%fp),348(%a2)
	move.l 32(%fp),352(%a2)
	move.l 36(%fp),364(%a2)
	move.l 40(%fp),368(%a2)
	move.l 44(%fp),356(%a2)
	move.l 48(%fp),360(%a2)
	move.l 52(%fp),372(%a2)
	move.l 56(%fp),376(%a2)
	move.l 60(%fp),380(%a2)
	move.l 64(%fp),384(%a2)
	move.l 68(%fp),388(%a2)
	clr.l 176(%a2)
	move.l #0x40000000,190(%a2)
	move.l #0x40000000,194(%a2)
	move.l #0x40000000,198(%a2)
	move.l #0x40800000,202(%a2)
	move.l #0x40d00000,206(%a2)
	move.l #0x41000000,210(%a2)
	clr.l 218(%a2)
	move.l #0x40f00000,214(%a2)
	move.l #0x3f800000,222(%a2)
	moveq #1,%d0
	move.l %d0,236(%a2)
	clr.l 240(%a2)
	clr.l 228(%a2)
	move.b #1,133(%a2)
	move.b #1,82(%a2)
	clr.b 83(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.b 127(%a2)
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
	move.b #1,154(%a2)
	clr.b 226(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 128(%a2)
	clr.b 129(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
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
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 134(%a2)
	clr.b 135(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 144(%a2)
	clr.b 147(%a2)
	clr.b 148(%a2)
	clr.w 150(%a2)
	clr.w 152(%a2)
	clr.b 155(%a2)
	clr.b 156(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.l 168(%a2)
	moveq #50,%d1
	move.l %d1,158(%a2)
	move.b #20,%d0
	move.l %d0,162(%a2)
	move.b %d2,268(%a2)
	move.b #33,%d1
	move.l %d1,250(%a2)
	clr.l 254(%a2)
	clr.b 258(%a2)
	clr.b 266(%a2)
	clr.b 267(%a2)
	move.b #1,296(%a2)
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
	jne .L27
	moveq #62,%d1
	move.l %d1,172(%a2)
	moveq #60,%d2
	move.l %d2,78(%a2)
	move.b #2,%d1
	move.l %d1,186(%a2)
	move.w #210,244(%a2)
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
	move.w #-1,264(%a2)
	move.w #222,%d0
	move.w #11904,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.w #90,246(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,149(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L27:
	moveq #61,%d2
	move.l %d2,172(%a2)
	move.b #57,%d1
	move.l %d1,78(%a2)
	move.b #1,%d2
	move.l %d2,186(%a2)
	move.w #50,244(%a2)
	move.l %d2,10968(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,264(%a2)
	moveq #62,%d0
	move.w #11712,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.w #90,246(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,149(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 294(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24fighterCaptureDpadInputsP7Fighter
__Z24fighterCaptureDpadInputsP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 176(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L31
	tst.b 105(%a2)
	jne .L34
.L31:
	move.l JAGPAD_RIGHT,%d1
	and.l %d1,%d0
	jeq .L30
	tst.b 105(%a2)
	jeq .L30
	tst.b 108(%a2)
	jeq .L35
.L30:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L34:
	tst.b 108(%a2)
	jne .L31
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 176(%a2),%d0
	addq.l #8,%sp
	jra .L31
.L35:
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
	and.l 176(%a2),%d1
	jeq .L38
	tst.b 107(%a2)
	jne .L43
.L38:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L44
	tst.b 137(%a2)
	jne .L45
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L45:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 324(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L44:
	move.b #1,137(%a2)
	clr.b 140(%a2)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	addq.l #4,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L43:
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	jra .L38
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
	jeq .L50
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L51
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L54
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L54:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L51:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L50:
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
	jeq .L61
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L61:
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
	jeq .L65
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L69
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L65:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L69:
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
	jle .L76
.L72:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L76:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L77
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L77:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L72
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
	jne .L83
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L84
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L84:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L83:
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
	tst.b 125(%a2)
	jne .L87
	tst.b 109(%a2)
	jne .L88
	tst.b 110(%a2)
	jeq .L230
.L88:
	move.l 254(%a2),%d2
	tst.b 134(%a2)
	jne .L90
	tst.b 258(%a2)
	jne .L231
	move.l 250(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,250(%a2)
	jle .L232
.L92:
	move.l sprite,%a0
	tst.b 268(%a2)
	jeq .L93
.L249:
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L90:
	clr.l 254(%a2)
	clr.l 218(%a2)
	move.b #1,125(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	move.l %a0,240(%a2)
	clr.w 16(%a3)
	move.l 282(%a2),274(%a2)
	move.b 119(%a2),%d0
	jne .L95
	tst.b 120(%a2)
	jne .L95
	tst.b 129(%a2)
	jeq .L97
	clr.l 274(%a2)
.L97:
	tst.b 109(%a2)
	jne .L98
	tst.b 110(%a2)
	jeq .L233
.L98:
	moveq #0,%d1
	move.b 268(%a2),%d1
	move.l 260(%a2),%d0
	moveq #7,%d2
	cmp.l (%a2),%d2
	jeq .L234
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L102:
	move.b 110(%a2),%d1
	jne .L111
	tst.b 111(%a2)
	jeq .L107
.L111:
	move.w 244(%a2),%a4
	move.w 264(%a2),%d0
	cmp.w #-1,%d0
	jeq .L235
.L112:
	cmp.w #1,%d0
	jeq .L236
.L113:
	tst.b %d1
	jne .L114
	tst.b 113(%a2)
	jne .L114
	tst.b 114(%a2)
	jne .L114
	tst.b 111(%a2)
	jne .L237
	tst.b 117(%a2)
	jne .L117
	tst.b 116(%a2)
	jne .L117
.L87:
	tst.b 109(%a2)
	jeq .L118
	tst.b 125(%a2)
	jne .L238
.L118:
	tst.b 110(%a2)
	jeq .L89
	tst.b 125(%a2)
	jne .L239
.L89:
	tst.b 111(%a2)
	jeq .L240
.L120:
	tst.b 125(%a2)
	jne .L241
.L121:
	tst.b 112(%a2)
	jeq .L128
	tst.b 125(%a2)
	jeq .L128
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 236(%a2),%d0
	cmp.l %a0,%d0
	jle .L129
	move.w 264(%a2),%a4
	move.w 244(%a2),%d0
.L130:
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 476(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
	clr.b 112(%a2)
	clr.b 125(%a2)
.L86:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L240:
	tst.b 113(%a2)
	jeq .L121
	tst.b 125(%a2)
	jeq .L121
.L241:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 236(%a2),%d0
	cmp.l %a0,%d0
	jle .L122
	move.w 264(%a2),%a4
	move.w 244(%a2),%d0
.L123:
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
	clr.b 111(%a2)
	clr.b 113(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L128:
	tst.b 114(%a2)
	jeq .L135
	tst.b 125(%a2)
	jeq .L135
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 236(%a2),%d0
	cmp.l %a0,%d0
	jle .L136
	move.w 264(%a2),%a4
	move.w 244(%a2),%d0
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
.L264:
	clr.b 114(%a2)
	clr.b 115(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L135:
	tst.b 118(%a2)
	jeq .L142
	tst.b 125(%a2)
	jne .L242
.L142:
	move.b 129(%a2),%d2
	jeq .L143
	tst.b 125(%a2)
	jeq .L143
	tst.b 130(%a2)
	jne .L144
	tst.b 131(%a2)
	jeq .L145
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 532(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L144:
	tst.b 123(%a2)
	jne .L214
.L146:
	cmp.w #1,16(%a3)
	jle .L86
	move.w raptor_ticks,%a0
	cmp.l 232(%a2),%a0
	jlt .L86
	tst.b 130(%a2)
	jeq .L243
	move.w 246(%a2),%d0
	cmp.w #122,%d0
	jle .L153
	move.b #1,123(%a2)
	move.l %a0,232(%a2)
	move.w #90,246(%a2)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 528(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 260(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 134(%a2)
	jne .L154
	tst.b 258(%a2)
	jne .L244
	move.l 250(%a2),%d0
	subq.l #8,%d0
	move.l %d0,250(%a2)
	jle .L245
.L156:
	move.l sprite,%a0
	tst.b 268(%a2)
	jeq .L157
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L154:
	move.w 264(%a2),%d2
	lea ___floatsisf,%a5
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 210(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L159
	tst.b 129(%a2)
	jne .L159
.L160:
	tst.l %d0
	jle .L163
	tst.b 296(%a2)
	jeq .L162
.L163:
	add.w %d0,244(%a2)
.L162:
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 290(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,246(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
.L259:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L95:
	move.l 286(%a2),274(%a2)
	jra .L97
.L114:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr __Z10bloodSpraysss
	lea (12,%sp),%sp
	jra .L87
.L230:
	tst.b 111(%a2)
	jne .L88
	tst.b 117(%a2)
	jne .L88
	tst.b 116(%a2)
	jne .L88
	tst.b 118(%a2)
	jne .L88
	tst.b 113(%a2)
	jne .L88
	tst.b 112(%a2)
	jne .L88
	tst.b 119(%a2)
	jne .L88
	tst.b 114(%a2)
	jne .L88
	tst.b 120(%a2)
	jne .L88
	tst.b 129(%a2)
	jne .L88
	tst.b 111(%a2)
	jne .L120
	jra .L240
.L233:
	tst.b 118(%a2)
	jne .L98
	tst.b 113(%a2)
	jne .L98
	tst.b 112(%a2)
	jne .L98
	tst.b 114(%a2)
	jne .L103
	tst.b 120(%a2)
	jne .L103
	tst.b 111(%a2)
	jne .L106
	tst.b 117(%a2)
	jne .L106
	tst.b 116(%a2)
	jne .L106
	tst.b %d0
	jeq .L107
.L106:
	move.l 260(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 268(%a2),%d2
	move.l 260(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L109
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L246
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L102
.L93:
	move.l %d0,16216(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16136(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L90
.L238:
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 476(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
	clr.b 109(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L107:
	tst.b 117(%a2)
	jne .L201
	tst.b 116(%a2)
	jne .L201
	tst.b 113(%a2)
	jne .L201
	tst.b 114(%a2)
	jeq .L87
.L201:
	clr.b %d1
	move.w 244(%a2),%a4
	move.w 264(%a2),%d0
	cmp.w #-1,%d0
	jne .L112
.L235:
	lea (40,%a4),%a4
	jra .L113
.L239:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a1
	move.l %a1,-(%sp)
	move.l 480(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
	clr.b 110(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L143:
	tst.b 119(%a2)
	jne .L164
	tst.b 120(%a2)
	jeq .L165
.L164:
	tst.b 125(%a2)
	jeq .L165
	tst.b 123(%a2)
	jne .L214
	move.w raptor_ticks,%a0
	cmp.l 232(%a2),%a0
	jlt .L86
	move.w 264(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 202(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L167
	tst.b %d2
	jne .L167
.L168:
	tst.l %d0
	jle .L171
	tst.b 296(%a2)
	jeq .L170
.L171:
	add.w %d0,244(%a2)
.L170:
	move.b 121(%a2),%d3
	move.l 274(%a2),%d2
	tst.b %d3
	jne .L173
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,246(%a2)
	move.l 270(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,274(%a2)
.L173:
	move.l %d2,-(%sp)
	move.l 282(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L174
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L247
.L174:
	tst.b 122(%a2)
	jne .L178
	tst.b %d3
	jne .L179
	tst.b 120(%a2)
	jeq .L248
.L179:
	move.b #1,121(%a2)
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 492(%a2),-(%sp)
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
	jeq .L177
	move.b #1,122(%a2)
	clr.b 121(%a2)
.L177:
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
.L261:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L236:
	lea (-40,%a4),%a4
	jra .L113
.L231:
	clr.b 258(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 250(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,250(%a2)
	jgt .L92
.L232:
	clr.l 250(%a2)
	move.b #1,146(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 268(%a2)
	jeq .L93
	jra .L249
.L122:
	move.w 264(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 198(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L124
	tst.b 129(%a2)
	jeq .L125
.L124:
	tst.l %d0
	jlt .L250
.L126:
	cmp.w #1,%d2
	jne .L125
	tst.b 129(%a2)
	jeq .L127
.L125:
	tst.l %d0
	jle .L127
	tst.b 296(%a2)
	jeq .L206
.L127:
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
	jra .L123
.L165:
	tst.b 116(%a2)
	jeq .L181
	tst.b 125(%a2)
	jeq .L181
	tst.b 123(%a2)
	jne .L214
	move.l 232(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L86
	move.w 264(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 202(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L183
	tst.b %d2
	jne .L183
.L184:
	tst.l %d0
	jle .L187
	tst.b 296(%a2)
	jeq .L186
.L187:
	add.w %d0,244(%a2)
.L186:
	move.l 298(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,298(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L251
.L188:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L252
.L189:
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 488(%a2),-(%sp)
.L212:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	lea (36,%sp),%sp
.L255:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L181:
	tst.b 117(%a2)
	jeq .L190
	tst.b 125(%a2)
	jeq .L190
	tst.b 123(%a2)
	jne .L214
	move.l 232(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L86
	move.w 264(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 202(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L192
	tst.b %d2
	jne .L192
.L193:
	tst.l %d0
	jle .L196
	tst.b 296(%a2)
	jeq .L195
.L196:
	add.w %d0,244(%a2)
.L195:
	move.l 298(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,298(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L253
.L197:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L254
.L198:
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
.L262:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	lea (36,%sp),%sp
	jra .L255
.L190:
	tst.b 124(%a2)
	jeq .L86
	tst.b 125(%a2)
	jeq .L86
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 500(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 50(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
	clr.b 125(%a2)
	clr.b 124(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L234:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L102
.L242:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a1
	move.l %a1,-(%sp)
	move.l 496(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
	move.l 260(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 118(%a2)
	move.b #1,124(%a2)
	clr.w 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L117:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.w %a4,%d2
	ext.l %d2
	move.w 246(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.l %d2,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 246(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%d0
	add.w #-40,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	move.w 264(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.w 264(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 264(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w %d0,%a4
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	jra .L87
.L250:
	tst.b 296(%a2)
	jne .L126
.L206:
	move.w 244(%a2),%d0
	jra .L123
.L214:
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a1
	pea -1(%a1)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 232(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L86
	clr.b 119(%a2)
	clr.b 120(%a2)
	clr.b 129(%a2)
	clr.b 130(%a2)
	clr.b 117(%a2)
	clr.b 116(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	move.b #1,124(%a2)
	clr.l 298(%a2)
	clr.w 16(%a3)
	move.w #90,246(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L167:
	tst.l %d0
	jlt .L256
.L169:
	cmp.w #1,%d3
	jne .L168
	tst.b %d2
	jne .L168
	add.w %d0,244(%a2)
	jra .L170
.L256:
	tst.b 296(%a2)
	jne .L169
	jra .L170
.L183:
	tst.l %d0
	jlt .L257
.L185:
	cmp.w #1,%d3
	jne .L184
	tst.b %d2
	jne .L184
	add.w %d0,244(%a2)
	jra .L186
.L159:
	tst.l %d0
	jlt .L258
.L161:
	cmp.w #1,%d2
	jne .L160
	tst.b 129(%a2)
	jne .L160
	add.w %d0,244(%a2)
	jra .L162
.L258:
	tst.b 296(%a2)
	jne .L161
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 290(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,246(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L259
.L192:
	tst.l %d0
	jlt .L260
.L194:
	cmp.w #1,%d3
	jne .L193
	tst.b %d2
	jne .L193
	add.w %d0,244(%a2)
	jra .L195
.L252:
	move.b #1,123(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	clr.l 298(%a2)
	move.w #90,246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 260(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 298(%a2),%a0
	addq.l #4,%sp
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 488(%a2),-(%sp)
	jra .L212
.L244:
	clr.b 258(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 250(%a2),%d0
	subq.l #8,%d0
	move.l %d0,250(%a2)
	jgt .L156
	jra .L245
.L257:
	tst.b 296(%a2)
	jne .L185
	move.l 298(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,298(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L188
	jra .L251
.L245:
	clr.l 250(%a2)
	move.b #1,146(%a2)
	moveq #0,%d0
	jra .L156
.L247:
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L261
.L248:
	move.l 260(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L179
.L254:
	move.b #1,123(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	clr.l 298(%a2)
	move.w #90,246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 260(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 298(%a2),%a0
	addq.l #4,%sp
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
	jra .L262
.L251:
	move.l 260(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 298(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L189
	jra .L252
.L260:
	tst.b 296(%a2)
	jne .L194
	move.l 298(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,298(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L197
.L253:
	move.l 260(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 298(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L198
	jra .L254
.L129:
	move.w 264(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 198(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L131
	tst.b 129(%a2)
	jne .L131
.L132:
	tst.l %d0
	jle .L134
	tst.b 296(%a2)
	jeq .L207
.L134:
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
	jra .L130
.L131:
	tst.l %d0
	jlt .L263
.L133:
	cmp.w #1,%d2
	jne .L132
	tst.b 129(%a2)
	jne .L132
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
	jra .L130
.L263:
	tst.b 296(%a2)
	jne .L133
.L207:
	move.w 244(%a2),%d0
	jra .L130
.L237:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 264(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%d1
	add.w #-30,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr __Z9bloodDropsss
	lea (12,%sp),%sp
	jra .L87
.L136:
	move.w 264(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 198(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L138
	tst.b 129(%a2)
	jne .L138
.L139:
	tst.l %d0
	jle .L141
	tst.b 296(%a2)
	jeq .L208
.L141:
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
.L266:
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
	jra .L264
.L138:
	tst.l %d0
	jlt .L265
.L140:
	cmp.w #1,%d2
	jne .L139
	tst.b 129(%a2)
	jne .L139
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
	jra .L266
.L265:
	tst.b 296(%a2)
	jne .L140
.L208:
	move.w 244(%a2),%d0
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L86
	jra .L264
.L103:
	tst.b 115(%a2)
	jeq .L105
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L102
.L145:
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 123(%a2)
	jeq .L146
	jra .L214
.L178:
	move.w 246(%a2),%d0
	cmp.w #90,%d0
	jle .L180
	move.b #1,123(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	move.w #90,246(%a2)
	move.w 264(%a2),%a1
	move.l %a1,-(%sp)
	pea 90.w
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 260(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L261
.L153:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 528(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L154
.L105:
	move.l 260(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L102
.L243:
	move.b #1,130(%a2)
	move.w 264(%a2),%d1
	move.w %d1,%d0
	ext.l %d0
	lsl.l #4,%d0
	cmp.w #1,%d1
	jeq .L148
	tst.b 129(%a2)
	jne .L148
.L149:
	tst.l %d0
	jle .L152
	tst.b 296(%a2)
	jeq .L151
.L152:
	add.w %d0,244(%a2)
.L151:
	move.w #48,246(%a2)
.L268:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L148:
	tst.l %d0
	jlt .L267
.L150:
	cmp.w #1,%d1
	jne .L149
	tst.b 129(%a2)
	jne .L149
	add.w %d0,244(%a2)
	jra .L151
.L267:
	tst.b 296(%a2)
	jne .L150
	move.w #48,246(%a2)
	jra .L268
.L180:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L261
.L157:
	move.l %d0,16216(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16136(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L154
.L246:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L102
.L109:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	jra .L102
	.even
	.globl	__Z17fighterResetFlagsP7Fighter
__Z17fighterResetFlagsP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 172(%a0),%d0
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
	clr.b 127(%a0)
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
	clr.b 226(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 128(%a0)
	clr.b 129(%a0)
	clr.b 130(%a0)
	clr.b 131(%a0)
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
	clr.b 122(%a0)
	clr.b 123(%a0)
	clr.b 124(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 135(%a0)
	clr.b 136(%a0)
	clr.b 144(%a0)
	clr.b 147(%a0)
	clr.b 148(%a0)
	clr.b 155(%a0)
	clr.b 156(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 258(%a0)
	clr.b 266(%a0)
	clr.b 267(%a0)
	move.b #1,296(%a0)
	clr.b 137(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterResetFlagsAllP7FighterS0_
__Z20fighterResetFlagsAllP7FighterS0_:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%d3
	move.l 12(%fp),%d2
	move.l %d3,-(%sp)
	lea __Z17fighterResetFlagsP7Fighter,%a2
	jsr (%a2)
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #4,%sp
	move.l %d3,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
	.even
	.globl	__Z16fighterMakeDizzyP7Fighter
__Z16fighterMakeDizzyP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,134(%a2)
	clr.l 254(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	addq.l #4,%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z23fighterHandleProjectileP7FighterS0_
__Z23fighterHandleProjectileP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	moveq #1,%d0
	cmp.l (%a0),%d0
	jeq .L279
	unlk %fp
	rts
.L279:
	move.b #1,157(%a0)
	tst.b 90(%a1)
	jne .L275
	tst.b 86(%a1)
	jeq .L276
	move.b #1,119(%a1)
	moveq #5,%d0
	move.l %d0,254(%a1)
	clr.b 258(%a1)
	move.b #20,%d0
	add.l %d0,180(%a0)
	move.b #1,184(%a0)
.L280:
	unlk %fp
	rts
.L275:
	moveq #1,%d0
	move.l %d0,254(%a1)
	clr.b 258(%a1)
	move.b #1,184(%a0)
	unlk %fp
	rts
.L276:
	move.b #1,114(%a1)
	moveq #5,%d0
	move.l %d0,254(%a1)
	clr.b 258(%a1)
	move.b #20,%d0
	add.l %d0,180(%a0)
	move.b #1,184(%a0)
	jra .L280
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 125(%a0),%d0
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
	move.b #1,110(%a0)
	moveq #2,%d1
	move.l %d1,254(%a0)
	clr.b 258(%a0)
	addq.l #5,180(%a1)
	move.b #1,184(%a1)
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
	move.b #1,144(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a0)
.L303:
	tst.b 128(%a1)
	jeq .L282
	move.w 244(%a1),150(%a0)
	move.w 246(%a1),152(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,131(%a0)
	move.b #1,148(%a0)
	clr.b 154(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a1)
.L282:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L283:
	tst.b 134(%a0)
	jne .L284
	tst.b %d0
	jne .L282
	tst.b 90(%a0)
	jeq .L307
	move.b #1,91(%a0)
	move.b #1,144(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a0)
	tst.b 90(%a0)
	jne .L313
.L300:
	tst.b 100(%a1)
	jeq .L302
	move.b #1,118(%a0)
	moveq #4,%d0
	move.l %d0,254(%a0)
	clr.b 258(%a0)
	moveq #10,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L303
.L312:
	tst.b 89(%a0)
	jne .L286
	move.b #1,109(%a0)
	moveq #2,%d1
	move.l %d1,254(%a0)
	clr.b 258(%a0)
	addq.l #5,180(%a1)
	move.b #1,184(%a1)
	jra .L287
.L288:
	tst.b 94(%a1)
	jeq .L289
	tst.b 89(%a0)
	jne .L289
	move.b #1,109(%a0)
	moveq #5,%d1
	move.l %d1,254(%a0)
	clr.b 258(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
.L314:
	tst.b %d0
	jeq .L307
	jra .L282
.L289:
	tst.b 95(%a1)
	jeq .L290
	tst.b 89(%a0)
	jne .L290
	move.b #1,111(%a0)
	moveq #5,%d1
	move.l %d1,254(%a0)
	clr.b 258(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
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
	move.b #1,113(%a0)
	clr.b 154(%a1)
	move.b #1,156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #5,%d1
	move.l %d1,254(%a0)
	move.b #1,258(%a0)
	move.b #10,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	tst.b %d0
	jeq .L307
	jra .L282
.L302:
	tst.b 104(%a1)
	jeq .L303
	move.b #1,112(%a0)
	clr.b 154(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #2,%d0
	move.l %d0,254(%a0)
	clr.b 258(%a0)
	addq.l #5,180(%a1)
	move.b #1,184(%a1)
	jra .L303
.L294:
	tst.b 97(%a1)
	jne .L317
	tst.b 99(%a1)
	jeq .L296
	move.b #1,116(%a0)
	clr.b 154(%a1)
	move.b #1,155(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #8,%d1
	move.l %d1,254(%a0)
	clr.b 258(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L314
.L315:
	move.b #1,111(%a0)
	moveq #6,%d1
	move.l %d1,254(%a0)
	move.b #1,258(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
.L319:
	tst.b %d0
	jeq .L307
	jra .L282
.L316:
	move.b #1,114(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L318
	moveq #4,%d1
.L320:
	move.l %d1,254(%a0)
	move.b #1,258(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L319
.L317:
	move.b #1,113(%a0)
	clr.b 154(%a1)
	move.b #1,156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #4,%d1
	move.l %d1,254(%a0)
	clr.b 258(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L314
.L318:
	move.b #1,115(%a0)
	moveq #4,%d1
	jra .L320
.L296:
	tst.b 98(%a1)
	jeq .L297
	move.b #1,119(%a0)
	clr.b 154(%a1)
	move.b #1,156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #6,%d1
	move.l %d1,254(%a0)
	clr.b 258(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L314
.L297:
	tst.b 103(%a1)
	jeq .L287
	move.b #1,120(%a0)
	clr.b 154(%a1)
	move.b #1,156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #4,%d1
	move.l %d1,254(%a0)
	clr.b 258(%a0)
	move.b #50,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	tst.b %d0
	jeq .L307
	jra .L282
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14396,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 126(%a2)
	jeq .L323
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L344
.L323:
	tst.b 126(%a3)
	jeq .L324
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d4
	cmp.l 112(%a0,%d0.l),%d4
	jeq .L345
.L324:
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
	jlt .L322
	move.l colliders,%d1
	moveq #0,%d3
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	move.l %d1,%a0
	add.l %d3,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L327
.L352:
	cmp.w #0,%a0
	jlt .L322
	move.l 188(%a1),%d2
	move.l 188(%a0),%a4
	move.l sprite,%a0
	move.l %d2,%d0
	add.l %d2,%d0
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d4
	move.l %d4,112(%a0,%d0.l)
	move.l %a4,%d0
	add.l %a4,%d0
	add.l %a4,%d0
	lsl.l #6,%d0
	move.l %d4,112(%a0,%d0.l)
	moveq #61,%d0
	cmp.l %d2,%d0
	jeq .L346
	moveq #56,%d0
	cmp.l %d2,%d0
	jeq .L347
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L332
	moveq #56,%d4
	cmp.l %a4,%d4
	jeq .L348
.L332:
	tst.b 137(%a2)
	jeq .L333
	cmp.l 78(%a2),%d2
	jeq .L349
.L333:
	tst.b 137(%a3)
	jeq .L337
	cmp.l 78(%a3),%d2
	jeq .L350
.L337:
	moveq #59,%d0
	cmp.l %d2,%d0
	jeq .L351
.L342:
	addq.l #8,%d3
.L353:
	move.l %d1,%a0
	add.l %d3,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L352
.L327:
	cmp.w #0,%a0
	jge .L342
.L322:
	movem.l -28(%fp),#15388
	unlk %fp
	rts
.L351:
	moveq #56,%d4
	cmp.l %a4,%d4
	jne .L342
	tst.b 84(%a3)
	jeq .L342
	move.b #1,126(%a3)
	move.b #1,136(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,228(%a2)
	addq.l #8,%d3
	jra .L353
.L349:
	moveq #59,%d0
	cmp.l %a4,%d0
	jne .L333
	moveq #1,%d4
	cmp.l (%a2),%d4
	jne .L333
	move.b #1,157(%a2)
	tst.b 90(%a3)
	jne .L334
	tst.b 86(%a3)
	jeq .L335
	move.b #1,119(%a3)
	moveq #5,%d0
	move.l %d0,254(%a3)
	clr.b 258(%a3)
	moveq #20,%d4
	add.l %d4,180(%a2)
	move.b #1,184(%a2)
	jra .L333
.L350:
	moveq #56,%d4
	cmp.l %a4,%d4
	jne .L337
	moveq #1,%d0
	cmp.l (%a3),%d0
	jne .L337
	move.b #1,157(%a3)
	tst.b 90(%a2)
	jne .L338
	tst.b 86(%a2)
	jeq .L339
	move.b #1,119(%a2)
	moveq #5,%d4
	move.l %d4,254(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,180(%a3)
	move.b #1,184(%a3)
.L354:
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L342
	jra .L351
.L347:
	moveq #59,%d4
	cmp.l %a4,%d4
	jne .L332
	tst.b 84(%a2)
	jeq .L332
	move.w 244(%a2),%d0
	cmp.w #10,%d0
	jle .L332
	cmp.w #328,%d0
	jgt .L332
	move.w 244(%a3),%d0
	cmp.w #10,%d0
	jle .L332
	cmp.w #328,%d0
	jgt .L332
	move.b #1,126(%a2)
	move.b #1,136(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,228(%a3)
	jra .L332
.L346:
	moveq #59,%d4
	cmp.l %a4,%d4
	jne .L332
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l colliders,%d1
	jra .L332
.L348:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l colliders,%d1
	jra .L332
.L344:
	clr.b 126(%a2)
	jra .L323
.L345:
	clr.b 126(%a3)
	jra .L324
.L334:
	moveq #1,%d0
	move.l %d0,254(%a3)
	clr.b 258(%a3)
	move.b #1,184(%a2)
	jra .L333
.L338:
	moveq #1,%d4
	move.l %d4,254(%a2)
	clr.b 258(%a2)
	move.b #1,184(%a3)
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L342
	jra .L351
.L335:
	move.b #1,114(%a3)
	moveq #5,%d0
	move.l %d0,254(%a3)
	clr.b 258(%a3)
	moveq #20,%d4
	add.l %d4,180(%a2)
	move.b #1,184(%a2)
	jra .L333
.L339:
	move.b #1,114(%a2)
	moveq #5,%d4
	move.l %d4,254(%a2)
	clr.b 258(%a2)
	moveq #20,%d0
	add.l %d0,180(%a3)
	move.b #1,184(%a3)
	jra .L354
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 264(%a1),%d0
	cmp.w #1,%d0
	jeq .L370
	cmp.w #-1,%d0
	jeq .L371
.L359:
	move.w 264(%a0),%d0
	cmp.w #1,%d0
	jeq .L372
.L360:
	cmp.w #-1,%d0
	jne .L356
	move.w 244(%a0),%a2
	add.l _turnOffset,%a2
	move.w 244(%a1),%a1
	cmp.l %a2,%a1
	jle .L356
.L367:
	tst.b 127(%a0)
	jne .L356
	clr.b 267(%a0)
	move.b #1,127(%a0)
	move.b #1,266(%a0)
.L356:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L371:
	move.w 244(%a1),%a3
	add.l _turnOffset,%a3
	move.w 244(%a0),%a2
	cmp.l %a3,%a2
	jle .L359
	tst.b 127(%a1)
	jne .L359
.L373:
	clr.b 267(%a1)
	move.b #1,127(%a1)
	move.b #1,266(%a1)
	move.w 264(%a0),%d0
	cmp.w #1,%d0
	jne .L360
.L372:
	move.w 244(%a0),%a2
	move.w 244(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L367
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L370:
	move.w 244(%a1),%a3
	move.w 244(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L359
	tst.b 127(%a1)
	jne .L359
	jra .L373
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 264(%a0),%d0
	cmp.w #1,%d0
	jeq .L382
	cmp.w #-1,%d0
	jeq .L383
.L377:
	clr.b 132(%a0)
	clr.b 132(%a1)
.L375:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L383:
	move.w 244(%a1),%a3
	move.w 244(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L377
.L379:
	move.b #1,132(%a0)
	move.b #1,132(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L382:
	move.w 244(%a1),%a3
	move.w 244(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L379
	clr.b 132(%a0)
	clr.b 132(%a1)
	jra .L375
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 250(%a1),16024(%a0)
	move.l 12(%fp),%a1
	move.l 250(%a1),%d0
	move.l %d0,16216(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16136(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterAddPendingDamageP7FighteribS0_i
__Z23fighterAddPendingDamageP7FighteribS0_i:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 20(%fp),%a0
	move.l 12(%fp),254(%a1)
	move.b 19(%fp),258(%a1)
	move.l 24(%fp),%d0
	add.l %d0,180(%a0)
	move.b #1,184(%a0)
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
	tst.b 134(%a2)
	jne .L387
	tst.b 258(%a2)
	jne .L394
	move.l 250(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,250(%a2)
	jle .L395
.L390:
	move.l sprite,%a0
	tst.b 268(%a2)
	jeq .L391
.L396:
	move.l %d0,16024(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L391:
	move.l %d0,16216(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16136(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L387:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L394:
	clr.b 258(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 250(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,250(%a2)
	jgt .L390
.L395:
	clr.l 250(%a2)
	move.b #1,146(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 268(%a2)
	jeq .L391
	jra .L396
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,264(%a0)
	jeq .L403
	tst.b 296(%a0)
	jeq .L398
.L400:
	addq.w #2,244(%a0)
.L398:
	unlk %fp
	rts
.L403:
	tst.b 129(%a0)
	jeq .L400
	tst.b 296(%a0)
	jne .L400
	jra .L398
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,264(%a0)
	jeq .L406
	tst.b 129(%a0)
	jeq .L407
.L406:
	tst.b 296(%a0)
	jeq .L405
.L407:
	subq.w #2,244(%a0)
.L405:
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
	jeq .L412
	move.l 172(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 244(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 246(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L412:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L420
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L420:
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
	move.w #90,246(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 244(%a2),%d0
	cmp.w #11,%d0
	jle .L436
.L424:
	cmp.w #280,%d0
	jgt .L428
.L433:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L436:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L432
	move.w 244(%a2),%d0
	cmp.w #11,%d0
	jgt .L424
	cmp.w #280,244(%a3)
	jgt .L432
	jsr (%a4)
	tst.b %d0
	jne .L432
	move.w 244(%a2),%d0
	cmp.w #280,%d0
	jle .L433
.L428:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L437
.L432:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L437:
	cmp.w #328,244(%a2)
	jle .L433
	cmp.w #10,244(%a3)
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
	move.w 264(%a0),%d1
	cmp.w #1,%d1
	jeq .L440
	tst.b 129(%a0)
	jne .L440
.L441:
	tst.l %d0
	jle .L444
	tst.b 296(%a0)
	jeq .L439
.L444:
	add.w %d0,244(%a0)
.L439:
	unlk %fp
	rts
.L440:
	tst.l %d0
	jlt .L447
	cmp.w #1,%d1
	jne .L441
.L448:
	tst.b 129(%a0)
	jne .L441
	add.w %d0,244(%a0)
	jra .L439
.L447:
	tst.b 296(%a0)
	jeq .L439
	cmp.w #1,%d1
	jne .L441
	jra .L448
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #15408,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d3
	tst.b 125(%a2)
	jne .L451
	tst.b 84(%a2)
	jeq .L682
.L452:
	clr.b 82(%a2)
.L454:
	move.l 186(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,176(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L455
	tst.b 107(%a2)
	jeq .L455
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L455:
	move.w 318(%a2),%a0
	move.l %a0,-(%sp)
	move.l 306(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L683
	tst.b 137(%a2)
	jne .L684
	move.l 176(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L652
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L652
.L458:
	tst.b 99(%a2)
	jne .L460
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L468
	tst.l %d1
	jeq .L469
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L470
	cmp.w #1,264(%a2)
	jeq .L468
.L470:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L469
	cmp.w #-1,264(%a2)
	jeq .L468
.L469:
	tst.b 93(%a2)
	jeq .L685
.L472:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L479
	clr.b 93(%a2)
.L479:
	move.l 344(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L467:
	move.l 176(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L647
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L647
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L647
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L647
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L647
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L647
	move.b #1,107(%a2)
.L647:
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L648
	tst.b 105(%a2)
	jeq .L648
	tst.b 108(%a2)
	jeq .L686
.L648:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L649
	tst.b 105(%a2)
	jeq .L649
	tst.b 108(%a2)
	jeq .L687
.L649:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L450
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L651
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L651
	and.l JAGPAD_RIGHT,%d0
	jne .L651
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L651:
	move.b #1,106(%a2)
.L450:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L451:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L682:
	tst.b 89(%a2)
	jne .L452
	tst.b 86(%a2)
	jne .L452
	tst.b 88(%a2)
	jne .L452
	tst.b 87(%a2)
	jne .L452
	tst.b 85(%a2)
	jeq .L454
	clr.b 82(%a2)
	jra .L454
.L684:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 324(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L652:
	tst.b 89(%a2)
	jeq .L458
	tst.b 107(%a2)
	jeq .L458
	tst.b 154(%a2)
	jeq .L458
	tst.b 99(%a2)
	jne .L460
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 260(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L460:
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 155(%a2)
	jeq .L688
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 158(%a2),%d0
	cmp.l %a0,%d0
	jgt .L689
.L464:
	clr.b 155(%a2)
.L465:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L467
	clr.b 99(%a2)
	move.b #1,154(%a2)
	jra .L467
.L685:
	tst.l %d4
	jeq .L690
.L480:
	tst.b 107(%a2)
	jeq .L481
	tst.b 154(%a2)
	jeq .L481
	tst.b 86(%a2)
	jne .L481
	tst.b 126(%a2)
	jeq .L481
	tst.b 102(%a2)
	jne .L484
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L486:
	move.l 376(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L683:
	move.b #1,137(%a2)
	clr.b 140(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L468:
	tst.b 107(%a2)
	jeq .L469
	tst.b 154(%a2)
	jeq .L469
	tst.b 86(%a2)
	jne .L469
	tst.b 126(%a2)
	jne .L469
	tst.b 93(%a2)
	jne .L472
	clr.b 107(%a2)
	move.b #1,93(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d2
	move.b 268(%a2),%d2
	move.l 260(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L476
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L477
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L691
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L694:
	move.l 344(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L688:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 155(%a2)
	jeq .L465
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 158(%a2),%d0
	cmp.l %a0,%d0
	jle .L464
	jra .L689
.L690:
	tst.l %d1
	jeq .L481
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L482
	cmp.w #1,264(%a2)
	jeq .L480
.L482:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L481
	cmp.w #-1,264(%a2)
	jeq .L480
.L481:
	tst.b 102(%a2)
	jne .L484
	tst.l %d1
	jeq .L487
	tst.b 107(%a2)
	jeq .L487
	tst.b 154(%a2)
	jeq .L487
	tst.b 86(%a2)
	jne .L487
	tst.b 132(%a2)
	jeq .L487
	tst.b 128(%a2)
	jne .L489
	clr.b 107(%a2)
	move.b #1,128(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L491
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L492
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L692
.L491:
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L494:
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L689:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 472(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 155(%a2)
	jne .L467
	jra .L465
.L687:
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 176(%a2),%d0
	addq.l #8,%sp
	jra .L649
.L686:
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 176(%a2),%d0
	addq.l #8,%sp
	jra .L648
.L484:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L486
	clr.b 102(%a2)
	move.b #1,154(%a2)
	move.l 376(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L692:
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L487:
	tst.b 128(%a2)
	jne .L489
	tst.l %d1
	jeq .L495
	tst.b 107(%a2)
	jeq .L495
	tst.b 154(%a2)
	jeq .L495
	tst.b 86(%a2)
	jne .L495
	tst.b 132(%a2)
	jne .L495
	tst.b 92(%a2)
	jne .L497
	clr.b 107(%a2)
	move.b #1,92(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L499:
	move.l 340(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 444(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L489:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L494
	clr.b 128(%a2)
	move.b #1,154(%a2)
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L495:
	tst.b 92(%a2)
	jne .L497
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L500
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L500
	cmp.w #1,264(%a2)
	jeq .L501
.L500:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L502
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L502
	cmp.w #-1,264(%a2)
	jeq .L501
.L502:
	tst.b 100(%a2)
	jeq .L693
.L504:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L506
	clr.b 100(%a2)
.L506:
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 504(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L497:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L499
	clr.b 92(%a2)
	move.l 340(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 444(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L693:
	tst.l %d1
	jeq .L507
	cmp.w #1,264(%a2)
	jeq .L508
.L507:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L509
	cmp.w #-1,264(%a2)
	jeq .L508
.L509:
	tst.b 101(%a2)
	jne .L512
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L515
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L516
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L517
	cmp.w #1,264(%a2)
	jeq .L515
.L517:
	tst.l %d1
	jeq .L516
	cmp.w #-1,264(%a2)
	jeq .L515
.L516:
	tst.b 95(%a2)
	jne .L519
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L522
	tst.b 107(%a2)
	jeq .L522
	tst.b 154(%a2)
	jeq .L522
	tst.b 86(%a2)
	jne .L522
	tst.b 89(%a2)
	jne .L522
	tst.b 132(%a2)
	jeq .L522
	tst.b 103(%a2)
	jne .L524
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L526:
	move.l 380(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L512:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L514
	clr.b 101(%a2)
.L514:
	move.l 372(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L501:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L502
	tst.b 107(%a2)
	jeq .L502
	tst.b 154(%a2)
	jeq .L502
	tst.b 86(%a2)
	jne .L502
	tst.b 100(%a2)
	jne .L504
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,100(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 504(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L508:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L510
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L509
.L510:
	tst.b 107(%a2)
	jeq .L509
	tst.b 154(%a2)
	jeq .L509
	tst.b 86(%a2)
	jne .L509
	tst.b 101(%a2)
	jne .L512
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,101(%a2)
	clr.w 16(%a3)
	move.l 260(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 372(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L515:
	tst.b 107(%a2)
	jeq .L516
	tst.b 154(%a2)
	jeq .L516
	tst.b 86(%a2)
	jne .L516
	tst.b 89(%a2)
	jne .L516
	tst.b 126(%a2)
	jne .L516
	tst.b 95(%a2)
	jne .L519
	clr.b 107(%a2)
	move.b #1,95(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L521:
	move.l 352(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 456(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L519:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L521
	clr.b 95(%a2)
	move.l 352(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 456(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L477:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L694
.L476:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L694
.L691:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L694
.L492:
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L522:
	tst.b 103(%a2)
	jne .L524
	and.l %d0,%d5
	jeq .L527
	tst.b 107(%a2)
	jeq .L527
	tst.b 154(%a2)
	jeq .L527
	tst.b 86(%a2)
	jne .L527
	tst.b 89(%a2)
	jne .L527
	tst.b 126(%a2)
	jne .L527
	tst.b 94(%a2)
	jne .L529
	clr.b 107(%a2)
	move.b #1,94(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L531:
	move.l 348(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 452(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L524:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L526
	clr.b 103(%a2)
	move.b #1,154(%a2)
	move.l 380(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L527:
	tst.b 94(%a2)
	jne .L529
	tst.l %d4
	jeq .L532
	tst.b 107(%a2)
	jeq .L532
	tst.b 154(%a2)
	jeq .L532
	tst.b 86(%a2)
	jne .L532
	tst.b 89(%a2)
	jeq .L532
	tst.b 104(%a2)
	jne .L534
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 260(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L536:
	move.l 384(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L529:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L531
	clr.b 94(%a2)
	move.l 348(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 452(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L532:
	tst.b 104(%a2)
	jeq .L695
.L534:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L536
	clr.b 104(%a2)
	move.b #1,154(%a2)
	move.b #1,89(%a2)
	move.w #1,16(%a3)
	move.l 384(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L695:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L537
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L538
.L537:
	tst.b 86(%a2)
	jne .L538
	tst.b 154(%a2)
	jeq .L538
	tst.b 90(%a2)
	jne .L539
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L539:
	and.l JAGPAD_DOWN,%d0
	jeq .L540
	tst.b 89(%a2)
	jne .L541
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L541:
	tst.b 91(%a2)
	jne .L542
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 436(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L538:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L545
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L546
	cmp.w #1,264(%a2)
	jeq .L547
.L546:
	tst.l %d1
	jeq .L545
	cmp.w #-1,264(%a2)
	jeq .L547
.L545:
	tst.b 87(%a2)
	jeq .L696
.L549:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L551
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L552
.L551:
	tst.b 87(%a2)
	jeq .L552
	tst.b 166(%a2)
	jne .L552
	tst.b 226(%a2)
	jeq .L553
.L552:
	tst.b 96(%a2)
	jeq .L554
	tst.b 166(%a2)
	jne .L554
	tst.b 87(%a2)
	jeq .L554
.L553:
	tst.b 98(%a2)
	jne .L554
	tst.b 96(%a2)
	jne .L555
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L555:
	tst.b 156(%a2)
	jeq .L697
.L556:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L698
	clr.b 156(%a2)
	clr.b 96(%a2)
.L557:
	move.l 356(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
.L554:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L559
	and.l JAGPAD_9,%d0
	jeq .L560
.L559:
	tst.b 87(%a2)
	jeq .L560
	tst.b 166(%a2)
	jne .L560
	tst.b 226(%a2)
	jeq .L561
.L560:
	tst.b 98(%a2)
	jeq .L562
	tst.b 166(%a2)
	jne .L562
	tst.b 87(%a2)
	jeq .L562
.L561:
	tst.b 96(%a2)
	jne .L562
	tst.b 98(%a2)
	jne .L563
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L563:
	tst.b 156(%a2)
	jeq .L699
.L564:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L700
	clr.b 156(%a2)
	clr.b 98(%a2)
.L565:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L562:
	tst.w 16(%a3)
	jne .L567
	tst.b 96(%a2)
	jne .L567
	tst.b 98(%a2)
	jeq .L701
.L567:
	tst.b 87(%a2)
	jeq .L467
	tst.b 166(%a2)
	jne .L568
	move.l 168(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L568
	tst.b 167(%a2)
	jne .L569
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L569
	tst.b 96(%a2)
	jne .L569
	tst.b 98(%a2)
	jne .L569
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,167(%a2)
	addq.l #8,%sp
.L569:
	tst.b 156(%a2)
	jeq .L702
.L570:
	tst.b 96(%a2)
	jne .L572
	tst.b 98(%a2)
	jne .L572
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 420(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L572:
	move.w raptor_ticks,%a0
	move.l %a0,168(%a2)
.L568:
	clr.l -(%sp)
	move.l 274(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L573
	cmp.w #89,246(%a2)
	jgt .L675
.L573:
	tst.b 166(%a2)
	jeq .L467
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L467
	move.b #1,154(%a2)
	clr.b 87(%a2)
.L677:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 167(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L467
.L540:
	tst.b 89(%a2)
	jeq .L543
	clr.b 89(%a2)
.L543:
	tst.b 91(%a2)
	jne .L544
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L675:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,166(%a2)
	clr.l 274(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
	jra .L467
.L542:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 440(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 34(%a2),%a0
.L679:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L467
	clr.b 91(%a2)
	jra .L467
.L544:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 30(%a2),%a0
	jra .L679
.L702:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 214(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 298(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,298(%a2)
	addq.l #8,%sp
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L571
	clr.l 298(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,166(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
.L571:
	move.l 270(%a2),-(%sp)
	move.l 274(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,274(%a2)
	jra .L570
.L701:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L676:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 420(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L696:
	tst.l %d4
	jeq .L575
	tst.l %d1
	jeq .L576
	cmp.w #1,264(%a2)
	jeq .L577
.L576:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L575
	cmp.w #-1,264(%a2)
	jeq .L577
.L575:
	tst.b 88(%a2)
	jeq .L703
.L579:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L581
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L582
.L581:
	tst.b 88(%a2)
	jeq .L582
	tst.b 166(%a2)
	jne .L582
	tst.b 226(%a2)
	jeq .L583
.L582:
	tst.b 96(%a2)
	jeq .L584
	tst.b 166(%a2)
	jne .L584
	tst.b 88(%a2)
	jeq .L584
.L583:
	tst.b 98(%a2)
	jne .L584
	tst.b 96(%a2)
	jne .L585
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L585:
	tst.b 156(%a2)
	jeq .L704
.L586:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L705
	clr.b 156(%a2)
	clr.b 98(%a2)
.L587:
	move.l 356(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
.L584:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L589
	and.l JAGPAD_9,%d0
	jeq .L590
.L589:
	tst.b 88(%a2)
	jeq .L590
	tst.b 166(%a2)
	jne .L590
	tst.b 226(%a2)
	jeq .L591
.L590:
	tst.b 98(%a2)
	jeq .L592
	tst.b 166(%a2)
	jne .L592
	tst.b 88(%a2)
	jeq .L592
.L591:
	tst.b 96(%a2)
	jne .L592
	tst.b 98(%a2)
	jne .L593
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L593:
	tst.b 156(%a2)
	jeq .L706
.L594:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L707
	clr.b 156(%a2)
	clr.b 98(%a2)
.L595:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L592:
	tst.w 16(%a3)
	jne .L597
	tst.b 96(%a2)
	jne .L597
	tst.b 98(%a2)
	jeq .L708
.L597:
	tst.b 88(%a2)
	jeq .L467
	tst.b 166(%a2)
	jne .L598
	move.l 168(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L598
	tst.b 167(%a2)
	jne .L599
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L599
	tst.b 96(%a2)
	jne .L599
	tst.b 98(%a2)
	jne .L599
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,167(%a2)
	addq.l #8,%sp
.L599:
	tst.b 156(%a2)
	jne .L600
	tst.b 297(%a2)
	jne .L601
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 214(%a2),%d1
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
.L601:
	move.l 298(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,298(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L602
	clr.l 298(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,166(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
.L602:
	move.l 270(%a2),-(%sp)
	move.l 274(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,274(%a2)
.L600:
	tst.b 96(%a2)
	jne .L603
	tst.b 98(%a2)
	jne .L603
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 420(%a2),-(%sp)
	moveq #20,%d0
	sub.l 298(%a2),%d0
	move.l %d0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L603:
	move.w raptor_ticks,%a0
	move.l %a0,168(%a2)
.L598:
	clr.l -(%sp)
	move.l 274(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L604
	cmp.w #89,246(%a2)
	jgt .L675
.L604:
	tst.b 166(%a2)
	jeq .L467
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L467
	move.b #1,154(%a2)
	clr.b 88(%a2)
	jra .L677
.L708:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L676
.L707:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 468(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L595
.L706:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 468(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L595
	jra .L594
.L705:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 460(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L587
.L704:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L587
	jra .L586
.L703:
	tst.l %d1
	jeq .L606
	tst.b 154(%a2)
	jeq .L606
	tst.b 86(%a2)
	jne .L606
	tst.b 84(%a2)
	jne .L607
	clr.w 16(%a3)
.L607:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	and.l #255,%d3
	move.l %d3,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 408(%a2),-(%sp)
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
	tst.w 244(%a2)
	jle .L467
	tst.b 126(%a2)
	jne .L608
	move.l 194(%a2),%d0
	cmp.w #-1,264(%a2)
	jne .L609
	move.l 190(%a2),%d0
.L609:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L674:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L467
.L608:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L467
	move.l 222(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L674
.L606:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L610
	tst.b 154(%a2)
	jeq .L610
	tst.b 86(%a2)
	jne .L610
	tst.b 84(%a2)
	jne .L611
	clr.w 16(%a3)
.L611:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	move.b %d3,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 408(%a2),-(%sp)
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
	cmp.w #280,244(%a2)
	jgt .L467
	tst.b 126(%a2)
	jne .L612
	move.l 190(%a2),%d0
	cmp.w #-1,264(%a2)
	jne .L613
	move.l 194(%a2),%d0
.L613:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L674
.L612:
	move.l 222(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L674
.L610:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L614
	tst.b 154(%a2)
	jeq .L614
	tst.b 86(%a2)
	jne .L614
	tst.b 89(%a2)
	jne .L615
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L615:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L614:
	tst.l %d4
	jeq .L616
	tst.b 105(%a2)
	jeq .L616
	tst.b 154(%a2)
	jne .L617
.L616:
	tst.b 86(%a2)
	jeq .L709
.L618:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L620
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L621
.L620:
	tst.b 86(%a2)
	jeq .L621
	tst.b 166(%a2)
	jne .L621
	tst.b 226(%a2)
	jeq .L622
.L621:
	tst.b 96(%a2)
	jeq .L623
	tst.b 166(%a2)
	jne .L623
	tst.b 86(%a2)
	jeq .L623
.L622:
	tst.b 97(%a2)
	jne .L623
	tst.b 96(%a2)
	jne .L624
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,85(%a2)
	move.b #1,96(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L624:
	tst.b 156(%a2)
	jeq .L710
.L625:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L711
	clr.b 156(%a2)
	clr.b 96(%a2)
.L626:
	move.l 356(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
.L623:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L628
	and.l JAGPAD_9,%d0
	jeq .L629
.L628:
	tst.b 86(%a2)
	jeq .L629
	tst.b 166(%a2)
	jne .L629
	tst.b 226(%a2)
	jeq .L630
.L629:
	tst.b 97(%a2)
	jeq .L631
	tst.b 166(%a2)
	jne .L631
	tst.b 86(%a2)
	jeq .L631
.L630:
	tst.b 96(%a2)
	jne .L631
	tst.b 97(%a2)
	jne .L632
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,97(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 260(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L632:
	tst.b 156(%a2)
	jeq .L712
.L633:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L713
	clr.b 156(%a2)
	clr.b 97(%a2)
.L634:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L631:
	tst.w 16(%a3)
	jne .L636
	tst.b 96(%a2)
	jne .L636
	tst.b 97(%a2)
	jeq .L642
.L636:
	tst.b 86(%a2)
	jeq .L467
	tst.b 166(%a2)
	jne .L637
	move.l 232(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L638
	tst.b 156(%a2)
	jne .L638
	move.l 298(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,298(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L639
	clr.l 298(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,166(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
.L639:
	move.l 270(%a2),-(%sp)
	move.l 274(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,274(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
.L638:
	tst.b 96(%a2)
	jne .L637
	tst.b 97(%a2)
	jne .L637
	move.w #1,16(%a3)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 416(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L637:
	clr.l -(%sp)
	move.l 274(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L640
	cmp.w #89,246(%a2)
	jgt .L714
.L640:
	tst.b 166(%a2)
	jeq .L467
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L642
	move.b #1,154(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L642:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L714:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,166(%a2)
	clr.l 274(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
	jra .L467
.L700:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 468(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L565
.L699:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 468(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L565
	jra .L564
.L698:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 460(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L557
.L697:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L557
	jra .L556
.L547:
	tst.b 106(%a2)
	jeq .L545
	tst.b 154(%a2)
	jeq .L545
	tst.b 87(%a2)
	jne .L549
	clr.b 154(%a2)
	clr.b 226(%a2)
	clr.b 106(%a2)
	move.b #1,87(%a2)
	clr.w 16(%a3)
	move.l 278(%a2),274(%a2)
	clr.b 166(%a2)
	clr.l 298(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,168(%a2)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
	jra .L549
.L617:
	tst.b 86(%a2)
	jne .L618
	clr.b 105(%a2)
	clr.b 226(%a2)
	move.b #1,86(%a2)
	clr.w 16(%a3)
	clr.l 298(%a2)
	move.l 278(%a2),274(%a2)
	clr.b 166(%a2)
	clr.b 154(%a2)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
	jra .L618
.L577:
	tst.b 106(%a2)
	jeq .L575
	tst.b 154(%a2)
	jeq .L575
	tst.b 88(%a2)
	jne .L579
	clr.b 154(%a2)
	clr.b 226(%a2)
	clr.b 106(%a2)
	move.b #1,88(%a2)
	clr.w 16(%a3)
	clr.l 298(%a2)
	move.l 278(%a2),274(%a2)
	clr.b 166(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,168(%a2)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
	jra .L579
.L710:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L626
	jra .L625
.L713:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L634
.L712:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 464(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L634
	jra .L633
.L711:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 460(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L626
.L709:
	tst.b 89(%a2)
	jne .L715
	tst.b 90(%a2)
	jne .L716
	tst.b 84(%a2)
	jeq .L645
	clr.b 126(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L645:
	tst.b 82(%a2)
	jne .L646
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L646:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 396(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L467
.L716:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L467
	clr.b 90(%a2)
	jra .L467
.L715:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L467
	clr.b 89(%a2)
	jra .L467
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
	jeq .L718
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L724
	jlt .L728
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L722
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L723
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L760
.L720:
	sub.w 246(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L733
	jge .L761
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L735
	cmp.l #128,%d0
	jeq .L736
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L734
.L729:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L742
	jlt .L746
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L740
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L741
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L739
	moveq #84,%d1
	not.b %d1
.L738:
	cmp.l %a1,%d1
	jge .L718
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L749
	jlt .L755
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L749
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L749
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L749
	move.w #171,%d1
.L749:
	move.w %d1,12(%a0)
.L718:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L728:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L726
	cmp.l #128,%d0
	jeq .L727
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L720
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 246(%a2),%d1
.L734:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L743:
	moveq #78,%d1
	not.b %d1
	jra .L738
.L724:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 246(%a2),%d1
.L733:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L742:
	moveq #75,%d1
	not.b %d1
	jra .L738
.L722:
	move.w %a1,%d1
	sub.w 246(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L731:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L740:
	moveq #69,%d1
	not.b %d1
	jra .L738
.L726:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 246(%a2),%d1
.L735:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L744:
	moveq #81,%d1
	not.b %d1
	jra .L738
.L760:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 246(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L739:
	moveq #66,%d1
	not.b %d1
	jra .L738
.L755:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L749
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L749
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L749
	move.w #171,%d1
	jra .L749
.L723:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 246(%a2),%d1
.L732:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L741:
	moveq #72,%d1
	not.b %d1
	jra .L738
.L727:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 246(%a2),%d1
	add.w %a1,%d1
.L736:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L745:
	moveq #87,%d1
	not.b %d1
	jra .L738
.L761:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L731
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L732
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L729
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L739
.L746:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L744
	cmp.l #128,%d0
	jeq .L745
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L743
	moveq #84,%d1
	not.b %d1
	jra .L738
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
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
	tst.b 149(%a2)
	jeq .L765
	clr.b 149(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	move.l %a0,228(%a2)
	move.l %a0,240(%a2)
	move.l %a0,168(%a2)
	move.l %a0,12(%a3)
.L765:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L766
	move.b 133(%a2),%d1
	jeq .L764
.L770:
	move.w 264(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 146(%a2)
	jeq .L772
.L813:
	tst.b 117(%a2)
	jne .L772
	tst.b 116(%a2)
	jne .L772
	clr.b 146(%a2)
	move.w #90,246(%a2)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.w 16(%a3)
	move.w 294(%a2),%d0
	jle .L773
	tst.b 134(%a2)
	jeq .L808
.L773:
	move.b #1,135(%a2)
	clr.b 134(%a2)
	addq.w #1,%d0
	move.w %d0,294(%a2)
.L764:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L772:
	tst.b 147(%a2)
	jeq .L774
	clr.b 147(%a2)
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
	move.w #90,246(%a2)
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L775
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L764
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,12(%fp)
	move.l 260(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L774:
	tst.b 144(%a2)
	jeq .L777
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L809
.L777:
	tst.b 148(%a2)
	jne .L810
	tst.b 127(%a2)
	jeq .L778
	tst.b 86(%a2)
	jne .L778
	tst.b 88(%a2)
	jne .L778
	tst.b 87(%a2)
	jne .L778
	tst.b 125(%a2)
	jne .L778
	tst.b 85(%a2)
	jne .L778
	tst.b 266(%a2)
	jeq .L784
	clr.b 266(%a2)
	clr.w 16(%a3)
.L784:
	tst.b 267(%a2)
	jeq .L811
	tst.w 16(%a3)
	jle .L812
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L805:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 412(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L828:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L766:
	move.l sprite,%a1
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a4
	move.w 264(%a2),%d1
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
	jeq .L768
	tst.b 133(%a2)
	jeq .L802
	tst.b 135(%a2)
	jne .L804
	tst.b 83(%a2)
	jne .L804
	moveq #1,%d3
	move.l %d3,4(%a4)
	move.w 264(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 146(%a2)
	jeq .L772
	jra .L813
.L768:
	move.b 133(%a2),%d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
.L817:
	tst.b %d1
	jne .L770
	jra .L764
.L810:
	clr.b 148(%a2)
	clr.w 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	move.w 150(%a2),244(%a2)
	move.w 152(%a2),246(%a2)
	clr.w 150(%a2)
	clr.w 152(%a2)
	move.b #1,125(%a2)
	move.b #1,129(%a2)
.L778:
	tst.b 135(%a2)
	jne .L814
	tst.b 134(%a2)
	jeq .L792
	tst.b 125(%a2)
	jeq .L815
	tst.l 254(%a2)
	jle .L816
.L794:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 125(%a2)
	jne .L764
.L821:
	move.b #1,135(%a2)
	clr.b 134(%a2)
	addq.w #1,294(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L775:
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,12(%fp)
	move.l 260(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L804:
	moveq #1,%d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L817
.L792:
	tst.b 83(%a2)
	jne .L818
	tst.b 136(%a2)
	jne .L819
.L796:
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
	jeq .L764
.L825:
	move.l 172(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 244(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 246(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L814:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L820
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L824:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L802:
	clr.b %d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L817
.L816:
	tst.b 125(%a2)
	jeq .L764
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 125(%a2)
	jne .L764
	jra .L821
.L809:
	clr.b 144(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 268(%a2),%d0
	move.l %d0,-(%sp)
	move.l 260(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 134(%a2)
	jne .L778
	tst.b 258(%a2)
	jne .L822
	move.l 250(%a2),%d0
	subq.l #1,%d0
	move.l %d0,250(%a2)
	jle .L823
.L780:
	move.l sprite,%a0
	tst.b 268(%a2)
	jeq .L781
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L778
.L820:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 260(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 133(%a2)
	addq.l #4,%sp
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L824
.L815:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 400(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.l 254(%a2)
	jgt .L794
	jra .L816
.L819:
	move.w 264(%a2),%d3
	lea ___mulsf3,%a4
	move.l 222(%a2),-(%sp)
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
	jeq .L797
	tst.b 129(%a2)
	jne .L797
.L798:
	tst.l %d0
	jle .L801
	tst.b 296(%a2)
	jeq .L800
.L801:
	add.w %d0,244(%a2)
.L800:
	move.l 228(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L796
	clr.b 136(%a2)
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
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
	jne .L825
	jra .L764
.L808:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,134(%a2)
	clr.l 254(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	addq.l #4,%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L797:
	tst.l %d0
	jlt .L826
.L799:
	cmp.w #1,%d3
	jne .L798
	tst.b 129(%a2)
	jne .L798
	add.w %d0,244(%a2)
	jra .L800
.L822:
	clr.b 258(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 250(%a2),%d0
	subq.l #1,%d0
	move.l %d0,250(%a2)
	jgt .L780
.L823:
	clr.l 250(%a2)
	move.b #1,146(%a2)
	moveq #0,%d0
	jra .L780
.L826:
	tst.b 296(%a2)
	jne .L799
	jra .L800
.L812:
	clr.b 127(%a2)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L805
.L818:
	move.w #90,246(%a2)
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 404(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L781:
	move.l %d0,16216(%a0)
	moveq #78,%d3
	sub.w %d0,%d3
	move.w %d3,%d0
	add.w %d3,%d0
	add.w %d0,%d0
	move.w %d0,16136(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L778
.L811:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L786
	move.b #1,267(%a2)
	move.w 264(%a2),%d0
	neg.w %d0
	move.w %d0,264(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L827
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
.L786:
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 412(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L828
.L827:
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
	jra .L786
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L835
	jge .L842
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L837
	cmp.l #128,%d0
	jeq .L838
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L843
.L831:
	moveq #21,%d0
	unlk %fp
	rts
.L842:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L840
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L834
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L831
	moveq #3,%d0
	unlk %fp
	rts
.L834:
	moveq #9,%d0
	unlk %fp
	rts
.L838:
	moveq #24,%d0
	unlk %fp
	rts
.L843:
	moveq #15,%d0
	unlk %fp
	rts
.L837:
	moveq #18,%d0
	unlk %fp
	rts
.L840:
	moveq #6,%d0
	unlk %fp
	rts
.L835:
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
	cmp.w #1,264(%a0)
	jeq .L851
	move.w 244(%a0),%a2
	sub.w 244(%a1),%a2
	cmp.w #259,%a2
	jgt .L849
.L847:
	clr.b 297(%a0)
	clr.b 297(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L851:
	move.w 244(%a1),%a2
	sub.w 244(%a0),%a2
	cmp.w #259,%a2
	jle .L847
.L849:
	move.b #1,297(%a0)
	move.b #1,297(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,149(%a0)
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
	tst.b 184(%a3)
	jne .L855
	tst.b 184(%a2)
	jeq .L854
.L855:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 184(%a3)
	jne .L864
	tst.b 184(%a2)
	jeq .L854
.L865:
	clr.b 184(%a2)
	move.l 180(%a2),%d0
	move.l %d0,_tempScore
	jne .L861
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 180(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L854:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L864:
	pea 10.w
	pea 8.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 180(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 184(%a2)
	jne .L865
	jra .L854
.L861:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L858:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L858
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L860
	move.b #39,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	lsl.l #3,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 180(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L860:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 180(%a2),(%sp)
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
	move.w 264(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 232(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L867
	clr.b 119(%a2)
	clr.b 120(%a2)
	clr.b 129(%a2)
	clr.b 130(%a2)
	clr.b 117(%a2)
	clr.b 116(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	move.b #1,124(%a2)
	clr.l 298(%a2)
	clr.w 16(%a3)
	move.w #90,246(%a2)
.L867:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
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
