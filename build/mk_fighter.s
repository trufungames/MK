#NO_APP
	.text
	.even
	.globl	__Z14fighterStartUpv
__Z14fighterStartUpv:
	link.w %fp,#0
	move.w raptor_ticks,%a0
	move.l %a0,_shadowTicks
	unlk %fp
	rts
	.even
	.globl	__Z11fighterHideP7Fighter
__Z11fighterHideP7Fighter:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 4(%a1),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d2
	move.l %d2,4(%a0,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,4(%a0,%d0.l)
	move.l (%sp)+,%d2
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
	jne .L22
	move.w #224,8(%a1)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a2
	move.w #224,8(%a2)
	moveq #1,%d1
	cmp.l (%a0),%d1
	jeq .L23
	moveq #-1,%d0
	move.l %d0,24(%a1)
	move.l %d0,24(%a2)
	move.l %d0,274(%a0)
.L19:
	move.w 8(%a1),%a2
	move.l %a2,252(%a0)
	move.w 12(%a1),%a1
	move.l %a1,256(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L22:
	move.w #14,8(%a1)
	moveq #1,%d1
	move.l %d1,24(%a1)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a2
	move.w #14,8(%a2)
	moveq #1,%d0
	move.l %d0,24(%a2)
	move.l %d0,274(%a0)
	move.w 8(%a1),%a2
	move.l %a2,252(%a0)
	move.w 12(%a1),%a1
	move.l %a1,256(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L23:
	add.w #-16,8(%a1)
	add.w #-16,8(%a2)
	moveq #-1,%d0
	move.l %d0,24(%a1)
	move.l %d0,24(%a2)
	move.l %d0,274(%a0)
	jra .L19
	.even
	.globl	__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_
__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d2
	move.l #0x400ccccd,282(%a0)
	clr.l 286(%a0)
	move.l #0xc1900000,290(%a0)
	move.l #0xc1d00000,294(%a0)
	move.l #0xc1200000,298(%a0)
	move.l 16(%fp),270(%a0)
	move.l 20(%fp),308(%a0)
	move.l 24(%fp),312(%a0)
	move.l 28(%fp),316(%a0)
	move.l 32(%fp),320(%a0)
	move.l 36(%fp),332(%a0)
	move.l 40(%fp),336(%a0)
	move.l 44(%fp),324(%a0)
	move.l 48(%fp),328(%a0)
	move.l 52(%fp),340(%a0)
	clr.l 194(%a0)
	move.l #0x40000000,202(%a0)
	move.l #0x40000000,206(%a0)
	move.l #0x40900000,210(%a0)
	move.l #0x40600000,214(%a0)
	move.l #0x40d00000,218(%a0)
	clr.l 226(%a0)
	move.l #0x40f00000,222(%a0)
	move.l #0x3f800000,230(%a0)
	moveq #1,%d0
	move.l %d0,244(%a0)
	clr.l 248(%a0)
	clr.l 236(%a0)
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
	clr.b 234(%a0)
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
	moveq #50,%d1
	move.l %d1,172(%a0)
	move.b #20,%d0
	move.l %d0,176(%a0)
	move.b %d2,280(%a0)
	move.b #33,%d1
	move.l %d1,260(%a0)
	clr.l 264(%a0)
	clr.b 268(%a0)
	clr.b 278(%a0)
	clr.b 279(%a0)
	move.b #1,306(%a0)
	move.l sprite,%d0
	move.l 4(%a0),%d1
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%d1
	lsl.l #6,%d1
	move.l %d0,%a1
	add.l %d1,%a1
	moveq #1,%d1
	move.l %d1,4(%a1)
	tst.b %d2
	jne .L29
	moveq #34,%d2
	move.l %d2,190(%a0)
	moveq #33,%d1
	move.l %d1,186(%a0)
	move.b #2,%d2
	move.l %d2,198(%a0)
	move.l #210,252(%a0)
	moveq #-1,%d1
	move.l %d1,24(%a1)
	move.l %d1,274(%a0)
	move.w #6528,%a1
	move.w #222,%d1
	move.w #6336,%a2
	moveq #90,%d2
	move.l %d2,256(%a0)
	lea (%a2,%d0.l),%a2
	move.w %d1,8(%a2)
	move.w #100,12(%a2)
	lea (%a1,%d0.l),%a1
	move.w %d1,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
.L29:
	moveq #32,%d2
	move.l %d2,190(%a0)
	move.b #31,%d1
	move.l %d1,186(%a0)
	move.b #1,%d2
	move.l %d2,198(%a0)
	move.b #50,%d1
	move.l %d1,252(%a0)
	move.l %d2,24(%a1)
	move.l %d2,274(%a0)
	move.w #6144,%a1
	move.b #62,%d1
	move.w #5952,%a2
	moveq #90,%d2
	move.l %d2,256(%a0)
	lea (%a2,%d0.l),%a2
	move.w %d1,8(%a2)
	move.w #100,12(%a2)
	lea (%a1,%d0.l),%a1
	move.w %d1,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.l 302(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 274(%a0),-(%sp)
	move.l 256(%a0),-(%sp)
	move.l 252(%a0),-(%sp)
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
	jeq .L36
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L37
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L40
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L40:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L37:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L36:
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
	jeq .L47
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L47:
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
	jeq .L51
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L55
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L51:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L55:
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
	jle .L62
.L58:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L62:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L63
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L63:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L58
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
	jne .L69
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L70
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L70:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L69:
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
	jne .L73
	tst.b 146(%a2)
	jeq .L173
.L74:
	move.b 150(%a2),%d0
	jne .L78
.L79:
	move.l 264(%a2),%d2
	tst.b 268(%a2)
	jne .L174
	move.l 260(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,260(%a2)
	jle .L175
.L87:
	move.l sprite,%a0
	tst.b 280(%a2)
	jne .L160
.L88:
	move.l %d0,10264(%a0)
	moveq #78,%d2
	sub.w %d0,%d2
	move.w %d2,%d0
	add.w %d2,%d0
	add.w %d0,%d0
	move.w %d0,10184(%a0)
.L89:
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	clr.l 264(%a2)
	clr.l 226(%a2)
	move.b #1,157(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,240(%a2)
	move.l %a0,248(%a2)
	clr.l 16(%a3)
	move.l 294(%a2),286(%a2)
	move.b 152(%a2),%d0
	jeq .L90
	move.l 298(%a2),286(%a2)
.L90:
	tst.b 146(%a2)
	jne .L91
	tst.b 147(%a2)
	jne .L91
	tst.b 151(%a2)
	jne .L91
	tst.b 149(%a2)
	jne .L91
	tst.b 148(%a2)
	jne .L96
	tst.b 150(%a2)
	jne .L96
	tst.b %d0
	jeq .L97
.L96:
	move.l 270(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 280(%a2),%d2
	move.l 270(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L99
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L176
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L95:
	move.b 147(%a2),%d1
	jne .L101
	tst.b 148(%a2)
	jne .L101
	tst.b 150(%a2)
	jeq .L97
.L101:
	move.l 252(%a2),%a4
	move.l 274(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L177
.L102:
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L178
.L103:
	tst.b %d1
	jne .L104
.L197:
	tst.b 149(%a2)
	jne .L104
	tst.b 148(%a2)
	jne .L179
	tst.b 150(%a2)
	jne .L180
.L73:
	tst.b 146(%a2)
	jeq .L155
	tst.b 157(%a2)
	jne .L109
.L155:
	move.b 147(%a2),%d0
	jeq .L111
	tst.b 157(%a2)
	jne .L181
.L111:
	tst.b 148(%a2)
	jeq .L80
	tst.b 157(%a2)
	jne .L182
.L113:
	tst.b 151(%a2)
	jeq .L118
	tst.b 157(%a2)
	jne .L183
.L118:
	tst.b 152(%a2)
	jeq .L119
	tst.b 157(%a2)
	jeq .L119
	tst.b 155(%a2)
	jne .L184
	move.w raptor_ticks,%a0
	cmp.l 240(%a2),%a0
	jle .L72
	move.l 274(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 214(%a2),(%sp)
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
.L122:
	add.l %d0,252(%a2)
.L123:
	move.b 153(%a2),%d3
	move.l 286(%a2),%d2
	tst.b %d3
	jne .L125
	move.l 256(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,256(%a2)
	move.l 282(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,286(%a2)
.L125:
	move.l %d2,-(%sp)
	move.l 294(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L126
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L165
.L126:
	tst.b 154(%a2)
	jne .L146
	tst.b %d3
	jeq .L187
.L147:
	move.b #1,153(%a2)
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
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
	jeq .L145
	move.b #1,154(%a2)
	clr.b 153(%a2)
.L145:
	move.w raptor_ticks,%a0
	move.l %a0,240(%a2)
.L72:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L173:
	tst.b 147(%a2)
	jne .L74
	tst.b 148(%a2)
	jne .L74
	tst.b 150(%a2)
	jne .L78
	tst.b 151(%a2)
	jne .L79
	tst.b 149(%a2)
	jne .L79
	tst.b 152(%a2)
	jne .L79
.L80:
	tst.b 149(%a2)
	jeq .L113
	tst.b 157(%a2)
	jeq .L113
.L182:
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	add.l 244(%a2),%d0
	move.l 274(%a2),%d2
	cmp.l %a0,%d0
	jle .L114
.L156:
	move.l 252(%a2),%d0
	move.l %d2,-(%sp)
	move.l 256(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 108(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L72
.L195:
	clr.b 148(%a2)
	clr.b 149(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L78:
	move.l 264(%a2),%d2
	tst.b 268(%a2)
	jne .L188
	move.l 260(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,260(%a2)
	jle .L189
.L82:
	move.l sprite,%a0
	tst.b 280(%a2)
	jne .L160
.L83:
	move.l %d0,10264(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10184(%a0)
	jra .L89
.L119:
	tst.b 150(%a2)
	jeq .L135
	tst.b 157(%a2)
	jeq .L135
	tst.b 155(%a2)
	jne .L190
	move.w raptor_ticks,%a0
	cmp.l 240(%a2),%a0
	jle .L72
	move.l 274(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 214(%a2),(%sp)
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
.L138:
	add.l %d0,252(%a2)
.L139:
	move.b 153(%a2),%d3
	move.l 286(%a2),%d2
	tst.b %d3
	jne .L141
	move.l 256(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,256(%a2)
	move.l 282(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,286(%a2)
.L141:
	move.l %d2,-(%sp)
	move.l 294(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L142
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L165
.L142:
	tst.b 154(%a2)
	jne .L146
	tst.b %d3
	jne .L147
	move.l 270(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L147
.L135:
	tst.b 156(%a2)
	jeq .L72
	tst.b 157(%a2)
	jeq .L72
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 88(%a2),-(%sp)
	move.l 444(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 88(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L72
	clr.b 157(%a2)
	clr.b 156(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L109:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 100(%a2),-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 100(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L72
	clr.b 146(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L181:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 104(%a2),-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 104(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L72
	clr.b 147(%a2)
	clr.b 157(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L160:
	move.l %d0,10072(%a0)
	jra .L89
.L114:
	move.l %d2,%d3
	neg.l %d3
	move.l %d3,-(%sp)
	jsr ___floatsisf
	move.l 210(%a2),(%sp)
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
.L117:
	add.l 252(%a2),%d0
	move.l %d0,252(%a2)
.L199:
	move.l %d2,-(%sp)
	move.l 256(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 108(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L72
	jra .L195
.L174:
	clr.b 268(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 260(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,260(%a2)
	jgt .L87
	jra .L175
.L188:
	clr.b 268(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 260(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,260(%a2)
	jgt .L82
	jra .L189
.L175:
	clr.l 260(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 280(%a2)
	jeq .L88
	jra .L160
.L189:
	clr.l 260(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 280(%a2)
	jeq .L83
	jra .L160
.L183:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 116(%a2),-(%sp)
	move.l 440(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 116(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L72
	move.l 270(%a2),-(%sp)
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
.L91:
	moveq #0,%d1
	move.b 280(%a2),%d1
	move.l 270(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L196
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L178:
	lea (-40,%a4),%a4
	tst.b %d1
	jeq .L197
.L104:
	move.l %d0,-(%sp)
	moveq #-10,%d0
	add.l 256(%a2),%d0
	move.l %d0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z10bloodSprayiii
	lea (12,%sp),%sp
	jra .L73
.L97:
	tst.b 149(%a2)
	jeq .L73
	clr.b %d1
	move.l 252(%a2),%a4
	move.l 274(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L102
.L177:
	lea (40,%a4),%a4
	jra .L103
.L196:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L184:
	moveq #19,%d0
	add.l 240(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L72
	clr.b 152(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	move.b #1,156(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,256(%a2)
.L198:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L190:
	moveq #19,%d0
	add.l 240(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L72
	clr.b 150(%a2)
	clr.b 153(%a2)
	clr.b 154(%a2)
	clr.b 155(%a2)
	move.b #1,156(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,256(%a2)
	jra .L198
.L180:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	moveq #-10,%d3
	add.l 256(%a2),%d3
	move.l %d3,(%sp)
	move.l %a4,-(%sp)
	lea __Z11bloodSquirtii,%a5
	jsr (%a5)
	addq.l #8,%sp
	moveq #-30,%d0
	add.l 256(%a2),%d0
	move.l %d0,-(%sp)
	pea 20(%a4)
	jsr (%a5)
	addq.l #8,%sp
	moveq #-50,%d1
	add.l 256(%a2),%d1
	move.l %d1,-(%sp)
	pea 10(%a4)
	jsr (%a5)
	addq.l #4,%sp
	move.l 274(%a2),(%sp)
	moveq #-40,%d2
	add.l 256(%a2),%d2
	move.l %d2,-(%sp)
	move.l %a4,-(%sp)
	lea __Z9bloodDropiii,%a5
	jsr (%a5)
	move.l 274(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-40,%d3
	add.l 256(%a2),%d3
	move.l %d3,-(%sp)
	add.l %d0,%d0
	add.l %d0,%d0
	sub.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr (%a5)
	move.l 274(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-50,%d1
	add.l 256(%a2),%d1
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
	move.l 274(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-50,%d2
	add.l 256(%a2),%d2
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
	jra .L73
.L194:
	tst.l %d0
	jle .L117
.L162:
	tst.b 306(%a2)
	jeq .L156
	add.l 252(%a2),%d0
	move.l %d0,252(%a2)
	jra .L199
.L186:
	tst.l %d0
	jle .L122
.L157:
	tst.b 306(%a2)
	jeq .L123
	add.l %d0,252(%a2)
	jra .L123
.L192:
	tst.l %d0
	jle .L138
.L158:
	tst.b 306(%a2)
	jeq .L139
	add.l %d0,252(%a2)
	jra .L139
.L187:
	move.l 270(%a2),%d2
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
	jra .L147
.L165:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 436(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.l 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,240(%a2)
	jra .L72
.L179:
	move.l %d0,-(%sp)
	moveq #20,%d1
	add.l 256(%a2),%d1
	move.l %d1,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z9bloodGlobiii
	move.l 274(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-30,%d2
	add.l 256(%a2),%d2
	move.l %d2,-(%sp)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr __Z9bloodDropiii
	lea (12,%sp),%sp
	jra .L73
.L193:
	tst.l %d0
	jlt .L162
	add.l 252(%a2),%d0
	move.l %d0,252(%a2)
	jra .L199
.L146:
	move.l 256(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L148
	move.b #1,155(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,240(%a2)
	move.l %d3,256(%a2)
	move.l 274(%a2),-(%sp)
	pea 90.w
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 436(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 270(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,240(%a2)
	jra .L72
.L176:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L99:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	jra .L95
.L148:
	move.l 274(%a2),-(%sp)
	move.l %d0,-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 436(%a2),-(%sp)
	pea 4.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,240(%a2)
	jra .L72
.L185:
	tst.l %d0
	jlt .L157
	add.l %d0,252(%a2)
	jra .L123
.L191:
	tst.l %d0
	jlt .L158
	add.l %d0,252(%a2)
	jra .L139
.L200:
	move.l %d2,-(%sp)
	jsr __Z11sfxCrowdAwwP12SoundHandler
	addq.l #4,%sp
	jra .L147
.L201:
	move.l %d2,-(%sp)
	jsr __Z21sfxAnnouncerExcellentP12SoundHandler
	addq.l #4,%sp
	jra .L147
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 157(%a0),%d0
	jne .L204
	tst.b 132(%a0)
	jne .L204
.L205:
	tst.b 134(%a1)
	jne .L222
.L207:
	tst.b 135(%a1)
	jeq .L209
	tst.b 131(%a0)
	jne .L209
	move.b #1,147(%a0)
	moveq #2,%d1
	move.l %d1,264(%a0)
	clr.b 268(%a0)
.L208:
	tst.b %d0
	jne .L203
.L220:
	tst.b 132(%a0)
	jeq .L218
	tst.b 131(%a0)
	jne .L219
.L218:
	tst.b 142(%a1)
	jeq .L203
	move.b #1,151(%a0)
	moveq #4,%d0
	move.l %d0,264(%a0)
	clr.b 268(%a0)
.L203:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L204:
	tst.b 161(%a0)
	jne .L205
	tst.b %d0
	jne .L203
	tst.b 132(%a0)
	jeq .L220
	move.b #1,133(%a0)
	move.b #1,164(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,240(%a0)
	jra .L220
.L222:
	tst.b 131(%a0)
	jne .L207
	move.b #1,146(%a0)
	moveq #2,%d1
	move.l %d1,264(%a0)
	clr.b 268(%a0)
	tst.b %d0
	jeq .L220
	jra .L203
.L209:
	tst.b 136(%a1)
	jeq .L210
	tst.b 131(%a0)
	jne .L210
	move.b #1,146(%a0)
	moveq #5,%d1
	move.l %d1,264(%a0)
	clr.b 268(%a0)
	tst.b %d0
	jeq .L220
	jra .L203
.L210:
	tst.b 137(%a1)
	jeq .L211
	tst.b 131(%a0)
	jne .L211
	move.b #1,148(%a0)
	moveq #5,%d1
	move.l %d1,264(%a0)
	clr.b 268(%a0)
	tst.b %d0
	jeq .L220
	jra .L203
.L211:
	tst.b 143(%a1)
	jeq .L212
	tst.b 131(%a0)
	jeq .L223
.L212:
	tst.b 138(%a1)
	jeq .L213
	move.b #1,149(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,240(%a1)
	moveq #5,%d1
	move.l %d1,264(%a0)
	move.b #1,268(%a0)
	tst.b %d0
	jeq .L220
	jra .L203
.L219:
	move.b #1,133(%a0)
	move.b #1,164(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,240(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L213:
	tst.b 139(%a1)
	jne .L224
	tst.b 141(%a1)
	jeq .L215
	move.b #1,150(%a0)
	clr.b 168(%a1)
	move.b #1,169(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,240(%a1)
	moveq #8,%d1
	move.l %d1,264(%a0)
	clr.b 268(%a0)
	tst.b %d0
	jeq .L220
	jra .L203
.L223:
	move.b #1,148(%a0)
	moveq #6,%d1
	move.l %d1,264(%a0)
	move.b #1,268(%a0)
	tst.b %d0
	jeq .L220
	jra .L203
.L224:
	move.b #1,149(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,240(%a1)
	moveq #4,%d1
	move.l %d1,264(%a0)
	clr.b 268(%a0)
	tst.b %d0
	jeq .L220
	jra .L203
.L215:
	tst.b 140(%a1)
	jeq .L208
	move.b #1,152(%a0)
	clr.b 168(%a1)
	move.b #1,170(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,240(%a1)
	moveq #6,%d1
	move.l %d1,264(%a0)
	clr.b 268(%a0)
	tst.b %d0
	jeq .L220
	jra .L203
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15416,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 158(%a2)
	jeq .L227
	move.l 186(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L241
.L227:
	tst.b 158(%a3)
	jeq .L228
	move.l 186(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L242
.L228:
	pea 18.w
	pea 13.w
	pea 18.w
	pea 13.w
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L226
	move.l colliders,%d4
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a4
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L231
.L246:
	cmp.w #0,%a0
	jlt .L226
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
	moveq #32,%d3
	cmp.l %d0,%d3
	jeq .L243
	moveq #31,%d3
	cmp.l %d0,%d3
	jeq .L244
	moveq #34,%d3
	cmp.l %d0,%d3
	jne .L236
	moveq #31,%d5
	cmp.l %d1,%d5
	jeq .L245
.L239:
	addq.l #8,%d2
.L247:
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L246
.L231:
	cmp.w #0,%a0
	jge .L239
.L226:
	movem.l -28(%fp),#7228
	unlk %fp
	rts
.L244:
	moveq #33,%d5
	cmp.l %d1,%d5
	jne .L239
	tst.b 126(%a2)
	jeq .L239
	move.l 252(%a2),%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L239
	cmp.l #328,%d0
	jgt .L239
	move.l 252(%a3),%d0
	cmp.l %d0,%d1
	jge .L239
	cmp.l #328,%d0
	jgt .L239
	move.b #1,158(%a2)
	move.b #1,163(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a3)
	addq.l #8,%d2
	jra .L247
.L243:
	moveq #33,%d5
	cmp.l %d1,%d5
	jne .L239
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L247
.L236:
	moveq #33,%d3
	cmp.l %d0,%d3
	jne .L239
	moveq #31,%d5
	cmp.l %d1,%d5
	jne .L239
	tst.b 126(%a3)
	jeq .L239
	move.b #1,158(%a3)
	move.b #1,163(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	addq.l #8,%d2
	jra .L247
.L245:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L247
.L241:
	clr.b 158(%a2)
	jra .L227
.L242:
	clr.b 158(%a3)
	jra .L228
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 274(%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L263
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L264
.L252:
	move.l 274(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L265
.L253:
	moveq #-1,%d1
	cmp.l %d0,%d1
	jne .L249
	move.l 252(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 252(%a1),%d0
	jge .L249
.L260:
	tst.b 159(%a0)
	jne .L249
	clr.b 279(%a0)
	move.b #1,159(%a0)
	move.b #1,278(%a0)
.L249:
	unlk %fp
	rts
.L264:
	move.l 252(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 252(%a0),%d0
	jge .L252
	tst.b 159(%a1)
	jne .L252
.L266:
	clr.b 279(%a1)
	move.b #1,159(%a1)
	move.b #1,278(%a1)
	move.l 274(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L253
.L265:
	move.l 252(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 252(%a0),%d0
	jlt .L260
	unlk %fp
	rts
.L263:
	move.l 252(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 252(%a1),%d0
	jge .L252
	tst.b 159(%a1)
	jne .L252
	jra .L266
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 260(%a1),10072(%a0)
	move.l 12(%fp),%a1
	move.l 260(%a1),%d0
	move.l %d0,10264(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10184(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterAddPendingDamageP7Fighterib
__Z23fighterAddPendingDamageP7Fighterib:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),264(%a0)
	move.b 19(%fp),268(%a0)
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
	tst.b 268(%a2)
	jne .L276
	move.l 260(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,260(%a2)
	jle .L277
.L272:
	move.l sprite,%a0
	tst.b 280(%a2)
	jne .L278
.L273:
	move.l %d0,10264(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10184(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L276:
	clr.b 268(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 260(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,260(%a2)
	jgt .L272
.L277:
	clr.l 260(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 280(%a2)
	jeq .L273
.L278:
	move.l %d0,10072(%a0)
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
	cmp.l 274(%a0),%d0
	jeq .L284
	addq.l #2,252(%a0)
.L280:
	unlk %fp
	rts
.L284:
	tst.b 306(%a0)
	jeq .L280
	addq.l #2,252(%a0)
	jra .L280
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 274(%a0),%d0
	jeq .L290
	subq.l #2,252(%a0)
.L286:
	unlk %fp
	rts
.L290:
	tst.b 306(%a0)
	jeq .L286
	subq.l #2,252(%a0)
	jra .L286
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
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l sprite,%a2
	move.l 186(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a2,%d0.l),%a1
	move.w 254(%a0),%d1
	add.w #12,%d1
	move.w %d1,8(%a1)
	move.w 258(%a0),%d0
	move.w %d0,%d2
	add.w #10,%d2
	move.w %d2,12(%a1)
	tst.b 124(%a0)
	jeq .L293
	move.l 190(%a0),%a0
	move.l %a0,%d2
	add.l %a0,%d2
	add.l %a0,%d2
	lsl.l #6,%d2
	add.l %d2,%a2
	move.w %d1,8(%a2)
	add.w #160,%d0
	move.w %d0,12(%a2)
.L293:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L301
	moveq #8,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	unlk %fp
	rts
.L301:
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
	move.l %d0,256(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 274(%a2),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L321
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L322
.L319:
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L322:
	cmp.l #328,252(%a2)
	jle .L319
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jne .L315
	cmp.l #328,252(%a2)
	jle .L319
	moveq #10,%d0
	move.l 12(%fp),%a0
	cmp.l 252(%a0),%d0
	slt %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L321:
	moveq #11,%d0
	cmp.l 252(%a2),%d0
	jlt .L319
	jsr __Z18cameraIsAtLeftWallv
	tst.b %d0
	jne .L315
	moveq #11,%d0
	cmp.l 252(%a2),%d0
	jlt .L319
	move.l 12(%fp),%a0
	cmp.l #248,252(%a0)
	sle %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L315:
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
	move.l 274(%a0),%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L331
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L332
.L326:
	add.l %d1,252(%a0)
.L324:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L332:
	tst.l %d1
	jle .L326
.L328:
	tst.b 306(%a0)
	jeq .L324
	add.l %d1,252(%a0)
	jra .L324
.L331:
	tst.l %d1
	jlt .L328
	add.l %d1,252(%a0)
	jra .L324
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 157(%a2)
	jne .L335
	tst.b 126(%a2)
	jeq .L537
.L336:
	clr.b 124(%a2)
.L338:
	move.l 198(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,194(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L538
.L339:
	tst.b 131(%a2)
	jeq .L340
	tst.b 145(%a2)
	jeq .L340
	tst.b 168(%a2)
	jeq .L340
	tst.b 141(%a2)
	jne .L342
	clr.b 145(%a2)
	move.b #1,141(%a2)
	move.b #1,127(%a2)
	clr.b 131(%a2)
	move.l 186(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.l 16(%a3)
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L342:
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 169(%a2)
	jeq .L539
.L344:
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	add.l 172(%a2),%d0
	cmp.l %a0,%d0
	jgt .L540
	clr.b 169(%a2)
.L347:
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L541
.L349:
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L506
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L506
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L542
.L506:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L334
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L334
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L334
	and.l JAGPAD_RIGHT,%d0
	jne .L334
	move.b #1,144(%a2)
.L334:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L335:
	clr.b 124(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L537:
	tst.b 131(%a2)
	jne .L336
	tst.b 128(%a2)
	jne .L336
	tst.b 130(%a2)
	jne .L336
	tst.b 129(%a2)
	jne .L336
	tst.b 127(%a2)
	jeq .L338
	clr.b 124(%a2)
	jra .L338
.L538:
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L339
.L340:
	tst.b 141(%a2)
	jne .L342
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L350
	tst.l %d1
	jeq .L351
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L352
	moveq #1,%d3
	cmp.l 274(%a2),%d3
	jeq .L350
.L352:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L351
	moveq #-1,%d4
	cmp.l 274(%a2),%d4
	jeq .L350
.L351:
	tst.b 135(%a2)
	jeq .L543
.L354:
	move.l 64(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L361
	clr.b 135(%a2)
.L361:
	move.l 312(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 396(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L539:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 84(%a2),-(%sp)
	move.l 420(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 169(%a2)
	jne .L344
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L349
	jra .L541
.L543:
	tst.l %d1
	jeq .L362
	tst.b 145(%a2)
	jeq .L362
	tst.b 168(%a2)
	jeq .L362
	tst.b 128(%a2)
	jne .L362
	tst.b 134(%a2)
	jne .L364
	clr.b 145(%a2)
	move.b #1,134(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 280(%a2),%d2
	move.l 270(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d4
	cmp.l %d0,%d4
	jeq .L368
	moveq #7,%d3
	cmp.l %d0,%d3
	jeq .L369
	move.b #4,%d4
	cmp.l %d0,%d4
	jeq .L544
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L371:
	move.l 308(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 392(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L362:
	tst.b 134(%a2)
	jne .L364
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L372
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L372
	moveq #1,%d3
	cmp.l 274(%a2),%d3
	jeq .L373
.L372:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L374
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L374
	moveq #-1,%d4
	cmp.l 274(%a2),%d4
	jeq .L373
.L374:
	tst.b 142(%a2)
	jeq .L545
.L376:
	move.l 92(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L383
	clr.b 142(%a2)
.L383:
	move.l 336(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L350:
	tst.b 145(%a2)
	jeq .L351
	tst.b 168(%a2)
	jeq .L351
	tst.b 128(%a2)
	jne .L351
	tst.b 135(%a2)
	jne .L354
	clr.b 145(%a2)
	move.b #1,135(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 280(%a2),%d2
	move.l 270(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L358
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L359
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L546
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L548:
	move.l 312(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 396(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L542:
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L506
	move.b #1,145(%a2)
	jra .L506
.L364:
	move.l 60(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L371
	clr.b 134(%a2)
	move.l 308(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 392(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L541:
	clr.b 141(%a2)
	move.b #1,168(%a2)
	jra .L349
.L545:
	tst.l %d1
	jeq .L384
	moveq #1,%d4
	cmp.l 274(%a2),%d4
	jeq .L385
.L384:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L386
	moveq #-1,%d3
	cmp.l 274(%a2),%d3
	jeq .L385
.L386:
	tst.b 143(%a2)
	jne .L388
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jne .L391
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L392
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L393
	moveq #1,%d4
	cmp.l 274(%a2),%d4
	jeq .L391
.L393:
	tst.l %d1
	jeq .L392
	moveq #-1,%d3
	cmp.l 274(%a2),%d3
	jeq .L391
.L392:
	tst.b 137(%a2)
	jne .L395
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L398
	tst.b 145(%a2)
	jeq .L398
	tst.b 168(%a2)
	jeq .L398
	tst.b 128(%a2)
	jne .L398
	tst.b 136(%a2)
	jne .L400
	clr.b 145(%a2)
	move.b #1,136(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L402:
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 400(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L388:
	move.l 96(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L390
	clr.b 143(%a2)
.L390:
	move.l 340(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 452(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L373:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L374
	tst.b 145(%a2)
	jeq .L374
	tst.b 168(%a2)
	jeq .L374
	tst.b 128(%a2)
	jne .L374
	tst.b 142(%a2)
	jne .L376
	clr.b 145(%a2)
	move.b #1,127(%a2)
	move.b #1,142(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 280(%a2),%d2
	move.l 270(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L380
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L381
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L547
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L565:
	move.l 336(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L385:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L386
	tst.b 145(%a2)
	jeq .L386
	tst.b 168(%a2)
	jeq .L386
	tst.b 128(%a2)
	jne .L386
	tst.b 143(%a2)
	jne .L388
	clr.b 145(%a2)
	move.b #1,127(%a2)
	move.b #1,143(%a2)
	clr.l 16(%a3)
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 340(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 452(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L395:
	move.l 72(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L397
	clr.b 137(%a2)
.L397:
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 404(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L391:
	tst.b 145(%a2)
	jeq .L392
	tst.b 168(%a2)
	jeq .L392
	tst.b 128(%a2)
	jne .L392
	tst.b 137(%a2)
	jne .L395
	clr.b 145(%a2)
	move.b #1,137(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 320(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 404(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L540:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 420(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 169(%a2)
	jne .L349
	jra .L347
.L546:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L548
.L359:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L548
.L358:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L548
.L398:
	tst.b 136(%a2)
	jne .L400
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jeq .L403
	tst.b 128(%a2)
	jne .L403
	tst.b 168(%a2)
	jeq .L403
	tst.b 132(%a2)
	jne .L404
	move.b #1,132(%a2)
	clr.l 16(%a3)
.L404:
	and.l JAGPAD_DOWN,%d0
	jeq .L405
	tst.b 131(%a2)
	jne .L406
	move.b #1,131(%a2)
	clr.b 126(%a2)
	clr.l 16(%a3)
.L406:
	tst.b 133(%a2)
	jne .L407
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 52(%a2),-(%sp)
	move.l 384(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L400:
	move.l 68(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L402
	clr.b 136(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 274(%a2),(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 400(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L544:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L371
.L369:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L371
.L368:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L371
.L403:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L410
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L411
	moveq #1,%d4
	cmp.l 274(%a2),%d4
	jeq .L412
.L411:
	tst.l %d1
	jeq .L410
	moveq #-1,%d4
	cmp.l 274(%a2),%d4
	jeq .L412
.L410:
	tst.b 129(%a2)
	jne .L414
	tst.l %d3
	jeq .L438
	tst.l %d1
	jeq .L439
	moveq #1,%d4
	cmp.l 274(%a2),%d4
	jeq .L440
.L439:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L438
	moveq #-1,%d4
	cmp.l 274(%a2),%d4
	jeq .L440
.L438:
	tst.b 130(%a2)
	jne .L442
	tst.l %d1
	jeq .L466
	tst.b 168(%a2)
	jeq .L466
	tst.b 128(%a2)
	jne .L466
	tst.b 126(%a2)
	jne .L467
	clr.l 16(%a3)
.L467:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	pea 1.w
	and.l #255,%d2
	move.l %d2,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 356(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	move.b #1,126(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 127(%a2)
	clr.b 134(%a2)
	clr.b 135(%a2)
	lea (32,%sp),%sp
	tst.l 252(%a2)
	jle .L468
	tst.b 158(%a2)
	jne .L469
	move.l 206(%a2),%d0
	moveq #-1,%d3
	cmp.l 274(%a2),%d3
	jne .L470
	move.l 202(%a2),%d0
.L470:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L524:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
.L468:
	moveq #-1,%d4
	cmp.l 274(%a2),%d4
	jne .L349
	move.l 16(%a3),-(%sp)
	move.l 356(%a2),-(%sp)
	jsr __Z22getAnimationFrameWidthP14AnimationFramei
	sub.l 20(%a3),%d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	lea (16,%sp),%sp
	jra .L349
.L412:
	tst.b 144(%a2)
	jeq .L410
	tst.b 168(%a2)
	jeq .L410
	tst.b 129(%a2)
	jne .L414
	clr.b 168(%a2)
	clr.b 234(%a2)
	clr.b 144(%a2)
	move.b #1,129(%a2)
	clr.l 16(%a3)
	move.l 290(%a2),286(%a2)
	clr.b 180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,182(%a2)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L414:
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L416
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L417
.L416:
	tst.b 129(%a2)
	jeq .L417
	tst.b 180(%a2)
	jne .L417
	tst.b 234(%a2)
	jeq .L418
.L417:
	tst.b 138(%a2)
	jeq .L419
	tst.b 180(%a2)
	jne .L419
	tst.b 129(%a2)
	jeq .L419
.L418:
	tst.b 140(%a2)
	jne .L419
	tst.b 138(%a2)
	jeq .L549
.L420:
	tst.b 170(%a2)
	jeq .L550
.L421:
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L551
	clr.b 170(%a2)
	clr.b 138(%a2)
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
.L419:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L424
	and.l JAGPAD_7,%d0
	jeq .L425
.L424:
	tst.b 129(%a2)
	jeq .L425
	tst.b 180(%a2)
	jne .L425
	tst.b 234(%a2)
	jeq .L426
.L425:
	tst.b 140(%a2)
	jeq .L427
	tst.b 180(%a2)
	jne .L427
	tst.b 129(%a2)
	jne .L426
.L427:
	tst.l 16(%a3)
	jne .L432
	tst.b 138(%a2)
	jne .L432
	tst.b 140(%a2)
	jeq .L552
.L432:
	tst.b 129(%a2)
	jeq .L349
	tst.b 180(%a2)
	jne .L433
	move.w raptor_ticks,%a0
	cmp.l 240(%a2),%a0
	jle .L433
	tst.b 181(%a2)
	jne .L434
	moveq #10,%d0
	add.l 182(%a2),%d0
	cmp.l %a0,%d0
	jge .L434
	tst.b 138(%a2)
	jne .L434
	tst.b 140(%a2)
	jeq .L553
.L434:
	tst.b 170(%a2)
	jeq .L554
.L435:
	tst.b 138(%a2)
	jne .L433
	tst.b 140(%a2)
	jne .L433
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 36(%a2),-(%sp)
	move.l 368(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L433:
	clr.l -(%sp)
	move.l 286(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L436
	moveq #89,%d0
	cmp.l 256(%a2),%d0
	jlt .L527
.L436:
	tst.b 180(%a2)
	jeq .L349
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L349
	move.b #1,168(%a2)
	clr.b 129(%a2)
.L529:
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 140(%a2)
	clr.b 181(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L349
.L440:
	tst.b 144(%a2)
	jeq .L438
	tst.b 168(%a2)
	jeq .L438
	tst.b 130(%a2)
	jne .L442
	clr.b 168(%a2)
	clr.b 234(%a2)
	clr.b 144(%a2)
	move.b #1,130(%a2)
	clr.l 16(%a3)
	move.l 290(%a2),286(%a2)
	clr.b 180(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,182(%a2)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L442:
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L444
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L445
.L444:
	tst.b 130(%a2)
	jeq .L445
	tst.b 180(%a2)
	jne .L445
	tst.b 234(%a2)
	jne .L445
.L446:
	tst.b 140(%a2)
	jne .L447
	tst.b 138(%a2)
	jne .L448
	clr.b 145(%a2)
	move.b #1,234(%a2)
	move.b #1,138(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L448:
	tst.b 170(%a2)
	jeq .L555
.L449:
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L556
	clr.b 170(%a2)
	clr.b 140(%a2)
.L450:
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
.L447:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L452
	and.l JAGPAD_7,%d0
	jeq .L453
.L452:
	tst.b 130(%a2)
	jeq .L453
	tst.b 180(%a2)
	jne .L453
	tst.b 234(%a2)
	jne .L453
.L454:
	tst.b 138(%a2)
	jne .L455
	tst.b 140(%a2)
	jne .L456
	clr.b 145(%a2)
	move.b #1,234(%a2)
	move.b #1,140(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L456:
	tst.b 170(%a2)
	jeq .L557
.L457:
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L558
	clr.b 170(%a2)
	clr.b 140(%a2)
.L458:
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L455:
	tst.l 16(%a3)
	jne .L460
	tst.b 138(%a2)
	jne .L460
	tst.b 140(%a2)
	jeq .L559
.L460:
	tst.b 130(%a2)
	jeq .L349
	tst.b 180(%a2)
	jne .L461
	move.w raptor_ticks,%a0
	cmp.l 240(%a2),%a0
	jle .L461
	tst.b 181(%a2)
	jne .L462
	moveq #10,%d0
	add.l 182(%a2),%d0
	cmp.l %a0,%d0
	jge .L462
	tst.b 138(%a2)
	jne .L462
	tst.b 140(%a2)
	jeq .L560
.L462:
	tst.b 170(%a2)
	jeq .L561
.L463:
	tst.b 138(%a2)
	jne .L461
	tst.b 140(%a2)
	jne .L461
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.l 36(%a2),-(%sp)
	move.l 368(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L461:
	clr.l -(%sp)
	move.l 286(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L464
	moveq #89,%d0
	cmp.l 256(%a2),%d0
	jlt .L527
.L464:
	tst.b 180(%a2)
	jeq .L349
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L349
	move.b #1,168(%a2)
	clr.b 130(%a2)
	jra .L529
.L445:
	tst.b 138(%a2)
	jeq .L447
	tst.b 180(%a2)
	jne .L447
	tst.b 130(%a2)
	jeq .L447
	jra .L446
.L453:
	tst.b 140(%a2)
	jeq .L455
	tst.b 180(%a2)
	jne .L455
	tst.b 130(%a2)
	jeq .L455
	jra .L454
.L426:
	tst.b 138(%a2)
	jne .L427
	tst.b 140(%a2)
	jeq .L562
.L428:
	tst.b 170(%a2)
	jeq .L563
.L429:
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L564
	clr.b 170(%a2)
	clr.b 140(%a2)
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	jra .L427
.L552:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 36(%a2),-(%sp)
	move.l 368(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L547:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L565
.L381:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L565
.L380:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L565
.L466:
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
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	pea 1.w
	move.b %d2,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 356(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	move.b #1,126(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 127(%a2)
	clr.b 134(%a2)
	clr.b 135(%a2)
	lea (32,%sp),%sp
	cmp.l #248,252(%a2)
	jgt .L349
	tst.b 158(%a2)
	jne .L473
	move.l 202(%a2),%d0
	moveq #-1,%d1
	cmp.l 274(%a2),%d1
	jne .L474
	move.l 206(%a2),%d0
.L474:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L526:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L349
.L527:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 140(%a2)
	move.b #1,180(%a2)
	clr.l 286(%a2)
	moveq #90,%d1
	move.l %d1,256(%a2)
	addq.l #4,%sp
	jra .L349
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
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 40(%a2),-(%sp)
	move.l 372(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L475:
	tst.l %d3
	jeq .L477
	tst.b 144(%a2)
	jeq .L477
	tst.b 128(%a2)
	jne .L479
	clr.b 144(%a2)
	clr.b 234(%a2)
	move.b #1,128(%a2)
	clr.l 16(%a3)
	move.l 290(%a2),286(%a2)
	clr.b 180(%a2)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L479:
	move.l 194(%a2),%d0
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
	move.b #1,234(%a2)
	move.b #1,127(%a2)
	move.b #1,138(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L485:
	tst.b 170(%a2)
	jeq .L566
.L486:
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L567
	clr.b 170(%a2)
	clr.b 138(%a2)
.L487:
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
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
	move.b #1,234(%a2)
	move.b #1,139(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L493:
	tst.b 170(%a2)
	jeq .L568
.L494:
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	add.l 176(%a2),%d0
	cmp.l %a0,%d0
	jgt .L569
	clr.b 170(%a2)
	clr.b 139(%a2)
.L495:
	move.l 328(%a2),-(%sp)
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
	jeq .L570
.L497:
	tst.b 128(%a2)
	jeq .L349
	tst.b 180(%a2)
	jne .L498
	move.w raptor_ticks,%d2
	ext.l %d2
	cmp.l 240(%a2),%d2
	jle .L499
	tst.b 170(%a2)
	jne .L499
	move.l 286(%a2),%d3
	move.l 256(%a2),-(%sp)
	jsr ___floatsisf
	lea ___addsf3,%a4
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,256(%a2)
	move.l %d3,(%sp)
	move.l 282(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,286(%a2)
	move.l %d2,240(%a2)
.L499:
	tst.b 138(%a2)
	jne .L498
	tst.b 139(%a2)
	jeq .L571
.L498:
	clr.l -(%sp)
	move.l 286(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L500
	moveq #89,%d4
	cmp.l 256(%a2),%d4
	jlt .L572
.L500:
	tst.b 180(%a2)
	jeq .L349
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L349
	move.b #1,168(%a2)
	clr.b 128(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L349
.L405:
	tst.b 131(%a2)
	jeq .L408
	clr.b 131(%a2)
	move.l 186(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d4
	move.l %d4,4(%a0,%d0.l)
.L408:
	tst.b 133(%a2)
	jne .L409
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 44(%a2),-(%sp)
	move.l 376(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L481:
	tst.b 128(%a2)
	jeq .L482
	tst.b 180(%a2)
	jne .L482
	tst.b 234(%a2)
	jeq .L483
	jra .L482
.L489:
	tst.b 128(%a2)
	jeq .L490
	tst.b 180(%a2)
	jne .L490
	tst.b 234(%a2)
	jeq .L491
	jra .L490
.L477:
	tst.b 128(%a2)
	jne .L479
	tst.b 131(%a2)
	jne .L573
	tst.b 132(%a2)
	jne .L574
	tst.b 126(%a2)
	jne .L575
.L504:
	tst.b 124(%a2)
	jne .L505
	move.b #1,124(%a2)
	clr.b 127(%a2)
.L505:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 12(%a2),-(%sp)
	move.l 344(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L409:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 48(%a2),-(%sp)
	move.l 380(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 48(%a2),(%sp)
.L531:
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L349
	clr.b 133(%a2)
	jra .L349
.L573:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%a2),-(%sp)
	move.l 372(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L349
	clr.b 131(%a2)
	move.l 186(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	jra .L349
.L407:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 56(%a2),-(%sp)
	move.l 388(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 56(%a2),(%sp)
	jra .L531
.L569:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 412(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L495
.L568:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 412(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jeq .L495
	jra .L494
.L554:
	lea ___floatsisf,%a4
	move.l 274(%a2),-(%sp)
	jsr (%a4)
	move.l 222(%a2),(%sp)
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
	move.l 286(%a2),%d2
	move.l 256(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,256(%a2)
	move.l %d2,(%sp)
	move.l 282(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,286(%a2)
	lea (16,%sp),%sp
	jra .L435
.L473:
	move.l 230(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L526
.L469:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L468
	move.l 230(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L524
.L562:
	clr.b 145(%a2)
	move.b #1,234(%a2)
	move.b #1,140(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L428
.L551:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 408(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
	jra .L419
.L550:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 408(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jne .L421
	move.l 324(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 194(%a2),%d0
	jra .L419
.L556:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 408(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L450
.L555:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 408(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jeq .L450
	jra .L449
.L561:
	lea ___floatsisf,%a4
	move.l 274(%a2),-(%sp)
	jsr (%a4)
	move.l 222(%a2),%d1
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
	move.l 286(%a2),%d2
	move.l 256(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,256(%a2)
	move.l %d2,(%sp)
	move.l 282(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,286(%a2)
	lea (16,%sp),%sp
	jra .L463
.L560:
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,181(%a2)
	addq.l #8,%sp
	tst.b 170(%a2)
	jne .L463
	jra .L561
.L558:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 416(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L458
.L557:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jeq .L458
	jra .L457
.L575:
	clr.b 158(%a2)
	clr.b 126(%a2)
	clr.l 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L504
.L574:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 44(%a2),-(%sp)
	move.l 376(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L349
	clr.b 132(%a2)
	jra .L349
.L571:
	moveq #1,%d3
	move.l %d3,16(%a3)
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 364(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L498
.L572:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 138(%a2)
	clr.b 139(%a2)
	move.b #1,180(%a2)
	clr.l 286(%a2)
	moveq #90,%d0
	move.l %d0,256(%a2)
	addq.l #4,%sp
	jra .L349
.L570:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 364(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L549:
	clr.b 145(%a2)
	move.b #1,234(%a2)
	move.b #1,138(%a2)
	move.b #1,127(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 270(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L420
.L564:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 416(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	jra .L427
.L563:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 170(%a2)
	jne .L429
	move.l 328(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	jra .L427
.L559:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.l 36(%a2),-(%sp)
	move.l 368(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L349
.L553:
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,181(%a2)
	addq.l #8,%sp
	tst.b 170(%a2)
	jne .L435
	jra .L554
.L567:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 408(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L487
.L566:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 408(%a2),-(%sp)
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
	jeq .L577
	moveq #-1,%d0
	cmp.l 274(%a2),%d0
	seq %d0
	neg.b %d0
	move.b %d0,_walkForward
	tst.b 166(%a2)
	jeq .L579
	clr.b 166(%a2)
	clr.l 16(%a3)
	move.l 302(%a2),%d0
	jle .L580
	tst.b 161(%a2)
	jne .L580
	move.b #1,161(%a2)
.L579:
	tst.b 167(%a2)
	jeq .L581
.L617:
	clr.b 167(%a2)
	clr.l 16(%a3)
	move.b #1,125(%a2)
	moveq #90,%d1
	move.l %d1,256(%a2)
	move.l (%a2),%d0
	move.b #1,%d1
	cmp.l %d0,%d1
	jeq .L582
	move.b #2,%d1
	cmp.l %d0,%d1
	jeq .L608
.L581:
	tst.b 161(%a2)
	jne .L609
.L584:
	tst.b 162(%a2)
	jne .L610
	tst.b 125(%a2)
	jne .L611
	tst.b 164(%a2)
	jeq .L588
	move.w raptor_ticks,%a0
	move.l 240(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L612
.L588:
	tst.b 159(%a2)
	jeq .L593
	tst.b 128(%a2)
	jne .L593
	tst.b 130(%a2)
	jne .L593
	tst.b 129(%a2)
	jne .L593
	tst.b 157(%a2)
	jne .L593
	tst.b 127(%a2)
	jne .L593
	tst.b 278(%a2)
	jeq .L594
	clr.b 278(%a2)
	clr.l 16(%a3)
.L594:
	tst.b 279(%a2)
	jeq .L613
	tst.l 16(%a3)
	jle .L614
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L605:
	move.l 28(%a2),-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L577:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L612:
	clr.b 164(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 268(%a2)
	jeq .L589
	clr.b 268(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L589:
	move.l 260(%a2),%d0
	subq.l #1,%d0
	move.l %d0,260(%a2)
	jgt .L590
	clr.l 260(%a2)
	move.b #1,166(%a2)
	moveq #0,%d0
.L590:
	move.l sprite,%a0
	tst.b 280(%a2)
	jne .L615
	move.l %d0,10264(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,10184(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L593:
	tst.b 163(%a2)
	jne .L616
.L600:
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
	move.l sprite,%a1
	move.l 186(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	move.w 254(%a2),%d1
	add.w #12,%d1
	move.w %d1,8(%a0)
	move.w 258(%a2),%d0
	move.w %d0,%d2
	add.w #10,%d2
	move.w %d2,12(%a0)
	lea (16,%sp),%sp
	tst.b 124(%a2)
	jeq .L577
.L620:
	move.l 190(%a2),%a0
	move.l %a0,%d2
	add.l %a0,%d2
	add.l %a0,%d2
	lsl.l #6,%d2
	add.l %d2,%a1
	move.w %d1,8(%a1)
	add.w #160,%d0
	move.w %d0,12(%a1)
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L609:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 16(%a2),-(%sp)
	move.l 348(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 264(%a2)
	jle .L577
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
.L580:
	move.b #1,162(%a2)
	clr.b 161(%a2)
	addq.l #1,%d0
	move.l %d0,302(%a2)
	tst.b 167(%a2)
	jeq .L581
	jra .L617
.L616:
	move.l 274(%a2),%d3
	move.l %d3,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	lea ___mulsf3,%a4
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l 230(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d3,%d1
	jeq .L618
	moveq #-1,%d1
	cmp.l %d3,%d1
	jeq .L619
.L602:
	add.l %d0,252(%a2)
.L603:
	move.l 236(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L600
	clr.b 163(%a2)
	move.l 186(%a2),%d0
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
	move.l sprite,%a1
	move.l 186(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	move.w 254(%a2),%d1
	add.w #12,%d1
	move.w %d1,8(%a0)
	move.w 258(%a2),%d0
	move.w %d0,%d2
	add.w #10,%d2
	move.w %d2,12(%a0)
	lea (16,%sp),%sp
	tst.b 124(%a2)
	jne .L620
	jra .L577
.L608:
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandlerb
	addq.l #8,%sp
	tst.b 161(%a2)
	jeq .L584
	jra .L609
.L610:
	move.l 112(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L621
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L622:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L582:
	moveq #0,%d0
	move.b 280(%a2),%d0
	move.l %d0,-(%sp)
	move.l 270(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandlerb
	addq.l #8,%sp
	tst.b 161(%a2)
	jeq .L584
	jra .L609
.L611:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 20(%a2),-(%sp)
	move.l 352(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L621:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 270(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 160(%a2)
	addq.l #4,%sp
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L622
.L619:
	tst.l %d0
	jle .L602
.L604:
	tst.b 306(%a2)
	jeq .L603
	add.l %d0,252(%a2)
	jra .L603
.L614:
	clr.b 159(%a2)
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L605
.L618:
	tst.l %d0
	jlt .L604
	add.l %d0,252(%a2)
	jra .L603
.L615:
	move.l %d0,10072(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L593
.L613:
	move.l 28(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L596
	move.b #1,279(%a2)
	move.l 274(%a2),%d0
	neg.l %d0
	move.l %d0,274(%a2)
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L623
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
.L596:
	move.l 274(%a2),-(%sp)
	move.l 256(%a2),-(%sp)
	move.l 252(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 28(%a2),-(%sp)
	move.l 360(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L577
.L623:
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L596
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
