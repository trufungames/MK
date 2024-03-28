#NO_APP
	.text
	.even
	.globl	__Z14fighterStartUpv
__Z14fighterStartUpv:
	link.w %fp,#0
	move.l sprite,%a0
	move.w 6732(%a0),%a0
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
	move.l #10258592,44(%a0)
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
	move.l #8529984,44(%a0)
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
	move.l #11397344,44(%a0)
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
	move.l #9685120,44(%a0)
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
	move.l #9119840,44(%a0)
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
	move.l #10905792,44(%a0)
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
	move.l %d1,316(%a0)
	move.l #256,%d0
	move.l %d0,294(%a0)
	move.w 12(%a1),%a1
	move.l %a1,298(%a0)
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
	move.l %d1,316(%a0)
	moveq #14,%d0
	move.l %d0,294(%a0)
	move.w 12(%a1),%a1
	move.l %a1,298(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_
__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d3
	move.l #0x400ccccd,324(%a0)
	clr.l 328(%a0)
	move.l #0xc1800000,332(%a0)
	move.l #0xc1a80000,336(%a0)
	move.l #0xc1200000,340(%a0)
	move.l #0x40a00000,344(%a0)
	move.l 16(%fp),312(%a0)
	move.l 20(%fp),354(%a0)
	move.l 24(%fp),358(%a0)
	move.l 28(%fp),362(%a0)
	move.l 32(%fp),366(%a0)
	move.l 36(%fp),378(%a0)
	move.l 40(%fp),382(%a0)
	move.l 44(%fp),370(%a0)
	move.l 48(%fp),374(%a0)
	move.l 52(%fp),386(%a0)
	move.l 56(%fp),390(%a0)
	move.l 60(%fp),394(%a0)
	move.l 64(%fp),398(%a0)
	move.l 68(%fp),402(%a0)
	clr.l 232(%a0)
	move.l #0x40000000,240(%a0)
	move.l #0x40000000,244(%a0)
	move.l #0x40900000,248(%a0)
	move.l #0x40600000,252(%a0)
	move.l #0x40d00000,256(%a0)
	move.l #0x41000000,260(%a0)
	clr.l 268(%a0)
	move.l #0x40f00000,264(%a0)
	move.l #0x3f800000,272(%a0)
	moveq #1,%d0
	move.l %d0,286(%a0)
	clr.l 290(%a0)
	clr.l 278(%a0)
	move.b #1,192(%a0)
	move.b #1,144(%a0)
	clr.b 145(%a0)
	clr.b 146(%a0)
	clr.b 147(%a0)
	clr.b 186(%a0)
	clr.b 148(%a0)
	clr.b 149(%a0)
	clr.b 150(%a0)
	clr.b 151(%a0)
	clr.b 152(%a0)
	clr.b 153(%a0)
	clr.b 154(%a0)
	clr.b 155(%a0)
	clr.b 156(%a0)
	clr.b 157(%a0)
	clr.b 158(%a0)
	clr.b 160(%a0)
	clr.b 159(%a0)
	clr.b 161(%a0)
	move.b #1,168(%a0)
	move.b #1,167(%a0)
	move.b #1,210(%a0)
	clr.b 276(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 166(%a0)
	clr.b 187(%a0)
	clr.b 188(%a0)
	clr.b 189(%a0)
	clr.b 190(%a0)
	clr.b 191(%a0)
	clr.b 169(%a0)
	clr.b 170(%a0)
	clr.b 171(%a0)
	clr.b 172(%a0)
	clr.b 173(%a0)
	clr.b 174(%a0)
	clr.b 175(%a0)
	clr.b 176(%a0)
	clr.b 179(%a0)
	clr.b 180(%a0)
	clr.b 181(%a0)
	clr.b 182(%a0)
	clr.b 183(%a0)
	clr.b 184(%a0)
	clr.b 185(%a0)
	clr.b 193(%a0)
	clr.b 194(%a0)
	clr.b 195(%a0)
	clr.b 196(%a0)
	clr.b 199(%a0)
	clr.b 200(%a0)
	clr.l 202(%a0)
	clr.l 206(%a0)
	clr.b 211(%a0)
	clr.b 212(%a0)
	clr.b 222(%a0)
	clr.b 223(%a0)
	clr.l 224(%a0)
	moveq #50,%d2
	move.l %d2,214(%a0)
	move.b #20,%d0
	move.l %d0,218(%a0)
	move.b %d3,322(%a0)
	move.b #33,%d2
	move.l %d2,302(%a0)
	clr.l 306(%a0)
	clr.b 310(%a0)
	clr.b 320(%a0)
	clr.b 321(%a0)
	move.b #1,352(%a0)
	move.l sprite,%d1
	move.l 4(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d0,%d2
	lsl.l #6,%d2
	move.l %d1,%a1
	add.l %d2,%a1
	moveq #1,%d2
	move.l %d2,4(%a1)
	tst.b %d3
	jne .L27
	moveq #42,%d2
	move.l %d2,228(%a0)
	move.b #40,%d2
	move.l %d2,140(%a0)
	move.b #2,%d2
	move.l %d2,236(%a0)
	move.l #210,294(%a0)
	moveq #-1,%d2
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a2
	add.l %d0,%a2
	add.l %a2,%d0
	lsl.l #6,%d0
	move.l %d1,%a2
	add.l %d0,%a2
	move.l %d2,24(%a2)
	move.l %d2,316(%a0)
	move.w #222,%d0
	move.w #8064,%a1
	moveq #1,%d2
	move.l %d2,4(%a2)
	move.b #90,%d2
	move.l %d2,298(%a0)
	lea (%a1,%d1.l),%a1
	move.w %d0,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
.L27:
	move.b #41,%d2
	move.l %d2,228(%a0)
	move.b #37,%d2
	move.l %d2,140(%a0)
	move.b #1,%d2
	move.l %d2,236(%a0)
	move.b #50,%d2
	move.l %d2,294(%a0)
	move.b #1,%d2
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a2
	add.l %d0,%a2
	add.l %a2,%d0
	lsl.l #6,%d0
	move.l %d1,%a2
	add.l %d0,%a2
	move.l %d2,24(%a2)
	move.l %d2,316(%a0)
	moveq #62,%d0
	move.w #7872,%a1
	moveq #1,%d2
	move.l %d2,4(%a2)
	move.b #90,%d2
	move.l %d2,298(%a0)
	lea (%a1,%d1.l),%a1
	move.w %d0,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	movem.l (%sp)+,#1036
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.l 348(%a0)
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
	tst.b 184(%a2)
	jne .L70
	tst.b 169(%a2)
	jeq .L208
.L71:
	move.b 176(%a2),%d0
	jne .L75
.L76:
	move.l 306(%a2),%d2
	tst.b 193(%a2)
	jne .L78
.L222:
	tst.b 310(%a2)
	jne .L209
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jle .L210
.L84:
	move.l sprite,%a0
	tst.b 322(%a2)
	jne .L185
	move.l %d0,11800(%a0)
	moveq #78,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	add.w %d2,%d0
	add.w %d0,%d0
	move.w %d0,11720(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L78:
	clr.l 306(%a2)
	clr.l 268(%a2)
	move.b #1,184(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	move.l %a0,290(%a2)
	clr.l 16(%a3)
	move.l 336(%a2),328(%a2)
	move.b 178(%a2),%d0
	jne .L87
	tst.b 179(%a2)
	jne .L87
	tst.b 188(%a2)
	jeq .L89
	clr.l 328(%a2)
.L89:
	tst.b 169(%a2)
	jne .L90
	tst.b 170(%a2)
	jeq .L211
.L90:
	moveq #0,%d1
	move.b 322(%a2),%d1
	move.l 312(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L212
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L94:
	move.b 170(%a2),%d1
	jne .L103
	tst.b 171(%a2)
	jeq .L213
.L103:
	move.l 294(%a2),%a4
	move.l 316(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L214
.L104:
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L215
.L105:
	tst.b %d1
	jne .L106
	tst.b 173(%a2)
	jne .L106
	tst.b 174(%a2)
	jne .L106
	tst.b 171(%a2)
	jne .L216
	tst.b 176(%a2)
	jne .L217
.L70:
	tst.b 169(%a2)
	jeq .L77
.L232:
	tst.b 184(%a2)
	jne .L218
.L77:
	tst.b 170(%a2)
	jeq .L110
	tst.b 184(%a2)
	jne .L219
.L110:
	tst.b 171(%a2)
	jeq .L220
	tst.b 184(%a2)
	jne .L221
.L112:
	tst.b 172(%a2)
	jeq .L117
	tst.b 184(%a2)
	jeq .L117
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L118
.L179:
	move.l 294(%a2),%d0
.L119:
	move.l %d2,-(%sp)
	move.l 298(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 120(%a2),-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 120(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 172(%a2)
	clr.b 184(%a2)
.L69:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L220:
	tst.b 173(%a2)
	jeq .L112
	tst.b 184(%a2)
	jeq .L112
.L221:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L113
.L178:
	move.l 294(%a2),%d0
	move.l %d2,-(%sp)
	move.l 298(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
.L240:
	clr.b 171(%a2)
	clr.b 173(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L208:
	tst.b 170(%a2)
	jne .L71
	tst.b 171(%a2)
	jne .L71
	tst.b 176(%a2)
	jne .L75
	tst.b 177(%a2)
	jne .L76
	tst.b 173(%a2)
	jne .L76
	tst.b 172(%a2)
	jne .L76
	tst.b 178(%a2)
	jne .L76
	tst.b 174(%a2)
	jne .L76
	tst.b 179(%a2)
	jne .L76
	tst.b 188(%a2)
	jeq .L77
	move.l 306(%a2),%d2
	tst.b 193(%a2)
	jeq .L222
	jra .L78
.L75:
	move.l 306(%a2),%d2
	tst.b 193(%a2)
	jne .L78
	tst.b 310(%a2)
	jne .L223
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jle .L224
.L80:
	move.l sprite,%a0
	tst.b 322(%a2)
	jne .L185
	move.l %d0,11800(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,11720(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L78
.L117:
	tst.b 174(%a2)
	jeq .L122
	tst.b 184(%a2)
	jeq .L122
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L123
.L180:
	move.l 294(%a2),%d0
	move.l %d2,-(%sp)
	move.l 298(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
.L247:
	clr.b 174(%a2)
	clr.b 175(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L122:
	tst.b 177(%a2)
	jeq .L127
	tst.b 184(%a2)
	jne .L225
.L127:
	tst.b 188(%a2)
	jeq .L128
	tst.b 184(%a2)
	jeq .L128
	tst.b 189(%a2)
	jne .L129
	tst.b 190(%a2)
	jeq .L130
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 116(%a2),-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L129:
	tst.b 182(%a2)
	jne .L226
.L131:
	moveq #1,%d1
	cmp.l 16(%a3),%d1
	jge .L69
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L69
	tst.b 189(%a2)
	jeq .L227
	move.l 298(%a2),%d0
	moveq #122,%d3
	cmp.l %d0,%d3
	jge .L133
	move.b #1,182(%a2)
	move.l %a0,282(%a2)
	moveq #90,%d0
	move.l %d0,298(%a2)
	move.l 316(%a2),-(%sp)
	pea 90.w
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 534(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 312(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 193(%a2)
	jne .L134
	tst.b 310(%a2)
	jne .L228
	move.l 302(%a2),%d0
	subq.l #8,%d0
	move.l %d0,302(%a2)
	jle .L229
.L136:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L137
	move.l %d0,11608(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L134:
	move.l 316(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,-(%sp)
	jsr (%a5)
	move.l 260(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L230
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L231
.L140:
	add.l %d0,294(%a2)
.L141:
	move.l 298(%a2),-(%sp)
	jsr (%a5)
	move.l 344(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,298(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L87:
	move.l 340(%a2),328(%a2)
	jra .L89
.L106:
	move.l %d0,-(%sp)
	moveq #-10,%d0
	add.l 298(%a2),%d0
	move.l %d0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z10bloodSprayiii
	lea (12,%sp),%sp
	tst.b 169(%a2)
	jne .L232
	jra .L77
.L211:
	tst.b 177(%a2)
	jne .L90
	tst.b 173(%a2)
	jne .L90
	tst.b 172(%a2)
	jne .L90
	tst.b 174(%a2)
	jne .L95
	tst.b 179(%a2)
	jne .L95
	tst.b 171(%a2)
	jne .L98
	tst.b 176(%a2)
	jne .L98
	tst.b %d0
	jeq .L99
.L98:
	move.l 312(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 322(%a2),%d2
	move.l 312(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L101
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L233
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L218:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 120(%a2),-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 120(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 169(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L219:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 124(%a2),-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 124(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 170(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L213:
	tst.b 176(%a2)
	jne .L103
.L99:
	tst.b 173(%a2)
	jeq .L234
	clr.b %d1
.L243:
	move.l 294(%a2),%a4
	move.l 316(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L104
.L214:
	lea (40,%a4),%a4
	jra .L105
.L128:
	tst.b 178(%a2)
	jne .L142
	tst.b 179(%a2)
	jeq .L143
.L142:
	tst.b 184(%a2)
	jeq .L143
	tst.b 182(%a2)
	jne .L235
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L69
	move.l 316(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 252(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L236
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L237
.L146:
	add.l %d0,294(%a2)
.L147:
	move.b 180(%a2),%d3
	move.l 328(%a2),%d2
	tst.b %d3
	jne .L149
	move.l 298(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,298(%a2)
	move.l 324(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,328(%a2)
.L149:
	move.l %d2,-(%sp)
	move.l 336(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L150
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L194
.L150:
	tst.b 181(%a2)
	jne .L168
	tst.b %d3
	jne .L169
	tst.b 179(%a2)
	jeq .L197
.L169:
	move.b #1,180(%a2)
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 132(%a2),-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	move.l 132(%a2),%d2
	subq.l #1,%d2
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L167
	move.b #1,181(%a2)
	clr.b 180(%a2)
.L167:
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
.L250:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L215:
	lea (-40,%a4),%a4
	jra .L105
.L113:
	move.l %d2,%d3
	neg.l %d3
	move.l %d3,-(%sp)
	jsr ___floatsisf
	move.l 248(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L238
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L239
.L116:
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
.L248:
	move.l %d2,-(%sp)
	move.l 298(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	jra .L240
.L143:
	tst.b 176(%a2)
	jeq .L157
	tst.b 184(%a2)
	jeq .L157
	tst.b 182(%a2)
	jeq .L158
	moveq #19,%d0
	add.l 282(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L69
	clr.b 176(%a2)
	clr.b 180(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	move.b #1,183(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,298(%a2)
.L244:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L157:
	tst.b 183(%a2)
	jeq .L69
	tst.b 184(%a2)
	jeq .L69
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 88(%a2),-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 88(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	clr.b 184(%a2)
	clr.b 183(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L212:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L185:
	move.l %d0,11608(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L78
.L209:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jgt .L84
	jra .L210
.L223:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jgt .L80
.L224:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L80
.L210:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L84
.L225:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 136(%a2),-(%sp)
	move.l 502(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 136(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	move.l 312(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 177(%a2)
	move.b #1,183(%a2)
	clr.l 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L118:
	lea ___mulsf3,%a4
	move.l #0x3eaaaaab,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,%a5
	move.l %d2,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l %a5,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L241
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L242
.L121:
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L119
.L234:
	tst.b 174(%a2)
	jeq .L70
	clr.b %d1
	jra .L243
.L235:
	moveq #19,%d0
	add.l 282(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L69
	clr.b 178(%a2)
	clr.b 179(%a2)
	clr.b 180(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	move.b #1,183(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,298(%a2)
	jra .L244
.L226:
	moveq #19,%d0
	add.l 282(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L69
	clr.b 188(%a2)
	clr.b 189(%a2)
	clr.b 182(%a2)
	move.b #1,183(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,298(%a2)
	jra .L244
.L123:
	lea ___mulsf3,%a4
	move.l #0x3f000000,-(%sp)
	move.l 248(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,%a5
	move.l %d2,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l %a5,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L245
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L246
.L126:
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
.L249:
	move.l %d2,-(%sp)
	move.l 298(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L69
	jra .L247
.L239:
	tst.l %d0
	jle .L116
.L187:
	tst.b 352(%a2)
	jeq .L178
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L248
.L217:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	moveq #-10,%d3
	add.l 298(%a2),%d3
	move.l %d3,(%sp)
	move.l %a4,-(%sp)
	lea __Z11bloodSquirtii,%a5
	jsr (%a5)
	addq.l #8,%sp
	moveq #-30,%d0
	add.l 298(%a2),%d0
	move.l %d0,-(%sp)
	pea 20(%a4)
	jsr (%a5)
	addq.l #8,%sp
	moveq #-50,%d1
	add.l 298(%a2),%d1
	move.l %d1,-(%sp)
	pea 10(%a4)
	jsr (%a5)
	addq.l #4,%sp
	move.l 316(%a2),(%sp)
	moveq #-40,%d2
	add.l 298(%a2),%d2
	move.l %d2,-(%sp)
	move.l %a4,-(%sp)
	lea __Z9bloodDropiii,%a5
	jsr (%a5)
	move.l 316(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-40,%d3
	add.l 298(%a2),%d3
	move.l %d3,-(%sp)
	add.l %d0,%d0
	add.l %d0,%d0
	sub.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr (%a5)
	move.l 316(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-50,%d1
	add.l 298(%a2),%d1
	move.l %d1,-(%sp)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d0
	add.l %d0,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a4.l)
	jsr (%a5)
	move.l 316(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-50,%d2
	add.l 298(%a2),%d2
	move.l %d2,-(%sp)
	add.l %d0,%d0
	add.l %d0,%d0
	sub.l %d1,%d0
	add.l %d0,%d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a4.l)
	jsr (%a5)
	lea (12,%sp),%sp
	tst.b 169(%a2)
	jne .L232
	jra .L77
.L242:
	tst.l %d0
	jle .L121
.L189:
	tst.b 352(%a2)
	jeq .L179
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L119
.L246:
	tst.l %d0
	jle .L126
.L191:
	tst.b 352(%a2)
	jeq .L180
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L249
.L237:
	tst.l %d0
	jle .L146
.L182:
	tst.b 352(%a2)
	jeq .L147
	add.l %d0,294(%a2)
	jra .L147
.L231:
	tst.l %d0
	jle .L140
.L181:
	tst.b 352(%a2)
	jeq .L141
	add.l %d0,294(%a2)
	jra .L141
.L251:
	tst.l %d0
	jlt .L183
.L160:
	add.l %d0,294(%a2)
.L161:
	move.b 180(%a2),%d3
	move.l 328(%a2),%d2
	tst.b %d3
	jne .L163
	move.l 298(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,298(%a2)
	move.l 324(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,328(%a2)
.L163:
	move.l 336(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___gesf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L164
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L194
.L164:
	tst.b 181(%a2)
	jne .L168
	tst.b %d3
	jne .L169
.L197:
	move.l 312(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L169
.L194:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 498(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.l 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	jra .L250
.L229:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L136
.L228:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 302(%a2),%d0
	subq.l #8,%d0
	move.l %d0,302(%a2)
	jgt .L136
	jra .L229
.L216:
	move.l %d0,-(%sp)
	moveq #20,%d1
	add.l 298(%a2),%d1
	move.l %d1,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z9bloodGlobiii
	move.l 316(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-30,%d2
	add.l 298(%a2),%d2
	move.l %d2,-(%sp)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr __Z9bloodDropiii
	lea (12,%sp),%sp
	tst.b 169(%a2)
	jne .L232
	jra .L77
.L238:
	tst.l %d0
	jlt .L187
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L248
.L95:
	tst.b 175(%a2)
	jeq .L97
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L130:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 116(%a2),-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 182(%a2)
	jeq .L131
	jra .L226
.L158:
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L69
	move.l 316(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 252(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L251
	moveq #-1,%d1
	cmp.l %d2,%d1
	jne .L160
	tst.l %d0
	jle .L160
.L183:
	tst.b 352(%a2)
	jeq .L161
	add.l %d0,294(%a2)
	jra .L161
.L241:
	tst.l %d0
	jlt .L189
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L119
.L97:
	move.l 312(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L94
.L168:
	move.l 298(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L170
	move.b #1,182(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	move.l %d3,298(%a2)
	move.l 316(%a2),-(%sp)
	pea 90.w
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 498(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 312(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	jra .L250
.L245:
	tst.l %d0
	jlt .L191
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L249
.L227:
	move.b #1,189(%a2)
	move.l 316(%a2),%d0
	lsl.l #4,%d0
	add.l %d0,294(%a2)
	moveq #48,%d2
	move.l %d2,298(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L133:
	move.l 316(%a2),-(%sp)
	move.l %d0,-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 534(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L134
.L170:
	move.l 316(%a2),-(%sp)
	move.l %d0,-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 498(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	jra .L250
.L236:
	tst.l %d0
	jlt .L182
	add.l %d0,294(%a2)
	jra .L147
.L230:
	tst.l %d0
	jlt .L181
	add.l %d0,294(%a2)
	jra .L141
.L233:
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
.L137:
	move.l %d0,11800(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,11720(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L134
	.even
	.globl	__Z17fighterResetFlagsP7Fighter
__Z17fighterResetFlagsP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 228(%a0),%d0
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
	clr.b 145(%a0)
	clr.b 146(%a0)
	clr.b 147(%a0)
	clr.b 186(%a0)
	clr.b 148(%a0)
	clr.b 149(%a0)
	clr.b 150(%a0)
	clr.b 151(%a0)
	clr.b 152(%a0)
	clr.b 153(%a0)
	clr.b 154(%a0)
	clr.b 155(%a0)
	clr.b 156(%a0)
	clr.b 157(%a0)
	clr.b 158(%a0)
	clr.b 160(%a0)
	clr.b 159(%a0)
	clr.b 161(%a0)
	clr.b 276(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 166(%a0)
	clr.b 187(%a0)
	clr.b 188(%a0)
	clr.b 189(%a0)
	clr.b 190(%a0)
	clr.b 169(%a0)
	clr.b 170(%a0)
	clr.b 171(%a0)
	clr.b 172(%a0)
	clr.b 173(%a0)
	clr.b 174(%a0)
	clr.b 175(%a0)
	clr.b 176(%a0)
	clr.b 179(%a0)
	clr.b 180(%a0)
	clr.b 181(%a0)
	clr.b 182(%a0)
	clr.b 183(%a0)
	clr.b 184(%a0)
	clr.b 185(%a0)
	clr.b 194(%a0)
	clr.b 195(%a0)
	clr.b 196(%a0)
	clr.b 199(%a0)
	clr.b 200(%a0)
	clr.b 211(%a0)
	clr.b 212(%a0)
	clr.b 222(%a0)
	clr.b 223(%a0)
	clr.b 310(%a0)
	clr.b 320(%a0)
	clr.b 321(%a0)
	move.b #1,352(%a0)
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
	move.b #1,193(%a2)
	clr.l 306(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
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
	move.b 184(%a0),%d0
	jne .L257
	tst.b 152(%a0)
	jne .L257
.L258:
	tst.b 154(%a1)
	jne .L284
.L260:
	tst.b 155(%a1)
	jeq .L262
	tst.b 151(%a0)
	jne .L262
	move.b #1,170(%a0)
	moveq #2,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
.L261:
	tst.b %d0
	jne .L256
.L281:
	tst.b 152(%a0)
	jeq .L274
.L285:
	tst.b 151(%a0)
	jeq .L274
	move.b #1,153(%a0)
	move.b #1,196(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a0)
.L277:
	tst.b 187(%a1)
	jeq .L256
	move.l 294(%a1),202(%a0)
	move.l 298(%a1),206(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,190(%a0)
	move.b #1,200(%a0)
	clr.b 210(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a1)
.L256:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L257:
	tst.b 193(%a0)
	jne .L258
	tst.b %d0
	jne .L256
	tst.b 152(%a0)
	jeq .L281
	move.b #1,153(%a0)
	move.b #1,196(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a0)
	tst.b 152(%a0)
	jne .L285
.L274:
	tst.b 162(%a1)
	jeq .L276
	move.b #1,177(%a0)
	moveq #4,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	jra .L277
.L284:
	tst.b 151(%a0)
	jne .L260
	move.b #1,169(%a0)
	moveq #2,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L281
	jra .L256
.L262:
	tst.b 156(%a1)
	jeq .L263
	tst.b 151(%a0)
	jne .L263
	move.b #1,169(%a0)
	moveq #5,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L281
	jra .L256
.L263:
	tst.b 157(%a1)
	jeq .L264
	tst.b 151(%a0)
	jne .L264
	move.b #1,171(%a0)
	moveq #5,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L281
	jra .L256
.L264:
	tst.b 163(%a1)
	jeq .L265
	tst.b 151(%a0)
	jeq .L286
.L265:
	tst.b 164(%a1)
	jeq .L266
	tst.b 151(%a0)
	jeq .L287
.L266:
	tst.b 158(%a1)
	jeq .L268
	move.b #1,173(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #5,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	tst.b %d0
	jeq .L281
	jra .L256
.L276:
	tst.b 166(%a1)
	jeq .L277
	move.b #1,172(%a0)
	clr.b 210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #2,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	jra .L277
.L268:
	tst.b 159(%a1)
	jne .L288
	tst.b 161(%a1)
	jeq .L270
	move.b #1,176(%a0)
	clr.b 210(%a1)
	move.b #1,211(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #8,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L281
	jra .L256
.L286:
	move.b #1,171(%a0)
	moveq #6,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	tst.b %d0
	jeq .L281
	jra .L256
.L287:
	move.b #1,174(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L289
	moveq #4,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
.L290:
	tst.b %d0
	jeq .L281
	jra .L256
.L288:
	move.b #1,173(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #4,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
.L291:
	tst.b %d0
	jeq .L281
	jra .L256
.L289:
	move.b #1,175(%a0)
	moveq #4,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	jra .L290
.L270:
	tst.b 160(%a1)
	jeq .L271
	move.b #1,178(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #6,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L281
	jra .L256
.L271:
	tst.b 165(%a1)
	jeq .L261
	move.b #1,179(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #4,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	jra .L291
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15416,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 185(%a2)
	jeq .L294
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L308
.L294:
	tst.b 185(%a3)
	jeq .L295
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L309
.L295:
	pea 25.w
	pea 18.w
	pea 25.w
	pea 18.w
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L293
	move.l colliders,%d4
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a4
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L298
.L313:
	cmp.w #0,%a0
	jlt .L293
	move.l 188(%a1),%d0
	move.l 188(%a0),%d1
	move.l sprite,%a0
	move.l %d0,%d3
	add.l %d0,%d3
	add.l %d0,%d3
	lsl.l #6,%d3
	moveq #-1,%d5
	move.l %d5,112(%a0,%d3.l)
	move.l %d1,%d3
	add.l %d1,%d3
	add.l %d1,%d3
	lsl.l #6,%d3
	move.l %d5,112(%a0,%d3.l)
	moveq #41,%d3
	cmp.l %d0,%d3
	jeq .L310
	moveq #36,%d3
	cmp.l %d0,%d3
	jeq .L311
	moveq #42,%d3
	cmp.l %d0,%d3
	jne .L303
	moveq #36,%d5
	cmp.l %d1,%d5
	jeq .L312
.L306:
	addq.l #8,%d2
.L314:
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L313
.L298:
	cmp.w #0,%a0
	jge .L306
.L293:
	movem.l -28(%fp),#7228
	unlk %fp
	rts
.L311:
	moveq #39,%d5
	cmp.l %d1,%d5
	jne .L306
	tst.b 146(%a2)
	jeq .L306
	move.l 294(%a2),%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L306
	cmp.l #328,%d0
	jgt .L306
	move.l 294(%a3),%d0
	cmp.l %d0,%d1
	jge .L306
	cmp.l #328,%d0
	jgt .L306
	move.b #1,185(%a2)
	move.b #1,195(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a3)
	addq.l #8,%d2
	jra .L314
.L310:
	moveq #39,%d5
	cmp.l %d1,%d5
	jne .L306
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L314
.L303:
	moveq #39,%d3
	cmp.l %d0,%d3
	jne .L306
	moveq #36,%d5
	cmp.l %d1,%d5
	jne .L306
	tst.b 146(%a3)
	jeq .L306
	move.b #1,185(%a3)
	move.b #1,195(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	addq.l #8,%d2
	jra .L314
.L312:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L314
.L308:
	clr.b 185(%a2)
	jra .L294
.L309:
	clr.b 185(%a3)
	jra .L295
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 316(%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L330
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L331
.L319:
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L332
.L320:
	moveq #-1,%d1
	cmp.l %d0,%d1
	jne .L316
	move.l 294(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a1),%d0
	jge .L316
.L327:
	tst.b 186(%a0)
	jne .L316
	clr.b 321(%a0)
	move.b #1,186(%a0)
	move.b #1,320(%a0)
.L316:
	unlk %fp
	rts
.L331:
	move.l 294(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a0),%d0
	jge .L319
	tst.b 186(%a1)
	jne .L319
.L333:
	clr.b 321(%a1)
	move.b #1,186(%a1)
	move.b #1,320(%a1)
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L320
.L332:
	move.l 294(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a0),%d0
	jlt .L327
	unlk %fp
	rts
.L330:
	move.l 294(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a1),%d0
	jge .L319
	tst.b 186(%a1)
	jne .L319
	jra .L333
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L342
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L343
.L337:
	clr.b 191(%a0)
	clr.b 191(%a1)
.L335:
	unlk %fp
	rts
.L343:
	moveq #-72,%d0
	add.l 294(%a0),%d0
	cmp.l 294(%a1),%d0
	jgt .L337
.L339:
	move.b #1,191(%a0)
	move.b #1,191(%a1)
	unlk %fp
	rts
.L342:
	moveq #72,%d0
	add.l 294(%a0),%d0
	cmp.l 294(%a1),%d0
	jge .L339
	clr.b 191(%a0)
	clr.b 191(%a1)
	jra .L335
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 302(%a1),11608(%a0)
	move.l 12(%fp),%a1
	move.l 302(%a1),%d0
	move.l %d0,11800(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,11720(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterAddPendingDamageP7Fighterib
__Z23fighterAddPendingDamageP7Fighterib:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),306(%a0)
	move.b 19(%fp),310(%a0)
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
	tst.b 193(%a2)
	jne .L347
	tst.b 310(%a2)
	jne .L354
	move.l 302(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,302(%a2)
	jle .L355
.L350:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L351
.L356:
	move.l %d0,11608(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L351:
	move.l %d0,11800(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,11720(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L347:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L354:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,302(%a2)
	jgt .L350
.L355:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L351
	jra .L356
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #-1,%d0
	cmp.l 316(%a0),%d0
	jeq .L362
	addq.l #2,294(%a0)
.L358:
	unlk %fp
	rts
.L362:
	tst.b 352(%a0)
	jeq .L358
	addq.l #2,294(%a0)
	jra .L358
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 316(%a0),%d0
	jeq .L368
	subq.l #2,294(%a0)
.L364:
	unlk %fp
	rts
.L368:
	tst.b 352(%a0)
	jeq .L364
	subq.l #2,294(%a0)
	jra .L364
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
	tst.b 144(%a0)
	jeq .L371
	move.l 228(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 296(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 300(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L371:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L379
	moveq #8,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	unlk %fp
	rts
.L379:
	moveq #6,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterSetOnFloorP7Fighter
__Z17fighterSetOnFloorP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #90,%d0
	move.l %d0,298(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 294(%a2),%d0
	moveq #11,%d1
	cmp.l %d0,%d1
	jge .L395
.L383:
	cmp.l #280,%d0
	jgt .L387
.L392:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L395:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L391
	move.l 294(%a2),%d0
	moveq #11,%d1
	cmp.l %d0,%d1
	jlt .L383
	cmp.l #280,294(%a3)
	jgt .L391
	jsr (%a4)
	tst.b %d0
	jne .L391
	move.l 294(%a2),%d0
	cmp.l #280,%d0
	jle .L392
.L387:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L396
.L391:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L396:
	cmp.l #328,294(%a2)
	jle .L392
	moveq #10,%d0
	cmp.l 294(%a3),%d0
	slt %d0
	neg.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z19fighterPositionXAddP7Fighteri
__Z19fighterPositionXAddP7Fighteri:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d1
	move.l 316(%a0),%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L405
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L406
.L400:
	add.l %d1,294(%a0)
.L398:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L406:
	tst.l %d1
	jle .L400
.L402:
	tst.b 352(%a0)
	jeq .L398
	add.l %d1,294(%a0)
	jra .L398
.L405:
	tst.l %d1
	jlt .L402
	add.l %d1,294(%a0)
	jra .L398
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 184(%a2)
	jne .L409
	tst.b 146(%a2)
	jeq .L633
.L410:
	clr.b 144(%a2)
.L412:
	move.l 236(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,232(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L634
.L413:
	tst.b 151(%a2)
	jeq .L414
	tst.b 168(%a2)
	jeq .L414
	tst.b 210(%a2)
	jeq .L414
	tst.b 161(%a2)
	jne .L416
	clr.b 168(%a2)
	move.b #1,161(%a2)
	move.b #1,147(%a2)
	clr.b 151(%a2)
	clr.l 16(%a3)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L416:
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 211(%a2)
	jeq .L635
.L418:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 214(%a2),%d0
	cmp.l %a0,%d0
	jgt .L636
	clr.b 211(%a2)
.L421:
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L637
.L423:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L601
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L601
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L638
.L601:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L408
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L408
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L408
	and.l JAGPAD_RIGHT,%d0
	jne .L408
	move.b #1,167(%a2)
.L408:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L409:
	clr.b 144(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L633:
	tst.b 151(%a2)
	jne .L410
	tst.b 148(%a2)
	jne .L410
	tst.b 150(%a2)
	jne .L410
	tst.b 149(%a2)
	jne .L410
	tst.b 147(%a2)
	jeq .L412
	clr.b 144(%a2)
	jra .L412
.L634:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L413
.L414:
	tst.b 161(%a2)
	jne .L416
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L424
	tst.l %d1
	jeq .L425
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L426
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L424
.L426:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L425
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L424
.L425:
	tst.b 155(%a2)
	jeq .L639
.L428:
	move.l 64(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L435
	clr.b 155(%a2)
.L435:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L635:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 84(%a2),-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 211(%a2)
	jne .L418
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L423
	jra .L637
.L639:
	tst.l %d3
	jeq .L640
.L436:
	tst.b 168(%a2)
	jeq .L437
	tst.b 210(%a2)
	jeq .L437
	tst.b 148(%a2)
	jne .L437
	tst.b 185(%a2)
	jeq .L437
	tst.b 164(%a2)
	jne .L440
	clr.b 168(%a2)
	move.b #1,164(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L442:
	move.l 390(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 100(%a2),-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L424:
	tst.b 168(%a2)
	jeq .L425
	tst.b 210(%a2)
	jeq .L425
	tst.b 148(%a2)
	jne .L425
	tst.b 185(%a2)
	jne .L425
	tst.b 155(%a2)
	jne .L428
	clr.b 168(%a2)
	move.b #1,155(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 322(%a2),%d2
	move.l 312(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L432
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L433
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L641
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L645:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L638:
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L601
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L601
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L601
	move.b #1,168(%a2)
	jra .L601
.L640:
	tst.l %d1
	jeq .L437
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L438
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L436
.L438:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L437
	moveq #-1,%d3
	cmp.l 316(%a2),%d3
	jeq .L436
.L437:
	tst.b 164(%a2)
	jne .L440
	tst.l %d1
	jeq .L443
	tst.b 168(%a2)
	jeq .L443
	tst.b 210(%a2)
	jeq .L443
	tst.b 148(%a2)
	jne .L443
	tst.b 191(%a2)
	jeq .L443
	tst.b 187(%a2)
	jne .L445
	clr.b 168(%a2)
	move.b #1,187(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d4
	cmp.l %d0,%d4
	jhi .L447
	moveq #6,%d1
	cmp.l %d0,%d1
	jcc .L448
	moveq #7,%d2
	cmp.l %d0,%d2
	jeq .L642
.L447:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L450:
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L637:
	clr.b 161(%a2)
	move.b #1,210(%a2)
	jra .L423
.L440:
	move.l 100(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L442
	clr.b 164(%a2)
	move.b #1,210(%a2)
	move.l 390(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 100(%a2),-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L642:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L443:
	tst.b 187(%a2)
	jne .L445
	tst.l %d1
	jeq .L451
	tst.b 168(%a2)
	jeq .L451
	tst.b 210(%a2)
	jeq .L451
	tst.b 148(%a2)
	jne .L451
	tst.b 191(%a2)
	jne .L451
	tst.b 154(%a2)
	jne .L453
	clr.b 168(%a2)
	move.b #1,154(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d1
	move.b 322(%a2),%d1
	move.l 312(%a2),%d0
	move.l (%a2),%a0
	moveq #6,%d3
	cmp.l %a0,%d3
	jeq .L457
	moveq #7,%d4
	cmp.l %a0,%d4
	jeq .L458
	moveq #4,%d2
	cmp.l %a0,%d2
	jeq .L643
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L460:
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L445:
	move.l 112(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L450
	clr.b 187(%a2)
	move.b #1,210(%a2)
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L636:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 482(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 211(%a2)
	jne .L423
	jra .L421
.L451:
	tst.b 154(%a2)
	jne .L453
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L461
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L461
	moveq #1,%d3
	cmp.l 316(%a2),%d3
	jeq .L462
.L461:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L463
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L463
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L462
.L463:
	tst.b 162(%a2)
	jeq .L644
.L465:
	move.l 92(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L467
	clr.b 162(%a2)
.L467:
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L453:
	move.l 60(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L460
	clr.b 154(%a2)
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L644:
	tst.l %d1
	jeq .L468
	moveq #1,%d3
	cmp.l 316(%a2),%d3
	jeq .L469
.L468:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L470
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L469
.L470:
	tst.b 163(%a2)
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
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L475
.L477:
	tst.l %d1
	jeq .L476
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L475
.L476:
	tst.b 157(%a2)
	jne .L479
	move.l JAGPAD_A,%d4
	or.l %d4,%d3
	and.l %d0,%d3
	jeq .L482
	tst.b 168(%a2)
	jeq .L482
	tst.b 210(%a2)
	jeq .L482
	tst.b 148(%a2)
	jne .L482
	tst.b 151(%a2)
	jne .L482
	tst.b 191(%a2)
	jeq .L482
	tst.b 165(%a2)
	jne .L484
	clr.b 168(%a2)
	move.b #1,165(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L486:
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 104(%a2),-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L472:
	move.l 96(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L474
	clr.b 163(%a2)
.L474:
	move.l 386(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L462:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L463
	tst.b 168(%a2)
	jeq .L463
	tst.b 210(%a2)
	jeq .L463
	tst.b 148(%a2)
	jne .L463
	tst.b 162(%a2)
	jne .L465
	clr.b 168(%a2)
	move.b #1,147(%a2)
	move.b #1,162(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L469:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L470
	tst.b 168(%a2)
	jeq .L470
	tst.b 210(%a2)
	jeq .L470
	tst.b 148(%a2)
	jne .L470
	tst.b 163(%a2)
	jne .L472
	clr.b 168(%a2)
	move.b #1,147(%a2)
	move.b #1,163(%a2)
	clr.l 16(%a3)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 386(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L479:
	move.l 72(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L481
	clr.b 157(%a2)
.L481:
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L475:
	tst.b 168(%a2)
	jeq .L476
	tst.b 210(%a2)
	jeq .L476
	tst.b 148(%a2)
	jne .L476
	tst.b 151(%a2)
	jne .L476
	tst.b 185(%a2)
	jne .L476
	tst.b 157(%a2)
	jne .L479
	clr.b 168(%a2)
	move.b #1,157(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L641:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L645
.L433:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L645
.L432:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L645
.L448:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L482:
	tst.b 165(%a2)
	jne .L484
	and.l %d0,%d4
	jeq .L487
	tst.b 168(%a2)
	jeq .L487
	tst.b 210(%a2)
	jeq .L487
	tst.b 148(%a2)
	jne .L487
	tst.b 151(%a2)
	jne .L487
	tst.b 185(%a2)
	jne .L487
	tst.b 156(%a2)
	jne .L489
	clr.b 168(%a2)
	move.b #1,156(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L491:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L484:
	move.l 104(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L486
	clr.b 165(%a2)
	move.b #1,210(%a2)
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 104(%a2),-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L487:
	tst.b 156(%a2)
	jne .L489
	tst.l %d3
	jeq .L492
	tst.b 168(%a2)
	jeq .L492
	tst.b 210(%a2)
	jeq .L492
	tst.b 148(%a2)
	jne .L492
	tst.b 151(%a2)
	jeq .L492
	tst.b 166(%a2)
	jne .L494
	clr.b 168(%a2)
	move.b #1,166(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L496:
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L643:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L460
.L458:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L460
.L457:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L460
.L492:
	tst.b 166(%a2)
	jeq .L646
.L494:
	move.l 108(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L496
	clr.b 166(%a2)
	move.b #1,210(%a2)
	move.b #1,151(%a2)
	moveq #1,%d0
	move.l %d0,16(%a3)
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L646:
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jne .L497
	move.l %d0,%d3
	and.l JAGPAD_8,%d3
	jeq .L498
.L497:
	tst.b 148(%a2)
	jne .L498
	tst.b 210(%a2)
	jeq .L498
	tst.b 152(%a2)
	jne .L499
	move.b #1,152(%a2)
	clr.l 16(%a3)
.L499:
	and.l JAGPAD_DOWN,%d0
	jeq .L500
	tst.b 151(%a2)
	jne .L501
	move.b #1,151(%a2)
	clr.b 146(%a2)
	clr.l 16(%a3)
.L501:
	tst.b 153(%a2)
	jne .L502
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 52(%a2),-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L498:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L505
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L506
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L507
.L506:
	tst.l %d1
	jeq .L505
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L507
.L505:
	tst.b 149(%a2)
	jeq .L647
.L509:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L511
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L512
.L511:
	tst.b 149(%a2)
	jeq .L512
	tst.b 222(%a2)
	jne .L512
	tst.b 276(%a2)
	jne .L512
.L513:
	tst.b 160(%a2)
	jne .L514
	tst.b 158(%a2)
	jne .L515
	clr.b 168(%a2)
	move.b #1,276(%a2)
	move.b #1,158(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L515:
	tst.b 212(%a2)
	jeq .L648
.L516:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L649
	clr.b 212(%a2)
	clr.b 158(%a2)
.L517:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L514:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L519
	and.l JAGPAD_9,%d0
	jeq .L520
.L519:
	tst.b 149(%a2)
	jeq .L520
	tst.b 222(%a2)
	jne .L520
	tst.b 276(%a2)
	jne .L520
.L521:
	tst.b 158(%a2)
	jne .L522
	tst.b 160(%a2)
	jne .L523
	clr.b 168(%a2)
	move.b #1,276(%a2)
	move.b #1,160(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L523:
	tst.b 212(%a2)
	jeq .L650
.L524:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L651
	clr.b 212(%a2)
	clr.b 160(%a2)
.L525:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L522:
	tst.l 16(%a3)
	jne .L527
	tst.b 158(%a2)
	jne .L527
	tst.b 160(%a2)
	jeq .L652
.L527:
	tst.b 149(%a2)
	jeq .L423
	tst.b 222(%a2)
	jne .L528
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L528
	tst.b 223(%a2)
	jne .L529
	moveq #10,%d0
	add.l 224(%a2),%d0
	cmp.l %a0,%d0
	jge .L529
	tst.b 158(%a2)
	jne .L529
	tst.b 160(%a2)
	jne .L529
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,223(%a2)
	addq.l #8,%sp
.L529:
	tst.b 212(%a2)
	jne .L530
	lea ___floatsisf,%a4
	move.l 316(%a2),-(%sp)
	jsr (%a4)
	move.l 264(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	move.l #___fixsfsi,%d3
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 328(%a2),%d2
	move.l 298(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,298(%a2)
	move.l %d2,(%sp)
	move.l 324(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,328(%a2)
	lea (16,%sp),%sp
.L530:
	tst.b 158(%a2)
	jne .L528
	tst.b 160(%a2)
	jne .L528
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 36(%a2),-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L528:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L531
	moveq #89,%d0
	cmp.l 298(%a2),%d0
	jlt .L624
.L531:
	tst.b 222(%a2)
	jeq .L423
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L423
	move.b #1,210(%a2)
	clr.b 149(%a2)
.L626:
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	clr.b 223(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L423
.L489:
	move.l 68(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L491
	clr.b 156(%a2)
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L647:
	tst.l %d3
	jeq .L533
	tst.l %d1
	jeq .L534
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L535
.L534:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L533
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L535
.L533:
	tst.b 150(%a2)
	jeq .L653
.L537:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L539
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L540
.L539:
	tst.b 150(%a2)
	jeq .L540
	tst.b 222(%a2)
	jne .L540
	tst.b 276(%a2)
	jeq .L541
.L540:
	tst.b 158(%a2)
	jeq .L542
	tst.b 222(%a2)
	jne .L542
	tst.b 150(%a2)
	jeq .L542
.L541:
	tst.b 160(%a2)
	jne .L542
	tst.b 158(%a2)
	jne .L543
	clr.b 168(%a2)
	move.b #1,276(%a2)
	move.b #1,158(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L543:
	tst.b 212(%a2)
	jeq .L654
.L544:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L655
	clr.b 212(%a2)
	clr.b 160(%a2)
.L545:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L542:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L547
	and.l JAGPAD_9,%d0
	jeq .L548
.L547:
	tst.b 150(%a2)
	jeq .L548
	tst.b 222(%a2)
	jne .L548
	tst.b 276(%a2)
	jeq .L549
.L548:
	tst.b 160(%a2)
	jeq .L550
	tst.b 222(%a2)
	jne .L550
	tst.b 150(%a2)
	jeq .L550
.L549:
	tst.b 158(%a2)
	jne .L550
	tst.b 160(%a2)
	jne .L551
	clr.b 168(%a2)
	move.b #1,276(%a2)
	move.b #1,160(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L551:
	tst.b 212(%a2)
	jeq .L656
.L552:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L657
	clr.b 212(%a2)
	clr.b 160(%a2)
.L553:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L550:
	tst.l 16(%a3)
	jne .L555
	tst.b 158(%a2)
	jne .L555
	tst.b 160(%a2)
	jeq .L658
.L555:
	tst.b 150(%a2)
	jeq .L423
	tst.b 222(%a2)
	jne .L556
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L556
	tst.b 223(%a2)
	jne .L557
	moveq #10,%d0
	add.l 224(%a2),%d0
	cmp.l %a0,%d0
	jge .L557
	tst.b 158(%a2)
	jne .L557
	tst.b 160(%a2)
	jne .L557
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,223(%a2)
	addq.l #8,%sp
.L557:
	tst.b 212(%a2)
	jne .L558
	lea ___floatsisf,%a4
	move.l 316(%a2),-(%sp)
	jsr (%a4)
	move.l 264(%a2),%d1
	add.l #-2147483648,%d1
	move.l %d1,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	move.l #___fixsfsi,%d3
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 328(%a2),%d2
	move.l 298(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,298(%a2)
	move.l %d2,(%sp)
	move.l 324(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,328(%a2)
	lea (16,%sp),%sp
.L558:
	tst.b 158(%a2)
	jne .L556
	tst.b 160(%a2)
	jne .L556
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.l 36(%a2),-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L556:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L559
	moveq #89,%d0
	cmp.l 298(%a2),%d0
	jlt .L624
.L559:
	tst.b 222(%a2)
	jeq .L423
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L423
	move.b #1,210(%a2)
	clr.b 150(%a2)
	jra .L626
.L520:
	tst.b 160(%a2)
	jeq .L522
	tst.b 222(%a2)
	jne .L522
	tst.b 149(%a2)
	jeq .L522
	jra .L521
.L512:
	tst.b 158(%a2)
	jeq .L514
	tst.b 222(%a2)
	jne .L514
	tst.b 149(%a2)
	jeq .L514
	jra .L513
.L658:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
.L625:
	move.l 36(%a2),-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L657:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 478(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L553
.L656:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 212(%a2)
	jeq .L553
	jra .L552
.L655:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L545
.L654:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 212(%a2)
	jeq .L545
	jra .L544
.L653:
	tst.l %d1
	jeq .L561
	tst.b 210(%a2)
	jeq .L561
	tst.b 148(%a2)
	jne .L561
	tst.b 146(%a2)
	jne .L562
	clr.l 16(%a3)
.L562:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	and.l #255,%d2
	move.l %d2,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	move.b #1,146(%a2)
	clr.b 151(%a2)
	clr.b 166(%a2)
	clr.b 152(%a2)
	clr.b 147(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	lea (32,%sp),%sp
	tst.l 294(%a2)
	jle .L423
	tst.b 185(%a2)
	jne .L563
	move.l 244(%a2),%d0
	moveq #-1,%d2
	cmp.l 316(%a2),%d2
	jne .L564
	move.l 240(%a2),%d0
.L564:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L623:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L423
.L563:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L423
	move.l 272(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L623
.L561:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L565
	tst.b 210(%a2)
	jeq .L565
	tst.b 148(%a2)
	jne .L565
	tst.b 146(%a2)
	jne .L566
	clr.l 16(%a3)
.L566:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	move.b %d2,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	move.b #1,146(%a2)
	clr.b 151(%a2)
	clr.b 166(%a2)
	clr.b 152(%a2)
	clr.b 147(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	lea (32,%sp),%sp
	cmp.l #280,294(%a2)
	jgt .L423
	tst.b 185(%a2)
	jne .L567
	move.l 240(%a2),%d0
	moveq #-1,%d3
	cmp.l 316(%a2),%d3
	jne .L568
	move.l 244(%a2),%d0
.L568:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L623
.L567:
	move.l 272(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L623
.L565:
	and.l JAGPAD_DOWN,%d0
	jeq .L569
	tst.b 210(%a2)
	jeq .L569
	tst.b 148(%a2)
	jne .L569
	tst.b 151(%a2)
	jne .L570
	move.b #1,151(%a2)
	clr.b 146(%a2)
	clr.b 147(%a2)
	clr.l 16(%a3)
.L570:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 40(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L569:
	tst.l %d3
	jeq .L571
	tst.b 167(%a2)
	jne .L572
.L571:
	tst.b 148(%a2)
	jeq .L659
.L573:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L575
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L576
.L575:
	tst.b 148(%a2)
	jeq .L576
	tst.b 222(%a2)
	jne .L576
	tst.b 276(%a2)
	jeq .L577
.L576:
	tst.b 158(%a2)
	jeq .L578
	tst.b 222(%a2)
	jne .L578
	tst.b 148(%a2)
	jeq .L578
.L577:
	tst.b 159(%a2)
	jne .L578
	tst.b 158(%a2)
	jne .L579
	clr.b 168(%a2)
	move.b #1,276(%a2)
	move.b #1,147(%a2)
	move.b #1,158(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L579:
	tst.b 212(%a2)
	jeq .L660
.L580:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L661
	clr.b 212(%a2)
	clr.b 158(%a2)
.L581:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L578:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L583
	and.l JAGPAD_9,%d0
	jeq .L584
.L583:
	tst.b 148(%a2)
	jeq .L584
	tst.b 222(%a2)
	jne .L584
	tst.b 276(%a2)
	jeq .L585
.L584:
	tst.b 159(%a2)
	jeq .L586
	tst.b 222(%a2)
	jne .L586
	tst.b 148(%a2)
	jeq .L586
.L585:
	tst.b 158(%a2)
	jne .L586
	tst.b 159(%a2)
	jne .L587
	clr.b 168(%a2)
	move.b #1,276(%a2)
	move.b #1,159(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L587:
	tst.b 212(%a2)
	jeq .L662
.L588:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L663
	clr.b 212(%a2)
	clr.b 159(%a2)
.L589:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L586:
	tst.l 16(%a3)
	jne .L591
	tst.b 158(%a2)
	jne .L591
	tst.b 159(%a2)
	jeq .L596
.L591:
	tst.b 148(%a2)
	jeq .L423
	tst.b 222(%a2)
	jne .L592
	move.w raptor_ticks,%d2
	ext.l %d2
	cmp.l 282(%a2),%d2
	jle .L593
	tst.b 212(%a2)
	jne .L593
	move.l 328(%a2),%d3
	move.l 298(%a2),-(%sp)
	jsr ___floatsisf
	lea ___addsf3,%a4
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,298(%a2)
	move.l %d3,(%sp)
	move.l 324(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,328(%a2)
	move.l %d2,282(%a2)
.L593:
	tst.b 158(%a2)
	jne .L592
	tst.b 159(%a2)
	jne .L592
	moveq #1,%d4
	move.l %d4,16(%a3)
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 426(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L592:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L594
	moveq #89,%d0
	cmp.l 298(%a2),%d0
	jlt .L664
.L594:
	tst.b 222(%a2)
	jeq .L423
	move.l 32(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L596
	move.b #1,210(%a2)
	clr.b 148(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L596:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L664:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 158(%a2)
	clr.b 159(%a2)
.L627:
	move.b #1,222(%a2)
	clr.l 328(%a2)
	moveq #90,%d1
	move.l %d1,298(%a2)
	addq.l #4,%sp
	jra .L423
.L663:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 474(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L589
.L662:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 212(%a2)
	jeq .L589
	jra .L588
.L507:
	tst.b 167(%a2)
	jeq .L505
	tst.b 210(%a2)
	jeq .L505
	tst.b 149(%a2)
	jne .L509
	clr.b 210(%a2)
	clr.b 276(%a2)
	clr.b 167(%a2)
	move.b #1,149(%a2)
	clr.l 16(%a3)
	move.l 332(%a2),328(%a2)
	clr.b 222(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,224(%a2)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L509
.L535:
	tst.b 167(%a2)
	jeq .L533
	tst.b 210(%a2)
	jeq .L533
	tst.b 150(%a2)
	jne .L537
	clr.b 210(%a2)
	clr.b 276(%a2)
	clr.b 167(%a2)
	move.b #1,150(%a2)
	clr.l 16(%a3)
	move.l 332(%a2),328(%a2)
	clr.b 222(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,224(%a2)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L537
.L500:
	tst.b 151(%a2)
	jeq .L503
	clr.b 151(%a2)
.L503:
	tst.b 153(%a2)
	jne .L504
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 44(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L502:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 56(%a2),-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 56(%a2),(%sp)
.L629:
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L423
	clr.b 153(%a2)
	jra .L423
.L504:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 48(%a2),-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 48(%a2),(%sp)
	jra .L629
.L651:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 478(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L525
.L650:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 212(%a2)
	jeq .L525
	jra .L524
.L652:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	pea 1.w
	jra .L625
.L624:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	jra .L627
.L649:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L517
.L572:
	tst.b 148(%a2)
	jne .L573
	clr.b 167(%a2)
	clr.b 276(%a2)
	move.b #1,148(%a2)
	clr.l 16(%a3)
	move.l 332(%a2),328(%a2)
	clr.b 222(%a2)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L573
.L648:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 212(%a2)
	jeq .L517
	jra .L516
.L660:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 212(%a2)
	jeq .L581
	jra .L580
.L661:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L581
.L659:
	tst.b 151(%a2)
	jne .L665
	tst.b 152(%a2)
	jne .L666
	tst.b 146(%a2)
	jeq .L599
	clr.b 185(%a2)
	clr.b 146(%a2)
	clr.l 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L599:
	tst.b 144(%a2)
	jne .L600
	move.b #1,144(%a2)
	clr.b 147(%a2)
.L600:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 12(%a2),-(%sp)
	move.l 406(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L423
.L666:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 44(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L423
	clr.b 152(%a2)
	jra .L423
.L665:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L423
	clr.b 151(%a2)
	jra .L423
	.even
	.globl	__Z17fighterCastShadowP7Fighterb
__Z17fighterCastShadowP7Fighterb:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
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
	tst.b 15(%fp)
	jeq .L668
	move.w 12(%a1),%d2
	move.l 32(%a1),%d0
	move.w %d0,%d1
	moveq #64,%d3
	cmp.l %d0,%d3
	jeq .L674
	jlt .L678
	move.b #32,%d3
	cmp.l %d0,%d3
	jeq .L679
	move.b #48,%d3
	cmp.l %d0,%d3
	jeq .L673
	move.b #16,%d3
	cmp.l %d0,%d3
	jeq .L681
.L670:
	move.w #21,%a1
	move.w %d2,%d0
	add.w %d1,%d0
	add.w #-10,%d0
	sub.w %a1,%d0
	move.w %d0,12(%a0)
.L668:
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	rts
.L678:
	moveq #96,%d3
	cmp.l %d0,%d3
	jeq .L676
	cmp.l #128,%d0
	jeq .L677
	move.b #80,%d3
	cmp.l %d0,%d3
	jne .L670
	move.w #15,%a1
	move.w %d2,%d0
	add.w %d1,%d0
	add.w #-10,%d0
	sub.w %a1,%d0
	move.w %d0,12(%a0)
	jra .L668
.L674:
	move.w #12,%a1
	move.w %d2,%d0
	add.w %d1,%d0
	add.w #-10,%d0
	sub.w %a1,%d0
	move.w %d0,12(%a0)
	jra .L668
.L679:
	move.w #6,%a1
	move.w %d2,%d0
	add.w %d1,%d0
	add.w #-10,%d0
	sub.w %a1,%d0
	move.w %d0,12(%a0)
	jra .L668
.L676:
	move.w #18,%a1
	move.w %d2,%d0
	add.w %d1,%d0
	add.w #-10,%d0
	sub.w %a1,%d0
	move.w %d0,12(%a0)
	jra .L668
.L681:
	move.w #3,%a1
	move.w %d2,%d0
	add.w %d1,%d0
	add.w #-10,%d0
	sub.w %a1,%d0
	move.w %d0,12(%a0)
	jra .L668
.L673:
	move.w #9,%a1
	move.w %d2,%d0
	add.w %d1,%d0
	add.w #-10,%d0
	sub.w %a1,%d0
	move.w %d0,12(%a0)
	jra .L668
.L677:
	move.w #24,%a1
	move.w %d2,%d0
	add.w %d1,%d0
	add.w #-10,%d0
	sub.w %a1,%d0
	move.w %d0,12(%a0)
	jra .L668
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12348,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	addq.l #8,%sp
	tst.b 192(%a2)
	jeq .L683
	moveq #-1,%d0
	cmp.l 316(%a2),%d0
	seq %d0
	neg.b %d0
	move.b %d0,_walkForward
	tst.b 198(%a2)
	jeq .L685
	clr.b 198(%a2)
	clr.l 16(%a3)
	move.l 348(%a2),%d0
	jle .L686
	tst.b 193(%a2)
	jeq .L722
.L686:
	move.b #1,194(%a2)
	clr.b 193(%a2)
	addq.l #1,%d0
	move.l %d0,348(%a2)
.L685:
	tst.b 199(%a2)
	jeq .L687
.L733:
	clr.b 199(%a2)
	clr.l 16(%a3)
	move.b #1,145(%a2)
	moveq #90,%d0
	move.l %d0,298(%a2)
	move.l (%a2),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L688
	move.b #2,%d1
	cmp.l %d0,%d1
	jeq .L723
.L687:
	tst.b 194(%a2)
	jne .L724
.L690:
	tst.b 193(%a2)
	jeq .L692
	tst.b 184(%a2)
	jeq .L725
	tst.l 306(%a2)
	jle .L726
.L694:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 184(%a2)
	jne .L683
	move.b #1,194(%a2)
	clr.b 193(%a2)
	addq.l #1,348(%a2)
.L683:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L692:
	tst.b 145(%a2)
	jne .L727
	tst.b 196(%a2)
	jeq .L696
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L728
.L696:
	tst.b 200(%a2)
	jeq .L702
	clr.b 200(%a2)
	clr.l 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	move.l 202(%a2),294(%a2)
	move.l 206(%a2),298(%a2)
	clr.l 202(%a2)
	clr.l 206(%a2)
	move.b #1,184(%a2)
	move.b #1,188(%a2)
.L697:
	moveq #3,%d0
	move.l sprite,%a4
	cmp.l (%a2),%d0
	jeq .L729
	moveq #-1,%d1
	move.l %d1,7108(%a4)
	move.l %d1,7684(%a4)
	tst.b 195(%a2)
	jne .L730
.L712:
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
	tst.b 144(%a2)
	jeq .L683
	move.l 228(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 296(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 300(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L724:
	move.l 132(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L731
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 132(%a2),-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L732:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L726:
	tst.b 184(%a2)
	jne .L694
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L731:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 312(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 192(%a2)
	addq.l #4,%sp
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 132(%a2),-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L732
.L722:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,193(%a2)
	clr.l 306(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	addq.l #4,%sp
	tst.b 199(%a2)
	jeq .L687
	jra .L733
.L723:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandlerb
	addq.l #8,%sp
	tst.b 194(%a2)
	jeq .L690
	jra .L724
.L725:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 16(%a2),-(%sp)
	move.l 410(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 306(%a2)
	jgt .L694
	jra .L726
.L688:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandlerb
	addq.l #8,%sp
	tst.b 194(%a2)
	jeq .L690
	jra .L724
.L702:
	tst.b 186(%a2)
	jeq .L697
	tst.b 148(%a2)
	jne .L697
	tst.b 150(%a2)
	jne .L697
	tst.b 149(%a2)
	jne .L697
	tst.b 184(%a2)
	jne .L697
	tst.b 147(%a2)
	jne .L697
	tst.b 320(%a2)
	jeq .L703
	clr.b 320(%a2)
	clr.l 16(%a3)
.L703:
	tst.b 321(%a2)
	jeq .L734
	tst.l 16(%a3)
	jle .L735
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L718:
	move.l 28(%a2),-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L741:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L730:
	move.l 316(%a2),%d3
	move.l %d3,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	lea ___mulsf3,%a5
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l 272(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d3,%d1
	jeq .L736
	moveq #-1,%d1
	cmp.l %d3,%d1
	jeq .L737
.L714:
	add.l %d0,294(%a2)
.L715:
	move.l 278(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L712
	clr.b 195(%a2)
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a4,%d0.l)
	jra .L712
.L727:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 20(%a2),-(%sp)
	move.l 414(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L728:
	clr.b 196(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 193(%a2)
	jne .L697
	tst.b 310(%a2)
	jne .L738
	move.l 302(%a2),%d0
	subq.l #1,%d0
	move.l %d0,302(%a2)
	jle .L739
.L699:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L700
	move.l %d0,11608(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L697
.L737:
	tst.l %d0
	jle .L714
.L717:
	tst.b 352(%a2)
	jeq .L715
	add.l %d0,294(%a2)
	jra .L715
.L738:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	subq.l #1,%d0
	move.l %d0,302(%a2)
	jgt .L699
.L739:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L699
.L735:
	clr.b 186(%a2)
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L718
.L729:
	move.l 140(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a4,%d0.l),%a0
	move.w 318(%a2),%d0
	neg.w %d0
	add.w %d0,%d0
	add.w %d0,%d0
	move.l 4(%a2),%d1
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%d1
	lsl.l #6,%d1
	add.w 8(%a4,%d1.l),%d0
	move.w %d0,8(%a0)
	tst.b 144(%a2)
	jeq .L710
	tst.b 192(%a2)
	jeq .L710
	tst.b 194(%a2)
	jne .L710
	tst.b 145(%a2)
	jne .L710
	moveq #1,%d1
	move.l %d1,4(%a0)
	tst.b 195(%a2)
	jeq .L712
	jra .L730
.L710:
	moveq #-1,%d0
	move.l %d0,4(%a0)
	tst.b 195(%a2)
	jeq .L712
	jra .L730
.L736:
	tst.l %d0
	jlt .L717
	add.l %d0,294(%a2)
	jra .L715
.L700:
	move.l %d0,11800(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,11720(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L697
.L734:
	move.l 28(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L705
	move.b #1,321(%a2)
	move.l 316(%a2),%d0
	neg.l %d0
	move.l %d0,316(%a2)
	moveq #1,%d1
	move.l sprite,%a0
	cmp.l %d0,%d1
	jeq .L740
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d2
	move.l %d2,24(%a0,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l 140(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L705:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 28(%a2),-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L741
.L740:
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
	move.l 140(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L705
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 12(%a2),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
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
	jeq .L749
	jge .L756
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L751
	cmp.l #128,%d0
	jeq .L752
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L757
.L745:
	moveq #21,%d0
	unlk %fp
	rts
.L756:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L754
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L748
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L745
	moveq #3,%d0
	unlk %fp
	rts
.L748:
	moveq #9,%d0
	unlk %fp
	rts
.L752:
	moveq #24,%d0
	unlk %fp
	rts
.L757:
	moveq #15,%d0
	unlk %fp
	rts
.L751:
	moveq #18,%d0
	unlk %fp
	rts
.L754:
	moveq #6,%d0
	unlk %fp
	rts
.L749:
	moveq #12,%d0
	unlk %fp
	rts
	.globl	_shadowY
	.bss
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
