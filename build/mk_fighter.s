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
	jne .L23
	move.w #256,8(%a1)
	move.l #256,%d0
	moveq #1,%d1
	cmp.l (%a0),%d1
	jeq .L24
	moveq #-1,%d1
	move.l %d1,24(%a1)
	move.l %d1,270(%a0)
.L19:
	move.l %d0,248(%a0)
	move.w 12(%a1),%a1
	move.l %a1,252(%a0)
	unlk %fp
	rts
.L23:
	move.w #14,8(%a1)
	moveq #1,%d0
	move.l %d0,24(%a1)
	move.l %d0,270(%a0)
	move.b #14,%d0
	move.l %d0,248(%a0)
	move.w 12(%a1),%a1
	move.l %a1,252(%a0)
	unlk %fp
	rts
.L24:
	move.w #240,8(%a1)
	move.w #240,%d0
	moveq #-1,%d1
	move.l %d1,24(%a1)
	move.l %d1,270(%a0)
	jra .L19
	.even
	.globl	__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_
__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d2
	move.l #0x400ccccd,278(%a0)
	clr.l 282(%a0)
	move.l #0xc1900000,286(%a0)
	move.l #0xc1d00000,290(%a0)
	move.l #0xc1200000,294(%a0)
	move.l 16(%fp),266(%a0)
	move.l 20(%fp),304(%a0)
	move.l 24(%fp),308(%a0)
	move.l 28(%fp),312(%a0)
	move.l 32(%fp),316(%a0)
	move.l 36(%fp),328(%a0)
	move.l 40(%fp),332(%a0)
	move.l 44(%fp),320(%a0)
	move.l 48(%fp),324(%a0)
	move.l 52(%fp),336(%a0)
	clr.l 190(%a0)
	move.l #0x40000000,198(%a0)
	move.l #0x40000000,202(%a0)
	move.l #0x40900000,206(%a0)
	move.l #0x40600000,210(%a0)
	move.l #0x40d00000,214(%a0)
	clr.l 222(%a0)
	move.l #0x40f00000,218(%a0)
	move.l #0x3f800000,226(%a0)
	moveq #1,%d0
	move.l %d0,240(%a0)
	clr.l 244(%a0)
	clr.l 232(%a0)
	move.b #1,160(%a0)
	move.b #1,124(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 127(%a0)
	clr.b 159(%a0)
	clr.b 128(%a0)
	clr.b 129(%a0)
	clr.b 130(%a0)
	clr.b 131(%a0)
	clr.b 132(%a0)
	clr.b 133(%a0)
	clr.b 134(%a0)
	clr.b 135(%a0)
	clr.b 136(%a0)
	clr.b 137(%a0)
	clr.b 138(%a0)
	clr.b 140(%a0)
	clr.b 139(%a0)
	clr.b 141(%a0)
	move.b #1,145(%a0)
	move.b #1,144(%a0)
	move.b #1,168(%a0)
	clr.b 230(%a0)
	clr.b 142(%a0)
	clr.b 143(%a0)
	clr.b 146(%a0)
	clr.b 147(%a0)
	clr.b 148(%a0)
	clr.b 149(%a0)
	clr.b 150(%a0)
	clr.b 153(%a0)
	clr.b 154(%a0)
	clr.b 155(%a0)
	clr.b 156(%a0)
	clr.b 157(%a0)
	clr.b 158(%a0)
	clr.b 161(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	clr.b 164(%a0)
	clr.b 167(%a0)
	clr.b 169(%a0)
	clr.b 170(%a0)
	clr.b 180(%a0)
	clr.b 181(%a0)
	clr.l 182(%a0)
	move.b #50,%d0
	move.l %d0,172(%a0)
	move.b #20,%d0
	move.l %d0,176(%a0)
	move.b %d2,276(%a0)
	move.b #33,%d0
	move.l %d0,256(%a0)
	clr.l 260(%a0)
	clr.b 264(%a0)
	clr.b 274(%a0)
	clr.b 275(%a0)
	move.b #1,302(%a0)
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
	jne .L30
	moveq #30,%d0
	move.l %d0,186(%a0)
	moveq #2,%d2
	move.l %d2,194(%a0)
	move.l #210,248(%a0)
	moveq #-1,%d0
	move.l %d0,24(%a1)
	move.l %d0,270(%a0)
	move.w #222,%d0
	move.w #5760,%a1
	moveq #90,%d2
	move.l %d2,252(%a0)
	lea (%a1,%d1.l),%a1
	move.w %d0,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
.L30:
	moveq #29,%d2
	move.l %d2,186(%a0)
	move.l %d0,194(%a0)
	move.b #50,%d0
	move.l %d0,248(%a0)
	move.b #1,%d2
	move.l %d2,24(%a1)
	move.l %d2,270(%a0)
	move.b #62,%d0
	move.w #5568,%a1
	moveq #90,%d2
	move.l %d2,252(%a0)
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
	clr.l 298(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 270(%a0),-(%sp)
	move.l 252(%a0),-(%sp)
	move.l 248(%a0),-(%sp)
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
	jeq .L37
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L38
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L41
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L41:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L38:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L37:
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
	jeq .L48
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L48:
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
	jeq .L52
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L56
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L52:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L56:
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
	jle .L63
.L59:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L63:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L64
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L64:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L59
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
	jne .L70
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L71
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L71:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L70:
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
	tst.b 157(%a2)
	jne .L74
	tst.b 146(%a2)
	jeq .L173
.L75:
	move.b 150(%a2),%d0
	jne .L79
.L80:
	move.l 260(%a2),%d2
	tst.b 264(%a2)
	jne .L174
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jle .L175
.L88:
	move.l sprite,%a0
	tst.b 276(%a2)
	jne .L161
.L89:
	move.l %d0,9496(%a0)
	moveq #78,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	add.w %d2,%d0
	add.w %d0,%d0
	move.w %d0,9416(%a0)
.L90:
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	clr.l 260(%a2)
	clr.l 222(%a2)
	move.b #1,157(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	move.l %a0,244(%a2)
	clr.l 16(%a3)
	move.l 290(%a2),282(%a2)
	move.b 152(%a2),%d0
	jeq .L91
	move.l 294(%a2),282(%a2)
.L91:
	tst.b 146(%a2)
	jne .L92
	tst.b 147(%a2)
	jne .L92
	tst.b 151(%a2)
	jne .L92
	tst.b 149(%a2)
	jne .L92
	tst.b 148(%a2)
	jne .L97
	tst.b 150(%a2)
	jne .L97
	tst.b %d0
	jeq .L98
.L97:
	move.l 266(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 276(%a2),%d2
	move.l 266(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L100
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L176
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L96:
	move.b 147(%a2),%d1
	jne .L102
	tst.b 148(%a2)
	jne .L102
	tst.b 150(%a2)
	jeq .L98
.L102:
	move.l 248(%a2),%a4
	move.l 270(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L177
.L103:
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L178
.L104:
	tst.b %d1
	jne .L105
.L197:
	tst.b 149(%a2)
	jne .L105
	tst.b 148(%a2)
	jne .L179
	tst.b 150(%a2)
	jne .L180
.L74:
	tst.b 146(%a2)
	jeq .L156
	tst.b 157(%a2)
	jne .L110
.L156:
	move.b 147(%a2),%d0
	jeq .L112
	tst.b 157(%a2)
	jne .L181
.L112:
	tst.b 148(%a2)
	jeq .L81
	tst.b 157(%a2)
	jne .L182
.L114:
	tst.b 151(%a2)
	jeq .L119
	tst.b 157(%a2)
	jne .L183
.L119:
	tst.b 152(%a2)
	jeq .L120
	tst.b 157(%a2)
	jeq .L120
	tst.b 155(%a2)
	jne .L184
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jle .L73
	move.l 270(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 210(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L185
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L186
.L123:
	add.l %d0,248(%a2)
.L124:
	move.b 153(%a2),%d3
	move.l 282(%a2),%d2
	tst.b %d3
	jne .L126
	move.l 252(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,252(%a2)
	move.l 278(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,282(%a2)
.L126:
	move.l %d2,-(%sp)
	move.l 290(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L127
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L164
.L127:
	tst.b 154(%a2)
	jne .L131
	tst.b %d3
	jeq .L187
.L148:
	move.b #1,153(%a2)
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	move.l 112(%a2),%d2
	subq.l #1,%d2
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L146
	move.b #1,154(%a2)
	clr.b 153(%a2)
.L146:
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
.L73:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L173:
	tst.b 147(%a2)
	jne .L75
	tst.b 148(%a2)
	jne .L75
	tst.b 150(%a2)
	jne .L79
	tst.b 151(%a2)
	jne .L80
	tst.b 149(%a2)
	jne .L80
	tst.b 152(%a2)
	jne .L80
.L81:
	tst.b 149(%a2)
	jeq .L114
	tst.b 157(%a2)
	jeq .L114
.L182:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 240(%a2),%d0
	move.l 270(%a2),%d2
	cmp.l %a0,%d0
	jle .L115
.L157:
	move.l 248(%a2),%d0
	move.l %d2,-(%sp)
	move.l 252(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 108(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L73
.L195:
	clr.b 148(%a2)
	clr.b 149(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L79:
	move.l 260(%a2),%d2
	tst.b 264(%a2)
	jne .L188
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jle .L189
.L83:
	move.l sprite,%a0
	tst.b 276(%a2)
	jne .L161
.L84:
	move.l %d0,9496(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,9416(%a0)
	jra .L90
.L120:
	tst.b 150(%a2)
	jeq .L136
	tst.b 157(%a2)
	jeq .L136
	tst.b 155(%a2)
	jne .L190
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jle .L73
	move.l 270(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 210(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L191
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L192
.L139:
	add.l %d0,248(%a2)
.L140:
	move.b 153(%a2),%d3
	move.l 282(%a2),%d2
	tst.b %d3
	jne .L142
	move.l 252(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,252(%a2)
	move.l 278(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,282(%a2)
.L142:
	move.l %d2,-(%sp)
	move.l 290(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L143
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L164
.L143:
	tst.b 154(%a2)
	jne .L147
	tst.b %d3
	jne .L148
	move.l 266(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L148
.L136:
	tst.b 156(%a2)
	jeq .L73
	tst.b 157(%a2)
	jeq .L73
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 88(%a2),-(%sp)
	move.l 440(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 88(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L73
	clr.b 157(%a2)
	clr.b 156(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L110:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 100(%a2),-(%sp)
	move.l 420(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 100(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L73
	clr.b 146(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L181:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 104(%a2),-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 104(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L73
	clr.b 147(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L161:
	move.l %d0,9304(%a0)
	jra .L90
.L115:
	move.l %d2,%d3
	neg.l %d3
	move.l %d3,-(%sp)
	jsr ___floatsisf
	move.l 206(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L193
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L194
.L118:
	add.l 248(%a2),%d0
	move.l %d0,248(%a2)
.L199:
	move.l %d2,-(%sp)
	move.l 252(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 108(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L73
	jra .L195
.L174:
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jgt .L88
	jra .L175
.L188:
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jgt .L83
	jra .L189
.L175:
	clr.l 256(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 276(%a2)
	jeq .L89
	jra .L161
.L189:
	clr.l 256(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 276(%a2)
	jeq .L84
	jra .L161
.L183:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 116(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 116(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L73
	move.l 266(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 151(%a2)
	move.b #1,156(%a2)
	clr.l 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L92:
	moveq #0,%d1
	move.b 276(%a2),%d1
	move.l 266(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L196
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L96
.L178:
	lea (-40,%a4),%a4
	tst.b %d1
	jeq .L197
.L105:
	move.l %d0,-(%sp)
	moveq #-10,%d0
	add.l 252(%a2),%d0
	move.l %d0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z10bloodSprayiii
	lea (12,%sp),%sp
	jra .L74
.L98:
	tst.b 149(%a2)
	jeq .L74
	clr.b %d1
	move.l 248(%a2),%a4
	move.l 270(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L103
.L177:
	lea (40,%a4),%a4
	jra .L104
.L196:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L96
.L184:
	moveq #19,%d0
	add.l 236(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L73
	clr.b 152(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	move.b #1,156(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,252(%a2)
.L198:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L190:
	moveq #19,%d0
	add.l 236(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L73
	clr.b 150(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	move.b #1,156(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,252(%a2)
	jra .L198
.L180:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	moveq #-10,%d3
	add.l 252(%a2),%d3
	move.l %d3,(%sp)
	move.l %a4,-(%sp)
	lea __Z11bloodSquirtii,%a5
	jsr (%a5)
	addq.l #8,%sp
	moveq #-30,%d0
	add.l 252(%a2),%d0
	move.l %d0,-(%sp)
	pea 20(%a4)
	jsr (%a5)
	addq.l #8,%sp
	moveq #-50,%d1
	add.l 252(%a2),%d1
	move.l %d1,-(%sp)
	pea 10(%a4)
	jsr (%a5)
	addq.l #4,%sp
	move.l 270(%a2),(%sp)
	moveq #-40,%d2
	add.l 252(%a2),%d2
	move.l %d2,-(%sp)
	move.l %a4,-(%sp)
	lea __Z9bloodDropiii,%a5
	jsr (%a5)
	move.l 270(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-40,%d3
	add.l 252(%a2),%d3
	move.l %d3,-(%sp)
	add.l %d0,%d0
	add.l %d0,%d0
	sub.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr (%a5)
	move.l 270(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-50,%d1
	add.l 252(%a2),%d1
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
	move.l 270(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-50,%d2
	add.l 252(%a2),%d2
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
	jra .L74
.L194:
	tst.l %d0
	jle .L118
.L163:
	tst.b 302(%a2)
	jeq .L157
	add.l 248(%a2),%d0
	move.l %d0,248(%a2)
	jra .L199
.L186:
	tst.l %d0
	jle .L123
.L158:
	tst.b 302(%a2)
	jeq .L124
	add.l %d0,248(%a2)
	jra .L124
.L192:
	tst.l %d0
	jle .L139
.L159:
	tst.b 302(%a2)
	jeq .L140
	add.l %d0,248(%a2)
	jra .L140
.L187:
	move.l 266(%a2),%d2
	lea RAPTOR_random,%a4
	jsr (%a4)
	btst #0,%d0
	jne .L200
	jsr (%a4)
	btst #0,%d0
	jne .L201
	move.l %d2,-(%sp)
	jsr __Z17sfxAnnouncerLaughP12SoundHandler
	addq.l #4,%sp
	jra .L148
.L164:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 432(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.l 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L73
.L179:
	move.l %d0,-(%sp)
	moveq #20,%d1
	add.l 252(%a2),%d1
	move.l %d1,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z9bloodGlobiii
	move.l 270(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-30,%d2
	add.l 252(%a2),%d2
	move.l %d2,-(%sp)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr __Z9bloodDropiii
	lea (12,%sp),%sp
	jra .L74
.L193:
	tst.l %d0
	jlt .L163
	add.l 248(%a2),%d0
	move.l %d0,248(%a2)
	jra .L199
.L176:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L96
.L100:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	jra .L96
.L131:
	move.l 252(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L135
	move.b #1,155(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	move.l %d3,252(%a2)
	move.l 270(%a2),-(%sp)
	pea 90.w
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 432(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 266(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
.L202:
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L73
.L147:
	move.l 252(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L149
	move.b #1,155(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	move.l %d3,252(%a2)
	move.l 270(%a2),-(%sp)
	pea 90.w
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 432(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 266(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	jra .L202
.L185:
	tst.l %d0
	jlt .L158
	add.l %d0,248(%a2)
	jra .L124
.L135:
	move.l 270(%a2),-(%sp)
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 432(%a2),-(%sp)
	pea 4.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L73
.L191:
	tst.l %d0
	jlt .L159
	add.l %d0,248(%a2)
	jra .L140
.L149:
	move.l 270(%a2),-(%sp)
	move.l %d0,-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 432(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L73
.L200:
	move.l %d2,-(%sp)
	jsr __Z11sfxCrowdAwwP12SoundHandler
	addq.l #4,%sp
	jra .L148
.L201:
	move.l %d2,-(%sp)
	jsr __Z21sfxAnnouncerExcellentP12SoundHandler
	addq.l #4,%sp
	jra .L148
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 157(%a0),%d0
	jne .L205
	tst.b 132(%a0)
	jne .L205
.L206:
	tst.b 134(%a1)
	jne .L223
.L208:
	tst.b 135(%a1)
	jeq .L210
	tst.b 131(%a0)
	jne .L210
	move.b #1,147(%a0)
	moveq #2,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
.L209:
	tst.b %d0
	jne .L204
.L221:
	tst.b 132(%a0)
	jeq .L219
	tst.b 131(%a0)
	jne .L220
.L219:
	tst.b 142(%a1)
	jeq .L204
	move.b #1,151(%a0)
	moveq #4,%d0
	move.l %d0,260(%a0)
	clr.b 264(%a0)
.L204:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L205:
	tst.b 161(%a0)
	jne .L206
	tst.b %d0
	jne .L204
	tst.b 132(%a0)
	jeq .L221
	move.b #1,133(%a0)
	move.b #1,164(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
	jra .L221
.L223:
	tst.b 131(%a0)
	jne .L208
	move.b #1,146(%a0)
	moveq #2,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L221
	jra .L204
.L210:
	tst.b 136(%a1)
	jeq .L211
	tst.b 131(%a0)
	jne .L211
	move.b #1,146(%a0)
	moveq #5,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L221
	jra .L204
.L211:
	tst.b 137(%a1)
	jeq .L212
	tst.b 131(%a0)
	jne .L212
	move.b #1,148(%a0)
	moveq #5,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L221
	jra .L204
.L212:
	tst.b 143(%a1)
	jeq .L213
	tst.b 131(%a0)
	jeq .L224
.L213:
	tst.b 138(%a1)
	jeq .L214
	move.b #1,149(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #5,%d1
	move.l %d1,260(%a0)
	move.b #1,264(%a0)
	tst.b %d0
	jeq .L221
	jra .L204
.L220:
	move.b #1,133(%a0)
	move.b #1,164(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,236(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L214:
	tst.b 139(%a1)
	jne .L225
	tst.b 141(%a1)
	jeq .L216
	move.b #1,150(%a0)
	clr.b 168(%a1)
	move.b #1,169(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #8,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L221
	jra .L204
.L224:
	move.b #1,148(%a0)
	moveq #6,%d1
	move.l %d1,260(%a0)
	move.b #1,264(%a0)
	tst.b %d0
	jeq .L221
	jra .L204
.L225:
	move.b #1,149(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #4,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L221
	jra .L204
.L216:
	tst.b 140(%a1)
	jeq .L209
	move.b #1,152(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #6,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L221
	jra .L204
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15416,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 158(%a2)
	jeq .L228
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L242
.L228:
	tst.b 158(%a3)
	jeq .L229
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L243
.L229:
	pea 15.w
	pea 12.w
	pea 15.w
	pea 12.w
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L227
	move.l colliders,%d4
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a4
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L232
.L247:
	cmp.w #0,%a0
	jlt .L227
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
	moveq #29,%d3
	cmp.l %d0,%d3
	jeq .L244
	moveq #27,%d3
	cmp.l %d0,%d3
	jeq .L245
	moveq #30,%d3
	cmp.l %d0,%d3
	jne .L237
	moveq #27,%d5
	cmp.l %d1,%d5
	jeq .L246
.L240:
	addq.l #8,%d2
.L248:
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L247
.L232:
	cmp.w #0,%a0
	jge .L240
.L227:
	movem.l -28(%fp),#7228
	unlk %fp
	rts
.L245:
	moveq #28,%d5
	cmp.l %d1,%d5
	jne .L240
	tst.b 126(%a2)
	jeq .L240
	move.l 248(%a2),%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L240
	cmp.l #328,%d0
	jgt .L240
	move.l 248(%a3),%d0
	cmp.l %d0,%d1
	jge .L240
	cmp.l #328,%d0
	jgt .L240
	move.b #1,158(%a2)
	move.b #1,163(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a3)
	addq.l #8,%d2
	jra .L248
.L244:
	moveq #28,%d5
	cmp.l %d1,%d5
	jne .L240
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L248
.L237:
	moveq #28,%d3
	cmp.l %d0,%d3
	jne .L240
	moveq #27,%d5
	cmp.l %d1,%d5
	jne .L240
	tst.b 126(%a3)
	jeq .L240
	move.b #1,158(%a3)
	move.b #1,163(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	addq.l #8,%d2
	jra .L248
.L246:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L248
.L242:
	clr.b 158(%a2)
	jra .L228
.L243:
	clr.b 158(%a3)
	jra .L229
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 270(%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L264
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L265
.L253:
	move.l 270(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L266
.L254:
	moveq #-1,%d1
	cmp.l %d0,%d1
	jne .L250
	move.l 248(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 248(%a1),%d0
	jge .L250
.L261:
	tst.b 159(%a0)
	jne .L250
	clr.b 275(%a0)
	move.b #1,159(%a0)
	move.b #1,274(%a0)
.L250:
	unlk %fp
	rts
.L265:
	move.l 248(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 248(%a0),%d0
	jge .L253
	tst.b 159(%a1)
	jne .L253
.L267:
	clr.b 275(%a1)
	move.b #1,159(%a1)
	move.b #1,274(%a1)
	move.l 270(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L254
.L266:
	move.l 248(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 248(%a0),%d0
	jlt .L261
	unlk %fp
	rts
.L264:
	move.l 248(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 248(%a1),%d0
	jge .L253
	tst.b 159(%a1)
	jne .L253
	jra .L267
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 256(%a1),9304(%a0)
	move.l 12(%fp),%a1
	move.l 256(%a1),%d0
	move.l %d0,9496(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,9416(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterAddPendingDamageP7Fighterib
__Z23fighterAddPendingDamageP7Fighterib:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),260(%a0)
	move.b 19(%fp),264(%a0)
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
	tst.b 264(%a2)
	jne .L277
	move.l 256(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,256(%a2)
	jle .L278
.L273:
	move.l sprite,%a0
	tst.b 276(%a2)
	jne .L279
.L274:
	move.l %d0,9496(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,9416(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L277:
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 256(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,256(%a2)
	jgt .L273
.L278:
	clr.l 256(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 276(%a2)
	jeq .L274
.L279:
	move.l %d0,9304(%a0)
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
	cmp.l 270(%a0),%d0
	jeq .L285
	addq.l #2,248(%a0)
.L281:
	unlk %fp
	rts
.L285:
	tst.b 302(%a0)
	jeq .L281
	addq.l #2,248(%a0)
	jra .L281
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 270(%a0),%d0
	jeq .L291
	subq.l #2,248(%a0)
.L287:
	unlk %fp
	rts
.L291:
	tst.b 302(%a0)
	jeq .L287
	subq.l #2,248(%a0)
	jra .L287
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
	tst.b 124(%a0)
	jeq .L294
	move.l 186(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 250(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 254(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L294:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L302
	moveq #6,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	unlk %fp
	rts
.L302:
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
	move.l %d0,252(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 270(%a2),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L322
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L323
.L320:
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L323:
	cmp.l #328,248(%a2)
	jle .L320
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jne .L316
	cmp.l #328,248(%a2)
	jle .L320
	moveq #10,%d0
	move.l 12(%fp),%a0
	cmp.l 248(%a0),%d0
	slt %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L322:
	moveq #11,%d0
	cmp.l 248(%a2),%d0
	jlt .L320
	jsr __Z18cameraIsAtLeftWallv
	tst.b %d0
	jne .L316
	moveq #11,%d0
	cmp.l 248(%a2),%d0
	jlt .L320
	move.l 12(%fp),%a0
	cmp.l #280,248(%a0)
	sle %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L316:
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
	move.l 270(%a0),%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L332
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L333
.L327:
	add.l %d1,248(%a0)
.L325:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L333:
	tst.l %d1
	jle .L327
.L329:
	tst.b 302(%a0)
	jeq .L325
	add.l %d1,248(%a0)
	jra .L325
.L332:
	tst.l %d1
	jlt .L329
	add.l %d1,248(%a0)
	jra .L325
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 157(%a2)
	jne .L336
	tst.b 126(%a2)
	jeq .L536
.L337:
	clr.b 124(%a2)
.L339:
	move.l 194(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,190(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L537
.L340:
	tst.b 131(%a2)
	jeq .L341
	tst.b 145(%a2)
	jeq .L341
	tst.b 168(%a2)
	jeq .L341
	tst.b 141(%a2)
	jne .L343
	clr.b 145(%a2)
	move.b #1,141(%a2)
	move.b #1,127(%a2)
	clr.b 131(%a2)
	clr.l 16(%a3)
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L343:
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 169(%a2)
	jeq .L538
.L345:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 172(%a2),%d0
	cmp.l %a0,%d0
	jgt .L539
	clr.b 169(%a2)
.L348:
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L540
.L350:
	move.l 190(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L506
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L506
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L541
.L506:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L335
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L335
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L335
	and.l JAGPAD_RIGHT,%d0
	jne .L335
	move.b #1,144(%a2)
.L335:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L336:
	clr.b 124(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L536:
	tst.b 131(%a2)
	jne .L337
	tst.b 128(%a2)
	jne .L337
	tst.b 130(%a2)
	jne .L337
	tst.b 129(%a2)
	jne .L337
	tst.b 127(%a2)
	jeq .L339
	clr.b 124(%a2)
	jra .L339
.L537:
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L340
.L341:
	tst.b 141(%a2)
	jne .L343
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L351
	tst.l %d1
	jeq .L352
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L353
	moveq #1,%d3
	cmp.l 270(%a2),%d3
	jeq .L351
.L353:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L352
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jeq .L351
.L352:
	tst.b 135(%a2)
	jeq .L542
.L355:
	move.l 64(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L362
	clr.b 135(%a2)
.L362:
	move.l 308(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 392(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L538:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 84(%a2),-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 169(%a2)
	jne .L345
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L350
	jra .L540
.L542:
	tst.l %d1
	jeq .L363
	tst.b 145(%a2)
	jeq .L363
	tst.b 168(%a2)
	jeq .L363
	tst.b 128(%a2)
	jne .L363
	tst.b 134(%a2)
	jne .L365
	clr.b 145(%a2)
	move.b #1,134(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 276(%a2),%d2
	move.l 266(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d4
	cmp.l %d0,%d4
	jeq .L369
	moveq #7,%d3
	cmp.l %d0,%d3
	jeq .L370
	move.b #4,%d4
	cmp.l %d0,%d4
	jeq .L543
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L372:
	move.l 304(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 388(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L363:
	tst.b 134(%a2)
	jne .L365
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L373
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L373
	moveq #1,%d3
	cmp.l 270(%a2),%d3
	jeq .L374
.L373:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L375
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L375
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jeq .L374
.L375:
	tst.b 142(%a2)
	jeq .L544
.L377:
	move.l 92(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L384
	clr.b 142(%a2)
.L384:
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 444(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L351:
	tst.b 145(%a2)
	jeq .L352
	tst.b 168(%a2)
	jeq .L352
	tst.b 128(%a2)
	jne .L352
	tst.b 135(%a2)
	jne .L355
	clr.b 145(%a2)
	move.b #1,135(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 276(%a2),%d2
	move.l 266(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L359
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L360
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L545
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L547:
	move.l 308(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 392(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L541:
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L506
	move.b #1,145(%a2)
	jra .L506
.L365:
	move.l 60(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L372
	clr.b 134(%a2)
	move.l 304(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 388(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L540:
	clr.b 141(%a2)
	move.b #1,168(%a2)
	jra .L350
.L544:
	tst.l %d1
	jeq .L385
	moveq #1,%d4
	cmp.l 270(%a2),%d4
	jeq .L386
.L385:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L387
	moveq #-1,%d3
	cmp.l 270(%a2),%d3
	jeq .L386
.L387:
	tst.b 143(%a2)
	jne .L389
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L392
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L393
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L394
	moveq #1,%d4
	cmp.l 270(%a2),%d4
	jeq .L392
.L394:
	tst.l %d1
	jeq .L393
	moveq #-1,%d3
	cmp.l 270(%a2),%d3
	jeq .L392
.L393:
	tst.b 137(%a2)
	jne .L396
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L399
	tst.b 145(%a2)
	jeq .L399
	tst.b 168(%a2)
	jeq .L399
	tst.b 128(%a2)
	jne .L399
	tst.b 136(%a2)
	jne .L401
	clr.b 145(%a2)
	move.b #1,136(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L403:
	move.l 312(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 396(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L389:
	move.l 96(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L391
	clr.b 143(%a2)
.L391:
	move.l 336(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L374:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L375
	tst.b 145(%a2)
	jeq .L375
	tst.b 168(%a2)
	jeq .L375
	tst.b 128(%a2)
	jne .L375
	tst.b 142(%a2)
	jne .L377
	clr.b 145(%a2)
	move.b #1,127(%a2)
	move.b #1,142(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 276(%a2),%d2
	move.l 266(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L381
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L382
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L546
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L564:
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 444(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L386:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L387
	tst.b 145(%a2)
	jeq .L387
	tst.b 168(%a2)
	jeq .L387
	tst.b 128(%a2)
	jne .L387
	tst.b 143(%a2)
	jne .L389
	clr.b 145(%a2)
	move.b #1,127(%a2)
	move.b #1,143(%a2)
	clr.l 16(%a3)
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 336(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L396:
	move.l 72(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L398
	clr.b 137(%a2)
.L398:
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 400(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L392:
	tst.b 145(%a2)
	jeq .L393
	tst.b 168(%a2)
	jeq .L393
	tst.b 128(%a2)
	jne .L393
	tst.b 137(%a2)
	jne .L396
	clr.b 145(%a2)
	move.b #1,137(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 400(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L539:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 416(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 169(%a2)
	jne .L350
	jra .L348
.L545:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L547
.L360:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L547
.L359:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L547
.L399:
	tst.b 136(%a2)
	jne .L401
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jeq .L404
	tst.b 128(%a2)
	jne .L404
	tst.b 168(%a2)
	jeq .L404
	tst.b 132(%a2)
	jne .L405
	move.b #1,132(%a2)
	clr.l 16(%a3)
.L405:
	and.l JAGPAD_DOWN,%d0
	jeq .L406
	tst.b 131(%a2)
	jne .L407
	move.b #1,131(%a2)
	clr.b 126(%a2)
	clr.l 16(%a3)
.L407:
	tst.b 133(%a2)
	jne .L408
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 52(%a2),-(%sp)
	move.l 380(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L401:
	move.l 68(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L403
	clr.b 136(%a2)
	move.l 312(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 396(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L543:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L372
.L370:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L372
.L369:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L372
.L404:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L411
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L412
	moveq #1,%d4
	cmp.l 270(%a2),%d4
	jeq .L413
.L412:
	tst.l %d1
	jeq .L411
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jeq .L413
.L411:
	tst.b 129(%a2)
	jne .L415
	tst.l %d3
	jeq .L439
	tst.l %d1
	jeq .L440
	moveq #1,%d4
	cmp.l 270(%a2),%d4
	jeq .L441
.L440:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L439
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jeq .L441
.L439:
	tst.b 130(%a2)
	jne .L443
	tst.l %d1
	jeq .L467
	tst.b 168(%a2)
	jeq .L467
	tst.b 128(%a2)
	jne .L467
	tst.b 126(%a2)
	jne .L468
	clr.l 16(%a3)
.L468:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	pea 1.w
	and.l #255,%d2
	move.l %d2,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 352(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	move.b #1,126(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 127(%a2)
	clr.b 134(%a2)
	clr.b 135(%a2)
	lea (32,%sp),%sp
	tst.l 248(%a2)
	jle .L350
	tst.b 158(%a2)
	jne .L469
	move.l 202(%a2),%d0
	moveq #-1,%d3
	cmp.l 270(%a2),%d3
	jne .L470
	move.l 198(%a2),%d0
.L470:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L525
.L413:
	tst.b 144(%a2)
	jeq .L411
	tst.b 168(%a2)
	jeq .L411
	tst.b 129(%a2)
	jne .L415
	clr.b 168(%a2)
	clr.b 230(%a2)
	clr.b 144(%a2)
	move.b #1,129(%a2)
	clr.l 16(%a3)
	move.l 286(%a2),282(%a2)
	clr.b 180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,182(%a2)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L415:
	move.l 190(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L417
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L418
.L417:
	tst.b 129(%a2)
	jeq .L418
	tst.b 180(%a2)
	jne .L418
	tst.b 230(%a2)
	jeq .L419
.L418:
	tst.b 138(%a2)
	jeq .L420
	tst.b 180(%a2)
	jne .L420
	tst.b 129(%a2)
	jeq .L420
.L419:
	tst.b 140(%a2)
	jne .L420
	tst.b 138(%a2)
	jeq .L548
.L421:
	tst.b 170(%a2)
	jeq .L549
.L422:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L550
	clr.b 170(%a2)
	clr.b 138(%a2)
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
.L420:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L425
	and.l JAGPAD_7,%d0
	jeq .L426
.L425:
	tst.b 129(%a2)
	jeq .L426
	tst.b 180(%a2)
	jne .L426
	tst.b 230(%a2)
	jeq .L427
.L426:
	tst.b 140(%a2)
	jeq .L428
	tst.b 180(%a2)
	jne .L428
	tst.b 129(%a2)
	jne .L427
.L428:
	tst.l 16(%a3)
	jne .L433
	tst.b 138(%a2)
	jne .L433
	tst.b 140(%a2)
	jeq .L551
.L433:
	tst.b 129(%a2)
	jeq .L350
	tst.b 180(%a2)
	jne .L434
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jle .L434
	tst.b 181(%a2)
	jne .L435
	moveq #10,%d0
	add.l 182(%a2),%d0
	cmp.l %a0,%d0
	jge .L435
	tst.b 138(%a2)
	jne .L435
	tst.b 140(%a2)
	jeq .L552
.L435:
	tst.b 170(%a2)
	jeq .L553
.L436:
	tst.b 138(%a2)
	jne .L434
	tst.b 140(%a2)
	jne .L434
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 36(%a2),-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L434:
	clr.l -(%sp)
	move.l 282(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L437
	moveq #89,%d0
	cmp.l 252(%a2),%d0
	jlt .L526
.L437:
	tst.b 180(%a2)
	jeq .L350
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L350
	move.b #1,168(%a2)
	clr.b 129(%a2)
.L528:
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 140(%a2)
	clr.b 181(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L350
.L441:
	tst.b 144(%a2)
	jeq .L439
	tst.b 168(%a2)
	jeq .L439
	tst.b 130(%a2)
	jne .L443
	clr.b 168(%a2)
	clr.b 230(%a2)
	clr.b 144(%a2)
	move.b #1,130(%a2)
	clr.l 16(%a3)
	move.l 286(%a2),282(%a2)
	clr.b 180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,182(%a2)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L443:
	move.l 190(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L445
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L446
.L445:
	tst.b 130(%a2)
	jeq .L446
	tst.b 180(%a2)
	jne .L446
	tst.b 230(%a2)
	jne .L446
.L447:
	tst.b 140(%a2)
	jne .L448
	tst.b 138(%a2)
	jne .L449
	clr.b 145(%a2)
	move.b #1,230(%a2)
	move.b #1,138(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L449:
	tst.b 170(%a2)
	jeq .L554
.L450:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L555
	clr.b 170(%a2)
	clr.b 140(%a2)
.L451:
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
.L448:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L453
	and.l JAGPAD_7,%d0
	jeq .L454
.L453:
	tst.b 130(%a2)
	jeq .L454
	tst.b 180(%a2)
	jne .L454
	tst.b 230(%a2)
	jne .L454
.L455:
	tst.b 138(%a2)
	jne .L456
	tst.b 140(%a2)
	jne .L457
	clr.b 145(%a2)
	move.b #1,230(%a2)
	move.b #1,140(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L457:
	tst.b 170(%a2)
	jeq .L556
.L458:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L557
	clr.b 170(%a2)
	clr.b 140(%a2)
.L459:
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L456:
	tst.l 16(%a3)
	jne .L461
	tst.b 138(%a2)
	jne .L461
	tst.b 140(%a2)
	jeq .L558
.L461:
	tst.b 130(%a2)
	jeq .L350
	tst.b 180(%a2)
	jne .L462
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jle .L462
	tst.b 181(%a2)
	jne .L463
	moveq #10,%d0
	add.l 182(%a2),%d0
	cmp.l %a0,%d0
	jge .L463
	tst.b 138(%a2)
	jne .L463
	tst.b 140(%a2)
	jeq .L559
.L463:
	tst.b 170(%a2)
	jeq .L560
.L464:
	tst.b 138(%a2)
	jne .L462
	tst.b 140(%a2)
	jne .L462
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.l 36(%a2),-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L462:
	clr.l -(%sp)
	move.l 282(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L465
	moveq #89,%d0
	cmp.l 252(%a2),%d0
	jlt .L526
.L465:
	tst.b 180(%a2)
	jeq .L350
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L350
	move.b #1,168(%a2)
	clr.b 130(%a2)
	jra .L528
.L446:
	tst.b 138(%a2)
	jeq .L448
	tst.b 180(%a2)
	jne .L448
	tst.b 130(%a2)
	jeq .L448
	jra .L447
.L454:
	tst.b 140(%a2)
	jeq .L456
	tst.b 180(%a2)
	jne .L456
	tst.b 130(%a2)
	jeq .L456
	jra .L455
.L427:
	tst.b 138(%a2)
	jne .L428
	tst.b 140(%a2)
	jeq .L561
.L429:
	tst.b 170(%a2)
	jeq .L562
.L430:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L563
	clr.b 170(%a2)
	clr.b 140(%a2)
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	jra .L428
.L551:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 36(%a2),-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L546:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L564
.L382:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L564
.L381:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L564
.L467:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L471
	tst.b 168(%a2)
	jeq .L471
	tst.b 128(%a2)
	jne .L471
	tst.b 126(%a2)
	jne .L472
	clr.l 16(%a3)
.L472:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	pea 1.w
	move.b %d2,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 352(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	move.b #1,126(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 127(%a2)
	clr.b 134(%a2)
	clr.b 135(%a2)
	lea (32,%sp),%sp
	cmp.l #280,248(%a2)
	jgt .L350
	tst.b 158(%a2)
	jne .L473
	move.l 198(%a2),%d0
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jne .L474
	move.l 202(%a2),%d0
.L474:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L525:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L350
.L526:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 140(%a2)
	move.b #1,180(%a2)
	clr.l 282(%a2)
	moveq #90,%d1
	move.l %d1,252(%a2)
	addq.l #4,%sp
	jra .L350
.L471:
	and.l JAGPAD_DOWN,%d0
	jeq .L475
	tst.b 168(%a2)
	jeq .L475
	tst.b 128(%a2)
	jne .L475
	tst.b 131(%a2)
	jne .L476
	move.b #1,131(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.l 16(%a3)
.L476:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 40(%a2),-(%sp)
	move.l 368(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L475:
	tst.l %d3
	jeq .L477
	tst.b 144(%a2)
	jeq .L477
	tst.b 128(%a2)
	jne .L479
	clr.b 144(%a2)
	clr.b 230(%a2)
	move.b #1,128(%a2)
	clr.l 16(%a3)
	move.l 286(%a2),282(%a2)
	clr.b 180(%a2)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L479:
	move.l 190(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L481
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L481
.L482:
	tst.b 138(%a2)
	jeq .L484
	tst.b 180(%a2)
	jne .L484
	tst.b 128(%a2)
	jeq .L484
.L483:
	tst.b 139(%a2)
	jne .L484
	tst.b 138(%a2)
	jne .L485
	clr.b 145(%a2)
	move.b #1,230(%a2)
	move.b #1,127(%a2)
	move.b #1,138(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L485:
	tst.b 170(%a2)
	jeq .L565
.L486:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L566
	clr.b 170(%a2)
	clr.b 138(%a2)
.L487:
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
.L484:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L489
	and.l JAGPAD_7,%d0
	jne .L489
.L490:
	tst.b 139(%a2)
	jeq .L492
	tst.b 180(%a2)
	jne .L492
	tst.b 128(%a2)
	jeq .L492
.L491:
	tst.b 138(%a2)
	jne .L492
	tst.b 139(%a2)
	jne .L493
	clr.b 145(%a2)
	move.b #1,230(%a2)
	move.b #1,139(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L493:
	tst.b 170(%a2)
	jeq .L567
.L494:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L568
	clr.b 170(%a2)
	clr.b 139(%a2)
.L495:
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L492:
	tst.l 16(%a3)
	jne .L497
	tst.b 138(%a2)
	jne .L497
	tst.b 139(%a2)
	jeq .L569
.L497:
	tst.b 128(%a2)
	jeq .L350
	tst.b 180(%a2)
	jne .L498
	move.w raptor_ticks,%d2
	ext.l %d2
	cmp.l 236(%a2),%d2
	jle .L499
	tst.b 170(%a2)
	jne .L499
	move.l 282(%a2),%d3
	move.l 252(%a2),-(%sp)
	jsr ___floatsisf
	lea ___addsf3,%a4
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,252(%a2)
	move.l %d3,(%sp)
	move.l 278(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,282(%a2)
	move.l %d2,236(%a2)
.L499:
	tst.b 138(%a2)
	jne .L498
	tst.b 139(%a2)
	jeq .L570
.L498:
	clr.l -(%sp)
	move.l 282(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L500
	moveq #89,%d1
	cmp.l 252(%a2),%d1
	jlt .L571
.L500:
	tst.b 180(%a2)
	jeq .L350
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L350
	move.b #1,168(%a2)
	clr.b 128(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L350
.L406:
	tst.b 131(%a2)
	jeq .L409
	clr.b 131(%a2)
.L409:
	tst.b 133(%a2)
	jne .L410
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 44(%a2),-(%sp)
	move.l 372(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L481:
	tst.b 128(%a2)
	jeq .L482
	tst.b 180(%a2)
	jne .L482
	tst.b 230(%a2)
	jeq .L483
	jra .L482
.L489:
	tst.b 128(%a2)
	jeq .L490
	tst.b 180(%a2)
	jne .L490
	tst.b 230(%a2)
	jeq .L491
	jra .L490
.L477:
	tst.b 128(%a2)
	jne .L479
	tst.b 131(%a2)
	jne .L572
	tst.b 132(%a2)
	jne .L573
	tst.b 126(%a2)
	jne .L574
.L504:
	tst.b 124(%a2)
	jne .L505
	move.b #1,124(%a2)
	clr.b 127(%a2)
.L505:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 12(%a2),-(%sp)
	move.l 340(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L410:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 48(%a2),-(%sp)
	move.l 376(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 48(%a2),(%sp)
.L530:
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L350
	clr.b 133(%a2)
	jra .L350
.L572:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%a2),-(%sp)
	move.l 368(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L350
	clr.b 131(%a2)
	jra .L350
.L408:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 56(%a2),-(%sp)
	move.l 384(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 56(%a2),(%sp)
	jra .L530
.L568:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 408(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L495
.L567:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 408(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jeq .L495
	jra .L494
.L553:
	lea ___floatsisf,%a4
	move.l 270(%a2),-(%sp)
	jsr (%a4)
	move.l 218(%a2),(%sp)
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
	move.l 282(%a2),%d2
	move.l 252(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,252(%a2)
	move.l %d2,(%sp)
	move.l 278(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,282(%a2)
	lea (16,%sp),%sp
	jra .L436
.L473:
	move.l 226(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L525
.L469:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L350
	move.l 226(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L525
.L561:
	clr.b 145(%a2)
	move.b #1,230(%a2)
	move.b #1,140(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L429
.L550:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 404(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
	jra .L420
.L549:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 404(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jne .L422
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
	jra .L420
.L555:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 404(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L451
.L554:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 404(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jeq .L451
	jra .L450
.L560:
	lea ___floatsisf,%a4
	move.l 270(%a2),-(%sp)
	jsr (%a4)
	move.l 218(%a2),%d1
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
	move.l 282(%a2),%d2
	move.l 252(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,252(%a2)
	move.l %d2,(%sp)
	move.l 278(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,282(%a2)
	lea (16,%sp),%sp
	jra .L464
.L559:
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,181(%a2)
	addq.l #8,%sp
	tst.b 170(%a2)
	jne .L464
	jra .L560
.L557:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 412(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L459
.L556:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 412(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jeq .L459
	jra .L458
.L574:
	clr.b 158(%a2)
	clr.b 126(%a2)
	clr.l 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L504
.L573:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 44(%a2),-(%sp)
	move.l 372(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L350
	clr.b 132(%a2)
	jra .L350
.L570:
	moveq #1,%d0
	move.l %d0,16(%a3)
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 360(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L498
.L571:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 138(%a2)
	clr.b 139(%a2)
	move.b #1,180(%a2)
	clr.l 282(%a2)
	moveq #90,%d3
	move.l %d3,252(%a2)
	addq.l #4,%sp
	jra .L350
.L569:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L548:
	clr.b 145(%a2)
	move.b #1,230(%a2)
	move.b #1,138(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L421
.L563:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 412(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	jra .L428
.L562:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 412(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jne .L430
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	jra .L428
.L558:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.l 36(%a2),-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L350
.L552:
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,181(%a2)
	addq.l #8,%sp
	tst.b 170(%a2)
	jne .L436
	jra .L553
.L566:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 404(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L487
.L565:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 404(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jeq .L487
	jra .L486
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 160(%a2)
	jeq .L576
	moveq #-1,%d0
	cmp.l 270(%a2),%d0
	seq %d0
	neg.b %d0
	move.b %d0,_walkForward
	tst.b 166(%a2)
	jeq .L578
	clr.b 166(%a2)
	clr.l 16(%a3)
	move.l 298(%a2),%d0
	jle .L579
	tst.b 161(%a2)
	jne .L579
	move.b #1,161(%a2)
.L578:
	tst.b 167(%a2)
	jeq .L580
.L616:
	clr.b 167(%a2)
	clr.l 16(%a3)
	move.b #1,125(%a2)
	moveq #90,%d1
	move.l %d1,252(%a2)
	move.l (%a2),%d0
	move.b #1,%d1
	cmp.l %d0,%d1
	jeq .L581
	move.b #2,%d1
	cmp.l %d0,%d1
	jeq .L607
.L580:
	tst.b 161(%a2)
	jne .L608
.L583:
	tst.b 162(%a2)
	jne .L609
	tst.b 125(%a2)
	jne .L610
	tst.b 164(%a2)
	jeq .L587
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L611
.L587:
	tst.b 159(%a2)
	jeq .L592
	tst.b 128(%a2)
	jne .L592
	tst.b 130(%a2)
	jne .L592
	tst.b 129(%a2)
	jne .L592
	tst.b 157(%a2)
	jne .L592
	tst.b 127(%a2)
	jne .L592
	tst.b 274(%a2)
	jeq .L593
	clr.b 274(%a2)
	clr.l 16(%a3)
.L593:
	tst.b 275(%a2)
	jeq .L612
	tst.l 16(%a3)
	jle .L613
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L604:
	move.l 28(%a2),-(%sp)
	move.l 356(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L576:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L611:
	clr.b 164(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 264(%a2)
	jeq .L588
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L588:
	move.l 256(%a2),%d0
	subq.l #1,%d0
	move.l %d0,256(%a2)
	jgt .L589
	clr.l 256(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
.L589:
	move.l sprite,%a0
	tst.b 276(%a2)
	jne .L614
	move.l %d0,9496(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,9416(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L592:
	tst.b 163(%a2)
	jne .L615
.L599:
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
	tst.b 124(%a2)
	jeq .L576
.L619:
	move.l 186(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 250(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w 254(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L608:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 16(%a2),-(%sp)
	move.l 344(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 260(%a2)
	jle .L576
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	move.b #1,162(%a2)
	lea (16,%sp),%sp
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L579:
	move.b #1,162(%a2)
	clr.b 161(%a2)
	addq.l #1,%d0
	move.l %d0,298(%a2)
	tst.b 167(%a2)
	jeq .L580
	jra .L616
.L615:
	move.l 270(%a2),%d3
	move.l %d3,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	lea ___mulsf3,%a4
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l 226(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d3,%d1
	jeq .L617
	moveq #-1,%d1
	cmp.l %d3,%d1
	jeq .L618
.L601:
	add.l %d0,248(%a2)
.L602:
	move.l 232(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L599
	clr.b 163(%a2)
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
	tst.b 124(%a2)
	jne .L619
	jra .L576
.L607:
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandlerb
	addq.l #8,%sp
	tst.b 161(%a2)
	jeq .L583
	jra .L608
.L609:
	move.l 112(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L620
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L621:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L581:
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandlerb
	addq.l #8,%sp
	tst.b 161(%a2)
	jeq .L583
	jra .L608
.L610:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 20(%a2),-(%sp)
	move.l 348(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L620:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 266(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 160(%a2)
	addq.l #4,%sp
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L621
.L618:
	tst.l %d0
	jle .L601
.L603:
	tst.b 302(%a2)
	jeq .L602
	add.l %d0,248(%a2)
	jra .L602
.L613:
	clr.b 159(%a2)
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L604
.L617:
	tst.l %d0
	jlt .L603
	add.l %d0,248(%a2)
	jra .L602
.L614:
	move.l %d0,9304(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L592
.L612:
	move.l 28(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L595
	move.b #1,275(%a2)
	move.l 270(%a2),%d0
	neg.l %d0
	move.l %d0,270(%a2)
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L622
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
.L595:
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 28(%a2),-(%sp)
	move.l 356(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L576
.L622:
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
	jra .L595
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
