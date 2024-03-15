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
	move.l %d0,288(%a0)
	move.l #256,%d0
	move.l %d0,266(%a0)
	move.w 12(%a1),%a1
	move.l %a1,270(%a0)
	unlk %fp
	rts
.L21:
	move.w #14,8(%a1)
	moveq #1,%d0
	move.l %d0,24(%a1)
	move.l %d0,288(%a0)
	move.b #14,%d0
	move.l %d0,266(%a0)
	move.w 12(%a1),%a1
	move.l %a1,270(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_
__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d2
	move.l #0x400ccccd,296(%a0)
	clr.l 300(%a0)
	move.l #0xc1900000,304(%a0)
	move.l #0xc1d00000,308(%a0)
	move.l #0xc1200000,312(%a0)
	move.l 16(%fp),284(%a0)
	move.l 20(%fp),322(%a0)
	move.l 24(%fp),326(%a0)
	move.l 28(%fp),330(%a0)
	move.l 32(%fp),334(%a0)
	move.l 36(%fp),346(%a0)
	move.l 40(%fp),350(%a0)
	move.l 44(%fp),338(%a0)
	move.l 48(%fp),342(%a0)
	move.l 52(%fp),354(%a0)
	move.l 56(%fp),358(%a0)
	move.l 60(%fp),362(%a0)
	move.l 64(%fp),366(%a0)
	clr.l 208(%a0)
	move.l #0x40000000,216(%a0)
	move.l #0x40000000,220(%a0)
	move.l #0x40900000,224(%a0)
	move.l #0x40600000,228(%a0)
	move.l #0x40d00000,232(%a0)
	clr.l 240(%a0)
	move.l #0x40f00000,236(%a0)
	move.l #0x3f800000,244(%a0)
	moveq #1,%d0
	move.l %d0,258(%a0)
	clr.l 262(%a0)
	clr.l 250(%a0)
	move.b #1,179(%a0)
	move.b #1,136(%a0)
	clr.b 137(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
	clr.b 178(%a0)
	clr.b 140(%a0)
	clr.b 141(%a0)
	clr.b 142(%a0)
	clr.b 143(%a0)
	clr.b 144(%a0)
	clr.b 145(%a0)
	clr.b 146(%a0)
	clr.b 147(%a0)
	clr.b 148(%a0)
	clr.b 149(%a0)
	clr.b 150(%a0)
	clr.b 152(%a0)
	clr.b 151(%a0)
	clr.b 153(%a0)
	move.b #1,160(%a0)
	move.b #1,159(%a0)
	move.b #1,187(%a0)
	clr.b 248(%a0)
	clr.b 154(%a0)
	clr.b 155(%a0)
	clr.b 156(%a0)
	clr.b 157(%a0)
	clr.b 158(%a0)
	clr.b 161(%a0)
	clr.b 162(%a0)
	clr.b 163(%a0)
	clr.b 164(%a0)
	clr.b 165(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 168(%a0)
	clr.b 171(%a0)
	clr.b 172(%a0)
	clr.b 173(%a0)
	clr.b 174(%a0)
	clr.b 175(%a0)
	clr.b 176(%a0)
	clr.b 177(%a0)
	clr.b 180(%a0)
	clr.b 181(%a0)
	clr.b 182(%a0)
	clr.b 183(%a0)
	clr.b 186(%a0)
	clr.b 188(%a0)
	clr.b 189(%a0)
	clr.b 198(%a0)
	clr.b 199(%a0)
	clr.l 200(%a0)
	move.b #50,%d0
	move.l %d0,190(%a0)
	move.b #20,%d0
	move.l %d0,194(%a0)
	move.b %d2,294(%a0)
	move.b #33,%d0
	move.l %d0,274(%a0)
	clr.l 278(%a0)
	clr.b 282(%a0)
	clr.b 292(%a0)
	clr.b 293(%a0)
	move.b #1,320(%a0)
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
	move.l %d0,204(%a0)
	moveq #2,%d2
	move.l %d2,212(%a0)
	move.l #210,266(%a0)
	moveq #-1,%d0
	move.l %d0,24(%a1)
	move.l %d0,288(%a0)
	move.w #222,%d0
	move.w #5760,%a1
	moveq #90,%d2
	move.l %d2,270(%a0)
	lea (%a1,%d1.l),%a1
	move.w %d0,8(%a1)
	move.w #250,12(%a1)
	move.l %a0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z16impactFrameResetP7Fighter
.L27:
	moveq #29,%d2
	move.l %d2,204(%a0)
	move.l %d0,212(%a0)
	move.b #50,%d0
	move.l %d0,266(%a0)
	move.b #1,%d2
	move.l %d2,24(%a1)
	move.l %d2,288(%a0)
	move.b #62,%d0
	move.w #5568,%a1
	moveq #90,%d2
	move.l %d2,270(%a0)
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
	clr.l 316(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 288(%a0),-(%sp)
	move.l 270(%a0),-(%sp)
	move.l 266(%a0),-(%sp)
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
	tst.b 176(%a2)
	jne .L71
	tst.b 161(%a2)
	jeq .L192
.L72:
	move.b 168(%a2),%d0
	jne .L76
.L77:
	move.l 278(%a2),%d2
	tst.b 282(%a2)
	jne .L193
.L84:
	move.l 274(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,274(%a2)
	jle .L194
.L85:
	move.l sprite,%a0
	tst.b 294(%a2)
	jne .L170
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
	clr.l 278(%a2)
	clr.l 240(%a2)
	move.b #1,176(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,254(%a2)
	move.l %a0,262(%a2)
	clr.l 16(%a3)
	move.l 308(%a2),300(%a2)
	move.b 170(%a2),%d0
	jne .L88
.L206:
	tst.b 171(%a2)
	jne .L88
	tst.b 161(%a2)
	jne .L90
.L207:
	tst.b 162(%a2)
	jne .L90
	tst.b 169(%a2)
	jne .L90
	tst.b 165(%a2)
	jne .L90
	tst.b 164(%a2)
	jne .L90
	tst.b 166(%a2)
	jne .L95
	tst.b 171(%a2)
	jne .L95
	tst.b 163(%a2)
	jne .L98
	tst.b 168(%a2)
	jne .L98
	tst.b %d0
	jeq .L99
.L98:
	move.l 284(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 294(%a2),%d2
	move.l 284(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L101
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L195
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
.L94:
	move.b 162(%a2),%d1
	jne .L103
	tst.b 163(%a2)
	jne .L103
	tst.b 168(%a2)
	jeq .L99
.L103:
	move.l 266(%a2),%a4
	move.l 288(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L196
.L104:
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L197
.L105:
	tst.b %d1
	jne .L106
.L217:
	tst.b 165(%a2)
	jne .L106
	tst.b 166(%a2)
	jne .L106
	tst.b 163(%a2)
	jne .L198
	tst.b 168(%a2)
	jne .L199
.L71:
	tst.b 161(%a2)
	jeq .L78
.L218:
	tst.b 176(%a2)
	jne .L200
.L78:
	tst.b 162(%a2)
	jeq .L110
	tst.b 176(%a2)
	jne .L201
.L110:
	tst.b 163(%a2)
	jeq .L202
	tst.b 176(%a2)
	jne .L203
.L112:
	tst.b 164(%a2)
	jeq .L117
	tst.b 176(%a2)
	jeq .L117
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 258(%a2),%d0
	move.l 288(%a2),%d2
	cmp.l %a0,%d0
	jle .L118
.L165:
	move.l 266(%a2),%d0
.L119:
	move.l %d2,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 112(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	clr.b 164(%a2)
	clr.b 176(%a2)
.L70:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L202:
	tst.b 165(%a2)
	jeq .L112
	tst.b 176(%a2)
	jeq .L112
.L203:
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 258(%a2),%d0
	move.l 288(%a2),%d2
	cmp.l %a0,%d0
	jle .L113
.L164:
	move.l 266(%a2),%d0
	move.l %d2,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 120(%a2),-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 120(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
.L216:
	clr.b 163(%a2)
	clr.b 165(%a2)
	clr.b 176(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L192:
	tst.b 162(%a2)
	jne .L72
	tst.b 163(%a2)
	jne .L72
	tst.b 168(%a2)
	jne .L76
	tst.b 169(%a2)
	jne .L77
	tst.b 165(%a2)
	jne .L77
	tst.b 164(%a2)
	jne .L77
	tst.b 170(%a2)
	jne .L77
	tst.b 166(%a2)
	jne .L77
	tst.b 171(%a2)
	jeq .L78
	move.l 278(%a2),%d2
	tst.b 282(%a2)
	jeq .L84
	jra .L193
.L76:
	move.l 278(%a2),%d2
	tst.b 282(%a2)
	jne .L204
	move.l 274(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,274(%a2)
	jle .L205
.L80:
	move.l sprite,%a0
	tst.b 294(%a2)
	jne .L170
.L81:
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
	clr.l 278(%a2)
	clr.l 240(%a2)
	move.b #1,176(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,254(%a2)
	move.l %a0,262(%a2)
	clr.l 16(%a3)
	move.l 308(%a2),300(%a2)
	move.b 170(%a2),%d0
	jeq .L206
.L88:
	move.l 312(%a2),300(%a2)
	tst.b 161(%a2)
	jeq .L207
.L90:
	moveq #0,%d1
	move.b 294(%a2),%d1
	move.l 284(%a2),%d0
	moveq #7,%d3
	cmp.l (%a2),%d3
	jeq .L208
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L117:
	tst.b 166(%a2)
	jeq .L122
	tst.b 176(%a2)
	jeq .L122
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 258(%a2),%d0
	move.l 288(%a2),%d2
	cmp.l %a0,%d0
	jle .L123
.L166:
	move.l 266(%a2),%d0
	move.l %d2,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 120(%a2),-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 120(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
.L226:
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 176(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L122:
	tst.b 169(%a2)
	jeq .L127
	tst.b 176(%a2)
	jne .L209
.L127:
	tst.b 170(%a2)
	jeq .L210
.L128:
	tst.b 176(%a2)
	jeq .L129
	tst.b 174(%a2)
	jne .L211
	move.w raptor_ticks,%a0
	cmp.l 254(%a2),%a0
	jle .L70
	move.l 288(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 228(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	moveq #1,%d3
	cmp.l %d2,%d3
	jeq .L212
	moveq #-1,%d1
	cmp.l %d2,%d1
	jeq .L213
.L132:
	add.l %d0,266(%a2)
.L133:
	move.b 172(%a2),%d3
	move.l 300(%a2),%d2
	tst.b %d3
	jne .L135
	move.l 270(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,270(%a2)
	move.l 296(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,300(%a2)
.L135:
	move.l %d2,-(%sp)
	move.l 308(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L136
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L179
.L136:
	tst.b 173(%a2)
	jne .L154
	tst.b %d3
	jne .L155
	tst.b 171(%a2)
	jeq .L182
.L155:
	move.b #1,172(%a2)
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 124(%a2),-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	move.l 124(%a2),%d2
	subq.l #1,%d2
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L153
	move.b #1,173(%a2)
	clr.b 172(%a2)
.L153:
	move.w raptor_ticks,%a0
	move.l %a0,254(%a2)
.L229:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L200:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 112(%a2),-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 112(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	clr.b 161(%a2)
	clr.b 176(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L201:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 116(%a2),-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 116(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	clr.b 162(%a2)
	clr.b 176(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L210:
	tst.b 171(%a2)
	jne .L128
.L129:
	tst.b 168(%a2)
	jeq .L143
	tst.b 176(%a2)
	jeq .L143
	tst.b 174(%a2)
	jeq .L144
	moveq #19,%d0
	add.l 254(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L70
	clr.b 168(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 174(%a2)
	move.b #1,175(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,270(%a2)
.L220:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L170:
	move.l %d0,9304(%a0)
	jra .L87
.L113:
	move.l %d2,%d3
	neg.l %d3
	move.l %d3,-(%sp)
	jsr ___floatsisf
	move.l 224(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L214
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L215
.L116:
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
.L227:
	move.l %d2,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 120(%a2),-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 120(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	jra .L216
.L204:
	clr.b 282(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 274(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,274(%a2)
	jgt .L80
	jra .L205
.L193:
	clr.b 282(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 274(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,274(%a2)
	jgt .L85
.L194:
	clr.l 274(%a2)
	move.b #1,185(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 294(%a2)
	jeq .L86
	jra .L170
.L205:
	clr.l 274(%a2)
	move.b #1,185(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 294(%a2)
	jeq .L81
	jra .L170
.L197:
	lea (-40,%a4),%a4
	tst.b %d1
	jeq .L217
.L106:
	move.l %d0,-(%sp)
	moveq #-10,%d0
	add.l 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z10bloodSprayiii
	lea (12,%sp),%sp
	tst.b 161(%a2)
	jne .L218
	jra .L78
.L99:
	tst.b 165(%a2)
	jeq .L219
	clr.b %d1
.L223:
	move.l 266(%a2),%a4
	move.l 288(%a2),%d0
	moveq #-1,%d2
	cmp.l %d0,%d2
	jne .L104
.L196:
	lea (40,%a4),%a4
	jra .L105
.L143:
	tst.b 175(%a2)
	jeq .L70
	tst.b 176(%a2)
	jeq .L70
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 88(%a2),-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 88(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	clr.b 176(%a2)
	clr.b 175(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L208:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L211:
	moveq #19,%d0
	add.l 254(%a2),%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L70
	clr.b 170(%a2)
	clr.b 171(%a2)
	clr.b 172(%a2)
	clr.b 173(%a2)
	clr.b 174(%a2)
	move.b #1,175(%a2)
	clr.l 16(%a3)
	moveq #90,%d0
	move.l %d0,270(%a2)
	jra .L220
.L209:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 128(%a2),-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 128(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	move.l 284(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 169(%a2)
	move.b #1,175(%a2)
	clr.l 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L118:
	lea ___mulsf3,%a4
	move.l #0x3eaaaaab,-(%sp)
	move.l 224(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,%d3
	move.l %d2,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L221
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L222
.L121:
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
	jra .L119
.L219:
	tst.b 166(%a2)
	jeq .L71
	clr.b %d1
	jra .L223
.L123:
	lea ___mulsf3,%a4
	move.l #0x3f000000,-(%sp)
	move.l 224(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,%d3
	move.l %d2,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l %d0,(%sp)
	move.l %d3,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d2,%d1
	jeq .L224
	moveq #-1,%d3
	cmp.l %d2,%d3
	jeq .L225
.L126:
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
.L228:
	move.l %d2,-(%sp)
	move.l 270(%a2),-(%sp)
	move.l %d0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 120(%a2),-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 120(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L70
	jra .L226
.L215:
	tst.l %d0
	jle .L116
.L172:
	tst.b 320(%a2)
	jeq .L164
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
	jra .L227
.L199:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	moveq #-10,%d3
	add.l 270(%a2),%d3
	move.l %d3,(%sp)
	move.l %a4,-(%sp)
	lea __Z11bloodSquirtii,%a5
	jsr (%a5)
	addq.l #8,%sp
	moveq #-30,%d0
	add.l 270(%a2),%d0
	move.l %d0,-(%sp)
	pea 20(%a4)
	jsr (%a5)
	addq.l #8,%sp
	moveq #-50,%d1
	add.l 270(%a2),%d1
	move.l %d1,-(%sp)
	pea 10(%a4)
	jsr (%a5)
	addq.l #4,%sp
	move.l 288(%a2),(%sp)
	moveq #-40,%d2
	add.l 270(%a2),%d2
	move.l %d2,-(%sp)
	move.l %a4,-(%sp)
	lea __Z9bloodDropiii,%a5
	jsr (%a5)
	move.l 288(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-40,%d3
	add.l 270(%a2),%d3
	move.l %d3,-(%sp)
	add.l %d0,%d0
	add.l %d0,%d0
	sub.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr (%a5)
	move.l 288(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-50,%d1
	add.l 270(%a2),%d1
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
	move.l 288(%a2),%d1
	lea (12,%sp),%sp
	move.l %d1,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	moveq #-50,%d2
	add.l 270(%a2),%d2
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
	tst.b 161(%a2)
	jne .L218
	jra .L78
.L222:
	tst.l %d0
	jle .L121
.L174:
	tst.b 320(%a2)
	jeq .L165
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
	jra .L119
.L225:
	tst.l %d0
	jle .L126
.L176:
	tst.b 320(%a2)
	jeq .L166
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
	jra .L228
.L213:
	tst.l %d0
	jle .L132
.L167:
	tst.b 320(%a2)
	jeq .L133
	add.l %d0,266(%a2)
	jra .L133
.L230:
	tst.l %d0
	jlt .L168
.L146:
	add.l %d0,266(%a2)
.L147:
	move.b 172(%a2),%d3
	move.l 300(%a2),%d2
	tst.b %d3
	jne .L149
	move.l 270(%a2),-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.l %d0,270(%a2)
	move.l 296(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,300(%a2)
.L149:
	move.l %d2,-(%sp)
	move.l 308(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L150
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L179
.L150:
	tst.b 173(%a2)
	jne .L154
	tst.b %d3
	jne .L155
.L182:
	move.l 284(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L155
.L179:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.l 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,254(%a2)
	jra .L229
.L198:
	move.l %d0,-(%sp)
	moveq #20,%d1
	add.l 270(%a2),%d1
	move.l %d1,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z9bloodGlobiii
	move.l 288(%a2),%d0
	addq.l #8,%sp
	move.l %d0,(%sp)
	moveq #-30,%d2
	add.l 270(%a2),%d2
	move.l %d2,-(%sp)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d1
	add.l %d1,%d0
	lsl.l #3,%d0
	pea (%a4,%d0.l)
	jsr __Z9bloodDropiii
	lea (12,%sp),%sp
	tst.b 161(%a2)
	jne .L218
	jra .L78
.L214:
	tst.l %d0
	jlt .L172
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
	jra .L227
.L144:
	move.w raptor_ticks,%a0
	cmp.l 254(%a2),%a0
	jle .L70
	move.l 288(%a2),%d2
	lea ___floatsisf,%a5
	move.l %d2,%d1
	neg.l %d1
	move.l %d1,-(%sp)
	jsr (%a5)
	move.l 228(%a2),(%sp)
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
	jne .L146
	tst.l %d0
	jle .L146
.L168:
	tst.b 320(%a2)
	jeq .L147
	add.l %d0,266(%a2)
	jra .L147
.L95:
	tst.b 167(%a2)
	jeq .L97
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L94
.L154:
	move.l 270(%a2),%d0
	moveq #90,%d3
	cmp.l %d0,%d3
	jge .L156
	move.b #1,174(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,254(%a2)
	move.l %d3,270(%a2)
	move.l 288(%a2),-(%sp)
	pea 90.w
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 284(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,254(%a2)
	jra .L229
.L221:
	tst.l %d0
	jlt .L174
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
	jra .L119
.L97:
	move.l 284(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L94
.L224:
	tst.l %d0
	jlt .L176
	add.l 266(%a2),%d0
	move.l %d0,266(%a2)
	jra .L228
.L156:
	move.l 288(%a2),-(%sp)
	move.l %d0,-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,254(%a2)
	jra .L229
.L212:
	tst.l %d0
	jlt .L167
	add.l %d0,266(%a2)
	jra .L133
.L195:
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
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 176(%a0),%d0
	jne .L233
	tst.b 144(%a0)
	jne .L233
.L234:
	tst.b 146(%a1)
	jne .L256
.L236:
	tst.b 147(%a1)
	jeq .L238
	tst.b 143(%a0)
	jne .L238
	move.b #1,162(%a0)
	moveq #2,%d1
	move.l %d1,278(%a0)
	clr.b 282(%a0)
.L237:
	tst.b %d0
	jne .L232
.L253:
	tst.b 144(%a0)
	jeq .L250
	tst.b 143(%a0)
	jne .L251
.L250:
	tst.b 154(%a1)
	jne .L257
	tst.b 158(%a1)
	jeq .L232
	move.b #1,164(%a0)
	clr.b 187(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,254(%a1)
	moveq #2,%d0
	move.l %d0,278(%a0)
	clr.b 282(%a0)
.L232:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L233:
	tst.b 180(%a0)
	jne .L234
	tst.b %d0
	jne .L232
	tst.b 144(%a0)
	jeq .L253
	move.b #1,145(%a0)
	move.b #1,183(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,254(%a0)
	jra .L253
.L256:
	tst.b 143(%a0)
	jne .L236
	move.b #1,161(%a0)
	moveq #2,%d1
	move.l %d1,278(%a0)
	clr.b 282(%a0)
	tst.b %d0
	jeq .L253
	jra .L232
.L238:
	tst.b 148(%a1)
	jeq .L239
	tst.b 143(%a0)
	jne .L239
	move.b #1,161(%a0)
	moveq #5,%d1
	move.l %d1,278(%a0)
	clr.b 282(%a0)
	tst.b %d0
	jeq .L253
	jra .L232
.L239:
	tst.b 149(%a1)
	jeq .L240
	tst.b 143(%a0)
	jne .L240
	move.b #1,163(%a0)
	moveq #5,%d1
	move.l %d1,278(%a0)
	clr.b 282(%a0)
	tst.b %d0
	jeq .L253
	jra .L232
.L240:
	tst.b 155(%a1)
	jeq .L241
	tst.b 143(%a0)
	jeq .L258
.L241:
	tst.b 156(%a1)
	jeq .L242
	tst.b 143(%a0)
	jeq .L259
.L242:
	tst.b 150(%a1)
	jeq .L244
	move.b #1,165(%a0)
	clr.b 187(%a1)
	move.b #1,189(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,254(%a1)
	moveq #5,%d1
	move.l %d1,278(%a0)
	move.b #1,282(%a0)
	tst.b %d0
	jeq .L253
	jra .L232
.L251:
	move.b #1,145(%a0)
	move.b #1,183(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,254(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L257:
	move.b #1,169(%a0)
	moveq #4,%d0
	move.l %d0,278(%a0)
	clr.b 282(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L244:
	tst.b 151(%a1)
	jne .L260
	tst.b 153(%a1)
	jeq .L246
	move.b #1,168(%a0)
	clr.b 187(%a1)
	move.b #1,188(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,254(%a1)
	moveq #8,%d1
	move.l %d1,278(%a0)
	clr.b 282(%a0)
	tst.b %d0
	jeq .L253
	jra .L232
.L258:
	move.b #1,163(%a0)
	moveq #6,%d1
	move.l %d1,278(%a0)
	move.b #1,282(%a0)
	tst.b %d0
	jeq .L253
	jra .L232
.L259:
	move.b #1,166(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L261
	moveq #4,%d1
	move.l %d1,278(%a0)
	move.b #1,282(%a0)
.L262:
	tst.b %d0
	jeq .L253
	jra .L232
.L260:
	move.b #1,165(%a0)
	clr.b 187(%a1)
	move.b #1,189(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,254(%a1)
	moveq #4,%d1
	move.l %d1,278(%a0)
	clr.b 282(%a0)
.L263:
	tst.b %d0
	jeq .L253
	jra .L232
.L261:
	move.b #1,167(%a0)
	moveq #4,%d1
	move.l %d1,278(%a0)
	move.b #1,282(%a0)
	jra .L262
.L246:
	tst.b 152(%a1)
	jeq .L247
	move.b #1,170(%a0)
	clr.b 187(%a1)
	move.b #1,189(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,254(%a1)
	moveq #6,%d1
	move.l %d1,278(%a0)
	clr.b 282(%a0)
	tst.b %d0
	jeq .L253
	jra .L232
.L247:
	tst.b 157(%a1)
	jeq .L237
	move.b #1,171(%a0)
	clr.b 187(%a1)
	move.b #1,189(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,254(%a1)
	moveq #4,%d1
	move.l %d1,278(%a0)
	clr.b 282(%a0)
	jra .L263
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15416,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 177(%a2)
	jeq .L266
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L280
.L266:
	tst.b 177(%a3)
	jeq .L267
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L281
.L267:
	pea 15.w
	pea 12.w
	pea 15.w
	pea 12.w
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L265
	move.l colliders,%d4
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a4
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L270
.L285:
	cmp.w #0,%a0
	jlt .L265
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
	jeq .L282
	moveq #27,%d3
	cmp.l %d0,%d3
	jeq .L283
	moveq #30,%d3
	cmp.l %d0,%d3
	jne .L275
	moveq #27,%d5
	cmp.l %d1,%d5
	jeq .L284
.L278:
	addq.l #8,%d2
.L286:
	move.l %d4,%a0
	add.l %d2,%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L285
.L270:
	cmp.w #0,%a0
	jge .L278
.L265:
	movem.l -28(%fp),#7228
	unlk %fp
	rts
.L283:
	moveq #28,%d5
	cmp.l %d1,%d5
	jne .L278
	tst.b 138(%a2)
	jeq .L278
	move.l 266(%a2),%d0
	moveq #10,%d1
	cmp.l %d0,%d1
	jge .L278
	cmp.l #328,%d0
	jgt .L278
	move.l 266(%a3),%d0
	cmp.l %d0,%d1
	jge .L278
	cmp.l #328,%d0
	jgt .L278
	move.b #1,177(%a2)
	move.b #1,182(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a3)
	addq.l #8,%d2
	jra .L286
.L282:
	moveq #28,%d5
	cmp.l %d1,%d5
	jne .L278
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L286
.L275:
	moveq #28,%d3
	cmp.l %d0,%d3
	jne .L278
	moveq #27,%d5
	cmp.l %d1,%d5
	jne .L278
	tst.b 138(%a3)
	jeq .L278
	move.b #1,177(%a3)
	move.b #1,182(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,250(%a2)
	addq.l #8,%d2
	jra .L286
.L284:
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	move.l colliders,%d4
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L286
.L280:
	clr.b 177(%a2)
	jra .L266
.L281:
	clr.b 177(%a3)
	jra .L267
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 288(%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L302
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L303
.L291:
	move.l 288(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L304
.L292:
	moveq #-1,%d1
	cmp.l %d0,%d1
	jne .L288
	move.l 266(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 266(%a1),%d0
	jge .L288
.L299:
	tst.b 178(%a0)
	jne .L288
	clr.b 293(%a0)
	move.b #1,178(%a0)
	move.b #1,292(%a0)
.L288:
	unlk %fp
	rts
.L303:
	move.l 266(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 266(%a0),%d0
	jge .L291
	tst.b 178(%a1)
	jne .L291
.L305:
	clr.b 293(%a1)
	move.b #1,178(%a1)
	move.b #1,292(%a1)
	move.l 288(%a0),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L292
.L304:
	move.l 266(%a1),%d0
	add.l _turnOffset,%d0
	cmp.l 266(%a0),%d0
	jlt .L299
	unlk %fp
	rts
.L302:
	move.l 266(%a0),%d0
	add.l _turnOffset,%d0
	cmp.l 266(%a1),%d0
	jge .L291
	tst.b 178(%a1)
	jne .L291
	jra .L305
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 274(%a1),9304(%a0)
	move.l 12(%fp),%a1
	move.l 274(%a1),%d0
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
	move.l 12(%fp),278(%a0)
	move.b 19(%fp),282(%a0)
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
	tst.b 282(%a2)
	jne .L315
	move.l 274(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,274(%a2)
	jle .L316
.L311:
	move.l sprite,%a0
	tst.b 294(%a2)
	jne .L317
.L312:
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
.L315:
	clr.b 282(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 274(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,274(%a2)
	jgt .L311
.L316:
	clr.l 274(%a2)
	move.b #1,185(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 294(%a2)
	jeq .L312
.L317:
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
	cmp.l 288(%a0),%d0
	jeq .L323
	addq.l #2,266(%a0)
.L319:
	unlk %fp
	rts
.L323:
	tst.b 320(%a0)
	jeq .L319
	addq.l #2,266(%a0)
	jra .L319
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #1,%d0
	cmp.l 288(%a0),%d0
	jeq .L329
	subq.l #2,266(%a0)
.L325:
	unlk %fp
	rts
.L329:
	tst.b 320(%a0)
	jeq .L325
	subq.l #2,266(%a0)
	jra .L325
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
	tst.b 136(%a0)
	jeq .L332
	move.l 204(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 268(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 272(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L332:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L340
	moveq #6,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	unlk %fp
	rts
.L340:
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
	move.l %d0,270(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 288(%a2),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L360
	moveq #-1,%d1
	cmp.l %d0,%d1
	jeq .L361
.L358:
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L361:
	cmp.l #328,266(%a2)
	jle .L358
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jne .L354
	cmp.l #328,266(%a2)
	jle .L358
	moveq #10,%d0
	move.l 12(%fp),%a0
	cmp.l 266(%a0),%d0
	slt %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L360:
	moveq #11,%d0
	cmp.l 266(%a2),%d0
	jlt .L358
	jsr __Z18cameraIsAtLeftWallv
	tst.b %d0
	jne .L354
	moveq #11,%d0
	cmp.l 266(%a2),%d0
	jlt .L358
	move.l 12(%fp),%a0
	cmp.l #280,266(%a0)
	sle %d0
	neg.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L354:
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
	move.l 288(%a0),%d0
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L370
	moveq #-1,%d2
	cmp.l %d0,%d2
	jeq .L371
.L365:
	add.l %d1,266(%a0)
.L363:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L371:
	tst.l %d1
	jle .L365
.L367:
	tst.b 320(%a0)
	jeq .L363
	add.l %d1,266(%a0)
	jra .L363
.L370:
	tst.l %d1
	jlt .L367
	add.l %d1,266(%a0)
	jra .L363
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d2
	tst.b 176(%a2)
	jne .L374
	tst.b 138(%a2)
	jeq .L594
.L375:
	clr.b 136(%a2)
.L377:
	move.l 212(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,208(%a2)
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	addq.l #4,%sp
	jeq .L595
.L378:
	tst.b 143(%a2)
	jeq .L379
	tst.b 160(%a2)
	jeq .L379
	tst.b 187(%a2)
	jeq .L379
	tst.b 153(%a2)
	jne .L381
	clr.b 160(%a2)
	move.b #1,153(%a2)
	move.b #1,139(%a2)
	clr.b 143(%a2)
	clr.l 16(%a3)
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L381:
	move.l 346(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 188(%a2)
	jeq .L596
.L383:
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 190(%a2),%d0
	cmp.l %a0,%d0
	jgt .L597
	clr.b 188(%a2)
.L386:
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L598
.L388:
	move.l 208(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L562
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L562
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L599
.L562:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L373
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L373
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L373
	and.l JAGPAD_RIGHT,%d0
	jne .L373
	move.b #1,159(%a2)
.L373:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L374:
	clr.b 136(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L594:
	tst.b 143(%a2)
	jne .L375
	tst.b 140(%a2)
	jne .L375
	tst.b 142(%a2)
	jne .L375
	tst.b 141(%a2)
	jne .L375
	tst.b 139(%a2)
	jeq .L377
	clr.b 136(%a2)
	jra .L377
.L595:
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L378
.L379:
	tst.b 153(%a2)
	jne .L381
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jne .L389
	tst.l %d1
	jeq .L390
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L391
	moveq #1,%d4
	cmp.l 288(%a2),%d4
	jeq .L389
.L391:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L390
	moveq #-1,%d4
	cmp.l 288(%a2),%d4
	jeq .L389
.L390:
	tst.b 147(%a2)
	jeq .L600
.L393:
	move.l 64(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L400
	clr.b 147(%a2)
.L400:
	move.l 326(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L596:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 84(%a2),-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 188(%a2)
	jne .L383
	move.l 84(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L388
	jra .L598
.L600:
	tst.l %d3
	jeq .L601
.L401:
	tst.b 160(%a2)
	jeq .L402
	tst.b 187(%a2)
	jeq .L402
	tst.b 140(%a2)
	jne .L402
	tst.b 177(%a2)
	jeq .L402
	tst.b 156(%a2)
	jne .L405
	clr.b 160(%a2)
	move.b #1,156(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
.L407:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 100(%a2),-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L389:
	tst.b 160(%a2)
	jeq .L390
	tst.b 187(%a2)
	jeq .L390
	tst.b 140(%a2)
	jne .L390
	tst.b 177(%a2)
	jne .L390
	tst.b 147(%a2)
	jne .L393
	clr.b 160(%a2)
	move.b #1,147(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 294(%a2),%d2
	move.l 284(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L397
	moveq #7,%d4
	cmp.l %d0,%d4
	jeq .L398
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L602
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L606:
	move.l 326(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 64(%a2),-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L599:
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L562
	move.b #1,160(%a2)
	jra .L562
.L601:
	tst.l %d1
	jeq .L402
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L403
	moveq #1,%d4
	cmp.l 288(%a2),%d4
	jeq .L401
.L403:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L402
	moveq #-1,%d3
	cmp.l 288(%a2),%d3
	jeq .L401
.L402:
	tst.b 156(%a2)
	jne .L405
	tst.l %d1
	jeq .L408
	tst.b 160(%a2)
	jeq .L408
	tst.b 187(%a2)
	jeq .L408
	tst.b 140(%a2)
	jne .L408
	tst.b 146(%a2)
	jne .L410
	clr.b 160(%a2)
	move.b #1,146(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d2
	move.b 294(%a2),%d2
	move.l 284(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d4
	cmp.l %d0,%d4
	jeq .L414
	moveq #7,%d3
	cmp.l %d0,%d3
	jeq .L415
	move.b #4,%d4
	cmp.l %d0,%d4
	jeq .L603
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L417:
	move.l 322(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L598:
	clr.b 153(%a2)
	move.b #1,187(%a2)
	jra .L388
.L405:
	move.l 100(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L407
	clr.b 156(%a2)
	move.b #1,187(%a2)
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 100(%a2),-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L408:
	tst.b 146(%a2)
	jne .L410
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L418
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L418
	moveq #1,%d3
	cmp.l 288(%a2),%d3
	jeq .L419
.L418:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L420
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L420
	moveq #-1,%d4
	cmp.l 288(%a2),%d4
	jeq .L419
.L420:
	tst.b 154(%a2)
	jeq .L604
.L422:
	move.l 92(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L429
	clr.b 154(%a2)
.L429:
	move.l 350(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L410:
	move.l 60(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L417
	clr.b 146(%a2)
	move.l 322(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 60(%a2),-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L604:
	tst.l %d1
	jeq .L430
	moveq #1,%d3
	cmp.l 288(%a2),%d3
	jeq .L431
.L430:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L432
	moveq #-1,%d4
	cmp.l 288(%a2),%d4
	jeq .L431
.L432:
	tst.b 155(%a2)
	jne .L434
	move.l JAGPAD_7,%d3
	move.l %d0,%d4
	and.l %d3,%d4
	jne .L437
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L438
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L439
	moveq #1,%d4
	cmp.l 288(%a2),%d4
	jeq .L437
.L439:
	tst.l %d1
	jeq .L438
	moveq #-1,%d4
	cmp.l 288(%a2),%d4
	jeq .L437
.L438:
	tst.b 149(%a2)
	jne .L441
	move.l JAGPAD_A,%d4
	or.l %d4,%d3
	and.l %d0,%d3
	jeq .L444
	tst.b 160(%a2)
	jeq .L444
	tst.b 187(%a2)
	jeq .L444
	tst.b 140(%a2)
	jne .L444
	tst.b 143(%a2)
	jne .L444
	tst.b 177(%a2)
	jeq .L444
	tst.b 157(%a2)
	jne .L446
	clr.b 160(%a2)
	move.b #1,157(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
.L448:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 104(%a2),-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L434:
	move.l 96(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L436
	clr.b 155(%a2)
.L436:
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L419:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L420
	tst.b 160(%a2)
	jeq .L420
	tst.b 187(%a2)
	jeq .L420
	tst.b 140(%a2)
	jne .L420
	tst.b 154(%a2)
	jne .L422
	clr.b 160(%a2)
	move.b #1,139(%a2)
	move.b #1,154(%a2)
	clr.l 16(%a3)
	moveq #0,%d1
	move.b 294(%a2),%d1
	move.l 284(%a2),%d0
	move.l (%a2),%a0
	moveq #6,%d2
	cmp.l %a0,%d2
	jeq .L426
	moveq #7,%d3
	cmp.l %a0,%d3
	jeq .L427
	moveq #4,%d4
	cmp.l %a0,%d4
	jeq .L605
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L607:
	move.l 350(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 92(%a2),-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L431:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L432
	tst.b 160(%a2)
	jeq .L432
	tst.b 187(%a2)
	jeq .L432
	tst.b 140(%a2)
	jne .L432
	tst.b 155(%a2)
	jne .L434
	clr.b 160(%a2)
	move.b #1,139(%a2)
	move.b #1,155(%a2)
	clr.l 16(%a3)
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 96(%a2),-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L441:
	move.l 72(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L443
	clr.b 149(%a2)
.L443:
	move.l 334(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L437:
	tst.b 160(%a2)
	jeq .L438
	tst.b 187(%a2)
	jeq .L438
	tst.b 140(%a2)
	jne .L438
	tst.b 143(%a2)
	jne .L438
	tst.b 177(%a2)
	jne .L438
	tst.b 149(%a2)
	jne .L441
	clr.b 160(%a2)
	move.b #1,149(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 334(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 72(%a2),-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L597:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 446(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 188(%a2)
	jne .L388
	jra .L386
.L602:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L606
.L398:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L606
.L397:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L606
.L444:
	tst.b 157(%a2)
	jne .L446
	and.l %d0,%d4
	jeq .L449
	tst.b 160(%a2)
	jeq .L449
	tst.b 187(%a2)
	jeq .L449
	tst.b 140(%a2)
	jne .L449
	tst.b 143(%a2)
	jne .L449
	tst.b 177(%a2)
	jne .L449
	tst.b 148(%a2)
	jne .L451
	clr.b 160(%a2)
	move.b #1,148(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L453:
	move.l 330(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L446:
	move.l 104(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L448
	clr.b 157(%a2)
	move.b #1,187(%a2)
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 104(%a2),-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L449:
	tst.b 148(%a2)
	jne .L451
	tst.l %d3
	jeq .L454
	tst.b 160(%a2)
	jeq .L454
	tst.b 187(%a2)
	jeq .L454
	tst.b 140(%a2)
	jne .L454
	tst.b 143(%a2)
	jeq .L454
	tst.b 158(%a2)
	jne .L456
	clr.b 160(%a2)
	move.b #1,158(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L458:
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L603:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L417
.L415:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L417
.L414:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L417
.L427:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L607
.L426:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L607
.L605:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L607
.L454:
	tst.b 158(%a2)
	jne .L456
	move.l %d0,%d3
	and.l JAGPAD_B,%d3
	jeq .L459
	tst.b 140(%a2)
	jne .L459
	tst.b 187(%a2)
	jeq .L459
	tst.b 144(%a2)
	jne .L460
	move.b #1,144(%a2)
	clr.l 16(%a3)
.L460:
	and.l JAGPAD_DOWN,%d0
	jeq .L461
	tst.b 143(%a2)
	jne .L462
	move.b #1,143(%a2)
	clr.b 138(%a2)
	clr.l 16(%a3)
.L462:
	tst.b 145(%a2)
	jne .L463
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 52(%a2),-(%sp)
	move.l 410(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L456:
	move.l 108(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L458
	clr.b 158(%a2)
	move.b #1,187(%a2)
	move.b #1,143(%a2)
	moveq #1,%d0
	move.l %d0,16(%a3)
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 108(%a2),-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L451:
	move.l 68(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L453
	clr.b 148(%a2)
	move.l 330(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	addq.l #8,%sp
	move.l 288(%a2),(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 68(%a2),-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L459:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L466
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L467
	moveq #1,%d4
	cmp.l 288(%a2),%d4
	jeq .L468
.L467:
	tst.l %d1
	jeq .L466
	moveq #-1,%d4
	cmp.l 288(%a2),%d4
	jeq .L468
.L466:
	tst.b 141(%a2)
	jne .L470
	tst.l %d3
	jeq .L494
	tst.l %d1
	jeq .L495
	moveq #1,%d4
	cmp.l 288(%a2),%d4
	jeq .L496
.L495:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L494
	moveq #-1,%d4
	cmp.l 288(%a2),%d4
	jeq .L496
.L494:
	tst.b 142(%a2)
	jeq .L608
.L498:
	move.l 208(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L500
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L501
.L500:
	tst.b 142(%a2)
	jeq .L501
	tst.b 198(%a2)
	jne .L501
	tst.b 248(%a2)
	jne .L501
.L502:
	tst.b 152(%a2)
	jne .L503
	tst.b 150(%a2)
	jne .L504
	clr.b 160(%a2)
	move.b #1,248(%a2)
	move.b #1,150(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L504:
	tst.b 189(%a2)
	jeq .L609
.L505:
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 194(%a2),%d0
	cmp.l %a0,%d0
	jgt .L610
	clr.b 189(%a2)
	clr.b 152(%a2)
.L506:
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 208(%a2),%d0
.L503:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L508
	and.l JAGPAD_7,%d0
	jeq .L509
.L508:
	tst.b 142(%a2)
	jeq .L509
	tst.b 198(%a2)
	jne .L509
	tst.b 248(%a2)
	jne .L509
.L510:
	tst.b 150(%a2)
	jne .L511
	tst.b 152(%a2)
	jne .L512
	clr.b 160(%a2)
	move.b #1,248(%a2)
	move.b #1,152(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L512:
	tst.b 189(%a2)
	jeq .L611
.L513:
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 194(%a2),%d0
	cmp.l %a0,%d0
	jgt .L612
	clr.b 189(%a2)
	clr.b 152(%a2)
.L514:
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L511:
	tst.l 16(%a3)
	jne .L516
	tst.b 150(%a2)
	jne .L516
	tst.b 152(%a2)
	jeq .L613
.L516:
	tst.b 142(%a2)
	jeq .L388
	tst.b 198(%a2)
	jne .L517
	move.w raptor_ticks,%a0
	cmp.l 254(%a2),%a0
	jle .L517
	tst.b 199(%a2)
	jne .L518
	moveq #10,%d0
	add.l 200(%a2),%d0
	cmp.l %a0,%d0
	jge .L518
	tst.b 150(%a2)
	jne .L518
	tst.b 152(%a2)
	jne .L518
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,199(%a2)
	addq.l #8,%sp
.L518:
	tst.b 189(%a2)
	jne .L519
	lea ___floatsisf,%a4
	move.l 288(%a2),-(%sp)
	jsr (%a4)
	move.l 236(%a2),%d1
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
	move.l 300(%a2),%d2
	move.l 270(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,270(%a2)
	move.l %d2,(%sp)
	move.l 296(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,300(%a2)
	lea (16,%sp),%sp
.L519:
	tst.b 150(%a2)
	jne .L517
	tst.b 152(%a2)
	jne .L517
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.l 36(%a2),-(%sp)
	move.l 394(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L517:
	clr.l -(%sp)
	move.l 300(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L520
	moveq #89,%d0
	cmp.l 270(%a2),%d0
	jlt .L585
.L520:
	tst.b 198(%a2)
	jeq .L388
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 390(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L388
	move.b #1,187(%a2)
	clr.b 142(%a2)
	jra .L587
.L468:
	tst.b 159(%a2)
	jeq .L466
	tst.b 187(%a2)
	jeq .L466
	tst.b 141(%a2)
	jne .L470
	clr.b 187(%a2)
	clr.b 248(%a2)
	clr.b 159(%a2)
	move.b #1,141(%a2)
	clr.l 16(%a3)
	move.l 304(%a2),300(%a2)
	clr.b 198(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,200(%a2)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
.L470:
	move.l 208(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L472
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L472
.L473:
	tst.b 150(%a2)
	jeq .L475
	tst.b 198(%a2)
	jne .L475
	tst.b 141(%a2)
	jeq .L475
.L474:
	tst.b 152(%a2)
	jne .L475
	tst.b 150(%a2)
	jne .L476
	clr.b 160(%a2)
	move.b #1,248(%a2)
	move.b #1,150(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L476:
	tst.b 189(%a2)
	jeq .L614
.L477:
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 194(%a2),%d0
	cmp.l %a0,%d0
	jgt .L615
	clr.b 189(%a2)
	clr.b 150(%a2)
.L478:
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 208(%a2),%d0
.L475:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L480
	and.l JAGPAD_7,%d0
	jne .L480
.L481:
	tst.b 152(%a2)
	jeq .L483
	tst.b 198(%a2)
	jne .L483
	tst.b 141(%a2)
	jeq .L483
.L482:
	tst.b 150(%a2)
	jne .L483
	tst.b 152(%a2)
	jne .L484
	clr.b 160(%a2)
	move.b #1,248(%a2)
	move.b #1,152(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L484:
	tst.b 189(%a2)
	jeq .L616
.L485:
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 194(%a2),%d0
	cmp.l %a0,%d0
	jgt .L617
	clr.b 189(%a2)
	clr.b 152(%a2)
.L486:
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L483:
	tst.l 16(%a3)
	jne .L488
	tst.b 150(%a2)
	jne .L488
	tst.b 152(%a2)
	jeq .L618
.L488:
	tst.b 141(%a2)
	jeq .L388
	tst.b 198(%a2)
	jne .L489
	move.w raptor_ticks,%a0
	cmp.l 254(%a2),%a0
	jle .L489
	tst.b 199(%a2)
	jne .L490
	moveq #10,%d0
	add.l 200(%a2),%d0
	cmp.l %a0,%d0
	jge .L490
	tst.b 150(%a2)
	jne .L490
	tst.b 152(%a2)
	jne .L490
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,199(%a2)
	addq.l #8,%sp
.L490:
	tst.b 189(%a2)
	jne .L491
	lea ___floatsisf,%a4
	move.l 288(%a2),-(%sp)
	jsr (%a4)
	move.l 236(%a2),(%sp)
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
	move.l 300(%a2),%d2
	move.l 270(%a2),-(%sp)
	jsr (%a4)
	lea ___addsf3,%a4
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d3,%a0
	jsr (%a0)
	move.l %d0,270(%a2)
	move.l %d2,(%sp)
	move.l 296(%a2),-(%sp)
	jsr (%a4)
	move.l %d0,300(%a2)
	lea (16,%sp),%sp
.L491:
	tst.b 150(%a2)
	jne .L489
	tst.b 152(%a2)
	jeq .L619
.L489:
	clr.l -(%sp)
	move.l 300(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L492
	moveq #89,%d0
	cmp.l 270(%a2),%d0
	jlt .L585
.L492:
	tst.b 198(%a2)
	jeq .L388
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 390(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 32(%a2),(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L388
	move.b #1,187(%a2)
	clr.b 141(%a2)
.L587:
	clr.b 150(%a2)
	clr.b 151(%a2)
	clr.b 152(%a2)
	clr.b 199(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L388
.L472:
	tst.b 141(%a2)
	jeq .L473
	tst.b 198(%a2)
	jne .L473
	tst.b 248(%a2)
	jeq .L474
	jra .L473
.L480:
	tst.b 141(%a2)
	jeq .L481
	tst.b 198(%a2)
	jne .L481
	tst.b 248(%a2)
	jeq .L482
	jra .L481
.L608:
	tst.l %d1
	jeq .L522
	tst.b 187(%a2)
	jeq .L522
	tst.b 140(%a2)
	jne .L522
	tst.b 138(%a2)
	jne .L523
	clr.l 16(%a3)
.L523:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	pea 1.w
	and.l #255,%d2
	move.l %d2,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 382(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	move.b #1,138(%a2)
	clr.b 143(%a2)
	clr.b 158(%a2)
	clr.b 144(%a2)
	clr.b 139(%a2)
	clr.b 146(%a2)
	clr.b 147(%a2)
	lea (32,%sp),%sp
	tst.l 266(%a2)
	jle .L388
	tst.b 177(%a2)
	jne .L524
	move.l 220(%a2),%d0
	moveq #-1,%d2
	cmp.l 288(%a2),%d2
	jne .L525
	move.l 216(%a2),%d0
.L525:
	add.l #-2147483648,%d0
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L584:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L388
.L501:
	tst.b 150(%a2)
	jeq .L503
	tst.b 198(%a2)
	jne .L503
	tst.b 142(%a2)
	jeq .L503
	jra .L502
.L509:
	tst.b 152(%a2)
	jeq .L511
	tst.b 198(%a2)
	jne .L511
	tst.b 142(%a2)
	jeq .L511
	jra .L510
.L610:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L506
.L609:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 189(%a2)
	jeq .L506
	jra .L505
.L585:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 150(%a2)
	clr.b 151(%a2)
	clr.b 152(%a2)
.L588:
	move.b #1,198(%a2)
	clr.l 300(%a2)
	moveq #90,%d1
	move.l %d1,270(%a2)
	addq.l #4,%sp
	jra .L388
.L613:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	pea 1.w
	clr.l -(%sp)
.L586:
	move.l 36(%a2),-(%sp)
	move.l 394(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L496:
	tst.b 159(%a2)
	jeq .L494
	tst.b 187(%a2)
	jeq .L494
	tst.b 142(%a2)
	jne .L498
	clr.b 187(%a2)
	clr.b 248(%a2)
	clr.b 159(%a2)
	move.b #1,142(%a2)
	clr.l 16(%a3)
	move.l 304(%a2),300(%a2)
	clr.b 198(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,200(%a2)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L498
.L463:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 56(%a2),-(%sp)
	move.l 414(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 56(%a2),(%sp)
.L590:
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L388
	clr.b 145(%a2)
	jra .L388
.L461:
	tst.b 143(%a2)
	jeq .L464
	clr.b 143(%a2)
.L464:
	tst.b 145(%a2)
	jne .L465
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 44(%a2),-(%sp)
	move.l 402(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L615:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L478
.L614:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 189(%a2)
	jeq .L478
	jra .L477
.L465:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 48(%a2),-(%sp)
	move.l 406(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (28,%sp),%sp
	move.l 48(%a2),(%sp)
	jra .L590
.L612:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 442(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L514
.L611:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 189(%a2)
	jeq .L514
	jra .L513
.L618:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	pea 1.w
	pea 1.w
	jra .L586
.L619:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 36(%a2),-(%sp)
	move.l 394(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L489
.L524:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L388
	move.l 244(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L584
.L522:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L526
	tst.b 187(%a2)
	jeq .L526
	tst.b 140(%a2)
	jne .L526
	tst.b 138(%a2)
	jne .L527
	clr.l 16(%a3)
.L527:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	pea 1.w
	move.b %d2,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.l 24(%a2),-(%sp)
	move.l 382(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	move.b #1,138(%a2)
	clr.b 143(%a2)
	clr.b 158(%a2)
	clr.b 144(%a2)
	clr.b 139(%a2)
	clr.b 146(%a2)
	clr.b 147(%a2)
	lea (32,%sp),%sp
	cmp.l #280,266(%a2)
	jgt .L388
	tst.b 177(%a2)
	jne .L528
	move.l 216(%a2),%d0
	moveq #-1,%d3
	cmp.l 288(%a2),%d3
	jne .L529
	move.l 220(%a2),%d0
.L529:
	move.l 8(%fp),-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L584
.L528:
	move.l 244(%a2),-(%sp)
	move.l 8(%fp),-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L584
.L526:
	and.l JAGPAD_DOWN,%d0
	jeq .L530
	tst.b 187(%a2)
	jeq .L530
	tst.b 140(%a2)
	jne .L530
	tst.b 143(%a2)
	jne .L531
	move.b #1,143(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.l 16(%a3)
.L531:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 40(%a2),-(%sp)
	move.l 398(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L530:
	tst.l %d3
	jeq .L532
	tst.b 159(%a2)
	jne .L533
.L532:
	tst.b 140(%a2)
	jeq .L620
.L534:
	move.l 208(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L536
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L537
.L536:
	tst.b 140(%a2)
	jeq .L537
	tst.b 198(%a2)
	jne .L537
	tst.b 248(%a2)
	jeq .L538
.L537:
	tst.b 150(%a2)
	jeq .L539
	tst.b 198(%a2)
	jne .L539
	tst.b 140(%a2)
	jeq .L539
.L538:
	tst.b 151(%a2)
	jne .L539
	tst.b 150(%a2)
	jne .L540
	clr.b 160(%a2)
	move.b #1,248(%a2)
	move.b #1,139(%a2)
	move.b #1,150(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L540:
	tst.b 189(%a2)
	jeq .L621
.L541:
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 194(%a2),%d0
	cmp.l %a0,%d0
	jgt .L622
	clr.b 189(%a2)
	clr.b 150(%a2)
.L542:
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 208(%a2),%d0
.L539:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L544
	and.l JAGPAD_7,%d0
	jeq .L545
.L544:
	tst.b 140(%a2)
	jeq .L545
	tst.b 198(%a2)
	jne .L545
	tst.b 248(%a2)
	jeq .L546
.L545:
	tst.b 151(%a2)
	jeq .L547
	tst.b 198(%a2)
	jne .L547
	tst.b 140(%a2)
	jeq .L547
.L546:
	tst.b 150(%a2)
	jne .L547
	tst.b 151(%a2)
	jne .L548
	clr.b 160(%a2)
	move.b #1,248(%a2)
	move.b #1,151(%a2)
	move.b #1,139(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 284(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L548:
	tst.b 189(%a2)
	jeq .L623
.L549:
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	add.l 194(%a2),%d0
	cmp.l %a0,%d0
	jgt .L624
	clr.b 189(%a2)
	clr.b 151(%a2)
.L550:
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L547:
	tst.l 16(%a3)
	jne .L552
	tst.b 150(%a2)
	jne .L552
	tst.b 151(%a2)
	jeq .L557
.L552:
	tst.b 140(%a2)
	jeq .L388
	tst.b 198(%a2)
	jne .L553
	move.w raptor_ticks,%d2
	ext.l %d2
	cmp.l 254(%a2),%d2
	jle .L554
	tst.b 189(%a2)
	jne .L554
	move.l 300(%a2),%d3
	move.l 270(%a2),-(%sp)
	jsr ___floatsisf
	lea ___addsf3,%a4
	move.l %d3,(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,270(%a2)
	move.l %d3,(%sp)
	move.l 296(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,300(%a2)
	move.l %d2,254(%a2)
.L554:
	tst.b 150(%a2)
	jne .L553
	tst.b 151(%a2)
	jne .L553
	moveq #1,%d4
	move.l %d4,16(%a3)
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 390(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L553:
	clr.l -(%sp)
	move.l 300(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L555
	moveq #89,%d0
	cmp.l 270(%a2),%d0
	jlt .L625
.L555:
	tst.b 198(%a2)
	jeq .L388
	move.l 32(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L557
	move.b #1,187(%a2)
	clr.b 140(%a2)
	clr.b 150(%a2)
	clr.b 151(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L557:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 32(%a2),-(%sp)
	move.l 390(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L625:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 150(%a2)
	clr.b 151(%a2)
	jra .L588
.L624:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 438(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L550
.L623:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 189(%a2)
	jeq .L550
	jra .L549
.L617:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 442(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L486
.L533:
	tst.b 140(%a2)
	jne .L534
	clr.b 159(%a2)
	clr.b 248(%a2)
	move.b #1,140(%a2)
	clr.l 16(%a3)
	move.l 304(%a2),300(%a2)
	clr.b 198(%a2)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L534
.L616:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 80(%a2),-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 189(%a2)
	jeq .L486
	jra .L485
.L621:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 76(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.b 189(%a2)
	jeq .L542
	jra .L541
.L622:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	move.l 20(%a3),-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 434(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L542
.L620:
	tst.b 143(%a2)
	jne .L626
	tst.b 144(%a2)
	jne .L627
	tst.b 138(%a2)
	jeq .L560
	clr.b 177(%a2)
	clr.b 138(%a2)
	clr.l 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L560:
	tst.b 136(%a2)
	jne .L561
	move.b #1,136(%a2)
	clr.b 139(%a2)
.L561:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 12(%a2),-(%sp)
	move.l 370(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L388
.L627:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 44(%a2),-(%sp)
	move.l 402(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L388
	clr.b 144(%a2)
	jra .L388
.L626:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.l 40(%a2),-(%sp)
	move.l 398(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 16(%a3)
	jne .L388
	clr.b 143(%a2)
	jra .L388
	.even
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 179(%a2)
	jeq .L629
	moveq #-1,%d0
	cmp.l 288(%a2),%d0
	seq %d0
	neg.b %d0
	move.b %d0,_walkForward
	tst.b 185(%a2)
	jeq .L631
	clr.b 185(%a2)
	clr.l 16(%a3)
	move.l 316(%a2),%d0
	jle .L632
	tst.b 180(%a2)
	jne .L632
	move.b #1,180(%a2)
.L631:
	tst.b 186(%a2)
	jeq .L633
.L669:
	clr.b 186(%a2)
	clr.l 16(%a3)
	move.b #1,137(%a2)
	moveq #90,%d1
	move.l %d1,270(%a2)
	move.l (%a2),%d0
	move.b #1,%d1
	cmp.l %d0,%d1
	jeq .L634
	move.b #2,%d1
	cmp.l %d0,%d1
	jeq .L660
.L633:
	tst.b 180(%a2)
	jne .L661
.L636:
	tst.b 181(%a2)
	jne .L662
	tst.b 137(%a2)
	jne .L663
	tst.b 183(%a2)
	jeq .L640
	move.w raptor_ticks,%a0
	move.l 254(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L664
.L640:
	tst.b 178(%a2)
	jeq .L645
	tst.b 140(%a2)
	jne .L645
	tst.b 142(%a2)
	jne .L645
	tst.b 141(%a2)
	jne .L645
	tst.b 176(%a2)
	jne .L645
	tst.b 139(%a2)
	jne .L645
	tst.b 292(%a2)
	jeq .L646
	clr.b 292(%a2)
	clr.l 16(%a3)
.L646:
	tst.b 293(%a2)
	jeq .L665
	tst.l 16(%a3)
	jle .L666
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L657:
	move.l 28(%a2),-(%sp)
	move.l 386(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L629:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L664:
	clr.b 183(%a2)
	clr.l 16(%a3)
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 282(%a2)
	jeq .L641
	clr.b 282(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L641:
	move.l 274(%a2),%d0
	subq.l #1,%d0
	move.l %d0,274(%a2)
	jgt .L642
	clr.l 274(%a2)
	move.b #1,185(%a2)
	moveq #0,%d0
.L642:
	move.l sprite,%a0
	tst.b 294(%a2)
	jne .L667
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
.L645:
	tst.b 182(%a2)
	jne .L668
.L652:
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
	tst.b 136(%a2)
	jeq .L629
.L672:
	move.l 204(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 268(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w 272(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L661:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	pea 1.w
	pea 1.w
	move.l 16(%a2),-(%sp)
	move.l 374(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	tst.l 278(%a2)
	jle .L629
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	move.b #1,181(%a2)
	lea (16,%sp),%sp
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L632:
	move.b #1,181(%a2)
	clr.b 180(%a2)
	addq.l #1,%d0
	move.l %d0,316(%a2)
	tst.b 186(%a2)
	jeq .L633
	jra .L669
.L668:
	move.l 288(%a2),%d3
	move.l %d3,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	lea ___mulsf3,%a4
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l 244(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	moveq #1,%d1
	cmp.l %d3,%d1
	jeq .L670
	moveq #-1,%d1
	cmp.l %d3,%d1
	jeq .L671
.L654:
	add.l %d0,266(%a2)
.L655:
	move.l 250(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L652
	clr.b 182(%a2)
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
	tst.b 136(%a2)
	jne .L672
	jra .L629
.L660:
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandlerb
	addq.l #8,%sp
	tst.b 180(%a2)
	jeq .L636
	jra .L661
.L662:
	move.l 124(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jne .L673
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 124(%a2),-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
.L674:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L634:
	moveq #0,%d0
	move.b 294(%a2),%d0
	move.l %d0,-(%sp)
	move.l 284(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandlerb
	addq.l #8,%sp
	tst.b 180(%a2)
	jeq .L636
	jra .L661
.L663:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 20(%a2),-(%sp)
	move.l 378(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L673:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 284(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 179(%a2)
	addq.l #4,%sp
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 124(%a2),-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L674
.L671:
	tst.l %d0
	jle .L654
.L656:
	tst.b 320(%a2)
	jeq .L655
	add.l %d0,266(%a2)
	jra .L655
.L666:
	clr.b 178(%a2)
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L657
.L670:
	tst.l %d0
	jlt .L656
	add.l %d0,266(%a2)
	jra .L655
.L667:
	move.l %d0,9304(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L645
.L665:
	move.l 28(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimatori
	addq.l #8,%sp
	tst.b %d0
	jeq .L648
	move.b #1,293(%a2)
	move.l 288(%a2),%d0
	neg.l %d0
	move.l %d0,288(%a2)
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L675
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
.L648:
	move.l 288(%a2),-(%sp)
	move.l 270(%a2),-(%sp)
	move.l 266(%a2),-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.l 28(%a2),-(%sp)
	move.l 386(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibbiii
	lea (32,%sp),%sp
	jra .L629
.L675:
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
	jra .L648
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
