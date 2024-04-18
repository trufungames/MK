#NO_APP
	.text
	.even
	.globl	__Z14fighterStartUpv
__Z14fighterStartUpv:
	link.w %fp,#0
	move.l sprite,%a0
	move.w 9612(%a0),%a0
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
	move.w #106,12(%a1)
	move.l %d0,294(%a0)
	moveq #106,%d0
	move.l %d0,298(%a0)
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
	move.w #106,12(%a1)
	move.l %d0,294(%a0)
	moveq #106,%d0
	move.l %d0,298(%a0)
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
	move.l #0x400ccccd,324(%a2)
	clr.l 328(%a2)
	move.l #0xc1800000,332(%a2)
	move.l #0xc1a80000,336(%a2)
	move.l #0xc1200000,340(%a2)
	move.l #0x40a00000,344(%a2)
	clr.b 201(%a2)
	move.l 16(%fp),312(%a2)
	move.l 20(%fp),354(%a2)
	move.l 24(%fp),358(%a2)
	move.l 28(%fp),362(%a2)
	move.l 32(%fp),366(%a2)
	move.l 36(%fp),378(%a2)
	move.l 40(%fp),382(%a2)
	move.l 44(%fp),370(%a2)
	move.l 48(%fp),374(%a2)
	move.l 52(%fp),386(%a2)
	move.l 56(%fp),390(%a2)
	move.l 60(%fp),394(%a2)
	move.l 64(%fp),398(%a2)
	move.l 68(%fp),402(%a2)
	clr.l 232(%a2)
	move.l #0x40000000,240(%a2)
	move.l #0x40000000,244(%a2)
	move.l #0x40900000,248(%a2)
	move.l #0x40600000,252(%a2)
	move.l #0x40d00000,256(%a2)
	move.l #0x41000000,260(%a2)
	clr.l 268(%a2)
	move.l #0x40f00000,264(%a2)
	move.l #0x3f800000,272(%a2)
	moveq #1,%d0
	move.l %d0,286(%a2)
	clr.l 290(%a2)
	clr.l 278(%a2)
	move.b #1,192(%a2)
	move.b #1,144(%a2)
	clr.b 145(%a2)
	clr.b 146(%a2)
	clr.b 147(%a2)
	clr.b 186(%a2)
	clr.b 148(%a2)
	clr.b 149(%a2)
	clr.b 150(%a2)
	clr.b 151(%a2)
	clr.b 152(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	clr.b 156(%a2)
	clr.b 157(%a2)
	clr.b 158(%a2)
	clr.b 160(%a2)
	clr.b 159(%a2)
	clr.b 161(%a2)
	move.b #1,168(%a2)
	move.b #1,167(%a2)
	move.b #1,210(%a2)
	clr.b 276(%a2)
	clr.b 162(%a2)
	clr.b 163(%a2)
	clr.b 164(%a2)
	clr.b 165(%a2)
	clr.b 166(%a2)
	clr.b 187(%a2)
	clr.b 188(%a2)
	clr.b 189(%a2)
	clr.b 190(%a2)
	clr.b 191(%a2)
	clr.b 169(%a2)
	clr.b 170(%a2)
	clr.b 171(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 174(%a2)
	clr.b 175(%a2)
	clr.b 176(%a2)
	clr.b 179(%a2)
	clr.b 180(%a2)
	clr.b 181(%a2)
	clr.b 182(%a2)
	clr.b 183(%a2)
	clr.b 184(%a2)
	clr.b 185(%a2)
	clr.b 193(%a2)
	clr.b 194(%a2)
	clr.b 195(%a2)
	clr.b 196(%a2)
	clr.b 199(%a2)
	clr.b 200(%a2)
	clr.l 202(%a2)
	clr.l 206(%a2)
	clr.b 211(%a2)
	clr.b 212(%a2)
	clr.b 222(%a2)
	clr.b 223(%a2)
	clr.l 224(%a2)
	moveq #50,%d1
	move.l %d1,214(%a2)
	move.b #20,%d0
	move.l %d0,218(%a2)
	move.b %d2,322(%a2)
	move.b #33,%d1
	move.l %d1,302(%a2)
	clr.l 306(%a2)
	clr.b 310(%a2)
	clr.b 320(%a2)
	clr.b 321(%a2)
	move.b #1,352(%a2)
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
	moveq #57,%d2
	move.l %d2,228(%a2)
	moveq #55,%d1
	move.l %d1,140(%a2)
	move.b #2,%d2
	move.l %d2,236(%a2)
	move.l #210,294(%a2)
	moveq #-1,%d1
	move.l %d1,10584(%a0)
	move.l %d1,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d1,24(%a1)
	move.l %d1,316(%a2)
	move.w #222,%d0
	move.l #10944,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.b #90,%d2
	move.l %d2,298(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,201(%a2)
	addq.l #4,%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L27:
	moveq #56,%d2
	move.l %d2,228(%a2)
	move.b #52,%d1
	move.l %d1,140(%a2)
	move.b #1,%d2
	move.l %d2,236(%a2)
	move.b #50,%d1
	move.l %d1,294(%a2)
	move.l %d2,10008(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.l %d2,316(%a2)
	moveq #62,%d0
	move.w #10752,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.b #90,%d2
	move.l %d2,298(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,201(%a2)
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
	jeq .L216
.L71:
	move.b 176(%a2),%d0
	jne .L75
.L76:
	move.l 306(%a2),%d2
	tst.b 193(%a2)
	jne .L78
.L230:
	tst.b 310(%a2)
	jne .L217
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jle .L218
.L84:
	move.l sprite,%a0
	tst.b 322(%a2)
	jne .L199
	move.l %d0,15064(%a0)
	moveq #78,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	add.w %d2,%d0
	add.w %d0,%d0
	move.w %d0,14984(%a0)
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
	jeq .L219
.L90:
	moveq #0,%d1
	move.b 322(%a2),%d1
	move.l 312(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L220
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L94:
	move.b 170(%a2),%d1
	jne .L103
	tst.b 171(%a2)
	jeq .L221
.L103:
	move.l 294(%a2),%a4
	move.l 316(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L222
.L104:
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L223
.L105:
	tst.b %d1
	jne .L106
	tst.b 173(%a2)
	jne .L106
	tst.b 174(%a2)
	jne .L106
	tst.b 171(%a2)
	jne .L224
	tst.b 176(%a2)
	jne .L225
.L70:
	tst.b 169(%a2)
	jeq .L77
.L238:
	tst.b 184(%a2)
	jne .L226
.L77:
	tst.b 170(%a2)
	jeq .L110
	tst.b 184(%a2)
	jne .L227
.L110:
	tst.b 171(%a2)
	jeq .L228
	tst.b 184(%a2)
	jne .L229
.L112:
	tst.b 172(%a2)
	jeq .L119
	tst.b 184(%a2)
	jeq .L119
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L120
.L196:
	move.l 294(%a2),%d0
.L121:
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
.L228:
	tst.b 173(%a2)
	jeq .L112
	tst.b 184(%a2)
	jeq .L112
.L229:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L113
.L195:
	move.l 294(%a2),%d0
.L114:
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
.L243:
	clr.b 171(%a2)
	clr.b 173(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L216:
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
	jeq .L230
	jra .L78
.L75:
	move.l 306(%a2),%d2
	tst.b 193(%a2)
	jne .L78
	tst.b 310(%a2)
	jne .L231
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jle .L232
.L80:
	move.l sprite,%a0
	tst.b 322(%a2)
	jne .L199
	move.l %d0,15064(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,14984(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L78
.L119:
	tst.b 174(%a2)
	jeq .L126
	tst.b 184(%a2)
	jeq .L126
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 286(%a2),%d0
	move.l 316(%a2),%d2
	cmp.l %a0,%d0
	jle .L127
.L197:
	move.l 294(%a2),%d0
.L128:
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
.L246:
	clr.b 174(%a2)
	clr.b 175(%a2)
	clr.b 184(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L126:
	tst.b 177(%a2)
	jeq .L133
	tst.b 184(%a2)
	jne .L233
.L133:
	move.b 188(%a2),%d2
	jeq .L134
	tst.b 184(%a2)
	jeq .L134
	tst.b 189(%a2)
	jne .L135
	tst.b 190(%a2)
	jeq .L136
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
.L135:
	tst.b 182(%a2)
	jne .L234
.L137:
	moveq #1,%d1
	cmp.l 16(%a3),%d1
	jge .L69
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jlt .L69
	tst.b 189(%a2)
	jeq .L235
	move.l 298(%a2),%d0
	moveq #122,%d1
	cmp.l %d0,%d1
	jge .L144
	move.b #1,182(%a2)
	move.l %a0,282(%a2)
	moveq #90,%d2
	move.l %d2,298(%a2)
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
	jne .L145
	tst.b 310(%a2)
	jne .L236
	move.l 302(%a2),%d0
	subq.l #8,%d0
	move.l %d0,302(%a2)
	jle .L237
.L147:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L148
	move.l %d0,14872(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L145:
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
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L150
	tst.b 188(%a2)
	jne .L150
.L151:
	tst.l %d0
	jle .L154
	tst.b 352(%a2)
	jeq .L153
.L154:
	add.l %d0,294(%a2)
.L153:
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
.L252:
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
	jne .L238
	jra .L77
.L219:
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
	jeq .L239
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L226:
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
.L227:
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
.L221:
	tst.b 176(%a2)
	jne .L103
.L99:
	tst.b 173(%a2)
	jeq .L240
	clr.b %d1
.L244:
	move.l 294(%a2),%a4
	move.l 316(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L104
.L222:
	lea (40,%a4),%a4
	jra .L105
.L134:
	tst.b 178(%a2)
	jne .L155
	tst.b 179(%a2)
	jeq .L156
.L155:
	tst.b 184(%a2)
	jeq .L156
	tst.b 182(%a2)
	jne .L241
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jlt .L69
	move.l 316(%a2),%d3
	lea ___floatsisf,%a5
	move.l %d3,%d1
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
	moveq #1,%d1
	cmp.l %d3,%d1
	jeq .L158
	tst.b %d2
	jne .L158
.L159:
	tst.l %d0
	jle .L162
	tst.b 352(%a2)
	jeq .L161
.L162:
	add.l %d0,294(%a2)
.L161:
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
	move.l %d2,-(%sp)
	move.l 336(%a2),-(%sp)
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
	tst.b 181(%a2)
	jne .L185
	tst.b %d3
	jne .L186
	tst.b 179(%a2)
	jeq .L205
.L186:
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
	jeq .L184
	move.b #1,181(%a2)
	clr.b 180(%a2)
.L184:
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
.L253:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L223:
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
	jeq .L115
	tst.b 188(%a2)
	jeq .L116
.L115:
	tst.l %d0
	jlt .L242
.L117:
	moveq #1,%d3
	cmp.l %d2,%d3
	jne .L116
	tst.b 188(%a2)
	jeq .L118
.L116:
	tst.l %d0
	jle .L118
	tst.b 352(%a2)
	jeq .L195
.L118:
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
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
	jra .L243
.L156:
	tst.b 176(%a2)
	jeq .L172
	tst.b 184(%a2)
	jeq .L172
	tst.b 182(%a2)
	jeq .L173
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
.L245:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L172:
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
.L220:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L199:
	move.l %d0,14872(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L78
.L217:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jgt .L84
	jra .L218
.L231:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,302(%a2)
	jgt .L80
.L232:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L80
.L218:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L84
.L233:
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
.L120:
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
	jeq .L122
	tst.b 188(%a2)
	jne .L122
.L123:
	tst.l %d0
	jle .L125
	tst.b 352(%a2)
	jeq .L196
.L125:
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L121
.L240:
	tst.b 174(%a2)
	jeq .L70
	clr.b %d1
	jra .L244
.L241:
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
	jra .L245
.L234:
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
	jra .L245
.L127:
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
	jeq .L129
	tst.b 188(%a2)
	jne .L129
.L130:
	tst.l %d0
	jle .L132
	tst.b 352(%a2)
	jeq .L197
.L132:
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
	jra .L246
.L225:
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
	jne .L238
	jra .L77
.L242:
	tst.b 352(%a2)
	jne .L117
	move.l 294(%a2),%d0
	jra .L114
.L122:
	tst.l %d0
	jlt .L247
.L124:
	moveq #1,%d3
	cmp.l %d2,%d3
	jne .L123
	tst.b 188(%a2)
	jne .L123
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L121
.L129:
	tst.l %d0
	jlt .L248
.L131:
	moveq #1,%d3
	cmp.l %d2,%d3
	jne .L130
	tst.b 188(%a2)
	jne .L130
	add.l 294(%a2),%d0
	move.l %d0,294(%a2)
	jra .L249
.L247:
	tst.b 352(%a2)
	jne .L124
	move.l 294(%a2),%d0
	jra .L121
.L158:
	tst.l %d0
	jlt .L250
.L160:
	moveq #1,%d1
	cmp.l %d3,%d1
	jne .L159
	tst.b %d2
	jne .L159
	add.l %d0,294(%a2)
	jra .L161
.L248:
	tst.b 352(%a2)
	jne .L131
	move.l 294(%a2),%d0
	jra .L128
.L250:
	tst.b 352(%a2)
	jne .L160
	jra .L161
.L150:
	tst.l %d0
	jlt .L251
.L152:
	moveq #1,%d3
	cmp.l %d2,%d3
	jne .L151
	tst.b 188(%a2)
	jne .L151
	add.l %d0,294(%a2)
	jra .L153
.L251:
	tst.b 352(%a2)
	jne .L152
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
	jra .L252
.L236:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 302(%a2),%d0
	subq.l #8,%d0
	move.l %d0,302(%a2)
	jgt .L147
.L237:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L147
.L173:
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jlt .L69
	move.l 316(%a2),%d3
	lea ___floatsisf,%a5
	move.l %d3,%d1
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
	moveq #1,%d1
	cmp.l %d3,%d1
	jeq .L174
	tst.b %d2
	jne .L174
.L175:
	tst.l %d0
	jle .L178
	tst.b 352(%a2)
	jeq .L177
.L178:
	add.l %d0,294(%a2)
.L177:
	move.b 180(%a2),%d3
	move.l 328(%a2),%d2
	tst.b %d3
	jne .L180
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
.L180:
	move.l %d2,-(%sp)
	move.l 336(%a2),-(%sp)
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
	tst.b 181(%a2)
	jne .L185
	tst.b %d3
	jne .L186
.L205:
	move.l 312(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L186
.L202:
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
	jra .L253
.L224:
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
	jne .L238
	jra .L77
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
.L136:
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
	jeq .L137
	jra .L234
.L174:
	tst.l %d0
	jlt .L254
.L176:
	moveq #1,%d1
	cmp.l %d3,%d1
	jne .L175
	tst.b %d2
	jne .L175
	add.l %d0,294(%a2)
	jra .L177
.L254:
	tst.b 352(%a2)
	jne .L176
	jra .L177
.L97:
	move.l 312(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L94
.L185:
	move.l 298(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L187
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
	jra .L253
.L144:
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
	jra .L145
.L187:
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
	jra .L253
.L235:
	move.b #1,189(%a2)
	move.l 316(%a2),%d1
	move.l %d1,%d0
	lsl.l #4,%d0
	moveq #1,%d2
	cmp.l %d1,%d2
	jeq .L139
	tst.b 188(%a2)
	jne .L139
.L140:
	tst.l %d0
	jle .L143
	tst.b 352(%a2)
	jeq .L142
.L143:
	add.l %d0,294(%a2)
.L142:
	moveq #48,%d0
	move.l %d0,298(%a2)
.L256:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L139:
	tst.l %d0
	jlt .L255
.L141:
	moveq #1,%d3
	cmp.l %d1,%d3
	jne .L140
	tst.b 188(%a2)
	jne .L140
	add.l %d0,294(%a2)
	jra .L142
.L255:
	tst.b 352(%a2)
	jne .L141
	moveq #48,%d0
	move.l %d0,298(%a2)
	jra .L256
.L148:
	move.l %d0,15064(%a0)
	moveq #78,%d3
	sub.w %d0,%d3
	move.w %d3,%d0
	add.w %d3,%d0
	add.w %d0,%d0
	move.w %d0,14984(%a0)
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
	clr.b 178(%a0)
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
	jne .L262
	tst.b 152(%a0)
	jne .L262
.L263:
	tst.b 154(%a1)
	jne .L289
.L265:
	tst.b 155(%a1)
	jeq .L267
	tst.b 151(%a0)
	jne .L267
	move.b #1,170(%a0)
	moveq #2,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
.L266:
	tst.b %d0
	jne .L261
.L286:
	tst.b 152(%a0)
	jeq .L279
.L290:
	tst.b 151(%a0)
	jeq .L279
	move.b #1,153(%a0)
	move.b #1,196(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a0)
.L282:
	tst.b 187(%a1)
	jeq .L261
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
.L261:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L262:
	tst.b 193(%a0)
	jne .L263
	tst.b %d0
	jne .L261
	tst.b 152(%a0)
	jeq .L286
	move.b #1,153(%a0)
	move.b #1,196(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a0)
	tst.b 152(%a0)
	jne .L290
.L279:
	tst.b 162(%a1)
	jeq .L281
	move.b #1,177(%a0)
	moveq #4,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	jra .L282
.L289:
	tst.b 151(%a0)
	jne .L265
	move.b #1,169(%a0)
	moveq #2,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L286
	jra .L261
.L267:
	tst.b 156(%a1)
	jeq .L268
	tst.b 151(%a0)
	jne .L268
	move.b #1,169(%a0)
	moveq #5,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L286
	jra .L261
.L268:
	tst.b 157(%a1)
	jeq .L269
	tst.b 151(%a0)
	jne .L269
	move.b #1,171(%a0)
	moveq #5,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L286
	jra .L261
.L269:
	tst.b 163(%a1)
	jeq .L270
	tst.b 151(%a0)
	jeq .L291
.L270:
	tst.b 164(%a1)
	jeq .L271
	tst.b 151(%a0)
	jeq .L292
.L271:
	tst.b 158(%a1)
	jeq .L273
	move.b #1,173(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #5,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	tst.b %d0
	jeq .L286
	jra .L261
.L281:
	tst.b 166(%a1)
	jeq .L282
	move.b #1,172(%a0)
	clr.b 210(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #2,%d0
	move.l %d0,306(%a0)
	clr.b 310(%a0)
	jra .L282
.L273:
	tst.b 159(%a1)
	jne .L293
	tst.b 161(%a1)
	jeq .L275
	move.b #1,176(%a0)
	clr.b 210(%a1)
	move.b #1,211(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #8,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L286
	jra .L261
.L291:
	move.b #1,171(%a0)
	moveq #6,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	tst.b %d0
	jeq .L286
	jra .L261
.L292:
	move.b #1,174(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L294
	moveq #4,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
.L295:
	tst.b %d0
	jeq .L286
	jra .L261
.L293:
	move.b #1,173(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #4,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
.L296:
	tst.b %d0
	jeq .L286
	jra .L261
.L294:
	move.b #1,175(%a0)
	moveq #4,%d1
	move.l %d1,306(%a0)
	move.b #1,310(%a0)
	jra .L295
.L275:
	tst.b 160(%a1)
	jeq .L276
	move.b #1,178(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #6,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	tst.b %d0
	jeq .L286
	jra .L261
.L276:
	tst.b 165(%a1)
	jeq .L266
	move.b #1,179(%a0)
	clr.b 210(%a1)
	move.b #1,212(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,282(%a1)
	moveq #4,%d1
	move.l %d1,306(%a0)
	clr.b 310(%a0)
	jra .L296
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14396,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a4
	tst.b 185(%a3)
	jeq .L299
	move.l 4(%a4),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L313
.L299:
	tst.b 185(%a4)
	jeq .L300
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L314
.L300:
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
	jlt .L298
	move.l colliders,%a2
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a2,%d2.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L303
.L318:
	cmp.w #0,%a0
	jlt .L298
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
	moveq #56,%d3
	cmp.l %d0,%d3
	jeq .L315
	moveq #51,%d3
	cmp.l %d0,%d3
	jeq .L316
	moveq #57,%d3
	cmp.l %d0,%d3
	jne .L308
	moveq #51,%d4
	cmp.l %d1,%d4
	jeq .L317
.L311:
	addq.l #8,%d2
.L319:
	lea (%a2,%d2.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L318
.L303:
	cmp.w #0,%a0
	jge .L311
.L298:
	movem.l -28(%fp),#15388
	unlk %fp
	rts
.L316:
	moveq #54,%d4
	cmp.l %d1,%d4
	jne .L311
	tst.b 146(%a3)
	jeq .L311
	move.l 294(%a3),%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L311
	cmp.l #328,%d0
	jgt .L311
	move.l 294(%a4),%d0
	cmp.l %d0,%d1
	jge .L311
	cmp.l #328,%d0
	jgt .L311
	move.b #1,185(%a3)
	move.b #1,195(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a4)
	addq.l #8,%d2
	jra .L319
.L315:
	moveq #54,%d4
	cmp.l %d1,%d4
	jne .L311
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	move.l colliders,%a2
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L319
.L308:
	moveq #54,%d3
	cmp.l %d0,%d3
	jne .L311
	moveq #51,%d4
	cmp.l %d1,%d4
	jne .L311
	tst.b 146(%a4)
	jeq .L311
	move.b #1,185(%a4)
	move.b #1,195(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,278(%a3)
	addq.l #8,%d2
	jra .L319
.L317:
	move.l %a3,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a5)
	move.l colliders,%a2
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L319
.L313:
	clr.b 185(%a3)
	jra .L299
.L314:
	clr.b 185(%a4)
	jra .L300
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 316(%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L335
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L336
.L324:
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L337
.L325:
	moveq #-1,%d1
	cmp.l %d0,%d1
	jne .L321
	move.l 294(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a1),%d0
	jge .L321
.L332:
	tst.b 186(%a0)
	jne .L321
	clr.b 321(%a0)
	move.b #1,186(%a0)
	move.b #1,320(%a0)
.L321:
	unlk %fp
	rts
.L336:
	move.l 294(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a0),%d0
	jge .L324
	tst.b 186(%a1)
	jne .L324
.L338:
	clr.b 321(%a1)
	move.b #1,186(%a1)
	move.b #1,320(%a1)
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L325
.L337:
	move.l 294(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a0),%d0
	jlt .L332
	unlk %fp
	rts
.L335:
	move.l 294(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 294(%a1),%d0
	jge .L324
	tst.b 186(%a1)
	jne .L324
	jra .L338
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 316(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L347
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L348
.L342:
	clr.b 191(%a0)
	clr.b 191(%a1)
.L340:
	unlk %fp
	rts
.L348:
	moveq #-72,%d0
	add.l 294(%a0),%d0
	cmp.l 294(%a1),%d0
	jgt .L342
.L344:
	move.b #1,191(%a0)
	move.b #1,191(%a1)
	unlk %fp
	rts
.L347:
	moveq #72,%d0
	add.l 294(%a0),%d0
	cmp.l 294(%a1),%d0
	jge .L344
	clr.b 191(%a0)
	clr.b 191(%a1)
	jra .L340
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 302(%a1),14872(%a0)
	move.l 12(%fp),%a1
	move.l 302(%a1),%d0
	move.l %d0,15064(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,14984(%a0)
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
	jne .L352
	tst.b 310(%a2)
	jne .L359
	move.l 302(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,302(%a2)
	jle .L360
.L355:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L356
.L361:
	move.l %d0,14872(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L356:
	move.l %d0,15064(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,14984(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L352:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L359:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,302(%a2)
	jgt .L355
.L360:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L356
	jra .L361
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 316(%a0),%d0
	jeq .L368
	tst.b 352(%a0)
	jeq .L363
.L365:
	addq.l #2,294(%a0)
.L363:
	unlk %fp
	rts
.L368:
	tst.b 188(%a0)
	jeq .L365
	tst.b 352(%a0)
	jne .L365
	jra .L363
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 316(%a0),%d0
	jeq .L371
	tst.b 188(%a0)
	jeq .L372
.L371:
	tst.b 352(%a0)
	jeq .L370
.L372:
	subq.l #2,294(%a0)
.L370:
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
	tst.b 144(%a0)
	jeq .L377
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
.L377:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L385
	moveq #54,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L385:
	moveq #15,%d0
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
	jge .L401
.L389:
	cmp.l #280,%d0
	jgt .L393
.L398:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L401:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L397
	move.l 294(%a2),%d0
	moveq #11,%d1
	cmp.l %d0,%d1
	jlt .L389
	cmp.l #280,294(%a3)
	jgt .L397
	jsr (%a4)
	tst.b %d0
	jne .L397
	move.l 294(%a2),%d0
	cmp.l #280,%d0
	jle .L398
.L393:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L402
.L397:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L402:
	cmp.l #328,294(%a2)
	jle .L398
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
	move.l 12(%fp),%d0
	move.l 316(%a0),%d1
	moveq #1,%d2
	cmp.l %d1,%d2
	jeq .L405
	tst.b 188(%a0)
	jne .L405
.L406:
	tst.l %d0
	jle .L409
	tst.b 352(%a0)
	jeq .L404
.L409:
	add.l %d0,294(%a0)
.L404:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L405:
	tst.l %d0
	jlt .L412
	moveq #1,%d2
	cmp.l %d1,%d2
	jne .L406
.L413:
	tst.b 188(%a0)
	jne .L406
	add.l %d0,294(%a0)
	jra .L404
.L412:
	tst.b 352(%a0)
	jeq .L404
	moveq #1,%d2
	cmp.l %d1,%d2
	jne .L406
	jra .L413
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 184(%a2)
	jne .L416
	tst.b 146(%a2)
	jeq .L643
.L417:
	clr.b 144(%a2)
.L419:
	move.l 236(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,232(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L644
.L420:
	tst.b 151(%a2)
	jeq .L421
	tst.b 168(%a2)
	jeq .L421
	tst.b 210(%a2)
	jeq .L421
	tst.b 161(%a2)
	jne .L423
	clr.b 168(%a2)
	move.b #1,161(%a2)
	move.b #1,147(%a2)
	clr.b 151(%a2)
	clr.l 16(%a3)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L423:
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 211(%a2)
	jeq .L645
.L425:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 214(%a2),%d0
	cmp.l %a0,%d0
	jgt .L646
	clr.b 211(%a2)
.L428:
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L647
.L430:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L610
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L610
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L648
.L610:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L415
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L415
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L415
	and.l JAGPAD_RIGHT,%d0
	jne .L415
	move.b #1,167(%a2)
.L415:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L416:
	clr.b 144(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L643:
	tst.b 151(%a2)
	jne .L417
	tst.b 148(%a2)
	jne .L417
	tst.b 150(%a2)
	jne .L417
	tst.b 149(%a2)
	jne .L417
	tst.b 147(%a2)
	jeq .L419
	clr.b 144(%a2)
	jra .L419
.L644:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L420
.L421:
	tst.b 161(%a2)
	jne .L423
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L431
	tst.l %d1
	jeq .L432
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L433
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L431
.L433:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L432
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L431
.L432:
	tst.b 155(%a2)
	jeq .L649
.L435:
	move.l 64(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L442
	clr.b 155(%a2)
.L442:
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
	jra .L430
.L645:
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
	jne .L425
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L430
	jra .L647
.L649:
	tst.l %d3
	jeq .L650
.L443:
	tst.b 168(%a2)
	jeq .L444
	tst.b 210(%a2)
	jeq .L444
	tst.b 148(%a2)
	jne .L444
	tst.b 185(%a2)
	jeq .L444
	tst.b 164(%a2)
	jne .L447
	clr.b 168(%a2)
	move.b #1,164(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L449:
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
	jra .L430
.L431:
	tst.b 168(%a2)
	jeq .L432
	tst.b 210(%a2)
	jeq .L432
	tst.b 148(%a2)
	jne .L432
	tst.b 185(%a2)
	jne .L432
	tst.b 155(%a2)
	jne .L435
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
	jeq .L439
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L440
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L651
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L655:
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
	jra .L430
.L648:
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L610
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L610
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L610
	move.b #1,168(%a2)
	jra .L610
.L650:
	tst.l %d1
	jeq .L444
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L445
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L443
.L445:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L444
	moveq #-1,%d3
	cmp.l 316(%a2),%d3
	jeq .L443
.L444:
	tst.b 164(%a2)
	jne .L447
	tst.l %d1
	jeq .L450
	tst.b 168(%a2)
	jeq .L450
	tst.b 210(%a2)
	jeq .L450
	tst.b 148(%a2)
	jne .L450
	tst.b 191(%a2)
	jeq .L450
	tst.b 187(%a2)
	jne .L452
	clr.b 168(%a2)
	move.b #1,187(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d4
	cmp.l %d0,%d4
	jhi .L454
	moveq #6,%d1
	cmp.l %d0,%d1
	jcc .L455
	moveq #7,%d2
	cmp.l %d0,%d2
	jeq .L652
.L454:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L457:
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
	jra .L430
.L647:
	clr.b 161(%a2)
	move.b #1,210(%a2)
	jra .L430
.L447:
	move.l 100(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L449
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
	jra .L430
.L652:
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
	jra .L430
.L450:
	tst.b 187(%a2)
	jne .L452
	tst.l %d1
	jeq .L458
	tst.b 168(%a2)
	jeq .L458
	tst.b 210(%a2)
	jeq .L458
	tst.b 148(%a2)
	jne .L458
	tst.b 191(%a2)
	jne .L458
	tst.b 154(%a2)
	jne .L460
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
	jeq .L464
	moveq #7,%d4
	cmp.l %a0,%d4
	jeq .L465
	moveq #4,%d2
	cmp.l %a0,%d2
	jeq .L653
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L467:
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
	jra .L430
.L452:
	move.l 112(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L457
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
	jra .L430
.L646:
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
	jne .L430
	jra .L428
.L458:
	tst.b 154(%a2)
	jne .L460
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L468
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L468
	moveq #1,%d3
	cmp.l 316(%a2),%d3
	jeq .L469
.L468:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L470
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L470
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L469
.L470:
	tst.b 162(%a2)
	jeq .L654
.L472:
	move.l 92(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L474
	clr.b 162(%a2)
.L474:
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
	jra .L430
.L460:
	move.l 60(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L467
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
	jra .L430
.L654:
	tst.l %d1
	jeq .L475
	moveq #1,%d3
	cmp.l 316(%a2),%d3
	jeq .L476
.L475:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L477
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L476
.L477:
	tst.b 163(%a2)
	jne .L480
	move.l JAGPAD_9,%d3
	move.l %d0,%d4
	and.l %d3,%d4
	jne .L483
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L484
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L485
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L483
.L485:
	tst.l %d1
	jeq .L484
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L483
.L484:
	tst.b 157(%a2)
	jne .L487
	move.l JAGPAD_A,%d4
	or.l %d4,%d3
	and.l %d0,%d3
	jeq .L490
	tst.b 168(%a2)
	jeq .L490
	tst.b 210(%a2)
	jeq .L490
	tst.b 148(%a2)
	jne .L490
	tst.b 151(%a2)
	jne .L490
	tst.b 191(%a2)
	jeq .L490
	tst.b 165(%a2)
	jne .L492
	clr.b 168(%a2)
	move.b #1,165(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
.L494:
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
	jra .L430
.L480:
	move.l 96(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L482
	clr.b 163(%a2)
.L482:
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
	jra .L430
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
	tst.b 162(%a2)
	jne .L472
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
	jra .L430
.L476:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jne .L478
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jeq .L477
.L478:
	tst.b 168(%a2)
	jeq .L477
	tst.b 210(%a2)
	jeq .L477
	tst.b 148(%a2)
	jne .L477
	tst.b 163(%a2)
	jne .L480
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
	jra .L430
.L487:
	move.l 72(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L489
	clr.b 157(%a2)
.L489:
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
	jra .L430
.L483:
	tst.b 168(%a2)
	jeq .L484
	tst.b 210(%a2)
	jeq .L484
	tst.b 148(%a2)
	jne .L484
	tst.b 151(%a2)
	jne .L484
	tst.b 185(%a2)
	jne .L484
	tst.b 157(%a2)
	jne .L487
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
	jra .L430
.L651:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L655
.L440:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L655
.L439:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L655
.L455:
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
	jra .L430
.L490:
	tst.b 165(%a2)
	jne .L492
	and.l %d0,%d4
	jeq .L495
	tst.b 168(%a2)
	jeq .L495
	tst.b 210(%a2)
	jeq .L495
	tst.b 148(%a2)
	jne .L495
	tst.b 151(%a2)
	jne .L495
	tst.b 185(%a2)
	jne .L495
	tst.b 156(%a2)
	jne .L497
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
.L499:
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
	jra .L430
.L492:
	move.l 104(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L494
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
	jra .L430
.L495:
	tst.b 156(%a2)
	jne .L497
	tst.l %d3
	jeq .L500
	tst.b 168(%a2)
	jeq .L500
	tst.b 210(%a2)
	jeq .L500
	tst.b 148(%a2)
	jne .L500
	tst.b 151(%a2)
	jeq .L500
	tst.b 166(%a2)
	jne .L502
	clr.b 168(%a2)
	move.b #1,166(%a2)
	move.b #1,147(%a2)
	clr.l 16(%a3)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L504:
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
	jra .L430
.L653:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L467
.L465:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L467
.L464:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L467
.L500:
	tst.b 166(%a2)
	jeq .L656
.L502:
	move.l 108(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L504
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
	jra .L430
.L656:
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jne .L505
	move.l %d0,%d3
	and.l JAGPAD_8,%d3
	jeq .L506
.L505:
	tst.b 148(%a2)
	jne .L506
	tst.b 210(%a2)
	jeq .L506
	tst.b 152(%a2)
	jne .L507
	move.b #1,152(%a2)
	clr.l 16(%a3)
.L507:
	and.l JAGPAD_DOWN,%d0
	jeq .L508
	tst.b 151(%a2)
	jne .L509
	move.b #1,151(%a2)
	clr.b 146(%a2)
	clr.l 16(%a3)
.L509:
	tst.b 153(%a2)
	jne .L510
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
	jra .L430
.L506:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L513
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L514
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L515
.L514:
	tst.l %d1
	jeq .L513
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L515
.L513:
	tst.b 149(%a2)
	jne .L517
	tst.l %d3
	jeq .L541
	tst.l %d1
	jeq .L542
	moveq #1,%d4
	cmp.l 316(%a2),%d4
	jeq .L543
.L542:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L541
	moveq #-1,%d4
	cmp.l 316(%a2),%d4
	jeq .L543
.L541:
	tst.b 150(%a2)
	jeq .L657
.L545:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L547
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L548
.L547:
	tst.b 150(%a2)
	jeq .L548
	tst.b 222(%a2)
	jne .L548
	tst.b 276(%a2)
	jeq .L549
.L548:
	tst.b 158(%a2)
	jeq .L550
	tst.b 222(%a2)
	jne .L550
	tst.b 150(%a2)
	jeq .L550
.L549:
	tst.b 160(%a2)
	jne .L550
	tst.b 158(%a2)
	jne .L551
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
.L551:
	tst.b 212(%a2)
	jeq .L658
.L552:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L659
	clr.b 212(%a2)
	clr.b 160(%a2)
.L553:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L550:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L555
	and.l JAGPAD_9,%d0
	jeq .L556
.L555:
	tst.b 150(%a2)
	jeq .L556
	tst.b 222(%a2)
	jne .L556
	tst.b 276(%a2)
	jeq .L557
.L556:
	tst.b 160(%a2)
	jeq .L558
	tst.b 222(%a2)
	jne .L558
	tst.b 150(%a2)
	jeq .L558
.L557:
	tst.b 158(%a2)
	jne .L558
	tst.b 160(%a2)
	jne .L559
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
.L559:
	tst.b 212(%a2)
	jeq .L660
.L560:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L661
	clr.b 212(%a2)
	clr.b 160(%a2)
.L561:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L558:
	tst.l 16(%a3)
	jne .L563
	tst.b 158(%a2)
	jne .L563
	tst.b 160(%a2)
	jeq .L662
.L563:
	tst.b 150(%a2)
	jeq .L430
	tst.b 222(%a2)
	jne .L564
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jlt .L564
	tst.b 223(%a2)
	jne .L565
	moveq #10,%d0
	add.l 224(%a2),%d0
	cmp.l %a0,%d0
	jge .L565
	tst.b 158(%a2)
	jne .L565
	tst.b 160(%a2)
	jne .L565
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,223(%a2)
	addq.l #8,%sp
.L565:
	tst.b 212(%a2)
	jne .L566
	lea ___floatsisf,%a4
	move.l #___fixsfsi,%d2
	tst.b 353(%a2)
	jne .L567
	move.l 316(%a2),-(%sp)
	jsr (%a4)
	move.l 264(%a2),%d1
	add.l #-2147483648,%d1
	move.l %d1,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	move.l #___fixsfsi,%d2
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
.L567:
	move.l 328(%a2),%d3
	move.l 298(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.l %d0,298(%a2)
	move.l %d3,(%sp)
	move.l 324(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,328(%a2)
.L566:
	tst.b 158(%a2)
	jne .L564
	tst.b 160(%a2)
	jne .L564
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
.L564:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L568
	moveq #89,%d0
	cmp.l 298(%a2),%d0
	jlt .L635
.L568:
	tst.b 222(%a2)
	jeq .L430
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
	jeq .L430
	move.b #1,210(%a2)
	clr.b 150(%a2)
.L637:
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	clr.b 223(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L430
.L497:
	move.l 68(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L499
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
	jra .L430
.L515:
	tst.b 167(%a2)
	jeq .L513
	tst.b 210(%a2)
	jeq .L513
	tst.b 149(%a2)
	jne .L517
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
.L517:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L519
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L520
.L519:
	tst.b 149(%a2)
	jeq .L520
	tst.b 222(%a2)
	jne .L520
	tst.b 276(%a2)
	jeq .L521
.L520:
	tst.b 158(%a2)
	jeq .L522
	tst.b 222(%a2)
	jne .L522
	tst.b 149(%a2)
	jeq .L522
.L521:
	tst.b 160(%a2)
	jne .L522
	tst.b 158(%a2)
	jne .L523
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
.L523:
	tst.b 212(%a2)
	jeq .L663
.L524:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L664
	clr.b 212(%a2)
	clr.b 158(%a2)
.L525:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L522:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L527
	and.l JAGPAD_9,%d0
	jeq .L528
.L527:
	tst.b 149(%a2)
	jeq .L528
	tst.b 222(%a2)
	jne .L528
	tst.b 276(%a2)
	jeq .L529
.L528:
	tst.b 160(%a2)
	jeq .L530
	tst.b 222(%a2)
	jne .L530
	tst.b 149(%a2)
	jeq .L530
.L529:
	tst.b 158(%a2)
	jne .L530
	tst.b 160(%a2)
	jne .L531
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
.L531:
	tst.b 212(%a2)
	jeq .L665
.L532:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L666
	clr.b 212(%a2)
	clr.b 160(%a2)
.L533:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L530:
	tst.l 16(%a3)
	jne .L535
	tst.b 158(%a2)
	jne .L535
	tst.b 160(%a2)
	jeq .L667
.L535:
	tst.b 149(%a2)
	jeq .L430
	tst.b 222(%a2)
	jne .L536
	move.w raptor_ticks,%a0
	cmp.l 282(%a2),%a0
	jlt .L536
	tst.b 223(%a2)
	jne .L537
	moveq #10,%d0
	add.l 224(%a2),%d0
	cmp.l %a0,%d0
	jge .L537
	tst.b 158(%a2)
	jne .L537
	tst.b 160(%a2)
	jne .L537
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,223(%a2)
	addq.l #8,%sp
.L537:
	tst.b 212(%a2)
	jne .L538
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
.L538:
	tst.b 158(%a2)
	jne .L536
	tst.b 160(%a2)
	jne .L536
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
.L536:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L539
	moveq #89,%d0
	cmp.l 298(%a2),%d0
	jlt .L635
.L539:
	tst.b 222(%a2)
	jeq .L430
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
	jeq .L430
	move.b #1,210(%a2)
	clr.b 149(%a2)
	jra .L637
.L667:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	pea 1.w
.L636:
	move.l 36(%a2),-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L430
.L666:
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
	jra .L533
.L665:
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
	jeq .L533
	jra .L532
.L664:
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
	jra .L525
.L663:
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
	jeq .L525
	jra .L524
.L508:
	tst.b 151(%a2)
	jeq .L511
	clr.b 151(%a2)
.L511:
	tst.b 153(%a2)
	jne .L512
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
	jra .L430
.L510:
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
.L639:
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L430
	clr.b 153(%a2)
	jra .L430
.L512:
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
	jra .L639
.L661:
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
	jra .L561
.L660:
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
	jeq .L561
	jra .L560
.L662:
	move.l 316(%a2),-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L636
.L635:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 158(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	move.b #1,222(%a2)
	clr.l 328(%a2)
	moveq #90,%d1
	move.l %d1,298(%a2)
	addq.l #4,%sp
	jra .L430
.L659:
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
	jra .L553
.L658:
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
	jeq .L553
	jra .L552
.L543:
	tst.b 167(%a2)
	jeq .L541
	tst.b 210(%a2)
	jeq .L541
	tst.b 150(%a2)
	jne .L545
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
	jra .L545
.L657:
	tst.l %d1
	jeq .L570
	tst.b 210(%a2)
	jeq .L570
	tst.b 148(%a2)
	jne .L570
	tst.b 146(%a2)
	jne .L571
	clr.l 16(%a3)
.L571:
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
	jle .L430
	tst.b 185(%a2)
	jne .L572
	move.l 244(%a2),%d0
	moveq #-1,%d2
	cmp.l 316(%a2),%d2
	jne .L573
	move.l 240(%a2),%d0
.L573:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L634:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L430
.L572:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L430
	move.l 272(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L634
.L570:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L574
	tst.b 210(%a2)
	jeq .L574
	tst.b 148(%a2)
	jne .L574
	tst.b 146(%a2)
	jne .L575
	clr.l 16(%a3)
.L575:
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
	jgt .L430
	tst.b 185(%a2)
	jne .L576
	move.l 240(%a2),%d0
	moveq #-1,%d3
	cmp.l 316(%a2),%d3
	jne .L577
	move.l 244(%a2),%d0
.L577:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L634
.L576:
	move.l 272(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L634
.L574:
	and.l JAGPAD_DOWN,%d0
	jeq .L578
	tst.b 210(%a2)
	jeq .L578
	tst.b 148(%a2)
	jne .L578
	tst.b 151(%a2)
	jne .L579
	move.b #1,151(%a2)
	clr.b 146(%a2)
	clr.b 147(%a2)
	clr.l 16(%a3)
.L579:
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
	jra .L430
.L578:
	tst.l %d3
	jeq .L580
	tst.b 167(%a2)
	jeq .L580
	tst.b 210(%a2)
	jne .L581
.L580:
	tst.b 148(%a2)
	jeq .L668
.L582:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L584
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L585
.L584:
	tst.b 148(%a2)
	jeq .L585
	tst.b 222(%a2)
	jne .L585
	tst.b 276(%a2)
	jeq .L586
.L585:
	tst.b 158(%a2)
	jeq .L587
	tst.b 222(%a2)
	jne .L587
	tst.b 148(%a2)
	jeq .L587
.L586:
	tst.b 159(%a2)
	jne .L587
	tst.b 158(%a2)
	jne .L588
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
.L588:
	tst.b 212(%a2)
	jeq .L669
.L589:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L670
	clr.b 212(%a2)
	clr.b 158(%a2)
.L590:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 232(%a2),%d0
.L587:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L592
	and.l JAGPAD_9,%d0
	jeq .L593
.L592:
	tst.b 148(%a2)
	jeq .L593
	tst.b 222(%a2)
	jne .L593
	tst.b 276(%a2)
	jeq .L594
.L593:
	tst.b 159(%a2)
	jeq .L595
	tst.b 222(%a2)
	jne .L595
	tst.b 148(%a2)
	jeq .L595
.L594:
	tst.b 158(%a2)
	jne .L595
	tst.b 159(%a2)
	jne .L596
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
.L596:
	tst.b 212(%a2)
	jeq .L671
.L597:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d0
	add.l 218(%a2),%d0
	cmp.l %a0,%d0
	jgt .L672
	clr.b 212(%a2)
	clr.b 159(%a2)
.L598:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L595:
	tst.l 16(%a3)
	jne .L600
	tst.b 158(%a2)
	jne .L600
	tst.b 159(%a2)
	jeq .L605
.L600:
	tst.b 148(%a2)
	jeq .L430
	tst.b 222(%a2)
	jne .L601
	move.w raptor_ticks,%a4
	cmp.l 282(%a2),%a4
	jlt .L602
	tst.b 212(%a2)
	jne .L602
	move.l 328(%a2),%d3
	move.l 298(%a2),-(%sp)
	jsr ___floatsisf
	move.l #___addsf3,%d2
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,298(%a2)
	move.l %d3,(%sp)
	move.l 324(%a2),-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #8,%sp
	move.l %d0,328(%a2)
	move.l %a4,282(%a2)
.L602:
	tst.b 158(%a2)
	jne .L601
	tst.b 159(%a2)
	jne .L601
	moveq #1,%d0
	move.l %d0,16(%a3)
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
.L601:
	clr.l -(%sp)
	move.l 328(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L603
	moveq #89,%d1
	cmp.l 298(%a2),%d1
	jlt .L673
.L603:
	tst.b 222(%a2)
	jeq .L430
	move.l 32(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L605
	move.b #1,210(%a2)
	clr.b 148(%a2)
	clr.b 158(%a2)
	clr.b 159(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L605:
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
	jra .L430
.L673:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 158(%a2)
	clr.b 159(%a2)
	move.b #1,222(%a2)
	clr.l 328(%a2)
	moveq #90,%d2
	move.l %d2,298(%a2)
	addq.l #4,%sp
	jra .L430
.L670:
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
	jra .L590
.L669:
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
	jeq .L590
	jra .L589
.L672:
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
	jra .L598
.L671:
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
	jeq .L598
	jra .L597
.L581:
	tst.b 148(%a2)
	jne .L582
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
	jra .L582
.L668:
	tst.b 151(%a2)
	jne .L674
	tst.b 152(%a2)
	jne .L675
	tst.b 146(%a2)
	jeq .L608
	clr.b 185(%a2)
	clr.b 146(%a2)
	clr.l 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L608:
	tst.b 144(%a2)
	jne .L609
	move.b #1,144(%a2)
	clr.b 147(%a2)
.L609:
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
	jra .L430
.L675:
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
	jne .L430
	clr.b 152(%a2)
	jra .L430
.L674:
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
	jne .L430
	clr.b 151(%a2)
	jra .L430
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
	jeq .L677
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L683
	jlt .L687
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L681
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L682
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L719
.L679:
	sub.w 300(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L692
	jge .L720
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L694
	cmp.l #128,%d0
	jeq .L695
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L693
.L688:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L701
	jlt .L705
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L699
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L700
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L698
	moveq #84,%d1
	not.b %d1
.L697:
	cmp.l %a1,%d1
	jge .L677
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L708
	jlt .L714
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L708
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L708
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L708
	move.w #171,%d1
.L708:
	move.w %d1,12(%a0)
.L677:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L687:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L685
	cmp.l #128,%d0
	jeq .L686
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L679
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 300(%a2),%d1
.L693:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L702:
	moveq #78,%d1
	not.b %d1
	jra .L697
.L683:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 300(%a2),%d1
.L692:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L701:
	moveq #75,%d1
	not.b %d1
	jra .L697
.L681:
	move.w %a1,%d1
	sub.w 300(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L690:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L699:
	moveq #69,%d1
	not.b %d1
	jra .L697
.L685:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 300(%a2),%d1
.L694:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L703:
	moveq #81,%d1
	not.b %d1
	jra .L697
.L719:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 300(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L698:
	moveq #66,%d1
	not.b %d1
	jra .L697
.L714:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L708
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L708
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L708
	move.w #171,%d1
	jra .L708
.L682:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 300(%a2),%d1
.L691:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L700:
	moveq #72,%d1
	not.b %d1
	jra .L697
.L686:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 300(%a2),%d1
	add.w %a1,%d1
.L695:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L704:
	moveq #87,%d1
	not.b %d1
	jra .L697
.L720:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L690
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L691
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L688
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L698
.L705:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L703
	cmp.l #128,%d0
	jeq .L704
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L702
	moveq #84,%d1
	not.b %d1
	jra .L697
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 201(%a2)
	jeq .L723
	clr.b 201(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	move.l %a0,278(%a2)
	move.l %a0,290(%a2)
	move.l %a0,224(%a2)
	move.l %a0,12(%a3)
.L723:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d1
	addq.l #8,%sp
	moveq #3,%d0
	cmp.l %d1,%d0
	jeq .L766
	move.l 140(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	move.l %d0,4(%a0)
	move.b 192(%a2),%d0
	jeq .L722
.L727:
	move.l 316(%a2),%d0
	moveq #-1,%d3
	cmp.l %d0,%d3
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 198(%a2)
	jne .L767
.L730:
	tst.b 199(%a2)
	jeq .L732
	clr.b 199(%a2)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	clr.l 16(%a3)
	move.b #1,145(%a2)
	moveq #90,%d2
	move.l %d2,298(%a2)
	moveq #1,%d3
	cmp.l %d1,%d3
	jeq .L733
	moveq #2,%d0
	cmp.l %d1,%d0
	jeq .L768
.L722:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L767:
	tst.b 176(%a2)
	jne .L730
	clr.b 198(%a2)
	moveq #90,%d0
	move.l %d0,298(%a2)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	clr.l 16(%a3)
	move.l 348(%a2),%d0
	jle .L731
	tst.b 193(%a2)
	jeq .L769
.L731:
	move.b #1,194(%a2)
	clr.b 193(%a2)
	addq.l #1,%d0
	move.l %d0,348(%a2)
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L766:
	move.l sprite,%a4
	move.l 140(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	lea (%a4,%d0.l),%a0
	move.w 318(%a2),%d0
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
	tst.b 144(%a2)
	jeq .L725
	tst.b 192(%a2)
	jeq .L760
	tst.b 194(%a2)
	jne .L762
	tst.b 145(%a2)
	jne .L762
	moveq #1,%d3
	move.l %d3,4(%a0)
	move.l 316(%a2),%d0
	moveq #-1,%d3
	cmp.l %d0,%d3
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 198(%a2)
	jeq .L730
	jra .L767
.L732:
	tst.b 196(%a2)
	jne .L770
.L735:
	tst.b 200(%a2)
	jeq .L741
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
.L736:
	tst.b 194(%a2)
	jne .L771
	tst.b 193(%a2)
	jeq .L750
	tst.b 184(%a2)
	jeq .L772
	tst.l 306(%a2)
	jle .L773
.L752:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 184(%a2)
	jne .L722
.L782:
	move.b #1,194(%a2)
	clr.b 193(%a2)
	addq.l #1,348(%a2)
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L725:
	move.b 192(%a2),%d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
.L776:
	tst.b %d0
	jne .L727
	jra .L722
.L770:
	move.w raptor_ticks,%a0
	move.l 282(%a2),%d1
	addq.l #6,%d1
	cmp.l %a0,%d1
	jge .L735
	clr.b 196(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,-(%sp)
	move.l 312(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 193(%a2)
	jne .L736
	tst.b 310(%a2)
	jne .L774
	move.l 302(%a2),%d0
	subq.l #1,%d0
	move.l %d0,302(%a2)
	jle .L775
.L738:
	move.l sprite,%a0
	tst.b 322(%a2)
	jeq .L739
	move.l %d0,14872(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L736
.L733:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,12(%fp)
	move.l 312(%a2),8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L768:
	moveq #0,%d0
	move.b 322(%a2),%d0
	move.l %d0,12(%fp)
	move.l 312(%a2),8(%fp)
	movem.l -20(%fp),#7180
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L762:
	moveq #1,%d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
	jra .L776
.L741:
	tst.b 186(%a2)
	jeq .L736
	tst.b 148(%a2)
	jne .L736
	tst.b 150(%a2)
	jne .L736
	tst.b 149(%a2)
	jne .L736
	tst.b 184(%a2)
	jne .L736
	tst.b 147(%a2)
	jne .L736
	tst.b 320(%a2)
	jeq .L742
	clr.b 320(%a2)
	clr.l 16(%a3)
.L742:
	tst.b 321(%a2)
	jeq .L777
	tst.l 16(%a3)
	jle .L778
	move.l %d0,-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L763:
	move.l 28(%a2),-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L787:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L750:
	tst.b 145(%a2)
	jne .L779
	tst.b 195(%a2)
	jne .L780
.L754:
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
	jeq .L722
.L784:
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
.L760:
	clr.b %d0
	moveq #-1,%d3
	move.l %d3,4(%a0)
	jra .L776
.L771:
	move.l 132(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L781
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
.L783:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L773:
	tst.b 184(%a2)
	jeq .L722
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 184(%a2)
	jne .L722
	jra .L782
.L769:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,193(%a2)
	clr.l 306(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a2)
	addq.l #4,%sp
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L781:
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
	jra .L783
.L772:
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
	jgt .L752
	jra .L773
.L780:
	move.l 316(%a2),%d3
	move.l %d3,%d1
	neg.l %d1
	move.l %d1,-(%sp)
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
	jeq .L755
	tst.b 188(%a2)
	jne .L755
.L756:
	tst.l %d0
	jle .L759
	tst.b 352(%a2)
	jeq .L758
.L759:
	add.l %d0,294(%a2)
.L758:
	move.l 278(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L754
	clr.b 195(%a2)
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,112(%a0,%d0.l)
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
	jne .L784
	jra .L722
.L755:
	tst.l %d0
	jlt .L785
.L757:
	moveq #1,%d1
	cmp.l %d3,%d1
	jne .L756
	tst.b 188(%a2)
	jne .L756
	add.l %d0,294(%a2)
	jra .L758
.L774:
	clr.b 310(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 302(%a2),%d0
	subq.l #1,%d0
	move.l %d0,302(%a2)
	jgt .L738
.L775:
	clr.l 302(%a2)
	move.b #1,198(%a2)
	moveq #0,%d0
	jra .L738
.L785:
	tst.b 352(%a2)
	jne .L757
	jra .L758
.L778:
	clr.b 186(%a2)
	move.l %d0,-(%sp)
	move.l 298(%a2),-(%sp)
	move.l 294(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L763
.L779:
	moveq #90,%d0
	move.l %d0,298(%a2)
	move.l 316(%a2),-(%sp)
	pea 90.w
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
.L739:
	move.l %d0,15064(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,14984(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L736
.L777:
	move.l 28(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L744
	move.b #1,321(%a2)
	move.l 316(%a2),%d0
	neg.l %d0
	move.l %d0,316(%a2)
	moveq #1,%d1
	move.l sprite,%a0
	cmp.l %d0,%d1
	jeq .L786
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
	move.l 140(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L744:
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
	jra .L787
.L786:
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
	jra .L744
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
	jeq .L795
	jge .L802
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L797
	cmp.l #128,%d0
	jeq .L798
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L803
.L791:
	moveq #21,%d0
	unlk %fp
	rts
.L802:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L800
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L794
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L791
	moveq #3,%d0
	unlk %fp
	rts
.L794:
	moveq #9,%d0
	unlk %fp
	rts
.L798:
	moveq #24,%d0
	unlk %fp
	rts
.L803:
	moveq #15,%d0
	unlk %fp
	rts
.L797:
	moveq #18,%d0
	unlk %fp
	rts
.L800:
	moveq #6,%d0
	unlk %fp
	rts
.L795:
	moveq #12,%d0
	unlk %fp
	rts
	.even
	.globl	__Z20fighterIsMaxDistanceP7FighterS0_
__Z20fighterIsMaxDistanceP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	moveq #1,%d0
	cmp.l 316(%a0),%d0
	jeq .L811
	move.l 294(%a0),%d0
	sub.l 294(%a1),%d0
	cmp.l #259,%d0
	jgt .L809
.L807:
	clr.b 353(%a0)
	clr.b 353(%a1)
	unlk %fp
	rts
.L811:
	move.l 294(%a1),%d0
	sub.l 294(%a0),%d0
	cmp.l #259,%d0
	jle .L807
.L809:
	move.b #1,353(%a0)
	move.b #1,353(%a1)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,201(%a0)
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
