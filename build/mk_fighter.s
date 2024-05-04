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
	clr.l 170(%a0)
	move.b #1,174(%a0)
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
	move.w #-1,252(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,234(%a0)
	move.w #106,236(%a0)
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
	move.w #1,252(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,234(%a0)
	move.w #106,236(%a0)
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
	move.l #0x400ccccd,258(%a2)
	clr.l 262(%a2)
	move.l #0xc1800000,266(%a2)
	move.l #0xc1a80000,270(%a2)
	move.l #0xc1200000,274(%a2)
	move.l #0x40a00000,278(%a2)
	clr.l 286(%a2)
	clr.b 138(%a2)
	move.l 16(%fp),248(%a2)
	move.l 20(%fp),290(%a2)
	move.l 24(%fp),294(%a2)
	move.l 28(%fp),298(%a2)
	move.l 32(%fp),302(%a2)
	move.l 36(%fp),314(%a2)
	move.l 40(%fp),318(%a2)
	move.l 44(%fp),306(%a2)
	move.l 48(%fp),310(%a2)
	move.l 52(%fp),322(%a2)
	move.l 56(%fp),326(%a2)
	move.l 60(%fp),330(%a2)
	move.l 64(%fp),334(%a2)
	move.l 68(%fp),338(%a2)
	clr.l 166(%a2)
	move.l #0x40000000,180(%a2)
	move.l #0x40000000,184(%a2)
	move.l #0x40900000,188(%a2)
	move.l #0x40600000,192(%a2)
	move.l #0x40d00000,196(%a2)
	move.l #0x41000000,200(%a2)
	clr.l 208(%a2)
	move.l #0x40f00000,204(%a2)
	move.l #0x3f800000,212(%a2)
	moveq #1,%d0
	move.l %d0,226(%a2)
	clr.l 230(%a2)
	clr.l 218(%a2)
	move.b #1,129(%a2)
	move.b #1,80(%a2)
	clr.b 81(%a2)
	clr.b 82(%a2)
	clr.b 83(%a2)
	clr.b 123(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.b 86(%a2)
	clr.b 87(%a2)
	clr.b 88(%a2)
	clr.b 89(%a2)
	clr.b 90(%a2)
	clr.b 91(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	clr.b 94(%a2)
	clr.b 96(%a2)
	clr.b 95(%a2)
	clr.b 97(%a2)
	move.b #1,105(%a2)
	move.b #1,103(%a2)
	move.b #1,104(%a2)
	move.b #1,144(%a2)
	clr.b 216(%a2)
	clr.b 98(%a2)
	clr.b 99(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 124(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.b 128(%a2)
	clr.b 106(%a2)
	clr.b 107(%a2)
	clr.b 108(%a2)
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 113(%a2)
	clr.b 116(%a2)
	clr.b 117(%a2)
	clr.b 118(%a2)
	clr.b 119(%a2)
	clr.b 120(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 133(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.w 140(%a2)
	clr.w 142(%a2)
	clr.b 145(%a2)
	clr.b 146(%a2)
	clr.b 156(%a2)
	clr.b 157(%a2)
	clr.l 158(%a2)
	moveq #50,%d1
	move.l %d1,148(%a2)
	move.b #20,%d0
	move.l %d0,152(%a2)
	move.b %d2,256(%a2)
	move.b #33,%d1
	move.l %d1,238(%a2)
	clr.l 242(%a2)
	clr.b 246(%a2)
	clr.b 254(%a2)
	clr.b 255(%a2)
	move.b #1,284(%a2)
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
	move.l %d1,162(%a2)
	moveq #60,%d2
	move.l %d2,76(%a2)
	move.b #2,%d1
	move.l %d1,176(%a2)
	move.w #210,234(%a2)
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
	move.w #-1,252(%a2)
	move.w #222,%d0
	move.w #11904,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.w #90,236(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,138(%a2)
	addq.l #4,%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L27:
	moveq #61,%d2
	move.l %d2,162(%a2)
	move.b #57,%d1
	move.l %d1,76(%a2)
	move.b #1,%d2
	move.l %d2,176(%a2)
	move.w #50,234(%a2)
	move.l %d2,10968(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,252(%a2)
	moveq #62,%d0
	move.w #11712,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.w #90,236(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,138(%a2)
	addq.l #4,%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 282(%a0)
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
	jeq .L33
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L34
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L37
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L37:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L34:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L33:
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
	jeq .L44
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L44:
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
	jeq .L48
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L52
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L48:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L52:
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
	jle .L59
.L55:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L59:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L60
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L60:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L55
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
	jne .L66
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L67
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L67:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L66:
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
	tst.b 121(%a2)
	jne .L70
	tst.b 106(%a2)
	jeq .L216
.L71:
	move.b 113(%a2),%d0
	jne .L75
.L76:
	move.l 242(%a2),%d2
	tst.b 130(%a2)
	jne .L78
.L230:
	tst.b 246(%a2)
	jne .L217
	move.l 238(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,238(%a2)
	jle .L218
.L84:
	move.l sprite,%a0
	tst.b 256(%a2)
	jne .L199
	move.l %d0,16216(%a0)
	moveq #78,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	add.w %d2,%d0
	add.w %d0,%d0
	move.w %d0,16136(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L78:
	clr.l 242(%a2)
	clr.l 208(%a2)
	move.b #1,121(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	move.l %a0,230(%a2)
	clr.w 16(%a3)
	move.l 270(%a2),262(%a2)
	move.b 115(%a2),%d0
	jne .L87
	tst.b 116(%a2)
	jne .L87
	tst.b 125(%a2)
	jeq .L89
	clr.l 262(%a2)
.L89:
	tst.b 106(%a2)
	jne .L90
	tst.b 107(%a2)
	jeq .L219
.L90:
	moveq #0,%d1
	move.b 256(%a2),%d1
	move.l 248(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L220
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L94:
	move.b 107(%a2),%d1
	jne .L103
	tst.b 108(%a2)
	jeq .L221
.L103:
	move.w 234(%a2),%a4
	move.w 252(%a2),%d0
	cmp.w #-1,%d0
	jeq .L222
.L104:
	cmp.w #1,%d0
	jeq .L223
.L105:
	tst.b %d1
	jne .L106
	tst.b 110(%a2)
	jne .L106
	tst.b 111(%a2)
	jne .L106
	tst.b 108(%a2)
	jne .L224
	tst.b 113(%a2)
	jne .L225
.L70:
	tst.b 106(%a2)
	jeq .L77
.L238:
	tst.b 121(%a2)
	jne .L226
.L77:
	tst.b 107(%a2)
	jeq .L110
	tst.b 121(%a2)
	jne .L227
.L110:
	tst.b 108(%a2)
	jeq .L228
	tst.b 121(%a2)
	jne .L229
.L112:
	tst.b 109(%a2)
	jeq .L119
	tst.b 121(%a2)
	jeq .L119
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 226(%a2),%d0
	cmp.l %a0,%d0
	jle .L120
	move.w 252(%a2),%a4
	move.w 234(%a2),%d0
.L121:
	move.l %a4,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 109(%a2)
	clr.b 121(%a2)
.L69:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L228:
	tst.b 110(%a2)
	jeq .L112
	tst.b 121(%a2)
	jeq .L112
.L229:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 226(%a2),%d0
	cmp.l %a0,%d0
	jle .L113
	move.w 252(%a2),%a4
	move.w 234(%a2),%d0
.L114:
	move.l %a4,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 108(%a2)
	clr.b 110(%a2)
	clr.b 121(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L216:
	tst.b 107(%a2)
	jne .L71
	tst.b 108(%a2)
	jne .L71
	tst.b 113(%a2)
	jne .L75
	tst.b 114(%a2)
	jne .L76
	tst.b 110(%a2)
	jne .L76
	tst.b 109(%a2)
	jne .L76
	tst.b 115(%a2)
	jne .L76
	tst.b 111(%a2)
	jne .L76
	tst.b 116(%a2)
	jne .L76
	tst.b 125(%a2)
	jeq .L77
	move.l 242(%a2),%d2
	tst.b 130(%a2)
	jeq .L230
	jra .L78
.L75:
	move.l 242(%a2),%d2
	tst.b 130(%a2)
	jne .L78
	tst.b 246(%a2)
	jne .L231
	move.l 238(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,238(%a2)
	jle .L232
.L80:
	move.l sprite,%a0
	tst.b 256(%a2)
	jne .L199
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
	jra .L78
.L119:
	tst.b 111(%a2)
	jeq .L126
	tst.b 121(%a2)
	jeq .L126
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 226(%a2),%d0
	cmp.l %a0,%d0
	jle .L127
	move.w 252(%a2),%a4
	move.w 234(%a2),%d0
	move.l %a4,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
.L250:
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 121(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L126:
	tst.b 114(%a2)
	jeq .L133
	tst.b 121(%a2)
	jne .L233
.L133:
	move.b 125(%a2),%d2
	jeq .L134
	tst.b 121(%a2)
	jeq .L134
	tst.b 126(%a2)
	jne .L135
	tst.b 127(%a2)
	jeq .L136
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L135:
	tst.b 119(%a2)
	jne .L234
.L137:
	cmp.w #1,16(%a3)
	jle .L69
	move.w raptor_ticks,%a0
	cmp.l 222(%a2),%a0
	jlt .L69
	tst.b 126(%a2)
	jeq .L235
	move.w 236(%a2),%d0
	cmp.w #122,%d0
	jle .L144
	move.b #1,119(%a2)
	move.l %a0,222(%a2)
	move.w #90,236(%a2)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 248(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 130(%a2)
	jne .L145
	tst.b 246(%a2)
	jne .L236
	move.l 238(%a2),%d0
	subq.l #8,%d0
	move.l %d0,238(%a2)
	jle .L237
.L147:
	move.l sprite,%a0
	tst.b 256(%a2)
	jeq .L148
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L145:
	move.w 252(%a2),%d2
	lea ___floatsisf,%a5
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 200(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L150
	tst.b 125(%a2)
	jne .L150
.L151:
	tst.l %d0
	jle .L154
	tst.b 284(%a2)
	jeq .L153
.L154:
	add.w %d0,234(%a2)
.L153:
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 278(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,236(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
.L247:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L87:
	move.l 274(%a2),262(%a2)
	jra .L89
.L106:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr __Z10bloodSpraysss
	lea (12,%sp),%sp
	tst.b 106(%a2)
	jne .L238
	jra .L77
.L219:
	tst.b 114(%a2)
	jne .L90
	tst.b 110(%a2)
	jne .L90
	tst.b 109(%a2)
	jne .L90
	tst.b 111(%a2)
	jne .L95
	tst.b 116(%a2)
	jne .L95
	tst.b 108(%a2)
	jne .L98
	tst.b 113(%a2)
	jne .L98
	tst.b %d0
	jeq .L99
.L98:
	move.l 248(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 256(%a2),%d2
	move.l 248(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L101
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L239
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L226:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 106(%a2)
	clr.b 121(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L227:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 107(%a2)
	clr.b 121(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L221:
	tst.b 113(%a2)
	jne .L103
.L99:
	tst.b 110(%a2)
	jeq .L240
	clr.b %d1
.L243:
	move.w 234(%a2),%a4
	move.w 252(%a2),%d0
	cmp.w #-1,%d0
	jne .L104
.L222:
	lea (40,%a4),%a4
	jra .L105
.L134:
	tst.b 115(%a2)
	jne .L155
	tst.b 116(%a2)
	jeq .L156
.L155:
	tst.b 121(%a2)
	jeq .L156
	tst.b 119(%a2)
	jne .L241
	move.w raptor_ticks,%a0
	cmp.l 222(%a2),%a0
	jlt .L69
	move.w 252(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 192(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L158
	tst.b %d2
	jne .L158
.L159:
	tst.l %d0
	jle .L162
	tst.b 284(%a2)
	jeq .L161
.L162:
	add.w %d0,234(%a2)
.L161:
	move.b 117(%a2),%d3
	move.l 262(%a2),%d2
	tst.b %d3
	jne .L164
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,236(%a2)
	move.l 258(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,262(%a2)
.L164:
	move.l %d2,-(%sp)
	move.l 270(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L165
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L202
.L165:
	tst.b 118(%a2)
	jne .L185
	tst.b %d3
	jne .L186
	tst.b 116(%a2)
	jeq .L205
.L186:
	move.b #1,117(%a2)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L184
	move.b #1,118(%a2)
	clr.b 117(%a2)
.L184:
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
.L248:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L223:
	lea (-40,%a4),%a4
	jra .L105
.L113:
	move.w 252(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 188(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L115
	tst.b 125(%a2)
	jeq .L116
.L115:
	tst.l %d0
	jlt .L242
.L117:
	cmp.w #1,%d2
	jne .L116
	tst.b 125(%a2)
	jeq .L118
.L116:
	tst.l %d0
	jle .L118
	tst.b 284(%a2)
	jeq .L195
.L118:
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
	jra .L114
.L156:
	tst.b 113(%a2)
	jeq .L172
	tst.b 121(%a2)
	jeq .L172
	tst.b 119(%a2)
	jeq .L173
	moveq #19,%d0
	add.l 222(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L69
	clr.b 113(%a2)
	clr.b 117(%a2)
	clr.b 118(%a2)
	clr.b 119(%a2)
	move.b #1,120(%a2)
	clr.w 16(%a3)
	move.w #90,236(%a2)
.L244:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L172:
	tst.b 120(%a2)
	jeq .L69
	tst.b 121(%a2)
	jeq .L69
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 121(%a2)
	clr.b 120(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L220:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L199:
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L78
.L217:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 238(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,238(%a2)
	jgt .L84
	jra .L218
.L231:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 238(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,238(%a2)
	jgt .L80
	jra .L232
.L218:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	jra .L84
.L232:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	jra .L80
.L233:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	move.l 248(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 114(%a2)
	move.b #1,120(%a2)
	clr.w 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L240:
	tst.b 111(%a2)
	jeq .L70
	clr.b %d1
	jra .L243
.L241:
	moveq #19,%d0
	add.l 222(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L69
	clr.b 115(%a2)
	clr.b 116(%a2)
	clr.b 117(%a2)
	clr.b 118(%a2)
	clr.b 119(%a2)
	move.b #1,120(%a2)
	clr.w 16(%a3)
	move.w #90,236(%a2)
	jra .L244
.L234:
	moveq #19,%d0
	add.l 222(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L69
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 119(%a2)
	move.b #1,120(%a2)
	clr.w 16(%a3)
	move.w #90,236(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L242:
	tst.b 284(%a2)
	jne .L117
.L195:
	move.w 234(%a2),%d0
	jra .L114
.L225:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.w %a4,%d2
	ext.l %d2
	move.w 236(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.l %d2,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 236(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 236(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d0
	add.w #-40,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	move.w 252(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 252(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 252(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w %d0,%a4
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.b 106(%a2)
	jne .L238
	jra .L77
.L158:
	tst.l %d0
	jlt .L245
.L160:
	cmp.w #1,%d3
	jne .L159
	tst.b %d2
	jne .L159
	add.w %d0,234(%a2)
	jra .L161
.L245:
	tst.b 284(%a2)
	jne .L160
	jra .L161
.L150:
	tst.l %d0
	jlt .L246
.L152:
	cmp.w #1,%d2
	jne .L151
	tst.b 125(%a2)
	jne .L151
	add.w %d0,234(%a2)
	jra .L153
.L246:
	tst.b 284(%a2)
	jne .L152
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 278(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,236(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	jra .L247
.L236:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 238(%a2),%d0
	subq.l #8,%d0
	move.l %d0,238(%a2)
	jgt .L147
.L237:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	jra .L147
.L173:
	move.w raptor_ticks,%a0
	cmp.l 222(%a2),%a0
	jlt .L69
	move.w 252(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 192(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L174
	tst.b %d2
	jne .L174
.L175:
	tst.l %d0
	jle .L178
	tst.b 284(%a2)
	jeq .L177
.L178:
	add.w %d0,234(%a2)
.L177:
	move.b 117(%a2),%d3
	move.l 262(%a2),%d2
	tst.b %d3
	jne .L180
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,236(%a2)
	move.l 258(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,262(%a2)
.L180:
	move.l %d2,-(%sp)
	move.l 270(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L181
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L202
.L181:
	tst.b 118(%a2)
	jne .L185
	tst.b %d3
	jne .L186
.L205:
	move.l 248(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L186
.L202:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	jra .L248
.L120:
	move.w 252(%a2),%d2
	move.w %d2,%a4
	lea ___mulsf3,%a5
	move.l #0x3eaaaaab,-(%sp)
	move.l 188(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d3
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L122
	tst.b 125(%a2)
	jne .L122
.L123:
	tst.l %d0
	jle .L125
	tst.b 284(%a2)
	jeq .L196
.L125:
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
	jra .L121
.L122:
	tst.l %d0
	jlt .L249
.L124:
	cmp.w #1,%d2
	jne .L123
	tst.b 125(%a2)
	jne .L123
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
	jra .L121
.L249:
	tst.b 284(%a2)
	jne .L124
.L196:
	move.w 234(%a2),%d0
	jra .L121
.L224:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 252(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d1
	add.w #-30,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #40,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodDropsss
	lea (12,%sp),%sp
	tst.b 106(%a2)
	jne .L238
	jra .L77
.L127:
	move.w 252(%a2),%d2
	move.w %d2,%a4
	lea ___mulsf3,%a5
	move.l #0x3f000000,-(%sp)
	move.l 188(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d3
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L129
	tst.b 125(%a2)
	jne .L129
.L130:
	tst.l %d0
	jle .L132
	tst.b 284(%a2)
	jeq .L197
.L132:
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
.L252:
	move.l %a4,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	jra .L250
.L129:
	tst.l %d0
	jlt .L251
.L131:
	cmp.w #1,%d2
	jne .L130
	tst.b 125(%a2)
	jne .L130
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
	jra .L252
.L251:
	tst.b 284(%a2)
	jne .L131
.L197:
	move.w 234(%a2),%d0
	move.l %a4,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	jra .L250
.L95:
	tst.b 112(%a2)
	jeq .L97
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L136:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 119(%a2)
	jeq .L137
	jra .L234
.L174:
	tst.l %d0
	jlt .L253
.L176:
	cmp.w #1,%d3
	jne .L175
	tst.b %d2
	jne .L175
	add.w %d0,234(%a2)
	jra .L177
.L253:
	tst.b 284(%a2)
	jne .L176
	jra .L177
.L97:
	move.l 248(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L94
.L185:
	move.w 236(%a2),%d0
	cmp.w #90,%d0
	jle .L187
	move.b #1,119(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	move.w #90,236(%a2)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 248(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	jra .L248
.L144:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
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
	jra .L145
.L187:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	jra .L248
.L235:
	move.b #1,126(%a2)
	move.w 252(%a2),%d1
	move.w %d1,%d0
	ext.l %d0
	lsl.l #4,%d0
	cmp.w #1,%d1
	jeq .L139
	tst.b 125(%a2)
	jne .L139
.L140:
	tst.l %d0
	jle .L143
	tst.b 284(%a2)
	jeq .L142
.L143:
	add.w %d0,234(%a2)
.L142:
	move.w #48,236(%a2)
.L255:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L139:
	tst.l %d0
	jlt .L254
.L141:
	cmp.w #1,%d1
	jne .L140
	tst.b 125(%a2)
	jne .L140
	add.w %d0,234(%a2)
	jra .L142
.L254:
	tst.b 284(%a2)
	jne .L141
	move.w #48,236(%a2)
	jra .L255
.L148:
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
	jra .L145
.L239:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L101:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
	.even
	.globl	__Z17fighterResetFlagsP7Fighter
__Z17fighterResetFlagsP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 162(%a0),%d0
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
	clr.b 81(%a0)
	clr.b 82(%a0)
	clr.b 83(%a0)
	clr.b 123(%a0)
	clr.b 84(%a0)
	clr.b 85(%a0)
	clr.b 86(%a0)
	clr.b 87(%a0)
	clr.b 88(%a0)
	clr.b 89(%a0)
	clr.b 90(%a0)
	clr.b 91(%a0)
	clr.b 92(%a0)
	clr.b 93(%a0)
	clr.b 94(%a0)
	clr.b 96(%a0)
	clr.b 95(%a0)
	clr.b 97(%a0)
	clr.b 216(%a0)
	clr.b 98(%a0)
	clr.b 99(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 124(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 127(%a0)
	clr.b 106(%a0)
	clr.b 107(%a0)
	clr.b 108(%a0)
	clr.b 109(%a0)
	clr.b 110(%a0)
	clr.b 111(%a0)
	clr.b 112(%a0)
	clr.b 113(%a0)
	clr.b 115(%a0)
	clr.b 116(%a0)
	clr.b 117(%a0)
	clr.b 118(%a0)
	clr.b 119(%a0)
	clr.b 120(%a0)
	clr.b 121(%a0)
	clr.b 122(%a0)
	clr.b 131(%a0)
	clr.b 132(%a0)
	clr.b 133(%a0)
	clr.b 136(%a0)
	clr.b 137(%a0)
	clr.b 145(%a0)
	clr.b 146(%a0)
	clr.b 156(%a0)
	clr.b 157(%a0)
	clr.b 246(%a0)
	clr.b 254(%a0)
	clr.b 255(%a0)
	move.b #1,284(%a0)
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
	move.b #1,130(%a2)
	clr.l 242(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	addq.l #4,%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 121(%a0),%d0
	jne .L261
	tst.b 88(%a0)
	jne .L261
.L262:
	tst.b 90(%a1)
	jne .L290
.L264:
	tst.b 91(%a1)
	jeq .L266
	tst.b 87(%a0)
	jne .L266
	move.b #1,107(%a0)
	moveq #2,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	addq.l #5,170(%a1)
	move.b #1,174(%a1)
.L265:
	tst.b %d0
	jne .L260
.L285:
	tst.b 88(%a0)
	jeq .L278
.L291:
	tst.b 87(%a0)
	jeq .L278
	move.b #1,89(%a0)
	move.b #1,133(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a0)
.L281:
	tst.b 124(%a1)
	jeq .L260
	move.w 234(%a1),140(%a0)
	move.w 236(%a1),142(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,127(%a0)
	move.b #1,137(%a0)
	clr.b 144(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a1)
.L260:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L261:
	tst.b 130(%a0)
	jne .L262
	tst.b %d0
	jne .L260
	tst.b 88(%a0)
	jeq .L285
	move.b #1,89(%a0)
	move.b #1,133(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a0)
	tst.b 88(%a0)
	jne .L291
.L278:
	tst.b 98(%a1)
	jeq .L280
	move.b #1,114(%a0)
	moveq #4,%d0
	move.l %d0,242(%a0)
	clr.b 246(%a0)
	moveq #10,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L281
.L290:
	tst.b 87(%a0)
	jne .L264
	move.b #1,106(%a0)
	moveq #2,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	addq.l #5,170(%a1)
	move.b #1,174(%a1)
	jra .L265
.L266:
	tst.b 92(%a1)
	jeq .L267
	tst.b 87(%a0)
	jne .L267
	move.b #1,106(%a0)
	moveq #5,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
.L292:
	tst.b %d0
	jeq .L285
	jra .L260
.L267:
	tst.b 93(%a1)
	jeq .L268
	tst.b 87(%a0)
	jne .L268
	move.b #1,108(%a0)
	moveq #5,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L292
.L268:
	tst.b 99(%a1)
	jeq .L269
	tst.b 87(%a0)
	jeq .L293
.L269:
	tst.b 100(%a1)
	jeq .L270
	tst.b 87(%a0)
	jeq .L294
.L270:
	tst.b 94(%a1)
	jeq .L272
	move.b #1,110(%a0)
	clr.b 144(%a1)
	move.b #1,146(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a1)
	moveq #5,%d1
	move.l %d1,242(%a0)
	move.b #1,246(%a0)
	move.b #10,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	tst.b %d0
	jeq .L285
	jra .L260
.L280:
	tst.b 102(%a1)
	jeq .L281
	move.b #1,109(%a0)
	clr.b 144(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a1)
	moveq #2,%d0
	move.l %d0,242(%a0)
	clr.b 246(%a0)
	addq.l #5,170(%a1)
	move.b #1,174(%a1)
	jra .L281
.L272:
	tst.b 95(%a1)
	jne .L295
	tst.b 97(%a1)
	jeq .L274
	move.b #1,113(%a0)
	clr.b 144(%a1)
	move.b #1,145(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a1)
	moveq #8,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L292
.L293:
	move.b #1,108(%a0)
	moveq #6,%d1
	move.l %d1,242(%a0)
	move.b #1,246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
.L297:
	tst.b %d0
	jeq .L285
	jra .L260
.L294:
	move.b #1,111(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L296
	moveq #4,%d1
.L298:
	move.l %d1,242(%a0)
	move.b #1,246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L297
.L295:
	move.b #1,110(%a0)
	clr.b 144(%a1)
	move.b #1,146(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a1)
	moveq #4,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L292
.L296:
	move.b #1,112(%a0)
	moveq #4,%d1
	jra .L298
.L274:
	tst.b 96(%a1)
	jeq .L275
	move.b #1,115(%a0)
	clr.b 144(%a1)
	move.b #1,146(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a1)
	moveq #6,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L292
.L275:
	tst.b 101(%a1)
	jeq .L265
	move.b #1,116(%a0)
	clr.b 144(%a1)
	move.b #1,146(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a1)
	moveq #4,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	move.b #50,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	tst.b %d0
	jeq .L285
	jra .L260
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14396,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a4
	tst.b 122(%a3)
	jeq .L301
	move.l 4(%a4),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L315
.L301:
	tst.b 122(%a4)
	jeq .L302
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L316
.L302:
	lea __Z26stageGetFighterHitboxIndexv,%a2
	jsr (%a2)
	move.l %d0,%d3
	jsr (%a2)
	move.l %d0,%d2
	jsr (%a2)
	move.l %d0,%a5
	jsr (%a2)
	move.l %d3,%a0
	pea 7(%a0)
	move.l %d2,-(%sp)
	pea 7(%a5)
	move.l %d0,-(%sp)
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L300
	move.l colliders,%a2
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a2,%d2.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L305
.L320:
	cmp.w #0,%a0
	jlt .L300
	move.l 188(%a1),%d0
	move.l 188(%a0),%d1
	move.l sprite,%a0
	move.l %d0,%d3
	add.l %d0,%d3
	add.l %d0,%d3
	lsl.l #6,%d3
	moveq #-1,%d4
	move.l %d4,112(%a0,%d3.l)
	move.l %d1,%d3
	add.l %d1,%d3
	add.l %d1,%d3
	lsl.l #6,%d3
	move.l %d4,112(%a0,%d3.l)
	moveq #61,%d3
	cmp.l %d0,%d3
	jeq .L317
	moveq #56,%d3
	cmp.l %d0,%d3
	jeq .L318
	moveq #62,%d3
	cmp.l %d0,%d3
	jne .L310
	moveq #56,%d4
	cmp.l %d1,%d4
	jeq .L319
.L313:
	addq.l #8,%d2
.L321:
	lea (%a2,%d2.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L320
.L305:
	cmp.w #0,%a0
	jge .L313
.L300:
	movem.l -28(%fp),#15388
	unlk %fp
	rts
.L318:
	moveq #59,%d4
	cmp.l %d1,%d4
	jne .L313
	tst.b 82(%a3)
	jeq .L313
	move.w 234(%a3),%d0
	cmp.w #10,%d0
	jle .L313
	cmp.w #328,%d0
	jgt .L313
	move.w 234(%a4),%d0
	cmp.w #10,%d0
	jle .L313
	cmp.w #328,%d0
	jgt .L313
	move.b #1,122(%a3)
	move.b #1,132(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,218(%a4)
	addq.l #8,%d2
	jra .L321
.L317:
	moveq #59,%d4
	cmp.l %d1,%d4
	jne .L313
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	move.l colliders,%a2
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L321
.L310:
	moveq #59,%d3
	cmp.l %d0,%d3
	jne .L313
	moveq #56,%d4
	cmp.l %d1,%d4
	jne .L313
	tst.b 82(%a4)
	jeq .L313
	move.b #1,122(%a4)
	move.b #1,132(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,218(%a3)
	addq.l #8,%d2
	jra .L321
.L319:
	move.l %a3,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a5)
	move.l colliders,%a2
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L321
.L315:
	clr.b 122(%a3)
	jra .L301
.L316:
	clr.b 122(%a4)
	jra .L302
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 252(%a1),%d0
	cmp.w #1,%d0
	jeq .L337
	cmp.w #-1,%d0
	jeq .L338
.L326:
	move.w 252(%a0),%d0
	cmp.w #1,%d0
	jeq .L339
.L327:
	cmp.w #-1,%d0
	jne .L323
	move.w 234(%a0),%a2
	add.l _turnOffset,%a2
	move.w 234(%a1),%a1
	cmp.l %a2,%a1
	jle .L323
.L334:
	tst.b 123(%a0)
	jne .L323
	clr.b 255(%a0)
	move.b #1,123(%a0)
	move.b #1,254(%a0)
.L323:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L338:
	move.w 234(%a1),%a3
	add.l _turnOffset,%a3
	move.w 234(%a0),%a2
	cmp.l %a3,%a2
	jle .L326
	tst.b 123(%a1)
	jne .L326
.L340:
	clr.b 255(%a1)
	move.b #1,123(%a1)
	move.b #1,254(%a1)
	move.w 252(%a0),%d0
	cmp.w #1,%d0
	jne .L327
.L339:
	move.w 234(%a0),%a2
	move.w 234(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L334
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L337:
	move.w 234(%a1),%a3
	move.w 234(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L326
	tst.b 123(%a1)
	jne .L326
	jra .L340
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 252(%a0),%d0
	cmp.w #1,%d0
	jeq .L349
	cmp.w #-1,%d0
	jeq .L350
.L344:
	clr.b 128(%a0)
	clr.b 128(%a1)
.L342:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L350:
	move.w 234(%a1),%a3
	move.w 234(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L344
.L346:
	move.b #1,128(%a0)
	move.b #1,128(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L349:
	move.w 234(%a1),%a3
	move.w 234(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L346
	clr.b 128(%a0)
	clr.b 128(%a1)
	jra .L342
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 238(%a1),16024(%a0)
	move.l 12(%fp),%a1
	move.l 238(%a1),%d0
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
	move.l 12(%fp),242(%a1)
	move.b 19(%fp),246(%a1)
	move.l 24(%fp),%d0
	add.l %d0,170(%a0)
	move.b #1,174(%a0)
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
	tst.b 130(%a2)
	jne .L354
	tst.b 246(%a2)
	jne .L361
	move.l 238(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,238(%a2)
	jle .L362
.L357:
	move.l sprite,%a0
	tst.b 256(%a2)
	jeq .L358
.L363:
	move.l %d0,16024(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L358:
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
.L354:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L361:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 238(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,238(%a2)
	jgt .L357
.L362:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 256(%a2)
	jeq .L358
	jra .L363
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,252(%a0)
	jeq .L370
	tst.b 284(%a0)
	jeq .L365
.L367:
	addq.w #2,234(%a0)
.L365:
	unlk %fp
	rts
.L370:
	tst.b 125(%a0)
	jeq .L367
	tst.b 284(%a0)
	jne .L367
	jra .L365
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,252(%a0)
	jeq .L373
	tst.b 125(%a0)
	jeq .L374
.L373:
	tst.b 284(%a0)
	jeq .L372
.L374:
	subq.w #2,234(%a0)
.L372:
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
	tst.b 80(%a0)
	jeq .L379
	move.l 162(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 234(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 236(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L379:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L387
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L387:
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
	move.w #90,236(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 234(%a2),%d0
	cmp.w #11,%d0
	jle .L403
.L391:
	cmp.w #280,%d0
	jgt .L395
.L400:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L403:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L399
	move.w 234(%a2),%d0
	cmp.w #11,%d0
	jgt .L391
	cmp.w #280,234(%a3)
	jgt .L399
	jsr (%a4)
	tst.b %d0
	jne .L399
	move.w 234(%a2),%d0
	cmp.w #280,%d0
	jle .L400
.L395:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L404
.L399:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L404:
	cmp.w #328,234(%a2)
	jle .L400
	cmp.w #10,234(%a3)
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
	move.w 252(%a0),%d1
	cmp.w #1,%d1
	jeq .L407
	tst.b 125(%a0)
	jne .L407
.L408:
	tst.l %d0
	jle .L411
	tst.b 284(%a0)
	jeq .L406
.L411:
	add.w %d0,234(%a0)
.L406:
	unlk %fp
	rts
.L407:
	tst.l %d0
	jlt .L414
	cmp.w #1,%d1
	jne .L408
.L415:
	tst.b 125(%a0)
	jne .L408
	add.w %d0,234(%a0)
	jra .L406
.L414:
	tst.b 284(%a0)
	jeq .L406
	cmp.w #1,%d1
	jne .L408
	jra .L415
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14384,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 121(%a2)
	jne .L418
	tst.b 82(%a2)
	jeq .L649
.L419:
	clr.b 80(%a2)
.L421:
	move.l 176(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,166(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L650
.L422:
	tst.b 87(%a2)
	jeq .L423
	tst.b 105(%a2)
	jeq .L423
	tst.b 144(%a2)
	jeq .L423
	tst.b 97(%a2)
	jne .L425
	clr.b 105(%a2)
	move.b #1,97(%a2)
	move.b #1,83(%a2)
	clr.b 87(%a2)
	clr.w 16(%a3)
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L425:
	move.l 314(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 145(%a2)
	jeq .L651
.L427:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 148(%a2),%d0
	cmp.l %a0,%d0
	jgt .L652
	clr.b 145(%a2)
.L430:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L653
.L432:
	move.l 166(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L617
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L617
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L617
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L617
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L617
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L617
	move.b #1,105(%a2)
.L617:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L417
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L619
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L619
	and.l JAGPAD_RIGHT,%d0
	jne .L619
	move.b #1,103(%a2)
.L619:
	move.b #1,104(%a2)
.L417:
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L418:
	clr.b 80(%a2)
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L649:
	tst.b 87(%a2)
	jne .L419
	tst.b 84(%a2)
	jne .L419
	tst.b 86(%a2)
	jne .L419
	tst.b 85(%a2)
	jne .L419
	tst.b 83(%a2)
	jeq .L421
	clr.b 80(%a2)
	jra .L421
.L650:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L422
.L423:
	tst.b 97(%a2)
	jne .L425
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L433
	tst.l %d1
	jeq .L434
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L435
	cmp.w #1,252(%a2)
	jeq .L433
.L435:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L434
	cmp.w #-1,252(%a2)
	jeq .L433
.L434:
	tst.b 91(%a2)
	jeq .L654
.L437:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L444
	clr.b 91(%a2)
.L444:
	move.l 294(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 394(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L651:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 145(%a2)
	jne .L427
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L432
	jra .L653
.L654:
	tst.l %d3
	jeq .L655
.L445:
	tst.b 105(%a2)
	jeq .L446
	tst.b 144(%a2)
	jeq .L446
	tst.b 84(%a2)
	jne .L446
	tst.b 122(%a2)
	jeq .L446
	tst.b 100(%a2)
	jne .L449
	clr.b 105(%a2)
	move.b #1,100(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
.L451:
	move.l 326(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L433:
	tst.b 105(%a2)
	jeq .L434
	tst.b 144(%a2)
	jeq .L434
	tst.b 84(%a2)
	jne .L434
	tst.b 122(%a2)
	jne .L434
	tst.b 91(%a2)
	jne .L437
	clr.b 105(%a2)
	move.b #1,91(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d2
	move.b 256(%a2),%d2
	move.l 248(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L441
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L442
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L656
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L660:
	move.l 294(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 394(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L655:
	tst.l %d1
	jeq .L446
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L447
	cmp.w #1,252(%a2)
	jeq .L445
.L447:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L446
	cmp.w #-1,252(%a2)
	jeq .L445
.L446:
	tst.b 100(%a2)
	jne .L449
	tst.l %d1
	jeq .L452
	tst.b 105(%a2)
	jeq .L452
	tst.b 144(%a2)
	jeq .L452
	tst.b 84(%a2)
	jne .L452
	tst.b 128(%a2)
	jeq .L452
	tst.b 124(%a2)
	jne .L454
	clr.b 105(%a2)
	move.b #1,124(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L456
	moveq #6,%d2
	cmp.l %d0,%d2
	jcc .L457
	moveq #7,%d3
	cmp.l %d0,%d3
	jeq .L657
.L456:
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L459:
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L653:
	clr.b 97(%a2)
	move.b #1,144(%a2)
	jra .L432
.L449:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L451
	clr.b 100(%a2)
	move.b #1,144(%a2)
	move.l 326(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L657:
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L452:
	tst.b 124(%a2)
	jne .L454
	tst.l %d1
	jeq .L460
	tst.b 105(%a2)
	jeq .L460
	tst.b 144(%a2)
	jeq .L460
	tst.b 84(%a2)
	jne .L460
	tst.b 128(%a2)
	jne .L460
	tst.b 90(%a2)
	jne .L462
	clr.b 105(%a2)
	move.b #1,90(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d1
	move.b 256(%a2),%d1
	move.l 248(%a2),%d0
	move.l (%a2),%a0
	moveq #6,%d2
	cmp.l %a0,%d2
	jeq .L466
	moveq #7,%d3
	cmp.l %a0,%d3
	jeq .L467
	move.b #4,%d2
	cmp.l %a0,%d2
	jeq .L658
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L469:
	move.l 290(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 390(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L454:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L459
	clr.b 124(%a2)
	move.b #1,144(%a2)
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L652:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 418(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 145(%a2)
	jne .L432
	jra .L430
.L460:
	tst.b 90(%a2)
	jne .L462
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L470
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L470
	cmp.w #1,252(%a2)
	jeq .L471
.L470:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L472
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L472
	cmp.w #-1,252(%a2)
	jeq .L471
.L472:
	tst.b 98(%a2)
	jeq .L659
.L474:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L476
	clr.b 98(%a2)
.L476:
	move.l 318(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L462:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L469
	clr.b 90(%a2)
	move.l 290(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 390(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L659:
	tst.l %d1
	jeq .L477
	cmp.w #1,252(%a2)
	jeq .L478
.L477:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L479
	cmp.w #-1,252(%a2)
	jeq .L478
.L479:
	tst.b 99(%a2)
	jne .L482
	move.l JAGPAD_9,%d3
	move.l %d0,%d4
	and.l %d3,%d4
	jne .L485
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L486
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L487
	cmp.w #1,252(%a2)
	jeq .L485
.L487:
	tst.l %d1
	jeq .L486
	cmp.w #-1,252(%a2)
	jeq .L485
.L486:
	tst.b 93(%a2)
	jne .L489
	move.l JAGPAD_A,%d4
	or.l %d4,%d3
	and.l %d0,%d3
	jeq .L492
	tst.b 105(%a2)
	jeq .L492
	tst.b 144(%a2)
	jeq .L492
	tst.b 84(%a2)
	jne .L492
	tst.b 87(%a2)
	jne .L492
	tst.b 128(%a2)
	jeq .L492
	tst.b 101(%a2)
	jne .L494
	clr.b 105(%a2)
	move.b #1,101(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
.L496:
	move.l 330(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L482:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L484
	clr.b 99(%a2)
.L484:
	move.l 322(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L471:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L472
	tst.b 105(%a2)
	jeq .L472
	tst.b 144(%a2)
	jeq .L472
	tst.b 84(%a2)
	jne .L472
	tst.b 98(%a2)
	jne .L474
	clr.b 105(%a2)
	move.b #1,83(%a2)
	move.b #1,98(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 318(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L478:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jne .L480
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jeq .L479
.L480:
	tst.b 105(%a2)
	jeq .L479
	tst.b 144(%a2)
	jeq .L479
	tst.b 84(%a2)
	jne .L479
	tst.b 99(%a2)
	jne .L482
	clr.b 105(%a2)
	move.b #1,83(%a2)
	move.b #1,99(%a2)
	clr.w 16(%a3)
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 322(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L489:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L491
	clr.b 93(%a2)
.L491:
	move.l 302(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 402(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L485:
	tst.b 105(%a2)
	jeq .L486
	tst.b 144(%a2)
	jeq .L486
	tst.b 84(%a2)
	jne .L486
	tst.b 87(%a2)
	jne .L486
	tst.b 122(%a2)
	jne .L486
	tst.b 93(%a2)
	jne .L489
	clr.b 105(%a2)
	move.b #1,93(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 302(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 402(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L656:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L660
.L442:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L660
.L441:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L660
.L457:
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L492:
	tst.b 101(%a2)
	jne .L494
	and.l %d0,%d4
	jeq .L497
	tst.b 105(%a2)
	jeq .L497
	tst.b 144(%a2)
	jeq .L497
	tst.b 84(%a2)
	jne .L497
	tst.b 87(%a2)
	jne .L497
	tst.b 122(%a2)
	jne .L497
	tst.b 92(%a2)
	jne .L499
	clr.b 105(%a2)
	move.b #1,92(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L501:
	move.l 298(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 398(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L494:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L496
	clr.b 101(%a2)
	move.b #1,144(%a2)
	move.l 330(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L497:
	tst.b 92(%a2)
	jne .L499
	tst.l %d3
	jeq .L502
	tst.b 105(%a2)
	jeq .L502
	tst.b 144(%a2)
	jeq .L502
	tst.b 84(%a2)
	jne .L502
	tst.b 87(%a2)
	jeq .L502
	tst.b 102(%a2)
	jne .L504
	clr.b 105(%a2)
	move.b #1,102(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L506:
	move.l 334(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L658:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L469
.L467:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L469
.L466:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L469
.L502:
	tst.b 102(%a2)
	jeq .L661
.L504:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L506
	clr.b 102(%a2)
	move.b #1,144(%a2)
	move.b #1,87(%a2)
	move.w #1,16(%a3)
	move.l 334(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L661:
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jne .L507
	move.l %d0,%d3
	and.l JAGPAD_8,%d3
	jeq .L508
.L507:
	tst.b 84(%a2)
	jne .L508
	tst.b 144(%a2)
	jeq .L508
	tst.b 88(%a2)
	jne .L509
	move.b #1,88(%a2)
	clr.w 16(%a3)
.L509:
	and.l JAGPAD_DOWN,%d0
	jeq .L510
	tst.b 87(%a2)
	jne .L511
	move.b #1,87(%a2)
	clr.b 82(%a2)
	clr.w 16(%a3)
.L511:
	tst.b 89(%a2)
	jne .L512
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 382(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L508:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L515
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L516
	cmp.w #1,252(%a2)
	jeq .L517
.L516:
	tst.l %d1
	jeq .L515
	cmp.w #-1,252(%a2)
	jeq .L517
.L515:
	tst.b 85(%a2)
	jne .L519
	tst.l %d3
	jeq .L545
	tst.l %d1
	jeq .L546
	cmp.w #1,252(%a2)
	jeq .L547
.L546:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L545
	cmp.w #-1,252(%a2)
	jeq .L547
.L545:
	tst.b 86(%a2)
	jeq .L662
.L549:
	move.l 166(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L551
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L552
.L551:
	tst.b 86(%a2)
	jeq .L552
	tst.b 156(%a2)
	jne .L552
	tst.b 216(%a2)
	jeq .L553
.L552:
	tst.b 94(%a2)
	jeq .L554
	tst.b 156(%a2)
	jne .L554
	tst.b 86(%a2)
	jeq .L554
.L553:
	tst.b 96(%a2)
	jne .L554
	tst.b 94(%a2)
	jne .L555
	clr.b 105(%a2)
	move.b #1,216(%a2)
	move.b #1,94(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L555:
	tst.b 146(%a2)
	jeq .L663
.L556:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L664
	clr.b 146(%a2)
	clr.b 96(%a2)
.L557:
	move.l 306(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 166(%a2),%d0
.L554:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L559
	and.l JAGPAD_9,%d0
	jeq .L560
.L559:
	tst.b 86(%a2)
	jeq .L560
	tst.b 156(%a2)
	jne .L560
	tst.b 216(%a2)
	jeq .L561
.L560:
	tst.b 96(%a2)
	jeq .L562
	tst.b 156(%a2)
	jne .L562
	tst.b 86(%a2)
	jeq .L562
.L561:
	tst.b 94(%a2)
	jne .L562
	tst.b 96(%a2)
	jne .L563
	clr.b 105(%a2)
	move.b #1,216(%a2)
	move.b #1,96(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L563:
	tst.b 146(%a2)
	jeq .L665
.L564:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L666
	clr.b 146(%a2)
	clr.b 96(%a2)
.L565:
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L562:
	tst.w 16(%a3)
	jne .L567
	tst.b 94(%a2)
	jne .L567
	tst.b 96(%a2)
	jeq .L667
.L567:
	tst.b 86(%a2)
	jeq .L432
	tst.b 156(%a2)
	jne .L568
	move.l 158(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L568
	tst.b 157(%a2)
	jne .L569
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L569
	tst.b 94(%a2)
	jne .L569
	tst.b 96(%a2)
	jne .L569
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,157(%a2)
	addq.l #8,%sp
.L569:
	tst.b 146(%a2)
	jne .L570
	tst.b 285(%a2)
	jne .L571
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 204(%a2),%d1
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
.L571:
	move.l 286(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,236(%a2)
	addq.l #1,%a0
	move.l %a0,286(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L572
	clr.l 286(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,156(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
.L572:
	move.l 258(%a2),-(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,262(%a2)
.L570:
	tst.b 94(%a2)
	jne .L573
	tst.b 96(%a2)
	jne .L573
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 366(%a2),-(%sp)
	moveq #20,%d0
	sub.l 286(%a2),%d0
	move.l %d0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L573:
	move.w raptor_ticks,%a0
	move.l %a0,158(%a2)
.L568:
	clr.l -(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L574
	cmp.w #89,236(%a2)
	jgt .L641
.L574:
	tst.b 156(%a2)
	jeq .L432
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 362(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L432
	move.b #1,144(%a2)
	clr.b 86(%a2)
.L643:
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 96(%a2)
	clr.b 157(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L432
.L499:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L501
	clr.b 92(%a2)
	move.l 298(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 398(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L517:
	tst.b 104(%a2)
	jeq .L515
	tst.b 144(%a2)
	jeq .L515
	tst.b 85(%a2)
	jne .L519
	clr.b 144(%a2)
	clr.b 216(%a2)
	clr.b 104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 266(%a2),262(%a2)
	clr.b 156(%a2)
	clr.l 286(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,158(%a2)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L519:
	move.l 166(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L521
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L522
.L521:
	tst.b 85(%a2)
	jeq .L522
	tst.b 156(%a2)
	jne .L522
	tst.b 216(%a2)
	jeq .L523
.L522:
	tst.b 94(%a2)
	jeq .L524
	tst.b 156(%a2)
	jne .L524
	tst.b 85(%a2)
	jeq .L524
.L523:
	tst.b 96(%a2)
	jne .L524
	tst.b 94(%a2)
	jne .L525
	clr.b 105(%a2)
	move.b #1,216(%a2)
	move.b #1,94(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L525:
	tst.b 146(%a2)
	jeq .L668
.L526:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L669
	clr.b 146(%a2)
	clr.b 94(%a2)
.L527:
	move.l 306(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 166(%a2),%d0
.L524:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L529
	and.l JAGPAD_9,%d0
	jeq .L530
.L529:
	tst.b 85(%a2)
	jeq .L530
	tst.b 156(%a2)
	jne .L530
	tst.b 216(%a2)
	jeq .L531
.L530:
	tst.b 96(%a2)
	jeq .L532
	tst.b 156(%a2)
	jne .L532
	tst.b 85(%a2)
	jeq .L532
.L531:
	tst.b 94(%a2)
	jne .L532
	tst.b 96(%a2)
	jne .L533
	clr.b 105(%a2)
	move.b #1,216(%a2)
	move.b #1,96(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L533:
	tst.b 146(%a2)
	jeq .L670
.L534:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L671
	clr.b 146(%a2)
	clr.b 96(%a2)
.L535:
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L532:
	tst.w 16(%a3)
	jne .L537
	tst.b 94(%a2)
	jne .L537
	tst.b 96(%a2)
	jeq .L672
.L537:
	tst.b 85(%a2)
	jeq .L432
	tst.b 156(%a2)
	jne .L538
	move.l 158(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L538
	tst.b 157(%a2)
	jne .L539
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L539
	tst.b 94(%a2)
	jne .L539
	tst.b 96(%a2)
	jne .L539
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,157(%a2)
	addq.l #8,%sp
.L539:
	tst.b 146(%a2)
	jeq .L673
.L540:
	tst.b 94(%a2)
	jne .L542
	tst.b 96(%a2)
	jne .L542
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 366(%a2),-(%sp)
	move.l 286(%a2),-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L542:
	move.w raptor_ticks,%a0
	move.l %a0,158(%a2)
.L538:
	clr.l -(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L543
	cmp.w #89,236(%a2)
	jgt .L641
.L543:
	tst.b 156(%a2)
	jeq .L432
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 362(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L432
	move.b #1,144(%a2)
	clr.b 85(%a2)
	jra .L643
.L673:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 204(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 286(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,236(%a2)
	addq.l #1,%a0
	move.l %a0,286(%a2)
	addq.l #8,%sp
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L541
	clr.l 286(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,156(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
.L541:
	move.l 258(%a2),-(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,262(%a2)
	jra .L540
.L672:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L642:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 366(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L671:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 414(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L535
.L670:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 414(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 146(%a2)
	jeq .L535
	jra .L534
.L669:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 406(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L527
.L668:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 406(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 146(%a2)
	jeq .L527
	jra .L526
.L510:
	tst.b 87(%a2)
	jeq .L513
	clr.b 87(%a2)
.L513:
	tst.b 89(%a2)
	jne .L514
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 374(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L512:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 386(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 34(%a2),%a0
.L645:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L432
	clr.b 89(%a2)
	jra .L432
.L514:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 378(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 30(%a2),%a0
	jra .L645
.L666:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 414(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L565
.L665:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 414(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 146(%a2)
	jeq .L565
	jra .L564
.L667:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L642
.L641:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 96(%a2)
	move.b #1,156(%a2)
	clr.l 262(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
	jra .L432
.L664:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 406(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L557
.L663:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 406(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 146(%a2)
	jeq .L557
	jra .L556
.L547:
	tst.b 104(%a2)
	jeq .L545
	tst.b 144(%a2)
	jeq .L545
	tst.b 86(%a2)
	jne .L549
	clr.b 144(%a2)
	clr.b 216(%a2)
	clr.b 104(%a2)
	move.b #1,86(%a2)
	clr.w 16(%a3)
	clr.l 286(%a2)
	move.l 266(%a2),262(%a2)
	clr.b 156(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,158(%a2)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L549
.L662:
	tst.l %d1
	jeq .L576
	tst.b 144(%a2)
	jeq .L576
	tst.b 84(%a2)
	jne .L576
	tst.b 82(%a2)
	jne .L577
	clr.w 16(%a3)
.L577:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	and.l #255,%d2
	move.l %d2,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 354(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.b #1,82(%a2)
	clr.b 87(%a2)
	clr.b 102(%a2)
	clr.b 88(%a2)
	clr.b 83(%a2)
	clr.b 90(%a2)
	clr.b 91(%a2)
	lea (32,%sp),%sp
	tst.w 234(%a2)
	jle .L432
	tst.b 122(%a2)
	jne .L578
	move.l 184(%a2),%d0
	cmp.w #-1,252(%a2)
	jne .L579
	move.l 180(%a2),%d0
.L579:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L640:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L432
.L578:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L432
	move.l 212(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L640
.L576:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L580
	tst.b 144(%a2)
	jeq .L580
	tst.b 84(%a2)
	jne .L580
	tst.b 82(%a2)
	jne .L581
	clr.w 16(%a3)
.L581:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	move.b %d2,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 354(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.b #1,82(%a2)
	clr.b 87(%a2)
	clr.b 102(%a2)
	clr.b 88(%a2)
	clr.b 83(%a2)
	clr.b 90(%a2)
	clr.b 91(%a2)
	lea (32,%sp),%sp
	cmp.w #280,234(%a2)
	jgt .L432
	tst.b 122(%a2)
	jne .L582
	move.l 180(%a2),%d0
	cmp.w #-1,252(%a2)
	jne .L583
	move.l 184(%a2),%d0
.L583:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L640
.L582:
	move.l 212(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L640
.L580:
	and.l JAGPAD_DOWN,%d0
	jeq .L584
	tst.b 144(%a2)
	jeq .L584
	tst.b 84(%a2)
	jne .L584
	tst.b 87(%a2)
	jne .L585
	move.b #1,87(%a2)
	clr.b 82(%a2)
	clr.b 83(%a2)
	clr.w 16(%a3)
.L585:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 370(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L584:
	tst.l %d3
	jeq .L586
	tst.b 103(%a2)
	jeq .L586
	tst.b 144(%a2)
	jne .L587
.L586:
	tst.b 84(%a2)
	jeq .L674
.L588:
	move.l 166(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L590
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L591
.L590:
	tst.b 84(%a2)
	jeq .L591
	tst.b 156(%a2)
	jne .L591
	tst.b 216(%a2)
	jeq .L592
.L591:
	tst.b 94(%a2)
	jeq .L593
	tst.b 156(%a2)
	jne .L593
	tst.b 84(%a2)
	jeq .L593
.L592:
	tst.b 95(%a2)
	jne .L593
	tst.b 94(%a2)
	jne .L594
	clr.b 105(%a2)
	move.b #1,216(%a2)
	move.b #1,83(%a2)
	move.b #1,94(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L594:
	tst.b 146(%a2)
	jeq .L675
.L595:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L676
	clr.b 146(%a2)
	clr.b 94(%a2)
.L596:
	move.l 306(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 166(%a2),%d0
.L593:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L598
	and.l JAGPAD_9,%d0
	jeq .L599
.L598:
	tst.b 84(%a2)
	jeq .L599
	tst.b 156(%a2)
	jne .L599
	tst.b 216(%a2)
	jeq .L600
.L599:
	tst.b 95(%a2)
	jeq .L601
	tst.b 156(%a2)
	jne .L601
	tst.b 84(%a2)
	jeq .L601
.L600:
	tst.b 94(%a2)
	jne .L601
	tst.b 95(%a2)
	jne .L602
	clr.b 105(%a2)
	move.b #1,216(%a2)
	move.b #1,95(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L602:
	tst.b 146(%a2)
	jeq .L677
.L603:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L678
	clr.b 146(%a2)
	clr.b 95(%a2)
.L604:
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L601:
	tst.w 16(%a3)
	jne .L606
	tst.b 94(%a2)
	jne .L606
	tst.b 95(%a2)
	jeq .L612
.L606:
	tst.b 84(%a2)
	jeq .L432
	tst.b 156(%a2)
	jne .L607
	move.l 222(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L608
	tst.b 146(%a2)
	jne .L608
	move.l 286(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,236(%a2)
	addq.l #1,%a0
	move.l %a0,286(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L609
	clr.l 286(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,156(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
.L609:
	move.l 258(%a2),-(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,262(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
.L608:
	tst.b 94(%a2)
	jne .L607
	tst.b 95(%a2)
	jne .L607
	move.w #1,16(%a3)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 362(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L607:
	clr.l -(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L610
	cmp.w #89,236(%a2)
	jgt .L679
.L610:
	tst.b 156(%a2)
	jeq .L432
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L612
	move.b #1,144(%a2)
	clr.b 84(%a2)
	clr.b 94(%a2)
	clr.b 95(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L612:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 362(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L679:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 94(%a2)
	clr.b 95(%a2)
	move.b #1,156(%a2)
	clr.l 262(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
	jra .L432
.L676:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 406(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L596
.L675:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 406(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 146(%a2)
	jeq .L596
	jra .L595
.L678:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 410(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L604
.L677:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 410(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 146(%a2)
	jeq .L604
	jra .L603
.L587:
	tst.b 84(%a2)
	jne .L588
	clr.b 103(%a2)
	clr.b 216(%a2)
	move.b #1,84(%a2)
	clr.w 16(%a3)
	clr.l 286(%a2)
	move.l 266(%a2),262(%a2)
	clr.b 156(%a2)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L588
.L674:
	tst.b 87(%a2)
	jne .L680
	tst.b 88(%a2)
	jne .L681
	tst.b 82(%a2)
	jeq .L615
	clr.b 122(%a2)
	clr.b 82(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L615:
	tst.b 80(%a2)
	jne .L616
	move.b #1,80(%a2)
	clr.b 83(%a2)
.L616:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 342(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L432
.L681:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 374(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L432
	clr.b 88(%a2)
	jra .L432
.L680:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 370(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L432
	clr.b 87(%a2)
	jra .L432
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
	jeq .L683
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L689
	jlt .L693
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L687
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L688
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L725
.L685:
	sub.w 236(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L698
	jge .L726
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L700
	cmp.l #128,%d0
	jeq .L701
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L699
.L694:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L707
	jlt .L711
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L705
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L706
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L704
	moveq #84,%d1
	not.b %d1
.L703:
	cmp.l %a1,%d1
	jge .L683
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L714
	jlt .L720
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L714
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L714
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L714
	move.w #171,%d1
.L714:
	move.w %d1,12(%a0)
.L683:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L693:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L691
	cmp.l #128,%d0
	jeq .L692
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L685
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 236(%a2),%d1
.L699:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L708:
	moveq #78,%d1
	not.b %d1
	jra .L703
.L689:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 236(%a2),%d1
.L698:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L707:
	moveq #75,%d1
	not.b %d1
	jra .L703
.L687:
	move.w %a1,%d1
	sub.w 236(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L696:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L705:
	moveq #69,%d1
	not.b %d1
	jra .L703
.L691:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 236(%a2),%d1
.L700:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L709:
	moveq #81,%d1
	not.b %d1
	jra .L703
.L725:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 236(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L704:
	moveq #66,%d1
	not.b %d1
	jra .L703
.L720:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L714
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L714
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L714
	move.w #171,%d1
	jra .L714
.L688:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 236(%a2),%d1
.L697:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L706:
	moveq #72,%d1
	not.b %d1
	jra .L703
.L692:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 236(%a2),%d1
	add.w %a1,%d1
.L701:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L710:
	moveq #87,%d1
	not.b %d1
	jra .L703
.L726:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L696
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L697
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L694
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L704
.L711:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L709
	cmp.l #128,%d0
	jeq .L710
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L708
	moveq #84,%d1
	not.b %d1
	jra .L703
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 138(%a2)
	jeq .L729
	clr.b 138(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	move.l %a0,218(%a2)
	move.l %a0,230(%a2)
	move.l %a0,158(%a2)
	move.l %a0,12(%a3)
.L729:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d1
	addq.l #8,%sp
	moveq #3,%d0
	cmp.l %d1,%d0
	jeq .L772
	move.l 76(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	move.l %d0,4(%a0)
	move.b 129(%a2),%d0
	jeq .L728
.L733:
	move.w 252(%a2),%d0
	cmp.w #-1,%d0
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 135(%a2)
	jne .L773
.L736:
	tst.b 136(%a2)
	jeq .L738
	clr.b 136(%a2)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	clr.w 16(%a3)
	move.b #1,81(%a2)
	move.w #90,236(%a2)
	moveq #1,%d2
	cmp.l %d1,%d2
	jeq .L739
	moveq #2,%d3
	cmp.l %d1,%d3
	jeq .L774
.L728:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L773:
	tst.b 113(%a2)
	jne .L736
	clr.b 135(%a2)
	move.w #90,236(%a2)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	clr.w 16(%a3)
	move.w 282(%a2),%d0
	jle .L737
	tst.b 130(%a2)
	jeq .L775
.L737:
	move.b #1,131(%a2)
	clr.b 130(%a2)
	addq.w #1,%d0
	move.w %d0,282(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L772:
	move.l sprite,%a4
	move.l 76(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	lea (%a4,%d0.l),%a0
	move.w 252(%a2),%d0
	neg.w %d0
	add.w %d0,%d0
	add.w %d0,%d0
	move.l 4(%a2),%a1
	move.l %a1,%d3
	add.l %a1,%d3
	add.l %a1,%d3
	lsl.l #6,%d3
	add.w 8(%a4,%d3.l),%d0
	move.w %d0,8(%a0)
	tst.b 80(%a2)
	jeq .L731
	tst.b 129(%a2)
	jeq .L766
	tst.b 131(%a2)
	jne .L768
	tst.b 81(%a2)
	jne .L768
	moveq #1,%d3
	move.l %d3,4(%a0)
	move.w 252(%a2),%d0
	cmp.w #-1,%d0
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 135(%a2)
	jeq .L736
	jra .L773
.L738:
	tst.b 133(%a2)
	jne .L776
.L741:
	tst.b 137(%a2)
	jeq .L747
	clr.b 137(%a2)
	clr.w 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	move.w 140(%a2),234(%a2)
	move.w 142(%a2),236(%a2)
	clr.w 140(%a2)
	clr.w 142(%a2)
	move.b #1,121(%a2)
	move.b #1,125(%a2)
.L742:
	tst.b 131(%a2)
	jne .L777
	tst.b 130(%a2)
	jeq .L756
	tst.b 121(%a2)
	jeq .L778
	tst.l 242(%a2)
	jle .L779
.L758:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 121(%a2)
	jne .L728
.L788:
	move.b #1,131(%a2)
	clr.b 130(%a2)
	addq.w #1,282(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L731:
	move.b 129(%a2),%d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
.L782:
	tst.b %d0
	jne .L733
	jra .L728
.L776:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d1
	addq.l #6,%d1
	cmp.l %a0,%d1
	jge .L741
	clr.b 133(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 130(%a2)
	jne .L742
	tst.b 246(%a2)
	jne .L780
	move.l 238(%a2),%d0
	subq.l #1,%d0
	move.l %d0,238(%a2)
	jle .L781
.L744:
	move.l sprite,%a0
	tst.b 256(%a2)
	jeq .L745
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L742
.L739:
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,12(%fp)
	move.l 248(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L774:
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,12(%fp)
	move.l 248(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L768:
	moveq #1,%d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
	jra .L782
.L747:
	tst.b 123(%a2)
	jeq .L742
	tst.b 84(%a2)
	jne .L742
	tst.b 86(%a2)
	jne .L742
	tst.b 85(%a2)
	jne .L742
	tst.b 121(%a2)
	jne .L742
	tst.b 83(%a2)
	jne .L742
	tst.b 254(%a2)
	jeq .L748
	clr.b 254(%a2)
	clr.w 16(%a3)
.L748:
	tst.b 255(%a2)
	jeq .L783
	tst.w 16(%a3)
	jle .L784
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L769:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 358(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L793:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L756:
	tst.b 81(%a2)
	jne .L785
	tst.b 132(%a2)
	jne .L786
.L760:
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
	tst.b 80(%a2)
	jeq .L728
.L790:
	move.l 162(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 234(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 236(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L766:
	clr.b %d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
	jra .L782
.L777:
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L787
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L789:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L779:
	tst.b 121(%a2)
	jeq .L728
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 121(%a2)
	jne .L728
	jra .L788
.L775:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,130(%a2)
	clr.l 242(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	addq.l #4,%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L787:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 248(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 129(%a2)
	addq.l #4,%sp
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L789
.L778:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 346(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.l 242(%a2)
	jgt .L758
	jra .L779
.L786:
	move.w 252(%a2),%d3
	lea ___mulsf3,%a4
	move.l 212(%a2),-(%sp)
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
	jeq .L761
	tst.b 125(%a2)
	jne .L761
.L762:
	tst.l %d0
	jle .L765
	tst.b 284(%a2)
	jeq .L764
.L765:
	add.w %d0,234(%a2)
.L764:
	move.l 218(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L760
	clr.b 132(%a2)
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
	tst.b 80(%a2)
	jne .L790
	jra .L728
.L761:
	tst.l %d0
	jlt .L791
.L763:
	cmp.w #1,%d3
	jne .L762
	tst.b 125(%a2)
	jne .L762
	add.w %d0,234(%a2)
	jra .L764
.L780:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 238(%a2),%d0
	subq.l #1,%d0
	move.l %d0,238(%a2)
	jgt .L744
.L781:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	jra .L744
.L791:
	tst.b 284(%a2)
	jne .L763
	jra .L764
.L784:
	clr.b 123(%a2)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L769
.L785:
	move.w #90,236(%a2)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 350(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L745:
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
	jra .L742
.L783:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L750
	move.b #1,255(%a2)
	move.w 252(%a2),%d0
	neg.w %d0
	move.w %d0,252(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L792
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
	move.l 76(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L750:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 358(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L793
.L792:
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
	move.l 76(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L750
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
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
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L801
	jge .L808
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L803
	cmp.l #128,%d0
	jeq .L804
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L809
.L797:
	moveq #21,%d0
	unlk %fp
	rts
.L808:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L806
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L800
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L797
	moveq #3,%d0
	unlk %fp
	rts
.L800:
	moveq #9,%d0
	unlk %fp
	rts
.L804:
	moveq #24,%d0
	unlk %fp
	rts
.L809:
	moveq #15,%d0
	unlk %fp
	rts
.L803:
	moveq #18,%d0
	unlk %fp
	rts
.L806:
	moveq #6,%d0
	unlk %fp
	rts
.L801:
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
	cmp.w #1,252(%a0)
	jeq .L817
	move.w 234(%a0),%a2
	sub.w 234(%a1),%a2
	cmp.w #259,%a2
	jgt .L815
.L813:
	clr.b 285(%a0)
	clr.b 285(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L817:
	move.w 234(%a1),%a2
	sub.w 234(%a0),%a2
	cmp.w #259,%a2
	jle .L813
.L815:
	move.b #1,285(%a0)
	move.b #1,285(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,138(%a0)
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
	tst.b 174(%a3)
	jne .L821
	tst.b 174(%a2)
	jeq .L820
.L821:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 174(%a3)
	jne .L829
	tst.b 174(%a2)
	jeq .L820
.L830:
	clr.b 174(%a2)
	move.l 170(%a2),%d0
	move.l %d0,_tempScore
	jne .L826
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 170(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L820:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L829:
	pea 10.w
	pea 8.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 170(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 174(%a2)
	jne .L830
	jra .L820
.L826:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L824:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L824
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #39,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	lsl.l #3,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 170(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
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
