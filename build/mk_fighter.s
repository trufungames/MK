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
	clr.l 184(%a0)
	move.b #1,188(%a0)
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
	move.w #-1,268(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,248(%a0)
	move.w #106,250(%a0)
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
	move.w #1,268(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,248(%a0)
	move.w #106,250(%a0)
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
	move.l #0x400ccccd,274(%a2)
	clr.l 278(%a2)
	move.l #0xc1800000,282(%a2)
	move.l #0xc1a80000,286(%a2)
	move.l #0xc0800000,290(%a2)
	move.l #0x40a00000,294(%a2)
	clr.b 109(%a2)
	clr.b 151(%a2)
	clr.b 152(%a2)
	move.l 16(%fp),264(%a2)
	move.l 20(%fp),344(%a2)
	move.l 24(%fp),348(%a2)
	move.l 28(%fp),352(%a2)
	move.l 32(%fp),356(%a2)
	move.l 36(%fp),368(%a2)
	move.l 40(%fp),372(%a2)
	move.l 44(%fp),360(%a2)
	move.l 48(%fp),364(%a2)
	move.l 52(%fp),376(%a2)
	move.l 56(%fp),380(%a2)
	move.l 60(%fp),384(%a2)
	move.l 64(%fp),388(%a2)
	move.l 68(%fp),392(%a2)
	clr.l 180(%a2)
	move.l #0x40000000,194(%a2)
	move.l #0x40000000,198(%a2)
	move.l #0x40000000,202(%a2)
	move.l #0x40800000,206(%a2)
	move.l #0x40d00000,210(%a2)
	move.l #0x41000000,214(%a2)
	clr.l 222(%a2)
	move.l #0x40f00000,218(%a2)
	move.l #0x3f800000,226(%a2)
	moveq #1,%d0
	move.l %d0,240(%a2)
	clr.l 244(%a2)
	clr.l 232(%a2)
	move.b #1,134(%a2)
	move.b #1,82(%a2)
	clr.b 83(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.b 128(%a2)
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
	move.b #1,158(%a2)
	clr.b 230(%a2)
	clr.b 100(%a2)
	clr.b 101(%a2)
	clr.b 102(%a2)
	clr.b 103(%a2)
	clr.b 104(%a2)
	clr.b 129(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 132(%a2)
	clr.b 133(%a2)
	clr.b 110(%a2)
	clr.b 111(%a2)
	clr.b 112(%a2)
	clr.b 113(%a2)
	clr.b 114(%a2)
	clr.b 115(%a2)
	clr.b 116(%a2)
	clr.b 118(%a2)
	clr.b 121(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	clr.b 125(%a2)
	clr.b 126(%a2)
	clr.b 127(%a2)
	clr.b 135(%a2)
	clr.b 136(%a2)
	clr.b 137(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 140(%a2)
	clr.b 146(%a2)
	clr.b 149(%a2)
	clr.b 150(%a2)
	clr.w 154(%a2)
	clr.w 156(%a2)
	clr.b 159(%a2)
	clr.b 160(%a2)
	clr.b 170(%a2)
	clr.b 171(%a2)
	clr.l 172(%a2)
	moveq #50,%d1
	move.l %d1,162(%a2)
	move.b #20,%d0
	move.l %d0,166(%a2)
	move.b %d2,272(%a2)
	move.b #33,%d1
	move.l %d1,254(%a2)
	clr.l 258(%a2)
	clr.b 262(%a2)
	clr.b 270(%a2)
	clr.b 271(%a2)
	move.b #1,300(%a2)
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
	jne .L28
	moveq #62,%d1
	move.l %d1,176(%a2)
	moveq #60,%d2
	move.l %d2,78(%a2)
	move.b #2,%d1
	move.l %d1,190(%a2)
	move.w #210,248(%a2)
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
	move.w #-1,268(%a2)
	move.l #11520,%d0
	move.b #60,%d1
.L25:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 396(%a2),%a1
	clr.w 16(%a1)
	move.l %d1,(%a1)
	move.l #11999920,8(%a1)
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12107440,-(%sp)
	jsr jsfLoadClut
	move.w #90,250(%a2)
	lea (12,%sp),%sp
	tst.b 82(%a2)
	jeq .L26
	move.l 176(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w #250,12(%a0)
.L26:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,152(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L28:
	moveq #61,%d2
	move.l %d2,176(%a2)
	move.b #57,%d1
	move.l %d1,78(%a2)
	move.b #1,%d2
	move.l %d2,190(%a2)
	move.w #50,248(%a2)
	move.l %d2,10968(%a0)
	move.l %d2,24(%a1)
	subq.l #1,%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a0,%d0.l),%a1
	move.l %d2,24(%a1)
	move.w #1,268(%a2)
	move.l #10944,%d0
	jra .L25
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 298(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24fighterCaptureDpadInputsP7Fighter
__Z24fighterCaptureDpadInputsP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 180(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L32
	tst.b 105(%a2)
	jne .L37
.L32:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L33
	tst.b 105(%a2)
	jne .L38
.L33:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L34
	tst.b 105(%a2)
	jne .L39
.L34:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L31
	tst.b 105(%a2)
	jeq .L31
	tst.b 108(%a2)
	jeq .L40
.L31:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L39:
	tst.b 108(%a2)
	jne .L34
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 180(%a2),%d0
	addq.l #8,%sp
	jra .L34
.L38:
	tst.b 108(%a2)
	jne .L33
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 180(%a2),%d0
	addq.l #8,%sp
	jra .L33
.L37:
	tst.b 108(%a2)
	jne .L32
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 180(%a2),%d0
	addq.l #8,%sp
	jra .L32
.L40:
	move.b #1,108(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z25fighterHandleSpecialMovesfP7FighterP14SpriteAnimatorb
__Z25fighterHandleSpecialMovesfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l JAGPAD_C,%d0
	move.l %d0,%d1
	and.l 180(%a2),%d1
	jeq .L43
	tst.b 107(%a2)
	jne .L48
.L43:
	move.w 322(%a2),%a0
	move.l %a0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L49
	tst.b 138(%a2)
	jne .L50
	clr.b %d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L50:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 328(%a2),%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L49:
	move.b #1,138(%a2)
	clr.b 141(%a2)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	addq.l #4,%sp
	moveq #1,%d0
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L48:
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	jra .L43
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
	jeq .L55
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L56
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L59
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandlerb
.L59:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandlerb
.L56:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandlerb
.L55:
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
	jeq .L66
	move.l %d1,12(%fp)
	move.l %d0,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandlerb
.L66:
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
	jeq .L70
	move.b #7,%d3
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	cmp.l %d0,%d3
	jeq .L74
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandlerb
.L70:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandlerb
.L74:
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
	jle .L81
.L77:
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandlerb
.L81:
	move.b #6,%d3
	cmp.l %d0,%d3
	jlt .L82
	and.l #255,%d2
	move.l %d2,12(%fp)
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	move.l (%sp)+,%d3
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandlerb
.L82:
	move.b #7,%d3
	cmp.l %d0,%d3
	jne .L77
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
	jne .L88
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L89
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L89:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L88:
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
	tst.b 126(%a2)
	jne .L92
	tst.b 110(%a2)
	jne .L93
	tst.b 111(%a2)
	jeq .L236
.L93:
	move.l 258(%a2),%d2
	tst.b 135(%a2)
	jne .L95
	tst.b 262(%a2)
	jne .L237
	move.l 254(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,254(%a2)
	jle .L238
.L97:
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L98
.L255:
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L95:
	clr.l 258(%a2)
	clr.l 222(%a2)
	move.b #1,126(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	move.l %a0,244(%a2)
	clr.w 16(%a3)
	move.l 286(%a2),278(%a2)
	move.b 120(%a2),%d0
	jne .L100
	tst.b 121(%a2)
	jne .L100
	tst.b 130(%a2)
	jeq .L102
	clr.l 278(%a2)
.L102:
	tst.b 110(%a2)
	jne .L103
	tst.b 111(%a2)
	jeq .L239
.L103:
	moveq #0,%d1
	move.b 272(%a2),%d1
	move.l 264(%a2),%d0
	moveq #7,%d2
	cmp.l (%a2),%d2
	jeq .L240
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z12sfxGroanMaleP12SoundHandlerb
	addq.l #8,%sp
.L107:
	move.b 111(%a2),%d1
	jne .L116
	tst.b 112(%a2)
	jeq .L112
.L116:
	move.w 248(%a2),%a4
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jeq .L241
.L117:
	cmp.w #1,%d0
	jeq .L242
.L118:
	tst.b 109(%a2)
	jne .L119
	tst.b %d1
	jne .L120
	tst.b 114(%a2)
	jne .L120
	tst.b 115(%a2)
	jne .L120
	tst.b 112(%a2)
	jne .L243
	tst.b 118(%a2)
	jne .L123
	tst.b 117(%a2)
	jne .L123
.L92:
	tst.b 110(%a2)
	jeq .L124
	tst.b 126(%a2)
	jne .L244
.L124:
	tst.b 111(%a2)
	jeq .L94
	tst.b 126(%a2)
	jne .L245
.L94:
	tst.b 112(%a2)
	jeq .L246
.L126:
	tst.b 126(%a2)
	jne .L247
.L127:
	tst.b 113(%a2)
	jeq .L134
	tst.b 126(%a2)
	jeq .L134
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 240(%a2),%d0
	cmp.l %a0,%d0
	jle .L135
	move.w 268(%a2),%a4
	move.w 248(%a2),%d0
.L136:
	move.l %a4,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 480(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 113(%a2)
	clr.b 126(%a2)
.L91:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L246:
	tst.b 114(%a2)
	jeq .L127
	tst.b 126(%a2)
	jeq .L127
.L247:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 240(%a2),%d0
	cmp.l %a0,%d0
	jle .L128
	move.w 268(%a2),%a4
	move.w 248(%a2),%d0
.L129:
	move.l %a4,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 112(%a2)
	clr.b 114(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L134:
	tst.b 115(%a2)
	jeq .L141
	tst.b 126(%a2)
	jeq .L141
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 240(%a2),%d0
	cmp.l %a0,%d0
	jle .L142
	move.w 268(%a2),%a4
	move.w 248(%a2),%d0
	move.l %a4,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
.L270:
	clr.b 115(%a2)
	clr.b 116(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L141:
	tst.b 119(%a2)
	jeq .L148
	tst.b 126(%a2)
	jne .L248
.L148:
	move.b 130(%a2),%d2
	jeq .L149
	tst.b 126(%a2)
	jeq .L149
	tst.b 131(%a2)
	jne .L150
	tst.b 132(%a2)
	jeq .L151
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 536(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L150:
	tst.b 124(%a2)
	jne .L220
.L152:
	cmp.w #1,16(%a3)
	jle .L91
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jlt .L91
	tst.b 131(%a2)
	jeq .L249
	move.w 250(%a2),%d0
	cmp.w #122,%d0
	jle .L159
	move.b #1,124(%a2)
	move.l %a0,236(%a2)
	move.w #90,250(%a2)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
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
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	tst.b 135(%a2)
	jne .L160
	tst.b 262(%a2)
	jne .L250
	move.l 254(%a2),%d0
	subq.l #8,%d0
	move.l %d0,254(%a2)
	jle .L251
.L162:
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L163
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
.L160:
	move.w 268(%a2),%d2
	lea ___floatsisf,%a5
	move.w %d2,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.l 214(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d2
	jeq .L165
	tst.b 130(%a2)
	jne .L165
.L166:
	tst.l %d0
	jle .L169
	tst.b 300(%a2)
	jeq .L168
.L169:
	add.w %d0,248(%a2)
.L168:
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 294(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,250(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
.L265:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L100:
	move.l 290(%a2),278(%a2)
	jra .L102
.L120:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr __Z10bloodSpraysss
	lea (12,%sp),%sp
	jra .L92
.L119:
	clr.b 109(%a2)
	jra .L92
.L236:
	tst.b 112(%a2)
	jne .L93
	tst.b 118(%a2)
	jne .L93
	tst.b 117(%a2)
	jne .L93
	tst.b 119(%a2)
	jne .L93
	tst.b 114(%a2)
	jne .L93
	tst.b 113(%a2)
	jne .L93
	tst.b 120(%a2)
	jne .L93
	tst.b 115(%a2)
	jne .L93
	tst.b 121(%a2)
	jne .L93
	tst.b 130(%a2)
	jne .L93
	tst.b 112(%a2)
	jne .L126
	jra .L246
.L239:
	tst.b 119(%a2)
	jne .L103
	tst.b 114(%a2)
	jne .L103
	tst.b 113(%a2)
	jne .L103
	tst.b 115(%a2)
	jne .L108
	tst.b 121(%a2)
	jne .L108
	tst.b 112(%a2)
	jne .L111
	tst.b 118(%a2)
	jne .L111
	tst.b 117(%a2)
	jne .L111
	tst.b %d0
	jeq .L112
.L111:
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	moveq #0,%d2
	move.b 272(%a2),%d2
	move.l 264(%a2),%d1
	addq.l #4,%sp
	move.l (%a2),%d0
	moveq #4,%d3
	cmp.l %d0,%d3
	jeq .L114
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L252
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellMaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L107
.L98:
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L95
.L244:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 480(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 110(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L112:
	tst.b 118(%a2)
	jne .L207
	tst.b 117(%a2)
	jne .L207
	tst.b 114(%a2)
	jne .L207
	tst.b 115(%a2)
	jeq .L92
.L207:
	clr.b %d1
	move.w 248(%a2),%a4
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L117
.L241:
	lea (40,%a4),%a4
	jra .L118
.L245:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a1
	move.l %a1,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 111(%a2)
	clr.b 126(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L149:
	tst.b 120(%a2)
	jne .L170
	tst.b 121(%a2)
	jeq .L171
.L170:
	tst.b 126(%a2)
	jeq .L171
	tst.b 124(%a2)
	jne .L220
	move.w raptor_ticks,%a0
	cmp.l 236(%a2),%a0
	jlt .L91
	move.w 268(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	lea ___floatsisf,%a5
	neg.l %d0
	move.l %d0,-(%sp)
	jsr (%a5)
	move.l 206(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L173
	tst.b %d2
	jne .L173
.L174:
	tst.l %d0
	jle .L177
	tst.b 300(%a2)
	jeq .L176
.L177:
	add.w %d0,248(%a2)
.L176:
	move.b 122(%a2),%d3
	move.l 278(%a2),%d2
	tst.b %d3
	jne .L179
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	lea ___addsf3,%a5
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,250(%a2)
	move.l 274(%a2),(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %d0,278(%a2)
.L179:
	move.l %d2,-(%sp)
	move.l 286(%a2),-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L180
	clr.l -(%sp)
	move.l %d2,-(%sp)
	jsr ___ltsf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L253
.L180:
	tst.b 123(%a2)
	jne .L184
	tst.b %d3
	jne .L185
	tst.b 121(%a2)
	jeq .L254
.L185:
	move.b #1,122(%a2)
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 496(%a2),-(%sp)
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
	jeq .L183
	move.b #1,123(%a2)
	clr.b 122(%a2)
.L183:
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
.L267:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L242:
	lea (-40,%a4),%a4
	jra .L118
.L237:
	clr.b 262(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 254(%a2),%d0
	sub.l %d2,%d0
	move.l %d0,254(%a2)
	jgt .L97
.L238:
	clr.l 254(%a2)
	move.b #1,148(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L98
	jra .L255
.L128:
	move.w 268(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
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
	cmp.w #1,%d2
	jeq .L130
	tst.b 130(%a2)
	jeq .L131
.L130:
	tst.l %d0
	jlt .L256
.L132:
	cmp.w #1,%d2
	jne .L131
	tst.b 130(%a2)
	jeq .L133
.L131:
	tst.l %d0
	jle .L133
	tst.b 300(%a2)
	jeq .L212
.L133:
	add.w 248(%a2),%d0
	move.w %d0,248(%a2)
	jra .L129
.L171:
	tst.b 117(%a2)
	jeq .L187
	tst.b 126(%a2)
	jeq .L187
	tst.b 124(%a2)
	jne .L220
	move.l 236(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L91
	move.w 268(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 206(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L189
	tst.b %d2
	jne .L189
.L190:
	tst.l %d0
	jle .L193
	tst.b 300(%a2)
	jeq .L192
.L193:
	add.w %d0,248(%a2)
.L192:
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L257
.L194:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L258
.L195:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
.L218:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	lea (36,%sp),%sp
.L261:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L187:
	tst.b 118(%a2)
	jeq .L196
	tst.b 126(%a2)
	jeq .L196
	tst.b 124(%a2)
	jne .L220
	move.l 236(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L91
	move.w 268(%a2),%d3
	move.w %d3,%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	jsr ___floatsisf
	move.l 206(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	addq.l #4,%sp
	cmp.w #1,%d3
	jeq .L198
	tst.b %d2
	jne .L198
.L199:
	tst.l %d0
	jle .L202
	tst.b 300(%a2)
	jeq .L201
.L202:
	add.w %d0,248(%a2)
.L201:
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jeq .L259
.L203:
	moveq #25,%d2
	cmp.l %a0,%d2
	jeq .L260
.L204:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
.L268:
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	lea (36,%sp),%sp
	jra .L261
.L196:
	tst.b 125(%a2)
	jeq .L91
	tst.b 126(%a2)
	jeq .L91
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 504(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 50(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	clr.b 126(%a2)
	clr.b 125(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L240:
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z14sfxGroanFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L107
.L248:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a1
	move.l %a1,-(%sp)
	move.l 500(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	move.l 264(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 119(%a2)
	move.b #1,125(%a2)
	clr.w 16(%a3)
	addq.l #4,%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L256:
	tst.b 300(%a2)
	jne .L132
.L212:
	move.w 248(%a2),%d0
	jra .L129
.L220:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a1
	pea -1(%a1)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 236(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L91
	move.b #1,158(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 120(%a2)
	clr.b 121(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 118(%a2)
	clr.b 117(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	move.b #1,125(%a2)
	clr.l 302(%a2)
	clr.w 16(%a3)
	move.w #90,250(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L123:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.w %a4,%d2
	ext.l %d2
	move.w 250(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.l %d2,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 250(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #20,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 250(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%d0
	add.w #10,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%d0
	add.w #-40,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	move.w 268(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.w 268(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	muls.w #20,%d0
	add.w %a4,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.w 268(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w %d0,%a4
	move.w %a4,%a4
	move.l %a4,-(%sp)
	jsr (%a5)
	lea (12,%sp),%sp
	jra .L92
.L173:
	tst.l %d0
	jlt .L262
.L175:
	cmp.w #1,%d3
	jne .L174
	tst.b %d2
	jne .L174
	add.w %d0,248(%a2)
	jra .L176
.L262:
	tst.b 300(%a2)
	jne .L175
	jra .L176
.L189:
	tst.l %d0
	jlt .L263
.L191:
	cmp.w #1,%d3
	jne .L190
	tst.b %d2
	jne .L190
	add.w %d0,248(%a2)
	jra .L192
.L165:
	tst.l %d0
	jlt .L264
.L167:
	cmp.w #1,%d2
	jne .L166
	tst.b 130(%a2)
	jne .L166
	add.w %d0,248(%a2)
	jra .L168
.L264:
	tst.b 300(%a2)
	jne .L167
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	jsr (%a5)
	move.l 294(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___addsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,250(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L265
.L198:
	tst.l %d0
	jlt .L266
.L200:
	cmp.w #1,%d3
	jne .L199
	tst.b %d2
	jne .L199
	add.w %d0,248(%a2)
	jra .L201
.L258:
	move.b #1,124(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	clr.l 302(%a2)
	move.w #90,250(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 302(%a2),%a0
	addq.l #4,%sp
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 492(%a2),-(%sp)
	jra .L218
.L250:
	clr.b 262(%a2)
	clr.l -(%sp)
	jsr (%a3)
	addq.l #4,%sp
	move.l 254(%a2),%d0
	subq.l #8,%d0
	move.l %d0,254(%a2)
	jgt .L162
	jra .L251
.L263:
	tst.b 300(%a2)
	jne .L191
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L194
	jra .L257
.L251:
	clr.l 254(%a2)
	move.b #1,148(%a2)
	moveq #0,%d0
	jra .L162
.L253:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	clr.w 16(%a3)
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L267
.L254:
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	jra .L185
.L260:
	move.b #1,124(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	clr.l 302(%a2)
	move.w #90,250(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 302(%a2),%a0
	addq.l #4,%sp
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	jra .L268
.L257:
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 302(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L195
	jra .L258
.L266:
	tst.b 300(%a2)
	jne .L200
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	moveq #8,%d1
	cmp.l %a0,%d1
	jne .L203
.L259:
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	move.l 302(%a2),%a0
	addq.l #4,%sp
	moveq #25,%d2
	cmp.l %a0,%d2
	jne .L204
	jra .L260
.L135:
	move.w 268(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
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
	cmp.w #1,%d2
	jeq .L137
	tst.b 130(%a2)
	jne .L137
.L138:
	tst.l %d0
	jle .L140
	tst.b 300(%a2)
	jeq .L213
.L140:
	add.w 248(%a2),%d0
	move.w %d0,248(%a2)
	jra .L136
.L137:
	tst.l %d0
	jlt .L269
.L139:
	cmp.w #1,%d2
	jne .L138
	tst.b 130(%a2)
	jne .L138
	add.w 248(%a2),%d0
	move.w %d0,248(%a2)
	jra .L136
.L269:
	tst.b 300(%a2)
	jne .L139
.L213:
	move.w 248(%a2),%d0
	jra .L136
.L142:
	move.w 268(%a2),%d2
	move.w %d2,%a4
	move.l %a4,%d0
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
	cmp.w #1,%d2
	jeq .L144
	tst.b 130(%a2)
	jne .L144
.L145:
	tst.l %d0
	jle .L147
	tst.b 300(%a2)
	jeq .L214
.L147:
	add.w 248(%a2),%d0
	move.w %d0,248(%a2)
.L272:
	move.l %a4,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	jra .L270
.L144:
	tst.l %d0
	jlt .L271
.L146:
	cmp.w #1,%d2
	jne .L145
	tst.b 130(%a2)
	jne .L145
	add.w 248(%a2),%d0
	move.w %d0,248(%a2)
	jra .L272
.L271:
	tst.b 300(%a2)
	jne .L146
.L214:
	move.w 248(%a2),%d0
	move.l %a4,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L91
	jra .L270
.L108:
	tst.b 116(%a2)
	jeq .L110
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	jra .L107
.L151:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 532(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 124(%a2)
	jeq .L152
	jra .L220
.L243:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%d0
	add.w #20,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w %a4,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	move.w 268(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%d1
	add.w #-30,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #40,%d0
	add.w %a4,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	jsr __Z9bloodDropsss
	lea (12,%sp),%sp
	jra .L92
.L184:
	move.w 250(%a2),%d0
	cmp.w #90,%d0
	jle .L186
	move.b #1,124(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	move.w #90,250(%a2)
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	pea 90.w
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	pea 6.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (32,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L267
.L159:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 532(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L160
.L110:
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	jra .L107
.L249:
	move.b #1,131(%a2)
	move.w 268(%a2),%d1
	move.w %d1,%d0
	ext.l %d0
	lsl.l #4,%d0
	cmp.w #1,%d1
	jeq .L154
	tst.b 130(%a2)
	jne .L154
.L155:
	tst.l %d0
	jle .L158
	tst.b 300(%a2)
	jeq .L157
.L158:
	add.w %d0,248(%a2)
.L157:
	move.w #48,250(%a2)
.L274:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L154:
	tst.l %d0
	jlt .L273
.L156:
	cmp.w #1,%d1
	jne .L155
	tst.b 130(%a2)
	jne .L155
	add.w %d0,248(%a2)
	jra .L157
.L273:
	tst.b 300(%a2)
	jne .L156
	move.w #48,250(%a2)
	jra .L274
.L186:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	pea 5.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	jra .L267
.L163:
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L160
.L252:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxYellFemaleP12SoundHandlerb
	addq.l #8,%sp
	jra .L107
.L114:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxYellKangP12SoundHandlerb
	addq.l #8,%sp
	jra .L107
	.even
	.globl	__Z17fighterResetFlagsP7Fighter
__Z17fighterResetFlagsP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 78(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 176(%a0),%d0
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
	clr.b 128(%a0)
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
	clr.b 230(%a0)
	clr.b 100(%a0)
	clr.b 101(%a0)
	clr.b 102(%a0)
	clr.b 103(%a0)
	clr.b 104(%a0)
	clr.b 129(%a0)
	clr.b 130(%a0)
	clr.b 131(%a0)
	clr.b 132(%a0)
	clr.b 110(%a0)
	clr.b 111(%a0)
	clr.b 112(%a0)
	clr.b 113(%a0)
	clr.b 114(%a0)
	clr.b 115(%a0)
	clr.b 116(%a0)
	clr.b 118(%a0)
	clr.b 117(%a0)
	clr.b 120(%a0)
	clr.b 121(%a0)
	clr.b 122(%a0)
	clr.b 123(%a0)
	clr.b 124(%a0)
	clr.b 125(%a0)
	clr.b 126(%a0)
	clr.b 127(%a0)
	clr.b 136(%a0)
	clr.b 137(%a0)
	clr.b 146(%a0)
	clr.b 149(%a0)
	clr.b 150(%a0)
	clr.b 159(%a0)
	clr.b 160(%a0)
	clr.b 170(%a0)
	clr.b 171(%a0)
	clr.b 262(%a0)
	clr.b 270(%a0)
	clr.b 271(%a0)
	move.b #1,300(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
	clr.b 140(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z16fighterMakeDizzyP7Fighter
__Z16fighterMakeDizzyP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,135(%a2)
	clr.l 258(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	addq.l #4,%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z20fighterResetFlagsAllP7FighterS0_
__Z20fighterResetFlagsAllP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l %a3,-(%sp)
	lea __Z17fighterResetFlagsP7Fighter,%a4
	jsr (%a4)
	move.l %a2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %a3,(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 396(%a3),%a0
	clr.w 16(%a0)
	move.l 78(%a3),%d0
	move.l %d0,(%a0)
	move.l #11999920,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	moveq #3,%d0
	move.l %d0,(%sp)
	pea 13.w
	move.l #12107440,-(%sp)
	lea jsfLoadClut,%a3
	jsr (%a3)
	move.l 396(%a2),%a0
	clr.w 16(%a0)
	move.l 78(%a2),%d0
	move.l %d0,(%a0)
	move.l #11999920,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	addq.l #8,%sp
	moveq #3,%d1
	move.l %d1,(%sp)
	pea 13.w
	move.l #12107440,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z23fighterHandleProjectileP7FighterS0_
__Z23fighterHandleProjectileP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l (%a1),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L305
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L308
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L309
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L305
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L305
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L305:
	move.b #1,161(%a1)
	tst.b 90(%a0)
	jne .L297
	tst.b 86(%a0)
	jeq .L298
	move.b #1,120(%a0)
	moveq #5,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
.L311:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L308:
	move.b #1,161(%a1)
	tst.b 90(%a0)
	jeq .L310
.L297:
	move.b #1,91(%a0)
	move.b #1,146(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,236(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L309:
	move.b #1,161(%a1)
	tst.b 90(%a0)
	jne .L297
	tst.b 86(%a0)
	jeq .L291
	move.b #1,120(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
.L313:
	moveq #5,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L311
.L298:
	move.b #1,112(%a0)
	move.b #1,109(%a0)
	moveq #5,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L311
.L310:
	tst.b 86(%a0)
	jeq .L287
	move.b #1,120(%a0)
	move.b #1,151(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
.L312:
	moveq #5,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L311
.L287:
	move.b #1,115(%a0)
	move.b #1,151(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
	jra .L312
.L291:
	move.b #1,115(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
	jra .L313
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 126(%a0),%d0
	jne .L316
	tst.b 90(%a0)
	jne .L316
.L317:
	tst.b 92(%a1)
	jne .L345
.L319:
	tst.b 93(%a1)
	jeq .L321
	tst.b 89(%a0)
	jne .L321
	move.b #1,111(%a0)
	moveq #2,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	addq.l #5,184(%a1)
	move.b #1,188(%a1)
.L320:
	tst.b %d0
	jne .L315
.L340:
	tst.b 90(%a0)
	jeq .L333
.L346:
	tst.b 89(%a0)
	jeq .L333
	move.b #1,91(%a0)
	move.b #1,146(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
.L336:
	tst.b 129(%a1)
	jeq .L315
	move.w 248(%a1),154(%a0)
	move.w 250(%a1),156(%a0)
	move.l (%a1),%d0
	subq.l #5,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	scs %d0
	addq.b #1,%d0
	move.b %d0,132(%a0)
	move.b #1,150(%a0)
	clr.b 158(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a1)
.L315:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L316:
	tst.b 135(%a0)
	jne .L317
	tst.b %d0
	jne .L315
	tst.b 90(%a0)
	jeq .L340
	move.b #1,91(%a0)
	move.b #1,146(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
	tst.b 90(%a0)
	jne .L346
.L333:
	tst.b 100(%a1)
	jeq .L335
	move.b #1,119(%a0)
	moveq #4,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #10,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L336
.L345:
	tst.b 89(%a0)
	jne .L319
	move.b #1,110(%a0)
	moveq #2,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	addq.l #5,184(%a1)
	move.b #1,188(%a1)
	jra .L320
.L321:
	tst.b 94(%a1)
	jeq .L322
	tst.b 89(%a0)
	jne .L322
	move.b #1,110(%a0)
	moveq #5,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
.L347:
	tst.b %d0
	jeq .L340
	jra .L315
.L322:
	tst.b 95(%a1)
	jeq .L323
	tst.b 89(%a0)
	jne .L323
	move.b #1,112(%a0)
	moveq #5,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L347
.L323:
	tst.b 101(%a1)
	jeq .L324
	tst.b 89(%a0)
	jeq .L348
.L324:
	tst.b 102(%a1)
	jeq .L325
	tst.b 89(%a0)
	jeq .L349
.L325:
	tst.b 96(%a1)
	jeq .L327
	move.b #1,114(%a0)
	clr.b 158(%a1)
	move.b #1,160(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #5,%d1
	move.l %d1,258(%a0)
	move.b #1,262(%a0)
	move.b #10,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	tst.b %d0
	jeq .L340
	jra .L315
.L335:
	tst.b 104(%a1)
	jeq .L336
	move.b #1,113(%a0)
	clr.b 158(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #2,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	addq.l #5,184(%a1)
	move.b #1,188(%a1)
	jra .L336
.L327:
	tst.b 97(%a1)
	jne .L350
	tst.b 99(%a1)
	jeq .L329
	move.b #1,117(%a0)
	clr.b 158(%a1)
	move.b #1,159(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #8,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L347
.L348:
	move.b #1,112(%a0)
	moveq #6,%d1
	move.l %d1,258(%a0)
	move.b #1,262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
.L352:
	tst.b %d0
	jeq .L340
	jra .L315
.L349:
	move.b #1,115(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L351
	moveq #4,%d1
.L353:
	move.l %d1,258(%a0)
	move.b #1,262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L352
.L350:
	move.b #1,114(%a0)
	clr.b 158(%a1)
	move.b #1,160(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #4,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L347
.L351:
	move.b #1,116(%a0)
	moveq #4,%d1
	jra .L353
.L329:
	tst.b 98(%a1)
	jeq .L330
	move.b #1,120(%a0)
	clr.b 158(%a1)
	move.b #1,160(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #6,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L347
.L330:
	tst.b 103(%a1)
	jeq .L320
	move.b #1,121(%a0)
	clr.b 158(%a1)
	move.b #1,160(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #4,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	move.b #50,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	tst.b %d0
	jeq .L340
	jra .L315
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.b 127(%a3)
	jeq .L356
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L373
.L356:
	tst.b 127(%a2)
	jeq .L357
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L374
.L357:
	lea __Z26stageGetFighterHitboxIndexv,%a4
	jsr (%a4)
	move.l %d0,%d3
	jsr (%a4)
	move.l %d0,%d2
	jsr (%a4)
	move.l %d0,%a5
	jsr (%a4)
	move.l %d3,%a0
	pea 12(%a0)
	move.l %d2,-(%sp)
	pea 12(%a5)
	move.l %d0,-(%sp)
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L355
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L360
.L381:
	cmp.w #0,%a0
	jlt .L355
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 78(%a3),%d0
	cmp.l %d2,%d0
	jeq .L361
	cmp.l 78(%a2),%d2
	jeq .L361
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L361:
	cmp.l %d0,%d3
	jeq .L362
	cmp.l 78(%a2),%d3
	jeq .L362
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L362:
	moveq #61,%d5
	cmp.l %d2,%d5
	jeq .L375
	moveq #56,%d1
	cmp.l %d2,%d1
	jeq .L376
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L367
	moveq #56,%d1
	cmp.l %d3,%d1
	jeq .L377
.L367:
	tst.b 138(%a3)
	jeq .L368
	cmp.l 78(%a3),%d2
	jeq .L378
.L368:
	tst.b 138(%a2)
	jeq .L369
	cmp.l 78(%a2),%d2
	jeq .L379
.L369:
	moveq #59,%d0
	cmp.l %d2,%d0
	jeq .L380
.L370:
	move.l colliders,%d0
.L371:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L381
.L360:
	cmp.w #0,%a0
	jge .L371
.L355:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L380:
	moveq #56,%d1
	cmp.l %d3,%d1
	jne .L370
	tst.b 84(%a2)
	jeq .L370
	move.b #1,127(%a2)
	move.b #1,137(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a3)
	move.l colliders,%d0
	jra .L371
.L378:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L368
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L368
.L379:
	moveq #56,%d0
	cmp.l %d3,%d0
	jne .L369
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L370
	jra .L380
.L376:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L367
	tst.b 84(%a3)
	jeq .L367
	move.w 248(%a3),%d0
	cmp.w #10,%d0
	jle .L367
	cmp.w #328,%d0
	jgt .L367
	move.w 248(%a2),%d0
	cmp.w #10,%d0
	jle .L367
	cmp.w #328,%d0
	jgt .L367
	move.b #1,127(%a3)
	move.b #1,137(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L367
.L375:
	moveq #59,%d0
	cmp.l %d3,%d0
	jne .L367
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L367
.L377:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L367
.L373:
	clr.b 127(%a3)
	jra .L356
.L374:
	clr.b 127(%a2)
	jra .L357
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 268(%a1),%d0
	cmp.w #1,%d0
	jeq .L397
	cmp.w #-1,%d0
	jeq .L398
.L386:
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L399
.L387:
	cmp.w #-1,%d0
	jne .L383
	move.w 248(%a0),%a2
	add.l _turnOffset,%a2
	move.w 248(%a1),%a1
	cmp.l %a2,%a1
	jle .L383
.L394:
	tst.b 128(%a0)
	jne .L383
	clr.b 271(%a0)
	move.b #1,128(%a0)
	move.b #1,270(%a0)
.L383:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L398:
	move.w 248(%a1),%a3
	add.l _turnOffset,%a3
	move.w 248(%a0),%a2
	cmp.l %a3,%a2
	jle .L386
	tst.b 128(%a1)
	jne .L386
.L400:
	clr.b 271(%a1)
	move.b #1,128(%a1)
	move.b #1,270(%a1)
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jne .L387
.L399:
	move.w 248(%a0),%a2
	move.w 248(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L394
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L397:
	move.w 248(%a1),%a3
	move.w 248(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L386
	tst.b 128(%a1)
	jne .L386
	jra .L400
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L409
	cmp.w #-1,%d0
	jeq .L410
.L404:
	clr.b 133(%a0)
	clr.b 133(%a1)
.L402:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L410:
	move.w 248(%a1),%a3
	move.w 248(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L404
.L406:
	move.b #1,133(%a0)
	move.b #1,133(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L409:
	move.w 248(%a1),%a3
	move.w 248(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L406
	clr.b 133(%a0)
	clr.b 133(%a1)
	jra .L402
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	move.l sprite,%a0
	move.l 8(%fp),%a1
	move.l 254(%a1),16792(%a0)
	move.l 12(%fp),%a1
	move.l 254(%a1),%d0
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterAddPendingDamageP7FighteribS0_i
__Z23fighterAddPendingDamageP7FighteribS0_i:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 20(%fp),%a0
	move.l 12(%fp),258(%a1)
	move.b 19(%fp),262(%a1)
	move.l 24(%fp),%d0
	add.l %d0,184(%a0)
	move.b #1,188(%a0)
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
	tst.b 135(%a2)
	jne .L414
	tst.b 262(%a2)
	jne .L421
	move.l 254(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,254(%a2)
	jle .L422
.L417:
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L418
.L423:
	move.l %d0,16792(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L418:
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L414:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L421:
	clr.b 262(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 254(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,254(%a2)
	jgt .L417
.L422:
	clr.l 254(%a2)
	move.b #1,148(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L418
	jra .L423
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,268(%a0)
	jeq .L430
	tst.b 300(%a0)
	jeq .L425
.L427:
	addq.w #2,248(%a0)
.L425:
	unlk %fp
	rts
.L430:
	tst.b 130(%a0)
	jeq .L427
	tst.b 300(%a0)
	jne .L427
	jra .L425
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,268(%a0)
	jeq .L433
	tst.b 130(%a0)
	jeq .L434
.L433:
	tst.b 300(%a0)
	jeq .L432
.L434:
	subq.w #2,248(%a0)
.L432:
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
	jeq .L439
	move.l 176(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 248(%a0),%d0
	add.w #12,%d0
	move.w %d0,8(%a1)
	move.w 250(%a0),%a0
	lea (160,%a0),%a0
	move.w %a0,12(%a1)
.L439:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L447
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L447:
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
	move.w #90,250(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 248(%a2),%d0
	cmp.w #11,%d0
	jle .L463
.L451:
	cmp.w #280,%d0
	jgt .L455
.L460:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L463:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L459
	move.w 248(%a2),%d0
	cmp.w #11,%d0
	jgt .L451
	cmp.w #280,248(%a3)
	jgt .L459
	jsr (%a4)
	tst.b %d0
	jne .L459
	move.w 248(%a2),%d0
	cmp.w #280,%d0
	jle .L460
.L455:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L464
.L459:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L464:
	cmp.w #328,248(%a2)
	jle .L460
	cmp.w #10,248(%a3)
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
	move.w 268(%a0),%d1
	cmp.w #1,%d1
	jeq .L467
	tst.b 130(%a0)
	jne .L467
.L468:
	tst.l %d0
	jle .L471
	tst.b 300(%a0)
	jeq .L466
.L471:
	add.w %d0,248(%a0)
.L466:
	unlk %fp
	rts
.L467:
	tst.l %d0
	jlt .L474
	cmp.w #1,%d1
	jne .L468
.L475:
	tst.b 130(%a0)
	jne .L468
	add.w %d0,248(%a0)
	jra .L466
.L474:
	tst.b 300(%a0)
	jeq .L466
	cmp.w #1,%d1
	jne .L468
	jra .L475
	.even
	.globl	__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb
__Z18fighterHandleInputfP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	movem.l #15408,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.b 23(%fp),%d3
	tst.b 126(%a2)
	jne .L478
	tst.b 84(%a2)
	jeq .L707
.L479:
	clr.b 82(%a2)
.L481:
	move.l 190(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,180(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L482
	tst.b 107(%a2)
	jeq .L482
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L482:
	move.w 322(%a2),%a0
	move.l %a0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L708
	tst.b 138(%a2)
	jne .L709
	move.l 180(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L677
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L677
.L485:
	tst.b 99(%a2)
	jne .L487
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L495
	tst.l %d1
	jeq .L496
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L497
	cmp.w #1,268(%a2)
	jeq .L495
.L497:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L496
	cmp.w #-1,268(%a2)
	jeq .L495
.L496:
	tst.b 93(%a2)
	jeq .L710
.L499:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L506
	clr.b 93(%a2)
.L506:
	move.l 348(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 452(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L494:
	move.l 180(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L674
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L674
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L674
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L674
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L674
	and.l JAGPAD_7,%d0
	jne .L674
	move.b #1,107(%a2)
.L674:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 180(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L477
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L676
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L676
	and.l JAGPAD_RIGHT,%d0
	jne .L676
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L676:
	move.b #1,106(%a2)
.L477:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L478:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L707:
	tst.b 89(%a2)
	jne .L479
	tst.b 86(%a2)
	jne .L479
	tst.b 88(%a2)
	jne .L479
	tst.b 87(%a2)
	jne .L479
	tst.b 85(%a2)
	jeq .L481
	clr.b 82(%a2)
	jra .L481
.L709:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 328(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L677:
	tst.b 89(%a2)
	jeq .L485
	tst.b 107(%a2)
	jeq .L485
	tst.b 158(%a2)
	jeq .L485
	tst.b 99(%a2)
	jne .L487
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L487:
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 159(%a2)
	jeq .L711
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L712
.L491:
	clr.b 159(%a2)
.L492:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L494
	clr.b 99(%a2)
	move.b #1,158(%a2)
	jra .L494
.L710:
	tst.l %d4
	jeq .L713
.L507:
	tst.b 107(%a2)
	jeq .L508
	tst.b 158(%a2)
	jeq .L508
	tst.b 86(%a2)
	jne .L508
	tst.b 127(%a2)
	jeq .L508
	tst.b 102(%a2)
	jne .L511
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L513:
	move.l 380(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L708:
	move.b #1,138(%a2)
	clr.b 141(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L495:
	tst.b 107(%a2)
	jeq .L496
	tst.b 158(%a2)
	jeq .L496
	tst.b 86(%a2)
	jne .L496
	tst.b 127(%a2)
	jne .L496
	tst.b 93(%a2)
	jne .L499
	clr.b 107(%a2)
	move.b #1,93(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d2
	move.b 272(%a2),%d2
	move.l 264(%a2),%d1
	move.l (%a2),%d0
	moveq #6,%d3
	cmp.l %d0,%d3
	jeq .L503
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L504
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L714
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L717:
	move.l 348(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 452(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L711:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 476(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 159(%a2)
	jeq .L492
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jle .L491
	jra .L712
.L713:
	tst.l %d1
	jeq .L508
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L509
	cmp.w #1,268(%a2)
	jeq .L507
.L509:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L508
	cmp.w #-1,268(%a2)
	jeq .L507
.L508:
	tst.b 102(%a2)
	jne .L511
	tst.l %d1
	jeq .L514
	tst.b 107(%a2)
	jeq .L514
	tst.b 158(%a2)
	jeq .L514
	tst.b 86(%a2)
	jne .L514
	tst.b 133(%a2)
	jeq .L514
	tst.b 129(%a2)
	jne .L516
	clr.b 107(%a2)
	move.b #1,129(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L518
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L519
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L715
.L518:
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L521:
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L712:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 476(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	tst.b 159(%a2)
	jne .L494
	jra .L492
.L511:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L513
	clr.b 102(%a2)
	move.b #1,158(%a2)
	move.l 380(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L715:
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z14sfxThrowFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L514:
	tst.b 129(%a2)
	jne .L516
	tst.l %d1
	jeq .L522
	tst.b 107(%a2)
	jeq .L522
	tst.b 158(%a2)
	jeq .L522
	tst.b 86(%a2)
	jne .L522
	tst.b 133(%a2)
	jne .L522
	tst.b 92(%a2)
	jne .L524
	clr.b 107(%a2)
	move.b #1,92(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L526:
	move.l 344(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L516:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L521
	clr.b 129(%a2)
	move.b #1,158(%a2)
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L522:
	tst.b 92(%a2)
	jne .L524
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L527
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L527
	cmp.w #1,268(%a2)
	jeq .L528
.L527:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L529
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L529
	cmp.w #-1,268(%a2)
	jeq .L528
.L529:
	tst.b 100(%a2)
	jeq .L716
.L531:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L533
	clr.b 100(%a2)
.L533:
	move.l 372(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L524:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L526
	clr.b 92(%a2)
	move.l 344(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L716:
	tst.l %d1
	jeq .L534
	cmp.w #1,268(%a2)
	jeq .L535
.L534:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L536
	cmp.w #-1,268(%a2)
	jeq .L535
.L536:
	tst.b 101(%a2)
	jne .L539
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L542
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L543
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L544
	cmp.w #1,268(%a2)
	jeq .L542
.L544:
	tst.l %d1
	jeq .L543
	cmp.w #-1,268(%a2)
	jeq .L542
.L543:
	tst.b 95(%a2)
	jne .L546
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L549
	tst.b 107(%a2)
	jeq .L549
	tst.b 158(%a2)
	jeq .L549
	tst.b 86(%a2)
	jne .L549
	tst.b 89(%a2)
	jne .L549
	tst.b 133(%a2)
	jeq .L549
	tst.b 103(%a2)
	jne .L551
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L553:
	move.l 384(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L539:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L541
	clr.b 101(%a2)
.L541:
	move.l 376(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L528:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L529
	tst.b 107(%a2)
	jeq .L529
	tst.b 158(%a2)
	jeq .L529
	tst.b 86(%a2)
	jne .L529
	tst.b 100(%a2)
	jne .L531
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,100(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 372(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L535:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L537
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L536
.L537:
	tst.b 107(%a2)
	jeq .L536
	tst.b 158(%a2)
	jeq .L536
	tst.b 86(%a2)
	jne .L536
	tst.b 101(%a2)
	jne .L539
	clr.b 107(%a2)
	move.b #1,85(%a2)
	move.b #1,101(%a2)
	clr.w 16(%a3)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.l 376(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L542:
	tst.b 107(%a2)
	jeq .L543
	tst.b 158(%a2)
	jeq .L543
	tst.b 86(%a2)
	jne .L543
	tst.b 89(%a2)
	jne .L543
	tst.b 127(%a2)
	jne .L543
	tst.b 95(%a2)
	jne .L546
	clr.b 107(%a2)
	move.b #1,95(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L548:
	move.l 356(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L546:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L548
	clr.b 95(%a2)
	move.l 356(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L504:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L717
.L503:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L717
.L714:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L717
.L519:
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z13sfxThrowNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L549:
	tst.b 103(%a2)
	jne .L551
	and.l %d0,%d5
	jeq .L554
	tst.b 107(%a2)
	jeq .L554
	tst.b 158(%a2)
	jeq .L554
	tst.b 86(%a2)
	jne .L554
	tst.b 89(%a2)
	jne .L554
	tst.b 127(%a2)
	jne .L554
	tst.b 94(%a2)
	jne .L556
	clr.b 107(%a2)
	move.b #1,94(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L558:
	move.l 352(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 456(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L551:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L553
	clr.b 103(%a2)
	move.b #1,158(%a2)
	move.l 384(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L554:
	tst.b 94(%a2)
	jne .L556
	tst.l %d4
	jeq .L559
	tst.b 107(%a2)
	jeq .L559
	tst.b 158(%a2)
	jeq .L559
	tst.b 86(%a2)
	jne .L559
	tst.b 89(%a2)
	jeq .L559
	tst.b 104(%a2)
	jne .L561
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L563:
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L556:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L558
	clr.b 94(%a2)
	move.l 352(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 456(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L559:
	tst.b 104(%a2)
	jeq .L718
.L561:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L563
	clr.b 104(%a2)
	move.b #1,158(%a2)
	move.b #1,89(%a2)
	move.w #1,16(%a3)
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L718:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L564
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L565
.L564:
	tst.b 86(%a2)
	jne .L565
	tst.b 158(%a2)
	jeq .L565
	tst.b 90(%a2)
	jne .L566
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L566:
	and.l JAGPAD_DOWN,%d0
	jeq .L567
	tst.b 89(%a2)
	jne .L568
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L568:
	tst.b 91(%a2)
	jne .L569
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 440(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L565:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L572
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L573
	cmp.w #1,268(%a2)
	jeq .L574
.L573:
	tst.l %d1
	jeq .L572
	cmp.w #-1,268(%a2)
	jeq .L574
.L572:
	tst.b 87(%a2)
	jeq .L719
.L576:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L578
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L579
.L578:
	tst.b 87(%a2)
	jeq .L579
	tst.b 170(%a2)
	jne .L579
	tst.b 230(%a2)
	jeq .L580
.L579:
	tst.b 96(%a2)
	jeq .L581
	tst.b 170(%a2)
	jne .L581
	tst.b 87(%a2)
	jeq .L581
.L580:
	tst.b 98(%a2)
	jne .L581
	tst.b 96(%a2)
	jne .L582
	clr.b 107(%a2)
	move.b #1,230(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L582:
	tst.b 160(%a2)
	jeq .L720
.L583:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L721
	clr.b 160(%a2)
	clr.b 96(%a2)
.L584:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
.L581:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L586
	and.l JAGPAD_9,%d0
	jeq .L587
.L586:
	tst.b 87(%a2)
	jeq .L587
	tst.b 170(%a2)
	jne .L587
	tst.b 230(%a2)
	jeq .L588
.L587:
	tst.b 98(%a2)
	jeq .L589
	tst.b 170(%a2)
	jne .L589
	tst.b 87(%a2)
	jeq .L589
.L588:
	tst.b 96(%a2)
	jne .L589
	tst.b 98(%a2)
	jne .L590
	clr.b 107(%a2)
	move.b #1,230(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L590:
	tst.b 160(%a2)
	jeq .L722
.L591:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L723
	clr.b 160(%a2)
	clr.b 98(%a2)
.L592:
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L589:
	tst.w 16(%a3)
	jne .L594
	tst.b 96(%a2)
	jne .L594
	tst.b 98(%a2)
	jeq .L724
.L594:
	tst.b 87(%a2)
	jeq .L494
	tst.b 170(%a2)
	jne .L595
	move.l 172(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L595
	tst.b 171(%a2)
	jne .L596
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L596
	tst.b 96(%a2)
	jne .L596
	tst.b 98(%a2)
	jne .L596
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,171(%a2)
	addq.l #8,%sp
.L596:
	tst.b 160(%a2)
	jeq .L725
.L597:
	tst.b 96(%a2)
	jne .L599
	tst.b 98(%a2)
	jne .L599
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 424(%a2),-(%sp)
	move.l 302(%a2),-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L599:
	move.w raptor_ticks,%a0
	move.l %a0,172(%a2)
.L595:
	clr.l -(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L600
	cmp.w #89,250(%a2)
	jgt .L700
.L600:
	tst.b 170(%a2)
	jeq .L494
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 420(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L494
	move.b #1,158(%a2)
	clr.b 87(%a2)
.L702:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 171(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L494
.L567:
	tst.b 89(%a2)
	jeq .L570
	clr.b 89(%a2)
.L570:
	tst.b 91(%a2)
	jne .L571
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L700:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,170(%a2)
	clr.l 278(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
	jra .L494
.L569:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 444(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 34(%a2),%a0
.L704:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L494
	clr.b 91(%a2)
	jra .L494
.L571:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 436(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 30(%a2),%a0
	jra .L704
.L725:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 218(%a2),(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	addq.l #8,%sp
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L598
	clr.l 302(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,170(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
.L598:
	move.l 274(%a2),-(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,278(%a2)
	jra .L597
.L724:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L701:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L719:
	tst.l %d4
	jeq .L602
	tst.l %d1
	jeq .L603
	cmp.w #1,268(%a2)
	jeq .L604
.L603:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L602
	cmp.w #-1,268(%a2)
	jeq .L604
.L602:
	tst.b 88(%a2)
	jeq .L726
.L606:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L608
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L609
.L608:
	tst.b 88(%a2)
	jeq .L609
	tst.b 170(%a2)
	jne .L609
	tst.b 230(%a2)
	jeq .L610
.L609:
	tst.b 96(%a2)
	jeq .L611
	tst.b 170(%a2)
	jne .L611
	tst.b 88(%a2)
	jeq .L611
.L610:
	tst.b 98(%a2)
	jne .L611
	tst.b 96(%a2)
	jne .L612
	clr.b 107(%a2)
	move.b #1,230(%a2)
	move.b #1,96(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L612:
	tst.b 160(%a2)
	jeq .L727
.L613:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L728
	clr.b 160(%a2)
	clr.b 98(%a2)
.L614:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
.L611:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L616
	and.l JAGPAD_9,%d0
	jeq .L617
.L616:
	tst.b 88(%a2)
	jeq .L617
	tst.b 170(%a2)
	jne .L617
	tst.b 230(%a2)
	jeq .L618
.L617:
	tst.b 98(%a2)
	jeq .L619
	tst.b 170(%a2)
	jne .L619
	tst.b 88(%a2)
	jeq .L619
.L618:
	tst.b 96(%a2)
	jne .L619
	tst.b 98(%a2)
	jne .L620
	clr.b 107(%a2)
	move.b #1,230(%a2)
	move.b #1,98(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L620:
	tst.b 160(%a2)
	jeq .L729
.L621:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L730
	clr.b 160(%a2)
	clr.b 98(%a2)
.L622:
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L619:
	tst.w 16(%a3)
	jne .L624
	tst.b 96(%a2)
	jne .L624
	tst.b 98(%a2)
	jeq .L731
.L624:
	tst.b 88(%a2)
	jeq .L494
	tst.b 170(%a2)
	jne .L625
	move.l 172(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L625
	tst.b 171(%a2)
	jne .L626
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L626
	tst.b 96(%a2)
	jne .L626
	tst.b 98(%a2)
	jne .L626
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,171(%a2)
	addq.l #8,%sp
.L626:
	tst.b 160(%a2)
	jne .L627
	tst.b 301(%a2)
	jne .L628
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l 218(%a2),%d1
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
.L628:
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L629
	clr.l 302(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,170(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
.L629:
	move.l 274(%a2),-(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,278(%a2)
.L627:
	tst.b 96(%a2)
	jne .L630
	tst.b 98(%a2)
	jne .L630
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 424(%a2),-(%sp)
	moveq #20,%d0
	sub.l 302(%a2),%d0
	move.l %d0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L630:
	move.w raptor_ticks,%a0
	move.l %a0,172(%a2)
.L625:
	clr.l -(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L631
	cmp.w #89,250(%a2)
	jgt .L700
.L631:
	tst.b 170(%a2)
	jeq .L494
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 420(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L494
	move.b #1,158(%a2)
	clr.b 88(%a2)
	jra .L702
.L731:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L701
.L730:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 472(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L622
.L729:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 160(%a2)
	jeq .L622
	jra .L621
.L728:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L614
.L727:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 464(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 160(%a2)
	jeq .L614
	jra .L613
.L726:
	tst.l %d1
	jeq .L633
	tst.b 158(%a2)
	jeq .L633
	tst.b 86(%a2)
	jne .L633
	tst.b 84(%a2)
	jne .L634
	clr.w 16(%a3)
.L634:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	and.l #255,%d3
	move.l %d3,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 412(%a2),-(%sp)
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
	tst.w 248(%a2)
	jle .L494
	tst.b 127(%a2)
	jne .L635
	move.l 198(%a2),%d0
	cmp.w #-1,268(%a2)
	jne .L636
	move.l 194(%a2),%d0
.L636:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L699:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L494
.L635:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L494
	move.l 226(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L699
.L633:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L637
	tst.b 158(%a2)
	jeq .L637
	tst.b 86(%a2)
	jne .L637
	tst.b 84(%a2)
	jne .L638
	clr.w 16(%a3)
.L638:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	move.b %d3,%d0
	eor.b #1,%d0
	and.l #255,%d0
	move.l %d0,-(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 412(%a2),-(%sp)
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
	cmp.w #280,248(%a2)
	jgt .L494
	tst.b 127(%a2)
	jne .L639
	move.l 194(%a2),%d0
	cmp.w #-1,268(%a2)
	jne .L640
	move.l 198(%a2),%d0
.L640:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L699
.L639:
	move.l 226(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L699
.L637:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L641
	tst.b 158(%a2)
	jeq .L641
	tst.b 86(%a2)
	jne .L641
	tst.b 89(%a2)
	jne .L642
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L642:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L641:
	tst.l %d4
	jeq .L643
	tst.b 105(%a2)
	jeq .L643
	tst.b 158(%a2)
	jne .L644
.L643:
	tst.b 86(%a2)
	jeq .L732
.L645:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L647
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L648
.L647:
	tst.b 86(%a2)
	jeq .L648
	tst.b 170(%a2)
	jne .L648
	tst.b 230(%a2)
	jeq .L649
.L648:
	tst.b 96(%a2)
	jeq .L650
	tst.b 170(%a2)
	jne .L650
	tst.b 86(%a2)
	jeq .L650
.L649:
	tst.b 97(%a2)
	jne .L650
	tst.b 96(%a2)
	jne .L651
	clr.b 107(%a2)
	move.b #1,230(%a2)
	move.b #1,85(%a2)
	move.b #1,96(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L651:
	tst.b 160(%a2)
	jeq .L733
.L652:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L734
	clr.b 160(%a2)
	clr.b 96(%a2)
.L653:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
.L650:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L655
	and.l JAGPAD_9,%d0
	jeq .L656
.L655:
	tst.b 86(%a2)
	jeq .L656
	tst.b 170(%a2)
	jne .L656
	tst.b 230(%a2)
	jeq .L657
.L656:
	tst.b 97(%a2)
	jeq .L658
	tst.b 170(%a2)
	jne .L658
	tst.b 86(%a2)
	jeq .L658
.L657:
	tst.b 96(%a2)
	jne .L658
	tst.b 97(%a2)
	jne .L659
	clr.b 107(%a2)
	move.b #1,230(%a2)
	move.b #1,97(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L659:
	tst.b 160(%a2)
	jeq .L735
.L660:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L736
	clr.b 160(%a2)
	clr.b 97(%a2)
.L661:
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L658:
	tst.w 16(%a3)
	jne .L663
	tst.b 96(%a2)
	jne .L663
	tst.b 97(%a2)
	jeq .L669
.L663:
	tst.b 86(%a2)
	jeq .L494
	tst.b 170(%a2)
	jne .L664
	move.l 236(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L665
	tst.b 160(%a2)
	jne .L665
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L666
	clr.l 302(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,170(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
.L666:
	move.l 274(%a2),-(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,278(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
.L665:
	tst.b 96(%a2)
	jne .L664
	tst.b 97(%a2)
	jne .L664
	move.w #1,16(%a3)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 420(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L664:
	clr.l -(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L667
	cmp.w #89,250(%a2)
	jgt .L737
.L667:
	tst.b 170(%a2)
	jeq .L494
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L669
	move.b #1,158(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L669:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 420(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L737:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,170(%a2)
	clr.l 278(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
	jra .L494
.L723:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 472(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L592
.L722:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 160(%a2)
	jeq .L592
	jra .L591
.L721:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L584
.L720:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 464(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 160(%a2)
	jeq .L584
	jra .L583
.L574:
	tst.b 106(%a2)
	jeq .L572
	tst.b 158(%a2)
	jeq .L572
	tst.b 87(%a2)
	jne .L576
	clr.b 158(%a2)
	clr.b 230(%a2)
	clr.b 106(%a2)
	move.b #1,87(%a2)
	clr.w 16(%a3)
	move.l 282(%a2),278(%a2)
	clr.b 170(%a2)
	clr.l 302(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,172(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
	jra .L576
.L644:
	tst.b 86(%a2)
	jne .L645
	clr.b 105(%a2)
	clr.b 230(%a2)
	move.b #1,86(%a2)
	clr.w 16(%a3)
	clr.l 302(%a2)
	move.l 282(%a2),278(%a2)
	clr.b 170(%a2)
	clr.b 158(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
	jra .L645
.L604:
	tst.b 106(%a2)
	jeq .L602
	tst.b 158(%a2)
	jeq .L602
	tst.b 88(%a2)
	jne .L606
	clr.b 158(%a2)
	clr.b 230(%a2)
	clr.b 106(%a2)
	move.b #1,88(%a2)
	clr.w 16(%a3)
	clr.l 302(%a2)
	move.l 282(%a2),278(%a2)
	clr.b 170(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,172(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayJumpiP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
	jra .L606
.L733:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 464(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 160(%a2)
	jeq .L653
	jra .L652
.L736:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 468(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L661
.L735:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 468(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 160(%a2)
	jeq .L661
	jra .L660
.L734:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L653
.L732:
	tst.b 89(%a2)
	jne .L738
	tst.b 90(%a2)
	jne .L739
	tst.b 84(%a2)
	jeq .L672
	clr.b 127(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L672:
	tst.b 82(%a2)
	jne .L673
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L673:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 400(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L494
.L739:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 432(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L494
	clr.b 90(%a2)
	jra .L494
.L738:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 428(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jne .L494
	clr.b 89(%a2)
	jra .L494
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
	jeq .L741
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L747
	jlt .L751
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L745
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L746
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L783
.L743:
	sub.w 250(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L756
	jge .L784
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L758
	cmp.l #128,%d0
	jeq .L759
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L757
.L752:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L765
	jlt .L769
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L763
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L764
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L762
	moveq #84,%d1
	not.b %d1
.L761:
	cmp.l %a1,%d1
	jge .L741
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L772
	jlt .L778
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L772
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L772
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L772
	move.w #171,%d1
.L772:
	move.w %d1,12(%a0)
.L741:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L751:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L749
	cmp.l #128,%d0
	jeq .L750
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L743
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 250(%a2),%d1
.L757:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L766:
	moveq #78,%d1
	not.b %d1
	jra .L761
.L747:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 250(%a2),%d1
.L756:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L765:
	moveq #75,%d1
	not.b %d1
	jra .L761
.L745:
	move.w %a1,%d1
	sub.w 250(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L754:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L763:
	moveq #69,%d1
	not.b %d1
	jra .L761
.L749:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 250(%a2),%d1
.L758:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L767:
	moveq #81,%d1
	not.b %d1
	jra .L761
.L783:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 250(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L762:
	moveq #66,%d1
	not.b %d1
	jra .L761
.L778:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L772
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L772
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L772
	move.w #171,%d1
	jra .L772
.L746:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 250(%a2),%d1
.L755:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L764:
	moveq #72,%d1
	not.b %d1
	jra .L761
.L750:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 250(%a2),%d1
	add.w %a1,%d1
.L759:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L768:
	moveq #87,%d1
	not.b %d1
	jra .L761
.L784:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L754
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L755
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L752
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L762
.L769:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L767
	cmp.l #128,%d0
	jeq .L768
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L766
	moveq #84,%d1
	not.b %d1
	jra .L761
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
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
	tst.b 152(%a2)
	jeq .L788
	clr.b 152(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	move.l %a0,232(%a2)
	move.l %a0,244(%a2)
	move.l %a0,172(%a2)
	move.l %a0,12(%a3)
.L788:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L789
	move.b 134(%a2),%d1
.L790:
	tst.b %d1
	jeq .L787
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 148(%a2)
	jeq .L796
	tst.b 118(%a2)
	jne .L796
	tst.b 117(%a2)
	jne .L796
	clr.b 148(%a2)
	move.w #90,250(%a2)
	move.l 78(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	clr.w 16(%a3)
	move.w 298(%a2),%d0
	jle .L797
	tst.b 135(%a2)
	jeq .L834
.L797:
	move.b #1,136(%a2)
	clr.b 135(%a2)
	addq.w #1,%d0
	move.w %d0,298(%a2)
.L787:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L796:
	tst.b 149(%a2)
	jeq .L798
	clr.b 149(%a2)
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
	move.w #90,250(%a2)
	moveq #1,%d3
	cmp.l %d0,%d3
	jeq .L799
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L787
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,12(%fp)
	move.l 264(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L798:
	tst.b 151(%a2)
	jne .L835
	tst.b 146(%a2)
	jeq .L802
.L845:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L836
.L802:
	tst.b 150(%a2)
	jne .L837
	tst.b 128(%a2)
	jeq .L803
	tst.b 86(%a2)
	jne .L803
	tst.b 88(%a2)
	jne .L803
	tst.b 87(%a2)
	jne .L803
	tst.b 126(%a2)
	jne .L803
	tst.b 85(%a2)
	jne .L803
	tst.b 270(%a2)
	jeq .L809
	clr.b 270(%a2)
	clr.w 16(%a3)
.L809:
	tst.b 271(%a2)
	jeq .L838
	tst.w 16(%a3)
	jle .L839
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L830:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L856:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L789:
	move.l sprite,%a1
	move.l 78(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a4
	move.w 268(%a2),%d1
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
	jeq .L840
	tst.b 134(%a2)
	jeq .L827
	moveq #1,%d1
	tst.b 136(%a2)
	jeq .L841
.L792:
	tst.b 138(%a2)
	jne .L793
.L794:
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L790
.L840:
	move.b 134(%a2),%d1
	tst.b 138(%a2)
	jeq .L794
.L793:
	moveq #1,%d3
	move.l %d3,4(%a4)
	jra .L790
.L837:
	clr.b 150(%a2)
	clr.w 16(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	move.w 154(%a2),248(%a2)
	move.w 156(%a2),250(%a2)
	clr.w 154(%a2)
	clr.w 156(%a2)
	move.b #1,126(%a2)
	move.b #1,130(%a2)
.L803:
	tst.b 136(%a2)
	jne .L842
	tst.b 135(%a2)
	jeq .L817
	tst.b 126(%a2)
	jeq .L843
	tst.l 258(%a2)
	jle .L844
.L819:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 126(%a2)
	jne .L787
.L849:
	move.b #1,136(%a2)
	clr.b 135(%a2)
	addq.w #1,298(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L799:
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,12(%fp)
	move.l 264(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L835:
	clr.b 151(%a2)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	tst.b 146(%a2)
	jeq .L802
	jra .L845
.L817:
	tst.b 83(%a2)
	jne .L846
	tst.b 137(%a2)
	jne .L847
.L821:
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
	jeq .L787
.L853:
	move.l 176(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),%d2
	add.w #12,%d2
	move.w %d2,8(%a0)
	move.w 250(%a2),%a2
	lea (160,%a2),%a2
	move.w %a2,12(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L842:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L848
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 496(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L852:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L827:
	clr.b %d1
	jra .L792
.L844:
	tst.b 126(%a2)
	jeq .L787
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 126(%a2)
	jne .L787
	jra .L849
.L836:
	clr.b 146(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 135(%a2)
	jne .L803
	tst.b 262(%a2)
	jne .L850
	move.l 254(%a2),%d0
	subq.l #1,%d0
	move.l %d0,254(%a2)
	jle .L851
.L805:
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L806
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L803
.L841:
	tst.b 83(%a2)
	jne .L792
	moveq #1,%d3
	move.l %d3,4(%a4)
	jra .L790
.L848:
	clr.l -(%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 134(%a2)
	addq.l #4,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 496(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L852
.L843:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 404(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.l 258(%a2)
	jgt .L819
	jra .L844
.L847:
	move.w 268(%a2),%d3
	lea ___mulsf3,%a4
	move.l 226(%a2),-(%sp)
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
	jeq .L822
	tst.b 130(%a2)
	jne .L822
.L823:
	tst.l %d0
	jle .L826
	tst.b 300(%a2)
	jeq .L825
.L826:
	add.w %d0,248(%a2)
.L825:
	move.l 232(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L821
	clr.b 137(%a2)
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
	jne .L853
	jra .L787
.L834:
	move.l %a2,-(%sp)
	jsr __Z17fighterResetFlagsP7Fighter
	move.b #1,135(%a2)
	clr.l 258(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	addq.l #4,%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L822:
	tst.l %d0
	jlt .L854
.L824:
	cmp.w #1,%d3
	jne .L823
	tst.b 130(%a2)
	jne .L823
	add.w %d0,248(%a2)
	jra .L825
.L850:
	clr.b 262(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 254(%a2),%d0
	subq.l #1,%d0
	move.l %d0,254(%a2)
	jgt .L805
.L851:
	clr.l 254(%a2)
	move.b #1,148(%a2)
	moveq #0,%d0
	jra .L805
.L854:
	tst.b 300(%a2)
	jne .L824
	jra .L825
.L839:
	clr.b 128(%a2)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L830
.L846:
	move.w #90,250(%a2)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	pea 90.w
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 408(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L806:
	move.l %d0,16984(%a0)
	moveq #78,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	move.w %d0,16904(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L803
.L838:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L811
	move.b #1,271(%a2)
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,268(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L855
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
.L811:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L856
.L855:
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
	jra .L811
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L863
	jge .L870
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L865
	cmp.l #128,%d0
	jeq .L866
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L871
.L859:
	moveq #21,%d0
	unlk %fp
	rts
.L870:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L868
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L862
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L859
	moveq #3,%d0
	unlk %fp
	rts
.L862:
	moveq #9,%d0
	unlk %fp
	rts
.L866:
	moveq #24,%d0
	unlk %fp
	rts
.L871:
	moveq #15,%d0
	unlk %fp
	rts
.L865:
	moveq #18,%d0
	unlk %fp
	rts
.L868:
	moveq #6,%d0
	unlk %fp
	rts
.L863:
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
	cmp.w #1,268(%a0)
	jeq .L879
	move.w 248(%a0),%a2
	sub.w 248(%a1),%a2
	cmp.w #259,%a2
	jgt .L877
.L875:
	clr.b 301(%a0)
	clr.b 301(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L879:
	move.w 248(%a1),%a2
	sub.w 248(%a0),%a2
	cmp.w #259,%a2
	jle .L875
.L877:
	move.b #1,301(%a0)
	move.b #1,301(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,152(%a0)
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
	tst.b 188(%a3)
	jne .L883
	tst.b 188(%a2)
	jeq .L882
.L883:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 188(%a3)
	jne .L892
	tst.b 188(%a2)
	jeq .L882
.L893:
	clr.b 188(%a2)
	move.l 184(%a2),%d0
	move.l %d0,_tempScore
	jne .L889
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 184(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L882:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L892:
	pea 10.w
	pea 8.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 184(%a3),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 188(%a2)
	jne .L893
	jra .L882
.L889:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L886:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L886
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L888
	move.b #39,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	lsl.l #3,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 184(%a2),(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L888:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #280,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 184(%a2),(%sp)
	pea .LC0
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 496(%a2),-(%sp)
	moveq #0,%d0
	move.w 74(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 236(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L895
	move.b #1,158(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 120(%a2)
	clr.b 121(%a2)
	clr.b 130(%a2)
	clr.b 131(%a2)
	clr.b 118(%a2)
	clr.b 117(%a2)
	clr.b 122(%a2)
	clr.b 123(%a2)
	clr.b 124(%a2)
	move.b #1,125(%a2)
	clr.l 302(%a2)
	clr.w 16(%a3)
	move.w #90,250(%a2)
.L895:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 396(%a1),%a0
	clr.w 16(%a0)
	move.l 78(%a1),%d0
	move.l %d0,(%a0)
	move.l #11999920,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11999920,44(%a0)
	move.l #320,144(%a0)
	pea 3.w
	pea 13.w
	move.l #12107440,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
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
