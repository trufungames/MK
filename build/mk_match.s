#NO_APP
	.text
	.even
	.globl	__Z10matchResetv
__Z10matchResetv:
	link.w %fp,#0
	pea 99.w
	jsr rapSetClock
	clr.w raptor_clock_mode
	clr.l _matchState
	clr.l _matchTicks
	clr.b _fightZoomed
	clr.l _fightScale
	clr.l _winner
	clr.l _loser
	clr.b _matchComplete
	clr.l _winsTicks
	clr.b _playedName
	clr.b _playedWins
	addq.l #4,%sp
	unlk %fp
	rts
	.even
	.globl	__Z9matchInitv
__Z9matchInitv:
	link.w %fp,#0
	clr.l _round
	clr.l _fighter1Wins
	clr.l _fighter2Wins
	pea 99.w
	jsr rapSetClock
	clr.w raptor_clock_mode
	clr.l _matchState
	clr.l _matchTicks
	clr.b _fightZoomed
	clr.l _fightScale
	clr.l _winner
	clr.l _loser
	clr.b _matchComplete
	clr.l _winsTicks
	clr.b _playedName
	clr.b _playedWins
	addq.l #4,%sp
	unlk %fp
	rts
.LC0:
	.ascii "%02d\0"
	.even
	.globl	__Z11matchUpdateP12SoundHandlerP7FighterS2_
__Z11matchUpdateP12SoundHandlerP7FighterS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	clr.l _jsfFontIndx
	moveq #2,%d0
	move.l %d0,_jsfFontSize
	pea 8.w
	pea 146.w
	jsr rapLocate
	addq.l #8,%sp
	move.w raptor_clock_hex,%a0
	move.l %a0,-(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	move.l _matchState,%d0
	jne .L4
	move.l _matchTicks,%a0
	cmp.w #0,%a0
	jeq .L72
	lea (119,%a0),%a0
	move.w raptor_ticks,%a1
	cmp.l %a0,%a1
	jle .L68
	moveq #1,%d0
	move.l %d0,_matchState
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L4:
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L73
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L74
	moveq #3,%d2
	cmp.l %d0,%d2
	jeq .L75
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L76
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L68
	move.l _matchTicks,%d0
	add.l #179,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L51
	tst.b 171(%a2)
	jeq .L52
	move.b #1,199(%a2)
	moveq #2,%d2
	move.l %d2,_matchState
.L51:
	tst.b 173(%a2)
	jne .L77
.L53:
	tst.b 173(%a3)
	jeq .L68
	tst.b 170(%a3)
	jne .L68
	moveq #2,%d1
	move.l %d1,_matchState
	moveq #1,%d0
.L83:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L13:
	tst.b 173(%a3)
	jeq .L78
	move.l (%a2),%d0
	move.l %d0,_winner
	move.l (%a3),_loser
	move.l _fighter1Wins,%d1
	addq.l #1,%d1
	move.l %d1,_fighter1Wins
	moveq #2,%d2
	cmp.l %d1,%d2
	jlt .L14
	move.b #1,200(%a2)
.L14:
	tst.l %d0
	jne .L79
	tst.b 171(%a2)
	jne .L17
	tst.b 171(%a3)
	jne .L17
.L68:
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L73:
	move.l _fightScale,%d0
	jeq .L80
.L8:
	tst.b _fightZoomed
	jne .L9
	moveq #59,%d1
	add.l _matchTicks,%d1
	move.w raptor_ticks,%a0
	cmp.l %d1,%a0
	jle .L68
	moveq #32,%d1
	cmp.l %d0,%d1
	jlt .L10
	move.l sprite,%a0
	move.l %d0,16600(%a0)
	move.l %d0,16604(%a0)
	subq.w #8,16520(%a0)
	subq.w #4,16524(%a0)
	addq.l #4,%d0
	move.l %d0,_fightScale
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L72:
	clr.b 208(%a2)
	clr.b 208(%a3)
	move.l #12458320,-(%sp)
	move.l #0x3f000000,-(%sp)
	move.l _round,%d0
	addq.l #6,%d0
	lsl.w #5,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 160.w
	pea 32.w
	pea 80.w
	pea 86.w
	jsr __Z8setFramejssssfj
	move.l sprite,%a0
	move.w #130,16520(%a0)
	move.w #98,16524(%a0)
	moveq #-1,%d0
	move.l %d0,16596(%a0)
	moveq #1,%d1
	move.l %d1,16516(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	lea (28,%sp),%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L75:
	move.w raptor_ticks,%a0
	moveq #60,%d0
	add.l _matchTicks,%d0
	cmp.l %a0,%d0
	jge .L68
	tst.b _playedName
	jne .L23
	move.b #1,_playedName
	move.l %a0,_winsTicks
	move.l _winner,%d0
	moveq #7,%d1
	cmp.l %d0,%d1
	jcs .L24
	move.l %d0,%d1
	add.l %d0,%d1
	move.w .L32(%pc,%d1.l),%d1
	jmp %pc@(2,%d1:w)
.L32:
	.word .L24-.L32
	.word .L25-.L32
	.word .L26-.L32
	.word .L27-.L32
	.word .L28-.L32
	.word .L29-.L32
	.word .L30-.L32
	.word .L31-.L32
.L74:
	tst.b 173(%a2)
	jeq .L13
	move.l (%a3),%d0
	move.l %d0,_winner
	move.l (%a2),_loser
	move.l _fighter2Wins,%d1
	addq.l #1,%d1
	move.l %d1,_fighter2Wins
	moveq #2,%d2
	cmp.l %d1,%d2
	jlt .L14
	move.b #1,200(%a3)
	jra .L14
.L76:
	moveq #7,%d2
	cmp.l _loser.l,%d2
	jeq .L81
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15finishHimFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
.L50:
	move.l sprite,%a1
	moveq #1,%d0
	move.l %d0,16516(%a1)
	move.w raptor_ticks,%a0
	move.b #59,%d0
	add.l _matchTicks,%d0
	cmp.l %d0,%a0
	jle .L68
	moveq #5,%d1
	move.l %d1,_matchState
	moveq #-1,%d2
	move.l %d2,16516(%a1)
	move.l %a0,_matchTicks
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L80:
	move.l #12458320,-(%sp)
	move.l #0x3f000000,-(%sp)
	pea 192.w
	clr.l -(%sp)
	pea 48.w
	pea 160.w
	pea 86.w
	jsr __Z8setFramejssssfj
	move.l sprite,%a0
	move.w #160,16520(%a0)
	move.w #98,16524(%a0)
	moveq #1,%d2
	move.l %d2,16596(%a0)
	move.l _fightScale,%d0
	move.l %d0,16600(%a0)
	move.l %d0,16604(%a0)
	lea (28,%sp),%sp
	jra .L8
.L17:
	clr.w raptor_clock_mode
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z20fighterResetFlagsAllP7FighterS0_
	addq.l #4,%sp
	move.l %a2,(%sp)
	lea __Z17fighterSetOnFloorP7Fighter,%a4
	jsr (%a4)
	move.l %a3,(%sp)
	jsr (%a4)
	moveq #4,%d2
	move.l %d2,_matchState
	addq.l #4,%sp
	tst.b 171(%a2)
	jeq .L18
	move.l (%a2),%d0
	move.l %d0,_loser
	move.b #1,208(%a3)
.L19:
	move.l sprite,%a0
	move.w #8,16520(%a0)
	move.w #64,16524(%a0)
	moveq #-1,%d1
	move.l %d1,16596(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L82
	move.l 8(%fp),-(%sp)
	jsr __Z12sfxFinishHimP12SoundHandler
	addq.l #4,%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L77:
	tst.b 170(%a2)
	jne .L53
	moveq #2,%d1
	move.l %d1,_matchState
	moveq #1,%d0
	jra .L83
.L78:
	move.l _winner,%d0
	jra .L14
.L10:
	move.l 8(%fp),-(%sp)
	jsr __Z8sfxFightP12SoundHandler
	move.b #1,_fightZoomed
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	moveq #32,%d0
	move.l %d0,_fightScale
	addq.l #4,%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L81:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15finishHerFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L50
.L25:
	pea 1.w
	move.l 8(%fp),-(%sp)
	jsr __Z13sfxJohnnyCageP12SoundHandlerb
	move.l _winner,%d0
	addq.l #8,%sp
.L24:
	moveq #11,%d2
	cmp.l %d0,%d2
	jcs .L35
	add.l %d0,%d0
	move.w .L47(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L47:
	.word .L35-.L47
	.word .L36-.L47
	.word .L37-.L47
	.word .L38-.L47
	.word .L39-.L47
	.word .L40-.L47
	.word .L41-.L47
	.word .L42-.L47
	.word .L43-.L47
	.word .L44-.L47
	.word .L45-.L47
	.word .L46-.L47
.L36:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14cageWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
.L35:
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,16516(%a0)
	move.w raptor_ticks,%a0
	move.l _matchTicks,%d0
	add.l #360,%d0
	cmp.l %a0,%d0
	jge .L68
	tst.b _matchComplete
	jne .L68
	move.b #1,_matchComplete
	move.l _round,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	jlt .L64
	moveq #1,%d2
	cmp.l _fighter1Wins.l,%d2
	jge .L84
.L64:
	clr.b %d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L84:
	cmp.l _fighter2Wins.l,%d2
	jlt .L64
	addq.l #1,%d0
	move.l %d0,_round
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L46:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15shangWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L45:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14goroWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L44:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16kasumiWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L43:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL17reptileWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L42:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15sonyaWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L41:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL17subzeroWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L40:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL18scorpionWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L39:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14kangWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L38:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16raidenWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L37:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14kanoWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L35
.L31:
	pea 1.w
	move.l 8(%fp),-(%sp)
	jsr __Z8sfxSonyaP12SoundHandlerb
	move.l _winner,%d0
	addq.l #8,%sp
	jra .L24
.L26:
	pea 1.w
	move.l 8(%fp),-(%sp)
	jsr __Z7sfxKanoP12SoundHandlerb
	move.l _winner,%d0
	addq.l #8,%sp
	jra .L24
.L30:
	pea 1.w
	move.l 8(%fp),-(%sp)
	jsr __Z10sfxSubzeroP12SoundHandlerb
	move.l _winner,%d0
	addq.l #8,%sp
	jra .L24
.L29:
	pea 1.w
	move.l 8(%fp),-(%sp)
	jsr __Z11sfxScorpionP12SoundHandlerb
	move.l _winner,%d0
	addq.l #8,%sp
	jra .L24
.L28:
	pea 1.w
	move.l 8(%fp),-(%sp)
	jsr __Z10sfxLiuKangP12SoundHandlerb
	move.l _winner,%d0
	addq.l #8,%sp
	jra .L24
.L27:
	pea 1.w
	move.l 8(%fp),-(%sp)
	jsr __Z9sfxRaidenP12SoundHandlerb
	move.l _winner,%d0
	addq.l #8,%sp
	jra .L24
.L9:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16fightFlashFrames
	pea __ZL13fightAnimator
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb,%a4
	jsr (%a4)
	moveq #59,%d0
	add.l _matchTicks,%d0
	move.w raptor_ticks,%a0
	lea (20,%sp),%sp
	cmp.l %d0,%a0
	jle .L68
	clr.w __ZL13fightAnimator+16
	pea 1.w
	pea 1.w
	pea 1.w
	pea __ZL15fightIdleFrames
	pea __ZL13fightAnimator
	jsr (%a4)
	move.l _fightScale,%d0
	lea (20,%sp),%sp
	move.l sprite,%a0
	jle .L11
	move.l %d0,16600(%a0)
	move.l %d0,16604(%a0)
	addq.w #8,16520(%a0)
	addq.w #4,16524(%a0)
	subq.l #4,%d0
	move.l %d0,_fightScale
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L79:
	clr.w raptor_clock_mode
	moveq #3,%d0
	move.l %d0,_matchState
	move.l sprite,%a0
	move.w #64,16520(%a0)
	move.w #48,16524(%a0)
	moveq #-1,%d1
	move.l %d1,16596(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	move.l %a0,_winsTicks
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L18:
	tst.b 171(%a3)
	jne .L20
	move.l _loser,%d0
	jra .L19
.L23:
	tst.b _playedWins
	jne .L69
	moveq #70,%d0
	add.l _winsTicks,%d0
	cmp.l %a0,%d0
	jlt .L34
.L69:
	move.l _winner,%d0
	jra .L24
.L34:
	move.b #1,_playedWins
	move.l 8(%fp),-(%sp)
	jsr __Z7sfxWinsP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L24
.L52:
	tst.b 171(%a3)
	jeq .L51
	move.b #1,199(%a3)
	moveq #2,%d0
	move.l %d0,_matchState
	tst.b 173(%a2)
	jeq .L53
	jra .L77
.L82:
	move.l 8(%fp),-(%sp)
	jsr __Z12sfxFinishHerP12SoundHandler
	addq.l #4,%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L20:
	move.l (%a3),%d0
	move.l %d0,_loser
	move.b #1,208(%a2)
	jra .L19
.L11:
	moveq #-1,%d1
	move.l %d1,16516(%a0)
	move.b #1,208(%a2)
	move.b #1,208(%a3)
	moveq #2,%d2
	move.l %d2,_matchState
	move.w #4,raptor_clock_mode
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
	.even
	.globl	__Z15matchIsCompletev
__Z15matchIsCompletev:
	link.w %fp,#0
	move.b _matchComplete,%d0
	unlk %fp
	rts
	.even
	.globl	__Z20matchGetFighter1Winsv
__Z20matchGetFighter1Winsv:
	link.w %fp,#0
	move.l _fighter1Wins,%d0
	unlk %fp
	rts
	.even
	.globl	__Z20matchGetFighter2Winsv
__Z20matchGetFighter2Winsv:
	link.w %fp,#0
	move.l _fighter2Wins,%d0
	unlk %fp
	rts
	.even
	.globl	__Z15matchResetTicksv
__Z15matchResetTicksv:
	link.w %fp,#0
	move.w raptor_ticks,%a0
	move.l %a0,__ZL13fightAnimator+12
	unlk %fp
	rts
	.globl	_playedWins
	.bss
_playedWins:
	.skip 1
	.globl	_playedName
_playedName:
	.skip 1
	.globl	_winsTicks
	.even
_winsTicks:
	.skip 4
	.globl	_fighter2Wins
	.even
_fighter2Wins:
	.skip 4
	.globl	_fighter1Wins
	.even
_fighter1Wins:
	.skip 4
	.globl	_matchComplete
_matchComplete:
	.skip 1
	.globl	_loser
	.even
_loser:
	.skip 4
	.globl	_winner
	.even
_winner:
	.skip 4
	.globl	_fightScale
	.even
_fightScale:
	.skip 4
	.globl	_fightZoomed
_fightZoomed:
	.skip 1
	.globl	_matchTicks
	.even
_matchTicks:
	.skip 4
	.globl	_matchState
	.even
_matchState:
	.skip 4
	.globl	_round
	.even
_round:
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
	.even
__ZL13fightAnimator:
	.long	86
	.long	1056964608
	.long	12458320
	.long	0
	.word	0
	.skip 6
	.even
__ZL16fightFlashFrames:
	.word	160
	.word	48
	.word	0
	.word	192
	.word	0
	.word	0
	.long	3
	.word	160
	.word	48
	.word	0
	.word	240
	.word	0
	.word	0
	.long	3
	.even
__ZL15fightIdleFrames:
	.word	160
	.word	48
	.word	0
	.word	192
	.word	0
	.word	0
	.long	3
	.even
__ZL14cageWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	0
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	0
	.word	0
	.word	0
	.long	3
	.even
__ZL14kanoWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	32
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	32
	.word	0
	.word	0
	.long	3
	.even
__ZL16raidenWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	64
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	64
	.word	0
	.word	0
	.long	3
	.even
__ZL14kangWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	96
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	96
	.word	0
	.word	0
	.long	3
	.even
__ZL18scorpionWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	128
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	128
	.word	0
	.word	0
	.long	3
	.even
__ZL17subzeroWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	160
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	160
	.word	0
	.word	0
	.long	3
	.even
__ZL15sonyaWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	192
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	192
	.word	0
	.word	0
	.long	3
	.even
__ZL17reptileWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	224
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	224
	.word	0
	.word	0
	.long	3
	.even
__ZL16kasumiWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	256
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	256
	.word	0
	.word	0
	.long	3
	.even
__ZL14goroWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	288
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	288
	.word	0
	.word	0
	.long	3
	.even
__ZL15shangWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	304
	.word	0
	.word	0
	.long	3
	.word	192
	.word	32
	.word	496
	.word	304
	.word	0
	.word	0
	.long	3
	.even
__ZL15finishHerFrames:
	.word	304
	.word	48
	.word	0
	.word	96
	.word	0
	.word	0
	.long	3
	.word	304
	.word	48
	.word	0
	.word	144
	.word	0
	.word	0
	.long	3
	.even
__ZL15finishHimFrames:
	.word	304
	.word	48
	.word	0
	.word	0
	.word	0
	.word	0
	.long	3
	.word	304
	.word	48
	.word	0
	.word	48
	.word	0
	.word	0
	.long	3
