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
	move.l %d0,270(%a0)
	move.l #256,%d0
	move.l %d0,248(%a0)
	move.w 12(%a1),%a1
	move.l %a1,252(%a0)
	unlk %fp
	rts
.L21:
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
	jne .L27
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
.L27:
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
	tst.b 157(%a2)
	jne .L71
	tst.b 146(%a2)
	jeq .L171
.L72:
	move.b 150(%a2),%d0
	jne .L76
.L77:
	move.l 260(%a2),%d2
	tst.b 264(%a2)
	jne .L172
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jle .L173
.L85:
	move.l sprite,%a0
	tst.b 276(%a2)
	jne .L158
.L86:
	move.l %d0,9496(%a0)
	moveq #78,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	add.w %d2,%d0
	add.w %d0,%d0
	move.w %d0,9416(%a0)
.L87:
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
	jeq .L88
	move.l 294(%a2),282(%a2)
.L88:
	tst.b 146(%a2)
	jne .L89
	tst.b 147(%a2)
	jne .L89
	tst.b 151(%a2)
	jne .L89
	tst.b 149(%a2)
	jne .L89
	tst.b 148(%a2)
	jne .L94
	tst.b 150(%a2)
	jne .L94
	tst.b %d0
	jeq .L95
.L94:
	move.l 266(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 276(%a2),%d2
	move.l 266(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L97
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L174
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L93:
	move.b 147(%a2),%d1
	jne .L99
	tst.b 148(%a2)
	jne .L99
	tst.b 150(%a2)
	jeq .L95
.L99:
	move.l 248(%a2),%a4
	move.l 270(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L175
.L100:
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L176
.L101:
	tst.b %d1
	jne .L102
.L195:
	tst.b 149(%a2)
	jne .L102
	tst.b 148(%a2)
	jne .L177
	tst.b 150(%a2)
	jne .L178
.L71:
	tst.b 146(%a2)
	jeq .L153
	tst.b 157(%a2)
	jne .L107
.L153:
	move.b 147(%a2),%d0
	jeq .L109
	tst.b 157(%a2)
	jne .L179
.L109:
	tst.b 148(%a2)
	jeq .L78
	tst.b 157(%a2)
	jne .L180
.L111:
	tst.b 151(%a2)
	jeq .L116
	tst.b 157(%a2)
	jne .L181
.L116:
	tst.b 152(%a2)
	jeq .L117
	tst.b 157(%a2)
	jeq .L117
	tst.b 155(%a2)
	jne .L182
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jle .L70
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
	jeq .L183
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L184
.L120:
	add.l %d0,248(%a2)
.L121:
	move.b 153(%a2),%d3
	move.l 282(%a2),%d2
	tst.b %d3
	jne .L123
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
.L123:
	move.l %d2,-(%sp)
	move.l 290(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L124
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L163
.L124:
	tst.b 154(%a2)
	jne .L144
	tst.b %d3
	jeq .L185
.L145:
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
	jeq .L143
	move.b #1,154(%a2)
	clr.b 153(%a2)
.L143:
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
.L70:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L171:
	tst.b 147(%a2)
	jne .L72
	tst.b 148(%a2)
	jne .L72
	tst.b 150(%a2)
	jne .L76
	tst.b 151(%a2)
	jne .L77
	tst.b 149(%a2)
	jne .L77
	tst.b 152(%a2)
	jne .L77
.L78:
	tst.b 149(%a2)
	jeq .L111
	tst.b 157(%a2)
	jeq .L111
.L180:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 240(%a2),%d0
	move.l 270(%a2),%d2
	cmp.l %a0,%d0
	jle .L112
.L154:
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
	jeq .L70
.L193:
	clr.b 148(%a2)
	clr.b 149(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L76:
	move.l 260(%a2),%d2
	tst.b 264(%a2)
	jne .L186
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jle .L187
.L80:
	move.l sprite,%a0
	tst.b 276(%a2)
	jne .L158
.L81:
	move.l %d0,9496(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,9416(%a0)
	jra .L87
.L117:
	tst.b 150(%a2)
	jeq .L133
	tst.b 157(%a2)
	jeq .L133
	tst.b 155(%a2)
	jne .L188
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jle .L70
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
	jeq .L189
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L190
.L136:
	add.l %d0,248(%a2)
.L137:
	move.b 153(%a2),%d3
	move.l 282(%a2),%d2
	tst.b %d3
	jne .L139
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
.L139:
	move.l %d2,-(%sp)
	move.l 290(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L140
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L163
.L140:
	tst.b 154(%a2)
	jne .L144
	tst.b %d3
	jne .L145
	move.l 266(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L145
.L133:
	tst.b 156(%a2)
	jeq .L70
	tst.b 157(%a2)
	jeq .L70
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
	jeq .L70
	clr.b 157(%a2)
	clr.b 156(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L107:
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
	jeq .L70
	clr.b 146(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L179:
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
	jeq .L70
	clr.b 147(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L158:
	move.l %d0,9304(%a0)
	jra .L87
.L112:
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
	jeq .L191
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L192
.L115:
	add.l 248(%a2),%d0
	move.l %d0,248(%a2)
.L197:
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
	jeq .L70
	jra .L193
.L172:
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jgt .L85
	jra .L173
.L186:
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 256(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,256(%a2)
	jgt .L80
	jra .L187
.L173:
	clr.l 256(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 276(%a2)
	jeq .L86
	jra .L158
.L187:
	clr.l 256(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 276(%a2)
	jeq .L81
	jra .L158
.L181:
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
	jeq .L70
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
.L89:
	moveq #0,%d1
	move.b 276(%a2),%d1
	move.l 266(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L194
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L93
.L176:
	lea (-40,%a4),%a4
	tst.b %d1
	jeq .L195
.L102:
	move.l %d0,-(%sp)
	moveq #-10,%d0
	add.l 252(%a2),%d0
	move.l %d0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z10bloodSprayiii
	lea (12,%sp),%sp
	jra .L71
.L95:
	tst.b 149(%a2)
	jeq .L71
	clr.b %d1
	move.l 248(%a2),%a4
	move.l 270(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L100
.L175:
	lea (40,%a4),%a4
	jra .L101
.L194:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L93
.L182:
	moveq #19,%d0
	add.l 236(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L70
	clr.b 152(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	move.b #1,156(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,252(%a2)
.L196:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L188:
	moveq #19,%d0
	add.l 236(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L70
	clr.b 150(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	move.b #1,156(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,252(%a2)
	jra .L196
.L178:
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
	jra .L71
.L192:
	tst.l %d0
	jle .L115
.L160:
	tst.b 302(%a2)
	jeq .L154
	add.l 248(%a2),%d0
	move.l %d0,248(%a2)
	jra .L197
.L184:
	tst.l %d0
	jle .L120
.L155:
	tst.b 302(%a2)
	jeq .L121
	add.l %d0,248(%a2)
	jra .L121
.L190:
	tst.l %d0
	jle .L136
.L156:
	tst.b 302(%a2)
	jeq .L137
	add.l %d0,248(%a2)
	jra .L137
.L185:
	move.l 266(%a2),%d2
	lea RAPTOR_random,%a4
	jsr (%a4)
	btst #0,%d0
	jne .L198
	jsr (%a4)
	btst #0,%d0
	jne .L199
	move.l %d2,-(%sp)
	jsr __Z17sfxAnnouncerLaughP12SoundHandler
	addq.l #4,%sp
	jra .L145
.L163:
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
	jra .L70
.L177:
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
	jra .L71
.L191:
	tst.l %d0
	jlt .L160
	add.l 248(%a2),%d0
	move.l %d0,248(%a2)
	jra .L197
.L144:
	move.l 252(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L146
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
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L70
.L174:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L93
.L97:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	jra .L93
.L146:
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
	jra .L70
.L183:
	tst.l %d0
	jlt .L155
	add.l %d0,248(%a2)
	jra .L121
.L189:
	tst.l %d0
	jlt .L156
	add.l %d0,248(%a2)
	jra .L137
.L198:
	move.l %d2,-(%sp)
	jsr __Z11sfxCrowdAwwP12SoundHandler
	addq.l #4,%sp
	jra .L145
.L199:
	move.l %d2,-(%sp)
	jsr __Z21sfxAnnouncerExcellentP12SoundHandler
	addq.l #4,%sp
	jra .L145
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 157(%a0),%d0
	jne .L202
	tst.b 132(%a0)
	jne .L202
.L203:
	tst.b 134(%a1)
	jne .L220
.L205:
	tst.b 135(%a1)
	jeq .L207
	tst.b 131(%a0)
	jne .L207
	move.b #1,147(%a0)
	moveq #2,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
.L206:
	tst.b %d0
	jne .L201
.L218:
	tst.b 132(%a0)
	jeq .L216
	tst.b 131(%a0)
	jne .L217
.L216:
	tst.b 142(%a1)
	jeq .L201
	move.b #1,151(%a0)
	moveq #4,%d0
	move.l %d0,260(%a0)
	clr.b 264(%a0)
.L201:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L202:
	tst.b 161(%a0)
	jne .L203
	tst.b %d0
	jne .L201
	tst.b 132(%a0)
	jeq .L218
	move.b #1,133(%a0)
	move.b #1,164(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
	jra .L218
.L220:
	tst.b 131(%a0)
	jne .L205
	move.b #1,146(%a0)
	moveq #2,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L218
	jra .L201
.L207:
	tst.b 136(%a1)
	jeq .L208
	tst.b 131(%a0)
	jne .L208
	move.b #1,146(%a0)
	moveq #5,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L218
	jra .L201
.L208:
	tst.b 137(%a1)
	jeq .L209
	tst.b 131(%a0)
	jne .L209
	move.b #1,148(%a0)
	moveq #5,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L218
	jra .L201
.L209:
	tst.b 143(%a1)
	jeq .L210
	tst.b 131(%a0)
	jeq .L221
.L210:
	tst.b 138(%a1)
	jeq .L211
	move.b #1,149(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #5,%d1
	move.l %d1,260(%a0)
	move.b #1,264(%a0)
	tst.b %d0
	jeq .L218
	jra .L201
.L217:
	move.b #1,133(%a0)
	move.b #1,164(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,236(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L211:
	tst.b 139(%a1)
	jne .L222
	tst.b 141(%a1)
	jeq .L213
	move.b #1,150(%a0)
	clr.b 168(%a1)
	move.b #1,169(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #8,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L218
	jra .L201
.L221:
	move.b #1,148(%a0)
	moveq #6,%d1
	move.l %d1,260(%a0)
	move.b #1,264(%a0)
	tst.b %d0
	jeq .L218
	jra .L201
.L222:
	move.b #1,149(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #4,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L218
	jra .L201
.L213:
	tst.b 140(%a1)
	jeq .L206
	move.b #1,152(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #6,%d1
	move.l %d1,260(%a0)
	clr.b 264(%a0)
	tst.b %d0
	jeq .L218
	jra .L201
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15416,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 158(%a2)
	jeq .L225
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L239
.L225:
	tst.b 158(%a3)
	jeq .L226
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L240
.L226:
	pea 15.w
	pea 12.w
	pea 15.w
	pea 12.w
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L224
	move.l colliders,%d4
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a4
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L229
.L244:
	cmp.w #0,%a0
	jlt .L224
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
	jeq .L241
	moveq #27,%d3
	cmp.l %d0,%d3
	jeq .L242
	moveq #30,%d3
	cmp.l %d0,%d3
	jne .L234
	moveq #27,%d5
	cmp.l %d1,%d5
	jeq .L243
.L237:
	addq.l #8,%d2
.L245:
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L244
.L229:
	cmp.w #0,%a0
	jge .L237
.L224:
	movem.l -28(%fp),#7228
	unlk %fp
	rts
.L242:
	moveq #28,%d5
	cmp.l %d1,%d5
	jne .L237
	tst.b 126(%a2)
	jeq .L237
	move.l 248(%a2),%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L237
	cmp.l #328,%d0
	jgt .L237
	move.l 248(%a3),%d0
	cmp.l %d0,%d1
	jge .L237
	cmp.l #328,%d0
	jgt .L237
	move.b #1,158(%a2)
	move.b #1,163(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a3)
	addq.l #8,%d2
	jra .L245
.L241:
	moveq #28,%d5
	cmp.l %d1,%d5
	jne .L237
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L245
.L234:
	moveq #28,%d3
	cmp.l %d0,%d3
	jne .L237
	moveq #27,%d5
	cmp.l %d1,%d5
	jne .L237
	tst.b 126(%a3)
	jeq .L237
	move.b #1,158(%a3)
	move.b #1,163(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	addq.l #8,%d2
	jra .L245
.L243:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L245
.L239:
	clr.b 158(%a2)
	jra .L225
.L240:
	clr.b 158(%a3)
	jra .L226
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 270(%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L261
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L262
.L250:
	move.l 270(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L263
.L251:
	moveq #-1,%d1
	cmp.l %d0,%d1
	jne .L247
	move.l 248(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 248(%a1),%d0
	jge .L247
.L258:
	tst.b 159(%a0)
	jne .L247
	clr.b 275(%a0)
	move.b #1,159(%a0)
	move.b #1,274(%a0)
.L247:
	unlk %fp
	rts
.L262:
	move.l 248(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 248(%a0),%d0
	jge .L250
	tst.b 159(%a1)
	jne .L250
.L264:
	clr.b 275(%a1)
	move.b #1,159(%a1)
	move.b #1,274(%a1)
	move.l 270(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L251
.L263:
	move.l 248(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 248(%a0),%d0
	jlt .L258
	unlk %fp
	rts
.L261:
	move.l 248(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 248(%a1),%d0
	jge .L250
	tst.b 159(%a1)
	jne .L250
	jra .L264
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
	jne .L274
	move.l 256(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,256(%a2)
	jle .L275
.L270:
	move.l sprite,%a0
	tst.b 276(%a2)
	jne .L276
.L271:
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
.L274:
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 256(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,256(%a2)
	jgt .L270
.L275:
	clr.l 256(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 276(%a2)
	jeq .L271
.L276:
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
	jeq .L282
	addq.l #2,248(%a0)
.L278:
	unlk %fp
	rts
.L282:
	tst.b 302(%a0)
	jeq .L278
	addq.l #2,248(%a0)
	jra .L278
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 270(%a0),%d0
	jeq .L288
	subq.l #2,248(%a0)
.L284:
	unlk %fp
	rts
.L288:
	tst.b 302(%a0)
	jeq .L284
	subq.l #2,248(%a0)
	jra .L284
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
	jeq .L291
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
.L291:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L299
	moveq #6,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	unlk %fp
	rts
.L299:
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
	jeq .L319
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L320
.L317:
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L320:
	cmp.l #328,248(%a2)
	jle .L317
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jne .L313
	cmp.l #328,248(%a2)
	jle .L317
	moveq #10,%d0
	move.l 12(%fp),%a0
	cmp.l 248(%a0),%d0
	slt %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L319:
	moveq #11,%d0
	cmp.l 248(%a2),%d0
	jlt .L317
	jsr __Z18cameraIsAtLeftWallv
	tst.b %d0
	jne .L313
	moveq #11,%d0
	cmp.l 248(%a2),%d0
	jlt .L317
	move.l 12(%fp),%a0
	cmp.l #280,248(%a0)
	sle %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L313:
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
	jeq .L329
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L330
.L324:
	add.l %d1,248(%a0)
.L322:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L330:
	tst.l %d1
	jle .L324
.L326:
	tst.b 302(%a0)
	jeq .L322
	add.l %d1,248(%a0)
	jra .L322
.L329:
	tst.l %d1
	jlt .L326
	add.l %d1,248(%a0)
	jra .L322
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 157(%a2)
	jne .L333
	tst.b 126(%a2)
	jeq .L534
.L334:
	clr.b 124(%a2)
.L336:
	move.l 194(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,190(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L535
.L337:
	tst.b 131(%a2)
	jeq .L338
	tst.b 145(%a2)
	jeq .L338
	tst.b 168(%a2)
	jeq .L338
	tst.b 141(%a2)
	jne .L340
	clr.b 145(%a2)
	move.b #1,141(%a2)
	move.b #1,127(%a2)
	clr.b 131(%a2)
	clr.l 16(%a3)
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L340:
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 169(%a2)
	jeq .L536
.L342:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 172(%a2),%d0
	cmp.l %a0,%d0
	jgt .L537
	clr.b 169(%a2)
.L345:
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L538
.L347:
	move.l 190(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L504
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L504
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L539
.L504:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L332
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L332
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L332
	and.l JAGPAD_RIGHT,%d0
	jne .L332
	move.b #1,144(%a2)
.L332:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L333:
	clr.b 124(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L534:
	tst.b 131(%a2)
	jne .L334
	tst.b 128(%a2)
	jne .L334
	tst.b 130(%a2)
	jne .L334
	tst.b 129(%a2)
	jne .L334
	tst.b 127(%a2)
	jeq .L336
	clr.b 124(%a2)
	jra .L336
.L535:
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L337
.L338:
	tst.b 141(%a2)
	jne .L340
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L348
	tst.l %d1
	jeq .L349
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L350
	moveq #1,%d3
	cmp.l 270(%a2),%d3
	jeq .L348
.L350:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L349
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jeq .L348
.L349:
	tst.b 135(%a2)
	jeq .L540
.L352:
	move.l 64(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L359
	clr.b 135(%a2)
.L359:
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
	jra .L347
.L536:
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
	jne .L342
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L347
	jra .L538
.L540:
	tst.l %d1
	jeq .L360
	tst.b 145(%a2)
	jeq .L360
	tst.b 168(%a2)
	jeq .L360
	tst.b 128(%a2)
	jne .L360
	tst.b 134(%a2)
	jne .L362
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
	jeq .L366
	moveq #7,%d3
	cmp.l %d0,%d3
	jeq .L367
	move.b #4,%d4
	cmp.l %d0,%d4
	jeq .L541
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L369:
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
	jra .L347
.L360:
	tst.b 134(%a2)
	jne .L362
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L370
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L370
	moveq #1,%d3
	cmp.l 270(%a2),%d3
	jeq .L371
.L370:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L372
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L372
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jeq .L371
.L372:
	tst.b 142(%a2)
	jeq .L542
.L374:
	move.l 92(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L381
	clr.b 142(%a2)
.L381:
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
	jra .L347
.L348:
	tst.b 145(%a2)
	jeq .L349
	tst.b 168(%a2)
	jeq .L349
	tst.b 128(%a2)
	jne .L349
	tst.b 135(%a2)
	jne .L352
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
	jeq .L356
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L357
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L543
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L545:
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
	jra .L347
.L539:
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L504
	move.b #1,145(%a2)
	jra .L504
.L362:
	move.l 60(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L369
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
	jra .L347
.L538:
	clr.b 141(%a2)
	move.b #1,168(%a2)
	jra .L347
.L542:
	tst.l %d1
	jeq .L382
	moveq #1,%d4
	cmp.l 270(%a2),%d4
	jeq .L383
.L382:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L384
	moveq #-1,%d3
	cmp.l 270(%a2),%d3
	jeq .L383
.L384:
	tst.b 143(%a2)
	jne .L386
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L389
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L390
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L391
	moveq #1,%d4
	cmp.l 270(%a2),%d4
	jeq .L389
.L391:
	tst.l %d1
	jeq .L390
	moveq #-1,%d3
	cmp.l 270(%a2),%d3
	jeq .L389
.L390:
	tst.b 137(%a2)
	jne .L393
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L396
	tst.b 145(%a2)
	jeq .L396
	tst.b 168(%a2)
	jeq .L396
	tst.b 128(%a2)
	jne .L396
	tst.b 136(%a2)
	jne .L398
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
.L400:
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
	jra .L347
.L386:
	move.l 96(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L388
	clr.b 143(%a2)
.L388:
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
	jra .L347
.L371:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L372
	tst.b 145(%a2)
	jeq .L372
	tst.b 168(%a2)
	jeq .L372
	tst.b 128(%a2)
	jne .L372
	tst.b 142(%a2)
	jne .L374
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
	jeq .L378
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L379
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L544
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L562:
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
	jra .L347
.L383:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L384
	tst.b 145(%a2)
	jeq .L384
	tst.b 168(%a2)
	jeq .L384
	tst.b 128(%a2)
	jne .L384
	tst.b 143(%a2)
	jne .L386
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
	jra .L347
.L393:
	move.l 72(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L395
	clr.b 137(%a2)
.L395:
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
	jra .L347
.L389:
	tst.b 145(%a2)
	jeq .L390
	tst.b 168(%a2)
	jeq .L390
	tst.b 128(%a2)
	jne .L390
	tst.b 137(%a2)
	jne .L393
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
	jra .L347
.L537:
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
	jne .L347
	jra .L345
.L543:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L545
.L357:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L545
.L356:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L545
.L396:
	tst.b 136(%a2)
	jne .L398
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jeq .L401
	tst.b 128(%a2)
	jne .L401
	tst.b 168(%a2)
	jeq .L401
	tst.b 132(%a2)
	jne .L402
	move.b #1,132(%a2)
	clr.l 16(%a3)
.L402:
	and.l JAGPAD_DOWN,%d0
	jeq .L403
	tst.b 131(%a2)
	jne .L404
	move.b #1,131(%a2)
	clr.b 126(%a2)
	clr.l 16(%a3)
.L404:
	tst.b 133(%a2)
	jne .L405
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
	jra .L347
.L398:
	move.l 68(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L400
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
	jra .L347
.L541:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L369
.L367:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L369
.L366:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L369
.L401:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L408
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L409
	moveq #1,%d4
	cmp.l 270(%a2),%d4
	jeq .L410
.L409:
	tst.l %d1
	jeq .L408
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jeq .L410
.L408:
	tst.b 129(%a2)
	jne .L412
	tst.l %d3
	jeq .L436
	tst.l %d1
	jeq .L437
	moveq #1,%d4
	cmp.l 270(%a2),%d4
	jeq .L438
.L437:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L436
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jeq .L438
.L436:
	tst.b 130(%a2)
	jne .L440
	tst.l %d1
	jeq .L464
	tst.b 168(%a2)
	jeq .L464
	tst.b 128(%a2)
	jne .L464
	tst.b 126(%a2)
	jne .L465
	clr.l 16(%a3)
.L465:
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
	jle .L347
	tst.b 158(%a2)
	jne .L466
	move.l 202(%a2),%d0
	moveq #-1,%d3
	cmp.l 270(%a2),%d3
	jne .L467
	move.l 198(%a2),%d0
.L467:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L523
.L410:
	tst.b 144(%a2)
	jeq .L408
	tst.b 168(%a2)
	jeq .L408
	tst.b 129(%a2)
	jne .L412
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
.L412:
	move.l 190(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L414
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L415
.L414:
	tst.b 129(%a2)
	jeq .L415
	tst.b 180(%a2)
	jne .L415
	tst.b 230(%a2)
	jeq .L416
.L415:
	tst.b 138(%a2)
	jeq .L417
	tst.b 180(%a2)
	jne .L417
	tst.b 129(%a2)
	jeq .L417
.L416:
	tst.b 140(%a2)
	jne .L417
	tst.b 138(%a2)
	jeq .L546
.L418:
	tst.b 170(%a2)
	jeq .L547
.L419:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L548
	clr.b 170(%a2)
	clr.b 138(%a2)
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
.L417:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L422
	and.l JAGPAD_7,%d0
	jeq .L423
.L422:
	tst.b 129(%a2)
	jeq .L423
	tst.b 180(%a2)
	jne .L423
	tst.b 230(%a2)
	jeq .L424
.L423:
	tst.b 140(%a2)
	jeq .L425
	tst.b 180(%a2)
	jne .L425
	tst.b 129(%a2)
	jne .L424
.L425:
	tst.l 16(%a3)
	jne .L430
	tst.b 138(%a2)
	jne .L430
	tst.b 140(%a2)
	jeq .L549
.L430:
	tst.b 129(%a2)
	jeq .L347
	tst.b 180(%a2)
	jne .L431
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jle .L431
	tst.b 181(%a2)
	jne .L432
	moveq #10,%d0
	add.l 182(%a2),%d0
	cmp.l %a0,%d0
	jge .L432
	tst.b 138(%a2)
	jne .L432
	tst.b 140(%a2)
	jeq .L550
.L432:
	tst.b 170(%a2)
	jeq .L551
.L433:
	tst.b 138(%a2)
	jne .L431
	tst.b 140(%a2)
	jne .L431
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
.L431:
	clr.l -(%sp)
	move.l 282(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L434
	moveq #89,%d0
	cmp.l 252(%a2),%d0
	jlt .L524
.L434:
	tst.b 180(%a2)
	jeq .L347
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
	jeq .L347
	move.b #1,168(%a2)
	clr.b 129(%a2)
.L526:
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 140(%a2)
	clr.b 181(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L347
.L438:
	tst.b 144(%a2)
	jeq .L436
	tst.b 168(%a2)
	jeq .L436
	tst.b 130(%a2)
	jne .L440
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
.L440:
	move.l 190(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L442
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L443
.L442:
	tst.b 130(%a2)
	jeq .L443
	tst.b 180(%a2)
	jne .L443
	tst.b 230(%a2)
	jne .L443
.L444:
	tst.b 140(%a2)
	jne .L445
	tst.b 138(%a2)
	jne .L446
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
.L446:
	tst.b 170(%a2)
	jeq .L552
.L447:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L553
	clr.b 170(%a2)
	clr.b 140(%a2)
.L448:
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
.L445:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L450
	and.l JAGPAD_7,%d0
	jeq .L451
.L450:
	tst.b 130(%a2)
	jeq .L451
	tst.b 180(%a2)
	jne .L451
	tst.b 230(%a2)
	jne .L451
.L452:
	tst.b 138(%a2)
	jne .L453
	tst.b 140(%a2)
	jne .L454
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
.L454:
	tst.b 170(%a2)
	jeq .L554
.L455:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L555
	clr.b 170(%a2)
	clr.b 140(%a2)
.L456:
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L453:
	tst.l 16(%a3)
	jne .L458
	tst.b 138(%a2)
	jne .L458
	tst.b 140(%a2)
	jeq .L556
.L458:
	tst.b 130(%a2)
	jeq .L347
	tst.b 180(%a2)
	jne .L459
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jle .L459
	tst.b 181(%a2)
	jne .L460
	moveq #10,%d0
	add.l 182(%a2),%d0
	cmp.l %a0,%d0
	jge .L460
	tst.b 138(%a2)
	jne .L460
	tst.b 140(%a2)
	jeq .L557
.L460:
	tst.b 170(%a2)
	jeq .L558
.L461:
	tst.b 138(%a2)
	jne .L459
	tst.b 140(%a2)
	jne .L459
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
.L459:
	clr.l -(%sp)
	move.l 282(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L462
	moveq #89,%d0
	cmp.l 252(%a2),%d0
	jlt .L524
.L462:
	tst.b 180(%a2)
	jeq .L347
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
	jeq .L347
	move.b #1,168(%a2)
	clr.b 130(%a2)
	jra .L526
.L443:
	tst.b 138(%a2)
	jeq .L445
	tst.b 180(%a2)
	jne .L445
	tst.b 130(%a2)
	jeq .L445
	jra .L444
.L451:
	tst.b 140(%a2)
	jeq .L453
	tst.b 180(%a2)
	jne .L453
	tst.b 130(%a2)
	jeq .L453
	jra .L452
.L424:
	tst.b 138(%a2)
	jne .L425
	tst.b 140(%a2)
	jeq .L559
.L426:
	tst.b 170(%a2)
	jeq .L560
.L427:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L561
	clr.b 170(%a2)
	clr.b 140(%a2)
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	jra .L425
.L549:
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
	jra .L347
.L544:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L562
.L379:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L562
.L378:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L562
.L464:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L468
	tst.b 168(%a2)
	jeq .L468
	tst.b 128(%a2)
	jne .L468
	tst.b 126(%a2)
	jne .L469
	clr.l 16(%a3)
.L469:
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
	jgt .L347
	tst.b 158(%a2)
	jne .L470
	move.l 198(%a2),%d0
	moveq #-1,%d4
	cmp.l 270(%a2),%d4
	jne .L471
	move.l 202(%a2),%d0
.L471:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L523:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L347
.L524:
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
	jra .L347
.L468:
	and.l JAGPAD_DOWN,%d0
	jeq .L472
	tst.b 168(%a2)
	jeq .L472
	tst.b 128(%a2)
	jne .L472
	tst.b 131(%a2)
	jne .L473
	move.b #1,131(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.l 16(%a3)
.L473:
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
	jra .L347
.L472:
	tst.l %d3
	jeq .L474
	tst.b 144(%a2)
	jeq .L474
	tst.b 128(%a2)
	jne .L476
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
.L476:
	move.l 190(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L478
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L478
.L479:
	tst.b 138(%a2)
	jeq .L481
	tst.b 180(%a2)
	jne .L481
	tst.b 128(%a2)
	jeq .L481
.L480:
	tst.b 139(%a2)
	jne .L481
	tst.b 138(%a2)
	jne .L482
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
.L482:
	tst.b 170(%a2)
	jeq .L563
.L483:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L564
	clr.b 170(%a2)
	clr.b 138(%a2)
.L484:
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
.L481:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L486
	and.l JAGPAD_7,%d0
	jne .L486
.L487:
	tst.b 139(%a2)
	jeq .L489
	tst.b 180(%a2)
	jne .L489
	tst.b 128(%a2)
	jeq .L489
.L488:
	tst.b 138(%a2)
	jne .L489
	tst.b 139(%a2)
	jne .L490
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
.L490:
	tst.b 170(%a2)
	jeq .L565
.L491:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L566
	clr.b 170(%a2)
	clr.b 139(%a2)
.L492:
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L489:
	tst.l 16(%a3)
	jne .L494
	tst.b 138(%a2)
	jne .L494
	tst.b 139(%a2)
	jeq .L499
.L494:
	tst.b 128(%a2)
	jeq .L347
	tst.b 180(%a2)
	jne .L495
	move.w raptor_ticks,%d2
	ext.l %d2
	cmp.l 236(%a2),%d2
	jle .L496
	tst.b 170(%a2)
	jne .L496
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
.L496:
	tst.b 138(%a2)
	jne .L495
	tst.b 139(%a2)
	jeq .L567
.L495:
	clr.l -(%sp)
	move.l 282(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L497
	moveq #89,%d1
	cmp.l 252(%a2),%d1
	jlt .L568
.L497:
	tst.b 180(%a2)
	jeq .L347
	move.l 32(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L499
	move.b #1,168(%a2)
	clr.b 128(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L499:
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
	jra .L347
.L403:
	tst.b 131(%a2)
	jeq .L406
	clr.b 131(%a2)
.L406:
	tst.b 133(%a2)
	jne .L407
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
	jra .L347
.L478:
	tst.b 128(%a2)
	jeq .L479
	tst.b 180(%a2)
	jne .L479
	tst.b 230(%a2)
	jeq .L480
	jra .L479
.L486:
	tst.b 128(%a2)
	jeq .L487
	tst.b 180(%a2)
	jne .L487
	tst.b 230(%a2)
	jeq .L488
	jra .L487
.L474:
	tst.b 128(%a2)
	jne .L476
	tst.b 131(%a2)
	jne .L569
	tst.b 132(%a2)
	jne .L570
	tst.b 126(%a2)
	jne .L571
.L502:
	tst.b 124(%a2)
	jne .L503
	move.b #1,124(%a2)
	clr.b 127(%a2)
.L503:
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
	jra .L347
.L407:
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
.L528:
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L347
	clr.b 133(%a2)
	jra .L347
.L561:
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
	jra .L425
.L560:
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
	jne .L427
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	jra .L425
.L405:
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
	jra .L528
.L551:
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
	jra .L433
.L470:
	move.l 226(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L523
.L466:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L347
	move.l 226(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L523
.L559:
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
	jra .L426
.L548:
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
	jra .L417
.L547:
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
	jne .L419
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 190(%a2),%d0
	jra .L417
.L553:
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
	jra .L448
.L552:
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
	jeq .L448
	jra .L447
.L546:
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
	jra .L418
.L569:
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
	jne .L347
	clr.b 131(%a2)
	jra .L347
.L566:
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
	jra .L492
.L565:
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
	jeq .L492
	jra .L491
.L571:
	clr.b 158(%a2)
	clr.b 126(%a2)
	clr.l 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L502
.L570:
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
	jne .L347
	clr.b 132(%a2)
	jra .L347
.L567:
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
	jra .L495
.L568:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 138(%a2)
	clr.b 139(%a2)
	move.b #1,180(%a2)
	clr.l 282(%a2)
	moveq #90,%d3
	move.l %d3,252(%a2)
	addq.l #4,%sp
	jra .L347
.L558:
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
	jra .L461
.L557:
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,181(%a2)
	addq.l #8,%sp
	tst.b 170(%a2)
	jne .L461
	jra .L558
.L555:
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
	jra .L456
.L554:
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
	jeq .L456
	jra .L455
.L556:
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
	jra .L347
.L550:
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,181(%a2)
	addq.l #8,%sp
	tst.b 170(%a2)
	jne .L433
	jra .L551
.L564:
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
	jra .L484
.L563:
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
	jeq .L484
	jra .L483
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 160(%a2)
	jeq .L573
	moveq #-1,%d0
	cmp.l 270(%a2),%d0
	seq %d0
	neg.b %d0
	move.b %d0,_walkForward
	tst.b 166(%a2)
	jeq .L575
	clr.b 166(%a2)
	clr.l 16(%a3)
	move.l 298(%a2),%d0
	jle .L576
	tst.b 161(%a2)
	jne .L576
	move.b #1,161(%a2)
.L575:
	tst.b 167(%a2)
	jeq .L577
.L613:
	clr.b 167(%a2)
	clr.l 16(%a3)
	move.b #1,125(%a2)
	moveq #90,%d1
	move.l %d1,252(%a2)
	move.l (%a2),%d0
	move.b #1,%d1
	cmp.l %d0,%d1
	jeq .L578
	move.b #2,%d1
	cmp.l %d0,%d1
	jeq .L604
.L577:
	tst.b 161(%a2)
	jne .L605
.L580:
	tst.b 162(%a2)
	jne .L606
	tst.b 125(%a2)
	jne .L607
	tst.b 164(%a2)
	jeq .L584
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L608
.L584:
	tst.b 159(%a2)
	jeq .L589
	tst.b 128(%a2)
	jne .L589
	tst.b 130(%a2)
	jne .L589
	tst.b 129(%a2)
	jne .L589
	tst.b 157(%a2)
	jne .L589
	tst.b 127(%a2)
	jne .L589
	tst.b 274(%a2)
	jeq .L590
	clr.b 274(%a2)
	clr.l 16(%a3)
.L590:
	tst.b 275(%a2)
	jeq .L609
	tst.l 16(%a3)
	jle .L610
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L601:
	move.l 28(%a2),-(%sp)
	move.l 356(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L573:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L608:
	clr.b 164(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 264(%a2)
	jeq .L585
	clr.b 264(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L585:
	move.l 256(%a2),%d0
	subq.l #1,%d0
	move.l %d0,256(%a2)
	jgt .L586
	clr.l 256(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
.L586:
	move.l sprite,%a0
	tst.b 276(%a2)
	jne .L611
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
.L589:
	tst.b 163(%a2)
	jne .L612
.L596:
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
	jeq .L573
.L616:
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
.L605:
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
	jle .L573
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
.L576:
	move.b #1,162(%a2)
	clr.b 161(%a2)
	addq.l #1,%d0
	move.l %d0,298(%a2)
	tst.b 167(%a2)
	jeq .L577
	jra .L613
.L612:
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
	jeq .L614
	moveq #-1,%d1
	cmp.l %d3,%d1
	jeq .L615
.L598:
	add.l %d0,248(%a2)
.L599:
	move.l 232(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L596
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
	jne .L616
	jra .L573
.L604:
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandlerb
	addq.l #8,%sp
	tst.b 161(%a2)
	jeq .L580
	jra .L605
.L606:
	move.l 112(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L617
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
.L618:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L578:
	moveq #0,%d0
	move.b 276(%a2),%d0
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandlerb
	addq.l #8,%sp
	tst.b 161(%a2)
	jeq .L580
	jra .L605
.L607:
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
.L617:
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
	jra .L618
.L615:
	tst.l %d0
	jle .L598
.L600:
	tst.b 302(%a2)
	jeq .L599
	add.l %d0,248(%a2)
	jra .L599
.L610:
	clr.b 159(%a2)
	move.l 270(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 248(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L601
.L614:
	tst.l %d0
	jlt .L600
	add.l %d0,248(%a2)
	jra .L599
.L611:
	move.l %d0,9304(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L589
.L609:
	move.l 28(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L592
	move.b #1,275(%a2)
	move.l 270(%a2),%d0
	neg.l %d0
	move.l %d0,270(%a2)
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L619
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
.L592:
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
	jra .L573
.L619:
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
	jra .L592
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
