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
	move.l #0x40800000,192(%a2)
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
	jeq .L201
.L71:
	move.b 113(%a2),%d0
	jne .L75
.L76:
	move.l 242(%a2),%d2
	tst.b 130(%a2)
	jne .L78
.L215:
	tst.b 246(%a2)
	jne .L202
	move.l 238(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,238(%a2)
	jle .L203
.L84:
	move.l sprite,%a0
	tst.b 256(%a2)
	jne .L189
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
	jeq .L204
.L90:
	moveq #0,%d1
	move.b 256(%a2),%d1
	move.l 248(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L205
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L94:
	move.b 107(%a2),%d1
	jne .L103
	tst.b 108(%a2)
	jeq .L206
.L103:
	move.w 234(%a2),%a4
	move.w 252(%a2),%d0
	cmp.w #-1,%d0
	jeq .L207
.L104:
	cmp.w #1,%d0
	jeq .L208
.L105:
	tst.b %d1
	jne .L106
	tst.b 110(%a2)
	jne .L106
	tst.b 111(%a2)
	jne .L106
	tst.b 108(%a2)
	jne .L209
	tst.b 113(%a2)
	jne .L210
.L70:
	tst.b 106(%a2)
	jeq .L77
.L223:
	tst.b 121(%a2)
	jne .L211
.L77:
	tst.b 107(%a2)
	jeq .L110
	tst.b 121(%a2)
	jne .L212
.L110:
	tst.b 108(%a2)
	jeq .L213
	tst.b 121(%a2)
	jne .L214
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
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
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
.L213:
	tst.b 110(%a2)
	jeq .L112
	tst.b 121(%a2)
	jeq .L112
.L214:
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
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
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
.L201:
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
	jeq .L215
	jra .L78
.L75:
	move.l 242(%a2),%d2
	tst.b 130(%a2)
	jne .L78
	tst.b 246(%a2)
	jne .L216
	move.l 238(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,238(%a2)
	jle .L217
.L80:
	move.l sprite,%a0
	tst.b 256(%a2)
	jne .L189
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
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
.L241:
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
	jne .L218
.L133:
	move.b 125(%a2),%d2
	jeq .L134
	tst.b 121(%a2)
	jeq .L134
	tst.b 126(%a2)
	jne .L135
	tst.b 127(%a2)
	jeq .L136
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a1
	move.l %a1,-(%sp)
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
	jne .L219
.L137:
	cmp.w #1,16(%a3)
	jle .L69
	move.w raptor_ticks,%a0
	cmp.l 222(%a2),%a0
	jlt .L69
	tst.b 126(%a2)
	jeq .L220
	move.w 236(%a2),%d0
	cmp.w #122,%d0
	jle .L144
	move.b #1,119(%a2)
	move.l %a0,222(%a2)
	move.w #90,236(%a2)
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
	pea 90.w
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
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
	jne .L221
	move.l 238(%a2),%d0
	subq.l #8,%d0
	move.l %d0,238(%a2)
	jle .L222
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
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
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
.L237:
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
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr __Z10bloodSpraysss
	lea (12,%sp),%sp
	tst.b 106(%a2)
	jne .L223
	jra .L77
.L204:
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
	jeq .L224
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L211:
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
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
.L212:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a1
	move.l %a1,-(%sp)
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
.L206:
	tst.b 113(%a2)
	jne .L103
.L99:
	tst.b 110(%a2)
	jeq .L225
	clr.b %d1
.L233:
	move.w 234(%a2),%a4
	move.w 252(%a2),%d0
	cmp.w #-1,%d0
	jne .L104
.L207:
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
	jne .L226
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
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
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
	jlt .L227
.L165:
	tst.b 118(%a2)
	jne .L169
	tst.b %d3
	jne .L170
	tst.b 116(%a2)
	jeq .L228
.L170:
	move.b #1,117(%a2)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a1
	move.l %a1,-(%sp)
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
	jeq .L168
	move.b #1,118(%a2)
	clr.b 117(%a2)
.L168:
	move.w raptor_ticks,%a1
	move.l %a1,222(%a2)
.L239:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L208:
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
	jlt .L229
.L117:
	cmp.w #1,%d2
	jne .L116
	tst.b 125(%a2)
	jeq .L118
.L116:
	tst.l %d0
	jle .L118
	tst.b 284(%a2)
	jeq .L186
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
	jne .L230
	move.l 222(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L69
	move.w 252(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 192(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
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
	move.l 286(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,236(%a2)
	addq.l #1,%a0
	move.l %a0,286(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L231
.L179:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L232
.L180:
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
	move.w 234(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	lea (36,%sp),%sp
.L238:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L172:
	tst.b 120(%a2)
	jeq .L69
	tst.b 121(%a2)
	jeq .L69
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 50(%a2),%a1
	move.l %a1,-(%sp)
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
.L205:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L189:
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L78
.L202:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 238(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,238(%a2)
	jgt .L84
	jra .L203
.L216:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 238(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,238(%a2)
	jgt .L80
	jra .L217
.L203:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	jra .L84
.L217:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	jra .L80
.L218:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a1
	move.l %a1,-(%sp)
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
.L225:
	tst.b 111(%a2)
	jeq .L70
	clr.b %d1
	jra .L233
.L226:
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
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L219:
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
.L229:
	tst.b 284(%a2)
	jne .L117
.L186:
	move.w 234(%a2),%d0
	jra .L114
.L210:
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
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 236(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
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
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 236(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.w 252(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 252(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
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
	jne .L223
	jra .L77
.L158:
	tst.l %d0
	jlt .L234
.L160:
	cmp.w #1,%d3
	jne .L159
	tst.b %d2
	jne .L159
	add.w %d0,234(%a2)
	jra .L161
.L174:
	tst.l %d0
	jlt .L235
.L176:
	cmp.w #1,%d3
	jne .L175
	tst.b %d2
	jne .L175
	add.w %d0,234(%a2)
	jra .L177
.L234:
	tst.b 284(%a2)
	jne .L160
	jra .L161
.L150:
	tst.l %d0
	jlt .L236
.L152:
	cmp.w #1,%d2
	jne .L151
	tst.b 125(%a2)
	jne .L151
	add.w %d0,234(%a2)
	jra .L153
.L236:
	tst.b 284(%a2)
	jne .L152
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
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
	jra .L237
.L232:
	move.b #1,119(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	clr.l 286(%a2)
	move.w #90,236(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 248(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 286(%a2),%a0
	addq.l #4,%sp
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
	move.w 234(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	lea (36,%sp),%sp
	jra .L238
.L235:
	tst.b 284(%a2)
	jne .L176
	move.l 286(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,236(%a2)
	addq.l #1,%a0
	move.l %a0,286(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L179
	jra .L231
.L221:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 238(%a2),%d0
	subq.l #8,%d0
	move.l %d0,238(%a2)
	jgt .L147
	jra .L222
.L231:
	move.l 248(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 286(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L180
	jra .L232
.L222:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	jra .L147
.L227:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a1
	move.l %a1,222(%a2)
	jra .L239
.L228:
	move.l 248(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L170
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
	jeq .L187
.L125:
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
	jra .L121
.L122:
	tst.l %d0
	jlt .L240
.L124:
	cmp.w #1,%d2
	jne .L123
	tst.b 125(%a2)
	jne .L123
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
	jra .L121
.L240:
	tst.b 284(%a2)
	jne .L124
.L187:
	move.w 234(%a2),%d0
	jra .L121
.L209:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 252(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 236(%a2),%d1
	add.w #-30,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr __Z9bloodDropsss
	lea (12,%sp),%sp
	tst.b 106(%a2)
	jne .L223
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
	jeq .L188
.L132:
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
.L243:
	move.l %a4,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	jra .L241
.L129:
	tst.l %d0
	jlt .L242
.L131:
	cmp.w #1,%d2
	jne .L130
	tst.b 125(%a2)
	jne .L130
	add.w 234(%a2),%d0
	move.w %d0,234(%a2)
	jra .L243
.L242:
	tst.b 284(%a2)
	jne .L131
.L188:
	move.w 234(%a2),%d0
	move.l %a4,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	jra .L241
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
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a1
	move.l %a1,-(%sp)
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
	jra .L219
.L97:
	move.l 248(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L94
.L230:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a1
	move.l %a1,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	pea 25.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 222(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L69
	clr.b 113(%a2)
	clr.b 117(%a2)
	clr.b 118(%a2)
	clr.b 119(%a2)
	move.b #1,120(%a2)
	clr.l 286(%a2)
	clr.w 16(%a3)
	move.w #90,236(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L169:
	move.w 236(%a2),%d0
	cmp.w #90,%d0
	jle .L171
	move.b #1,119(%a2)
	move.w raptor_ticks,%a1
	move.l %a1,222(%a2)
	move.w #90,236(%a2)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 234(%a2),%a1
	move.l %a1,-(%sp)
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
	move.w raptor_ticks,%a1
	move.l %a1,222(%a2)
	jra .L239
.L144:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L145
.L220:
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
.L245:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L139:
	tst.l %d0
	jlt .L244
.L141:
	cmp.w #1,%d1
	jne .L140
	tst.b 125(%a2)
	jne .L140
	add.w %d0,234(%a2)
	jra .L142
.L244:
	tst.b 284(%a2)
	jne .L141
	move.w #48,236(%a2)
	jra .L245
.L171:
	move.w 252(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a1
	move.l %a1,222(%a2)
	jra .L239
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
.L224:
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
	jne .L251
	tst.b 88(%a0)
	jne .L251
.L252:
	tst.b 90(%a1)
	jne .L280
.L254:
	tst.b 91(%a1)
	jeq .L256
	tst.b 87(%a0)
	jne .L256
	move.b #1,107(%a0)
	moveq #2,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	addq.l #5,170(%a1)
	move.b #1,174(%a1)
.L255:
	tst.b %d0
	jne .L250
.L275:
	tst.b 88(%a0)
	jeq .L268
.L281:
	tst.b 87(%a0)
	jeq .L268
	move.b #1,89(%a0)
	move.b #1,133(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a0)
.L271:
	tst.b 124(%a1)
	jeq .L250
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
.L250:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L251:
	tst.b 130(%a0)
	jne .L252
	tst.b %d0
	jne .L250
	tst.b 88(%a0)
	jeq .L275
	move.b #1,89(%a0)
	move.b #1,133(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a0)
	tst.b 88(%a0)
	jne .L281
.L268:
	tst.b 98(%a1)
	jeq .L270
	move.b #1,114(%a0)
	moveq #4,%d0
	move.l %d0,242(%a0)
	clr.b 246(%a0)
	moveq #10,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L271
.L280:
	tst.b 87(%a0)
	jne .L254
	move.b #1,106(%a0)
	moveq #2,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	addq.l #5,170(%a1)
	move.b #1,174(%a1)
	jra .L255
.L256:
	tst.b 92(%a1)
	jeq .L257
	tst.b 87(%a0)
	jne .L257
	move.b #1,106(%a0)
	moveq #5,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
.L282:
	tst.b %d0
	jeq .L275
	jra .L250
.L257:
	tst.b 93(%a1)
	jeq .L258
	tst.b 87(%a0)
	jne .L258
	move.b #1,108(%a0)
	moveq #5,%d1
	move.l %d1,242(%a0)
	clr.b 246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L282
.L258:
	tst.b 99(%a1)
	jeq .L259
	tst.b 87(%a0)
	jeq .L283
.L259:
	tst.b 100(%a1)
	jeq .L260
	tst.b 87(%a0)
	jeq .L284
.L260:
	tst.b 94(%a1)
	jeq .L262
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
	jeq .L275
	jra .L250
.L270:
	tst.b 102(%a1)
	jeq .L271
	move.b #1,109(%a0)
	clr.b 144(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,222(%a1)
	moveq #2,%d0
	move.l %d0,242(%a0)
	clr.b 246(%a0)
	addq.l #5,170(%a1)
	move.b #1,174(%a1)
	jra .L271
.L262:
	tst.b 95(%a1)
	jne .L285
	tst.b 97(%a1)
	jeq .L264
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
	jra .L282
.L283:
	move.b #1,108(%a0)
	moveq #6,%d1
	move.l %d1,242(%a0)
	move.b #1,246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
.L287:
	tst.b %d0
	jeq .L275
	jra .L250
.L284:
	move.b #1,111(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L286
	moveq #4,%d1
.L288:
	move.l %d1,242(%a0)
	move.b #1,246(%a0)
	move.b #20,%d1
	add.l %d1,170(%a1)
	move.b #1,174(%a1)
	jra .L287
.L285:
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
	jra .L282
.L286:
	move.b #1,112(%a0)
	moveq #4,%d1
	jra .L288
.L264:
	tst.b 96(%a1)
	jeq .L265
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
	jra .L282
.L265:
	tst.b 101(%a1)
	jeq .L255
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
	jeq .L275
	jra .L250
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14396,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a4
	tst.b 122(%a3)
	jeq .L291
	move.l 4(%a4),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L305
.L291:
	tst.b 122(%a4)
	jeq .L292
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L306
.L292:
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
	jlt .L290
	move.l colliders,%a2
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a2,%d2.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L295
.L310:
	cmp.w #0,%a0
	jlt .L290
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
	jeq .L307
	moveq #56,%d3
	cmp.l %d0,%d3
	jeq .L308
	moveq #62,%d3
	cmp.l %d0,%d3
	jne .L300
	moveq #56,%d4
	cmp.l %d1,%d4
	jeq .L309
.L303:
	addq.l #8,%d2
.L311:
	lea (%a2,%d2.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L310
.L295:
	cmp.w #0,%a0
	jge .L303
.L290:
	movem.l -28(%fp),#15388
	unlk %fp
	rts
.L308:
	moveq #59,%d4
	cmp.l %d1,%d4
	jne .L303
	tst.b 82(%a3)
	jeq .L303
	move.w 234(%a3),%d0
	cmp.w #10,%d0
	jle .L303
	cmp.w #328,%d0
	jgt .L303
	move.w 234(%a4),%d0
	cmp.w #10,%d0
	jle .L303
	cmp.w #328,%d0
	jgt .L303
	move.b #1,122(%a3)
	move.b #1,132(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,218(%a4)
	addq.l #8,%d2
	jra .L311
.L307:
	moveq #59,%d4
	cmp.l %d1,%d4
	jne .L303
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	move.l colliders,%a2
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L311
.L300:
	moveq #59,%d3
	cmp.l %d0,%d3
	jne .L303
	moveq #56,%d4
	cmp.l %d1,%d4
	jne .L303
	tst.b 82(%a4)
	jeq .L303
	move.b #1,122(%a4)
	move.b #1,132(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,218(%a3)
	addq.l #8,%d2
	jra .L311
.L309:
	move.l %a3,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a5)
	move.l colliders,%a2
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L311
.L305:
	clr.b 122(%a3)
	jra .L291
.L306:
	clr.b 122(%a4)
	jra .L292
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
	jeq .L327
	cmp.w #-1,%d0
	jeq .L328
.L316:
	move.w 252(%a0),%d0
	cmp.w #1,%d0
	jeq .L329
.L317:
	cmp.w #-1,%d0
	jne .L313
	move.w 234(%a0),%a2
	add.l _turnOffset,%a2
	move.w 234(%a1),%a1
	cmp.l %a2,%a1
	jle .L313
.L324:
	tst.b 123(%a0)
	jne .L313
	clr.b 255(%a0)
	move.b #1,123(%a0)
	move.b #1,254(%a0)
.L313:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L328:
	move.w 234(%a1),%a3
	add.l _turnOffset,%a3
	move.w 234(%a0),%a2
	cmp.l %a3,%a2
	jle .L316
	tst.b 123(%a1)
	jne .L316
.L330:
	clr.b 255(%a1)
	move.b #1,123(%a1)
	move.b #1,254(%a1)
	move.w 252(%a0),%d0
	cmp.w #1,%d0
	jne .L317
.L329:
	move.w 234(%a0),%a2
	move.w 234(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L324
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L327:
	move.w 234(%a1),%a3
	move.w 234(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L316
	tst.b 123(%a1)
	jne .L316
	jra .L330
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
	jeq .L339
	cmp.w #-1,%d0
	jeq .L340
.L334:
	clr.b 128(%a0)
	clr.b 128(%a1)
.L332:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L340:
	move.w 234(%a1),%a3
	move.w 234(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L334
.L336:
	move.b #1,128(%a0)
	move.b #1,128(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L339:
	move.w 234(%a1),%a3
	move.w 234(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L336
	clr.b 128(%a0)
	clr.b 128(%a1)
	jra .L332
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
	jne .L344
	tst.b 246(%a2)
	jne .L351
	move.l 238(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,238(%a2)
	jle .L352
.L347:
	move.l sprite,%a0
	tst.b 256(%a2)
	jeq .L348
.L353:
	move.l %d0,16024(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L348:
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
.L344:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L351:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 238(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,238(%a2)
	jgt .L347
.L352:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 256(%a2)
	jeq .L348
	jra .L353
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,252(%a0)
	jeq .L360
	tst.b 284(%a0)
	jeq .L355
.L357:
	addq.w #2,234(%a0)
.L355:
	unlk %fp
	rts
.L360:
	tst.b 125(%a0)
	jeq .L357
	tst.b 284(%a0)
	jne .L357
	jra .L355
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,252(%a0)
	jeq .L363
	tst.b 125(%a0)
	jeq .L364
.L363:
	tst.b 284(%a0)
	jeq .L362
.L364:
	subq.w #2,234(%a0)
.L362:
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
	jeq .L369
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
.L369:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L377
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L377:
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
	jle .L393
.L381:
	cmp.w #280,%d0
	jgt .L385
.L390:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L393:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L389
	move.w 234(%a2),%d0
	cmp.w #11,%d0
	jgt .L381
	cmp.w #280,234(%a3)
	jgt .L389
	jsr (%a4)
	tst.b %d0
	jne .L389
	move.w 234(%a2),%d0
	cmp.w #280,%d0
	jle .L390
.L385:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L394
.L389:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L394:
	cmp.w #328,234(%a2)
	jle .L390
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
	jeq .L397
	tst.b 125(%a0)
	jne .L397
.L398:
	tst.l %d0
	jle .L401
	tst.b 284(%a0)
	jeq .L396
.L401:
	add.w %d0,234(%a0)
.L396:
	unlk %fp
	rts
.L397:
	tst.l %d0
	jlt .L404
	cmp.w #1,%d1
	jne .L398
.L405:
	tst.b 125(%a0)
	jne .L398
	add.w %d0,234(%a0)
	jra .L396
.L404:
	tst.b 284(%a0)
	jeq .L396
	cmp.w #1,%d1
	jne .L398
	jra .L405
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14384,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 121(%a2)
	jne .L408
	tst.b 82(%a2)
	jeq .L639
.L409:
	clr.b 80(%a2)
.L411:
	move.l 176(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,166(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L640
.L412:
	tst.b 87(%a2)
	jeq .L413
	tst.b 105(%a2)
	jeq .L413
	tst.b 144(%a2)
	jeq .L413
	tst.b 97(%a2)
	jne .L415
	clr.b 105(%a2)
	move.b #1,97(%a2)
	move.b #1,83(%a2)
	clr.b 87(%a2)
	clr.w 16(%a3)
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L415:
	move.l 314(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 145(%a2)
	jeq .L641
.L417:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 148(%a2),%d0
	cmp.l %a0,%d0
	jgt .L642
	clr.b 145(%a2)
.L420:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L643
.L422:
	move.l 166(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L607
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L607
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L607
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L607
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L607
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L607
	move.b #1,105(%a2)
.L607:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L407
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L609
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L609
	and.l JAGPAD_RIGHT,%d0
	jne .L609
	move.b #1,103(%a2)
.L609:
	move.b #1,104(%a2)
.L407:
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L408:
	clr.b 80(%a2)
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L639:
	tst.b 87(%a2)
	jne .L409
	tst.b 84(%a2)
	jne .L409
	tst.b 86(%a2)
	jne .L409
	tst.b 85(%a2)
	jne .L409
	tst.b 83(%a2)
	jeq .L411
	clr.b 80(%a2)
	jra .L411
.L640:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L412
.L413:
	tst.b 97(%a2)
	jne .L415
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L423
	tst.l %d1
	jeq .L424
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L425
	cmp.w #1,252(%a2)
	jeq .L423
.L425:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L424
	cmp.w #-1,252(%a2)
	jeq .L423
.L424:
	tst.b 91(%a2)
	jeq .L644
.L427:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L434
	clr.b 91(%a2)
.L434:
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
	jra .L422
.L641:
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
	jne .L417
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L422
	jra .L643
.L644:
	tst.l %d3
	jeq .L645
.L435:
	tst.b 105(%a2)
	jeq .L436
	tst.b 144(%a2)
	jeq .L436
	tst.b 84(%a2)
	jne .L436
	tst.b 122(%a2)
	jeq .L436
	tst.b 100(%a2)
	jne .L439
	clr.b 105(%a2)
	move.b #1,100(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
.L441:
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
	jra .L422
.L423:
	tst.b 105(%a2)
	jeq .L424
	tst.b 144(%a2)
	jeq .L424
	tst.b 84(%a2)
	jne .L424
	tst.b 122(%a2)
	jne .L424
	tst.b 91(%a2)
	jne .L427
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
	jeq .L431
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L432
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L646
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L650:
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
	jra .L422
.L645:
	tst.l %d1
	jeq .L436
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L437
	cmp.w #1,252(%a2)
	jeq .L435
.L437:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L436
	cmp.w #-1,252(%a2)
	jeq .L435
.L436:
	tst.b 100(%a2)
	jne .L439
	tst.l %d1
	jeq .L442
	tst.b 105(%a2)
	jeq .L442
	tst.b 144(%a2)
	jeq .L442
	tst.b 84(%a2)
	jne .L442
	tst.b 128(%a2)
	jeq .L442
	tst.b 124(%a2)
	jne .L444
	clr.b 105(%a2)
	move.b #1,124(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L446
	moveq #6,%d2
	cmp.l %d0,%d2
	jcc .L447
	moveq #7,%d3
	cmp.l %d0,%d3
	jeq .L647
.L446:
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L449:
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
	jra .L422
.L643:
	clr.b 97(%a2)
	move.b #1,144(%a2)
	jra .L422
.L439:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L441
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
	jra .L422
.L647:
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
	jra .L422
.L442:
	tst.b 124(%a2)
	jne .L444
	tst.l %d1
	jeq .L450
	tst.b 105(%a2)
	jeq .L450
	tst.b 144(%a2)
	jeq .L450
	tst.b 84(%a2)
	jne .L450
	tst.b 128(%a2)
	jne .L450
	tst.b 90(%a2)
	jne .L452
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
	jeq .L456
	moveq #7,%d3
	cmp.l %a0,%d3
	jeq .L457
	move.b #4,%d2
	cmp.l %a0,%d2
	jeq .L648
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L459:
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
	jra .L422
.L444:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L449
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
	jra .L422
.L642:
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
	jne .L422
	jra .L420
.L450:
	tst.b 90(%a2)
	jne .L452
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L460
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L460
	cmp.w #1,252(%a2)
	jeq .L461
.L460:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L462
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L462
	cmp.w #-1,252(%a2)
	jeq .L461
.L462:
	tst.b 98(%a2)
	jeq .L649
.L464:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L466
	clr.b 98(%a2)
.L466:
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
	jra .L422
.L452:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L459
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
	jra .L422
.L649:
	tst.l %d1
	jeq .L467
	cmp.w #1,252(%a2)
	jeq .L468
.L467:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L469
	cmp.w #-1,252(%a2)
	jeq .L468
.L469:
	tst.b 99(%a2)
	jne .L472
	move.l JAGPAD_9,%d3
	move.l %d0,%d4
	and.l %d3,%d4
	jne .L475
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L476
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L477
	cmp.w #1,252(%a2)
	jeq .L475
.L477:
	tst.l %d1
	jeq .L476
	cmp.w #-1,252(%a2)
	jeq .L475
.L476:
	tst.b 93(%a2)
	jne .L479
	move.l JAGPAD_A,%d4
	or.l %d4,%d3
	and.l %d0,%d3
	jeq .L482
	tst.b 105(%a2)
	jeq .L482
	tst.b 144(%a2)
	jeq .L482
	tst.b 84(%a2)
	jne .L482
	tst.b 87(%a2)
	jne .L482
	tst.b 128(%a2)
	jeq .L482
	tst.b 101(%a2)
	jne .L484
	clr.b 105(%a2)
	move.b #1,101(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
.L486:
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
	jra .L422
.L472:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L474
	clr.b 99(%a2)
.L474:
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
	jra .L422
.L461:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L462
	tst.b 105(%a2)
	jeq .L462
	tst.b 144(%a2)
	jeq .L462
	tst.b 84(%a2)
	jne .L462
	tst.b 98(%a2)
	jne .L464
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
	jra .L422
.L468:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jne .L470
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jeq .L469
.L470:
	tst.b 105(%a2)
	jeq .L469
	tst.b 144(%a2)
	jeq .L469
	tst.b 84(%a2)
	jne .L469
	tst.b 99(%a2)
	jne .L472
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
	jra .L422
.L479:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L481
	clr.b 93(%a2)
.L481:
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
	jra .L422
.L475:
	tst.b 105(%a2)
	jeq .L476
	tst.b 144(%a2)
	jeq .L476
	tst.b 84(%a2)
	jne .L476
	tst.b 87(%a2)
	jne .L476
	tst.b 122(%a2)
	jne .L476
	tst.b 93(%a2)
	jne .L479
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
	jra .L422
.L646:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L650
.L432:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L650
.L431:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L650
.L447:
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
	jra .L422
.L482:
	tst.b 101(%a2)
	jne .L484
	and.l %d0,%d4
	jeq .L487
	tst.b 105(%a2)
	jeq .L487
	tst.b 144(%a2)
	jeq .L487
	tst.b 84(%a2)
	jne .L487
	tst.b 87(%a2)
	jne .L487
	tst.b 122(%a2)
	jne .L487
	tst.b 92(%a2)
	jne .L489
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
.L491:
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
	jra .L422
.L484:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L486
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
	jra .L422
.L487:
	tst.b 92(%a2)
	jne .L489
	tst.l %d3
	jeq .L492
	tst.b 105(%a2)
	jeq .L492
	tst.b 144(%a2)
	jeq .L492
	tst.b 84(%a2)
	jne .L492
	tst.b 87(%a2)
	jeq .L492
	tst.b 102(%a2)
	jne .L494
	clr.b 105(%a2)
	move.b #1,102(%a2)
	move.b #1,83(%a2)
	clr.w 16(%a3)
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L496:
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
	jra .L422
.L648:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L459
.L457:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L459
.L456:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L459
.L492:
	tst.b 102(%a2)
	jeq .L651
.L494:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L496
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
	jra .L422
.L651:
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jne .L497
	move.l %d0,%d3
	and.l JAGPAD_8,%d3
	jeq .L498
.L497:
	tst.b 84(%a2)
	jne .L498
	tst.b 144(%a2)
	jeq .L498
	tst.b 88(%a2)
	jne .L499
	move.b #1,88(%a2)
	clr.w 16(%a3)
.L499:
	and.l JAGPAD_DOWN,%d0
	jeq .L500
	tst.b 87(%a2)
	jne .L501
	move.b #1,87(%a2)
	clr.b 82(%a2)
	clr.w 16(%a3)
.L501:
	tst.b 89(%a2)
	jne .L502
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
	jra .L422
.L498:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L505
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L506
	cmp.w #1,252(%a2)
	jeq .L507
.L506:
	tst.l %d1
	jeq .L505
	cmp.w #-1,252(%a2)
	jeq .L507
.L505:
	tst.b 85(%a2)
	jne .L509
	tst.l %d3
	jeq .L535
	tst.l %d1
	jeq .L536
	cmp.w #1,252(%a2)
	jeq .L537
.L536:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L535
	cmp.w #-1,252(%a2)
	jeq .L537
.L535:
	tst.b 86(%a2)
	jeq .L652
.L539:
	move.l 166(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L541
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L542
.L541:
	tst.b 86(%a2)
	jeq .L542
	tst.b 156(%a2)
	jne .L542
	tst.b 216(%a2)
	jeq .L543
.L542:
	tst.b 94(%a2)
	jeq .L544
	tst.b 156(%a2)
	jne .L544
	tst.b 86(%a2)
	jeq .L544
.L543:
	tst.b 96(%a2)
	jne .L544
	tst.b 94(%a2)
	jne .L545
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
.L545:
	tst.b 146(%a2)
	jeq .L653
.L546:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L654
	clr.b 146(%a2)
	clr.b 96(%a2)
.L547:
	move.l 306(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 166(%a2),%d0
.L544:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L549
	and.l JAGPAD_9,%d0
	jeq .L550
.L549:
	tst.b 86(%a2)
	jeq .L550
	tst.b 156(%a2)
	jne .L550
	tst.b 216(%a2)
	jeq .L551
.L550:
	tst.b 96(%a2)
	jeq .L552
	tst.b 156(%a2)
	jne .L552
	tst.b 86(%a2)
	jeq .L552
.L551:
	tst.b 94(%a2)
	jne .L552
	tst.b 96(%a2)
	jne .L553
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
.L553:
	tst.b 146(%a2)
	jeq .L655
.L554:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L656
	clr.b 146(%a2)
	clr.b 96(%a2)
.L555:
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L552:
	tst.w 16(%a3)
	jne .L557
	tst.b 94(%a2)
	jne .L557
	tst.b 96(%a2)
	jeq .L657
.L557:
	tst.b 86(%a2)
	jeq .L422
	tst.b 156(%a2)
	jne .L558
	move.l 158(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L558
	tst.b 157(%a2)
	jne .L559
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L559
	tst.b 94(%a2)
	jne .L559
	tst.b 96(%a2)
	jne .L559
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,157(%a2)
	addq.l #8,%sp
.L559:
	tst.b 146(%a2)
	jne .L560
	tst.b 285(%a2)
	jne .L561
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
.L561:
	move.l 286(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,236(%a2)
	addq.l #1,%a0
	move.l %a0,286(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L562
	clr.l 286(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,156(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
.L562:
	move.l 258(%a2),-(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,262(%a2)
.L560:
	tst.b 94(%a2)
	jne .L563
	tst.b 96(%a2)
	jne .L563
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
.L563:
	move.w raptor_ticks,%a0
	move.l %a0,158(%a2)
.L558:
	clr.l -(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L564
	cmp.w #89,236(%a2)
	jgt .L631
.L564:
	tst.b 156(%a2)
	jeq .L422
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
	jeq .L422
	move.b #1,144(%a2)
	clr.b 86(%a2)
.L633:
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 96(%a2)
	clr.b 157(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L422
.L489:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L491
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
	jra .L422
.L507:
	tst.b 104(%a2)
	jeq .L505
	tst.b 144(%a2)
	jeq .L505
	tst.b 85(%a2)
	jne .L509
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
.L509:
	move.l 166(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L511
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L512
.L511:
	tst.b 85(%a2)
	jeq .L512
	tst.b 156(%a2)
	jne .L512
	tst.b 216(%a2)
	jeq .L513
.L512:
	tst.b 94(%a2)
	jeq .L514
	tst.b 156(%a2)
	jne .L514
	tst.b 85(%a2)
	jeq .L514
.L513:
	tst.b 96(%a2)
	jne .L514
	tst.b 94(%a2)
	jne .L515
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
.L515:
	tst.b 146(%a2)
	jeq .L658
.L516:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L659
	clr.b 146(%a2)
	clr.b 94(%a2)
.L517:
	move.l 306(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 166(%a2),%d0
.L514:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L519
	and.l JAGPAD_9,%d0
	jeq .L520
.L519:
	tst.b 85(%a2)
	jeq .L520
	tst.b 156(%a2)
	jne .L520
	tst.b 216(%a2)
	jeq .L521
.L520:
	tst.b 96(%a2)
	jeq .L522
	tst.b 156(%a2)
	jne .L522
	tst.b 85(%a2)
	jeq .L522
.L521:
	tst.b 94(%a2)
	jne .L522
	tst.b 96(%a2)
	jne .L523
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
.L523:
	tst.b 146(%a2)
	jeq .L660
.L524:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L661
	clr.b 146(%a2)
	clr.b 96(%a2)
.L525:
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L522:
	tst.w 16(%a3)
	jne .L527
	tst.b 94(%a2)
	jne .L527
	tst.b 96(%a2)
	jeq .L662
.L527:
	tst.b 85(%a2)
	jeq .L422
	tst.b 156(%a2)
	jne .L528
	move.l 158(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L528
	tst.b 157(%a2)
	jne .L529
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L529
	tst.b 94(%a2)
	jne .L529
	tst.b 96(%a2)
	jne .L529
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,157(%a2)
	addq.l #8,%sp
.L529:
	tst.b 146(%a2)
	jeq .L663
.L530:
	tst.b 94(%a2)
	jne .L532
	tst.b 96(%a2)
	jne .L532
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
.L532:
	move.w raptor_ticks,%a0
	move.l %a0,158(%a2)
.L528:
	clr.l -(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L533
	cmp.w #89,236(%a2)
	jgt .L631
.L533:
	tst.b 156(%a2)
	jeq .L422
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
	jeq .L422
	move.b #1,144(%a2)
	clr.b 85(%a2)
	jra .L633
.L663:
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
	jge .L531
	clr.l 286(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,156(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
.L531:
	move.l 258(%a2),-(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,262(%a2)
	jra .L530
.L662:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L632:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 366(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L422
.L661:
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
	jra .L525
.L660:
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
	jeq .L525
	jra .L524
.L659:
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
	jra .L517
.L658:
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
	jeq .L517
	jra .L516
.L500:
	tst.b 87(%a2)
	jeq .L503
	clr.b 87(%a2)
.L503:
	tst.b 89(%a2)
	jne .L504
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
	jra .L422
.L502:
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
.L635:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L422
	clr.b 89(%a2)
	jra .L422
.L504:
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
	jra .L635
.L656:
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
	jra .L555
.L655:
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
	jeq .L555
	jra .L554
.L657:
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L632
.L631:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 96(%a2)
	move.b #1,156(%a2)
	clr.l 262(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
	jra .L422
.L654:
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
	jra .L547
.L653:
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
	jeq .L547
	jra .L546
.L537:
	tst.b 104(%a2)
	jeq .L535
	tst.b 144(%a2)
	jeq .L535
	tst.b 86(%a2)
	jne .L539
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
	jra .L539
.L652:
	tst.l %d1
	jeq .L566
	tst.b 144(%a2)
	jeq .L566
	tst.b 84(%a2)
	jne .L566
	tst.b 82(%a2)
	jne .L567
	clr.w 16(%a3)
.L567:
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
	jle .L422
	tst.b 122(%a2)
	jne .L568
	move.l 184(%a2),%d0
	cmp.w #-1,252(%a2)
	jne .L569
	move.l 180(%a2),%d0
.L569:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L630:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L422
.L568:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L422
	move.l 212(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L630
.L566:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L570
	tst.b 144(%a2)
	jeq .L570
	tst.b 84(%a2)
	jne .L570
	tst.b 82(%a2)
	jne .L571
	clr.w 16(%a3)
.L571:
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
	jgt .L422
	tst.b 122(%a2)
	jne .L572
	move.l 180(%a2),%d0
	cmp.w #-1,252(%a2)
	jne .L573
	move.l 184(%a2),%d0
.L573:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L630
.L572:
	move.l 212(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L630
.L570:
	and.l JAGPAD_DOWN,%d0
	jeq .L574
	tst.b 144(%a2)
	jeq .L574
	tst.b 84(%a2)
	jne .L574
	tst.b 87(%a2)
	jne .L575
	move.b #1,87(%a2)
	clr.b 82(%a2)
	clr.b 83(%a2)
	clr.w 16(%a3)
.L575:
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
	jra .L422
.L574:
	tst.l %d3
	jeq .L576
	tst.b 103(%a2)
	jeq .L576
	tst.b 144(%a2)
	jne .L577
.L576:
	tst.b 84(%a2)
	jeq .L664
.L578:
	move.l 166(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L580
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L581
.L580:
	tst.b 84(%a2)
	jeq .L581
	tst.b 156(%a2)
	jne .L581
	tst.b 216(%a2)
	jeq .L582
.L581:
	tst.b 94(%a2)
	jeq .L583
	tst.b 156(%a2)
	jne .L583
	tst.b 84(%a2)
	jeq .L583
.L582:
	tst.b 95(%a2)
	jne .L583
	tst.b 94(%a2)
	jne .L584
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
.L584:
	tst.b 146(%a2)
	jeq .L665
.L585:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L666
	clr.b 146(%a2)
	clr.b 94(%a2)
.L586:
	move.l 306(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 166(%a2),%d0
.L583:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L588
	and.l JAGPAD_9,%d0
	jeq .L589
.L588:
	tst.b 84(%a2)
	jeq .L589
	tst.b 156(%a2)
	jne .L589
	tst.b 216(%a2)
	jeq .L590
.L589:
	tst.b 95(%a2)
	jeq .L591
	tst.b 156(%a2)
	jne .L591
	tst.b 84(%a2)
	jeq .L591
.L590:
	tst.b 94(%a2)
	jne .L591
	tst.b 95(%a2)
	jne .L592
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
.L592:
	tst.b 146(%a2)
	jeq .L667
.L593:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d0
	add.l 152(%a2),%d0
	cmp.l %a0,%d0
	jgt .L668
	clr.b 146(%a2)
	clr.b 95(%a2)
.L594:
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L591:
	tst.w 16(%a3)
	jne .L596
	tst.b 94(%a2)
	jne .L596
	tst.b 95(%a2)
	jeq .L602
.L596:
	tst.b 84(%a2)
	jeq .L422
	tst.b 156(%a2)
	jne .L597
	move.l 222(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L598
	tst.b 146(%a2)
	jne .L598
	move.l 286(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,236(%a2)
	addq.l #1,%a0
	move.l %a0,286(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L599
	clr.l 286(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,156(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
.L599:
	move.l 258(%a2),-(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,262(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
.L598:
	tst.b 94(%a2)
	jne .L597
	tst.b 95(%a2)
	jne .L597
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
.L597:
	clr.l -(%sp)
	move.l 262(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L600
	cmp.w #89,236(%a2)
	jgt .L669
.L600:
	tst.b 156(%a2)
	jeq .L422
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L602
	move.b #1,144(%a2)
	clr.b 84(%a2)
	clr.b 94(%a2)
	clr.b 95(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L602:
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
	jra .L422
.L669:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 94(%a2)
	clr.b 95(%a2)
	move.b #1,156(%a2)
	clr.l 262(%a2)
	move.w #90,236(%a2)
	addq.l #4,%sp
	jra .L422
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
	move.l 406(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L586
.L665:
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
	jeq .L586
	jra .L585
.L668:
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
	jra .L594
.L667:
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
	jeq .L594
	jra .L593
.L577:
	tst.b 84(%a2)
	jne .L578
	clr.b 103(%a2)
	clr.b 216(%a2)
	move.b #1,84(%a2)
	clr.w 16(%a3)
	clr.l 286(%a2)
	move.l 266(%a2),262(%a2)
	clr.b 156(%a2)
	clr.b 144(%a2)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L578
.L664:
	tst.b 87(%a2)
	jne .L670
	tst.b 88(%a2)
	jne .L671
	tst.b 82(%a2)
	jeq .L605
	clr.b 122(%a2)
	clr.b 82(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L605:
	tst.b 80(%a2)
	jne .L606
	move.b #1,80(%a2)
	clr.b 83(%a2)
.L606:
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
	jra .L422
.L671:
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
	jne .L422
	clr.b 88(%a2)
	jra .L422
.L670:
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
	jne .L422
	clr.b 87(%a2)
	jra .L422
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
	jeq .L673
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L679
	jlt .L683
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L677
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L678
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L715
.L675:
	sub.w 236(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L688
	jge .L716
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L690
	cmp.l #128,%d0
	jeq .L691
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L689
.L684:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L697
	jlt .L701
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L695
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L696
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L694
	moveq #84,%d1
	not.b %d1
.L693:
	cmp.l %a1,%d1
	jge .L673
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L704
	jlt .L710
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L704
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L704
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L704
	move.w #171,%d1
.L704:
	move.w %d1,12(%a0)
.L673:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L683:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L681
	cmp.l #128,%d0
	jeq .L682
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L675
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 236(%a2),%d1
.L689:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L698:
	moveq #78,%d1
	not.b %d1
	jra .L693
.L679:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 236(%a2),%d1
.L688:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L697:
	moveq #75,%d1
	not.b %d1
	jra .L693
.L677:
	move.w %a1,%d1
	sub.w 236(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L686:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L695:
	moveq #69,%d1
	not.b %d1
	jra .L693
.L681:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 236(%a2),%d1
.L690:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L699:
	moveq #81,%d1
	not.b %d1
	jra .L693
.L715:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 236(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L694:
	moveq #66,%d1
	not.b %d1
	jra .L693
.L710:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L704
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L704
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L704
	move.w #171,%d1
	jra .L704
.L678:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 236(%a2),%d1
.L687:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L696:
	moveq #72,%d1
	not.b %d1
	jra .L693
.L682:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 236(%a2),%d1
	add.w %a1,%d1
.L691:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L700:
	moveq #87,%d1
	not.b %d1
	jra .L693
.L716:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L686
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L687
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L684
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L694
.L701:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L699
	cmp.l #128,%d0
	jeq .L700
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L698
	moveq #84,%d1
	not.b %d1
	jra .L693
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 138(%a2)
	jeq .L719
	clr.b 138(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	move.l %a0,218(%a2)
	move.l %a0,230(%a2)
	move.l %a0,158(%a2)
	move.l %a0,12(%a3)
.L719:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d1
	addq.l #8,%sp
	moveq #3,%d0
	cmp.l %d1,%d0
	jeq .L762
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
	jeq .L718
.L723:
	move.w 252(%a2),%d0
	cmp.w #-1,%d0
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 135(%a2)
	jne .L763
.L726:
	tst.b 136(%a2)
	jeq .L728
	clr.b 136(%a2)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	clr.w 16(%a3)
	move.b #1,81(%a2)
	move.w #90,236(%a2)
	moveq #1,%d2
	cmp.l %d1,%d2
	jeq .L729
	moveq #2,%d3
	cmp.l %d1,%d3
	jeq .L764
.L718:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L763:
	tst.b 113(%a2)
	jne .L726
	clr.b 135(%a2)
	move.w #90,236(%a2)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	clr.w 16(%a3)
	move.w 282(%a2),%d0
	jle .L727
	tst.b 130(%a2)
	jeq .L765
.L727:
	move.b #1,131(%a2)
	clr.b 130(%a2)
	addq.w #1,%d0
	move.w %d0,282(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L762:
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
	jeq .L721
	tst.b 129(%a2)
	jeq .L756
	tst.b 131(%a2)
	jne .L758
	tst.b 81(%a2)
	jne .L758
	moveq #1,%d3
	move.l %d3,4(%a0)
	move.w 252(%a2),%d0
	cmp.w #-1,%d0
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 135(%a2)
	jeq .L726
	jra .L763
.L728:
	tst.b 133(%a2)
	jne .L766
.L731:
	tst.b 137(%a2)
	jeq .L737
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
.L732:
	tst.b 131(%a2)
	jne .L767
	tst.b 130(%a2)
	jeq .L746
	tst.b 121(%a2)
	jeq .L768
	tst.l 242(%a2)
	jle .L769
.L748:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 121(%a2)
	jne .L718
.L778:
	move.b #1,131(%a2)
	clr.b 130(%a2)
	addq.w #1,282(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L721:
	move.b 129(%a2),%d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
.L772:
	tst.b %d0
	jne .L723
	jra .L718
.L766:
	move.w raptor_ticks,%a0
	move.l 222(%a2),%d1
	addq.l #6,%d1
	cmp.l %a0,%d1
	jge .L731
	clr.b 133(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 130(%a2)
	jne .L732
	tst.b 246(%a2)
	jne .L770
	move.l 238(%a2),%d0
	subq.l #1,%d0
	move.l %d0,238(%a2)
	jle .L771
.L734:
	move.l sprite,%a0
	tst.b 256(%a2)
	jeq .L735
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L732
.L729:
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,12(%fp)
	move.l 248(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L764:
	moveq #0,%d0
	move.b 256(%a2),%d0
	move.l %d0,12(%fp)
	move.l 248(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L758:
	moveq #1,%d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
	jra .L772
.L737:
	tst.b 123(%a2)
	jeq .L732
	tst.b 84(%a2)
	jne .L732
	tst.b 86(%a2)
	jne .L732
	tst.b 85(%a2)
	jne .L732
	tst.b 121(%a2)
	jne .L732
	tst.b 83(%a2)
	jne .L732
	tst.b 254(%a2)
	jeq .L738
	clr.b 254(%a2)
	clr.w 16(%a3)
.L738:
	tst.b 255(%a2)
	jeq .L773
	tst.w 16(%a3)
	jle .L774
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L759:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 358(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L783:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L746:
	tst.b 81(%a2)
	jne .L775
	tst.b 132(%a2)
	jne .L776
.L750:
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
	jeq .L718
.L780:
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
.L756:
	clr.b %d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
	jra .L772
.L767:
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L777
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
.L779:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L769:
	tst.b 121(%a2)
	jeq .L718
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 121(%a2)
	jne .L718
	jra .L778
.L765:
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
.L777:
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
	jra .L779
.L768:
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
	jgt .L748
	jra .L769
.L776:
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
	jeq .L751
	tst.b 125(%a2)
	jne .L751
.L752:
	tst.l %d0
	jle .L755
	tst.b 284(%a2)
	jeq .L754
.L755:
	add.w %d0,234(%a2)
.L754:
	move.l 218(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L750
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
	jne .L780
	jra .L718
.L751:
	tst.l %d0
	jlt .L781
.L753:
	cmp.w #1,%d3
	jne .L752
	tst.b 125(%a2)
	jne .L752
	add.w %d0,234(%a2)
	jra .L754
.L770:
	clr.b 246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 238(%a2),%d0
	subq.l #1,%d0
	move.l %d0,238(%a2)
	jgt .L734
.L771:
	clr.l 238(%a2)
	move.b #1,135(%a2)
	moveq #0,%d0
	jra .L734
.L781:
	tst.b 284(%a2)
	jne .L753
	jra .L754
.L774:
	clr.b 123(%a2)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 236(%a2),%a0
	move.l %a0,-(%sp)
	move.w 234(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L759
.L775:
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
.L735:
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
	jra .L732
.L773:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L740
	move.b #1,255(%a2)
	move.w 252(%a2),%d0
	neg.w %d0
	move.w %d0,252(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L782
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
.L740:
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
	jra .L783
.L782:
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
	jra .L740
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
	jeq .L791
	jge .L798
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L793
	cmp.l #128,%d0
	jeq .L794
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L799
.L787:
	moveq #21,%d0
	unlk %fp
	rts
.L798:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L796
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L790
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L787
	moveq #3,%d0
	unlk %fp
	rts
.L790:
	moveq #9,%d0
	unlk %fp
	rts
.L794:
	moveq #24,%d0
	unlk %fp
	rts
.L799:
	moveq #15,%d0
	unlk %fp
	rts
.L793:
	moveq #18,%d0
	unlk %fp
	rts
.L796:
	moveq #6,%d0
	unlk %fp
	rts
.L791:
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
	jeq .L807
	move.w 234(%a0),%a2
	sub.w 234(%a1),%a2
	cmp.w #259,%a2
	jgt .L805
.L803:
	clr.b 285(%a0)
	clr.b 285(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L807:
	move.w 234(%a1),%a2
	sub.w 234(%a0),%a2
	cmp.w #259,%a2
	jle .L803
.L805:
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
	jne .L811
	tst.b 174(%a2)
	jeq .L810
.L811:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 174(%a3)
	jne .L820
	tst.b 174(%a2)
	jeq .L810
.L821:
	clr.b 174(%a2)
	move.l 170(%a2),%d0
	move.l %d0,_tempScore
	jne .L817
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
.L810:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L820:
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
	jne .L821
	jra .L810
.L817:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L814:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L814
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L816
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
.L816:
	moveq #4,%d0
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
