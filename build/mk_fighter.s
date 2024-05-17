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
	clr.l 180(%a0)
	move.b #1,184(%a0)
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
	move.w #-1,262(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,244(%a0)
	move.w #106,246(%a0)
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
	move.w #1,262(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,244(%a0)
	move.w #106,246(%a0)
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
	move.l #0x400ccccd,268(%a2)
	clr.l 272(%a2)
	move.l #0xc1800000,276(%a2)
	move.l #0xc1a80000,280(%a2)
	move.l #0xc1200000,284(%a2)
	move.l #0x40a00000,288(%a2)
	clr.b 148(%a2)
	move.l 16(%fp),258(%a2)
	move.l 20(%fp),334(%a2)
	move.l 24(%fp),338(%a2)
	move.l 28(%fp),342(%a2)
	move.l 32(%fp),346(%a2)
	move.l 36(%fp),358(%a2)
	move.l 40(%fp),362(%a2)
	move.l 44(%fp),350(%a2)
	move.l 48(%fp),354(%a2)
	move.l 52(%fp),366(%a2)
	move.l 56(%fp),370(%a2)
	move.l 60(%fp),374(%a2)
	move.l 64(%fp),378(%a2)
	move.l 68(%fp),382(%a2)
	clr.l 176(%a2)
	move.l #0x40000000,190(%a2)
	move.l #0x40000000,194(%a2)
	move.l #0x40900000,198(%a2)
	move.l #0x40800000,202(%a2)
	move.l #0x40d00000,206(%a2)
	move.l #0x41000000,210(%a2)
	clr.l 218(%a2)
	move.l #0x40f00000,214(%a2)
	move.l #0x3f800000,222(%a2)
	moveq #1,%d0
	move.l %d0,236(%a2)
	clr.l 240(%a2)
	clr.l 228(%a2)
	move.b #1,133(%a2)
	move.b #1,82(%a2)
	clr.b 83(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.b 127(%a2)
	clr.b 86(%a2)
	clr.b 87(%a2)
	clr.b 88(%a2)
	clr.b 89(%a2)
	clr.b 90(%a2)
	clr.b 91(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	clr.b 94(%a2)
	clr.b 95(%a2)
	clr.b 96(%a2)
	clr.b 98(%a2)
	clr.b 97(%a2)
	clr.b 99(%a2)
	move.b #1,107(%a2)
	move.b #1,105(%a2)
	clr.b 108(%a2)
	move.b #1,106(%a2)
	move.b #1,154(%a2)
	clr.b 226(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 128(%a2)
	clr.b 129(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 109(%a2)
	clr.b 110(%a2)
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 113(%a2)
	clr.b 114(%a2)
	clr.b 115(%a2)
	clr.b 117(%a2)
	clr.b 120(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 134(%a2)
	clr.b 135(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 143(%a2)
	clr.b 146(%a2)
	clr.b 147(%a2)
	clr.w 150(%a2)
	clr.w 152(%a2)
	clr.b 155(%a2)
	clr.b 156(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.l 168(%a2)
	moveq #50,%d1
	move.l %d1,158(%a2)
	move.b #20,%d0
	move.l %d0,162(%a2)
	move.b %d2,266(%a2)
	move.b #33,%d1
	move.l %d1,248(%a2)
	clr.l 252(%a2)
	clr.b 256(%a2)
	clr.b 264(%a2)
	clr.b 265(%a2)
	move.b #1,294(%a2)
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
	move.l %d1,172(%a2)
	moveq #60,%d2
	move.l %d2,78(%a2)
	move.b #2,%d1
	move.l %d1,186(%a2)
	move.w #210,244(%a2)
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
	move.w #-1,262(%a2)
	move.w #222,%d0
	move.w #11904,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.w #90,246(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,148(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L27:
	moveq #61,%d2
	move.l %d2,172(%a2)
	move.b #57,%d1
	move.l %d1,78(%a2)
	move.b #1,%d2
	move.l %d2,186(%a2)
	move.w #50,244(%a2)
	move.l %d2,10968(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,262(%a2)
	moveq #62,%d0
	move.w #11712,%d1
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.w #90,246(%a2)
	add.l %d1,%a0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,148(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 292(%a0)
	unlk %fp
	rts
.LC0:
	.ascii "%d %d %d %d %d %d\0"
	.even
	.globl	__Z24fighterCaptureDpadInputsP7Fighter
__Z24fighterCaptureDpadInputsP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	cmp.w #1,262(%a2)
	jeq .L35
.L31:
	move.l 176(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L32
	tst.b 105(%a2)
	jne .L36
.L32:
	move.l JAGPAD_RIGHT,%d1
	and.l %d1,%d0
	jeq .L30
	tst.b 105(%a2)
	jeq .L30
	tst.b 108(%a2)
	jeq .L37
.L30:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L36:
	tst.b 108(%a2)
	jne .L32
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 176(%a2),%d0
	addq.l #8,%sp
	jra .L32
.L37:
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L35:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	moveq #60,%d0
	move.l %d0,(%sp)
	pea 120.w
	jsr rapLocate
	move.l 300(%a2),%a0
	addq.l #4,%sp
	move.l 240(%a0),(%sp)
	move.l 192(%a0),-(%sp)
	move.l 144(%a0),-(%sp)
	move.l 96(%a0),-(%sp)
	move.l 48(%a0),-(%sp)
	move.l (%a0),-(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	lea (28,%sp),%sp
	jsr _rapPrint
	jra .L31
	.even
	.globl	__Z25fighterHandleSpecialMovesfP7FighterP14SpriteAnimatorb
__Z25fighterHandleSpecialMovesfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l JAGPAD_C,%d0
	move.l %d0,%d1
	and.l 176(%a2),%d1
	jeq .L40
	tst.b 107(%a2)
	jne .L45
.L40:
	move.w 316(%a2),%a0
	move.l %a0,-(%sp)
	move.l 304(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L46
	tst.b 137(%a2)
	jne .L47
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L47:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 322(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L46:
	move.b #1,137(%a2)
	clr.b 140(%a2)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	addq.l #4,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L45:
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	jra .L40
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
	jeq .L52
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L53
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L56
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L56:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L53:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L52:
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
	jeq .L63
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L63:
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
	jeq .L67
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L71
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L67:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L71:
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
	jle .L78
.L74:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L78:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L79
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L79:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L74
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
	jne .L85
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L86
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L86:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L85:
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
	tst.b 125(%a2)
	jne .L89
	tst.b 109(%a2)
	jne .L90
	tst.b 110(%a2)
	jeq .L232
.L90:
	move.l 252(%a2),%d2
	tst.b 134(%a2)
	jne .L92
	tst.b 256(%a2)
	jne .L233
	move.l 248(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,248(%a2)
	jle .L234
.L94:
	move.l sprite,%a0
	tst.b 266(%a2)
	jeq .L95
.L251:
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L92:
	clr.l 252(%a2)
	clr.l 218(%a2)
	move.b #1,125(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	move.l %a0,240(%a2)
	clr.w 16(%a3)
	move.l 280(%a2),272(%a2)
	move.b 119(%a2),%d0
	jne .L97
	tst.b 120(%a2)
	jne .L97
	tst.b 129(%a2)
	jeq .L99
	clr.l 272(%a2)
.L99:
	tst.b 109(%a2)
	jne .L100
	tst.b 110(%a2)
	jeq .L235
.L100:
	moveq #0,%d1
	move.b 266(%a2),%d1
	move.l 258(%a2),%d0
	moveq #7,%d2
	cmp.l (%a2),%d2
	jeq .L236
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L104:
	move.b 110(%a2),%d1
	jne .L113
	tst.b 111(%a2)
	jeq .L109
.L113:
	move.w 244(%a2),%a4
	move.w 262(%a2),%d0
	cmp.w #-1,%d0
	jeq .L237
.L114:
	cmp.w #1,%d0
	jeq .L238
.L115:
	tst.b %d1
	jne .L116
	tst.b 113(%a2)
	jne .L116
	tst.b 114(%a2)
	jne .L116
	tst.b 111(%a2)
	jne .L239
	tst.b 117(%a2)
	jne .L119
	tst.b 116(%a2)
	jne .L119
.L89:
	tst.b 109(%a2)
	jeq .L120
	tst.b 125(%a2)
	jne .L240
.L120:
	tst.b 110(%a2)
	jeq .L91
	tst.b 125(%a2)
	jne .L241
.L91:
	tst.b 111(%a2)
	jeq .L242
.L122:
	tst.b 125(%a2)
	jne .L243
.L123:
	tst.b 112(%a2)
	jeq .L130
	tst.b 125(%a2)
	jeq .L130
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 236(%a2),%d0
	cmp.l %a0,%d0
	jle .L131
	move.w 262(%a2),%a4
	move.w 244(%a2),%d0
.L132:
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
	clr.b 112(%a2)
	clr.b 125(%a2)
.L88:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L242:
	tst.b 113(%a2)
	jeq .L123
	tst.b 125(%a2)
	jeq .L123
.L243:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 236(%a2),%d0
	cmp.l %a0,%d0
	jle .L124
	move.w 262(%a2),%a4
	move.w 244(%a2),%d0
.L125:
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
	clr.b 111(%a2)
	clr.b 113(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L130:
	tst.b 114(%a2)
	jeq .L137
	tst.b 125(%a2)
	jeq .L137
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 236(%a2),%d0
	cmp.l %a0,%d0
	jle .L138
	move.w 262(%a2),%a4
	move.w 244(%a2),%d0
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
.L266:
	clr.b 114(%a2)
	clr.b 115(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L137:
	tst.b 118(%a2)
	jeq .L144
	tst.b 125(%a2)
	jne .L244
.L144:
	move.b 129(%a2),%d2
	jeq .L145
	tst.b 125(%a2)
	jeq .L145
	tst.b 130(%a2)
	jne .L146
	tst.b 131(%a2)
	jeq .L147
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L146:
	tst.b 123(%a2)
	jne .L216
.L148:
	cmp.w #1,16(%a3)
	jle .L88
	move.w raptor_ticks,%a0
	cmp.l 232(%a2),%a0
	jlt .L88
	tst.b 130(%a2)
	jeq .L245
	move.w 246(%a2),%d0
	cmp.w #122,%d0
	jle .L155
	move.b #1,123(%a2)
	move.l %a0,232(%a2)
	move.w #90,246(%a2)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 522(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	lea __Z7bgShakeb,%a3
	jsr (%a3)
	move.l 258(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 134(%a2)
	jne .L156
	tst.b 256(%a2)
	jne .L246
	move.l 248(%a2),%d0
	subq.l #8,%d0
	move.l %d0,248(%a2)
	jle .L247
.L158:
	move.l sprite,%a0
	tst.b 266(%a2)
	jeq .L159
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L156:
	move.w 262(%a2),%d2
	lea ___floatsisf,%a5
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 210(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L161
	tst.b 129(%a2)
	jne .L161
.L162:
	tst.l %d0
	jle .L165
	tst.b 294(%a2)
	jeq .L164
.L165:
	add.w %d0,244(%a2)
.L164:
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 288(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,246(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
.L261:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L97:
	move.l 284(%a2),272(%a2)
	jra .L99
.L116:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr __Z10bloodSpraysss
	lea (12,%sp),%sp
	jra .L89
.L232:
	tst.b 111(%a2)
	jne .L90
	tst.b 117(%a2)
	jne .L90
	tst.b 116(%a2)
	jne .L90
	tst.b 118(%a2)
	jne .L90
	tst.b 113(%a2)
	jne .L90
	tst.b 112(%a2)
	jne .L90
	tst.b 119(%a2)
	jne .L90
	tst.b 114(%a2)
	jne .L90
	tst.b 120(%a2)
	jne .L90
	tst.b 129(%a2)
	jne .L90
	tst.b 111(%a2)
	jne .L122
	jra .L242
.L235:
	tst.b 118(%a2)
	jne .L100
	tst.b 113(%a2)
	jne .L100
	tst.b 112(%a2)
	jne .L100
	tst.b 114(%a2)
	jne .L105
	tst.b 120(%a2)
	jne .L105
	tst.b 111(%a2)
	jne .L108
	tst.b 117(%a2)
	jne .L108
	tst.b 116(%a2)
	jne .L108
	tst.b %d0
	jeq .L109
.L108:
	move.l 258(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 266(%a2),%d2
	move.l 258(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L111
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L248
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L104
.L95:
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
	jra .L92
.L240:
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 470(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
	clr.b 109(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L109:
	tst.b 117(%a2)
	jne .L203
	tst.b 116(%a2)
	jne .L203
	tst.b 113(%a2)
	jne .L203
	tst.b 114(%a2)
	jeq .L89
.L203:
	clr.b %d1
	move.w 244(%a2),%a4
	move.w 262(%a2),%d0
	cmp.w #-1,%d0
	jne .L114
.L237:
	lea (40,%a4),%a4
	jra .L115
.L241:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a1
	move.l %a1,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
	clr.b 110(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L145:
	tst.b 119(%a2)
	jne .L166
	tst.b 120(%a2)
	jeq .L167
.L166:
	tst.b 125(%a2)
	jeq .L167
	tst.b 123(%a2)
	jne .L216
	move.w raptor_ticks,%a0
	cmp.l 232(%a2),%a0
	jlt .L88
	move.w 262(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 202(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L169
	tst.b %d2
	jne .L169
.L170:
	tst.l %d0
	jle .L173
	tst.b 294(%a2)
	jeq .L172
.L173:
	add.w %d0,244(%a2)
.L172:
	move.b 121(%a2),%d3
	move.l 272(%a2),%d2
	tst.b %d3
	jne .L175
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,246(%a2)
	move.l 268(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,272(%a2)
.L175:
	move.l %d2,-(%sp)
	move.l 280(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L176
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L249
.L176:
	tst.b 122(%a2)
	jne .L180
	tst.b %d3
	jne .L181
	tst.b 120(%a2)
	jeq .L250
.L181:
	move.b #1,121(%a2)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L179
	move.b #1,122(%a2)
	clr.b 121(%a2)
.L179:
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
.L263:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L238:
	lea (-40,%a4),%a4
	jra .L115
.L233:
	clr.b 256(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 248(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,248(%a2)
	jgt .L94
.L234:
	clr.l 248(%a2)
	move.b #1,145(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 266(%a2)
	jeq .L95
	jra .L251
.L124:
	move.w 262(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 198(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L126
	tst.b 129(%a2)
	jeq .L127
.L126:
	tst.l %d0
	jlt .L252
.L128:
	cmp.w #1,%d2
	jne .L127
	tst.b 129(%a2)
	jeq .L129
.L127:
	tst.l %d0
	jle .L129
	tst.b 294(%a2)
	jeq .L208
.L129:
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
	jra .L125
.L167:
	tst.b 116(%a2)
	jeq .L183
	tst.b 125(%a2)
	jeq .L183
	tst.b 123(%a2)
	jne .L216
	move.l 232(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L88
	move.w 262(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 202(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L185
	tst.b %d2
	jne .L185
.L186:
	tst.l %d0
	jle .L189
	tst.b 294(%a2)
	jeq .L188
.L189:
	add.w %d0,244(%a2)
.L188:
	move.l 296(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,296(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L253
.L190:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L254
.L191:
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 482(%a2),-(%sp)
.L214:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	lea (36,%sp),%sp
.L257:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L183:
	tst.b 117(%a2)
	jeq .L192
	tst.b 125(%a2)
	jeq .L192
	tst.b 123(%a2)
	jne .L216
	move.l 232(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L88
	move.w 262(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 202(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L194
	tst.b %d2
	jne .L194
.L195:
	tst.l %d0
	jle .L198
	tst.b 294(%a2)
	jeq .L197
.L198:
	add.w %d0,244(%a2)
.L197:
	move.l 296(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,296(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L255
.L199:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L256
.L200:
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
.L264:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	lea (36,%sp),%sp
	jra .L257
.L192:
	tst.b 124(%a2)
	jeq .L88
	tst.b 125(%a2)
	jeq .L88
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 50(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
	clr.b 125(%a2)
	clr.b 124(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L236:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L104
.L244:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a1
	move.l %a1,-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
	move.l 258(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 118(%a2)
	move.b #1,124(%a2)
	clr.w 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L119:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.w %a4,%d2
	ext.l %d2
	move.w 246(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.l %d2,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 246(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%d0
	add.w #-40,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	move.w 262(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.w 262(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 262(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w %d0,%a4
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	jra .L89
.L252:
	tst.b 294(%a2)
	jne .L128
.L208:
	move.w 244(%a2),%d0
	jra .L125
.L216:
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a1
	pea -1(%a1)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 232(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L88
	clr.b 119(%a2)
	clr.b 120(%a2)
	clr.b 129(%a2)
	clr.b 130(%a2)
	clr.b 117(%a2)
	clr.b 116(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	move.b #1,124(%a2)
	clr.l 296(%a2)
	clr.w 16(%a3)
	move.w #90,246(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L169:
	tst.l %d0
	jlt .L258
.L171:
	cmp.w #1,%d3
	jne .L170
	tst.b %d2
	jne .L170
	add.w %d0,244(%a2)
	jra .L172
.L258:
	tst.b 294(%a2)
	jne .L171
	jra .L172
.L185:
	tst.l %d0
	jlt .L259
.L187:
	cmp.w #1,%d3
	jne .L186
	tst.b %d2
	jne .L186
	add.w %d0,244(%a2)
	jra .L188
.L161:
	tst.l %d0
	jlt .L260
.L163:
	cmp.w #1,%d2
	jne .L162
	tst.b 129(%a2)
	jne .L162
	add.w %d0,244(%a2)
	jra .L164
.L260:
	tst.b 294(%a2)
	jne .L163
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 288(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,246(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L261
.L194:
	tst.l %d0
	jlt .L262
.L196:
	cmp.w #1,%d3
	jne .L195
	tst.b %d2
	jne .L195
	add.w %d0,244(%a2)
	jra .L197
.L254:
	move.b #1,123(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	clr.l 296(%a2)
	move.w #90,246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 258(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 296(%a2),%a0
	addq.l #4,%sp
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 482(%a2),-(%sp)
	jra .L214
.L246:
	clr.b 256(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 248(%a2),%d0
	subq.l #8,%d0
	move.l %d0,248(%a2)
	jgt .L158
	jra .L247
.L259:
	tst.b 294(%a2)
	jne .L187
	move.l 296(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,296(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L190
	jra .L253
.L247:
	clr.l 248(%a2)
	move.b #1,145(%a2)
	moveq #0,%d0
	jra .L158
.L249:
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L263
.L250:
	move.l 258(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L181
.L256:
	move.b #1,123(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	clr.l 296(%a2)
	move.w #90,246(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 258(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 296(%a2),%a0
	addq.l #4,%sp
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	jra .L264
.L253:
	move.l 258(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 296(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L191
	jra .L254
.L262:
	tst.b 294(%a2)
	jne .L196
	move.l 296(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,296(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L199
.L255:
	move.l 258(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 296(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L200
	jra .L256
.L131:
	move.w 262(%a2),%d2
	move.w %d2,%a4
	lea ___mulsf3,%a5
	move.l #0x3eaaaaab,-(%sp)
	move.l 198(%a2),-(%sp)
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
	jeq .L133
	tst.b 129(%a2)
	jne .L133
.L134:
	tst.l %d0
	jle .L136
	tst.b 294(%a2)
	jeq .L209
.L136:
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
	jra .L132
.L133:
	tst.l %d0
	jlt .L265
.L135:
	cmp.w #1,%d2
	jne .L134
	tst.b 129(%a2)
	jne .L134
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
	jra .L132
.L265:
	tst.b 294(%a2)
	jne .L135
.L209:
	move.w 244(%a2),%d0
	jra .L132
.L239:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 262(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%d1
	add.w #-30,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr __Z9bloodDropsss
	lea (12,%sp),%sp
	jra .L89
.L138:
	move.w 262(%a2),%d2
	move.w %d2,%a4
	lea ___mulsf3,%a5
	move.l #0x3f000000,-(%sp)
	move.l 198(%a2),-(%sp)
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
	jeq .L140
	tst.b 129(%a2)
	jne .L140
.L141:
	tst.l %d0
	jle .L143
	tst.b 294(%a2)
	jeq .L210
.L143:
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
.L268:
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
	jra .L266
.L140:
	tst.l %d0
	jlt .L267
.L142:
	cmp.w #1,%d2
	jne .L141
	tst.b 129(%a2)
	jne .L141
	add.w 244(%a2),%d0
	move.w %d0,244(%a2)
	jra .L268
.L267:
	tst.b 294(%a2)
	jne .L142
.L210:
	move.w 244(%a2),%d0
	move.l %a4,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L88
	jra .L266
.L105:
	tst.b 115(%a2)
	jeq .L107
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L104
.L147:
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 123(%a2)
	jeq .L148
	jra .L216
.L180:
	move.w 246(%a2),%d0
	cmp.w #90,%d0
	jle .L182
	move.b #1,123(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	move.w #90,246(%a2)
	move.w 262(%a2),%a1
	move.l %a1,-(%sp)
	pea 90.w
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 258(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L263
.L155:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 522(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L156
.L107:
	move.l 258(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L104
.L245:
	move.b #1,130(%a2)
	move.w 262(%a2),%d1
	move.w %d1,%d0
	ext.l %d0
	lsl.l #4,%d0
	cmp.w #1,%d1
	jeq .L150
	tst.b 129(%a2)
	jne .L150
.L151:
	tst.l %d0
	jle .L154
	tst.b 294(%a2)
	jeq .L153
.L154:
	add.w %d0,244(%a2)
.L153:
	move.w #48,246(%a2)
.L270:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L150:
	tst.l %d0
	jlt .L269
.L152:
	cmp.w #1,%d1
	jne .L151
	tst.b 129(%a2)
	jne .L151
	add.w %d0,244(%a2)
	jra .L153
.L269:
	tst.b 294(%a2)
	jne .L152
	move.w #48,246(%a2)
	jra .L270
.L182:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L263
.L159:
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
	jra .L156
.L248:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L104
.L111:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	jra .L104
	.even
	.globl	__Z17fighterResetFlagsP7Fighter
__Z17fighterResetFlagsP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 172(%a0),%d0
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
	clr.b 83(%a0)
	clr.b 84(%a0)
	clr.b 85(%a0)
	clr.b 127(%a0)
	clr.b 86(%a0)
	clr.b 87(%a0)
	clr.b 88(%a0)
	clr.b 89(%a0)
	clr.b 90(%a0)
	clr.b 91(%a0)
	clr.b 92(%a0)
	clr.b 93(%a0)
	clr.b 94(%a0)
	clr.b 95(%a0)
	clr.b 96(%a0)
	clr.b 98(%a0)
	clr.b 97(%a0)
	clr.b 99(%a0)
	clr.b 226(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 128(%a0)
	clr.b 129(%a0)
	clr.b 130(%a0)
	clr.b 131(%a0)
	clr.b 109(%a0)
	clr.b 110(%a0)
	clr.b 111(%a0)
	clr.b 112(%a0)
	clr.b 113(%a0)
	clr.b 114(%a0)
	clr.b 115(%a0)
	clr.b 117(%a0)
	clr.b 116(%a0)
	clr.b 119(%a0)
	clr.b 120(%a0)
	clr.b 121(%a0)
	clr.b 122(%a0)
	clr.b 123(%a0)
	clr.b 124(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 135(%a0)
	clr.b 136(%a0)
	clr.b 143(%a0)
	clr.b 146(%a0)
	clr.b 147(%a0)
	clr.b 155(%a0)
	clr.b 156(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 256(%a0)
	clr.b 264(%a0)
	clr.b 265(%a0)
	move.b #1,294(%a0)
	clr.b 137(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
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
	move.b #1,134(%a2)
	clr.l 252(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
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
	move.b 125(%a0),%d0
	jne .L276
	tst.b 90(%a0)
	jne .L276
.L277:
	tst.b 92(%a1)
	jne .L305
.L279:
	tst.b 93(%a1)
	jeq .L281
	tst.b 89(%a0)
	jne .L281
	move.b #1,110(%a0)
	moveq #2,%d1
	move.l %d1,252(%a0)
	clr.b 256(%a0)
	addq.l #5,180(%a1)
	move.b #1,184(%a1)
.L280:
	tst.b %d0
	jne .L275
.L300:
	tst.b 90(%a0)
	jeq .L293
.L306:
	tst.b 89(%a0)
	jeq .L293
	move.b #1,91(%a0)
	move.b #1,143(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a0)
.L296:
	tst.b 128(%a1)
	jeq .L275
	move.w 244(%a1),150(%a0)
	move.w 246(%a1),152(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,131(%a0)
	move.b #1,147(%a0)
	clr.b 154(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a1)
.L275:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L276:
	tst.b 134(%a0)
	jne .L277
	tst.b %d0
	jne .L275
	tst.b 90(%a0)
	jeq .L300
	move.b #1,91(%a0)
	move.b #1,143(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a0)
	tst.b 90(%a0)
	jne .L306
.L293:
	tst.b 100(%a1)
	jeq .L295
	move.b #1,118(%a0)
	moveq #4,%d0
	move.l %d0,252(%a0)
	clr.b 256(%a0)
	moveq #10,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L296
.L305:
	tst.b 89(%a0)
	jne .L279
	move.b #1,109(%a0)
	moveq #2,%d1
	move.l %d1,252(%a0)
	clr.b 256(%a0)
	addq.l #5,180(%a1)
	move.b #1,184(%a1)
	jra .L280
.L281:
	tst.b 94(%a1)
	jeq .L282
	tst.b 89(%a0)
	jne .L282
	move.b #1,109(%a0)
	moveq #5,%d1
	move.l %d1,252(%a0)
	clr.b 256(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
.L307:
	tst.b %d0
	jeq .L300
	jra .L275
.L282:
	tst.b 95(%a1)
	jeq .L283
	tst.b 89(%a0)
	jne .L283
	move.b #1,111(%a0)
	moveq #5,%d1
	move.l %d1,252(%a0)
	clr.b 256(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L307
.L283:
	tst.b 101(%a1)
	jeq .L284
	tst.b 89(%a0)
	jeq .L308
.L284:
	tst.b 102(%a1)
	jeq .L285
	tst.b 89(%a0)
	jeq .L309
.L285:
	tst.b 96(%a1)
	jeq .L287
	move.b #1,113(%a0)
	clr.b 154(%a1)
	move.b #1,156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #5,%d1
	move.l %d1,252(%a0)
	move.b #1,256(%a0)
	move.b #10,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	tst.b %d0
	jeq .L300
	jra .L275
.L295:
	tst.b 104(%a1)
	jeq .L296
	move.b #1,112(%a0)
	clr.b 154(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #2,%d0
	move.l %d0,252(%a0)
	clr.b 256(%a0)
	addq.l #5,180(%a1)
	move.b #1,184(%a1)
	jra .L296
.L287:
	tst.b 97(%a1)
	jne .L310
	tst.b 99(%a1)
	jeq .L289
	move.b #1,116(%a0)
	clr.b 154(%a1)
	move.b #1,155(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #8,%d1
	move.l %d1,252(%a0)
	clr.b 256(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L307
.L308:
	move.b #1,111(%a0)
	moveq #6,%d1
	move.l %d1,252(%a0)
	move.b #1,256(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
.L312:
	tst.b %d0
	jeq .L300
	jra .L275
.L309:
	move.b #1,114(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L311
	moveq #4,%d1
.L313:
	move.l %d1,252(%a0)
	move.b #1,256(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L312
.L310:
	move.b #1,113(%a0)
	clr.b 154(%a1)
	move.b #1,156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #4,%d1
	move.l %d1,252(%a0)
	clr.b 256(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L307
.L311:
	move.b #1,115(%a0)
	moveq #4,%d1
	jra .L313
.L289:
	tst.b 98(%a1)
	jeq .L290
	move.b #1,119(%a0)
	clr.b 154(%a1)
	move.b #1,156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #6,%d1
	move.l %d1,252(%a0)
	clr.b 256(%a0)
	move.b #20,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	jra .L307
.L290:
	tst.b 103(%a1)
	jeq .L280
	move.b #1,120(%a0)
	clr.b 154(%a1)
	move.b #1,156(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,232(%a1)
	moveq #4,%d1
	move.l %d1,252(%a0)
	clr.b 256(%a0)
	move.b #50,%d1
	add.l %d1,180(%a1)
	move.b #1,184(%a1)
	tst.b %d0
	jeq .L300
	jra .L275
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14396,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a4
	tst.b 126(%a3)
	jeq .L316
	move.l 4(%a4),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L330
.L316:
	tst.b 126(%a4)
	jeq .L317
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	cmp.l 112(%a0,%d0.l),%d3
	jeq .L331
.L317:
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
	jlt .L315
	move.l colliders,%a2
	moveq #0,%d2
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a2,%d2.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L320
.L335:
	cmp.w #0,%a0
	jlt .L315
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
	jeq .L332
	moveq #56,%d3
	cmp.l %d0,%d3
	jeq .L333
	moveq #62,%d3
	cmp.l %d0,%d3
	jne .L325
	moveq #56,%d4
	cmp.l %d1,%d4
	jeq .L334
.L328:
	addq.l #8,%d2
.L336:
	lea (%a2,%d2.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L335
.L320:
	cmp.w #0,%a0
	jge .L328
.L315:
	movem.l -28(%fp),#15388
	unlk %fp
	rts
.L333:
	moveq #59,%d4
	cmp.l %d1,%d4
	jne .L328
	tst.b 84(%a3)
	jeq .L328
	move.w 244(%a3),%d0
	cmp.w #10,%d0
	jle .L328
	cmp.w #328,%d0
	jgt .L328
	move.w 244(%a4),%d0
	cmp.w #10,%d0
	jle .L328
	cmp.w #328,%d0
	jgt .L328
	move.b #1,126(%a3)
	move.b #1,136(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,228(%a4)
	addq.l #8,%d2
	jra .L336
.L332:
	moveq #59,%d4
	cmp.l %d1,%d4
	jne .L328
	move.l %a4,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	move.l colliders,%a2
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L336
.L325:
	moveq #59,%d3
	cmp.l %d0,%d3
	jne .L328
	moveq #56,%d4
	cmp.l %d1,%d4
	jne .L328
	tst.b 84(%a4)
	jeq .L328
	move.b #1,126(%a4)
	move.b #1,136(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,228(%a3)
	addq.l #8,%d2
	jra .L336
.L334:
	move.l %a3,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a5)
	move.l colliders,%a2
	addq.l #8,%sp
	addq.l #8,%d2
	jra .L336
.L330:
	clr.b 126(%a3)
	jra .L316
.L331:
	clr.b 126(%a4)
	jra .L317
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 262(%a1),%d0
	cmp.w #1,%d0
	jeq .L352
	cmp.w #-1,%d0
	jeq .L353
.L341:
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L354
.L342:
	cmp.w #-1,%d0
	jne .L338
	move.w 244(%a0),%a2
	add.l _turnOffset,%a2
	move.w 244(%a1),%a1
	cmp.l %a2,%a1
	jle .L338
.L349:
	tst.b 127(%a0)
	jne .L338
	clr.b 265(%a0)
	move.b #1,127(%a0)
	move.b #1,264(%a0)
.L338:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L353:
	move.w 244(%a1),%a3
	add.l _turnOffset,%a3
	move.w 244(%a0),%a2
	cmp.l %a3,%a2
	jle .L341
	tst.b 127(%a1)
	jne .L341
.L355:
	clr.b 265(%a1)
	move.b #1,127(%a1)
	move.b #1,264(%a1)
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jne .L342
.L354:
	move.w 244(%a0),%a2
	move.w 244(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L349
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L352:
	move.w 244(%a1),%a3
	move.w 244(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L341
	tst.b 127(%a1)
	jne .L341
	jra .L355
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 262(%a0),%d0
	cmp.w #1,%d0
	jeq .L364
	cmp.w #-1,%d0
	jeq .L365
.L359:
	clr.b 132(%a0)
	clr.b 132(%a1)
.L357:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L365:
	move.w 244(%a1),%a3
	move.w 244(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L359
.L361:
	move.b #1,132(%a0)
	move.b #1,132(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L364:
	move.w 244(%a1),%a3
	move.w 244(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L361
	clr.b 132(%a0)
	clr.b 132(%a1)
	jra .L357
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 248(%a1),16024(%a0)
	move.l 12(%fp),%a1
	move.l 248(%a1),%d0
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
	move.l 12(%fp),252(%a1)
	move.b 19(%fp),256(%a1)
	move.l 24(%fp),%d0
	add.l %d0,180(%a0)
	move.b #1,184(%a0)
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
	tst.b 134(%a2)
	jne .L369
	tst.b 256(%a2)
	jne .L376
	move.l 248(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,248(%a2)
	jle .L377
.L372:
	move.l sprite,%a0
	tst.b 266(%a2)
	jeq .L373
.L378:
	move.l %d0,16024(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L373:
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
.L369:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L376:
	clr.b 256(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 248(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,248(%a2)
	jgt .L372
.L377:
	clr.l 248(%a2)
	move.b #1,145(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 266(%a2)
	jeq .L373
	jra .L378
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,262(%a0)
	jeq .L385
	tst.b 294(%a0)
	jeq .L380
.L382:
	addq.w #2,244(%a0)
.L380:
	unlk %fp
	rts
.L385:
	tst.b 129(%a0)
	jeq .L382
	tst.b 294(%a0)
	jne .L382
	jra .L380
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,262(%a0)
	jeq .L388
	tst.b 129(%a0)
	jeq .L389
.L388:
	tst.b 294(%a0)
	jeq .L387
.L389:
	subq.w #2,244(%a0)
.L387:
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
	tst.b 82(%a0)
	jeq .L394
	move.l 172(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 244(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 246(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L394:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L402
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L402:
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
	move.w #90,246(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 244(%a2),%d0
	cmp.w #11,%d0
	jle .L418
.L406:
	cmp.w #280,%d0
	jgt .L410
.L415:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L418:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L414
	move.w 244(%a2),%d0
	cmp.w #11,%d0
	jgt .L406
	cmp.w #280,244(%a3)
	jgt .L414
	jsr (%a4)
	tst.b %d0
	jne .L414
	move.w 244(%a2),%d0
	cmp.w #280,%d0
	jle .L415
.L410:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L419
.L414:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L419:
	cmp.w #328,244(%a2)
	jle .L415
	cmp.w #10,244(%a3)
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
	move.w 262(%a0),%d1
	cmp.w #1,%d1
	jeq .L422
	tst.b 129(%a0)
	jne .L422
.L423:
	tst.l %d0
	jle .L426
	tst.b 294(%a0)
	jeq .L421
.L426:
	add.w %d0,244(%a0)
.L421:
	unlk %fp
	rts
.L422:
	tst.l %d0
	jlt .L429
	cmp.w #1,%d1
	jne .L423
.L430:
	tst.b 129(%a0)
	jne .L423
	add.w %d0,244(%a0)
	jra .L421
.L429:
	tst.b 294(%a0)
	jeq .L421
	cmp.w #1,%d1
	jne .L423
	jra .L430
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #15408,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d3
	tst.b 125(%a2)
	jne .L433
	tst.b 84(%a2)
	jeq .L662
.L434:
	clr.b 82(%a2)
.L436:
	move.l 186(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,176(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L437
	tst.b 107(%a2)
	jeq .L437
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L437:
	move.w 316(%a2),%a0
	move.l %a0,-(%sp)
	move.l 304(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L663
	tst.b 137(%a2)
	jne .L664
	move.l 176(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L632
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L632
.L440:
	tst.b 99(%a2)
	jne .L442
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L450
	tst.l %d1
	jeq .L451
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L452
	cmp.w #1,262(%a2)
	jeq .L450
.L452:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L451
	cmp.w #-1,262(%a2)
	jeq .L450
.L451:
	tst.b 93(%a2)
	jeq .L665
.L454:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L461
	clr.b 93(%a2)
.L461:
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L449:
	move.l 176(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L629
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L629
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L629
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L629
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L629
	and.l JAGPAD_7,%d0
	jne .L629
	move.b #1,107(%a2)
.L629:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 176(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L432
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L631
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L631
	and.l JAGPAD_RIGHT,%d0
	jne .L631
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L631:
	move.b #1,106(%a2)
.L432:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L433:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L662:
	tst.b 89(%a2)
	jne .L434
	tst.b 86(%a2)
	jne .L434
	tst.b 88(%a2)
	jne .L434
	tst.b 87(%a2)
	jne .L434
	tst.b 85(%a2)
	jeq .L436
	clr.b 82(%a2)
	jra .L436
.L664:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 322(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L632:
	tst.b 89(%a2)
	jeq .L440
	tst.b 107(%a2)
	jeq .L440
	tst.b 154(%a2)
	jeq .L440
	tst.b 99(%a2)
	jne .L442
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 258(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L442:
	move.l 358(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 155(%a2)
	jeq .L666
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 158(%a2),%d0
	cmp.l %a0,%d0
	jgt .L667
.L446:
	clr.b 155(%a2)
.L447:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L449
	clr.b 99(%a2)
	move.b #1,154(%a2)
	jra .L449
.L665:
	tst.l %d4
	jeq .L668
.L462:
	tst.b 107(%a2)
	jeq .L463
	tst.b 154(%a2)
	jeq .L463
	tst.b 86(%a2)
	jne .L463
	tst.b 126(%a2)
	jeq .L463
	tst.b 102(%a2)
	jne .L466
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L468:
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L663:
	move.b #1,137(%a2)
	clr.b 140(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L450:
	tst.b 107(%a2)
	jeq .L451
	tst.b 154(%a2)
	jeq .L451
	tst.b 86(%a2)
	jne .L451
	tst.b 126(%a2)
	jne .L451
	tst.b 93(%a2)
	jne .L454
	clr.b 107(%a2)
	move.b #1,93(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d2
	move.b 266(%a2),%d2
	move.l 258(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L458
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L459
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L669
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L672:
	move.l 338(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L666:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 155(%a2)
	jeq .L447
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 158(%a2),%d0
	cmp.l %a0,%d0
	jle .L446
	jra .L667
.L668:
	tst.l %d1
	jeq .L463
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L464
	cmp.w #1,262(%a2)
	jeq .L462
.L464:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L463
	cmp.w #-1,262(%a2)
	jeq .L462
.L463:
	tst.b 102(%a2)
	jne .L466
	tst.l %d1
	jeq .L469
	tst.b 107(%a2)
	jeq .L469
	tst.b 154(%a2)
	jeq .L469
	tst.b 86(%a2)
	jne .L469
	tst.b 132(%a2)
	jeq .L469
	tst.b 128(%a2)
	jne .L471
	clr.b 107(%a2)
	move.b #1,128(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L473
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L474
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L670
.L473:
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L476:
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L667:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 155(%a2)
	jne .L449
	jra .L447
.L466:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L468
	clr.b 102(%a2)
	move.b #1,154(%a2)
	move.l 370(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L670:
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L469:
	tst.b 128(%a2)
	jne .L471
	tst.l %d1
	jeq .L477
	tst.b 107(%a2)
	jeq .L477
	tst.b 154(%a2)
	jeq .L477
	tst.b 86(%a2)
	jne .L477
	tst.b 132(%a2)
	jne .L477
	tst.b 92(%a2)
	jne .L479
	clr.b 107(%a2)
	move.b #1,92(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L481:
	move.l 334(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L471:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L476
	clr.b 128(%a2)
	move.b #1,154(%a2)
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L477:
	tst.b 92(%a2)
	jne .L479
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L482
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L482
	cmp.w #1,262(%a2)
	jeq .L483
.L482:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L484
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L484
	cmp.w #-1,262(%a2)
	jeq .L483
.L484:
	tst.b 100(%a2)
	jeq .L671
.L486:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L488
	clr.b 100(%a2)
.L488:
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L479:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L481
	clr.b 92(%a2)
	move.l 334(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L671:
	tst.l %d1
	jeq .L489
	cmp.w #1,262(%a2)
	jeq .L490
.L489:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L491
	cmp.w #-1,262(%a2)
	jeq .L490
.L491:
	tst.b 101(%a2)
	jne .L494
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L497
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L498
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L499
	cmp.w #1,262(%a2)
	jeq .L497
.L499:
	tst.l %d1
	jeq .L498
	cmp.w #-1,262(%a2)
	jeq .L497
.L498:
	tst.b 95(%a2)
	jne .L501
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L504
	tst.b 107(%a2)
	jeq .L504
	tst.b 154(%a2)
	jeq .L504
	tst.b 86(%a2)
	jne .L504
	tst.b 89(%a2)
	jne .L504
	tst.b 132(%a2)
	jeq .L504
	tst.b 103(%a2)
	jne .L506
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L508:
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L494:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L496
	clr.b 101(%a2)
.L496:
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L483:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L484
	tst.b 107(%a2)
	jeq .L484
	tst.b 154(%a2)
	jeq .L484
	tst.b 86(%a2)
	jne .L484
	tst.b 100(%a2)
	jne .L486
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,100(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 362(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L490:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L492
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L491
.L492:
	tst.b 107(%a2)
	jeq .L491
	tst.b 154(%a2)
	jeq .L491
	tst.b 86(%a2)
	jne .L491
	tst.b 101(%a2)
	jne .L494
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,101(%a2)
	clr.w 16(%a3)
	move.l 258(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 366(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L497:
	tst.b 107(%a2)
	jeq .L498
	tst.b 154(%a2)
	jeq .L498
	tst.b 86(%a2)
	jne .L498
	tst.b 89(%a2)
	jne .L498
	tst.b 126(%a2)
	jne .L498
	tst.b 95(%a2)
	jne .L501
	clr.b 107(%a2)
	move.b #1,95(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L503:
	move.l 346(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L501:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L503
	clr.b 95(%a2)
	move.l 346(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L459:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L672
.L458:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L672
.L669:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L672
.L474:
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L504:
	tst.b 103(%a2)
	jne .L506
	and.l %d0,%d5
	jeq .L509
	tst.b 107(%a2)
	jeq .L509
	tst.b 154(%a2)
	jeq .L509
	tst.b 86(%a2)
	jne .L509
	tst.b 89(%a2)
	jne .L509
	tst.b 126(%a2)
	jne .L509
	tst.b 94(%a2)
	jne .L511
	clr.b 107(%a2)
	move.b #1,94(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L513:
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L506:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L508
	clr.b 103(%a2)
	move.b #1,154(%a2)
	move.l 374(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L509:
	tst.b 94(%a2)
	jne .L511
	tst.l %d4
	jeq .L514
	tst.b 107(%a2)
	jeq .L514
	tst.b 154(%a2)
	jeq .L514
	tst.b 86(%a2)
	jne .L514
	tst.b 89(%a2)
	jeq .L514
	tst.b 104(%a2)
	jne .L516
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 258(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L518:
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L511:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L513
	clr.b 94(%a2)
	move.l 342(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L514:
	tst.b 104(%a2)
	jeq .L673
.L516:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L518
	clr.b 104(%a2)
	move.b #1,154(%a2)
	move.b #1,89(%a2)
	move.w #1,16(%a3)
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L673:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L519
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L520
.L519:
	tst.b 86(%a2)
	jne .L520
	tst.b 154(%a2)
	jeq .L520
	tst.b 90(%a2)
	jne .L521
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L521:
	and.l JAGPAD_DOWN,%d0
	jeq .L522
	tst.b 89(%a2)
	jne .L523
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L523:
	tst.b 91(%a2)
	jne .L524
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 430(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L520:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L527
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L528
	cmp.w #1,262(%a2)
	jeq .L529
.L528:
	tst.l %d1
	jeq .L527
	cmp.w #-1,262(%a2)
	jeq .L529
.L527:
	tst.b 87(%a2)
	jeq .L674
.L531:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L533
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L534
.L533:
	tst.b 87(%a2)
	jeq .L534
	tst.b 166(%a2)
	jne .L534
	tst.b 226(%a2)
	jeq .L535
.L534:
	tst.b 96(%a2)
	jeq .L536
	tst.b 166(%a2)
	jne .L536
	tst.b 87(%a2)
	jeq .L536
.L535:
	tst.b 98(%a2)
	jne .L536
	tst.b 96(%a2)
	jne .L537
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L537:
	tst.b 156(%a2)
	jeq .L675
.L538:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L676
	clr.b 156(%a2)
	clr.b 96(%a2)
.L539:
	move.l 350(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
.L536:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L541
	and.l JAGPAD_9,%d0
	jeq .L542
.L541:
	tst.b 87(%a2)
	jeq .L542
	tst.b 166(%a2)
	jne .L542
	tst.b 226(%a2)
	jeq .L543
.L542:
	tst.b 98(%a2)
	jeq .L544
	tst.b 166(%a2)
	jne .L544
	tst.b 87(%a2)
	jeq .L544
.L543:
	tst.b 96(%a2)
	jne .L544
	tst.b 98(%a2)
	jne .L545
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L545:
	tst.b 156(%a2)
	jeq .L677
.L546:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L678
	clr.b 156(%a2)
	clr.b 98(%a2)
.L547:
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L544:
	tst.w 16(%a3)
	jne .L549
	tst.b 96(%a2)
	jne .L549
	tst.b 98(%a2)
	jeq .L679
.L549:
	tst.b 87(%a2)
	jeq .L449
	tst.b 166(%a2)
	jne .L550
	move.l 168(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L550
	tst.b 167(%a2)
	jne .L551
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L551
	tst.b 96(%a2)
	jne .L551
	tst.b 98(%a2)
	jne .L551
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,167(%a2)
	addq.l #8,%sp
.L551:
	tst.b 156(%a2)
	jeq .L680
.L552:
	tst.b 96(%a2)
	jne .L554
	tst.b 98(%a2)
	jne .L554
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 414(%a2),-(%sp)
	move.l 296(%a2),-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L554:
	move.w raptor_ticks,%a0
	move.l %a0,168(%a2)
.L550:
	clr.l -(%sp)
	move.l 272(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L555
	cmp.w #89,246(%a2)
	jgt .L655
.L555:
	tst.b 166(%a2)
	jeq .L449
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 410(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L449
	move.b #1,154(%a2)
	clr.b 87(%a2)
.L657:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 167(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L449
.L522:
	tst.b 89(%a2)
	jeq .L525
	clr.b 89(%a2)
.L525:
	tst.b 91(%a2)
	jne .L526
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L655:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,166(%a2)
	clr.l 272(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
	jra .L449
.L524:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 34(%a2),%a0
.L659:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L449
	clr.b 91(%a2)
	jra .L449
.L526:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 426(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 30(%a2),%a0
	jra .L659
.L680:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 214(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 296(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,296(%a2)
	addq.l #8,%sp
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L553
	clr.l 296(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,166(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
.L553:
	move.l 268(%a2),-(%sp)
	move.l 272(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,272(%a2)
	jra .L552
.L679:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L656:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 414(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L674:
	tst.l %d4
	jeq .L557
	tst.l %d1
	jeq .L558
	cmp.w #1,262(%a2)
	jeq .L559
.L558:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L557
	cmp.w #-1,262(%a2)
	jeq .L559
.L557:
	tst.b 88(%a2)
	jeq .L681
.L561:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L563
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L564
.L563:
	tst.b 88(%a2)
	jeq .L564
	tst.b 166(%a2)
	jne .L564
	tst.b 226(%a2)
	jeq .L565
.L564:
	tst.b 96(%a2)
	jeq .L566
	tst.b 166(%a2)
	jne .L566
	tst.b 88(%a2)
	jeq .L566
.L565:
	tst.b 98(%a2)
	jne .L566
	tst.b 96(%a2)
	jne .L567
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L567:
	tst.b 156(%a2)
	jeq .L682
.L568:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L683
	clr.b 156(%a2)
	clr.b 98(%a2)
.L569:
	move.l 350(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
.L566:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L571
	and.l JAGPAD_9,%d0
	jeq .L572
.L571:
	tst.b 88(%a2)
	jeq .L572
	tst.b 166(%a2)
	jne .L572
	tst.b 226(%a2)
	jeq .L573
.L572:
	tst.b 98(%a2)
	jeq .L574
	tst.b 166(%a2)
	jne .L574
	tst.b 88(%a2)
	jeq .L574
.L573:
	tst.b 96(%a2)
	jne .L574
	tst.b 98(%a2)
	jne .L575
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L575:
	tst.b 156(%a2)
	jeq .L684
.L576:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L685
	clr.b 156(%a2)
	clr.b 98(%a2)
.L577:
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L574:
	tst.w 16(%a3)
	jne .L579
	tst.b 96(%a2)
	jne .L579
	tst.b 98(%a2)
	jeq .L686
.L579:
	tst.b 88(%a2)
	jeq .L449
	tst.b 166(%a2)
	jne .L580
	move.l 168(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L580
	tst.b 167(%a2)
	jne .L581
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L581
	tst.b 96(%a2)
	jne .L581
	tst.b 98(%a2)
	jne .L581
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,167(%a2)
	addq.l #8,%sp
.L581:
	tst.b 156(%a2)
	jne .L582
	tst.b 295(%a2)
	jne .L583
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 214(%a2),%d1
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
.L583:
	move.l 296(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,296(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L584
	clr.l 296(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,166(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
.L584:
	move.l 268(%a2),-(%sp)
	move.l 272(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,272(%a2)
.L582:
	tst.b 96(%a2)
	jne .L585
	tst.b 98(%a2)
	jne .L585
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 414(%a2),-(%sp)
	moveq #20,%d0
	sub.l 296(%a2),%d0
	move.l %d0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L585:
	move.w raptor_ticks,%a0
	move.l %a0,168(%a2)
.L580:
	clr.l -(%sp)
	move.l 272(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L586
	cmp.w #89,246(%a2)
	jgt .L655
.L586:
	tst.b 166(%a2)
	jeq .L449
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 410(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L449
	move.b #1,154(%a2)
	clr.b 88(%a2)
	jra .L657
.L686:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L656
.L685:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L577
.L684:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L577
	jra .L576
.L683:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 454(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L569
.L682:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L569
	jra .L568
.L681:
	tst.l %d1
	jeq .L588
	tst.b 154(%a2)
	jeq .L588
	tst.b 86(%a2)
	jne .L588
	tst.b 84(%a2)
	jne .L589
	clr.w 16(%a3)
.L589:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	and.l #255,%d3
	move.l %d3,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 402(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.b #1,84(%a2)
	clr.b 89(%a2)
	clr.b 104(%a2)
	clr.b 90(%a2)
	clr.b 85(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	lea (32,%sp),%sp
	tst.w 244(%a2)
	jle .L449
	tst.b 126(%a2)
	jne .L590
	move.l 194(%a2),%d0
	cmp.w #-1,262(%a2)
	jne .L591
	move.l 190(%a2),%d0
.L591:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L654:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L449
.L590:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L449
	move.l 222(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L654
.L588:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L592
	tst.b 154(%a2)
	jeq .L592
	tst.b 86(%a2)
	jne .L592
	tst.b 84(%a2)
	jne .L593
	clr.w 16(%a3)
.L593:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	move.b %d3,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 402(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.b #1,84(%a2)
	clr.b 89(%a2)
	clr.b 104(%a2)
	clr.b 90(%a2)
	clr.b 85(%a2)
	clr.b 92(%a2)
	clr.b 93(%a2)
	lea (32,%sp),%sp
	cmp.w #280,244(%a2)
	jgt .L449
	tst.b 126(%a2)
	jne .L594
	move.l 190(%a2),%d0
	cmp.w #-1,262(%a2)
	jne .L595
	move.l 194(%a2),%d0
.L595:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L654
.L594:
	move.l 222(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L654
.L592:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L596
	tst.b 154(%a2)
	jeq .L596
	tst.b 86(%a2)
	jne .L596
	tst.b 89(%a2)
	jne .L597
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L597:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L596:
	tst.l %d4
	jeq .L598
	tst.b 105(%a2)
	jeq .L598
	tst.b 154(%a2)
	jne .L599
.L598:
	tst.b 86(%a2)
	jeq .L687
.L600:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L602
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L603
.L602:
	tst.b 86(%a2)
	jeq .L603
	tst.b 166(%a2)
	jne .L603
	tst.b 226(%a2)
	jeq .L604
.L603:
	tst.b 96(%a2)
	jeq .L605
	tst.b 166(%a2)
	jne .L605
	tst.b 86(%a2)
	jeq .L605
.L604:
	tst.b 97(%a2)
	jne .L605
	tst.b 96(%a2)
	jne .L606
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,85(%a2)
	move.b #1,96(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L606:
	tst.b 156(%a2)
	jeq .L688
.L607:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L689
	clr.b 156(%a2)
	clr.b 96(%a2)
.L608:
	move.l 350(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
.L605:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L610
	and.l JAGPAD_9,%d0
	jeq .L611
.L610:
	tst.b 86(%a2)
	jeq .L611
	tst.b 166(%a2)
	jne .L611
	tst.b 226(%a2)
	jeq .L612
.L611:
	tst.b 97(%a2)
	jeq .L613
	tst.b 166(%a2)
	jne .L613
	tst.b 86(%a2)
	jeq .L613
.L612:
	tst.b 96(%a2)
	jne .L613
	tst.b 97(%a2)
	jne .L614
	clr.b 107(%a2)
	move.b #1,226(%a2)
	move.b #1,97(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 258(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L614:
	tst.b 156(%a2)
	jeq .L690
.L615:
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L691
	clr.b 156(%a2)
	clr.b 97(%a2)
.L616:
	move.l 354(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L613:
	tst.w 16(%a3)
	jne .L618
	tst.b 96(%a2)
	jne .L618
	tst.b 97(%a2)
	jeq .L624
.L618:
	tst.b 86(%a2)
	jeq .L449
	tst.b 166(%a2)
	jne .L619
	move.l 232(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L620
	tst.b 156(%a2)
	jne .L620
	move.l 296(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,246(%a2)
	addq.l #1,%a0
	move.l %a0,296(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L621
	clr.l 296(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,166(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
.L621:
	move.l 268(%a2),-(%sp)
	move.l 272(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,272(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
.L620:
	tst.b 96(%a2)
	jne .L619
	tst.b 97(%a2)
	jne .L619
	move.w #1,16(%a3)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 410(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L619:
	clr.l -(%sp)
	move.l 272(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L622
	cmp.w #89,246(%a2)
	jgt .L692
.L622:
	tst.b 166(%a2)
	jeq .L449
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L624
	move.b #1,154(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L624:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 410(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L692:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,166(%a2)
	clr.l 272(%a2)
	move.w #90,246(%a2)
	addq.l #4,%sp
	jra .L449
.L678:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L547
.L677:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L547
	jra .L546
.L676:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 454(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L539
.L675:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L539
	jra .L538
.L529:
	tst.b 106(%a2)
	jeq .L527
	tst.b 154(%a2)
	jeq .L527
	tst.b 87(%a2)
	jne .L531
	clr.b 154(%a2)
	clr.b 226(%a2)
	clr.b 106(%a2)
	move.b #1,87(%a2)
	clr.w 16(%a3)
	move.l 276(%a2),272(%a2)
	clr.b 166(%a2)
	clr.l 296(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,168(%a2)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
	jra .L531
.L599:
	tst.b 86(%a2)
	jne .L600
	clr.b 105(%a2)
	clr.b 226(%a2)
	move.b #1,86(%a2)
	clr.w 16(%a3)
	clr.l 296(%a2)
	move.l 276(%a2),272(%a2)
	clr.b 166(%a2)
	clr.b 154(%a2)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
	jra .L600
.L559:
	tst.b 106(%a2)
	jeq .L557
	tst.b 154(%a2)
	jeq .L557
	tst.b 88(%a2)
	jne .L561
	clr.b 154(%a2)
	clr.b 226(%a2)
	clr.b 106(%a2)
	move.b #1,88(%a2)
	clr.w 16(%a3)
	clr.l 296(%a2)
	move.l 276(%a2),272(%a2)
	clr.b 166(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,168(%a2)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 176(%a2),%d0
	jra .L561
.L688:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 454(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L608
	jra .L607
.L691:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 458(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L616
.L690:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 156(%a2)
	jeq .L616
	jra .L615
.L689:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 454(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L608
.L687:
	tst.b 89(%a2)
	jne .L693
	tst.b 90(%a2)
	jne .L694
	tst.b 84(%a2)
	jeq .L627
	clr.b 126(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L627:
	tst.b 82(%a2)
	jne .L628
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L628:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 390(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L449
.L694:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 422(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L449
	clr.b 90(%a2)
	jra .L449
.L693:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 418(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L449
	clr.b 89(%a2)
	jra .L449
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
	jeq .L696
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L702
	jlt .L706
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L700
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L701
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L738
.L698:
	sub.w 246(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L711
	jge .L739
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L713
	cmp.l #128,%d0
	jeq .L714
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L712
.L707:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L720
	jlt .L724
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L718
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L719
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L717
	moveq #84,%d1
	not.b %d1
.L716:
	cmp.l %a1,%d1
	jge .L696
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L727
	jlt .L733
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L727
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L727
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L727
	move.w #171,%d1
.L727:
	move.w %d1,12(%a0)
.L696:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L706:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L704
	cmp.l #128,%d0
	jeq .L705
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L698
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 246(%a2),%d1
.L712:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L721:
	moveq #78,%d1
	not.b %d1
	jra .L716
.L702:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 246(%a2),%d1
.L711:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L720:
	moveq #75,%d1
	not.b %d1
	jra .L716
.L700:
	move.w %a1,%d1
	sub.w 246(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L709:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L718:
	moveq #69,%d1
	not.b %d1
	jra .L716
.L704:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 246(%a2),%d1
.L713:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L722:
	moveq #81,%d1
	not.b %d1
	jra .L716
.L738:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 246(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L717:
	moveq #66,%d1
	not.b %d1
	jra .L716
.L733:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L727
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L727
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L727
	move.w #171,%d1
	jra .L727
.L701:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 246(%a2),%d1
.L710:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L719:
	moveq #72,%d1
	not.b %d1
	jra .L716
.L705:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 246(%a2),%d1
	add.w %a1,%d1
.L714:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L723:
	moveq #87,%d1
	not.b %d1
	jra .L716
.L739:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L709
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L710
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L707
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L717
.L724:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L722
	cmp.l #128,%d0
	jeq .L723
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L721
	moveq #84,%d1
	not.b %d1
	jra .L716
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
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
	.globl	__Z13fighterUpdatefP7FighterP14SpriteAnimator
__Z13fighterUpdatefP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 148(%a2)
	jeq .L743
	clr.b 148(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	move.l %a0,228(%a2)
	move.l %a0,240(%a2)
	move.l %a0,168(%a2)
	move.l %a0,12(%a3)
.L743:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L744
	move.b 133(%a2),%d1
	jeq .L742
.L748:
	move.w 262(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 145(%a2)
	jeq .L750
.L791:
	tst.b 117(%a2)
	jne .L750
	tst.b 116(%a2)
	jne .L750
	clr.b 145(%a2)
	move.w #90,246(%a2)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.w 16(%a3)
	move.w 292(%a2),%d0
	jle .L751
	tst.b 134(%a2)
	jeq .L786
.L751:
	move.b #1,135(%a2)
	clr.b 134(%a2)
	addq.w #1,%d0
	move.w %d0,292(%a2)
.L742:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L750:
	tst.b 146(%a2)
	jeq .L752
	clr.b 146(%a2)
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d1.l)
	clr.w 16(%a3)
	move.b #1,83(%a2)
	move.w #90,246(%a2)
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L753
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L742
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,12(%fp)
	move.l 258(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L752:
	tst.b 143(%a2)
	jeq .L755
	move.w raptor_ticks,%a0
	move.l 232(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L787
.L755:
	tst.b 147(%a2)
	jne .L788
	tst.b 127(%a2)
	jeq .L756
	tst.b 86(%a2)
	jne .L756
	tst.b 88(%a2)
	jne .L756
	tst.b 87(%a2)
	jne .L756
	tst.b 125(%a2)
	jne .L756
	tst.b 85(%a2)
	jne .L756
	tst.b 264(%a2)
	jeq .L762
	clr.b 264(%a2)
	clr.w 16(%a3)
.L762:
	tst.b 265(%a2)
	jeq .L789
	tst.w 16(%a3)
	jle .L790
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L783:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 406(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L806:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L744:
	move.l sprite,%a1
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a4
	move.w 262(%a2),%d1
	neg.w %d1
	add.w %d1,%d1
	add.w %d1,%d1
	move.l 4(%a2),%a0
	move.l %a0,%d3
	add.l %a0,%d3
	add.l %a0,%d3
	lsl.l #6,%d3
	add.w 8(%a1,%d3.l),%d1
	move.w %d1,8(%a4)
	tst.b 82(%a2)
	jeq .L746
	tst.b 133(%a2)
	jeq .L780
	tst.b 135(%a2)
	jne .L782
	tst.b 83(%a2)
	jne .L782
	moveq #1,%d3
	move.l %d3,4(%a4)
	move.w 262(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 145(%a2)
	jeq .L750
	jra .L791
.L746:
	move.b 133(%a2),%d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
.L795:
	tst.b %d1
	jne .L748
	jra .L742
.L788:
	clr.b 147(%a2)
	clr.w 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	move.w 150(%a2),244(%a2)
	move.w 152(%a2),246(%a2)
	clr.w 150(%a2)
	clr.w 152(%a2)
	move.b #1,125(%a2)
	move.b #1,129(%a2)
.L756:
	tst.b 135(%a2)
	jne .L792
	tst.b 134(%a2)
	jeq .L770
	tst.b 125(%a2)
	jeq .L793
	tst.l 252(%a2)
	jle .L794
.L772:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 125(%a2)
	jne .L742
.L799:
	move.b #1,135(%a2)
	clr.b 134(%a2)
	addq.w #1,292(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L753:
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,12(%fp)
	move.l 258(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L782:
	moveq #1,%d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L795
.L770:
	tst.b 83(%a2)
	jne .L796
	tst.b 136(%a2)
	jne .L797
.L774:
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
	tst.b 82(%a2)
	jeq .L742
.L803:
	move.l 172(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 244(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 246(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L792:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L798
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L802:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L780:
	clr.b %d1
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L795
.L794:
	tst.b 125(%a2)
	jeq .L742
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 125(%a2)
	jne .L742
	jra .L799
.L787:
	clr.b 143(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 266(%a2),%d0
	move.l %d0,-(%sp)
	move.l 258(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 134(%a2)
	jne .L756
	tst.b 256(%a2)
	jne .L800
	move.l 248(%a2),%d0
	subq.l #1,%d0
	move.l %d0,248(%a2)
	jle .L801
.L758:
	move.l sprite,%a0
	tst.b 266(%a2)
	jeq .L759
	move.l %d0,16024(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L756
.L798:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 258(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 133(%a2)
	addq.l #4,%sp
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L802
.L793:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 394(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.l 252(%a2)
	jgt .L772
	jra .L794
.L797:
	move.w 262(%a2),%d3
	lea ___mulsf3,%a4
	move.l 222(%a2),-(%sp)
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
	jeq .L775
	tst.b 129(%a2)
	jne .L775
.L776:
	tst.l %d0
	jle .L779
	tst.b 294(%a2)
	jeq .L778
.L779:
	add.w %d0,244(%a2)
.L778:
	move.l 228(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L774
	clr.b 136(%a2)
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
	tst.b 82(%a2)
	jne .L803
	jra .L742
.L786:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,134(%a2)
	clr.l 252(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	addq.l #4,%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L775:
	tst.l %d0
	jlt .L804
.L777:
	cmp.w #1,%d3
	jne .L776
	tst.b 129(%a2)
	jne .L776
	add.w %d0,244(%a2)
	jra .L778
.L800:
	clr.b 256(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 248(%a2),%d0
	subq.l #1,%d0
	move.l %d0,248(%a2)
	jgt .L758
.L801:
	clr.l 248(%a2)
	move.b #1,145(%a2)
	moveq #0,%d0
	jra .L758
.L804:
	tst.b 294(%a2)
	jne .L777
	jra .L778
.L790:
	clr.b 127(%a2)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L783
.L796:
	move.w #90,246(%a2)
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 398(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L759:
	move.l %d0,16216(%a0)
	moveq #78,%d3
	sub.w %d0,%d3
	move.w %d3,%d0
	add.w %d3,%d0
	add.w %d0,%d0
	move.w %d0,16136(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L756
.L789:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L764
	move.b #1,265(%a2)
	move.w 262(%a2),%d0
	neg.w %d0
	move.w %d0,262(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L805
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
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L764:
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 406(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L806
.L805:
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
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L764
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L813
	jge .L820
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L815
	cmp.l #128,%d0
	jeq .L816
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L821
.L809:
	moveq #21,%d0
	unlk %fp
	rts
.L820:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L818
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L812
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L809
	moveq #3,%d0
	unlk %fp
	rts
.L812:
	moveq #9,%d0
	unlk %fp
	rts
.L816:
	moveq #24,%d0
	unlk %fp
	rts
.L821:
	moveq #15,%d0
	unlk %fp
	rts
.L815:
	moveq #18,%d0
	unlk %fp
	rts
.L818:
	moveq #6,%d0
	unlk %fp
	rts
.L813:
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
	cmp.w #1,262(%a0)
	jeq .L829
	move.w 244(%a0),%a2
	sub.w 244(%a1),%a2
	cmp.w #259,%a2
	jgt .L827
.L825:
	clr.b 295(%a0)
	clr.b 295(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L829:
	move.w 244(%a1),%a2
	sub.w 244(%a0),%a2
	cmp.w #259,%a2
	jle .L825
.L827:
	move.b #1,295(%a0)
	move.b #1,295(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,148(%a0)
	unlk %fp
	rts
.LC1:
	.ascii "%02ld00\0"
	.even
	.globl	__Z17fighterDrawScoresP7FighterS0_
__Z17fighterDrawScoresP7FighterS0_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.b 184(%a3)
	jne .L833
	tst.b 184(%a2)
	jeq .L832
.L833:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 184(%a3)
	jne .L842
	tst.b 184(%a2)
	jeq .L832
.L843:
	clr.b 184(%a2)
	move.l 180(%a2),%d0
	move.l %d0,_tempScore
	jne .L839
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 180(%a2),(%sp)
	pea .LC1
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L832:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L842:
	pea 10.w
	pea 8.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 180(%a3),(%sp)
	pea .LC1
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 184(%a2)
	jne .L843
	jra .L832
.L839:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L836:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L836
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L838
	move.b #39,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	lsl.l #3,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 180(%a2),(%sp)
	pea .LC1
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L838:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 180(%a2),(%sp)
	pea .LC1
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
	.even
	.globl	__Z14fighterLaydownP7FighterP14SpriteAnimator
__Z14fighterLaydownP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 262(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 486(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 232(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L845
	clr.b 119(%a2)
	clr.b 120(%a2)
	clr.b 129(%a2)
	clr.b 130(%a2)
	clr.b 117(%a2)
	clr.b 116(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	move.b #1,124(%a2)
	clr.l 296(%a2)
	clr.w 16(%a3)
	move.w #90,246(%a2)
.L845:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
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
