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
	clr.b 151(%a2)
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
	move.b #1,151(%a2)
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
	move.b #1,151(%a2)
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
	move.l %d0,16792(%a0)
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
	move.l %d0,16792(%a0)
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
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l (%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L285
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L286
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L286:
	move.b #1,159(%a1)
	tst.b 90(%a0)
	jne .L280
	tst.b 86(%a0)
	jeq .L281
	move.b #1,120(%a0)
	move.b #1,150(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a0)
.L283:
	moveq #5,%d0
	move.l %d0,256(%a0)
	clr.b 260(%a0)
	moveq #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
.L288:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L285:
	move.b #1,159(%a1)
	tst.b 90(%a0)
	jeq .L287
.L280:
	move.b #1,91(%a0)
	move.b #1,145(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,234(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L287:
	tst.b 86(%a0)
	jeq .L277
	move.b #1,120(%a0)
	moveq #5,%d0
	move.l %d0,256(%a0)
	clr.b 260(%a0)
	moveq #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L288
.L277:
	move.b #1,112(%a0)
	move.b #1,109(%a0)
	moveq #5,%d0
	move.l %d0,256(%a0)
	clr.b 260(%a0)
	moveq #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L288
.L281:
	move.b #1,115(%a0)
	move.b #1,150(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a0)
	jra .L283
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 126(%a0),%d0
	jne .L291
	tst.b 90(%a0)
	jne .L291
.L292:
	tst.b 92(%a1)
	jne .L320
.L294:
	tst.b 93(%a1)
	jeq .L296
	tst.b 89(%a0)
	jne .L296
	move.b #1,111(%a0)
	moveq #2,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	addq.l #5,182(%a1)
	move.b #1,186(%a1)
.L295:
	tst.b %d0
	jne .L290
.L315:
	tst.b 90(%a0)
	jeq .L308
.L321:
	tst.b 89(%a0)
	jeq .L308
	move.b #1,91(%a0)
	move.b #1,145(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a0)
.L311:
	tst.b 129(%a1)
	jeq .L290
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
.L290:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L291:
	tst.b 135(%a0)
	jne .L292
	tst.b %d0
	jne .L290
	tst.b 90(%a0)
	jeq .L315
	move.b #1,91(%a0)
	move.b #1,145(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a0)
	tst.b 90(%a0)
	jne .L321
.L308:
	tst.b 100(%a1)
	jeq .L310
	move.b #1,119(%a0)
	moveq #4,%d0
	move.l %d0,256(%a0)
	clr.b 260(%a0)
	moveq #10,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L311
.L320:
	tst.b 89(%a0)
	jne .L294
	move.b #1,110(%a0)
	moveq #2,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	addq.l #5,182(%a1)
	move.b #1,186(%a1)
	jra .L295
.L296:
	tst.b 94(%a1)
	jeq .L297
	tst.b 89(%a0)
	jne .L297
	move.b #1,110(%a0)
	moveq #5,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
.L322:
	tst.b %d0
	jeq .L315
	jra .L290
.L297:
	tst.b 95(%a1)
	jeq .L298
	tst.b 89(%a0)
	jne .L298
	move.b #1,112(%a0)
	moveq #5,%d1
	move.l %d1,256(%a0)
	clr.b 260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L322
.L298:
	tst.b 101(%a1)
	jeq .L299
	tst.b 89(%a0)
	jeq .L323
.L299:
	tst.b 102(%a1)
	jeq .L300
	tst.b 89(%a0)
	jeq .L324
.L300:
	tst.b 96(%a1)
	jeq .L302
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
	jeq .L315
	jra .L290
.L310:
	tst.b 104(%a1)
	jeq .L311
	move.b #1,113(%a0)
	clr.b 156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,234(%a1)
	moveq #2,%d0
	move.l %d0,256(%a0)
	clr.b 260(%a0)
	addq.l #5,182(%a1)
	move.b #1,186(%a1)
	jra .L311
.L302:
	tst.b 97(%a1)
	jne .L325
	tst.b 99(%a1)
	jeq .L304
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
	jra .L322
.L323:
	move.b #1,112(%a0)
	moveq #6,%d1
	move.l %d1,256(%a0)
	move.b #1,260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
.L327:
	tst.b %d0
	jeq .L315
	jra .L290
.L324:
	move.b #1,115(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L326
	moveq #4,%d1
.L328:
	move.l %d1,256(%a0)
	move.b #1,260(%a0)
	move.b #20,%d1
	add.l %d1,182(%a1)
	move.b #1,186(%a1)
	jra .L327
.L325:
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
	jra .L322
.L326:
	move.b #1,116(%a0)
	moveq #4,%d1
	jra .L328
.L304:
	tst.b 98(%a1)
	jeq .L305
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
	jra .L322
.L305:
	tst.b 103(%a1)
	jeq .L295
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
	jeq .L315
	jra .L290
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.b 127(%a3)
	jeq .L331
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L348
.L331:
	tst.b 127(%a2)
	jeq .L332
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L349
.L332:
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
	jlt .L330
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L335
.L356:
	cmp.w #0,%a0
	jlt .L330
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 78(%a3),%d0
	cmp.l %d2,%d0
	jeq .L336
	cmp.l 78(%a2),%d2
	jeq .L336
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L336:
	cmp.l %d0,%d3
	jeq .L337
	cmp.l 78(%a2),%d3
	jeq .L337
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L337:
	moveq #61,%d5
	cmp.l %d2,%d5
	jeq .L350
	moveq #56,%d1
	cmp.l %d2,%d1
	jeq .L351
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L342
	moveq #56,%d1
	cmp.l %d3,%d1
	jeq .L352
.L342:
	tst.b 138(%a3)
	jeq .L343
	cmp.l 78(%a3),%d2
	jeq .L353
.L343:
	tst.b 138(%a2)
	jeq .L344
	cmp.l 78(%a2),%d2
	jeq .L354
.L344:
	moveq #59,%d0
	cmp.l %d2,%d0
	jeq .L355
.L345:
	move.l colliders,%d0
.L346:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L356
.L335:
	cmp.w #0,%a0
	jge .L346
.L330:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L355:
	moveq #56,%d1
	cmp.l %d3,%d1
	jne .L345
	tst.b 84(%a2)
	jeq .L345
	move.b #1,127(%a2)
	move.b #1,137(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,230(%a3)
	move.l colliders,%d0
	jra .L346
.L353:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L343
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L343
.L354:
	moveq #56,%d0
	cmp.l %d3,%d0
	jne .L344
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L345
	jra .L355
.L351:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L342
	tst.b 84(%a3)
	jeq .L342
	move.w 246(%a3),%d0
	cmp.w #10,%d0
	jle .L342
	cmp.w #328,%d0
	jgt .L342
	move.w 246(%a2),%d0
	cmp.w #10,%d0
	jle .L342
	cmp.w #328,%d0
	jgt .L342
	move.b #1,127(%a3)
	move.b #1,137(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,230(%a2)
	jra .L342
.L350:
	moveq #59,%d0
	cmp.l %d3,%d0
	jne .L342
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L342
.L352:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L342
.L348:
	clr.b 127(%a3)
	jra .L331
.L349:
	clr.b 127(%a2)
	jra .L332
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
	jeq .L372
	cmp.w #-1,%d0
	jeq .L373
.L361:
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L374
.L362:
	cmp.w #-1,%d0
	jne .L358
	move.w 246(%a0),%a2
	add.l _turnOffset,%a2
	move.w 246(%a1),%a1
	cmp.l %a2,%a1
	jle .L358
.L369:
	tst.b 128(%a0)
	jne .L358
	clr.b 269(%a0)
	move.b #1,128(%a0)
	move.b #1,268(%a0)
.L358:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L373:
	move.w 246(%a1),%a3
	add.l _turnOffset,%a3
	move.w 246(%a0),%a2
	cmp.l %a3,%a2
	jle .L361
	tst.b 128(%a1)
	jne .L361
.L375:
	clr.b 269(%a1)
	move.b #1,128(%a1)
	move.b #1,268(%a1)
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jne .L362
.L374:
	move.w 246(%a0),%a2
	move.w 246(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L369
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L372:
	move.w 246(%a1),%a3
	move.w 246(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L361
	tst.b 128(%a1)
	jne .L361
	jra .L375
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
	jeq .L384
	cmp.w #-1,%d0
	jeq .L385
.L379:
	clr.b 133(%a0)
	clr.b 133(%a1)
.L377:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L385:
	move.w 246(%a1),%a3
	move.w 246(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L379
.L381:
	move.b #1,133(%a0)
	move.b #1,133(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L384:
	move.w 246(%a1),%a3
	move.w 246(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L381
	clr.b 133(%a0)
	clr.b 133(%a1)
	jra .L377
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 252(%a1),16792(%a0)
	move.l 12(%fp),%a1
	move.l 252(%a1),%d0
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
	jne .L389
	tst.b 260(%a2)
	jne .L396
	move.l 252(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,252(%a2)
	jle .L397
.L392:
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L393
.L398:
	move.l %d0,16792(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L393:
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
.L389:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L396:
	clr.b 260(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 252(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,252(%a2)
	jgt .L392
.L397:
	clr.l 252(%a2)
	move.b #1,147(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L393
	jra .L398
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,266(%a0)
	jeq .L405
	tst.b 298(%a0)
	jeq .L400
.L402:
	addq.w #2,246(%a0)
.L400:
	unlk %fp
	rts
.L405:
	tst.b 130(%a0)
	jeq .L402
	tst.b 298(%a0)
	jne .L402
	jra .L400
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,266(%a0)
	jeq .L408
	tst.b 130(%a0)
	jeq .L409
.L408:
	tst.b 298(%a0)
	jeq .L407
.L409:
	subq.w #2,246(%a0)
.L407:
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
	jeq .L414
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
.L414:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L422
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L422:
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
	jle .L438
.L426:
	cmp.w #280,%d0
	jgt .L430
.L435:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L438:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L434
	move.w 246(%a2),%d0
	cmp.w #11,%d0
	jgt .L426
	cmp.w #280,246(%a3)
	jgt .L434
	jsr (%a4)
	tst.b %d0
	jne .L434
	move.w 246(%a2),%d0
	cmp.w #280,%d0
	jle .L435
.L430:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L439
.L434:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L439:
	cmp.w #328,246(%a2)
	jle .L435
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
	jeq .L442
	tst.b 130(%a0)
	jne .L442
.L443:
	tst.l %d0
	jle .L446
	tst.b 298(%a0)
	jeq .L441
.L446:
	add.w %d0,246(%a0)
.L441:
	unlk %fp
	rts
.L442:
	tst.l %d0
	jlt .L449
	cmp.w #1,%d1
	jne .L443
.L450:
	tst.b 130(%a0)
	jne .L443
	add.w %d0,246(%a0)
	jra .L441
.L449:
	tst.b 298(%a0)
	jeq .L441
	cmp.w #1,%d1
	jne .L443
	jra .L450
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
	jne .L453
	tst.b 84(%a2)
	jeq .L684
.L454:
	clr.b 82(%a2)
.L456:
	move.l 188(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,178(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L457
	tst.b 107(%a2)
	jeq .L457
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L457:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.l 308(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L685
	tst.b 138(%a2)
	jne .L686
	move.l 178(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L654
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L654
.L460:
	tst.b 99(%a2)
	jne .L462
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L470
	tst.l %d1
	jeq .L471
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L472
	cmp.w #1,266(%a2)
	jeq .L470
.L472:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L471
	cmp.w #-1,266(%a2)
	jeq .L470
.L471:
	tst.b 93(%a2)
	jeq .L687
.L474:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L481
	clr.b 93(%a2)
.L481:
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
.L469:
	move.l 178(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L649
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L649
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L649
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L649
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L649
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L649
	move.b #1,107(%a2)
.L649:
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L650
	tst.b 105(%a2)
	jeq .L650
	tst.b 108(%a2)
	jeq .L688
.L650:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L651
	tst.b 105(%a2)
	jeq .L651
	tst.b 108(%a2)
	jeq .L689
.L651:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L452
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L653
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L653
	and.l JAGPAD_RIGHT,%d0
	jne .L653
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L653:
	move.b #1,106(%a2)
.L452:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L453:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L684:
	tst.b 89(%a2)
	jne .L454
	tst.b 86(%a2)
	jne .L454
	tst.b 88(%a2)
	jne .L454
	tst.b 87(%a2)
	jne .L454
	tst.b 85(%a2)
	jeq .L456
	clr.b 82(%a2)
	jra .L456
.L686:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 326(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L654:
	tst.b 89(%a2)
	jeq .L460
	tst.b 107(%a2)
	jeq .L460
	tst.b 156(%a2)
	jeq .L460
	tst.b 99(%a2)
	jne .L462
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L462:
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 157(%a2)
	jeq .L690
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 160(%a2),%d0
	cmp.l %a0,%d0
	jgt .L691
.L466:
	clr.b 157(%a2)
.L467:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L469
	clr.b 99(%a2)
	move.b #1,156(%a2)
	jra .L469
.L687:
	tst.l %d4
	jeq .L692
.L482:
	tst.b 107(%a2)
	jeq .L483
	tst.b 156(%a2)
	jeq .L483
	tst.b 86(%a2)
	jne .L483
	tst.b 127(%a2)
	jeq .L483
	tst.b 102(%a2)
	jne .L486
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L488:
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
	jra .L469
.L685:
	move.b #1,138(%a2)
	clr.b 141(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L470:
	tst.b 107(%a2)
	jeq .L471
	tst.b 156(%a2)
	jeq .L471
	tst.b 86(%a2)
	jne .L471
	tst.b 127(%a2)
	jne .L471
	tst.b 93(%a2)
	jne .L474
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
	jeq .L478
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L479
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L693
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L696:
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
	jra .L469
.L690:
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
	jeq .L467
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 160(%a2),%d0
	cmp.l %a0,%d0
	jle .L466
	jra .L691
.L692:
	tst.l %d1
	jeq .L483
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L484
	cmp.w #1,266(%a2)
	jeq .L482
.L484:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L483
	cmp.w #-1,266(%a2)
	jeq .L482
.L483:
	tst.b 102(%a2)
	jne .L486
	tst.l %d1
	jeq .L489
	tst.b 107(%a2)
	jeq .L489
	tst.b 156(%a2)
	jeq .L489
	tst.b 86(%a2)
	jne .L489
	tst.b 133(%a2)
	jeq .L489
	tst.b 129(%a2)
	jne .L491
	clr.b 107(%a2)
	move.b #1,129(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L493
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L494
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L694
.L493:
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L496:
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
	jra .L469
.L691:
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
	jne .L469
	jra .L467
.L689:
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 178(%a2),%d0
	addq.l #8,%sp
	jra .L651
.L688:
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 178(%a2),%d0
	addq.l #8,%sp
	jra .L650
.L486:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L488
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
	jra .L469
.L694:
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
	jra .L469
.L489:
	tst.b 129(%a2)
	jne .L491
	tst.l %d1
	jeq .L497
	tst.b 107(%a2)
	jeq .L497
	tst.b 156(%a2)
	jeq .L497
	tst.b 86(%a2)
	jne .L497
	tst.b 133(%a2)
	jne .L497
	tst.b 92(%a2)
	jne .L499
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
.L501:
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
	jra .L469
.L491:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L496
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
	jra .L469
.L497:
	tst.b 92(%a2)
	jne .L499
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L502
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L502
	cmp.w #1,266(%a2)
	jeq .L503
.L502:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L504
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L504
	cmp.w #-1,266(%a2)
	jeq .L503
.L504:
	tst.b 100(%a2)
	jeq .L695
.L506:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L508
	clr.b 100(%a2)
.L508:
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
	jra .L469
.L499:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L501
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
	jra .L469
.L695:
	tst.l %d1
	jeq .L509
	cmp.w #1,266(%a2)
	jeq .L510
.L509:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L511
	cmp.w #-1,266(%a2)
	jeq .L510
.L511:
	tst.b 101(%a2)
	jne .L514
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L517
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L518
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L519
	cmp.w #1,266(%a2)
	jeq .L517
.L519:
	tst.l %d1
	jeq .L518
	cmp.w #-1,266(%a2)
	jeq .L517
.L518:
	tst.b 95(%a2)
	jne .L521
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L524
	tst.b 107(%a2)
	jeq .L524
	tst.b 156(%a2)
	jeq .L524
	tst.b 86(%a2)
	jne .L524
	tst.b 89(%a2)
	jne .L524
	tst.b 133(%a2)
	jeq .L524
	tst.b 103(%a2)
	jne .L526
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L528:
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
	jra .L469
.L514:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L516
	clr.b 101(%a2)
.L516:
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
	jra .L469
.L503:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L504
	tst.b 107(%a2)
	jeq .L504
	tst.b 156(%a2)
	jeq .L504
	tst.b 86(%a2)
	jne .L504
	tst.b 100(%a2)
	jne .L506
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
	jra .L469
.L510:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L512
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L511
.L512:
	tst.b 107(%a2)
	jeq .L511
	tst.b 156(%a2)
	jeq .L511
	tst.b 86(%a2)
	jne .L511
	tst.b 101(%a2)
	jne .L514
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
	jra .L469
.L517:
	tst.b 107(%a2)
	jeq .L518
	tst.b 156(%a2)
	jeq .L518
	tst.b 86(%a2)
	jne .L518
	tst.b 89(%a2)
	jne .L518
	tst.b 127(%a2)
	jne .L518
	tst.b 95(%a2)
	jne .L521
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
.L523:
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
	jra .L469
.L521:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L523
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
	jra .L469
.L479:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L696
.L478:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L696
.L693:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L696
.L494:
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
	jra .L469
.L524:
	tst.b 103(%a2)
	jne .L526
	and.l %d0,%d5
	jeq .L529
	tst.b 107(%a2)
	jeq .L529
	tst.b 156(%a2)
	jeq .L529
	tst.b 86(%a2)
	jne .L529
	tst.b 89(%a2)
	jne .L529
	tst.b 127(%a2)
	jne .L529
	tst.b 94(%a2)
	jne .L531
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
.L533:
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
	jra .L469
.L526:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L528
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
	jra .L469
.L529:
	tst.b 94(%a2)
	jne .L531
	tst.l %d4
	jeq .L534
	tst.b 107(%a2)
	jeq .L534
	tst.b 156(%a2)
	jeq .L534
	tst.b 86(%a2)
	jne .L534
	tst.b 89(%a2)
	jeq .L534
	tst.b 104(%a2)
	jne .L536
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L538:
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
	jra .L469
.L531:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L533
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
	jra .L469
.L534:
	tst.b 104(%a2)
	jeq .L697
.L536:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L538
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
	jra .L469
.L697:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L539
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L540
.L539:
	tst.b 86(%a2)
	jne .L540
	tst.b 156(%a2)
	jeq .L540
	tst.b 90(%a2)
	jne .L541
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L541:
	and.l JAGPAD_DOWN,%d0
	jeq .L542
	tst.b 89(%a2)
	jne .L543
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L543:
	tst.b 91(%a2)
	jne .L544
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
	jra .L469
.L540:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L547
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L548
	cmp.w #1,266(%a2)
	jeq .L549
.L548:
	tst.l %d1
	jeq .L547
	cmp.w #-1,266(%a2)
	jeq .L549
.L547:
	tst.b 87(%a2)
	jeq .L698
.L551:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L553
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L554
.L553:
	tst.b 87(%a2)
	jeq .L554
	tst.b 168(%a2)
	jne .L554
	tst.b 228(%a2)
	jeq .L555
.L554:
	tst.b 96(%a2)
	jeq .L556
	tst.b 168(%a2)
	jne .L556
	tst.b 87(%a2)
	jeq .L556
.L555:
	tst.b 98(%a2)
	jne .L556
	tst.b 96(%a2)
	jne .L557
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
.L557:
	tst.b 158(%a2)
	jeq .L699
.L558:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L700
	clr.b 158(%a2)
	clr.b 96(%a2)
.L559:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
.L556:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L561
	and.l JAGPAD_9,%d0
	jeq .L562
.L561:
	tst.b 87(%a2)
	jeq .L562
	tst.b 168(%a2)
	jne .L562
	tst.b 228(%a2)
	jeq .L563
.L562:
	tst.b 98(%a2)
	jeq .L564
	tst.b 168(%a2)
	jne .L564
	tst.b 87(%a2)
	jeq .L564
.L563:
	tst.b 96(%a2)
	jne .L564
	tst.b 98(%a2)
	jne .L565
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
.L565:
	tst.b 158(%a2)
	jeq .L701
.L566:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L702
	clr.b 158(%a2)
	clr.b 98(%a2)
.L567:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L564:
	tst.w 16(%a3)
	jne .L569
	tst.b 96(%a2)
	jne .L569
	tst.b 98(%a2)
	jeq .L703
.L569:
	tst.b 87(%a2)
	jeq .L469
	tst.b 168(%a2)
	jne .L570
	move.l 170(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L570
	tst.b 169(%a2)
	jne .L571
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L571
	tst.b 96(%a2)
	jne .L571
	tst.b 98(%a2)
	jne .L571
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,169(%a2)
	addq.l #8,%sp
.L571:
	tst.b 158(%a2)
	jeq .L704
.L572:
	tst.b 96(%a2)
	jne .L574
	tst.b 98(%a2)
	jne .L574
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
.L574:
	move.w raptor_ticks,%a0
	move.l %a0,170(%a2)
.L570:
	clr.l -(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L575
	cmp.w #89,248(%a2)
	jgt .L677
.L575:
	tst.b 168(%a2)
	jeq .L469
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
	jeq .L469
	move.b #1,156(%a2)
	clr.b 87(%a2)
.L679:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 169(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L469
.L542:
	tst.b 89(%a2)
	jeq .L545
	clr.b 89(%a2)
.L545:
	tst.b 91(%a2)
	jne .L546
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
	jra .L469
.L677:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,168(%a2)
	clr.l 276(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
	jra .L469
.L544:
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
.L681:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L469
	clr.b 91(%a2)
	jra .L469
.L546:
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
	jra .L681
.L704:
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
	jge .L573
	clr.l 300(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,168(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
.L573:
	move.l 272(%a2),-(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,276(%a2)
	jra .L572
.L703:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L678:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L469
.L698:
	tst.l %d4
	jeq .L577
	tst.l %d1
	jeq .L578
	cmp.w #1,266(%a2)
	jeq .L579
.L578:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L577
	cmp.w #-1,266(%a2)
	jeq .L579
.L577:
	tst.b 88(%a2)
	jeq .L705
.L581:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L583
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L584
.L583:
	tst.b 88(%a2)
	jeq .L584
	tst.b 168(%a2)
	jne .L584
	tst.b 228(%a2)
	jeq .L585
.L584:
	tst.b 96(%a2)
	jeq .L586
	tst.b 168(%a2)
	jne .L586
	tst.b 88(%a2)
	jeq .L586
.L585:
	tst.b 98(%a2)
	jne .L586
	tst.b 96(%a2)
	jne .L587
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
.L587:
	tst.b 158(%a2)
	jeq .L706
.L588:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L707
	clr.b 158(%a2)
	clr.b 98(%a2)
.L589:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
.L586:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L591
	and.l JAGPAD_9,%d0
	jeq .L592
.L591:
	tst.b 88(%a2)
	jeq .L592
	tst.b 168(%a2)
	jne .L592
	tst.b 228(%a2)
	jeq .L593
.L592:
	tst.b 98(%a2)
	jeq .L594
	tst.b 168(%a2)
	jne .L594
	tst.b 88(%a2)
	jeq .L594
.L593:
	tst.b 96(%a2)
	jne .L594
	tst.b 98(%a2)
	jne .L595
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
.L595:
	tst.b 158(%a2)
	jeq .L708
.L596:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L709
	clr.b 158(%a2)
	clr.b 98(%a2)
.L597:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L594:
	tst.w 16(%a3)
	jne .L599
	tst.b 96(%a2)
	jne .L599
	tst.b 98(%a2)
	jeq .L710
.L599:
	tst.b 88(%a2)
	jeq .L469
	tst.b 168(%a2)
	jne .L600
	move.l 170(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L600
	tst.b 169(%a2)
	jne .L601
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L601
	tst.b 96(%a2)
	jne .L601
	tst.b 98(%a2)
	jne .L601
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,169(%a2)
	addq.l #8,%sp
.L601:
	tst.b 158(%a2)
	jne .L602
	tst.b 299(%a2)
	jne .L603
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
.L603:
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L604
	clr.l 300(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,168(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
.L604:
	move.l 272(%a2),-(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,276(%a2)
.L602:
	tst.b 96(%a2)
	jne .L605
	tst.b 98(%a2)
	jne .L605
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
.L605:
	move.w raptor_ticks,%a0
	move.l %a0,170(%a2)
.L600:
	clr.l -(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L606
	cmp.w #89,248(%a2)
	jgt .L677
.L606:
	tst.b 168(%a2)
	jeq .L469
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
	jeq .L469
	move.b #1,156(%a2)
	clr.b 88(%a2)
	jra .L679
.L710:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L678
.L709:
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
	jra .L597
.L708:
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
	jeq .L597
	jra .L596
.L707:
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
	jra .L589
.L706:
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
	jeq .L589
	jra .L588
.L705:
	tst.l %d1
	jeq .L608
	tst.b 156(%a2)
	jeq .L608
	tst.b 86(%a2)
	jne .L608
	tst.b 84(%a2)
	jne .L609
	clr.w 16(%a3)
.L609:
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
	jle .L469
	tst.b 127(%a2)
	jne .L610
	move.l 196(%a2),%d0
	cmp.w #-1,266(%a2)
	jne .L611
	move.l 192(%a2),%d0
.L611:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L676:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L469
.L610:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L469
	move.l 224(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L676
.L608:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L612
	tst.b 156(%a2)
	jeq .L612
	tst.b 86(%a2)
	jne .L612
	tst.b 84(%a2)
	jne .L613
	clr.w 16(%a3)
.L613:
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
	jgt .L469
	tst.b 127(%a2)
	jne .L614
	move.l 192(%a2),%d0
	cmp.w #-1,266(%a2)
	jne .L615
	move.l 196(%a2),%d0
.L615:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L676
.L614:
	move.l 224(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L676
.L612:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L616
	tst.b 156(%a2)
	jeq .L616
	tst.b 86(%a2)
	jne .L616
	tst.b 89(%a2)
	jne .L617
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L617:
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
	jra .L469
.L616:
	tst.l %d4
	jeq .L618
	tst.b 105(%a2)
	jeq .L618
	tst.b 156(%a2)
	jne .L619
.L618:
	tst.b 86(%a2)
	jeq .L711
.L620:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L622
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L623
.L622:
	tst.b 86(%a2)
	jeq .L623
	tst.b 168(%a2)
	jne .L623
	tst.b 228(%a2)
	jeq .L624
.L623:
	tst.b 96(%a2)
	jeq .L625
	tst.b 168(%a2)
	jne .L625
	tst.b 86(%a2)
	jeq .L625
.L624:
	tst.b 97(%a2)
	jne .L625
	tst.b 96(%a2)
	jne .L626
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
.L626:
	tst.b 158(%a2)
	jeq .L712
.L627:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L713
	clr.b 158(%a2)
	clr.b 96(%a2)
.L628:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 178(%a2),%d0
.L625:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L630
	and.l JAGPAD_9,%d0
	jeq .L631
.L630:
	tst.b 86(%a2)
	jeq .L631
	tst.b 168(%a2)
	jne .L631
	tst.b 228(%a2)
	jeq .L632
.L631:
	tst.b 97(%a2)
	jeq .L633
	tst.b 168(%a2)
	jne .L633
	tst.b 86(%a2)
	jeq .L633
.L632:
	tst.b 96(%a2)
	jne .L633
	tst.b 97(%a2)
	jne .L634
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
.L634:
	tst.b 158(%a2)
	jeq .L714
.L635:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	add.l 164(%a2),%d0
	cmp.l %a0,%d0
	jgt .L715
	clr.b 158(%a2)
	clr.b 97(%a2)
.L636:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L633:
	tst.w 16(%a3)
	jne .L638
	tst.b 96(%a2)
	jne .L638
	tst.b 97(%a2)
	jeq .L644
.L638:
	tst.b 86(%a2)
	jeq .L469
	tst.b 168(%a2)
	jne .L639
	move.l 234(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L640
	tst.b 158(%a2)
	jne .L640
	move.l 300(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,248(%a2)
	addq.l #1,%a0
	move.l %a0,300(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L641
	clr.l 300(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,168(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
.L641:
	move.l 272(%a2),-(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,276(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
.L640:
	tst.b 96(%a2)
	jne .L639
	tst.b 97(%a2)
	jne .L639
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
.L639:
	clr.l -(%sp)
	move.l 276(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L642
	cmp.w #89,248(%a2)
	jgt .L716
.L642:
	tst.b 168(%a2)
	jeq .L469
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L644
	move.b #1,156(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L644:
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
	jra .L469
.L716:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,168(%a2)
	clr.l 276(%a2)
	move.w #90,248(%a2)
	addq.l #4,%sp
	jra .L469
.L702:
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
	jra .L567
.L701:
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
	jeq .L567
	jra .L566
.L700:
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
	jra .L559
.L699:
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
	jeq .L559
	jra .L558
.L549:
	tst.b 106(%a2)
	jeq .L547
	tst.b 156(%a2)
	jeq .L547
	tst.b 87(%a2)
	jne .L551
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
	jra .L551
.L619:
	tst.b 86(%a2)
	jne .L620
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
	jra .L620
.L579:
	tst.b 106(%a2)
	jeq .L577
	tst.b 156(%a2)
	jeq .L577
	tst.b 88(%a2)
	jne .L581
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
	jra .L581
.L712:
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
	jeq .L628
	jra .L627
.L715:
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
	jra .L636
.L714:
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
	jeq .L636
	jra .L635
.L713:
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
	jra .L628
.L711:
	tst.b 89(%a2)
	jne .L717
	tst.b 90(%a2)
	jne .L718
	tst.b 84(%a2)
	jeq .L647
	clr.b 127(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L647:
	tst.b 82(%a2)
	jne .L648
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L648:
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
	jra .L469
.L718:
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
	jne .L469
	clr.b 90(%a2)
	jra .L469
.L717:
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
	jne .L469
	clr.b 89(%a2)
	jra .L469
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
	jeq .L720
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L726
	jlt .L730
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L724
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L725
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L762
.L722:
	sub.w 248(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L735
	jge .L763
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L737
	cmp.l #128,%d0
	jeq .L738
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L736
.L731:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L744
	jlt .L748
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L742
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L743
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L741
	moveq #84,%d1
	not.b %d1
.L740:
	cmp.l %a1,%d1
	jge .L720
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L751
	jlt .L757
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L751
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L751
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L751
	move.w #171,%d1
.L751:
	move.w %d1,12(%a0)
.L720:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L730:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L728
	cmp.l #128,%d0
	jeq .L729
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L722
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 248(%a2),%d1
.L736:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L745:
	moveq #78,%d1
	not.b %d1
	jra .L740
.L726:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 248(%a2),%d1
.L735:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L744:
	moveq #75,%d1
	not.b %d1
	jra .L740
.L724:
	move.w %a1,%d1
	sub.w 248(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L733:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L742:
	moveq #69,%d1
	not.b %d1
	jra .L740
.L728:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 248(%a2),%d1
.L737:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L746:
	moveq #81,%d1
	not.b %d1
	jra .L740
.L762:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 248(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L741:
	moveq #66,%d1
	not.b %d1
	jra .L740
.L757:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L751
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L751
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L751
	move.w #171,%d1
	jra .L751
.L725:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 248(%a2),%d1
.L734:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L743:
	moveq #72,%d1
	not.b %d1
	jra .L740
.L729:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 248(%a2),%d1
	add.w %a1,%d1
.L738:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L747:
	moveq #87,%d1
	not.b %d1
	jra .L740
.L763:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L733
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L734
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L731
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L741
.L748:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L746
	cmp.l #128,%d0
	jeq .L747
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L745
	moveq #84,%d1
	not.b %d1
	jra .L740
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
	tst.b 151(%a2)
	jeq .L767
	clr.b 151(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,234(%a2)
	move.l %a0,230(%a2)
	move.l %a0,242(%a2)
	move.l %a0,170(%a2)
	move.l %a0,12(%a3)
.L767:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L768
	move.b 134(%a2),%d1
	jeq .L766
.L772:
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 147(%a2)
	jeq .L774
.L817:
	tst.b 118(%a2)
	jne .L774
	tst.b 117(%a2)
	jne .L774
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
	jle .L775
	tst.b 135(%a2)
	jeq .L811
.L775:
	move.b #1,136(%a2)
	clr.b 135(%a2)
	addq.w #1,%d0
	move.w %d0,296(%a2)
.L766:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L774:
	tst.b 148(%a2)
	jeq .L776
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
	jeq .L777
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L766
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,12(%fp)
	move.l 262(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L776:
	tst.b 150(%a2)
	jne .L812
	tst.b 145(%a2)
	jeq .L780
.L821:
	move.w raptor_ticks,%a0
	move.l 234(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L813
.L780:
	tst.b 149(%a2)
	jne .L814
	tst.b 128(%a2)
	jeq .L781
	tst.b 86(%a2)
	jne .L781
	tst.b 88(%a2)
	jne .L781
	tst.b 87(%a2)
	jne .L781
	tst.b 126(%a2)
	jne .L781
	tst.b 85(%a2)
	jne .L781
	tst.b 268(%a2)
	jeq .L787
	clr.b 268(%a2)
	clr.w 16(%a3)
.L787:
	tst.b 269(%a2)
	jeq .L815
	tst.w 16(%a3)
	jle .L816
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L808:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 414(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L833:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L768:
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
	jeq .L770
	tst.b 134(%a2)
	jeq .L805
	tst.b 136(%a2)
	jne .L807
	tst.b 83(%a2)
	jne .L807
	moveq #1,%d3
	move.l %d3,4(%a4)
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 147(%a2)
	jeq .L774
	jra .L817
.L770:
	move.b 134(%a2),%d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
.L822:
	tst.b %d1
	jne .L772
	jra .L766
.L814:
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
.L781:
	tst.b 136(%a2)
	jne .L818
	tst.b 135(%a2)
	jeq .L795
	tst.b 126(%a2)
	jeq .L819
	tst.l 256(%a2)
	jle .L820
.L797:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 126(%a2)
	jne .L766
.L826:
	move.b #1,136(%a2)
	clr.b 135(%a2)
	addq.w #1,296(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L777:
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,12(%fp)
	move.l 262(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L812:
	clr.b 150(%a2)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	tst.b 145(%a2)
	jeq .L780
	jra .L821
.L807:
	moveq #1,%d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L822
.L795:
	tst.b 83(%a2)
	jne .L823
	tst.b 137(%a2)
	jne .L824
.L799:
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
	jeq .L766
.L830:
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
.L818:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L825
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
.L829:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L805:
	clr.b %d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L822
.L820:
	tst.b 126(%a2)
	jeq .L766
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 126(%a2)
	jne .L766
	jra .L826
.L813:
	clr.b 145(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 135(%a2)
	jne .L781
	tst.b 260(%a2)
	jne .L827
	move.l 252(%a2),%d0
	subq.l #1,%d0
	move.l %d0,252(%a2)
	jle .L828
.L783:
	move.l sprite,%a0
	tst.b 270(%a2)
	jeq .L784
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L781
.L825:
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
	jra .L829
.L819:
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
	jgt .L797
	jra .L820
.L824:
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
	jeq .L800
	tst.b 130(%a2)
	jne .L800
.L801:
	tst.l %d0
	jle .L804
	tst.b 298(%a2)
	jeq .L803
.L804:
	add.w %d0,246(%a2)
.L803:
	move.l 230(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L799
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
	jne .L830
	jra .L766
.L811:
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
.L800:
	tst.l %d0
	jlt .L831
.L802:
	cmp.w #1,%d3
	jne .L801
	tst.b 130(%a2)
	jne .L801
	add.w %d0,246(%a2)
	jra .L803
.L827:
	clr.b 260(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 252(%a2),%d0
	subq.l #1,%d0
	move.l %d0,252(%a2)
	jgt .L783
.L828:
	clr.l 252(%a2)
	move.b #1,147(%a2)
	moveq #0,%d0
	jra .L783
.L831:
	tst.b 298(%a2)
	jne .L802
	jra .L803
.L816:
	clr.b 128(%a2)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L808
.L823:
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
.L784:
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
	jra .L781
.L815:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L789
	move.b #1,269(%a2)
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,266(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L832
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
.L789:
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
	jra .L833
.L832:
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
	jra .L789
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L840
	jge .L847
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L842
	cmp.l #128,%d0
	jeq .L843
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L848
.L836:
	moveq #21,%d0
	unlk %fp
	rts
.L847:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L845
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L839
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L836
	moveq #3,%d0
	unlk %fp
	rts
.L839:
	moveq #9,%d0
	unlk %fp
	rts
.L843:
	moveq #24,%d0
	unlk %fp
	rts
.L848:
	moveq #15,%d0
	unlk %fp
	rts
.L842:
	moveq #18,%d0
	unlk %fp
	rts
.L845:
	moveq #6,%d0
	unlk %fp
	rts
.L840:
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
	jeq .L856
	move.w 246(%a0),%a2
	sub.w 246(%a1),%a2
	cmp.w #259,%a2
	jgt .L854
.L852:
	clr.b 299(%a0)
	clr.b 299(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L856:
	move.w 246(%a1),%a2
	sub.w 246(%a0),%a2
	cmp.w #259,%a2
	jle .L852
.L854:
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
	move.b #1,151(%a0)
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
	jne .L860
	tst.b 186(%a2)
	jeq .L859
.L860:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 186(%a3)
	jne .L869
	tst.b 186(%a2)
	jeq .L859
.L870:
	clr.b 186(%a2)
	move.l 182(%a2),%d0
	move.l %d0,_tempScore
	jne .L866
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
.L859:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L869:
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
	jne .L870
	jra .L859
.L866:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L863:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L863
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L865
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
.L865:
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
	jle .L872
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
.L872:
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
