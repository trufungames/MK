#NO_APP
	.text
	.even
	.globl	__Z14fighterStartUpv
__Z14fighterStartUpv:
	link.w %fp,#0
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
	move.l #10242960,44(%a0)
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
	move.l #8514352,44(%a0)
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
	move.l #11381712,44(%a0)
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
	move.l #9669488,44(%a0)
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
	move.l #9104208,44(%a0)
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
	move.l #10890160,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z21fighterMakeSelectableP7Fighterb
__Z21fighterMakeSelectableP7Fighterb:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 4(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	tst.b 15(%fp)
	jne .L21
	move.w #256,8(%a1)
	moveq #-1,%d0
	move.l %d0,24(%a1)
	move.l %d0,314(%a0)
	move.l #256,%d0
	move.l %d0,292(%a0)
	move.w 12(%a1),%a1
	move.l %a1,296(%a0)
	unlk %fp
	rts
.L21:
	move.w #14,8(%a1)
	moveq #1,%d0
	move.l %d0,24(%a1)
	move.l %d0,314(%a0)
	move.b #14,%d0
	move.l %d0,292(%a0)
	move.w 12(%a1),%a1
	move.l %a1,296(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_
__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d2
	move.l #0x400ccccd,322(%a0)
	clr.l 326(%a0)
	move.l #0xc1900000,330(%a0)
	move.l #0xc1d00000,334(%a0)
	move.l #0xc1200000,338(%a0)
	move.l #0x40a00000,342(%a0)
	move.l 16(%fp),310(%a0)
	move.l 20(%fp),352(%a0)
	move.l 24(%fp),356(%a0)
	move.l 28(%fp),360(%a0)
	move.l 32(%fp),364(%a0)
	move.l 36(%fp),376(%a0)
	move.l 40(%fp),380(%a0)
	move.l 44(%fp),368(%a0)
	move.l 48(%fp),372(%a0)
	move.l 52(%fp),384(%a0)
	move.l 56(%fp),388(%a0)
	move.l 60(%fp),392(%a0)
	move.l 64(%fp),396(%a0)
	move.l 68(%fp),400(%a0)
	clr.l 230(%a0)
	move.l #0x40000000,238(%a0)
	move.l #0x40000000,242(%a0)
	move.l #0x40900000,246(%a0)
	move.l #0x40600000,250(%a0)
	move.l #0x40d00000,254(%a0)
	move.l #0x40e00000,258(%a0)
	clr.l 266(%a0)
	move.l #0x40f00000,262(%a0)
	move.l #0x3f800000,270(%a0)
	moveq #1,%d0
	move.l %d0,284(%a0)
	clr.l 288(%a0)
	clr.l 276(%a0)
	move.b #1,191(%a0)
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
	move.b #1,208(%a0)
	clr.b 274(%a0)
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
	clr.b 192(%a0)
	clr.b 193(%a0)
	clr.b 194(%a0)
	clr.b 195(%a0)
	clr.b 198(%a0)
	clr.b 199(%a0)
	clr.l 200(%a0)
	clr.l 204(%a0)
	clr.b 209(%a0)
	clr.b 210(%a0)
	clr.b 220(%a0)
	clr.b 221(%a0)
	clr.l 222(%a0)
	move.b #50,%d0
	move.l %d0,212(%a0)
	move.b #20,%d0
	move.l %d0,216(%a0)
	move.b %d2,320(%a0)
	move.b #33,%d0
	move.l %d0,300(%a0)
	clr.l 304(%a0)
	clr.b 308(%a0)
	clr.b 318(%a0)
	clr.b 319(%a0)
	move.b #1,350(%a0)
	move.l sprite,%d1
	move.l 4(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l %d1,%a1
	add.l %d0,%a1
	moveq #1,%d0
	move.l %d0,4(%a1)
	tst.b %d2
	jne .L27
	moveq #36,%d0
	move.l %d0,226(%a0)
	moveq #2,%d2
	move.l %d2,234(%a0)
	move.l #210,292(%a0)
	moveq #-1,%d0
	move.l %d0,24(%a1)
	move.l %d0,314(%a0)
	move.w #222,%d0
	move.w #6912,%a1
	moveq #90,%d2
	move.l %d2,296(%a0)
	lea (%a1,%d1.l),%a1
	move.w %d0,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
.L27:
	moveq #35,%d2
	move.l %d2,226(%a0)
	move.l %d0,234(%a0)
	move.b #50,%d0
	move.l %d0,292(%a0)
	move.b #1,%d2
	move.l %d2,24(%a1)
	move.l %d2,314(%a0)
	move.b #62,%d0
	move.w #6720,%a1
	moveq #90,%d2
	move.l %d2,296(%a0)
	lea (%a1,%d1.l),%a1
	move.w %d0,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.l 346(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 314(%a0),-(%sp)
	move.l 296(%a0),-(%sp)
	move.l 292(%a0),-(%sp)
	pea 1.w
	pea 1.w
	move.l 12(%a0),-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
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
	jeq .L34
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L35
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L38
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L38:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L35:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L34:
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
	jeq .L45
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L45:
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
	jeq .L49
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L53
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L49:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L53:
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
	jle .L60
.L56:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L60:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L61
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L61:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L56
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
	jne .L67
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L68
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L68:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L67:
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
	jne .L71
	tst.b 169(%a2)
	jeq .L208
.L72:
	move.b 176(%a2),%d0
	jne .L76
.L77:
	move.l 304(%a2),%d2
	tst.b 308(%a2)
	jne .L209
.L84:
	move.l 300(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,300(%a2)
	jle .L210
.L85:
	move.l sprite,%a0
	tst.b 320(%a2)
	jne .L185
.L86:
	move.l %d0,10648(%a0)
	moveq #78,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	add.w %d2,%d0
	add.w %d0,%d0
	move.w %d0,10568(%a0)
.L87:
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	clr.l 304(%a2)
	clr.l 266(%a2)
	move.b #1,184(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	move.l %a0,288(%a2)
	clr.l 16(%a3)
	move.l 334(%a2),326(%a2)
	move.b 178(%a2),%d0
	jne .L88
.L222:
	tst.b 179(%a2)
	jne .L88
	tst.b 188(%a2)
	jeq .L90
	clr.l 326(%a2)
.L90:
	tst.b 169(%a2)
	jne .L91
.L223:
	tst.b 170(%a2)
	jne .L91
	tst.b 177(%a2)
	jne .L91
	tst.b 173(%a2)
	jne .L91
	tst.b 172(%a2)
	jne .L91
	tst.b 174(%a2)
	jne .L96
	tst.b 179(%a2)
	jne .L96
	tst.b 171(%a2)
	jne .L99
	tst.b 176(%a2)
	jne .L99
	tst.b %d0
	jeq .L100
.L99:
	move.l 310(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 320(%a2),%d2
	move.l 310(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L102
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L211
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L95:
	move.b 170(%a2),%d1
	jne .L104
	tst.b 171(%a2)
	jne .L104
	tst.b 176(%a2)
	jeq .L100
.L104:
	move.l 292(%a2),%a4
	move.l 314(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L212
.L105:
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L213
.L106:
	tst.b %d1
	jne .L107
.L240:
	tst.b 173(%a2)
	jne .L107
	tst.b 174(%a2)
	jne .L107
	tst.b 171(%a2)
	jne .L214
	tst.b 176(%a2)
	jne .L215
.L71:
	tst.b 169(%a2)
	jeq .L78
.L241:
	tst.b 184(%a2)
	jne .L216
.L78:
	tst.b 170(%a2)
	jeq .L111
	tst.b 184(%a2)
	jne .L217
.L111:
	tst.b 171(%a2)
	jeq .L218
	tst.b 184(%a2)
	jne .L219
.L113:
	tst.b 172(%a2)
	jeq .L118
	tst.b 184(%a2)
	jeq .L118
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 284(%a2),%d0
	move.l 314(%a2),%d2
	cmp.l %a0,%d0
	jle .L119
.L179:
	move.l 292(%a2),%d0
.L120:
	move.l %d2,-(%sp)
	move.l 296(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 120(%a2),-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 120(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	clr.b 172(%a2)
	clr.b 184(%a2)
.L70:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L218:
	tst.b 173(%a2)
	jeq .L113
	tst.b 184(%a2)
	jeq .L113
.L219:
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 284(%a2),%d0
	move.l 314(%a2),%d2
	cmp.l %a0,%d0
	jle .L114
.L178:
	move.l 292(%a2),%d0
	move.l %d2,-(%sp)
	move.l 296(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
.L239:
	clr.b 171(%a2)
	clr.b 173(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L208:
	tst.b 170(%a2)
	jne .L72
	tst.b 171(%a2)
	jne .L72
	tst.b 176(%a2)
	jne .L76
	tst.b 177(%a2)
	jne .L77
	tst.b 173(%a2)
	jne .L77
	tst.b 172(%a2)
	jne .L77
	tst.b 178(%a2)
	jne .L77
	tst.b 174(%a2)
	jne .L77
	tst.b 179(%a2)
	jne .L77
	tst.b 188(%a2)
	jeq .L78
	move.l 304(%a2),%d2
	tst.b 308(%a2)
	jeq .L84
	jra .L209
.L76:
	move.l 304(%a2),%d2
	tst.b 308(%a2)
	jne .L220
	move.l 300(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,300(%a2)
	jle .L221
.L80:
	move.l sprite,%a0
	tst.b 320(%a2)
	jne .L185
.L81:
	move.l %d0,10648(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10568(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	clr.l 304(%a2)
	clr.l 266(%a2)
	move.b #1,184(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	move.l %a0,288(%a2)
	clr.l 16(%a3)
	move.l 334(%a2),326(%a2)
	move.b 178(%a2),%d0
	jeq .L222
.L88:
	move.l 338(%a2),326(%a2)
	tst.b 169(%a2)
	jeq .L223
.L91:
	moveq #0,%d1
	move.b 320(%a2),%d1
	move.l 310(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L224
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L118:
	tst.b 174(%a2)
	jeq .L123
	tst.b 184(%a2)
	jeq .L123
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 284(%a2),%d0
	move.l 314(%a2),%d2
	cmp.l %a0,%d0
	jle .L124
.L180:
	move.l 292(%a2),%d0
	move.l %d2,-(%sp)
	move.l 296(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
.L249:
	clr.b 174(%a2)
	clr.b 175(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L123:
	tst.b 177(%a2)
	jeq .L128
	tst.b 184(%a2)
	jne .L225
.L128:
	tst.b 188(%a2)
	jeq .L129
	tst.b 184(%a2)
	jeq .L129
	tst.b 189(%a2)
	jeq .L226
	tst.b 182(%a2)
	jne .L227
.L131:
	moveq #1,%d1
	cmp.l 16(%a3),%d1
	jge .L70
	move.w raptor_ticks,%a0
	cmp.l 280(%a2),%a0
	jle .L70
	tst.b 189(%a2)
	jeq .L228
	move.l 296(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L133
	move.b #1,182(%a2)
	move.l %a0,280(%a2)
	move.l %d3,296(%a2)
	move.l 314(%a2),-(%sp)
	pea 90.w
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 532(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 310(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 308(%a2)
	jne .L229
	move.l 300(%a2),%d0
	subq.l #8,%d0
	move.l %d0,300(%a2)
	jle .L230
.L135:
	move.l sprite,%a0
	tst.b 320(%a2)
	jne .L231
	move.l %d0,10648(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10568(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L138:
	move.l 314(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,-(%sp)
	jsr (%a5)
	move.l 258(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L232
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L233
.L140:
	add.l %d0,292(%a2)
.L141:
	move.l 296(%a2),-(%sp)
	jsr (%a5)
	move.l 342(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,296(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L216:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 120(%a2),-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 120(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	clr.b 169(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L217:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 124(%a2),-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 124(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	clr.b 170(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L129:
	tst.b 178(%a2)
	jne .L142
	tst.b 179(%a2)
	jeq .L143
.L142:
	tst.b 184(%a2)
	jeq .L143
	tst.b 182(%a2)
	jne .L234
	move.w raptor_ticks,%a0
	cmp.l 280(%a2),%a0
	jle .L70
	move.l 314(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 250(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L235
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L236
.L146:
	add.l %d0,292(%a2)
.L147:
	move.b 180(%a2),%d3
	move.l 326(%a2),%d2
	tst.b %d3
	jne .L149
	move.l 296(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,296(%a2)
	move.l 322(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,326(%a2)
.L149:
	move.l %d2,-(%sp)
	move.l 334(%a2),-(%sp)
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
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 132(%a2),-(%sp)
	move.l 496(%a2),-(%sp)
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
	move.l %a0,280(%a2)
.L252:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L185:
	move.l %d0,10456(%a0)
	jra .L87
.L114:
	move.l %d2,%d3
	neg.l %d3
	move.l %d3,-(%sp)
	jsr ___floatsisf
	move.l 246(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L237
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L238
.L117:
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
.L250:
	move.l %d2,-(%sp)
	move.l 296(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	jra .L239
.L209:
	clr.b 308(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 300(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,300(%a2)
	jgt .L85
	jra .L210
.L220:
	clr.b 308(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 300(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,300(%a2)
	jgt .L80
	jra .L221
.L210:
	clr.l 300(%a2)
	move.b #1,197(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 320(%a2)
	jeq .L86
	jra .L185
.L221:
	clr.l 300(%a2)
	move.b #1,197(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 320(%a2)
	jeq .L81
	jra .L185
.L213:
	lea (-40,%a4),%a4
	tst.b %d1
	jeq .L240
.L107:
	move.l %d0,-(%sp)
	moveq #-10,%d0
	add.l 296(%a2),%d0
	move.l %d0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z10bloodSprayiii
	lea (12,%sp),%sp
	tst.b 169(%a2)
	jne .L241
	jra .L78
.L100:
	tst.b 173(%a2)
	jeq .L242
	clr.b %d1
.L245:
	move.l 292(%a2),%a4
	move.l 314(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L105
.L212:
	lea (40,%a4),%a4
	jra .L106
.L143:
	tst.b 176(%a2)
	jeq .L157
	tst.b 184(%a2)
	jeq .L157
	tst.b 182(%a2)
	jeq .L158
	moveq #19,%d0
	add.l 280(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L70
	clr.b 176(%a2)
	clr.b 180(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	move.b #1,183(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,296(%a2)
.L246:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L157:
	tst.b 183(%a2)
	jeq .L70
	tst.b 184(%a2)
	jeq .L70
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 88(%a2),-(%sp)
	move.l 504(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 88(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	clr.b 184(%a2)
	clr.b 183(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L224:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L225:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 136(%a2),-(%sp)
	move.l 500(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 136(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	move.l 310(%a2),-(%sp)
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
.L119:
	lea ___mulsf3,%a4
	move.l #0x3eaaaaab,-(%sp)
	move.l 246(%a2),-(%sp)
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
	jeq .L243
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L244
.L122:
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
	jra .L120
.L242:
	tst.b 174(%a2)
	jeq .L71
	clr.b %d1
	jra .L245
.L234:
	moveq #19,%d0
	add.l 280(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L70
	clr.b 178(%a2)
	clr.b 179(%a2)
	clr.b 180(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	move.b #1,183(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,296(%a2)
	jra .L246
.L227:
	moveq #19,%d0
	add.l 280(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L70
	clr.b 188(%a2)
	clr.b 189(%a2)
	clr.b 182(%a2)
	move.b #1,183(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,296(%a2)
	jra .L246
.L124:
	lea ___mulsf3,%a4
	move.l #0x3f000000,-(%sp)
	move.l 246(%a2),-(%sp)
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
	jeq .L247
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L248
.L127:
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
.L251:
	move.l %d2,-(%sp)
	move.l 296(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	jra .L249
.L238:
	tst.l %d0
	jle .L117
.L187:
	tst.b 350(%a2)
	jeq .L178
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
	jra .L250
.L215:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	moveq #-10,%d3
	add.l 296(%a2),%d3
	move.l %d3,(%sp)
	move.l %a4,-(%sp)
	lea __Z11bloodSquirtii,%a5
	jsr (%a5)
	addq.l #8,%sp
	moveq #-30,%d0
	add.l 296(%a2),%d0
	move.l %d0,-(%sp)
	pea 20(%a4)
	jsr (%a5)
	addq.l #8,%sp
	moveq #-50,%d1
	add.l 296(%a2),%d1
	move.l %d1,-(%sp)
	pea 10(%a4)
	jsr (%a5)
	addq.l #4,%sp
	move.l 314(%a2),(%sp)
	moveq #-40,%d2
	add.l 296(%a2),%d2
	move.l %d2,-(%sp)
	move.l %a4,-(%sp)
	lea __Z9bloodDropiii,%a5
	jsr (%a5)
	move.l 314(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-40,%d3
	add.l 296(%a2),%d3
	move.l %d3,-(%sp)
	add.l %d0,%d0
	add.l %d0,%d0
	sub.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr (%a5)
	move.l 314(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-50,%d1
	add.l 296(%a2),%d1
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
	move.l 314(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-50,%d2
	add.l 296(%a2),%d2
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
	jne .L241
	jra .L78
.L226:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 116(%a2),-(%sp)
	move.l 532(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 182(%a2)
	jeq .L131
	jra .L227
.L244:
	tst.l %d0
	jle .L122
.L189:
	tst.b 350(%a2)
	jeq .L179
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
	jra .L120
.L248:
	tst.l %d0
	jle .L127
.L191:
	tst.b 350(%a2)
	jeq .L180
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
	jra .L251
.L236:
	tst.l %d0
	jle .L146
.L182:
	tst.b 350(%a2)
	jeq .L147
	add.l %d0,292(%a2)
	jra .L147
.L233:
	tst.l %d0
	jle .L140
.L181:
	tst.b 350(%a2)
	jeq .L141
	add.l %d0,292(%a2)
	jra .L141
.L229:
	clr.b 308(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 300(%a2),%d0
	subq.l #8,%d0
	move.l %d0,300(%a2)
	jgt .L135
.L230:
	clr.l 300(%a2)
	move.b #1,197(%a2)
	moveq #0,%d0
	jra .L135
.L253:
	tst.l %d0
	jlt .L183
.L160:
	add.l %d0,292(%a2)
.L161:
	move.b 180(%a2),%d3
	move.l 326(%a2),%d2
	tst.b %d3
	jne .L163
	move.l 296(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,296(%a2)
	move.l 322(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,326(%a2)
.L163:
	move.l %d2,-(%sp)
	move.l 334(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L164
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
	move.l 310(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L169
.L194:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.l 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	jra .L252
.L214:
	move.l %d0,-(%sp)
	moveq #20,%d1
	add.l 296(%a2),%d1
	move.l %d1,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z9bloodGlobiii
	move.l 314(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-30,%d2
	add.l 296(%a2),%d2
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
	jne .L241
	jra .L78
.L237:
	tst.l %d0
	jlt .L187
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
	jra .L250
.L96:
	tst.b 175(%a2)
	jeq .L98
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L158:
	move.w raptor_ticks,%a0
	cmp.l 280(%a2),%a0
	jle .L70
	move.l 314(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 250(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L253
	moveq #-1,%d1
	cmp.l %d2,%d1
	jne .L160
	tst.l %d0
	jle .L160
.L183:
	tst.b 350(%a2)
	jeq .L161
	add.l %d0,292(%a2)
	jra .L161
.L243:
	tst.l %d0
	jlt .L189
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
	jra .L120
.L98:
	move.l 310(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L95
.L168:
	move.l 296(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L170
	move.b #1,182(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	move.l %d3,296(%a2)
	move.l 314(%a2),-(%sp)
	pea 90.w
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 310(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	jra .L252
.L247:
	tst.l %d0
	jlt .L191
	add.l 292(%a2),%d0
	move.l %d0,292(%a2)
	jra .L251
.L228:
	move.b #1,189(%a2)
	move.l 314(%a2),%d0
	lsl.l #6,%d0
	add.l %d0,292(%a2)
	moveq #32,%d2
	move.l %d2,296(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L133:
	move.l 314(%a2),-(%sp)
	move.l %d0,-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 532(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L138
.L170:
	move.l 314(%a2),-(%sp)
	move.l %d0,-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	jra .L252
.L235:
	tst.l %d0
	jlt .L182
	add.l %d0,292(%a2)
	jra .L147
.L232:
	tst.l %d0
	jlt .L181
	add.l %d0,292(%a2)
	jra .L141
.L231:
	move.l %d0,10456(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L138
.L211:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L102:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 184(%a0),%d0
	jne .L256
	tst.b 152(%a0)
	jne .L256
.L257:
	tst.b 154(%a1)
	jne .L280
.L259:
	tst.b 155(%a1)
	jeq .L261
	tst.b 151(%a0)
	jne .L261
	move.b #1,170(%a0)
	moveq #2,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
.L260:
	tst.b %d0
	jne .L255
.L277:
	tst.b 152(%a0)
	jeq .L273
.L281:
	tst.b 151(%a0)
	jeq .L273
	move.b #1,153(%a0)
	move.b #1,195(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,280(%a0)
.L276:
	tst.b 187(%a1)
	jeq .L255
	move.l 292(%a1),200(%a0)
	move.l 296(%a1),204(%a0)
	move.b #1,199(%a0)
	clr.b 208(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a1)
.L255:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L256:
	tst.b 192(%a0)
	jne .L257
	tst.b %d0
	jne .L255
	tst.b 152(%a0)
	jeq .L277
	move.b #1,153(%a0)
	move.b #1,195(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,280(%a0)
	tst.b 152(%a0)
	jne .L281
.L273:
	tst.b 162(%a1)
	jeq .L275
	move.b #1,177(%a0)
	moveq #4,%d0
	move.l %d0,304(%a0)
	clr.b 308(%a0)
	jra .L276
.L280:
	tst.b 151(%a0)
	jne .L259
	move.b #1,169(%a0)
	moveq #2,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	tst.b %d0
	jeq .L277
	jra .L255
.L261:
	tst.b 156(%a1)
	jeq .L262
	tst.b 151(%a0)
	jne .L262
	move.b #1,169(%a0)
	moveq #5,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	tst.b %d0
	jeq .L277
	jra .L255
.L262:
	tst.b 157(%a1)
	jeq .L263
	tst.b 151(%a0)
	jne .L263
	move.b #1,171(%a0)
	moveq #5,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	tst.b %d0
	jeq .L277
	jra .L255
.L263:
	tst.b 163(%a1)
	jeq .L264
	tst.b 151(%a0)
	jeq .L282
.L264:
	tst.b 164(%a1)
	jeq .L265
	tst.b 151(%a0)
	jeq .L283
.L265:
	tst.b 158(%a1)
	jeq .L267
	move.b #1,173(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,280(%a1)
	moveq #5,%d1
	move.l %d1,304(%a0)
	move.b #1,308(%a0)
	tst.b %d0
	jeq .L277
	jra .L255
.L275:
	tst.b 166(%a1)
	jeq .L276
	move.b #1,172(%a0)
	clr.b 208(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,280(%a1)
	moveq #2,%d0
	move.l %d0,304(%a0)
	clr.b 308(%a0)
	jra .L276
.L267:
	tst.b 159(%a1)
	jne .L284
	tst.b 161(%a1)
	jeq .L269
	move.b #1,176(%a0)
	clr.b 208(%a1)
	move.b #1,209(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,280(%a1)
	moveq #8,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	tst.b %d0
	jeq .L277
	jra .L255
.L282:
	move.b #1,171(%a0)
	moveq #6,%d1
	move.l %d1,304(%a0)
	move.b #1,308(%a0)
	tst.b %d0
	jeq .L277
	jra .L255
.L283:
	move.b #1,174(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L285
	moveq #4,%d1
	move.l %d1,304(%a0)
	move.b #1,308(%a0)
.L286:
	tst.b %d0
	jeq .L277
	jra .L255
.L284:
	move.b #1,173(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,280(%a1)
	moveq #4,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
.L287:
	tst.b %d0
	jeq .L277
	jra .L255
.L285:
	move.b #1,175(%a0)
	moveq #4,%d1
	move.l %d1,304(%a0)
	move.b #1,308(%a0)
	jra .L286
.L269:
	tst.b 160(%a1)
	jeq .L270
	move.b #1,178(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,280(%a1)
	moveq #6,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	tst.b %d0
	jeq .L277
	jra .L255
.L270:
	tst.b 165(%a1)
	jeq .L260
	move.b #1,179(%a0)
	clr.b 208(%a1)
	move.b #1,210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,280(%a1)
	moveq #4,%d1
	move.l %d1,304(%a0)
	clr.b 308(%a0)
	jra .L287
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15416,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 185(%a2)
	jeq .L290
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L304
.L290:
	tst.b 185(%a3)
	jeq .L291
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L305
.L291:
	pea 21.w
	pea 18.w
	pea 21.w
	pea 18.w
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L289
	move.l colliders,%d4
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a4
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L294
.L309:
	cmp.w #0,%a0
	jlt .L289
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
	moveq #35,%d3
	cmp.l %d0,%d3
	jeq .L306
	moveq #33,%d3
	cmp.l %d0,%d3
	jeq .L307
	moveq #36,%d3
	cmp.l %d0,%d3
	jne .L299
	moveq #33,%d5
	cmp.l %d1,%d5
	jeq .L308
.L302:
	addq.l #8,%d2
.L310:
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L309
.L294:
	cmp.w #0,%a0
	jge .L302
.L289:
	movem.l -28(%fp),#7228
	unlk %fp
	rts
.L307:
	moveq #34,%d5
	cmp.l %d1,%d5
	jne .L302
	tst.b 146(%a2)
	jeq .L302
	move.l 292(%a2),%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L302
	cmp.l #328,%d0
	jgt .L302
	move.l 292(%a3),%d0
	cmp.l %d0,%d1
	jge .L302
	cmp.l #328,%d0
	jgt .L302
	move.b #1,185(%a2)
	move.b #1,194(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,276(%a3)
	addq.l #8,%d2
	jra .L310
.L306:
	moveq #34,%d5
	cmp.l %d1,%d5
	jne .L302
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L310
.L299:
	moveq #34,%d3
	cmp.l %d0,%d3
	jne .L302
	moveq #33,%d5
	cmp.l %d1,%d5
	jne .L302
	tst.b 146(%a3)
	jeq .L302
	move.b #1,185(%a3)
	move.b #1,194(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,276(%a2)
	addq.l #8,%d2
	jra .L310
.L308:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L310
.L304:
	clr.b 185(%a2)
	jra .L290
.L305:
	clr.b 185(%a3)
	jra .L291
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 314(%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L326
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L327
.L315:
	move.l 314(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L328
.L316:
	moveq #-1,%d1
	cmp.l %d0,%d1
	jne .L312
	move.l 292(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 292(%a1),%d0
	jge .L312
.L323:
	tst.b 186(%a0)
	jne .L312
	clr.b 319(%a0)
	move.b #1,186(%a0)
	move.b #1,318(%a0)
.L312:
	unlk %fp
	rts
.L327:
	move.l 292(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 292(%a0),%d0
	jge .L315
	tst.b 186(%a1)
	jne .L315
.L329:
	clr.b 319(%a1)
	move.b #1,186(%a1)
	move.b #1,318(%a1)
	move.l 314(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L316
.L328:
	move.l 292(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 292(%a0),%d0
	jlt .L323
	unlk %fp
	rts
.L326:
	move.l 292(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 292(%a1),%d0
	jge .L315
	tst.b 186(%a1)
	jne .L315
	jra .L329
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 314(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L338
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L339
.L333:
	clr.b 190(%a0)
	clr.b 190(%a1)
.L331:
	unlk %fp
	rts
.L339:
	moveq #-72,%d0
	add.l 292(%a0),%d0
	cmp.l 292(%a1),%d0
	jgt .L333
.L335:
	move.b #1,190(%a0)
	move.b #1,190(%a1)
	unlk %fp
	rts
.L338:
	moveq #72,%d0
	add.l 292(%a0),%d0
	cmp.l 292(%a1),%d0
	jge .L335
	clr.b 190(%a0)
	clr.b 190(%a1)
	jra .L331
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 300(%a1),10456(%a0)
	move.l 12(%fp),%a1
	move.l 300(%a1),%d0
	move.l %d0,10648(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10568(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterAddPendingDamageP7Fighterib
__Z23fighterAddPendingDamageP7Fighterib:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),304(%a0)
	move.b 19(%fp),308(%a0)
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
	tst.b 308(%a2)
	jne .L349
	move.l 300(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,300(%a2)
	jle .L350
.L345:
	move.l sprite,%a0
	tst.b 320(%a2)
	jne .L351
.L346:
	move.l %d0,10648(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10568(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L349:
	clr.b 308(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 300(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,300(%a2)
	jgt .L345
.L350:
	clr.l 300(%a2)
	move.b #1,197(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 320(%a2)
	jeq .L346
.L351:
	move.l %d0,10456(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #-1,%d0
	cmp.l 314(%a0),%d0
	jeq .L357
	addq.l #2,292(%a0)
.L353:
	unlk %fp
	rts
.L357:
	tst.b 350(%a0)
	jeq .L353
	addq.l #2,292(%a0)
	jra .L353
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 314(%a0),%d0
	jeq .L363
	subq.l #2,292(%a0)
.L359:
	unlk %fp
	rts
.L363:
	tst.b 350(%a0)
	jeq .L359
	subq.l #2,292(%a0)
	jra .L359
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
	jeq .L366
	move.l 226(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 294(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 298(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L366:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L374
	moveq #6,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	unlk %fp
	rts
.L374:
	moveq #5,%d0
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
	move.l %d0,296(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 314(%a2),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L394
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L395
.L392:
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L395:
	cmp.l #328,292(%a2)
	jle .L392
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jne .L388
	cmp.l #328,292(%a2)
	jle .L392
	moveq #10,%d0
	move.l 12(%fp),%a0
	cmp.l 292(%a0),%d0
	slt %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L394:
	moveq #11,%d0
	cmp.l 292(%a2),%d0
	jlt .L392
	jsr __Z18cameraIsAtLeftWallv
	tst.b %d0
	jne .L388
	moveq #11,%d0
	cmp.l 292(%a2),%d0
	jlt .L392
	move.l 12(%fp),%a0
	cmp.l #280,292(%a0)
	sle %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L388:
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z19fighterPositionXAddP7Fighteri
__Z19fighterPositionXAddP7Fighteri:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d1
	move.l 314(%a0),%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L404
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L405
.L399:
	add.l %d1,292(%a0)
.L397:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L405:
	tst.l %d1
	jle .L399
.L401:
	tst.b 350(%a0)
	jeq .L397
	add.l %d1,292(%a0)
	jra .L397
.L404:
	tst.l %d1
	jlt .L401
	add.l %d1,292(%a0)
	jra .L397
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 184(%a2)
	jne .L408
	tst.b 146(%a2)
	jeq .L628
.L409:
	clr.b 144(%a2)
.L411:
	move.l 234(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,230(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L629
.L412:
	tst.b 151(%a2)
	jeq .L413
	tst.b 168(%a2)
	jeq .L413
	tst.b 208(%a2)
	jeq .L413
	tst.b 161(%a2)
	jne .L415
	clr.b 168(%a2)
	move.b #1,161(%a2)
	move.b #1,147(%a2)
	clr.b 151(%a2)
	clr.l 16(%a3)
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L415:
	move.l 376(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 209(%a2)
	jeq .L630
.L417:
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 212(%a2),%d0
	cmp.l %a0,%d0
	jgt .L631
	clr.b 209(%a2)
.L420:
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L632
.L422:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L596
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L596
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L633
.L596:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L407
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L407
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L407
	and.l JAGPAD_RIGHT,%d0
	jne .L407
	move.b #1,167(%a2)
.L407:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L408:
	clr.b 144(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L628:
	tst.b 151(%a2)
	jne .L409
	tst.b 148(%a2)
	jne .L409
	tst.b 150(%a2)
	jne .L409
	tst.b 149(%a2)
	jne .L409
	tst.b 147(%a2)
	jeq .L411
	clr.b 144(%a2)
	jra .L411
.L629:
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L412
.L413:
	tst.b 161(%a2)
	jne .L415
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L423
	tst.l %d1
	jeq .L424
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L425
	moveq #1,%d4
	cmp.l 314(%a2),%d4
	jeq .L423
.L425:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L424
	moveq #-1,%d4
	cmp.l 314(%a2),%d4
	jeq .L423
.L424:
	tst.b 155(%a2)
	jeq .L634
.L427:
	move.l 64(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L434
	clr.b 155(%a2)
.L434:
	move.l 356(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 456(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L630:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 84(%a2),-(%sp)
	move.l 480(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 209(%a2)
	jne .L417
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L422
	jra .L632
.L634:
	tst.l %d3
	jeq .L635
.L435:
	tst.b 168(%a2)
	jeq .L436
	tst.b 208(%a2)
	jeq .L436
	tst.b 148(%a2)
	jne .L436
	tst.b 185(%a2)
	jeq .L436
	tst.b 164(%a2)
	jne .L439
	clr.b 168(%a2)
	move.b #1,164(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L441:
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 100(%a2),-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L423:
	tst.b 168(%a2)
	jeq .L424
	tst.b 208(%a2)
	jeq .L424
	tst.b 148(%a2)
	jne .L424
	tst.b 185(%a2)
	jne .L424
	tst.b 155(%a2)
	jne .L427
	clr.b 168(%a2)
	move.b #1,155(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 320(%a2),%d2
	move.l 310(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L431
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L432
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L636
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L639:
	move.l 356(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 456(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L633:
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L596
	move.b #1,168(%a2)
	jra .L596
.L635:
	tst.l %d1
	jeq .L436
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L437
	moveq #1,%d4
	cmp.l 314(%a2),%d4
	jeq .L435
.L437:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L436
	moveq #-1,%d3
	cmp.l 314(%a2),%d3
	jeq .L435
.L436:
	tst.b 164(%a2)
	jne .L439
	tst.l %d1
	jeq .L442
	tst.b 168(%a2)
	jeq .L442
	tst.b 208(%a2)
	jeq .L442
	tst.b 148(%a2)
	jne .L442
	tst.b 190(%a2)
	jeq .L442
	tst.b 187(%a2)
	jne .L444
	clr.b 168(%a2)
	move.b #1,187(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L446:
	move.l 400(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L632:
	clr.b 161(%a2)
	move.b #1,208(%a2)
	jra .L422
.L439:
	move.l 100(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L441
	clr.b 164(%a2)
	move.b #1,208(%a2)
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 100(%a2),-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L442:
	tst.b 187(%a2)
	jne .L444
	tst.l %d1
	jeq .L447
	tst.b 168(%a2)
	jeq .L447
	tst.b 208(%a2)
	jeq .L447
	tst.b 148(%a2)
	jne .L447
	tst.b 190(%a2)
	jne .L447
	tst.b 154(%a2)
	jne .L449
	clr.b 168(%a2)
	move.b #1,154(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d1
	move.b 320(%a2),%d1
	move.l 310(%a2),%d0
	move.l (%a2),%a0
	moveq #6,%d4
	cmp.l %a0,%d4
	jeq .L453
	moveq #7,%d2
	cmp.l %a0,%d2
	jeq .L454
	moveq #4,%d3
	cmp.l %a0,%d3
	jeq .L637
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L456:
	move.l 352(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 452(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L444:
	move.l 112(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L446
	clr.b 187(%a2)
	move.b #1,208(%a2)
	move.l 400(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L631:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 480(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 209(%a2)
	jne .L422
	jra .L420
.L447:
	tst.b 154(%a2)
	jne .L449
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L457
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L457
	moveq #1,%d4
	cmp.l 314(%a2),%d4
	jeq .L458
.L457:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L459
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L459
	moveq #-1,%d3
	cmp.l 314(%a2),%d3
	jeq .L458
.L459:
	tst.b 162(%a2)
	jeq .L638
.L461:
	move.l 92(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L463
	clr.b 162(%a2)
.L463:
	move.l 380(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L449:
	move.l 60(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L456
	clr.b 154(%a2)
	move.l 352(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 452(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L638:
	tst.l %d1
	jeq .L464
	moveq #1,%d4
	cmp.l 314(%a2),%d4
	jeq .L465
.L464:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L466
	moveq #-1,%d3
	cmp.l 314(%a2),%d3
	jeq .L465
.L466:
	tst.b 163(%a2)
	jne .L468
	move.l JAGPAD_7,%d3
	move.l %d0,%d4
	and.l %d3,%d4
	jne .L471
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L472
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L473
	moveq #1,%d4
	cmp.l 314(%a2),%d4
	jeq .L471
.L473:
	tst.l %d1
	jeq .L472
	moveq #-1,%d4
	cmp.l 314(%a2),%d4
	jeq .L471
.L472:
	tst.b 157(%a2)
	jne .L475
	move.l JAGPAD_A,%d4
	or.l %d4,%d3
	and.l %d0,%d3
	jeq .L478
	tst.b 168(%a2)
	jeq .L478
	tst.b 208(%a2)
	jeq .L478
	tst.b 148(%a2)
	jne .L478
	tst.b 151(%a2)
	jne .L478
	tst.b 190(%a2)
	jeq .L478
	tst.b 165(%a2)
	jne .L480
	clr.b 168(%a2)
	move.b #1,165(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L482:
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 104(%a2),-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L468:
	move.l 96(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L470
	clr.b 163(%a2)
.L470:
	move.l 384(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L458:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L459
	tst.b 168(%a2)
	jeq .L459
	tst.b 208(%a2)
	jeq .L459
	tst.b 148(%a2)
	jne .L459
	tst.b 162(%a2)
	jne .L461
	clr.b 168(%a2)
	move.b #1,147(%a2)
	move.b #1,162(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 380(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L465:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L466
	tst.b 168(%a2)
	jeq .L466
	tst.b 208(%a2)
	jeq .L466
	tst.b 148(%a2)
	jne .L466
	tst.b 163(%a2)
	jne .L468
	clr.b 168(%a2)
	move.b #1,147(%a2)
	move.b #1,163(%a2)
	clr.l 16(%a3)
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 384(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L475:
	move.l 72(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L477
	clr.b 157(%a2)
.L477:
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 464(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L471:
	tst.b 168(%a2)
	jeq .L472
	tst.b 208(%a2)
	jeq .L472
	tst.b 148(%a2)
	jne .L472
	tst.b 151(%a2)
	jne .L472
	tst.b 185(%a2)
	jne .L472
	tst.b 157(%a2)
	jne .L475
	clr.b 168(%a2)
	move.b #1,157(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 464(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L636:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L639
.L432:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L639
.L431:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L639
.L478:
	tst.b 165(%a2)
	jne .L480
	and.l %d0,%d4
	jeq .L483
	tst.b 168(%a2)
	jeq .L483
	tst.b 208(%a2)
	jeq .L483
	tst.b 148(%a2)
	jne .L483
	tst.b 151(%a2)
	jne .L483
	tst.b 185(%a2)
	jne .L483
	tst.b 156(%a2)
	jne .L485
	clr.b 168(%a2)
	move.b #1,156(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L487:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L480:
	move.l 104(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L482
	clr.b 165(%a2)
	move.b #1,208(%a2)
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 104(%a2),-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L483:
	tst.b 156(%a2)
	jne .L485
	tst.l %d3
	jeq .L488
	tst.b 168(%a2)
	jeq .L488
	tst.b 208(%a2)
	jeq .L488
	tst.b 148(%a2)
	jne .L488
	tst.b 151(%a2)
	jeq .L488
	tst.b 166(%a2)
	jne .L490
	clr.b 168(%a2)
	move.b #1,166(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L492:
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L637:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L456
.L454:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L456
.L453:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L456
.L488:
	tst.b 166(%a2)
	jne .L490
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jeq .L493
	tst.b 148(%a2)
	jne .L493
	tst.b 208(%a2)
	jeq .L493
	tst.b 152(%a2)
	jne .L494
	move.b #1,152(%a2)
	clr.l 16(%a3)
.L494:
	and.l JAGPAD_DOWN,%d0
	jeq .L495
	tst.b 151(%a2)
	jne .L496
	move.b #1,151(%a2)
	clr.b 146(%a2)
	clr.l 16(%a3)
.L496:
	tst.b 153(%a2)
	jne .L497
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 52(%a2),-(%sp)
	move.l 444(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L490:
	move.l 108(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L492
	clr.b 166(%a2)
	move.b #1,208(%a2)
	move.b #1,151(%a2)
	moveq #1,%d0
	move.l %d0,16(%a3)
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L485:
	move.l 68(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L487
	clr.b 156(%a2)
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 314(%a2),(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L493:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L500
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L501
	moveq #1,%d4
	cmp.l 314(%a2),%d4
	jeq .L502
.L501:
	tst.l %d1
	jeq .L500
	moveq #-1,%d4
	cmp.l 314(%a2),%d4
	jne .L500
.L502:
	tst.b 167(%a2)
	jeq .L500
	tst.b 208(%a2)
	jeq .L500
	tst.b 149(%a2)
	jne .L504
	clr.b 208(%a2)
	clr.b 274(%a2)
	clr.b 167(%a2)
	move.b #1,149(%a2)
	clr.l 16(%a3)
	move.l 330(%a2),326(%a2)
	clr.b 220(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L504:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L506
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L507
.L506:
	tst.b 149(%a2)
	jeq .L507
	tst.b 220(%a2)
	jne .L507
	tst.b 274(%a2)
	jne .L507
.L508:
	tst.b 160(%a2)
	jne .L509
	tst.b 158(%a2)
	jne .L510
	clr.b 168(%a2)
	move.b #1,274(%a2)
	move.b #1,158(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L510:
	tst.b 210(%a2)
	jeq .L640
.L511:
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L641
	clr.b 210(%a2)
	clr.b 158(%a2)
.L512:
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
.L509:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L514
	and.l JAGPAD_7,%d0
	jeq .L515
.L514:
	tst.b 149(%a2)
	jeq .L515
	tst.b 220(%a2)
	jne .L515
	tst.b 274(%a2)
	jne .L515
.L516:
	tst.b 158(%a2)
	jne .L517
	tst.b 160(%a2)
	jne .L518
	clr.b 168(%a2)
	move.b #1,274(%a2)
	move.b #1,160(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L518:
	tst.b 210(%a2)
	jeq .L642
.L519:
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L643
	clr.b 210(%a2)
	clr.b 160(%a2)
.L520:
	move.l 372(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L517:
	tst.l 16(%a3)
	jne .L522
	tst.b 158(%a2)
	jne .L522
	tst.b 160(%a2)
	jeq .L644
.L522:
	tst.b 149(%a2)
	jeq .L422
	tst.b 220(%a2)
	jne .L523
	move.w raptor_ticks,%a0
	cmp.l 280(%a2),%a0
	jle .L523
	tst.b 221(%a2)
	jne .L524
	moveq #10,%d0
	add.l 222(%a2),%d0
	cmp.l %a0,%d0
	jge .L524
	tst.b 158(%a2)
	jne .L524
	tst.b 160(%a2)
	jne .L524
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,221(%a2)
	addq.l #8,%sp
.L524:
	tst.b 210(%a2)
	jne .L525
	lea ___floatsisf,%a4
	move.l 314(%a2),-(%sp)
	jsr (%a4)
	move.l 262(%a2),(%sp)
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
	move.l 326(%a2),%d2
	move.l 296(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,296(%a2)
	move.l %d2,(%sp)
	move.l 322(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,326(%a2)
	lea (16,%sp),%sp
.L525:
	tst.b 158(%a2)
	jne .L523
	tst.b 160(%a2)
	jne .L523
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 36(%a2),-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L523:
	clr.l -(%sp)
	move.l 326(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L526
	moveq #89,%d0
	cmp.l 296(%a2),%d0
	jlt .L619
.L526:
	tst.b 220(%a2)
	jeq .L422
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L422
	move.b #1,208(%a2)
	clr.b 149(%a2)
.L621:
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	clr.b 221(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L422
.L500:
	tst.b 149(%a2)
	jne .L504
	tst.l %d3
	jeq .L528
	tst.l %d1
	jeq .L529
	moveq #1,%d4
	cmp.l 314(%a2),%d4
	jeq .L530
.L529:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L528
	moveq #-1,%d4
	cmp.l 314(%a2),%d4
	jeq .L530
.L528:
	tst.b 150(%a2)
	jeq .L645
.L532:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L534
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L535
.L534:
	tst.b 150(%a2)
	jeq .L535
	tst.b 220(%a2)
	jne .L535
	tst.b 274(%a2)
	jeq .L536
.L535:
	tst.b 158(%a2)
	jeq .L537
	tst.b 220(%a2)
	jne .L537
	tst.b 150(%a2)
	jeq .L537
.L536:
	tst.b 160(%a2)
	jne .L537
	tst.b 158(%a2)
	jne .L538
	clr.b 168(%a2)
	move.b #1,274(%a2)
	move.b #1,158(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L538:
	tst.b 210(%a2)
	jeq .L646
.L539:
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L647
	clr.b 210(%a2)
	clr.b 160(%a2)
.L540:
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
.L537:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L542
	and.l JAGPAD_7,%d0
	jeq .L543
.L542:
	tst.b 150(%a2)
	jeq .L543
	tst.b 220(%a2)
	jne .L543
	tst.b 274(%a2)
	jeq .L544
.L543:
	tst.b 160(%a2)
	jeq .L545
	tst.b 220(%a2)
	jne .L545
	tst.b 150(%a2)
	jeq .L545
.L544:
	tst.b 158(%a2)
	jne .L545
	tst.b 160(%a2)
	jne .L546
	clr.b 168(%a2)
	move.b #1,274(%a2)
	move.b #1,160(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L546:
	tst.b 210(%a2)
	jeq .L648
.L547:
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L649
	clr.b 210(%a2)
	clr.b 160(%a2)
.L548:
	move.l 372(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L545:
	tst.l 16(%a3)
	jne .L550
	tst.b 158(%a2)
	jne .L550
	tst.b 160(%a2)
	jeq .L650
.L550:
	tst.b 150(%a2)
	jeq .L422
	tst.b 220(%a2)
	jne .L551
	move.w raptor_ticks,%a0
	cmp.l 280(%a2),%a0
	jle .L551
	tst.b 221(%a2)
	jne .L552
	moveq #10,%d0
	add.l 222(%a2),%d0
	cmp.l %a0,%d0
	jge .L552
	tst.b 158(%a2)
	jne .L552
	tst.b 160(%a2)
	jne .L552
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,221(%a2)
	addq.l #8,%sp
.L552:
	tst.b 210(%a2)
	jne .L553
	lea ___floatsisf,%a4
	move.l 314(%a2),-(%sp)
	jsr (%a4)
	move.l 262(%a2),%d1
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
	move.l 326(%a2),%d2
	move.l 296(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,296(%a2)
	move.l %d2,(%sp)
	move.l 322(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,326(%a2)
	lea (16,%sp),%sp
.L553:
	tst.b 158(%a2)
	jne .L551
	tst.b 160(%a2)
	jne .L551
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.l 36(%a2),-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L551:
	clr.l -(%sp)
	move.l 326(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L554
	moveq #89,%d0
	cmp.l 296(%a2),%d0
	jlt .L619
.L554:
	tst.b 220(%a2)
	jeq .L422
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L422
	move.b #1,208(%a2)
	clr.b 150(%a2)
	jra .L621
.L507:
	tst.b 158(%a2)
	jeq .L509
	tst.b 220(%a2)
	jne .L509
	tst.b 149(%a2)
	jeq .L509
	jra .L508
.L515:
	tst.b 160(%a2)
	jeq .L517
	tst.b 220(%a2)
	jne .L517
	tst.b 149(%a2)
	jeq .L517
	jra .L516
.L650:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
.L620:
	move.l 36(%a2),-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L649:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 476(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L548
.L648:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 476(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L548
	jra .L547
.L647:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 468(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L540
.L646:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 468(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L540
	jra .L539
.L530:
	tst.b 167(%a2)
	jeq .L528
	tst.b 208(%a2)
	jeq .L528
	tst.b 150(%a2)
	jne .L532
	clr.b 208(%a2)
	clr.b 274(%a2)
	clr.b 167(%a2)
	move.b #1,150(%a2)
	clr.l 16(%a3)
	move.l 330(%a2),326(%a2)
	clr.b 220(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,222(%a2)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L532
.L645:
	tst.l %d1
	jeq .L556
	tst.b 208(%a2)
	jeq .L556
	tst.b 148(%a2)
	jne .L556
	tst.b 146(%a2)
	jne .L557
	clr.l 16(%a3)
.L557:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	pea 1.w
	and.l #255,%d2
	move.l %d2,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 416(%a2),-(%sp)
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
	tst.l 292(%a2)
	jle .L422
	tst.b 185(%a2)
	jne .L558
	move.l 242(%a2),%d0
	moveq #-1,%d2
	cmp.l 314(%a2),%d2
	jne .L559
	move.l 238(%a2),%d0
.L559:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L618:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L422
.L558:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L422
	move.l 270(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L618
.L556:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L560
	tst.b 208(%a2)
	jeq .L560
	tst.b 148(%a2)
	jne .L560
	tst.b 146(%a2)
	jne .L561
	clr.l 16(%a3)
.L561:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	pea 1.w
	move.b %d2,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 416(%a2),-(%sp)
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
	cmp.l #280,292(%a2)
	jgt .L422
	tst.b 185(%a2)
	jne .L562
	move.l 238(%a2),%d0
	moveq #-1,%d3
	cmp.l 314(%a2),%d3
	jne .L563
	move.l 242(%a2),%d0
.L563:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L618
.L562:
	move.l 270(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L618
.L560:
	and.l JAGPAD_DOWN,%d0
	jeq .L564
	tst.b 208(%a2)
	jeq .L564
	tst.b 148(%a2)
	jne .L564
	tst.b 151(%a2)
	jne .L565
	move.b #1,151(%a2)
	clr.b 146(%a2)
	clr.b 147(%a2)
	clr.l 16(%a3)
.L565:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 40(%a2),-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L564:
	tst.l %d3
	jeq .L566
	tst.b 167(%a2)
	jne .L567
.L566:
	tst.b 148(%a2)
	jeq .L651
.L568:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L570
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L571
.L570:
	tst.b 148(%a2)
	jeq .L571
	tst.b 220(%a2)
	jne .L571
	tst.b 274(%a2)
	jeq .L572
.L571:
	tst.b 158(%a2)
	jeq .L573
	tst.b 220(%a2)
	jne .L573
	tst.b 148(%a2)
	jeq .L573
.L572:
	tst.b 159(%a2)
	jne .L573
	tst.b 158(%a2)
	jne .L574
	clr.b 168(%a2)
	move.b #1,274(%a2)
	move.b #1,147(%a2)
	move.b #1,158(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L574:
	tst.b 210(%a2)
	jeq .L652
.L575:
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L653
	clr.b 210(%a2)
	clr.b 158(%a2)
.L576:
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 230(%a2),%d0
.L573:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L578
	and.l JAGPAD_7,%d0
	jeq .L579
.L578:
	tst.b 148(%a2)
	jeq .L579
	tst.b 220(%a2)
	jne .L579
	tst.b 274(%a2)
	jeq .L580
.L579:
	tst.b 159(%a2)
	jeq .L581
	tst.b 220(%a2)
	jne .L581
	tst.b 148(%a2)
	jeq .L581
.L580:
	tst.b 158(%a2)
	jne .L581
	tst.b 159(%a2)
	jne .L582
	clr.b 168(%a2)
	move.b #1,274(%a2)
	move.b #1,159(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L582:
	tst.b 210(%a2)
	jeq .L654
.L583:
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	add.l 216(%a2),%d0
	cmp.l %a0,%d0
	jgt .L655
	clr.b 210(%a2)
	clr.b 159(%a2)
.L584:
	move.l 372(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L581:
	tst.l 16(%a3)
	jne .L586
	tst.b 158(%a2)
	jne .L586
	tst.b 159(%a2)
	jeq .L591
.L586:
	tst.b 148(%a2)
	jeq .L422
	tst.b 220(%a2)
	jne .L587
	move.w raptor_ticks,%d2
	ext.l %d2
	cmp.l 280(%a2),%d2
	jle .L588
	tst.b 210(%a2)
	jne .L588
	move.l 326(%a2),%d3
	move.l 296(%a2),-(%sp)
	jsr ___floatsisf
	lea ___addsf3,%a4
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,296(%a2)
	move.l %d3,(%sp)
	move.l 322(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,326(%a2)
	move.l %d2,280(%a2)
.L588:
	tst.b 158(%a2)
	jne .L587
	tst.b 159(%a2)
	jne .L587
	moveq #1,%d4
	move.l %d4,16(%a3)
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 424(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L587:
	clr.l -(%sp)
	move.l 326(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L589
	moveq #89,%d0
	cmp.l 296(%a2),%d0
	jlt .L656
.L589:
	tst.b 220(%a2)
	jeq .L422
	move.l 32(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L591
	move.b #1,208(%a2)
	clr.b 148(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L591:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L656:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 158(%a2)
	clr.b 159(%a2)
.L622:
	move.b #1,220(%a2)
	clr.l 326(%a2)
	moveq #90,%d1
	move.l %d1,296(%a2)
	addq.l #4,%sp
	jra .L422
.L495:
	tst.b 151(%a2)
	jeq .L498
	clr.b 151(%a2)
.L498:
	tst.b 153(%a2)
	jne .L499
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 44(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L497:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 56(%a2),-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 56(%a2),(%sp)
.L624:
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L422
	clr.b 153(%a2)
	jra .L422
.L499:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 48(%a2),-(%sp)
	move.l 440(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 48(%a2),(%sp)
	jra .L624
.L641:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 468(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L512
.L640:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 468(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L512
	jra .L511
.L643:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 476(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L520
.L642:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 476(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L520
	jra .L519
.L644:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	pea 1.w
	pea 1.w
	jra .L620
.L619:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	jra .L622
.L653:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 468(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L576
.L652:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 468(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L576
	jra .L575
.L655:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 472(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L584
.L654:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 210(%a2)
	jeq .L584
	jra .L583
.L567:
	tst.b 148(%a2)
	jne .L568
	clr.b 167(%a2)
	clr.b 274(%a2)
	move.b #1,148(%a2)
	clr.l 16(%a3)
	move.l 330(%a2),326(%a2)
	clr.b 220(%a2)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L568
.L651:
	tst.b 151(%a2)
	jne .L657
	tst.b 152(%a2)
	jne .L658
	tst.b 146(%a2)
	jeq .L594
	clr.b 185(%a2)
	clr.b 146(%a2)
	clr.l 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L594:
	tst.b 144(%a2)
	jne .L595
	move.b #1,144(%a2)
	clr.b 147(%a2)
.L595:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 12(%a2),-(%sp)
	move.l 404(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L422
.L658:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 44(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L422
	clr.b 152(%a2)
	jra .L422
.L657:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%a2),-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L422
	clr.b 151(%a2)
	jra .L422
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 191(%a2)
	jeq .L660
	moveq #-1,%d0
	cmp.l 314(%a2),%d0
	seq %d0
	neg.b %d0
	move.b %d0,_walkForward
	tst.b 197(%a2)
	jeq .L662
	clr.b 197(%a2)
	clr.l 16(%a3)
	move.l 346(%a2),%d0
	jle .L663
	tst.b 192(%a2)
	jne .L663
	move.b #1,192(%a2)
.L662:
	tst.b 198(%a2)
	jeq .L664
.L701:
	clr.b 198(%a2)
	clr.l 16(%a3)
	move.b #1,145(%a2)
	moveq #90,%d1
	move.l %d1,296(%a2)
	move.l (%a2),%d0
	move.b #1,%d1
	cmp.l %d0,%d1
	jeq .L665
	move.b #2,%d1
	cmp.l %d0,%d1
	jeq .L695
.L664:
	tst.b 192(%a2)
	jne .L696
.L667:
	tst.b 193(%a2)
	jne .L697
	tst.b 145(%a2)
	jne .L698
	tst.b 195(%a2)
	jeq .L671
	move.w raptor_ticks,%a0
	move.l 280(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L699
.L671:
	tst.b 199(%a2)
	jeq .L677
	clr.b 199(%a2)
	clr.l 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a2)
	move.l (%a2),%d0
	subq.l #5,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcs .L678
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 200(%a2),292(%a2)
	move.l 204(%a2),296(%a2)
	clr.l 200(%a2)
	clr.l 204(%a2)
	move.b #1,184(%a2)
	move.b #1,188(%a2)
.L676:
	tst.b 194(%a2)
	jne .L700
.L687:
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
	jeq .L660
	move.l 226(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 294(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w 298(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
.L660:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L696:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 16(%a2),-(%sp)
	move.l 408(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 304(%a2)
	jle .L660
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	move.b #1,193(%a2)
	lea (16,%sp),%sp
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L663:
	move.b #1,193(%a2)
	clr.b 192(%a2)
	addq.l #1,%d0
	move.l %d0,346(%a2)
	tst.b 198(%a2)
	jeq .L664
	jra .L701
.L677:
	tst.b 186(%a2)
	jeq .L676
	tst.b 148(%a2)
	jne .L676
	tst.b 150(%a2)
	jne .L676
	tst.b 149(%a2)
	jne .L676
	tst.b 184(%a2)
	jne .L676
	tst.b 147(%a2)
	jne .L676
	tst.b 318(%a2)
	jeq .L681
	clr.b 318(%a2)
	clr.l 16(%a3)
.L681:
	tst.b 319(%a2)
	jeq .L702
	tst.l 16(%a3)
	jle .L703
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L692:
	move.l 28(%a2),-(%sp)
	move.l 420(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L713:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L695:
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandlerb
	addq.l #8,%sp
	tst.b 192(%a2)
	jeq .L667
	jra .L696
.L700:
	move.l 314(%a2),%d3
	move.l %d3,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	lea ___mulsf3,%a4
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l 270(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d3,%d1
	jeq .L704
	moveq #-1,%d1
	cmp.l %d3,%d1
	jeq .L705
.L689:
	add.l %d0,292(%a2)
.L690:
	move.l 276(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L687
	clr.b 194(%a2)
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	jra .L687
.L697:
	move.l 132(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L706
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 132(%a2),-(%sp)
	move.l 496(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L707:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L665:
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandlerb
	addq.l #8,%sp
	tst.b 192(%a2)
	jeq .L667
	jra .L696
.L698:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 20(%a2),-(%sp)
	move.l 412(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L678:
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 200(%a2),292(%a2)
	move.l 204(%a2),296(%a2)
	clr.l 200(%a2)
	clr.l 204(%a2)
	move.b #1,184(%a2)
	move.b #1,188(%a2)
	jra .L676
.L706:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 310(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 191(%a2)
	addq.l #4,%sp
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 132(%a2),-(%sp)
	move.l 496(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L707
.L699:
	clr.b 195(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 320(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 308(%a2)
	jne .L708
	move.l 300(%a2),%d0
	subq.l #1,%d0
	move.l %d0,300(%a2)
	jle .L709
.L673:
	move.l sprite,%a0
	tst.b 320(%a2)
	jne .L710
	move.l %d0,10648(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10568(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L711:
	tst.b 194(%a2)
	jeq .L687
	jra .L700
.L705:
	tst.l %d0
	jle .L689
.L691:
	tst.b 350(%a2)
	jeq .L690
	add.l %d0,292(%a2)
	jra .L690
.L708:
	clr.b 308(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 300(%a2),%d0
	subq.l #1,%d0
	move.l %d0,300(%a2)
	jgt .L673
.L709:
	clr.l 300(%a2)
	move.b #1,197(%a2)
	moveq #0,%d0
	jra .L673
.L703:
	clr.b 186(%a2)
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L692
.L704:
	tst.l %d0
	jlt .L691
	add.l %d0,292(%a2)
	jra .L690
.L710:
	move.l %d0,10456(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L711
.L702:
	move.l 28(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L683
	move.b #1,319(%a2)
	move.l 314(%a2),%d0
	neg.l %d0
	move.l %d0,314(%a2)
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L712
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L683:
	move.l 314(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l 292(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 28(%a2),-(%sp)
	move.l 420(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L713
.L712:
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L683
	.even
	.globl	__Z17fighterCastShadowP7Fighter
__Z17fighterCastShadowP7Fighter:
	link.w %fp,#0
	unlk %fp
	rts
	.globl	_shadowTicks
	.bss
	.even
_shadowTicks:
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
