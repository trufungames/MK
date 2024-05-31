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
	jeq .L300
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L302
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L303
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L300
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L300:
	move.b #1,161(%a1)
	tst.b 90(%a0)
	jne .L293
	tst.b 86(%a0)
	jeq .L294
	move.b #1,120(%a0)
	moveq #5,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
.L305:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L302:
	move.b #1,161(%a1)
	tst.b 90(%a0)
	jeq .L304
.L293:
	move.b #1,91(%a0)
	move.b #1,146(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,236(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L303:
	move.b #1,161(%a1)
	tst.b 90(%a0)
	jne .L293
	tst.b 86(%a0)
	jeq .L291
	move.b #1,120(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
.L307:
	moveq #5,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L305
.L304:
	tst.b 86(%a0)
	jeq .L287
	move.b #1,120(%a0)
	move.b #1,151(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
.L306:
	moveq #5,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L305
.L294:
	move.b #1,112(%a0)
	move.b #1,109(%a0)
	moveq #5,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L305
.L287:
	move.b #1,115(%a0)
	move.b #1,151(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
	jra .L306
.L291:
	move.b #1,115(%a0)
	move.b #1,109(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
	jra .L307
	.even
	.globl	__Z19fighterHandleImpactP7FighterS0_
__Z19fighterHandleImpactP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.b 126(%a0),%d0
	jne .L310
	tst.b 90(%a0)
	jne .L310
.L311:
	tst.b 92(%a1)
	jne .L339
.L313:
	tst.b 93(%a1)
	jeq .L315
	tst.b 89(%a0)
	jne .L315
	move.b #1,111(%a0)
	moveq #2,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	addq.l #5,184(%a1)
	move.b #1,188(%a1)
.L314:
	tst.b %d0
	jne .L309
.L334:
	tst.b 90(%a0)
	jeq .L327
.L340:
	tst.b 89(%a0)
	jeq .L327
	move.b #1,91(%a0)
	move.b #1,146(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
.L330:
	tst.b 129(%a1)
	jeq .L309
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
.L309:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L310:
	tst.b 135(%a0)
	jne .L311
	tst.b %d0
	jne .L309
	tst.b 90(%a0)
	jeq .L334
	move.b #1,91(%a0)
	move.b #1,146(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a0)
	tst.b 90(%a0)
	jne .L340
.L327:
	tst.b 100(%a1)
	jeq .L329
	move.b #1,119(%a0)
	moveq #4,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	moveq #10,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L330
.L339:
	tst.b 89(%a0)
	jne .L313
	move.b #1,110(%a0)
	moveq #2,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	addq.l #5,184(%a1)
	move.b #1,188(%a1)
	jra .L314
.L315:
	tst.b 94(%a1)
	jeq .L316
	tst.b 89(%a0)
	jne .L316
	move.b #1,110(%a0)
	moveq #5,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
.L341:
	tst.b %d0
	jeq .L334
	jra .L309
.L316:
	tst.b 95(%a1)
	jeq .L317
	tst.b 89(%a0)
	jne .L317
	move.b #1,112(%a0)
	moveq #5,%d1
	move.l %d1,258(%a0)
	clr.b 262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L341
.L317:
	tst.b 101(%a1)
	jeq .L318
	tst.b 89(%a0)
	jeq .L342
.L318:
	tst.b 102(%a1)
	jeq .L319
	tst.b 89(%a0)
	jeq .L343
.L319:
	tst.b 96(%a1)
	jeq .L321
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
	jeq .L334
	jra .L309
.L329:
	tst.b 104(%a1)
	jeq .L330
	move.b #1,113(%a0)
	clr.b 158(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,236(%a1)
	moveq #2,%d0
	move.l %d0,258(%a0)
	clr.b 262(%a0)
	addq.l #5,184(%a1)
	move.b #1,188(%a1)
	jra .L330
.L321:
	tst.b 97(%a1)
	jne .L344
	tst.b 99(%a1)
	jeq .L323
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
	jra .L341
.L342:
	move.b #1,112(%a0)
	moveq #6,%d1
	move.l %d1,258(%a0)
	move.b #1,262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
.L346:
	tst.b %d0
	jeq .L334
	jra .L309
.L343:
	move.b #1,115(%a0)
	moveq #2,%d1
	cmp.l (%a1),%d1
	jeq .L345
	moveq #4,%d1
.L347:
	move.l %d1,258(%a0)
	move.b #1,262(%a0)
	move.b #20,%d1
	add.l %d1,184(%a1)
	move.b #1,188(%a1)
	jra .L346
.L344:
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
	jra .L341
.L345:
	move.b #1,116(%a0)
	moveq #4,%d1
	jra .L347
.L323:
	tst.b 98(%a1)
	jeq .L324
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
	jra .L341
.L324:
	tst.b 103(%a1)
	jeq .L314
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
	jeq .L334
	jra .L309
	.even
	.globl	__Z18fighterImpactCheckP7FighterS0_
__Z18fighterImpactCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.b 127(%a3)
	jeq .L350
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L367
.L350:
	tst.b 127(%a2)
	jeq .L351
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d5
	cmp.l 112(%a0,%d0.l),%d5
	jeq .L368
.L351:
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
	jlt .L349
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP7FighterS0_,%d4
	lea __Z19fighterHandleImpactP7FighterS0_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L354
.L375:
	cmp.w #0,%a0
	jlt .L349
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 78(%a3),%d0
	cmp.l %d2,%d0
	jeq .L355
	cmp.l 78(%a2),%d2
	jeq .L355
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d5
	move.l %d5,112(%a0,%d1.l)
.L355:
	cmp.l %d0,%d3
	jeq .L356
	cmp.l 78(%a2),%d3
	jeq .L356
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L356:
	moveq #61,%d5
	cmp.l %d2,%d5
	jeq .L369
	moveq #56,%d1
	cmp.l %d2,%d1
	jeq .L370
	moveq #62,%d0
	cmp.l %d2,%d0
	jne .L361
	moveq #56,%d1
	cmp.l %d3,%d1
	jeq .L371
.L361:
	tst.b 138(%a3)
	jeq .L362
	cmp.l 78(%a3),%d2
	jeq .L372
.L362:
	tst.b 138(%a2)
	jeq .L363
	cmp.l 78(%a2),%d2
	jeq .L373
.L363:
	moveq #59,%d0
	cmp.l %d2,%d0
	jeq .L374
.L364:
	move.l colliders,%d0
.L365:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L375
.L354:
	cmp.w #0,%a0
	jge .L365
.L349:
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L374:
	moveq #56,%d1
	cmp.l %d3,%d1
	jne .L364
	tst.b 84(%a2)
	jeq .L364
	move.b #1,127(%a2)
	move.b #1,137(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a3)
	move.l colliders,%d0
	jra .L365
.L372:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L362
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	jra .L362
.L373:
	moveq #56,%d0
	cmp.l %d3,%d0
	jne .L363
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #59,%d0
	cmp.l %d2,%d0
	jne .L364
	jra .L374
.L370:
	moveq #59,%d5
	cmp.l %d3,%d5
	jne .L361
	tst.b 84(%a3)
	jeq .L361
	move.w 248(%a3),%d0
	cmp.w #10,%d0
	jle .L361
	cmp.w #328,%d0
	jgt .L361
	move.w 248(%a2),%d0
	cmp.w #10,%d0
	jle .L361
	cmp.w #328,%d0
	jgt .L361
	move.b #1,127(%a3)
	move.b #1,137(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,232(%a2)
	jra .L361
.L369:
	moveq #59,%d0
	cmp.l %d3,%d0
	jne .L361
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L361
.L371:
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	jra .L361
.L367:
	clr.b 127(%a3)
	jra .L350
.L368:
	clr.b 127(%a2)
	jra .L351
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
	jeq .L391
	cmp.w #-1,%d0
	jeq .L392
.L380:
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L393
.L381:
	cmp.w #-1,%d0
	jne .L377
	move.w 248(%a0),%a2
	add.l _turnOffset,%a2
	move.w 248(%a1),%a1
	cmp.l %a2,%a1
	jle .L377
.L388:
	tst.b 128(%a0)
	jne .L377
	clr.b 271(%a0)
	move.b #1,128(%a0)
	move.b #1,270(%a0)
.L377:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L392:
	move.w 248(%a1),%a3
	add.l _turnOffset,%a3
	move.w 248(%a0),%a2
	cmp.l %a3,%a2
	jle .L380
	tst.b 128(%a1)
	jne .L380
.L394:
	clr.b 271(%a1)
	move.b #1,128(%a1)
	move.b #1,270(%a1)
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jne .L381
.L393:
	move.w 248(%a0),%a2
	move.w 248(%a1),%a1
	add.l _turnOffset,%a1
	cmp.l %a2,%a1
	jlt .L388
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L391:
	move.w 248(%a1),%a3
	move.w 248(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L380
	tst.b 128(%a1)
	jne .L380
	jra .L394
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
	jeq .L403
	cmp.w #-1,%d0
	jeq .L404
.L398:
	clr.b 133(%a0)
	clr.b 133(%a1)
.L396:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L404:
	move.w 248(%a1),%a3
	move.w 248(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jgt .L398
.L400:
	move.b #1,133(%a0)
	move.b #1,133(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L403:
	move.w 248(%a1),%a3
	move.w 248(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jge .L400
	clr.b 133(%a0)
	clr.b 133(%a1)
	jra .L396
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
	jne .L408
	tst.b 262(%a2)
	jne .L415
	move.l 254(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,254(%a2)
	jle .L416
.L411:
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L412
.L417:
	move.l %d0,16792(%a0)
	move.l %d2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z8sleepAddi
.L412:
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
.L408:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L415:
	clr.b 262(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 254(%a2),%d0
	sub.l %d3,%d0
	move.l %d0,254(%a2)
	jgt .L411
.L416:
	clr.l 254(%a2)
	move.b #1,148(%a2)
	moveq #0,%d0
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L412
	jra .L417
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,268(%a0)
	jeq .L424
	tst.b 300(%a0)
	jeq .L419
.L421:
	addq.w #2,248(%a0)
.L419:
	unlk %fp
	rts
.L424:
	tst.b 130(%a0)
	jeq .L421
	tst.b 300(%a0)
	jne .L421
	jra .L419
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,268(%a0)
	jeq .L427
	tst.b 130(%a0)
	jeq .L428
.L427:
	tst.b 300(%a0)
	jeq .L426
.L428:
	subq.w #2,248(%a0)
.L426:
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
	jeq .L433
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
.L433:
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L441
	moveq #16,%d0
	move.l %d0,4(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	unlk %fp
	rts
.L441:
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
	jle .L457
.L445:
	cmp.w #280,%d0
	jgt .L449
.L454:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L457:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L453
	move.w 248(%a2),%d0
	cmp.w #11,%d0
	jgt .L445
	cmp.w #280,248(%a3)
	jgt .L453
	jsr (%a4)
	tst.b %d0
	jne .L453
	move.w 248(%a2),%d0
	cmp.w #280,%d0
	jle .L454
.L449:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L458
.L453:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L458:
	cmp.w #328,248(%a2)
	jle .L454
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
	jeq .L461
	tst.b 130(%a0)
	jne .L461
.L462:
	tst.l %d0
	jle .L465
	tst.b 300(%a0)
	jeq .L460
.L465:
	add.w %d0,248(%a0)
.L460:
	unlk %fp
	rts
.L461:
	tst.l %d0
	jlt .L468
	cmp.w #1,%d1
	jne .L462
.L469:
	tst.b 130(%a0)
	jne .L462
	add.w %d0,248(%a0)
	jra .L460
.L468:
	tst.b 300(%a0)
	jeq .L460
	cmp.w #1,%d1
	jne .L462
	jra .L469
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
	jne .L472
	tst.b 84(%a2)
	jeq .L701
.L473:
	clr.b 82(%a2)
.L475:
	move.l 190(%a2),-(%sp)
	jsr jsfGetPad
	move.l %d0,180(%a2)
	move.l JAGPAD_C,%d1
	and.l %d1,%d0
	addq.l #4,%sp
	jeq .L476
	tst.b 107(%a2)
	jeq .L476
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L476:
	move.w 322(%a2),%a0
	move.l %a0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jne .L702
	tst.b 138(%a2)
	jne .L703
	move.l 180(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L671
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L671
.L479:
	tst.b 99(%a2)
	jne .L481
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jne .L489
	tst.l %d1
	jeq .L490
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L491
	cmp.w #1,268(%a2)
	jeq .L489
.L491:
	move.l %d0,%d5
	and.l JAGPAD_LEFT,%d5
	jeq .L490
	cmp.w #-1,268(%a2)
	jeq .L489
.L490:
	tst.b 93(%a2)
	jeq .L704
.L493:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L500
	clr.b 93(%a2)
.L500:
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
.L488:
	move.l 180(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L668
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L668
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L668
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L668
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L668
	and.l JAGPAD_7,%d0
	jne .L668
	move.b #1,107(%a2)
.L668:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 180(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L471
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L670
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L670
	and.l JAGPAD_RIGHT,%d0
	jne .L670
	move.b #1,105(%a2)
	clr.b 108(%a2)
.L670:
	move.b #1,106(%a2)
.L471:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L472:
	clr.b 82(%a2)
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L701:
	tst.b 89(%a2)
	jne .L473
	tst.b 86(%a2)
	jne .L473
	tst.b 88(%a2)
	jne .L473
	tst.b 87(%a2)
	jne .L473
	tst.b 85(%a2)
	jeq .L475
	clr.b 82(%a2)
	jra .L475
.L703:
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 328(%a2),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L671:
	tst.b 89(%a2)
	jeq .L479
	tst.b 107(%a2)
	jeq .L479
	tst.b 158(%a2)
	jeq .L479
	tst.b 99(%a2)
	jne .L481
	clr.b 107(%a2)
	move.b #1,99(%a2)
	move.b #1,85(%a2)
	clr.b 89(%a2)
	clr.w 16(%a3)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L481:
	move.l 368(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.b 159(%a2)
	jeq .L705
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jgt .L706
.L485:
	clr.b 159(%a2)
.L486:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L488
	clr.b 99(%a2)
	move.b #1,158(%a2)
	jra .L488
.L704:
	tst.l %d4
	jeq .L707
.L501:
	tst.b 107(%a2)
	jeq .L502
	tst.b 158(%a2)
	jeq .L502
	tst.b 86(%a2)
	jne .L502
	tst.b 127(%a2)
	jeq .L502
	tst.b 102(%a2)
	jne .L505
	clr.b 107(%a2)
	move.b #1,102(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L507:
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
	jra .L488
.L702:
	move.b #1,138(%a2)
	clr.b 141(%a2)
	move.l %a2,8(%fp)
	movem.l -24(%fp),#3132
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L489:
	tst.b 107(%a2)
	jeq .L490
	tst.b 158(%a2)
	jeq .L490
	tst.b 86(%a2)
	jne .L490
	tst.b 127(%a2)
	jne .L490
	tst.b 93(%a2)
	jne .L493
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
	jeq .L497
	move.b #7,%d3
	cmp.l %d0,%d3
	jeq .L498
	move.b #4,%d3
	cmp.l %d0,%d3
	jeq .L708
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaMaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L711:
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
	jra .L488
.L705:
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
	jeq .L486
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 162(%a2),%d0
	cmp.l %a0,%d0
	jle .L485
	jra .L706
.L707:
	tst.l %d1
	jeq .L502
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L503
	cmp.w #1,268(%a2)
	jeq .L501
.L503:
	move.l %d0,%d4
	and.l JAGPAD_LEFT,%d4
	jeq .L502
	cmp.w #-1,268(%a2)
	jeq .L501
.L502:
	tst.b 102(%a2)
	jne .L505
	tst.l %d1
	jeq .L508
	tst.b 107(%a2)
	jeq .L508
	tst.b 158(%a2)
	jeq .L508
	tst.b 86(%a2)
	jne .L508
	tst.b 133(%a2)
	jeq .L508
	tst.b 129(%a2)
	jne .L510
	clr.b 107(%a2)
	move.b #1,129(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l (%a2),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jhi .L512
	moveq #6,%d3
	cmp.l %d0,%d3
	jcc .L513
	move.b #7,%d1
	cmp.l %d0,%d1
	jeq .L709
.L512:
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z12sfxThrowMaleP12SoundHandlerb
	addq.l #8,%sp
.L515:
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
	jra .L488
.L706:
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
	jne .L488
	jra .L486
.L505:
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L507
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
	jra .L488
.L709:
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
	jra .L488
.L508:
	tst.b 129(%a2)
	jne .L510
	tst.l %d1
	jeq .L516
	tst.b 107(%a2)
	jeq .L516
	tst.b 158(%a2)
	jeq .L516
	tst.b 86(%a2)
	jne .L516
	tst.b 133(%a2)
	jne .L516
	tst.b 92(%a2)
	jne .L518
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
.L520:
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
	jra .L488
.L510:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L515
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
	jra .L488
.L516:
	tst.b 92(%a2)
	jne .L518
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L521
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L521
	cmp.w #1,268(%a2)
	jeq .L522
.L521:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L523
	move.l %d0,%d4
	and.l JAGPAD_DOWN,%d4
	jeq .L523
	cmp.w #-1,268(%a2)
	jeq .L522
.L523:
	tst.b 100(%a2)
	jeq .L710
.L525:
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L527
	clr.b 100(%a2)
.L527:
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
	jra .L488
.L518:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L520
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
	jra .L488
.L710:
	tst.l %d1
	jeq .L528
	cmp.w #1,268(%a2)
	jeq .L529
.L528:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L530
	cmp.w #-1,268(%a2)
	jeq .L529
.L530:
	tst.b 101(%a2)
	jne .L533
	move.l JAGPAD_9,%d4
	move.l %d4,%d5
	and.l %d0,%d5
	jne .L536
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L537
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L538
	cmp.w #1,268(%a2)
	jeq .L536
.L538:
	tst.l %d1
	jeq .L537
	cmp.w #-1,268(%a2)
	jeq .L536
.L537:
	tst.b 95(%a2)
	jne .L540
	move.l JAGPAD_A,%d5
	or.l %d5,%d4
	and.l %d0,%d4
	jeq .L543
	tst.b 107(%a2)
	jeq .L543
	tst.b 158(%a2)
	jeq .L543
	tst.b 86(%a2)
	jne .L543
	tst.b 89(%a2)
	jne .L543
	tst.b 133(%a2)
	jeq .L543
	tst.b 103(%a2)
	jne .L545
	clr.b 107(%a2)
	move.b #1,103(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
.L547:
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
	jra .L488
.L533:
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L535
	clr.b 101(%a2)
.L535:
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
	jra .L488
.L522:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jeq .L523
	tst.b 107(%a2)
	jeq .L523
	tst.b 158(%a2)
	jeq .L523
	tst.b 86(%a2)
	jne .L523
	tst.b 100(%a2)
	jne .L525
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
	jra .L488
.L529:
	move.l %d0,%d4
	and.l JAGPAD_A,%d4
	jne .L531
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L530
.L531:
	tst.b 107(%a2)
	jeq .L530
	tst.b 158(%a2)
	jeq .L530
	tst.b 86(%a2)
	jne .L530
	tst.b 101(%a2)
	jne .L533
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
	jra .L488
.L536:
	tst.b 107(%a2)
	jeq .L537
	tst.b 158(%a2)
	jeq .L537
	tst.b 86(%a2)
	jne .L537
	tst.b 89(%a2)
	jne .L537
	tst.b 127(%a2)
	jne .L537
	tst.b 95(%a2)
	jne .L540
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
.L542:
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
	jra .L488
.L540:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L542
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
	jra .L488
.L498:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z13sfxHiyaFemaleP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L711
.L497:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z12sfxHiyaNinjaP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L711
.L708:
	move.l %d2,-(%sp)
	move.l %d1,-(%sp)
	jsr __Z11sfxHiyaKangP12SoundHandlerb
	addq.l #8,%sp
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L711
.L513:
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
	jra .L488
.L543:
	tst.b 103(%a2)
	jne .L545
	and.l %d0,%d5
	jeq .L548
	tst.b 107(%a2)
	jeq .L548
	tst.b 158(%a2)
	jeq .L548
	tst.b 86(%a2)
	jne .L548
	tst.b 89(%a2)
	jne .L548
	tst.b 127(%a2)
	jne .L548
	tst.b 94(%a2)
	jne .L550
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
.L552:
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
	jra .L488
.L545:
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L547
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
	jra .L488
.L548:
	tst.b 94(%a2)
	jne .L550
	tst.l %d4
	jeq .L553
	tst.b 107(%a2)
	jeq .L553
	tst.b 158(%a2)
	jeq .L553
	tst.b 86(%a2)
	jne .L553
	tst.b 89(%a2)
	jeq .L553
	tst.b 104(%a2)
	jne .L555
	clr.b 107(%a2)
	move.b #1,104(%a2)
	move.b #1,85(%a2)
	clr.w 16(%a3)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
.L557:
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
	jra .L488
.L550:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L552
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
	jra .L488
.L553:
	tst.b 104(%a2)
	jeq .L712
.L555:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L557
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
	jra .L488
.L712:
	move.l %d0,%d4
	and.l JAGPAD_B,%d4
	jne .L558
	move.l %d0,%d4
	and.l JAGPAD_8,%d4
	jeq .L559
.L558:
	tst.b 86(%a2)
	jne .L559
	tst.b 158(%a2)
	jeq .L559
	tst.b 90(%a2)
	jne .L560
	move.b #1,90(%a2)
	clr.w 16(%a3)
.L560:
	and.l JAGPAD_DOWN,%d0
	jeq .L561
	tst.b 89(%a2)
	jne .L562
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
.L562:
	tst.b 91(%a2)
	jne .L563
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
	jra .L488
.L559:
	move.l %d0,%d4
	and.l JAGPAD_UP,%d4
	jeq .L566
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L567
	cmp.w #1,268(%a2)
	jeq .L568
.L567:
	tst.l %d1
	jeq .L566
	cmp.w #-1,268(%a2)
	jeq .L568
.L566:
	tst.b 87(%a2)
	jeq .L713
.L570:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L572
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L573
.L572:
	tst.b 87(%a2)
	jeq .L573
	tst.b 170(%a2)
	jne .L573
	tst.b 230(%a2)
	jeq .L574
.L573:
	tst.b 96(%a2)
	jeq .L575
	tst.b 170(%a2)
	jne .L575
	tst.b 87(%a2)
	jeq .L575
.L574:
	tst.b 98(%a2)
	jne .L575
	tst.b 96(%a2)
	jne .L576
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
.L576:
	tst.b 160(%a2)
	jeq .L714
.L577:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L715
	clr.b 160(%a2)
	clr.b 96(%a2)
.L578:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
.L575:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L580
	and.l JAGPAD_9,%d0
	jeq .L581
.L580:
	tst.b 87(%a2)
	jeq .L581
	tst.b 170(%a2)
	jne .L581
	tst.b 230(%a2)
	jeq .L582
.L581:
	tst.b 98(%a2)
	jeq .L583
	tst.b 170(%a2)
	jne .L583
	tst.b 87(%a2)
	jeq .L583
.L582:
	tst.b 96(%a2)
	jne .L583
	tst.b 98(%a2)
	jne .L584
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
.L584:
	tst.b 160(%a2)
	jeq .L716
.L585:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L717
	clr.b 160(%a2)
	clr.b 98(%a2)
.L586:
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L583:
	tst.w 16(%a3)
	jne .L588
	tst.b 96(%a2)
	jne .L588
	tst.b 98(%a2)
	jeq .L718
.L588:
	tst.b 87(%a2)
	jeq .L488
	tst.b 170(%a2)
	jne .L589
	move.l 172(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L589
	tst.b 171(%a2)
	jne .L590
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L590
	tst.b 96(%a2)
	jne .L590
	tst.b 98(%a2)
	jne .L590
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,171(%a2)
	addq.l #8,%sp
.L590:
	tst.b 160(%a2)
	jeq .L719
.L591:
	tst.b 96(%a2)
	jne .L593
	tst.b 98(%a2)
	jne .L593
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
.L593:
	move.w raptor_ticks,%a0
	move.l %a0,172(%a2)
.L589:
	clr.l -(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L594
	cmp.w #89,250(%a2)
	jgt .L694
.L594:
	tst.b 170(%a2)
	jeq .L488
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
	jeq .L488
	move.b #1,158(%a2)
	clr.b 87(%a2)
.L696:
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	clr.b 171(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L488
.L561:
	tst.b 89(%a2)
	jeq .L564
	clr.b 89(%a2)
.L564:
	tst.b 91(%a2)
	jne .L565
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
	jra .L488
.L694:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	clr.b 98(%a2)
	move.b #1,170(%a2)
	clr.l 278(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
	jra .L488
.L563:
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
.L698:
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L488
	clr.b 91(%a2)
	jra .L488
.L565:
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
	jra .L698
.L719:
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
	jge .L592
	clr.l 302(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,170(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
.L592:
	move.l 274(%a2),-(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,278(%a2)
	jra .L591
.L718:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
.L695:
	move.w 24(%a2),%a0
	move.l %a0,-(%sp)
	move.l 424(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L488
.L713:
	tst.l %d4
	jeq .L596
	tst.l %d1
	jeq .L597
	cmp.w #1,268(%a2)
	jeq .L598
.L597:
	move.l %d0,%d5
	and.l JAGPAD_RIGHT,%d5
	jeq .L596
	cmp.w #-1,268(%a2)
	jeq .L598
.L596:
	tst.b 88(%a2)
	jeq .L720
.L600:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L602
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L603
.L602:
	tst.b 88(%a2)
	jeq .L603
	tst.b 170(%a2)
	jne .L603
	tst.b 230(%a2)
	jeq .L604
.L603:
	tst.b 96(%a2)
	jeq .L605
	tst.b 170(%a2)
	jne .L605
	tst.b 88(%a2)
	jeq .L605
.L604:
	tst.b 98(%a2)
	jne .L605
	tst.b 96(%a2)
	jne .L606
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
.L606:
	tst.b 160(%a2)
	jeq .L721
.L607:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L722
	clr.b 160(%a2)
	clr.b 98(%a2)
.L608:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
.L605:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L610
	and.l JAGPAD_9,%d0
	jeq .L611
.L610:
	tst.b 88(%a2)
	jeq .L611
	tst.b 170(%a2)
	jne .L611
	tst.b 230(%a2)
	jeq .L612
.L611:
	tst.b 98(%a2)
	jeq .L613
	tst.b 170(%a2)
	jne .L613
	tst.b 88(%a2)
	jeq .L613
.L612:
	tst.b 96(%a2)
	jne .L613
	tst.b 98(%a2)
	jne .L614
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
.L614:
	tst.b 160(%a2)
	jeq .L723
.L615:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L724
	clr.b 160(%a2)
	clr.b 98(%a2)
.L616:
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L613:
	tst.w 16(%a3)
	jne .L618
	tst.b 96(%a2)
	jne .L618
	tst.b 98(%a2)
	jeq .L725
.L618:
	tst.b 88(%a2)
	jeq .L488
	tst.b 170(%a2)
	jne .L619
	move.l 172(%a2),%a1
	move.w raptor_ticks,%a0
	move.l %a1,%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L619
	tst.b 171(%a2)
	jne .L620
	lea (10,%a1),%a1
	cmp.l %a0,%a1
	jge .L620
	tst.b 96(%a2)
	jne .L620
	tst.b 98(%a2)
	jne .L620
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.b #1,171(%a2)
	addq.l #8,%sp
.L620:
	tst.b 160(%a2)
	jne .L621
	tst.b 301(%a2)
	jne .L622
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
.L622:
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L623
	clr.l 302(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,170(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
.L623:
	move.l 274(%a2),-(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,278(%a2)
.L621:
	tst.b 96(%a2)
	jne .L624
	tst.b 98(%a2)
	jne .L624
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
.L624:
	move.w raptor_ticks,%a0
	move.l %a0,172(%a2)
.L619:
	clr.l -(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L625
	cmp.w #89,250(%a2)
	jgt .L694
.L625:
	tst.b 170(%a2)
	jeq .L488
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
	jeq .L488
	move.b #1,158(%a2)
	clr.b 88(%a2)
	jra .L696
.L725:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	jra .L695
.L724:
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
	jra .L616
.L723:
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
	jeq .L616
	jra .L615
.L722:
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
	jra .L608
.L721:
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
	jeq .L608
	jra .L607
.L720:
	tst.l %d1
	jeq .L627
	tst.b 158(%a2)
	jeq .L627
	tst.b 86(%a2)
	jne .L627
	tst.b 84(%a2)
	jne .L628
	clr.w 16(%a3)
.L628:
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
	jle .L488
	tst.b 127(%a2)
	jne .L629
	move.l 198(%a2),%d0
	cmp.w #-1,268(%a2)
	jne .L630
	move.l 194(%a2),%d0
.L630:
	add.l #-2147483648,%d0
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
.L693:
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L488
.L629:
	jsr __Z13cameraCanMovev
	tst.b %d0
	jeq .L488
	move.l 226(%a2),%d0
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L693
.L627:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L631
	tst.b 158(%a2)
	jeq .L631
	tst.b 86(%a2)
	jne .L631
	tst.b 84(%a2)
	jne .L632
	clr.w 16(%a3)
.L632:
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
	jgt .L488
	tst.b 127(%a2)
	jne .L633
	move.l 194(%a2),%d0
	cmp.w #-1,268(%a2)
	jne .L634
	move.l 198(%a2),%d0
.L634:
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L693
.L633:
	move.l 226(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	jra .L693
.L631:
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L635
	tst.b 158(%a2)
	jeq .L635
	tst.b 86(%a2)
	jne .L635
	tst.b 89(%a2)
	jne .L636
	move.b #1,89(%a2)
	clr.b 84(%a2)
	clr.b 85(%a2)
	clr.w 16(%a3)
.L636:
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
	jra .L488
.L635:
	tst.l %d4
	jeq .L637
	tst.b 105(%a2)
	jeq .L637
	tst.b 158(%a2)
	jne .L638
.L637:
	tst.b 86(%a2)
	jeq .L726
.L639:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L641
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L642
.L641:
	tst.b 86(%a2)
	jeq .L642
	tst.b 170(%a2)
	jne .L642
	tst.b 230(%a2)
	jeq .L643
.L642:
	tst.b 96(%a2)
	jeq .L644
	tst.b 170(%a2)
	jne .L644
	tst.b 86(%a2)
	jeq .L644
.L643:
	tst.b 97(%a2)
	jne .L644
	tst.b 96(%a2)
	jne .L645
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
.L645:
	tst.b 160(%a2)
	jeq .L727
.L646:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L728
	clr.b 160(%a2)
	clr.b 96(%a2)
.L647:
	move.l 360(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.l 180(%a2),%d0
.L644:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L649
	and.l JAGPAD_9,%d0
	jeq .L650
.L649:
	tst.b 86(%a2)
	jeq .L650
	tst.b 170(%a2)
	jne .L650
	tst.b 230(%a2)
	jeq .L651
.L650:
	tst.b 97(%a2)
	jeq .L652
	tst.b 170(%a2)
	jne .L652
	tst.b 86(%a2)
	jeq .L652
.L651:
	tst.b 96(%a2)
	jne .L652
	tst.b 97(%a2)
	jne .L653
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
.L653:
	tst.b 160(%a2)
	jeq .L729
.L654:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	add.l 166(%a2),%d0
	cmp.l %a0,%d0
	jgt .L730
	clr.b 160(%a2)
	clr.b 97(%a2)
.L655:
	move.l 364(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
.L652:
	tst.w 16(%a3)
	jne .L657
	tst.b 96(%a2)
	jne .L657
	tst.b 97(%a2)
	jeq .L663
.L657:
	tst.b 86(%a2)
	jeq .L488
	tst.b 170(%a2)
	jne .L658
	move.l 236(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L659
	tst.b 160(%a2)
	jne .L659
	move.l 302(%a2),%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,250(%a2)
	addq.l #1,%a0
	move.l %a0,302(%a2)
	moveq #20,%d1
	cmp.l %a0,%d1
	jge .L660
	clr.l 302(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,170(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
.L660:
	move.l 274(%a2),-(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,278(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
.L659:
	tst.b 96(%a2)
	jne .L658
	tst.b 97(%a2)
	jne .L658
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
.L658:
	clr.l -(%sp)
	move.l 278(%a2),-(%sp)
	jsr ___gtsf2
	addq.l #8,%sp
	tst.l %d0
	jle .L661
	cmp.w #89,250(%a2)
	jgt .L731
.L661:
	tst.b 170(%a2)
	jeq .L488
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L663
	move.b #1,158(%a2)
	clr.b 86(%a2)
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L663:
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
	jra .L488
.L731:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	clr.b 96(%a2)
	clr.b 97(%a2)
	move.b #1,170(%a2)
	clr.l 278(%a2)
	move.w #90,250(%a2)
	addq.l #4,%sp
	jra .L488
.L717:
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
	jra .L586
.L716:
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
	jeq .L586
	jra .L585
.L715:
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
	jra .L578
.L714:
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
	jeq .L578
	jra .L577
.L568:
	tst.b 106(%a2)
	jeq .L566
	tst.b 158(%a2)
	jeq .L566
	tst.b 87(%a2)
	jne .L570
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
	jra .L570
.L638:
	tst.b 86(%a2)
	jne .L639
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
	jra .L639
.L598:
	tst.b 106(%a2)
	jeq .L596
	tst.b 158(%a2)
	jeq .L596
	tst.b 88(%a2)
	jne .L600
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
	jra .L600
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
	jeq .L647
	jra .L646
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
	move.l 468(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L655
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
	move.l 468(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 160(%a2)
	jeq .L655
	jra .L654
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
	jra .L647
.L726:
	tst.b 89(%a2)
	jne .L732
	tst.b 90(%a2)
	jne .L733
	tst.b 84(%a2)
	jeq .L666
	clr.b 127(%a2)
	clr.b 84(%a2)
	clr.w 16(%a3)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L666:
	tst.b 82(%a2)
	jne .L667
	move.b #1,82(%a2)
	clr.b 85(%a2)
.L667:
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
	jra .L488
.L733:
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
	jne .L488
	clr.b 90(%a2)
	jra .L488
.L732:
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
	jne .L488
	clr.b 89(%a2)
	jra .L488
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
	jeq .L735
	move.l 32(%a1),%d0
	move.w %d0,%d2
	move.w 12(%a1),%a1
	add.w %d0,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L741
	jlt .L745
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L739
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L740
	move.b #16,%d1
	cmp.l %d0,%d1
	jeq .L777
.L737:
	sub.w 250(%a2),%a1
	add.w %d2,%a1
	move.w %a1,%d1
	add.w #-21,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L750
	jge .L778
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L752
	cmp.l #128,%d0
	jeq .L753
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L751
.L746:
	lea (38,%a1),%a1
	move.w %a1,12(%a0)
	move.w %a1,%a1
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L759
	jlt .L763
	moveq #32,%d2
	cmp.l %d0,%d2
	jeq .L757
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L758
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L756
	moveq #84,%d1
	not.b %d1
.L755:
	cmp.l %a1,%d1
	jge .L735
	move.w #180,%d1
	moveq #64,%d2
	cmp.l %d0,%d2
	jeq .L766
	jlt .L772
	move.b #-70,%d1
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L766
	move.b #-73,%d1
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L766
	move.b #-67,%d1
	move.b #16,%d2
	cmp.l %d0,%d2
	jeq .L766
	move.w #171,%d1
.L766:
	move.w %d1,12(%a0)
.L735:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L745:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L743
	cmp.l #128,%d0
	jeq .L744
	move.b #80,%d1
	cmp.l %d0,%d1
	jne .L737
	move.w %d0,%d1
	add.w #-15,%d1
	add.w %a1,%d1
	sub.w 250(%a2),%d1
.L751:
	add.w #65,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L760:
	moveq #78,%d1
	not.b %d1
	jra .L755
.L741:
	move.w %d0,%d1
	add.w #-12,%d1
	add.w %a1,%d1
	sub.w 250(%a2),%d1
.L750:
	add.w #68,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L759:
	moveq #75,%d1
	not.b %d1
	jra .L755
.L739:
	move.w %a1,%d1
	sub.w 250(%a2),%d1
	add.w %d0,%d1
	subq.w #6,%d1
.L748:
	add.w #74,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L757:
	moveq #69,%d1
	not.b %d1
	jra .L755
.L743:
	move.w %d0,%d1
	add.w #-18,%d1
	add.w %a1,%d1
	sub.w 250(%a2),%d1
.L752:
	add.w #62,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L761:
	moveq #81,%d1
	not.b %d1
	jra .L755
.L777:
	move.w %d0,%d1
	subq.w #3,%d1
	sub.w 250(%a2),%d1
	add.w %a1,%d1
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L756:
	moveq #66,%d1
	not.b %d1
	jra .L755
.L772:
	move.w #174,%d1
	moveq #96,%d2
	cmp.l %d0,%d2
	jeq .L766
	move.b #-88,%d1
	cmp.l #128,%d0
	jeq .L766
	move.b #-79,%d1
	move.b #80,%d2
	cmp.l %d0,%d2
	jeq .L766
	move.w #171,%d1
	jra .L766
.L740:
	move.w %d0,%d1
	add.w #-9,%d1
	add.w %a1,%d1
	sub.w 250(%a2),%d1
.L749:
	add.w #71,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L758:
	moveq #72,%d1
	not.b %d1
	jra .L755
.L744:
	move.w %d0,%d1
	add.w #-24,%d1
	sub.w 250(%a2),%d1
	add.w %a1,%d1
.L753:
	add.w #56,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
.L762:
	moveq #87,%d1
	not.b %d1
	jra .L755
.L778:
	move.b #32,%d2
	cmp.l %d0,%d2
	jeq .L748
	move.b #48,%d2
	cmp.l %d0,%d2
	jeq .L749
	move.b #16,%d2
	cmp.l %d0,%d2
	jne .L746
	add.w #77,%d1
	move.w %d1,12(%a0)
	move.w %d1,%a1
	jra .L756
.L763:
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L761
	cmp.l #128,%d0
	jeq .L762
	moveq #80,%d2
	cmp.l %d0,%d2
	jeq .L760
	moveq #84,%d1
	not.b %d1
	jra .L755
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
	jeq .L782
	clr.b 152(%a2)
	move.w raptor_ticks,%a0
	move.l %a0,236(%a2)
	move.l %a0,232(%a2)
	move.l %a0,244(%a2)
	move.l %a0,172(%a2)
	move.l %a0,12(%a3)
.L782:
	pea 1.w
	move.l %a2,-(%sp)
	jsr __Z17fighterCastShadowP7Fighterb
	move.l (%a2),%d0
	addq.l #8,%sp
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L783
	move.b 134(%a2),%d1
.L784:
	tst.b %d1
	jeq .L781
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	seq %d3
	neg.b %d3
	move.b %d3,_walkForward
	tst.b 148(%a2)
	jeq .L790
	tst.b 118(%a2)
	jne .L790
	tst.b 117(%a2)
	jne .L790
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
	jle .L791
	tst.b 135(%a2)
	jeq .L828
.L791:
	move.b #1,136(%a2)
	clr.b 135(%a2)
	addq.w #1,%d0
	move.w %d0,298(%a2)
.L781:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L790:
	tst.b 149(%a2)
	jeq .L792
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
	jeq .L793
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L781
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,12(%fp)
	move.l 264(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxKanoYellP12SoundHandlerb
.L792:
	tst.b 151(%a2)
	jne .L829
	tst.b 146(%a2)
	jeq .L796
.L839:
	move.w raptor_ticks,%a0
	move.l 236(%a2),%d0
	addq.l #6,%d0
	cmp.l %a0,%d0
	jlt .L830
.L796:
	tst.b 150(%a2)
	jne .L831
	tst.b 128(%a2)
	jeq .L797
	tst.b 86(%a2)
	jne .L797
	tst.b 88(%a2)
	jne .L797
	tst.b 87(%a2)
	jne .L797
	tst.b 126(%a2)
	jne .L797
	tst.b 85(%a2)
	jne .L797
	tst.b 270(%a2)
	jeq .L803
	clr.b 270(%a2)
	clr.w 16(%a3)
.L803:
	tst.b 271(%a2)
	jeq .L832
	tst.w 16(%a3)
	jle .L833
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L824:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 416(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L850:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L783:
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
	jeq .L834
	tst.b 134(%a2)
	jeq .L821
	moveq #1,%d1
	tst.b 136(%a2)
	jeq .L835
.L786:
	tst.b 138(%a2)
	jne .L787
.L788:
	moveq #-1,%d3
	move.l %d3,4(%a4)
	jra .L784
.L834:
	move.b 134(%a2),%d1
	tst.b 138(%a2)
	jeq .L788
.L787:
	moveq #1,%d3
	move.l %d3,4(%a4)
	jra .L784
.L831:
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
.L797:
	tst.b 136(%a2)
	jne .L836
	tst.b 135(%a2)
	jeq .L811
	tst.b 126(%a2)
	jeq .L837
	tst.l 258(%a2)
	jle .L838
.L813:
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 126(%a2)
	jne .L781
.L843:
	move.b #1,136(%a2)
	clr.b 135(%a2)
	addq.w #1,298(%a2)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L793:
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,12(%fp)
	move.l 264(%a2),8(%fp)
	movem.l -24(%fp),#7196
	unlk %fp
	jra __Z11sfxCageYeahP12SoundHandlerb
.L829:
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
	jeq .L796
	jra .L839
.L811:
	tst.b 83(%a2)
	jne .L840
	tst.b 137(%a2)
	jne .L841
.L815:
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
	jeq .L781
.L847:
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
.L836:
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L842
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
.L846:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L821:
	clr.b %d1
	jra .L786
.L838:
	tst.b 126(%a2)
	jeq .L781
	moveq #0,%d0
	move.b _walkForward,%d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
	lea (16,%sp),%sp
	tst.b 126(%a2)
	jne .L781
	jra .L843
.L830:
	clr.b 146(%a2)
	clr.w 16(%a3)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxBlockP12SoundHandlerb
	addq.l #8,%sp
	tst.b 135(%a2)
	jne .L797
	tst.b 262(%a2)
	jne .L844
	move.l 254(%a2),%d0
	subq.l #1,%d0
	move.l %d0,254(%a2)
	jle .L845
.L799:
	move.l sprite,%a0
	tst.b 272(%a2)
	jeq .L800
	move.l %d0,16792(%a0)
	clr.l -(%sp)
	jsr __Z8sleepAddi
	addq.l #4,%sp
	jra .L797
.L835:
	tst.b 83(%a2)
	jne .L786
	moveq #1,%d3
	move.l %d3,4(%a4)
	jra .L784
.L842:
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
	jra .L846
.L837:
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
	jgt .L813
	jra .L838
.L841:
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
	jeq .L816
	tst.b 130(%a2)
	jne .L816
.L817:
	tst.l %d0
	jle .L820
	tst.b 300(%a2)
	jeq .L819
.L820:
	add.w %d0,248(%a2)
.L819:
	move.l 232(%a2),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L815
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
	jne .L847
	jra .L781
.L828:
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
.L816:
	tst.l %d0
	jlt .L848
.L818:
	cmp.w #1,%d3
	jne .L817
	tst.b 130(%a2)
	jne .L817
	add.w %d0,248(%a2)
	jra .L819
.L844:
	clr.b 262(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 254(%a2),%d0
	subq.l #1,%d0
	move.l %d0,254(%a2)
	jgt .L799
.L845:
	clr.l 254(%a2)
	move.b #1,148(%a2)
	moveq #0,%d0
	jra .L799
.L848:
	tst.b 300(%a2)
	jne .L818
	jra .L819
.L833:
	clr.b 128(%a2)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L824
.L840:
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
.L800:
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
	jra .L797
.L832:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L805
	move.b #1,271(%a2)
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,268(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L849
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
.L805:
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
	jra .L850
.L849:
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
	jra .L805
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L857
	jge .L864
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L859
	cmp.l #128,%d0
	jeq .L860
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L865
.L853:
	moveq #21,%d0
	unlk %fp
	rts
.L864:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L862
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L856
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L853
	moveq #3,%d0
	unlk %fp
	rts
.L856:
	moveq #9,%d0
	unlk %fp
	rts
.L860:
	moveq #24,%d0
	unlk %fp
	rts
.L865:
	moveq #15,%d0
	unlk %fp
	rts
.L859:
	moveq #18,%d0
	unlk %fp
	rts
.L862:
	moveq #6,%d0
	unlk %fp
	rts
.L857:
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
	jeq .L873
	move.w 248(%a0),%a2
	sub.w 248(%a1),%a2
	cmp.w #259,%a2
	jgt .L871
.L869:
	clr.b 301(%a0)
	clr.b 301(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L873:
	move.w 248(%a1),%a2
	sub.w 248(%a0),%a2
	cmp.w #259,%a2
	jle .L869
.L871:
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
	jne .L877
	tst.b 188(%a2)
	jeq .L876
.L877:
	pea 10.w
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 188(%a3)
	jne .L886
	tst.b 188(%a2)
	jeq .L876
.L887:
	clr.b 188(%a2)
	move.l 184(%a2),%d0
	move.l %d0,_tempScore
	jne .L883
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
.L876:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L886:
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
	jne .L887
	jra .L876
.L883:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L880:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L880
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L882
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
.L882:
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
	jle .L889
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
.L889:
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
