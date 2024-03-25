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
	move.l %d0,316(%a0)
	move.l #256,%d0
	move.l %d0,294(%a0)
	move.w 12(%a1),%a1
	move.l %a1,298(%a0)
	unlk %fp
	rts
.L21:
	move.w #14,8(%a1)
	moveq #1,%d0
	move.l %d0,24(%a1)
	move.l %d0,316(%a0)
	move.b #14,%d0
	move.l %d0,294(%a0)
	move.w 12(%a1),%a1
	move.l %a1,298(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_
__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d2
	move.l #0x400ccccd,324(%a0)
	clr.l 328(%a0)
	move.l #0xc1900000,332(%a0)
	move.l #0xc1d00000,336(%a0)
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
	move.b #50,%d0
	move.l %d0,214(%a0)
	move.b #20,%d0
	move.l %d0,218(%a0)
	move.b %d2,322(%a0)
	move.b #33,%d0
	move.l %d0,302(%a0)
	clr.l 306(%a0)
	clr.b 310(%a0)
	clr.b 320(%a0)
	clr.b 321(%a0)
	move.b #1,352(%a0)
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
	move.l %d0,228(%a0)
	moveq #2,%d2
	move.l %d2,236(%a0)
	move.l #210,294(%a0)
	moveq #-1,%d0
	move.l %d0,24(%a1)
	move.l %d0,316(%a0)
	move.w #222,%d0
	move.w #6912,%a1
	moveq #90,%d2
	move.l %d2,298(%a0)
	lea (%a1,%d1.l),%a1
	move.w %d0,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
.L27:
	moveq #35,%d2
	move.l %d2,228(%a0)
	move.l %d0,236(%a0)
	move.b #50,%d0
	move.l %d0,294(%a0)
	move.b #1,%d2
	move.l %d2,24(%a1)
	move.l %d2,316(%a0)
	move.b #62,%d0
	move.w #6720,%a1
	moveq #90,%d2
	move.l %d2,298(%a0)
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
	clr.l 348(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 316(%a0),-(%sp)
	move.l 298(%a0),-(%sp)
	move.l 294(%a0),-(%sp)
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
	jeq .L209
.L72:
	move.b 176(%a2),%d0
	jne .L76
.L77:
	move.l 306(%a2),%d2
	tst.b 193(%a2)
	jne .L79
.L223:
	tst.b 310(%a2)
	jne .L210
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jle .L211
.L85:
	move.l sprite,%a0
	tst.b 322(%a2)
	jne .L186
	move.l %d0,10648(%a0)
	moveq #78,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	add.w %d2,%d0
	add.w %d0,%d0
	move.w %d0,10568(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L79:
	clr.l 306(%a2)
	clr.l 268(%a2)
	move.b #1,184(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	move.l %a0,290(%a2)
	clr.l 16(%a3)
	move.l 336(%a2),328(%a2)
	move.b 178(%a2),%d0
	jne .L88
	tst.b 179(%a2)
	jne .L88
	tst.b 188(%a2)
	jeq .L90
	clr.l 328(%a2)
.L90:
	tst.b 169(%a2)
	jne .L91
	tst.b 170(%a2)
	jeq .L212
.L91:
	moveq #0,%d1
	move.b 322(%a2),%d1
	move.l 312(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L213
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L95:
	move.b 170(%a2),%d1
	jne .L104
	tst.b 171(%a2)
	jeq .L214
.L104:
	move.l 294(%a2),%a4
	move.l 316(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L215
.L105:
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L216
.L106:
	tst.b %d1
	jne .L107
	tst.b 173(%a2)
	jne .L107
	tst.b 174(%a2)
	jne .L107
	tst.b 171(%a2)
	jne .L217
	tst.b 176(%a2)
	jne .L218
.L71:
	tst.b 169(%a2)
	jeq .L78
.L233:
	tst.b 184(%a2)
	jne .L219
.L78:
	tst.b 170(%a2)
	jeq .L111
	tst.b 184(%a2)
	jne .L220
.L111:
	tst.b 171(%a2)
	jeq .L221
	tst.b 184(%a2)
	jne .L222
.L113:
	tst.b 172(%a2)
	jeq .L118
	tst.b 184(%a2)
	jeq .L118
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L119
.L180:
	move.l 294(%a2),%d0
.L120:
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
	jeq .L70
	clr.b 172(%a2)
	clr.b 184(%a2)
.L70:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L221:
	tst.b 173(%a2)
	jeq .L113
	tst.b 184(%a2)
	jeq .L113
.L222:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L114
.L179:
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
	jeq .L70
.L241:
	clr.b 171(%a2)
	clr.b 173(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L209:
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
	move.l 306(%a2),%d2
	tst.b 193(%a2)
	jeq .L223
	jra .L79
.L76:
	move.l 306(%a2),%d2
	tst.b 193(%a2)
	jne .L79
	tst.b 310(%a2)
	jne .L224
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jle .L225
.L81:
	move.l sprite,%a0
	tst.b 322(%a2)
	jne .L186
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
	jra .L79
.L118:
	tst.b 174(%a2)
	jeq .L123
	tst.b 184(%a2)
	jeq .L123
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L124
.L181:
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
	jeq .L70
.L248:
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
	jne .L226
.L128:
	tst.b 188(%a2)
	jeq .L129
	tst.b 184(%a2)
	jeq .L129
	tst.b 189(%a2)
	jne .L130
	tst.b 190(%a2)
	jeq .L131
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
.L130:
	tst.b 182(%a2)
	jne .L227
.L132:
	moveq #1,%d1
	cmp.l 16(%a3),%d1
	jge .L70
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L70
	tst.b 189(%a2)
	jeq .L228
	move.l 298(%a2),%d0
	moveq #122,%d3
	cmp.l %d0,%d3
	jge .L134
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
	jne .L135
	tst.b 310(%a2)
	jne .L229
	move.l 302(%a2),%d0
	subq.l #8,%d0
	move.l %d0,302(%a2)
	jle .L230
.L137:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L138
	move.l %d0,10456(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L135:
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
	jeq .L231
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L232
.L141:
	add.l %d0,294(%a2)
.L142:
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
.L88:
	move.l 340(%a2),328(%a2)
	jra .L90
.L107:
	move.l %d0,-(%sp)
	moveq #-10,%d0
	add.l 298(%a2),%d0
	move.l %d0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z10bloodSprayiii
	lea (12,%sp),%sp
	tst.b 169(%a2)
	jne .L233
	jra .L78
.L212:
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
	move.l 312(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 322(%a2),%d2
	move.l 312(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L102
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L234
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L219:
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
	jeq .L70
	clr.b 169(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L220:
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
	jeq .L70
	clr.b 170(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L214:
	tst.b 176(%a2)
	jne .L104
.L100:
	tst.b 173(%a2)
	jeq .L235
	clr.b %d1
.L244:
	move.l 294(%a2),%a4
	move.l 316(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L105
.L215:
	lea (40,%a4),%a4
	jra .L106
.L129:
	tst.b 178(%a2)
	jne .L143
	tst.b 179(%a2)
	jeq .L144
.L143:
	tst.b 184(%a2)
	jeq .L144
	tst.b 182(%a2)
	jne .L236
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L70
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
	jeq .L237
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L238
.L147:
	add.l %d0,294(%a2)
.L148:
	move.b 180(%a2),%d3
	move.l 328(%a2),%d2
	tst.b %d3
	jne .L150
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
.L150:
	move.l %d2,-(%sp)
	move.l 336(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L151
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L195
.L151:
	tst.b 181(%a2)
	jne .L169
	tst.b %d3
	jne .L170
	tst.b 179(%a2)
	jeq .L198
.L170:
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
	jeq .L168
	move.b #1,181(%a2)
	clr.b 180(%a2)
.L168:
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
.L251:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L216:
	lea (-40,%a4),%a4
	jra .L106
.L114:
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
	jeq .L239
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L240
.L117:
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
	jeq .L70
	jra .L241
.L144:
	tst.b 176(%a2)
	jeq .L158
	tst.b 184(%a2)
	jeq .L158
	tst.b 182(%a2)
	jeq .L159
	moveq #19,%d0
	add.l 282(%a2),%d0
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
	move.l %d0,298(%a2)
.L245:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L158:
	tst.b 183(%a2)
	jeq .L70
	tst.b 184(%a2)
	jeq .L70
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
	jeq .L70
	clr.b 184(%a2)
	clr.b 183(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L213:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L186:
	move.l %d0,10456(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L79
.L210:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jgt .L85
	jra .L211
.L224:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jgt .L81
.L225:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L81
.L211:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L85
.L226:
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
	jeq .L70
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
.L119:
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
	jeq .L242
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L243
.L122:
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L120
.L235:
	tst.b 174(%a2)
	jeq .L71
	clr.b %d1
	jra .L244
.L236:
	moveq #19,%d0
	add.l 282(%a2),%d0
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
	move.l %d0,298(%a2)
	jra .L245
.L227:
	moveq #19,%d0
	add.l 282(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L70
	clr.b 188(%a2)
	clr.b 189(%a2)
	clr.b 182(%a2)
	move.b #1,183(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,298(%a2)
	jra .L245
.L124:
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
	jeq .L246
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L247
.L127:
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
.L250:
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
	jeq .L70
	jra .L248
.L240:
	tst.l %d0
	jle .L117
.L188:
	tst.b 352(%a2)
	jeq .L179
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L249
.L218:
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
	jne .L233
	jra .L78
.L243:
	tst.l %d0
	jle .L122
.L190:
	tst.b 352(%a2)
	jeq .L180
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L120
.L247:
	tst.l %d0
	jle .L127
.L192:
	tst.b 352(%a2)
	jeq .L181
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L250
.L238:
	tst.l %d0
	jle .L147
.L183:
	tst.b 352(%a2)
	jeq .L148
	add.l %d0,294(%a2)
	jra .L148
.L232:
	tst.l %d0
	jle .L141
.L182:
	tst.b 352(%a2)
	jeq .L142
	add.l %d0,294(%a2)
	jra .L142
.L252:
	tst.l %d0
	jlt .L184
.L161:
	add.l %d0,294(%a2)
.L162:
	move.b 180(%a2),%d3
	move.l 328(%a2),%d2
	tst.b %d3
	jne .L164
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
.L164:
	move.l 336(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___gesf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L165
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L195
.L165:
	tst.b 181(%a2)
	jne .L169
	tst.b %d3
	jne .L170
.L198:
	move.l 312(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L170
.L195:
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
	jra .L251
.L230:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L137
.L229:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 302(%a2),%d0
	subq.l #8,%d0
	move.l %d0,302(%a2)
	jgt .L137
	jra .L230
.L217:
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
	jne .L233
	jra .L78
.L239:
	tst.l %d0
	jlt .L188
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L249
.L96:
	tst.b 175(%a2)
	jeq .L98
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L131:
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
	jeq .L132
	jra .L227
.L159:
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L70
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
	jeq .L252
	moveq #-1,%d1
	cmp.l %d2,%d1
	jne .L161
	tst.l %d0
	jle .L161
.L184:
	tst.b 352(%a2)
	jeq .L162
	add.l %d0,294(%a2)
	jra .L162
.L242:
	tst.l %d0
	jlt .L190
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L120
.L98:
	move.l 312(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L95
.L169:
	move.l 298(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L171
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
	jra .L251
.L246:
	tst.l %d0
	jlt .L192
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L250
.L228:
	move.b #1,189(%a2)
	move.l 316(%a2),%d0
	lsl.l #4,%d0
	add.l %d0,294(%a2)
	moveq #48,%d2
	move.l %d2,298(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L134:
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
	jra .L135
.L171:
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
	jra .L251
.L237:
	tst.l %d0
	jlt .L183
	add.l %d0,294(%a2)
	jra .L148
.L231:
	tst.l %d0
	jlt .L182
	add.l %d0,294(%a2)
	jra .L142
.L234:
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
.L138:
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
	jra .L135
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
	move.l %d2,-(%sp)
	move.l 12(%fp),%d2
	move.l 8(%fp),-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	addq.l #4,%sp
	move.l %d2,8(%fp)
	move.l -4(%fp),%d2
	unlk %fp
	jra __Z17fighterResetFlagsP7Fighter
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
	jne .L258
	tst.b 152(%a0)
	jne .L258
.L259:
	tst.b 154(%a1)
	jne .L285
.L261:
	tst.b 155(%a1)
	jeq .L263
	tst.b 151(%a0)
	jne .L263
	move.b #1,170(%a0)
	moveq #2,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
.L262:
	tst.b %d0
	jne .L257
.L282:
	tst.b 152(%a0)
	jeq .L275
.L286:
	tst.b 151(%a0)
	jeq .L275
	move.b #1,153(%a0)
	move.b #1,196(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a0)
.L278:
	tst.b 187(%a1)
	jeq .L257
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
.L257:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L258:
	tst.b 193(%a0)
	jne .L259
	tst.b %d0
	jne .L257
	tst.b 152(%a0)
	jeq .L282
	move.b #1,153(%a0)
	move.b #1,196(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a0)
	tst.b 152(%a0)
	jne .L286
.L275:
	tst.b 162(%a1)
	jeq .L277
	move.b #1,177(%a0)
	moveq #4,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	jra .L278
.L285:
	tst.b 151(%a0)
	jne .L261
	move.b #1,169(%a0)
	moveq #2,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L282
	jra .L257
.L263:
	tst.b 156(%a1)
	jeq .L264
	tst.b 151(%a0)
	jne .L264
	move.b #1,169(%a0)
	moveq #5,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L282
	jra .L257
.L264:
	tst.b 157(%a1)
	jeq .L265
	tst.b 151(%a0)
	jne .L265
	move.b #1,171(%a0)
	moveq #5,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L282
	jra .L257
.L265:
	tst.b 163(%a1)
	jeq .L266
	tst.b 151(%a0)
	jeq .L287
.L266:
	tst.b 164(%a1)
	jeq .L267
	tst.b 151(%a0)
	jeq .L288
.L267:
	tst.b 158(%a1)
	jeq .L269
	move.b #1,173(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #5,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	tst.b %d0
	jeq .L282
	jra .L257
.L277:
	tst.b 166(%a1)
	jeq .L278
	move.b #1,172(%a0)
	clr.b 210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #2,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	jra .L278
.L269:
	tst.b 159(%a1)
	jne .L289
	tst.b 161(%a1)
	jeq .L271
	move.b #1,176(%a0)
	clr.b 210(%a1)
	move.b #1,211(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #8,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L282
	jra .L257
.L287:
	move.b #1,171(%a0)
	moveq #6,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	tst.b %d0
	jeq .L282
	jra .L257
.L288:
	move.b #1,174(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L290
	moveq #4,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
.L291:
	tst.b %d0
	jeq .L282
	jra .L257
.L289:
	move.b #1,173(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #4,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
.L292:
	tst.b %d0
	jeq .L282
	jra .L257
.L290:
	move.b #1,175(%a0)
	moveq #4,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	jra .L291
.L271:
	tst.b 160(%a1)
	jeq .L272
	move.b #1,178(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #6,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L282
	jra .L257
.L272:
	tst.b 165(%a1)
	jeq .L262
	move.b #1,179(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #4,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	jra .L292
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15416,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 185(%a2)
	jeq .L295
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L309
.L295:
	tst.b 185(%a3)
	jeq .L296
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L310
.L296:
	pea 21.w
	pea 18.w
	pea 21.w
	pea 18.w
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L294
	move.l colliders,%d4
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a4
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L299
.L314:
	cmp.w #0,%a0
	jlt .L294
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
	jeq .L311
	moveq #33,%d3
	cmp.l %d0,%d3
	jeq .L312
	moveq #36,%d3
	cmp.l %d0,%d3
	jne .L304
	moveq #33,%d5
	cmp.l %d1,%d5
	jeq .L313
.L307:
	addq.l #8,%d2
.L315:
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L314
.L299:
	cmp.w #0,%a0
	jge .L307
.L294:
	movem.l -28(%fp),#7228
	unlk %fp
	rts
.L312:
	moveq #34,%d5
	cmp.l %d1,%d5
	jne .L307
	tst.b 146(%a2)
	jeq .L307
	move.l 294(%a2),%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L307
	cmp.l #328,%d0
	jgt .L307
	move.l 294(%a3),%d0
	cmp.l %d0,%d1
	jge .L307
	cmp.l #328,%d0
	jgt .L307
	move.b #1,185(%a2)
	move.b #1,195(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a3)
	addq.l #8,%d2
	jra .L315
.L311:
	moveq #34,%d5
	cmp.l %d1,%d5
	jne .L307
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L315
.L304:
	moveq #34,%d3
	cmp.l %d0,%d3
	jne .L307
	moveq #33,%d5
	cmp.l %d1,%d5
	jne .L307
	tst.b 146(%a3)
	jeq .L307
	move.b #1,185(%a3)
	move.b #1,195(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a2)
	addq.l #8,%d2
	jra .L315
.L313:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L315
.L309:
	clr.b 185(%a2)
	jra .L295
.L310:
	clr.b 185(%a3)
	jra .L296
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 316(%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L331
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L332
.L320:
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L333
.L321:
	moveq #-1,%d1
	cmp.l %d0,%d1
	jne .L317
	move.l 294(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a1),%d0
	jge .L317
.L328:
	tst.b 186(%a0)
	jne .L317
	clr.b 321(%a0)
	move.b #1,186(%a0)
	move.b #1,320(%a0)
.L317:
	unlk %fp
	rts
.L332:
	move.l 294(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a0),%d0
	jge .L320
	tst.b 186(%a1)
	jne .L320
.L334:
	clr.b 321(%a1)
	move.b #1,186(%a1)
	move.b #1,320(%a1)
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L321
.L333:
	move.l 294(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a0),%d0
	jlt .L328
	unlk %fp
	rts
.L331:
	move.l 294(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a1),%d0
	jge .L320
	tst.b 186(%a1)
	jne .L320
	jra .L334
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L343
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L344
.L338:
	clr.b 191(%a0)
	clr.b 191(%a1)
.L336:
	unlk %fp
	rts
.L344:
	moveq #-72,%d0
	add.l 294(%a0),%d0
	cmp.l 294(%a1),%d0
	jgt .L338
.L340:
	move.b #1,191(%a0)
	move.b #1,191(%a1)
	unlk %fp
	rts
.L343:
	moveq #72,%d0
	add.l 294(%a0),%d0
	cmp.l 294(%a1),%d0
	jge .L340
	clr.b 191(%a0)
	clr.b 191(%a1)
	jra .L336
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 302(%a1),10456(%a0)
	move.l 12(%fp),%a1
	move.l 302(%a1),%d0
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
	jne .L348
	tst.b 310(%a2)
	jne .L355
	move.l 302(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,302(%a2)
	jle .L356
.L351:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L352
.L357:
	move.l %d0,10456(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L352:
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
.L348:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L355:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,302(%a2)
	jgt .L351
.L356:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L352
	jra .L357
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #-1,%d0
	cmp.l 316(%a0),%d0
	jeq .L363
	addq.l #2,294(%a0)
.L359:
	unlk %fp
	rts
.L363:
	tst.b 352(%a0)
	jeq .L359
	addq.l #2,294(%a0)
	jra .L359
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 316(%a0),%d0
	jeq .L369
	subq.l #2,294(%a0)
.L365:
	unlk %fp
	rts
.L369:
	tst.b 352(%a0)
	jeq .L365
	subq.l #2,294(%a0)
	jra .L365
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
	jeq .L372
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
.L372:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L380
	moveq #6,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	unlk %fp
	rts
.L380:
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
	move.l %d0,298(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 316(%a2),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L400
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L401
.L398:
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L401:
	cmp.l #328,294(%a2)
	jle .L398
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jne .L394
	cmp.l #328,294(%a2)
	jle .L398
	moveq #10,%d0
	move.l 12(%fp),%a0
	cmp.l 294(%a0),%d0
	slt %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L400:
	moveq #11,%d0
	cmp.l 294(%a2),%d0
	jlt .L398
	jsr __Z18cameraIsAtLeftWallv
	tst.b %d0
	jne .L394
	moveq #11,%d0
	cmp.l 294(%a2),%d0
	jlt .L398
	move.l 12(%fp),%a0
	cmp.l #280,294(%a0)
	sle %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L394:
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
	move.l 316(%a0),%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L410
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L411
.L405:
	add.l %d1,294(%a0)
.L403:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L411:
	tst.l %d1
	jle .L405
.L407:
	tst.b 352(%a0)
	jeq .L403
	add.l %d1,294(%a0)
	jra .L403
.L410:
	tst.l %d1
	jlt .L407
	add.l %d1,294(%a0)
	jra .L403
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 184(%a2)
	jne .L414
	tst.b 146(%a2)
	jeq .L637
.L415:
	clr.b 144(%a2)
.L417:
	move.l 236(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,232(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L638
.L418:
	tst.b 151(%a2)
	jeq .L419
	tst.b 168(%a2)
	jeq .L419
	tst.b 210(%a2)
	jeq .L419
	tst.b 161(%a2)
	jne .L421
	clr.b 168(%a2)
	move.b #1,161(%a2)
	move.b #1,147(%a2)
	clr.b 151(%a2)
	clr.l 16(%a3)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L421:
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 211(%a2)
	jeq .L639
.L423:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 214(%a2),%d0
	cmp.l %a0,%d0
	jgt .L640
	clr.b 211(%a2)
.L426:
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L641
.L428:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L605
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L605
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L642
.L605:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L413
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L413
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L413
	and.l JAGPAD_RIGHT,%d0
	jne .L413
	move.b #1,167(%a2)
.L413:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L414:
	clr.b 144(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L637:
	tst.b 151(%a2)
	jne .L415
	tst.b 148(%a2)
	jne .L415
	tst.b 150(%a2)
	jne .L415
	tst.b 149(%a2)
	jne .L415
	tst.b 147(%a2)
	jeq .L417
	clr.b 144(%a2)
	jra .L417
.L638:
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L418
.L419:
	tst.b 161(%a2)
	jne .L421
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L429
	tst.l %d1
	jeq .L430
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L431
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L429
.L431:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L430
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L429
.L430:
	tst.b 155(%a2)
	jeq .L643
.L433:
	move.l 64(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L440
	clr.b 155(%a2)
.L440:
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
	jra .L428
.L639:
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
	jne .L423
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L428
	jra .L641
.L643:
	tst.l %d3
	jeq .L644
.L441:
	tst.b 168(%a2)
	jeq .L442
	tst.b 210(%a2)
	jeq .L442
	tst.b 148(%a2)
	jne .L442
	tst.b 185(%a2)
	jeq .L442
	tst.b 164(%a2)
	jne .L445
	clr.b 168(%a2)
	move.b #1,164(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L447:
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
	jra .L428
.L429:
	tst.b 168(%a2)
	jeq .L430
	tst.b 210(%a2)
	jeq .L430
	tst.b 148(%a2)
	jne .L430
	tst.b 185(%a2)
	jne .L430
	tst.b 155(%a2)
	jne .L433
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
	jeq .L437
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L438
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L645
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L649:
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
	jra .L428
.L642:
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L605
	move.b #1,168(%a2)
	jra .L605
.L644:
	tst.l %d1
	jeq .L442
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L443
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L441
.L443:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L442
	moveq #-1,%d3
	cmp.l 316(%a2),%d3
	jeq .L441
.L442:
	tst.b 164(%a2)
	jne .L445
	tst.l %d1
	jeq .L448
	tst.b 168(%a2)
	jeq .L448
	tst.b 210(%a2)
	jeq .L448
	tst.b 148(%a2)
	jne .L448
	tst.b 191(%a2)
	jeq .L448
	tst.b 187(%a2)
	jne .L450
	clr.b 168(%a2)
	move.b #1,187(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d4
	cmp.l %d0,%d4
	jhi .L452
	moveq #6,%d1
	cmp.l %d0,%d1
	jcc .L453
	moveq #7,%d2
	cmp.l %d0,%d2
	jeq .L646
.L452:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L455:
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
	jra .L428
.L641:
	clr.b 161(%a2)
	move.b #1,210(%a2)
	jra .L428
.L445:
	move.l 100(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L447
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
	jra .L428
.L646:
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
	jra .L428
.L448:
	tst.b 187(%a2)
	jne .L450
	tst.l %d1
	jeq .L456
	tst.b 168(%a2)
	jeq .L456
	tst.b 210(%a2)
	jeq .L456
	tst.b 148(%a2)
	jne .L456
	tst.b 191(%a2)
	jne .L456
	tst.b 154(%a2)
	jne .L458
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
	jeq .L462
	moveq #7,%d4
	cmp.l %a0,%d4
	jeq .L463
	moveq #4,%d2
	cmp.l %a0,%d2
	jeq .L647
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L465:
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
	jra .L428
.L450:
	move.l 112(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L455
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
	jra .L428
.L640:
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
	jne .L428
	jra .L426
.L456:
	tst.b 154(%a2)
	jne .L458
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L466
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L466
	moveq #1,%d3
	cmp.l 316(%a2),%d3
	jeq .L467
.L466:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L468
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L468
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L467
.L468:
	tst.b 162(%a2)
	jeq .L648
.L470:
	move.l 92(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L472
	clr.b 162(%a2)
.L472:
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
	jra .L428
.L458:
	move.l 60(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L465
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
	jra .L428
.L648:
	tst.l %d1
	jeq .L473
	moveq #1,%d3
	cmp.l 316(%a2),%d3
	jeq .L474
.L473:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L475
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L474
.L475:
	tst.b 163(%a2)
	jne .L477
	move.l JAGPAD_7,%d3
	move.l %d0,%d4
	and.l %d3,%d4
	jne .L480
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L481
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L482
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L480
.L482:
	tst.l %d1
	jeq .L481
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L480
.L481:
	tst.b 157(%a2)
	jne .L484
	move.l JAGPAD_A,%d4
	or.l %d4,%d3
	and.l %d0,%d3
	jeq .L487
	tst.b 168(%a2)
	jeq .L487
	tst.b 210(%a2)
	jeq .L487
	tst.b 148(%a2)
	jne .L487
	tst.b 151(%a2)
	jne .L487
	tst.b 191(%a2)
	jeq .L487
	tst.b 165(%a2)
	jne .L489
	clr.b 168(%a2)
	move.b #1,165(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L491:
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
	jra .L428
.L477:
	move.l 96(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L479
	clr.b 163(%a2)
.L479:
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
	jra .L428
.L467:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L468
	tst.b 168(%a2)
	jeq .L468
	tst.b 210(%a2)
	jeq .L468
	tst.b 148(%a2)
	jne .L468
	tst.b 162(%a2)
	jne .L470
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
	jra .L428
.L474:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L475
	tst.b 168(%a2)
	jeq .L475
	tst.b 210(%a2)
	jeq .L475
	tst.b 148(%a2)
	jne .L475
	tst.b 163(%a2)
	jne .L477
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
	jra .L428
.L484:
	move.l 72(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L486
	clr.b 157(%a2)
.L486:
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
	jra .L428
.L480:
	tst.b 168(%a2)
	jeq .L481
	tst.b 210(%a2)
	jeq .L481
	tst.b 148(%a2)
	jne .L481
	tst.b 151(%a2)
	jne .L481
	tst.b 185(%a2)
	jne .L481
	tst.b 157(%a2)
	jne .L484
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
	jra .L428
.L645:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L649
.L438:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L649
.L437:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L649
.L453:
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
	jra .L428
.L487:
	tst.b 165(%a2)
	jne .L489
	and.l %d0,%d4
	jeq .L492
	tst.b 168(%a2)
	jeq .L492
	tst.b 210(%a2)
	jeq .L492
	tst.b 148(%a2)
	jne .L492
	tst.b 151(%a2)
	jne .L492
	tst.b 185(%a2)
	jne .L492
	tst.b 156(%a2)
	jne .L494
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
.L496:
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
	jra .L428
.L489:
	move.l 104(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L491
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
	jra .L428
.L492:
	tst.b 156(%a2)
	jne .L494
	tst.l %d3
	jeq .L497
	tst.b 168(%a2)
	jeq .L497
	tst.b 210(%a2)
	jeq .L497
	tst.b 148(%a2)
	jne .L497
	tst.b 151(%a2)
	jeq .L497
	tst.b 166(%a2)
	jne .L499
	clr.b 168(%a2)
	move.b #1,166(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L501:
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
	jra .L428
.L647:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L465
.L463:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L465
.L462:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L465
.L497:
	tst.b 166(%a2)
	jne .L499
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jeq .L502
	tst.b 148(%a2)
	jne .L502
	tst.b 210(%a2)
	jeq .L502
	tst.b 152(%a2)
	jne .L503
	move.b #1,152(%a2)
	clr.l 16(%a3)
.L503:
	and.l JAGPAD_DOWN,%d0
	jeq .L504
	tst.b 151(%a2)
	jne .L505
	move.b #1,151(%a2)
	clr.b 146(%a2)
	clr.l 16(%a3)
.L505:
	tst.b 153(%a2)
	jne .L506
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
	jra .L428
.L499:
	move.l 108(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L501
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
	jra .L428
.L494:
	move.l 68(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L496
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
	jra .L428
.L502:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L509
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L510
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L511
.L510:
	tst.l %d1
	jeq .L509
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jne .L509
.L511:
	tst.b 167(%a2)
	jeq .L509
	tst.b 210(%a2)
	jeq .L509
	tst.b 149(%a2)
	jne .L513
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
.L513:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L515
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L516
.L515:
	tst.b 149(%a2)
	jeq .L516
	tst.b 222(%a2)
	jne .L516
	tst.b 276(%a2)
	jne .L516
.L517:
	tst.b 160(%a2)
	jne .L518
	tst.b 158(%a2)
	jne .L519
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
.L519:
	tst.b 212(%a2)
	jeq .L650
.L520:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L651
	clr.b 212(%a2)
	clr.b 158(%a2)
.L521:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L518:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L523
	and.l JAGPAD_7,%d0
	jeq .L524
.L523:
	tst.b 149(%a2)
	jeq .L524
	tst.b 222(%a2)
	jne .L524
	tst.b 276(%a2)
	jne .L524
.L525:
	tst.b 158(%a2)
	jne .L526
	tst.b 160(%a2)
	jne .L527
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
.L527:
	tst.b 212(%a2)
	jeq .L652
.L528:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L653
	clr.b 212(%a2)
	clr.b 160(%a2)
.L529:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L526:
	tst.l 16(%a3)
	jne .L531
	tst.b 158(%a2)
	jne .L531
	tst.b 160(%a2)
	jeq .L654
.L531:
	tst.b 149(%a2)
	jeq .L428
	tst.b 222(%a2)
	jne .L532
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L532
	tst.b 223(%a2)
	jne .L533
	moveq #10,%d0
	add.l 224(%a2),%d0
	cmp.l %a0,%d0
	jge .L533
	tst.b 158(%a2)
	jne .L533
	tst.b 160(%a2)
	jne .L533
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,223(%a2)
	addq.l #8,%sp
.L533:
	tst.b 212(%a2)
	jne .L534
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
.L534:
	tst.b 158(%a2)
	jne .L532
	tst.b 160(%a2)
	jne .L532
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
.L532:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L535
	moveq #89,%d0
	cmp.l 298(%a2),%d0
	jlt .L628
.L535:
	tst.b 222(%a2)
	jeq .L428
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
	jeq .L428
	move.b #1,210(%a2)
	clr.b 149(%a2)
.L630:
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	clr.b 223(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L428
.L509:
	tst.b 149(%a2)
	jne .L513
	tst.l %d3
	jeq .L537
	tst.l %d1
	jeq .L538
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L539
.L538:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L537
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L539
.L537:
	tst.b 150(%a2)
	jeq .L655
.L541:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L543
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L544
.L543:
	tst.b 150(%a2)
	jeq .L544
	tst.b 222(%a2)
	jne .L544
	tst.b 276(%a2)
	jeq .L545
.L544:
	tst.b 158(%a2)
	jeq .L546
	tst.b 222(%a2)
	jne .L546
	tst.b 150(%a2)
	jeq .L546
.L545:
	tst.b 160(%a2)
	jne .L546
	tst.b 158(%a2)
	jne .L547
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
.L547:
	tst.b 212(%a2)
	jeq .L656
.L548:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L657
	clr.b 212(%a2)
	clr.b 160(%a2)
.L549:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L546:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L551
	and.l JAGPAD_7,%d0
	jeq .L552
.L551:
	tst.b 150(%a2)
	jeq .L552
	tst.b 222(%a2)
	jne .L552
	tst.b 276(%a2)
	jeq .L553
.L552:
	tst.b 160(%a2)
	jeq .L554
	tst.b 222(%a2)
	jne .L554
	tst.b 150(%a2)
	jeq .L554
.L553:
	tst.b 158(%a2)
	jne .L554
	tst.b 160(%a2)
	jne .L555
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
.L555:
	tst.b 212(%a2)
	jeq .L658
.L556:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L659
	clr.b 212(%a2)
	clr.b 160(%a2)
.L557:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L554:
	tst.l 16(%a3)
	jne .L559
	tst.b 158(%a2)
	jne .L559
	tst.b 160(%a2)
	jeq .L660
.L559:
	tst.b 150(%a2)
	jeq .L428
	tst.b 222(%a2)
	jne .L560
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jle .L560
	tst.b 223(%a2)
	jne .L561
	moveq #10,%d0
	add.l 224(%a2),%d0
	cmp.l %a0,%d0
	jge .L561
	tst.b 158(%a2)
	jne .L561
	tst.b 160(%a2)
	jne .L561
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,223(%a2)
	addq.l #8,%sp
.L561:
	tst.b 212(%a2)
	jne .L562
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
.L562:
	tst.b 158(%a2)
	jne .L560
	tst.b 160(%a2)
	jne .L560
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
.L560:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L563
	moveq #89,%d0
	cmp.l 298(%a2),%d0
	jlt .L628
.L563:
	tst.b 222(%a2)
	jeq .L428
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
	jeq .L428
	move.b #1,210(%a2)
	clr.b 150(%a2)
	jra .L630
.L516:
	tst.b 158(%a2)
	jeq .L518
	tst.b 222(%a2)
	jne .L518
	tst.b 149(%a2)
	jeq .L518
	jra .L517
.L524:
	tst.b 160(%a2)
	jeq .L526
	tst.b 222(%a2)
	jne .L526
	tst.b 149(%a2)
	jeq .L526
	jra .L525
.L660:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
.L629:
	move.l 36(%a2),-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L428
.L659:
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
	jra .L557
.L658:
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
	jeq .L557
	jra .L556
.L657:
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
	jra .L549
.L656:
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
	jeq .L549
	jra .L548
.L539:
	tst.b 167(%a2)
	jeq .L537
	tst.b 210(%a2)
	jeq .L537
	tst.b 150(%a2)
	jne .L541
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
	jra .L541
.L655:
	tst.l %d1
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
	jle .L428
	tst.b 185(%a2)
	jne .L567
	move.l 244(%a2),%d0
	moveq #-1,%d2
	cmp.l 316(%a2),%d2
	jne .L568
	move.l 240(%a2),%d0
.L568:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L627:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L428
.L567:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L428
	move.l 272(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L627
.L565:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L569
	tst.b 210(%a2)
	jeq .L569
	tst.b 148(%a2)
	jne .L569
	tst.b 146(%a2)
	jne .L570
	clr.l 16(%a3)
.L570:
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
	jgt .L428
	tst.b 185(%a2)
	jne .L571
	move.l 240(%a2),%d0
	moveq #-1,%d3
	cmp.l 316(%a2),%d3
	jne .L572
	move.l 244(%a2),%d0
.L572:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L627
.L571:
	move.l 272(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L627
.L569:
	and.l JAGPAD_DOWN,%d0
	jeq .L573
	tst.b 210(%a2)
	jeq .L573
	tst.b 148(%a2)
	jne .L573
	tst.b 151(%a2)
	jne .L574
	move.b #1,151(%a2)
	clr.b 146(%a2)
	clr.b 147(%a2)
	clr.l 16(%a3)
.L574:
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
	jra .L428
.L573:
	tst.l %d3
	jeq .L575
	tst.b 167(%a2)
	jne .L576
.L575:
	tst.b 148(%a2)
	jeq .L661
.L577:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L579
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L580
.L579:
	tst.b 148(%a2)
	jeq .L580
	tst.b 222(%a2)
	jne .L580
	tst.b 276(%a2)
	jeq .L581
.L580:
	tst.b 158(%a2)
	jeq .L582
	tst.b 222(%a2)
	jne .L582
	tst.b 148(%a2)
	jeq .L582
.L581:
	tst.b 159(%a2)
	jne .L582
	tst.b 158(%a2)
	jne .L583
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
.L583:
	tst.b 212(%a2)
	jeq .L662
.L584:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L663
	clr.b 212(%a2)
	clr.b 158(%a2)
.L585:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L582:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L587
	and.l JAGPAD_7,%d0
	jeq .L588
.L587:
	tst.b 148(%a2)
	jeq .L588
	tst.b 222(%a2)
	jne .L588
	tst.b 276(%a2)
	jeq .L589
.L588:
	tst.b 159(%a2)
	jeq .L590
	tst.b 222(%a2)
	jne .L590
	tst.b 148(%a2)
	jeq .L590
.L589:
	tst.b 158(%a2)
	jne .L590
	tst.b 159(%a2)
	jne .L591
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
.L591:
	tst.b 212(%a2)
	jeq .L664
.L592:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L665
	clr.b 212(%a2)
	clr.b 159(%a2)
.L593:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L590:
	tst.l 16(%a3)
	jne .L595
	tst.b 158(%a2)
	jne .L595
	tst.b 159(%a2)
	jeq .L600
.L595:
	tst.b 148(%a2)
	jeq .L428
	tst.b 222(%a2)
	jne .L596
	move.w raptor_ticks,%d2
	ext.l %d2
	cmp.l 282(%a2),%d2
	jle .L597
	tst.b 212(%a2)
	jne .L597
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
.L597:
	tst.b 158(%a2)
	jne .L596
	tst.b 159(%a2)
	jne .L596
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
.L596:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L598
	moveq #89,%d0
	cmp.l 298(%a2),%d0
	jlt .L666
.L598:
	tst.b 222(%a2)
	jeq .L428
	move.l 32(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L600
	move.b #1,210(%a2)
	clr.b 148(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L600:
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
	jra .L428
.L666:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 158(%a2)
	clr.b 159(%a2)
.L631:
	move.b #1,222(%a2)
	clr.l 328(%a2)
	moveq #90,%d1
	move.l %d1,298(%a2)
	addq.l #4,%sp
	jra .L428
.L504:
	tst.b 151(%a2)
	jeq .L507
	clr.b 151(%a2)
.L507:
	tst.b 153(%a2)
	jne .L508
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
	jra .L428
.L506:
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
.L633:
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L428
	clr.b 153(%a2)
	jra .L428
.L508:
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
	jra .L633
.L651:
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
	jra .L521
.L650:
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
	jeq .L521
	jra .L520
.L653:
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
	jra .L529
.L652:
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
	jeq .L529
	jra .L528
.L654:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	pea 1.w
	jra .L629
.L628:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	jra .L631
.L663:
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
	jra .L585
.L662:
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
	jeq .L585
	jra .L584
.L665:
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
	jra .L593
.L664:
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
	jeq .L593
	jra .L592
.L576:
	tst.b 148(%a2)
	jne .L577
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
	jra .L577
.L661:
	tst.b 151(%a2)
	jne .L667
	tst.b 152(%a2)
	jne .L668
	tst.b 146(%a2)
	jeq .L603
	clr.b 185(%a2)
	clr.b 146(%a2)
	clr.l 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L603:
	tst.b 144(%a2)
	jne .L604
	move.b #1,144(%a2)
	clr.b 147(%a2)
.L604:
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
	jra .L428
.L668:
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
	jne .L428
	clr.b 152(%a2)
	jra .L428
.L667:
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
	jne .L428
	clr.b 151(%a2)
	jra .L428
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 192(%a2)
	jeq .L670
	moveq #-1,%d0
	cmp.l 316(%a2),%d0
	seq %d0
	neg.b %d0
	move.b %d0,_walkForward
	tst.b 198(%a2)
	jeq .L672
	clr.b 198(%a2)
	clr.l 16(%a3)
	move.l 348(%a2),%d0
	jle .L673
	tst.b 193(%a2)
	jeq .L705
.L673:
	move.b #1,194(%a2)
	clr.b 193(%a2)
	addq.l #1,%d0
	move.l %d0,348(%a2)
.L672:
	tst.b 199(%a2)
	jeq .L674
.L715:
	clr.b 199(%a2)
	clr.l 16(%a3)
	move.b #1,145(%a2)
	moveq #90,%d0
	move.l %d0,298(%a2)
	move.l (%a2),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L675
	move.b #2,%d1
	cmp.l %d0,%d1
	jeq .L706
.L674:
	tst.b 194(%a2)
	jne .L707
.L677:
	tst.b 193(%a2)
	jeq .L679
	tst.b 184(%a2)
	jeq .L708
	tst.l 306(%a2)
	jle .L709
.L681:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 184(%a2)
	jne .L670
	move.b #1,194(%a2)
	clr.b 193(%a2)
	addq.l #1,348(%a2)
.L670:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L679:
	tst.b 145(%a2)
	jne .L710
	tst.b 196(%a2)
	jeq .L683
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L711
.L683:
	tst.b 200(%a2)
	jeq .L689
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
.L684:
	tst.b 195(%a2)
	jne .L712
.L696:
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
	jeq .L670
	move.l 228(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 296(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w 300(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L707:
	move.l 132(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L713
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
.L714:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L709:
	tst.b 184(%a2)
	jne .L681
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L713:
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
	jra .L714
.L705:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,193(%a2)
	clr.l 306(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	addq.l #4,%sp
	tst.b 199(%a2)
	jeq .L674
	jra .L715
.L706:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandlerb
	addq.l #8,%sp
	tst.b 194(%a2)
	jeq .L677
	jra .L707
.L708:
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
	jgt .L681
	jra .L709
.L675:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandlerb
	addq.l #8,%sp
	tst.b 194(%a2)
	jeq .L677
	jra .L707
.L689:
	tst.b 186(%a2)
	jeq .L684
	tst.b 148(%a2)
	jne .L684
	tst.b 150(%a2)
	jne .L684
	tst.b 149(%a2)
	jne .L684
	tst.b 184(%a2)
	jne .L684
	tst.b 147(%a2)
	jne .L684
	tst.b 320(%a2)
	jeq .L690
	clr.b 320(%a2)
	clr.l 16(%a3)
.L690:
	tst.b 321(%a2)
	jeq .L716
	tst.l 16(%a3)
	jle .L717
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L701:
	move.l 28(%a2),-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L724:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L712:
	move.l 316(%a2),%d3
	move.l %d3,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	lea ___mulsf3,%a4
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l 272(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d3,%d1
	jeq .L718
	moveq #-1,%d1
	cmp.l %d3,%d1
	jeq .L719
.L698:
	add.l %d0,294(%a2)
.L699:
	move.l 278(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L696
	clr.b 195(%a2)
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	jra .L696
.L710:
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
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L711:
	clr.b 196(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 193(%a2)
	jne .L684
	tst.b 310(%a2)
	jne .L720
	move.l 302(%a2),%d0
	subq.l #1,%d0
	move.l %d0,302(%a2)
	jle .L721
.L686:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L687
	move.l %d0,10456(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L722:
	tst.b 195(%a2)
	jeq .L696
	jra .L712
.L719:
	tst.l %d0
	jle .L698
.L700:
	tst.b 352(%a2)
	jeq .L699
	add.l %d0,294(%a2)
	jra .L699
.L720:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	subq.l #1,%d0
	move.l %d0,302(%a2)
	jgt .L686
.L721:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L686
.L717:
	clr.b 186(%a2)
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L701
.L718:
	tst.l %d0
	jlt .L700
	add.l %d0,294(%a2)
	jra .L699
.L687:
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
	jra .L722
.L716:
	move.l 28(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L692
	move.b #1,321(%a2)
	move.l 316(%a2),%d0
	neg.l %d0
	move.l %d0,316(%a2)
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L723
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
.L692:
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
	jra .L724
.L723:
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
	jra .L692
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
