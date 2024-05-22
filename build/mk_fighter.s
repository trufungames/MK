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
	clr.l 182(%a0)
	move.b #1,186(%a0)
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
	move.w #-1,266(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,246(%a0)
	move.w #106,248(%a0)
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
	move.w #1,266(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,246(%a0)
	move.w #106,248(%a0)
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
	move.l #0x400ccccd,272(%a2)
	clr.l 276(%a2)
	move.l #0xc1800000,280(%a2)
	move.l #0xc1a80000,284(%a2)
	move.l #0xc0800000,288(%a2)
	move.l #0x40a00000,292(%a2)
	clr.b 109(%a2)
	clr.b 150(%a2)
	move.l 16(%fp),262(%a2)
	move.l 20(%fp),342(%a2)
	move.l 24(%fp),346(%a2)
	move.l 28(%fp),350(%a2)
	move.l 32(%fp),354(%a2)
	move.l 36(%fp),366(%a2)
	move.l 40(%fp),370(%a2)
	move.l 44(%fp),358(%a2)
	move.l 48(%fp),362(%a2)
	move.l 52(%fp),374(%a2)
	move.l 56(%fp),378(%a2)
	move.l 60(%fp),382(%a2)
	move.l 64(%fp),386(%a2)
	move.l 68(%fp),390(%a2)
	clr.l 178(%a2)
	move.l #0x40000000,192(%a2)
	move.l #0x40000000,196(%a2)
	move.l #0x40000000,200(%a2)
	move.l #0x40800000,204(%a2)
	move.l #0x40d00000,208(%a2)
	move.l #0x41000000,212(%a2)
	clr.l 220(%a2)
	move.l #0x40f00000,216(%a2)
	move.l #0x3f800000,224(%a2)
	moveq #1,%d0
	move.l %d0,238(%a2)
	clr.l 242(%a2)
	clr.l 230(%a2)
	move.b #1,134(%a2)
	move.b #1,82(%a2)
	clr.b 83(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.b 128(%a2)
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
	move.b #1,156(%a2)
	clr.b 228(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 129(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 133(%a2)
	clr.b 110(%a2)
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 113(%a2)
	clr.b 114(%a2)
	clr.b 115(%a2)
	clr.b 116(%a2)
	clr.b 118(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.b 135(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 140(%a2)
	clr.b 145(%a2)
	clr.b 148(%a2)
	clr.b 149(%a2)
	clr.w 152(%a2)
	clr.w 154(%a2)
	clr.b 157(%a2)
	clr.b 158(%a2)
	clr.b 168(%a2)
	clr.b 169(%a2)
	clr.l 170(%a2)
	moveq #50,%d1
	move.l %d1,160(%a2)
	move.b #20,%d0
	move.l %d0,164(%a2)
	move.b %d2,270(%a2)
	move.b #33,%d1
	move.l %d1,252(%a2)
	clr.l 256(%a2)
	clr.b 260(%a2)
	clr.b 268(%a2)
	clr.b 269(%a2)
	move.b #1,298(%a2)
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
	move.l %d1,174(%a2)
	moveq #60,%d2
	move.l %d2,78(%a2)
	move.b #2,%d1
	move.l %d1,188(%a2)
	move.w #210,246(%a2)
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
	move.w #-1,266(%a2)
	move.w #222,%d0
	move.w #11904,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.w #90,248(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,150(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L27:
	moveq #61,%d2
	move.l %d2,174(%a2)
	move.b #57,%d1
	move.l %d1,78(%a2)
	move.b #1,%d2
	move.l %d2,188(%a2)
	move.w #50,246(%a2)
	move.l %d2,10968(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,266(%a2)
	moveq #62,%d0
	move.w #11712,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.w #90,248(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,150(%a2)
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
	clr.w 296(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24fighterCaptureDpadInputsP7Fighter
__Z24fighterCaptureDpadInputsP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 178(%a2),%d0
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
	move.l 178(%a2),%d0
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
	and.l 178(%a2),%d1
	jeq .L38
	tst.b 107(%a2)
	jne .L43
.L38:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.l 308(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L44
	tst.b 138(%a2)
	jne .L45
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L45:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 326(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L44:
	move.b #1,138(%a2)
	clr.b 141(%a2)
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
	tst.b 126(%a2)
	jne .L87
	tst.b 110(%a2)
	jne .L88
	tst.b 111(%a2)
	jeq .L231
.L88:
	move.l 256(%a2),%d2
	tst.b 135(%a2)
	jne .L90
	tst.b 260(%a2)
	jne .L232
	move.l 252(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,252(%a2)
	jle .L233
.L92:
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L93
.L250:
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L90:
	clr.l 256(%a2)
	clr.l 220(%a2)
	move.b #1,126(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	move.l %a0,242(%a2)
	clr.w 16(%a3)
	move.l 284(%a2),276(%a2)
	move.b 120(%a2),%d0
	jne .L95
	tst.b 121(%a2)
	jne .L95
	tst.b 130(%a2)
	jeq .L97
	clr.l 276(%a2)
.L97:
	tst.b 110(%a2)
	jne .L98
	tst.b 111(%a2)
	jeq .L234
.L98:
	moveq #0,%d1
	move.b 270(%a2),%d1
	move.l 262(%a2),%d0
	moveq #7,%d2
	cmp.l (%a2),%d2
	jeq .L235
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L102:
	move.b 111(%a2),%d1
	jne .L111
	tst.b 112(%a2)
	jeq .L107
.L111:
	move.w 246(%a2),%a4
	move.w 266(%a2),%d0
	cmp.w #-1,%d0
	jeq .L236
.L112:
	cmp.w #1,%d0
	jeq .L237
.L113:
	tst.b 109(%a2)
	jne .L114
	tst.b %d1
	jne .L115
	tst.b 114(%a2)
	jne .L115
	tst.b 115(%a2)
	jne .L115
	tst.b 112(%a2)
	jne .L238
	tst.b 118(%a2)
	jne .L118
	tst.b 117(%a2)
	jne .L118
.L87:
	tst.b 110(%a2)
	jeq .L119
	tst.b 126(%a2)
	jne .L239
.L119:
	tst.b 111(%a2)
	jeq .L89
	tst.b 126(%a2)
	jne .L240
.L89:
	tst.b 112(%a2)
	jeq .L241
.L121:
	tst.b 126(%a2)
	jne .L242
.L122:
	tst.b 113(%a2)
	jeq .L129
	tst.b 126(%a2)
	jeq .L129
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 238(%a2),%d0
	cmp.l %a0,%d0
	jle .L130
	move.w 266(%a2),%a4
	move.w 246(%a2),%d0
.L131:
	move.l %a4,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
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
	clr.b 113(%a2)
	clr.b 126(%a2)
.L86:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L241:
	tst.b 114(%a2)
	jeq .L122
	tst.b 126(%a2)
	jeq .L122
.L242:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 238(%a2),%d0
	cmp.l %a0,%d0
	jle .L123
	move.w 266(%a2),%a4
	move.w 246(%a2),%d0
.L124:
	move.l %a4,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
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
	clr.b 112(%a2)
	clr.b 114(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L129:
	tst.b 115(%a2)
	jeq .L136
	tst.b 126(%a2)
	jeq .L136
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 238(%a2),%d0
	cmp.l %a0,%d0
	jle .L137
	move.w 266(%a2),%a4
	move.w 246(%a2),%d0
	move.l %a4,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
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
.L265:
	clr.b 115(%a2)
	clr.b 116(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L136:
	tst.b 119(%a2)
	jeq .L143
	tst.b 126(%a2)
	jne .L243
.L143:
	move.b 130(%a2),%d2
	jeq .L144
	tst.b 126(%a2)
	jeq .L144
	tst.b 131(%a2)
	jne .L145
	tst.b 132(%a2)
	jeq .L146
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L145:
	tst.b 124(%a2)
	jne .L215
.L147:
	cmp.w #1,16(%a3)
	jle .L86
	move.w raptor_ticks,%a0
	cmp.l 234(%a2),%a0
	jlt .L86
	tst.b 131(%a2)
	jeq .L244
	move.w 248(%a2),%d0
	cmp.w #122,%d0
	jle .L154
	move.b #1,124(%a2)
	move.l %a0,234(%a2)
	move.w #90,248(%a2)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 530(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 135(%a2)
	jne .L155
	tst.b 260(%a2)
	jne .L245
	move.l 252(%a2),%d0
	subq.l #8,%d0
	move.l %d0,252(%a2)
	jle .L246
.L157:
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L158
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L155:
	move.w 266(%a2),%d2
	lea ___floatsisf,%a5
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 212(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L160
	tst.b 130(%a2)
	jne .L160
.L161:
	tst.l %d0
	jle .L164
	tst.b 298(%a2)
	jeq .L163
.L164:
	add.w %d0,246(%a2)
.L163:
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 292(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,248(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
.L260:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L95:
	move.l 288(%a2),276(%a2)
	jra .L97
.L115:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr __Z10bloodSpraysss
	lea (12,%sp),%sp
	jra .L87
.L114:
	clr.b 109(%a2)
	jra .L87
.L231:
	tst.b 112(%a2)
	jne .L88
	tst.b 118(%a2)
	jne .L88
	tst.b 117(%a2)
	jne .L88
	tst.b 119(%a2)
	jne .L88
	tst.b 114(%a2)
	jne .L88
	tst.b 113(%a2)
	jne .L88
	tst.b 120(%a2)
	jne .L88
	tst.b 115(%a2)
	jne .L88
	tst.b 121(%a2)
	jne .L88
	tst.b 130(%a2)
	jne .L88
	tst.b 112(%a2)
	jne .L121
	jra .L241
.L234:
	tst.b 119(%a2)
	jne .L98
	tst.b 114(%a2)
	jne .L98
	tst.b 113(%a2)
	jne .L98
	tst.b 115(%a2)
	jne .L103
	tst.b 121(%a2)
	jne .L103
	tst.b 112(%a2)
	jne .L106
	tst.b 118(%a2)
	jne .L106
	tst.b 117(%a2)
	jne .L106
	tst.b %d0
	jeq .L107
.L106:
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 270(%a2),%d2
	move.l 262(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L109
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L247
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
.L239:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
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
	clr.b 110(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L107:
	tst.b 118(%a2)
	jne .L202
	tst.b 117(%a2)
	jne .L202
	tst.b 114(%a2)
	jne .L202
	tst.b 115(%a2)
	jeq .L87
.L202:
	clr.b %d1
	move.w 246(%a2),%a4
	move.w 266(%a2),%d0
	cmp.w #-1,%d0
	jne .L112
.L236:
	lea (40,%a4),%a4
	jra .L113
.L240:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a1
	move.l %a1,-(%sp)
	move.l 482(%a2),-(%sp)
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
	clr.b 111(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L144:
	tst.b 120(%a2)
	jne .L165
	tst.b 121(%a2)
	jeq .L166
.L165:
	tst.b 126(%a2)
	jeq .L166
	tst.b 124(%a2)
	jne .L215
	move.w raptor_ticks,%a0
	cmp.l 234(%a2),%a0
	jlt .L86
	move.w 266(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 204(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L168
	tst.b %d2
	jne .L168
.L169:
	tst.l %d0
	jle .L172
	tst.b 298(%a2)
	jeq .L171
.L172:
	add.w %d0,246(%a2)
.L171:
	move.b 122(%a2),%d3
	move.l 276(%a2),%d2
	tst.b %d3
	jne .L174
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,248(%a2)
	move.l 272(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,276(%a2)
.L174:
	move.l %d2,-(%sp)
	move.l 284(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L175
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L248
.L175:
	tst.b 123(%a2)
	jne .L179
	tst.b %d3
	jne .L180
	tst.b 121(%a2)
	jeq .L249
.L180:
	move.b #1,122(%a2)
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
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
	jeq .L178
	move.b #1,123(%a2)
	clr.b 122(%a2)
.L178:
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
.L262:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L237:
	lea (-40,%a4),%a4
	jra .L113
.L232:
	clr.b 260(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 252(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,252(%a2)
	jgt .L92
.L233:
	clr.l 252(%a2)
	move.b #1,147(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L93
	jra .L250
.L123:
	move.w 266(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 200(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L125
	tst.b 130(%a2)
	jeq .L126
.L125:
	tst.l %d0
	jlt .L251
.L127:
	cmp.w #1,%d2
	jne .L126
	tst.b 130(%a2)
	jeq .L128
.L126:
	tst.l %d0
	jle .L128
	tst.b 298(%a2)
	jeq .L207
.L128:
	add.w 246(%a2),%d0
	move.w %d0,246(%a2)
	jra .L124
.L166:
	tst.b 117(%a2)
	jeq .L182
	tst.b 126(%a2)
	jeq .L182
	tst.b 124(%a2)
	jne .L215
	move.l 234(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L86
	move.w 266(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 204(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L184
	tst.b %d2
	jne .L184
.L185:
	tst.l %d0
	jle .L188
	tst.b 298(%a2)
	jeq .L187
.L188:
	add.w %d0,246(%a2)
.L187:
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L252
.L189:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L253
.L190:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 490(%a2),-(%sp)
.L213:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	lea (36,%sp),%sp
.L256:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L182:
	tst.b 118(%a2)
	jeq .L191
	tst.b 126(%a2)
	jeq .L191
	tst.b 124(%a2)
	jne .L215
	move.l 234(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L86
	move.w 266(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 204(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L193
	tst.b %d2
	jne .L193
.L194:
	tst.l %d0
	jle .L197
	tst.b 298(%a2)
	jeq .L196
.L197:
	add.w %d0,246(%a2)
.L196:
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L254
.L198:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L255
.L199:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
.L263:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	lea (36,%sp),%sp
	jra .L256
.L191:
	tst.b 125(%a2)
	jeq .L86
	tst.b 126(%a2)
	jeq .L86
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
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
	clr.b 126(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L235:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L102
.L243:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a1
	move.l %a1,-(%sp)
	move.l 498(%a2),-(%sp)
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
	move.l 262(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 119(%a2)
	move.b #1,125(%a2)
	clr.w 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L251:
	tst.b 298(%a2)
	jne .L127
.L207:
	move.w 246(%a2),%d0
	jra .L124
.L215:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a1
	pea -1(%a1)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 234(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L86
	move.b #1,156(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 120(%a2)
	clr.b 121(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 118(%a2)
	clr.b 117(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	move.b #1,125(%a2)
	clr.l 300(%a2)
	clr.w 16(%a3)
	move.w #90,248(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L118:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.w %a4,%d2
	ext.l %d2
	move.w 248(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.l %d2,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 248(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 248(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%d0
	add.w #-40,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	move.w 266(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.w 266(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 266(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%d1
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
.L168:
	tst.l %d0
	jlt .L257
.L170:
	cmp.w #1,%d3
	jne .L169
	tst.b %d2
	jne .L169
	add.w %d0,246(%a2)
	jra .L171
.L257:
	tst.b 298(%a2)
	jne .L170
	jra .L171
.L184:
	tst.l %d0
	jlt .L258
.L186:
	cmp.w #1,%d3
	jne .L185
	tst.b %d2
	jne .L185
	add.w %d0,246(%a2)
	jra .L187
.L160:
	tst.l %d0
	jlt .L259
.L162:
	cmp.w #1,%d2
	jne .L161
	tst.b 130(%a2)
	jne .L161
	add.w %d0,246(%a2)
	jra .L163
.L259:
	tst.b 298(%a2)
	jne .L162
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 292(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,248(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	jra .L260
.L193:
	tst.l %d0
	jlt .L261
.L195:
	cmp.w #1,%d3
	jne .L194
	tst.b %d2
	jne .L194
	add.w %d0,246(%a2)
	jra .L196
.L253:
	move.b #1,124(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	clr.l 300(%a2)
	move.w #90,248(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 300(%a2),%a0
	addq.l #4,%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 490(%a2),-(%sp)
	jra .L213
.L245:
	clr.b 260(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 252(%a2),%d0
	subq.l #8,%d0
	move.l %d0,252(%a2)
	jgt .L157
	jra .L246
.L258:
	tst.b 298(%a2)
	jne .L186
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L189
	jra .L252
.L246:
	clr.l 252(%a2)
	move.b #1,147(%a2)
	moveq #0,%d0
	jra .L157
.L248:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	jra .L262
.L249:
	move.l 262(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L180
.L255:
	move.b #1,124(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	clr.l 300(%a2)
	move.w #90,248(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 300(%a2),%a0
	addq.l #4,%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
	jra .L263
.L252:
	move.l 262(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 300(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L190
	jra .L253
.L261:
	tst.b 298(%a2)
	jne .L195
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L198
.L254:
	move.l 262(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 300(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L199
	jra .L255
.L130:
	move.w 266(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 200(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L132
	tst.b 130(%a2)
	jne .L132
.L133:
	tst.l %d0
	jle .L135
	tst.b 298(%a2)
	jeq .L208
.L135:
	add.w 246(%a2),%d0
	move.w %d0,246(%a2)
	jra .L131
.L132:
	tst.l %d0
	jlt .L264
.L134:
	cmp.w #1,%d2
	jne .L133
	tst.b 130(%a2)
	jne .L133
	add.w 246(%a2),%d0
	move.w %d0,246(%a2)
	jra .L131
.L264:
	tst.b 298(%a2)
	jne .L134
.L208:
	move.w 246(%a2),%d0
	jra .L131
.L137:
	move.w 266(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 200(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L139
	tst.b 130(%a2)
	jne .L139
.L140:
	tst.l %d0
	jle .L142
	tst.b 298(%a2)
	jeq .L209
.L142:
	add.w 246(%a2),%d0
	move.w %d0,246(%a2)
.L267:
	move.l %a4,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
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
	jra .L265
.L139:
	tst.l %d0
	jlt .L266
.L141:
	cmp.w #1,%d2
	jne .L140
	tst.b 130(%a2)
	jne .L140
	add.w 246(%a2),%d0
	move.w %d0,246(%a2)
	jra .L267
.L266:
	tst.b 298(%a2)
	jne .L141
.L209:
	move.w 246(%a2),%d0
	move.l %a4,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
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
	jra .L265
.L103:
	tst.b 116(%a2)
	jeq .L105
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L102
.L146:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 124(%a2)
	jeq .L147
	jra .L215
.L238:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 266(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%d1
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
.L179:
	move.w 248(%a2),%d0
	cmp.w #90,%d0
	jle .L181
	move.b #1,124(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	move.w #90,248(%a2)
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	pea 90.w
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	jra .L262
.L154:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 530(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L155
.L105:
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L102
.L244:
	move.b #1,131(%a2)
	move.w 266(%a2),%d1
	move.w %d1,%d0
	ext.l %d0
	lsl.l #4,%d0
	cmp.w #1,%d1
	jeq .L149
	tst.b 130(%a2)
	jne .L149
.L150:
	tst.l %d0
	jle .L153
	tst.b 298(%a2)
	jeq .L152
.L153:
	add.w %d0,246(%a2)
.L152:
	move.w #48,248(%a2)
.L269:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L149:
	tst.l %d0
	jlt .L268
.L151:
	cmp.w #1,%d1
	jne .L150
	tst.b 130(%a2)
	jne .L150
	add.w %d0,246(%a2)
	jra .L152
.L268:
	tst.b 298(%a2)
	jne .L151
	move.w #48,248(%a2)
	jra .L269
.L181:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	jra .L262
.L158:
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
	jra .L155
.L247:
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
	move.l 78(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 174(%a0),%d0
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
	clr.b 128(%a0)
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
	clr.b 228(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 129(%a0)
	clr.b 130(%a0)
	clr.b 131(%a0)
	clr.b 132(%a0)
	clr.b 110(%a0)
	clr.b 111(%a0)
	clr.b 112(%a0)
	clr.b 113(%a0)
	clr.b 114(%a0)
	clr.b 115(%a0)
	clr.b 116(%a0)
	clr.b 118(%a0)
	clr.b 117(%a0)
	clr.b 120(%a0)
	clr.b 121(%a0)
	clr.b 122(%a0)
	clr.b 123(%a0)
	clr.b 124(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 127(%a0)
	clr.b 136(%a0)
	clr.b 137(%a0)
	clr.b 145(%a0)
	clr.b 148(%a0)
	clr.b 149(%a0)
	clr.b 157(%a0)
	clr.b 158(%a0)
	clr.b 168(%a0)
	clr.b 169(%a0)
	clr.b 260(%a0)
	clr.b 268(%a0)
	clr.b 269(%a0)
	move.b #1,298(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
	clr.b 140(%a0)
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
	move.b #1,135(%a2)
	clr.l 256(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
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
	jeq .L280
	unlk %fp
	rts
.L280:
	move.b #1,159(%a0)
	tst.b 90(%a1)
	jne .L276
	tst.b 86(%a1)
	jeq .L277
	move.b #1,120(%a1)
	moveq #5,%d0
	move.l %d0,256(%a1)
	clr.b 260(%a1)
	move.b #20,%d0
	add.l %d0,182(%a0)
	move.b #1,186(%a0)
.L281:
	unlk %fp
	rts
.L276:
	move.b #1,91(%a1)
	move.b #1,145(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a1)
	unlk %fp
	rts
.L277:
	move.b #1,115(%a1)
	move.b #1,109(%a1)
	moveq #5,%d0
	move.l %d0,256(%a1)
	clr.b 260(%a1)
	move.b #20,%d0
	add.l %d0,182(%a0)
	move.b #1,186(%a0)
	jra .L281
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 126(%a0),%d0
	jne .L284
	tst.b 90(%a0)
	jne .L284
.L285:
	tst.b 92(%a1)
	jne .L313
.L287:
	tst.b 93(%a1)
	jeq .L289
	tst.b 89(%a0)
	jne .L289
	move.b #1,111(%a0)
	moveq #2,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	addq.l #5,182(%a1)
	move.b #1,186(%a1)
.L288:
	tst.b %d0
	jne .L283
.L308:
	tst.b 90(%a0)
	jeq .L301
.L314:
	tst.b 89(%a0)
	jeq .L301
	move.b #1,91(%a0)
	move.b #1,145(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a0)
.L304:
	tst.b 129(%a1)
	jeq .L283
	move.w 246(%a1),152(%a0)
	move.w 248(%a1),154(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,132(%a0)
	move.b #1,149(%a0)
	clr.b 156(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a1)
.L283:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L284:
	tst.b 135(%a0)
	jne .L285
	tst.b %d0
	jne .L283
	tst.b 90(%a0)
	jeq .L308
	move.b #1,91(%a0)
	move.b #1,145(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a0)
	tst.b 90(%a0)
	jne .L314
.L301:
	tst.b 100(%a1)
	jeq .L303
	move.b #1,119(%a0)
	moveq #4,%d0
	move.l %d0,256(%a0)
	clr.b 260(%a0)
	moveq #10,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L304
.L313:
	tst.b 89(%a0)
	jne .L287
	move.b #1,110(%a0)
	moveq #2,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	addq.l #5,182(%a1)
	move.b #1,186(%a1)
	jra .L288
.L289:
	tst.b 94(%a1)
	jeq .L290
	tst.b 89(%a0)
	jne .L290
	move.b #1,110(%a0)
	moveq #5,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
.L315:
	tst.b %d0
	jeq .L308
	jra .L283
.L290:
	tst.b 95(%a1)
	jeq .L291
	tst.b 89(%a0)
	jne .L291
	move.b #1,112(%a0)
	moveq #5,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L315
.L291:
	tst.b 101(%a1)
	jeq .L292
	tst.b 89(%a0)
	jeq .L316
.L292:
	tst.b 102(%a1)
	jeq .L293
	tst.b 89(%a0)
	jeq .L317
.L293:
	tst.b 96(%a1)
	jeq .L295
	move.b #1,114(%a0)
	clr.b 156(%a1)
	move.b #1,158(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a1)
	moveq #5,%d1
	move.l %d1,256(%a0)
	move.b #1,260(%a0)
	move.b #10,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	tst.b %d0
	jeq .L308
	jra .L283
.L303:
	tst.b 104(%a1)
	jeq .L304
	move.b #1,113(%a0)
	clr.b 156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a1)
	moveq #2,%d0
	move.l %d0,256(%a0)
	clr.b 260(%a0)
	addq.l #5,182(%a1)
	move.b #1,186(%a1)
	jra .L304
.L295:
	tst.b 97(%a1)
	jne .L318
	tst.b 99(%a1)
	jeq .L297
	move.b #1,117(%a0)
	clr.b 156(%a1)
	move.b #1,157(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a1)
	moveq #8,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L315
.L316:
	move.b #1,112(%a0)
	moveq #6,%d1
	move.l %d1,256(%a0)
	move.b #1,260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
.L320:
	tst.b %d0
	jeq .L308
	jra .L283
.L317:
	move.b #1,115(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L319
	moveq #4,%d1
.L321:
	move.l %d1,256(%a0)
	move.b #1,260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L320
.L318:
	move.b #1,114(%a0)
	clr.b 156(%a1)
	move.b #1,158(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a1)
	moveq #4,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L315
.L319:
	move.b #1,116(%a0)
	moveq #4,%d1
	jra .L321
.L297:
	tst.b 98(%a1)
	jeq .L298
	move.b #1,120(%a0)
	clr.b 156(%a1)
	move.b #1,158(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a1)
	moveq #6,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L315
.L298:
	tst.b 103(%a1)
	jeq .L288
	move.b #1,121(%a0)
	clr.b 156(%a1)
	move.b #1,158(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a1)
	moveq #4,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	move.b #50,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	tst.b %d0
	jeq .L308
	jra .L283
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14396,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 127(%a2)
	jeq .L324
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L345
.L324:
	tst.b 127(%a3)
	jeq .L325
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d4
	cmp.l 112(%a0,%d0.l),%d4
	jeq .L346
.L325:
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
	jlt .L323
	move.l colliders,%d1
	moveq #0,%d3
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	move.l %d1,%a0
	add.l %d3,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L328
.L353:
	cmp.w #0,%a0
	jlt .L323
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
	jeq .L347
	moveq #56,%d0
	cmp.l %d2,%d0
	jeq .L348
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L333
	moveq #56,%d4
	cmp.l %a4,%d4
	jeq .L349
.L333:
	tst.b 138(%a2)
	jeq .L334
	cmp.l 78(%a2),%d2
	jeq .L350
.L334:
	tst.b 138(%a3)
	jeq .L338
	cmp.l 78(%a3),%d2
	jeq .L351
.L338:
	moveq #59,%d0
	cmp.l %d2,%d0
	jeq .L352
.L343:
	addq.l #8,%d3
.L354:
	move.l %d1,%a0
	add.l %d3,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L353
.L328:
	cmp.w #0,%a0
	jge .L343
.L323:
	movem.l -28(%fp),#15388
	unlk %fp
	rts
.L352:
	moveq #56,%d4
	cmp.l %a4,%d4
	jne .L343
	tst.b 84(%a3)
	jeq .L343
	move.b #1,127(%a3)
	move.b #1,137(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,230(%a2)
	addq.l #8,%d3
	jra .L354
.L350:
	moveq #59,%d0
	cmp.l %a4,%d0
	jne .L334
	moveq #1,%d4
	cmp.l (%a2),%d4
	jne .L334
	move.b #1,159(%a2)
	tst.b 90(%a3)
	jne .L335
	tst.b 86(%a3)
	jeq .L336
	move.b #1,120(%a3)
	moveq #5,%d0
	move.l %d0,256(%a3)
	clr.b 260(%a3)
	moveq #20,%d4
	add.l %d4,182(%a2)
	move.b #1,186(%a2)
	jra .L334
.L351:
	moveq #56,%d0
	cmp.l %a4,%d0
	jne .L338
	moveq #1,%d4
	cmp.l (%a3),%d4
	jne .L338
	move.b #1,159(%a3)
	tst.b 90(%a2)
	jne .L339
	tst.b 86(%a2)
	jeq .L340
	move.b #1,120(%a2)
	moveq #5,%d0
	move.l %d0,256(%a2)
	clr.b 260(%a2)
	moveq #20,%d4
	add.l %d4,182(%a3)
	move.b #1,186(%a3)
.L355:
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L343
	jra .L352
.L348:
	moveq #59,%d4
	cmp.l %a4,%d4
	jne .L333
	tst.b 84(%a2)
	jeq .L333
	move.w 246(%a2),%d0
	cmp.w #10,%d0
	jle .L333
	cmp.w #328,%d0
	jgt .L333
	move.w 246(%a3),%d0
	cmp.w #10,%d0
	jle .L333
	cmp.w #328,%d0
	jgt .L333
	move.b #1,127(%a2)
	move.b #1,137(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,230(%a3)
	jra .L333
.L347:
	moveq #59,%d4
	cmp.l %a4,%d4
	jne .L333
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l colliders,%d1
	jra .L333
.L349:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l colliders,%d1
	jra .L333
.L345:
	clr.b 127(%a2)
	jra .L324
.L346:
	clr.b 127(%a3)
	jra .L325
.L335:
	move.b #1,91(%a3)
	move.b #1,145(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a3)
	jra .L334
.L339:
	move.b #1,91(%a2)
	move.b #1,145(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L343
	jra .L352
.L336:
	move.b #1,115(%a3)
	move.b #1,109(%a3)
	moveq #5,%d0
	move.l %d0,256(%a3)
	clr.b 260(%a3)
	moveq #20,%d4
	add.l %d4,182(%a2)
	move.b #1,186(%a2)
	jra .L334
.L340:
	move.b #1,115(%a2)
	move.b #1,109(%a2)
	moveq #5,%d0
	move.l %d0,256(%a2)
	clr.b 260(%a2)
	moveq #20,%d4
	add.l %d4,182(%a3)
	move.b #1,186(%a3)
	jra .L355
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 266(%a1),%d0
	cmp.w #1,%d0
	jeq .L371
	cmp.w #-1,%d0
	jeq .L372
.L360:
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L373
.L361:
	cmp.w #-1,%d0
	jne .L357
	move.w 246(%a0),%a2
	add.l _turnOffset,%a2
	move.w 246(%a1),%a1
	cmp.l %a2,%a1
	jle .L357
.L368:
	tst.b 128(%a0)
	jne .L357
	clr.b 269(%a0)
	move.b #1,128(%a0)
	move.b #1,268(%a0)
.L357:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L372:
	move.w 246(%a1),%a3
	add.l _turnOffset,%a3
	move.w 246(%a0),%a2
	cmp.l %a3,%a2
	jle .L360
	tst.b 128(%a1)
	jne .L360
.L374:
	clr.b 269(%a1)
	move.b #1,128(%a1)
	move.b #1,268(%a1)
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jne .L361
.L373:
	move.w 246(%a0),%a2
	move.w 246(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L368
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L371:
	move.w 246(%a1),%a3
	move.w 246(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L360
	tst.b 128(%a1)
	jne .L360
	jra .L374
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L383
	cmp.w #-1,%d0
	jeq .L384
.L378:
	clr.b 133(%a0)
	clr.b 133(%a1)
.L376:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L384:
	move.w 246(%a1),%a3
	move.w 246(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L378
.L380:
	move.b #1,133(%a0)
	move.b #1,133(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L383:
	move.w 246(%a1),%a3
	move.w 246(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L380
	clr.b 133(%a0)
	clr.b 133(%a1)
	jra .L376
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 252(%a1),16024(%a0)
	move.l 12(%fp),%a1
	move.l 252(%a1),%d0
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
	move.l 12(%fp),256(%a1)
	move.b 19(%fp),260(%a1)
	move.l 24(%fp),%d0
	add.l %d0,182(%a0)
	move.b #1,186(%a0)
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
	tst.b 135(%a2)
	jne .L388
	tst.b 260(%a2)
	jne .L395
	move.l 252(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,252(%a2)
	jle .L396
.L391:
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L392
.L397:
	move.l %d0,16024(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L392:
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
.L388:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L395:
	clr.b 260(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 252(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,252(%a2)
	jgt .L391
.L396:
	clr.l 252(%a2)
	move.b #1,147(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L392
	jra .L397
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,266(%a0)
	jeq .L404
	tst.b 298(%a0)
	jeq .L399
.L401:
	addq.w #2,246(%a0)
.L399:
	unlk %fp
	rts
.L404:
	tst.b 130(%a0)
	jeq .L401
	tst.b 298(%a0)
	jne .L401
	jra .L399
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,266(%a0)
	jeq .L407
	tst.b 130(%a0)
	jeq .L408
.L407:
	tst.b 298(%a0)
	jeq .L406
.L408:
	subq.w #2,246(%a0)
.L406:
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
	jeq .L413
	move.l 174(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 246(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 248(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L413:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L421
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L421:
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
	move.w #90,248(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 246(%a2),%d0
	cmp.w #11,%d0
	jle .L437
.L425:
	cmp.w #280,%d0
	jgt .L429
.L434:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L437:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L433
	move.w 246(%a2),%d0
	cmp.w #11,%d0
	jgt .L425
	cmp.w #280,246(%a3)
	jgt .L433
	jsr (%a4)
	tst.b %d0
	jne .L433
	move.w 246(%a2),%d0
	cmp.w #280,%d0
	jle .L434
.L429:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L438
.L433:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L438:
	cmp.w #328,246(%a2)
	jle .L434
	cmp.w #10,246(%a3)
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
	move.w 266(%a0),%d1
	cmp.w #1,%d1
	jeq .L441
	tst.b 130(%a0)
	jne .L441
.L442:
	tst.l %d0
	jle .L445
	tst.b 298(%a0)
	jeq .L440
.L445:
	add.w %d0,246(%a0)
.L440:
	unlk %fp
	rts
.L441:
	tst.l %d0
	jlt .L448
	cmp.w #1,%d1
	jne .L442
.L449:
	tst.b 130(%a0)
	jne .L442
	add.w %d0,246(%a0)
	jra .L440
.L448:
	tst.b 298(%a0)
	jeq .L440
	cmp.w #1,%d1
	jne .L442
	jra .L449
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #15408,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d3
	tst.b 126(%a2)
	jne .L452
	tst.b 84(%a2)
	jeq .L683
.L453:
	clr.b 82(%a2)
.L455:
	move.l 188(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,178(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L456
	tst.b 107(%a2)
	jeq .L456
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L456:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.l 308(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L684
	tst.b 138(%a2)
	jne .L685
	move.l 178(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L653
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L653
.L459:
	tst.b 99(%a2)
	jne .L461
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L469
	tst.l %d1
	jeq .L470
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L471
	cmp.w #1,266(%a2)
	jeq .L469
.L471:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L470
	cmp.w #-1,266(%a2)
	jeq .L469
.L470:
	tst.b 93(%a2)
	jeq .L686
.L473:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L480
	clr.b 93(%a2)
.L480:
	move.l 346(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L468:
	move.l 178(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L648
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L648
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L648
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L648
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L648
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L648
	move.b #1,107(%a2)
.L648:
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L649
	tst.b 105(%a2)
	jeq .L649
	tst.b 108(%a2)
	jeq .L687
.L649:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L650
	tst.b 105(%a2)
	jeq .L650
	tst.b 108(%a2)
	jeq .L688
.L650:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L451
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L652
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L652
	and.l JAGPAD_RIGHT,%d0
	jne .L652
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L652:
	move.b #1,106(%a2)
.L451:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L452:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L683:
	tst.b 89(%a2)
	jne .L453
	tst.b 86(%a2)
	jne .L453
	tst.b 88(%a2)
	jne .L453
	tst.b 87(%a2)
	jne .L453
	tst.b 85(%a2)
	jeq .L455
	clr.b 82(%a2)
	jra .L455
.L685:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 326(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L653:
	tst.b 89(%a2)
	jeq .L459
	tst.b 107(%a2)
	jeq .L459
	tst.b 156(%a2)
	jeq .L459
	tst.b 99(%a2)
	jne .L461
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L461:
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 157(%a2)
	jeq .L689
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 160(%a2),%d0
	cmp.l %a0,%d0
	jgt .L690
.L465:
	clr.b 157(%a2)
.L466:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L468
	clr.b 99(%a2)
	move.b #1,156(%a2)
	jra .L468
.L686:
	tst.l %d4
	jeq .L691
.L481:
	tst.b 107(%a2)
	jeq .L482
	tst.b 156(%a2)
	jeq .L482
	tst.b 86(%a2)
	jne .L482
	tst.b 127(%a2)
	jeq .L482
	tst.b 102(%a2)
	jne .L485
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L487:
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L684:
	move.b #1,138(%a2)
	clr.b 141(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L469:
	tst.b 107(%a2)
	jeq .L470
	tst.b 156(%a2)
	jeq .L470
	tst.b 86(%a2)
	jne .L470
	tst.b 127(%a2)
	jne .L470
	tst.b 93(%a2)
	jne .L473
	clr.b 107(%a2)
	move.b #1,93(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d2
	move.b 270(%a2),%d2
	move.l 262(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L477
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L478
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L692
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L695:
	move.l 346(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L689:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 157(%a2)
	jeq .L466
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 160(%a2),%d0
	cmp.l %a0,%d0
	jle .L465
	jra .L690
.L691:
	tst.l %d1
	jeq .L482
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L483
	cmp.w #1,266(%a2)
	jeq .L481
.L483:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L482
	cmp.w #-1,266(%a2)
	jeq .L481
.L482:
	tst.b 102(%a2)
	jne .L485
	tst.l %d1
	jeq .L488
	tst.b 107(%a2)
	jeq .L488
	tst.b 156(%a2)
	jeq .L488
	tst.b 86(%a2)
	jne .L488
	tst.b 133(%a2)
	jeq .L488
	tst.b 129(%a2)
	jne .L490
	clr.b 107(%a2)
	move.b #1,129(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L492
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L493
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L693
.L492:
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L495:
	move.l 390(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L690:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 474(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 157(%a2)
	jne .L468
	jra .L466
.L688:
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 178(%a2),%d0
	addq.l #8,%sp
	jra .L650
.L687:
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 178(%a2),%d0
	addq.l #8,%sp
	jra .L649
.L485:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L487
	clr.b 102(%a2)
	move.b #1,156(%a2)
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L693:
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 390(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L488:
	tst.b 129(%a2)
	jne .L490
	tst.l %d1
	jeq .L496
	tst.b 107(%a2)
	jeq .L496
	tst.b 156(%a2)
	jeq .L496
	tst.b 86(%a2)
	jne .L496
	tst.b 133(%a2)
	jne .L496
	tst.b 92(%a2)
	jne .L498
	clr.b 107(%a2)
	move.b #1,92(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L500:
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L490:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L495
	clr.b 129(%a2)
	move.b #1,156(%a2)
	move.l 390(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L496:
	tst.b 92(%a2)
	jne .L498
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L501
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L501
	cmp.w #1,266(%a2)
	jeq .L502
.L501:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L503
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L503
	cmp.w #-1,266(%a2)
	jeq .L502
.L503:
	tst.b 100(%a2)
	jeq .L694
.L505:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L507
	clr.b 100(%a2)
.L507:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L498:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L500
	clr.b 92(%a2)
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L694:
	tst.l %d1
	jeq .L508
	cmp.w #1,266(%a2)
	jeq .L509
.L508:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L510
	cmp.w #-1,266(%a2)
	jeq .L509
.L510:
	tst.b 101(%a2)
	jne .L513
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L516
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L517
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L518
	cmp.w #1,266(%a2)
	jeq .L516
.L518:
	tst.l %d1
	jeq .L517
	cmp.w #-1,266(%a2)
	jeq .L516
.L517:
	tst.b 95(%a2)
	jne .L520
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L523
	tst.b 107(%a2)
	jeq .L523
	tst.b 156(%a2)
	jeq .L523
	tst.b 86(%a2)
	jne .L523
	tst.b 89(%a2)
	jne .L523
	tst.b 133(%a2)
	jeq .L523
	tst.b 103(%a2)
	jne .L525
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L527:
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L513:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L515
	clr.b 101(%a2)
.L515:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L502:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L503
	tst.b 107(%a2)
	jeq .L503
	tst.b 156(%a2)
	jeq .L503
	tst.b 86(%a2)
	jne .L503
	tst.b 100(%a2)
	jne .L505
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,100(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L509:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L511
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L510
.L511:
	tst.b 107(%a2)
	jeq .L510
	tst.b 156(%a2)
	jeq .L510
	tst.b 86(%a2)
	jne .L510
	tst.b 101(%a2)
	jne .L513
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,101(%a2)
	clr.w 16(%a3)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L516:
	tst.b 107(%a2)
	jeq .L517
	tst.b 156(%a2)
	jeq .L517
	tst.b 86(%a2)
	jne .L517
	tst.b 89(%a2)
	jne .L517
	tst.b 127(%a2)
	jne .L517
	tst.b 95(%a2)
	jne .L520
	clr.b 107(%a2)
	move.b #1,95(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L522:
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L520:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L522
	clr.b 95(%a2)
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L478:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L695
.L477:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L695
.L692:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L695
.L493:
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 390(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L523:
	tst.b 103(%a2)
	jne .L525
	and.l %d0,%d5
	jeq .L528
	tst.b 107(%a2)
	jeq .L528
	tst.b 156(%a2)
	jeq .L528
	tst.b 86(%a2)
	jne .L528
	tst.b 89(%a2)
	jne .L528
	tst.b 127(%a2)
	jne .L528
	tst.b 94(%a2)
	jne .L530
	clr.b 107(%a2)
	move.b #1,94(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L532:
	move.l 350(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L525:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L527
	clr.b 103(%a2)
	move.b #1,156(%a2)
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L528:
	tst.b 94(%a2)
	jne .L530
	tst.l %d4
	jeq .L533
	tst.b 107(%a2)
	jeq .L533
	tst.b 156(%a2)
	jeq .L533
	tst.b 86(%a2)
	jne .L533
	tst.b 89(%a2)
	jeq .L533
	tst.b 104(%a2)
	jne .L535
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L537:
	move.l 386(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L530:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L532
	clr.b 94(%a2)
	move.l 350(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L533:
	tst.b 104(%a2)
	jeq .L696
.L535:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L537
	clr.b 104(%a2)
	move.b #1,156(%a2)
	move.b #1,89(%a2)
	move.w #1,16(%a3)
	move.l 386(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L696:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L538
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L539
.L538:
	tst.b 86(%a2)
	jne .L539
	tst.b 156(%a2)
	jeq .L539
	tst.b 90(%a2)
	jne .L540
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L540:
	and.l JAGPAD_DOWN,%d0
	jeq .L541
	tst.b 89(%a2)
	jne .L542
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L542:
	tst.b 91(%a2)
	jne .L543
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L539:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L546
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L547
	cmp.w #1,266(%a2)
	jeq .L548
.L547:
	tst.l %d1
	jeq .L546
	cmp.w #-1,266(%a2)
	jeq .L548
.L546:
	tst.b 87(%a2)
	jeq .L697
.L550:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L552
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L553
.L552:
	tst.b 87(%a2)
	jeq .L553
	tst.b 168(%a2)
	jne .L553
	tst.b 228(%a2)
	jeq .L554
.L553:
	tst.b 96(%a2)
	jeq .L555
	tst.b 168(%a2)
	jne .L555
	tst.b 87(%a2)
	jeq .L555
.L554:
	tst.b 98(%a2)
	jne .L555
	tst.b 96(%a2)
	jne .L556
	clr.b 107(%a2)
	move.b #1,228(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L556:
	tst.b 158(%a2)
	jeq .L698
.L557:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L699
	clr.b 158(%a2)
	clr.b 96(%a2)
.L558:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
.L555:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L560
	and.l JAGPAD_9,%d0
	jeq .L561
.L560:
	tst.b 87(%a2)
	jeq .L561
	tst.b 168(%a2)
	jne .L561
	tst.b 228(%a2)
	jeq .L562
.L561:
	tst.b 98(%a2)
	jeq .L563
	tst.b 168(%a2)
	jne .L563
	tst.b 87(%a2)
	jeq .L563
.L562:
	tst.b 96(%a2)
	jne .L563
	tst.b 98(%a2)
	jne .L564
	clr.b 107(%a2)
	move.b #1,228(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L564:
	tst.b 158(%a2)
	jeq .L700
.L565:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L701
	clr.b 158(%a2)
	clr.b 98(%a2)
.L566:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L563:
	tst.w 16(%a3)
	jne .L568
	tst.b 96(%a2)
	jne .L568
	tst.b 98(%a2)
	jeq .L702
.L568:
	tst.b 87(%a2)
	jeq .L468
	tst.b 168(%a2)
	jne .L569
	move.l 170(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L569
	tst.b 169(%a2)
	jne .L570
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L570
	tst.b 96(%a2)
	jne .L570
	tst.b 98(%a2)
	jne .L570
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,169(%a2)
	addq.l #8,%sp
.L570:
	tst.b 158(%a2)
	jeq .L703
.L571:
	tst.b 96(%a2)
	jne .L573
	tst.b 98(%a2)
	jne .L573
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 422(%a2),-(%sp)
	move.l 300(%a2),-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L573:
	move.w raptor_ticks,%a0
	move.l %a0,170(%a2)
.L569:
	clr.l -(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L574
	cmp.w #89,248(%a2)
	jgt .L676
.L574:
	tst.b 168(%a2)
	jeq .L468
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L468
	move.b #1,156(%a2)
	clr.b 87(%a2)
.L678:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 169(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L468
.L541:
	tst.b 89(%a2)
	jeq .L544
	clr.b 89(%a2)
.L544:
	tst.b 91(%a2)
	jne .L545
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L676:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,168(%a2)
	clr.l 276(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
	jra .L468
.L543:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 34(%a2),%a0
.L680:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L468
	clr.b 91(%a2)
	jra .L468
.L545:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 30(%a2),%a0
	jra .L680
.L703:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 216(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	addq.l #8,%sp
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L572
	clr.l 300(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,168(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
.L572:
	move.l 272(%a2),-(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,276(%a2)
	jra .L571
.L702:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L677:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L697:
	tst.l %d4
	jeq .L576
	tst.l %d1
	jeq .L577
	cmp.w #1,266(%a2)
	jeq .L578
.L577:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L576
	cmp.w #-1,266(%a2)
	jeq .L578
.L576:
	tst.b 88(%a2)
	jeq .L704
.L580:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L582
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L583
.L582:
	tst.b 88(%a2)
	jeq .L583
	tst.b 168(%a2)
	jne .L583
	tst.b 228(%a2)
	jeq .L584
.L583:
	tst.b 96(%a2)
	jeq .L585
	tst.b 168(%a2)
	jne .L585
	tst.b 88(%a2)
	jeq .L585
.L584:
	tst.b 98(%a2)
	jne .L585
	tst.b 96(%a2)
	jne .L586
	clr.b 107(%a2)
	move.b #1,228(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L586:
	tst.b 158(%a2)
	jeq .L705
.L587:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L706
	clr.b 158(%a2)
	clr.b 98(%a2)
.L588:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
.L585:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L590
	and.l JAGPAD_9,%d0
	jeq .L591
.L590:
	tst.b 88(%a2)
	jeq .L591
	tst.b 168(%a2)
	jne .L591
	tst.b 228(%a2)
	jeq .L592
.L591:
	tst.b 98(%a2)
	jeq .L593
	tst.b 168(%a2)
	jne .L593
	tst.b 88(%a2)
	jeq .L593
.L592:
	tst.b 96(%a2)
	jne .L593
	tst.b 98(%a2)
	jne .L594
	clr.b 107(%a2)
	move.b #1,228(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L594:
	tst.b 158(%a2)
	jeq .L707
.L595:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L708
	clr.b 158(%a2)
	clr.b 98(%a2)
.L596:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L593:
	tst.w 16(%a3)
	jne .L598
	tst.b 96(%a2)
	jne .L598
	tst.b 98(%a2)
	jeq .L709
.L598:
	tst.b 88(%a2)
	jeq .L468
	tst.b 168(%a2)
	jne .L599
	move.l 170(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L599
	tst.b 169(%a2)
	jne .L600
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L600
	tst.b 96(%a2)
	jne .L600
	tst.b 98(%a2)
	jne .L600
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,169(%a2)
	addq.l #8,%sp
.L600:
	tst.b 158(%a2)
	jne .L601
	tst.b 299(%a2)
	jne .L602
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 216(%a2),%d1
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
.L602:
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L603
	clr.l 300(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,168(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
.L603:
	move.l 272(%a2),-(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,276(%a2)
.L601:
	tst.b 96(%a2)
	jne .L604
	tst.b 98(%a2)
	jne .L604
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 422(%a2),-(%sp)
	moveq #20,%d0
	sub.l 300(%a2),%d0
	move.l %d0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L604:
	move.w raptor_ticks,%a0
	move.l %a0,170(%a2)
.L599:
	clr.l -(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L605
	cmp.w #89,248(%a2)
	jgt .L676
.L605:
	tst.b 168(%a2)
	jeq .L468
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L468
	move.b #1,156(%a2)
	clr.b 88(%a2)
	jra .L678
.L709:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L677
.L708:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L596
.L707:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 158(%a2)
	jeq .L596
	jra .L595
.L706:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L588
.L705:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 158(%a2)
	jeq .L588
	jra .L587
.L704:
	tst.l %d1
	jeq .L607
	tst.b 156(%a2)
	jeq .L607
	tst.b 86(%a2)
	jne .L607
	tst.b 84(%a2)
	jne .L608
	clr.w 16(%a3)
.L608:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	and.l #255,%d3
	move.l %d3,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 410(%a2),-(%sp)
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
	tst.w 246(%a2)
	jle .L468
	tst.b 127(%a2)
	jne .L609
	move.l 196(%a2),%d0
	cmp.w #-1,266(%a2)
	jne .L610
	move.l 192(%a2),%d0
.L610:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L675:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L468
.L609:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L468
	move.l 224(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L675
.L607:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L611
	tst.b 156(%a2)
	jeq .L611
	tst.b 86(%a2)
	jne .L611
	tst.b 84(%a2)
	jne .L612
	clr.w 16(%a3)
.L612:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	move.b %d3,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 410(%a2),-(%sp)
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
	cmp.w #280,246(%a2)
	jgt .L468
	tst.b 127(%a2)
	jne .L613
	move.l 192(%a2),%d0
	cmp.w #-1,266(%a2)
	jne .L614
	move.l 196(%a2),%d0
.L614:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L675
.L613:
	move.l 224(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L675
.L611:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L615
	tst.b 156(%a2)
	jeq .L615
	tst.b 86(%a2)
	jne .L615
	tst.b 89(%a2)
	jne .L616
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L616:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L615:
	tst.l %d4
	jeq .L617
	tst.b 105(%a2)
	jeq .L617
	tst.b 156(%a2)
	jne .L618
.L617:
	tst.b 86(%a2)
	jeq .L710
.L619:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L621
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L622
.L621:
	tst.b 86(%a2)
	jeq .L622
	tst.b 168(%a2)
	jne .L622
	tst.b 228(%a2)
	jeq .L623
.L622:
	tst.b 96(%a2)
	jeq .L624
	tst.b 168(%a2)
	jne .L624
	tst.b 86(%a2)
	jeq .L624
.L623:
	tst.b 97(%a2)
	jne .L624
	tst.b 96(%a2)
	jne .L625
	clr.b 107(%a2)
	move.b #1,228(%a2)
	move.b #1,85(%a2)
	move.b #1,96(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L625:
	tst.b 158(%a2)
	jeq .L711
.L626:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L712
	clr.b 158(%a2)
	clr.b 96(%a2)
.L627:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
.L624:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L629
	and.l JAGPAD_9,%d0
	jeq .L630
.L629:
	tst.b 86(%a2)
	jeq .L630
	tst.b 168(%a2)
	jne .L630
	tst.b 228(%a2)
	jeq .L631
.L630:
	tst.b 97(%a2)
	jeq .L632
	tst.b 168(%a2)
	jne .L632
	tst.b 86(%a2)
	jeq .L632
.L631:
	tst.b 96(%a2)
	jne .L632
	tst.b 97(%a2)
	jne .L633
	clr.b 107(%a2)
	move.b #1,228(%a2)
	move.b #1,97(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L633:
	tst.b 158(%a2)
	jeq .L713
.L634:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L714
	clr.b 158(%a2)
	clr.b 97(%a2)
.L635:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L632:
	tst.w 16(%a3)
	jne .L637
	tst.b 96(%a2)
	jne .L637
	tst.b 97(%a2)
	jeq .L643
.L637:
	tst.b 86(%a2)
	jeq .L468
	tst.b 168(%a2)
	jne .L638
	move.l 234(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L639
	tst.b 158(%a2)
	jne .L639
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L640
	clr.l 300(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,168(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
.L640:
	move.l 272(%a2),-(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,276(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
.L639:
	tst.b 96(%a2)
	jne .L638
	tst.b 97(%a2)
	jne .L638
	move.w #1,16(%a3)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 418(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L638:
	clr.l -(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L641
	cmp.w #89,248(%a2)
	jgt .L715
.L641:
	tst.b 168(%a2)
	jeq .L468
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L643
	move.b #1,156(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L643:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L715:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,168(%a2)
	clr.l 276(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
	jra .L468
.L701:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L566
.L700:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 158(%a2)
	jeq .L566
	jra .L565
.L699:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L558
.L698:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 158(%a2)
	jeq .L558
	jra .L557
.L548:
	tst.b 106(%a2)
	jeq .L546
	tst.b 156(%a2)
	jeq .L546
	tst.b 87(%a2)
	jne .L550
	clr.b 156(%a2)
	clr.b 228(%a2)
	clr.b 106(%a2)
	move.b #1,87(%a2)
	clr.w 16(%a3)
	move.l 280(%a2),276(%a2)
	clr.b 168(%a2)
	clr.l 300(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,170(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
	jra .L550
.L618:
	tst.b 86(%a2)
	jne .L619
	clr.b 105(%a2)
	clr.b 228(%a2)
	move.b #1,86(%a2)
	clr.w 16(%a3)
	clr.l 300(%a2)
	move.l 280(%a2),276(%a2)
	clr.b 168(%a2)
	clr.b 156(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
	jra .L619
.L578:
	tst.b 106(%a2)
	jeq .L576
	tst.b 156(%a2)
	jeq .L576
	tst.b 88(%a2)
	jne .L580
	clr.b 156(%a2)
	clr.b 228(%a2)
	clr.b 106(%a2)
	move.b #1,88(%a2)
	clr.w 16(%a3)
	clr.l 300(%a2)
	move.l 280(%a2),276(%a2)
	clr.b 168(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,170(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
	jra .L580
.L711:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 158(%a2)
	jeq .L627
	jra .L626
.L714:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L635
.L713:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 158(%a2)
	jeq .L635
	jra .L634
.L712:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L627
.L710:
	tst.b 89(%a2)
	jne .L716
	tst.b 90(%a2)
	jne .L717
	tst.b 84(%a2)
	jeq .L646
	clr.b 127(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L646:
	tst.b 82(%a2)
	jne .L647
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L647:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 398(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L468
.L717:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L468
	clr.b 90(%a2)
	jra .L468
.L716:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L468
	clr.b 89(%a2)
	jra .L468
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
	jeq .L719
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L725
	jlt .L729
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L723
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L724
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L761
.L721:
	sub.w 248(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L734
	jge .L762
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L736
	cmp.l #128,%d0
	jeq .L737
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L735
.L730:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L743
	jlt .L747
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L741
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L742
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L740
	moveq #84,%d1
	not.b %d1
.L739:
	cmp.l %a1,%d1
	jge .L719
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L750
	jlt .L756
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L750
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L750
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L750
	move.w #171,%d1
.L750:
	move.w %d1,12(%a0)
.L719:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L729:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L727
	cmp.l #128,%d0
	jeq .L728
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L721
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 248(%a2),%d1
.L735:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L744:
	moveq #78,%d1
	not.b %d1
	jra .L739
.L725:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 248(%a2),%d1
.L734:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L743:
	moveq #75,%d1
	not.b %d1
	jra .L739
.L723:
	move.w %a1,%d1
	sub.w 248(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L732:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L741:
	moveq #69,%d1
	not.b %d1
	jra .L739
.L727:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 248(%a2),%d1
.L736:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L745:
	moveq #81,%d1
	not.b %d1
	jra .L739
.L761:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 248(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L740:
	moveq #66,%d1
	not.b %d1
	jra .L739
.L756:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L750
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L750
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L750
	move.w #171,%d1
	jra .L750
.L724:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 248(%a2),%d1
.L733:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L742:
	moveq #72,%d1
	not.b %d1
	jra .L739
.L728:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 248(%a2),%d1
	add.w %a1,%d1
.L737:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L746:
	moveq #87,%d1
	not.b %d1
	jra .L739
.L762:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L732
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L733
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L730
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L740
.L747:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L745
	cmp.l #128,%d0
	jeq .L746
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L744
	moveq #84,%d1
	not.b %d1
	jra .L739
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
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
	tst.b 150(%a2)
	jeq .L766
	clr.b 150(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	move.l %a0,230(%a2)
	move.l %a0,242(%a2)
	move.l %a0,170(%a2)
	move.l %a0,12(%a3)
.L766:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L767
	move.b 134(%a2),%d1
	jeq .L765
.L771:
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 147(%a2)
	jeq .L773
.L814:
	tst.b 118(%a2)
	jne .L773
	tst.b 117(%a2)
	jne .L773
	clr.b 147(%a2)
	move.w #90,248(%a2)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.w 16(%a3)
	move.w 296(%a2),%d0
	jle .L774
	tst.b 135(%a2)
	jeq .L809
.L774:
	move.b #1,136(%a2)
	clr.b 135(%a2)
	addq.w #1,%d0
	move.w %d0,296(%a2)
.L765:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L773:
	tst.b 148(%a2)
	jeq .L775
	clr.b 148(%a2)
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
	move.w #90,248(%a2)
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L776
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L765
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,12(%fp)
	move.l 262(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L775:
	tst.b 145(%a2)
	jeq .L778
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L810
.L778:
	tst.b 149(%a2)
	jne .L811
	tst.b 128(%a2)
	jeq .L779
	tst.b 86(%a2)
	jne .L779
	tst.b 88(%a2)
	jne .L779
	tst.b 87(%a2)
	jne .L779
	tst.b 126(%a2)
	jne .L779
	tst.b 85(%a2)
	jne .L779
	tst.b 268(%a2)
	jeq .L785
	clr.b 268(%a2)
	clr.w 16(%a3)
.L785:
	tst.b 269(%a2)
	jeq .L812
	tst.w 16(%a3)
	jle .L813
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L806:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 414(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L829:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L767:
	move.l sprite,%a1
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a4
	move.w 266(%a2),%d1
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
	jeq .L769
	tst.b 134(%a2)
	jeq .L803
	tst.b 136(%a2)
	jne .L805
	tst.b 83(%a2)
	jne .L805
	moveq #1,%d3
	move.l %d3,4(%a4)
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 147(%a2)
	jeq .L773
	jra .L814
.L769:
	move.b 134(%a2),%d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
.L818:
	tst.b %d1
	jne .L771
	jra .L765
.L811:
	clr.b 149(%a2)
	clr.w 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	move.w 152(%a2),246(%a2)
	move.w 154(%a2),248(%a2)
	clr.w 152(%a2)
	clr.w 154(%a2)
	move.b #1,126(%a2)
	move.b #1,130(%a2)
.L779:
	tst.b 136(%a2)
	jne .L815
	tst.b 135(%a2)
	jeq .L793
	tst.b 126(%a2)
	jeq .L816
	tst.l 256(%a2)
	jle .L817
.L795:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 126(%a2)
	jne .L765
.L822:
	move.b #1,136(%a2)
	clr.b 135(%a2)
	addq.w #1,296(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L776:
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,12(%fp)
	move.l 262(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L805:
	moveq #1,%d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L818
.L793:
	tst.b 83(%a2)
	jne .L819
	tst.b 137(%a2)
	jne .L820
.L797:
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
	jeq .L765
.L826:
	move.l 174(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 246(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 248(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L815:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L821
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L825:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L803:
	clr.b %d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L818
.L817:
	tst.b 126(%a2)
	jeq .L765
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 126(%a2)
	jne .L765
	jra .L822
.L810:
	clr.b 145(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 135(%a2)
	jne .L779
	tst.b 260(%a2)
	jne .L823
	move.l 252(%a2),%d0
	subq.l #1,%d0
	move.l %d0,252(%a2)
	jle .L824
.L781:
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L782
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L779
.L821:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 134(%a2)
	addq.l #4,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L825
.L816:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 402(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.l 256(%a2)
	jgt .L795
	jra .L817
.L820:
	move.w 266(%a2),%d3
	lea ___mulsf3,%a4
	move.l 224(%a2),-(%sp)
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
	jeq .L798
	tst.b 130(%a2)
	jne .L798
.L799:
	tst.l %d0
	jle .L802
	tst.b 298(%a2)
	jeq .L801
.L802:
	add.w %d0,246(%a2)
.L801:
	move.l 230(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L797
	clr.b 137(%a2)
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
	jne .L826
	jra .L765
.L809:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,135(%a2)
	clr.l 256(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	addq.l #4,%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L798:
	tst.l %d0
	jlt .L827
.L800:
	cmp.w #1,%d3
	jne .L799
	tst.b 130(%a2)
	jne .L799
	add.w %d0,246(%a2)
	jra .L801
.L823:
	clr.b 260(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 252(%a2),%d0
	subq.l #1,%d0
	move.l %d0,252(%a2)
	jgt .L781
.L824:
	clr.l 252(%a2)
	move.b #1,147(%a2)
	moveq #0,%d0
	jra .L781
.L827:
	tst.b 298(%a2)
	jne .L800
	jra .L801
.L813:
	clr.b 128(%a2)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L806
.L819:
	move.w #90,248(%a2)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 406(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L782:
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
	jra .L779
.L812:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L787
	move.b #1,269(%a2)
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,266(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L828
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
.L787:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 414(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L829
.L828:
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
	jra .L787
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L836
	jge .L843
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L838
	cmp.l #128,%d0
	jeq .L839
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L844
.L832:
	moveq #21,%d0
	unlk %fp
	rts
.L843:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L841
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L835
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L832
	moveq #3,%d0
	unlk %fp
	rts
.L835:
	moveq #9,%d0
	unlk %fp
	rts
.L839:
	moveq #24,%d0
	unlk %fp
	rts
.L844:
	moveq #15,%d0
	unlk %fp
	rts
.L838:
	moveq #18,%d0
	unlk %fp
	rts
.L841:
	moveq #6,%d0
	unlk %fp
	rts
.L836:
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
	cmp.w #1,266(%a0)
	jeq .L852
	move.w 246(%a0),%a2
	sub.w 246(%a1),%a2
	cmp.w #259,%a2
	jgt .L850
.L848:
	clr.b 299(%a0)
	clr.b 299(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L852:
	move.w 246(%a1),%a2
	sub.w 246(%a0),%a2
	cmp.w #259,%a2
	jle .L848
.L850:
	move.b #1,299(%a0)
	move.b #1,299(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,150(%a0)
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
	tst.b 186(%a3)
	jne .L856
	tst.b 186(%a2)
	jeq .L855
.L856:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 186(%a3)
	jne .L865
	tst.b 186(%a2)
	jeq .L855
.L866:
	clr.b 186(%a2)
	move.l 182(%a2),%d0
	move.l %d0,_tempScore
	jne .L862
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 182(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L855:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L865:
	pea 10.w
	pea 8.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 182(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 186(%a2)
	jne .L866
	jra .L855
.L862:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L859:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L859
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L861
	move.b #39,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	lsl.l #3,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 182(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L861:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 182(%a2),(%sp)
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
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 494(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 234(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L868
	move.b #1,156(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 120(%a2)
	clr.b 121(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 118(%a2)
	clr.b 117(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	move.b #1,125(%a2)
	clr.l 300(%a2)
	clr.w 16(%a3)
	move.w #90,248(%a2)
.L868:
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
