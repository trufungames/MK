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
	clr.b _playedFatality
	clr.b _didFatality
	clr.b _playedCrowd
	clr.b _hasWinner
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
	clr.b _playedFatality
	clr.b _didFatality
	clr.b _playedCrowd
	clr.b _hasWinner
	addq.l #4,%sp
	unlk %fp
	rts
.LC0:
	.ascii "%02d\0"
	.even
	.globl	__Z11matchUpdateP12SoundHandlerP12StateMachineP7FighterS4_
__Z11matchUpdateP12SoundHandlerP12StateMachineP7FighterS4_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 16(%fp),%a2
	move.l 20(%fp),%a3
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	move.l %d0,_jsfFontSize
	pea 8.w
	pea 156.w
	jsr rapLocate
	addq.l #8,%sp
	move.w raptor_clock_hex,%a0
	move.l %a0,-(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	move.l 298(%a2),%a0
	move.w (%a0),%d1
	cmp.w #67,%d1
	jeq .L4
	move.l 298(%a3),%a0
	cmp.w #67,(%a0)
	jeq .L4
.L5:
	move.l _matchState,%d0
	jne .L6
	move.l _matchTicks,%a0
	cmp.w #0,%a0
	jeq .L81
	lea (119,%a0),%a0
	move.w raptor_ticks,%a1
	cmp.l %a0,%a1
	jle .L75
	moveq #1,%d0
	move.l %d0,_matchState
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L6:
	moveq #1,%d2
	cmp.l %d0,%d2
	jeq .L82
	moveq #2,%d2
	cmp.l %d0,%d2
	jeq .L83
	moveq #3,%d2
	cmp.l %d0,%d2
	jeq .L84
	moveq #4,%d2
	cmp.l %d0,%d2
	jeq .L85
	moveq #5,%d2
	cmp.l %d0,%d2
	jne .L75
	move.l _matchTicks,%d0
	add.l #299,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L58
	cmp.w #68,%d1
	jeq .L86
	move.l 298(%a3),%a0
	cmp.w #68,(%a0)
	jne .L58
	move.l 434(%a3),-(%sp)
	move.l %a3,-(%sp)
	pea 66.w
	move.l 12(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	moveq #2,%d1
	move.l %d1,_matchState
	lea (16,%sp),%sp
.L58:
	tst.b 146(%a2)
	jne .L87
.L60:
	tst.b 146(%a3)
	jeq .L75
	tst.b 142(%a3)
	jne .L75
	moveq #2,%d2
	move.l %d2,_matchState
	moveq #1,%d0
.L93:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L4:
	move.b #1,_hasWinner
	jra .L5
.L83:
	cmp.w #66,%d1
	jeq .L88
	move.l 298(%a3),%a0
	cmp.w #66,(%a0)
	jeq .L17
	move.l _winner,%a0
.L16:
	cmp.w #0,%a0
	jne .L89
	move.l 298(%a2),%a0
	cmp.w #68,(%a0)
	jeq .L19
	move.l 298(%a3),%a0
	cmp.w #68,(%a0)
	jeq .L19
.L75:
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L82:
	move.l _fightScale,%d0
	jeq .L90
.L10:
	tst.b _fightZoomed
	jne .L11
	moveq #59,%d1
	add.l _matchTicks,%d1
	move.w raptor_ticks,%a0
	cmp.l %d1,%a0
	jle .L75
	moveq #32,%d1
	cmp.l %d0,%d1
	jlt .L12
	move.l sprite,%a0
	move.l %d0,18136(%a0)
	move.l %d0,18140(%a0)
	subq.w #8,18056(%a0)
	subq.w #4,18060(%a0)
	addq.l #4,%d0
	move.l %d0,_fightScale
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L81:
	clr.b 174(%a2)
	clr.b 174(%a3)
	move.l #12621392,-(%sp)
	move.l #0x3f000000,-(%sp)
	move.l _round,%d0
	addq.l #6,%d0
	lsl.w #5,%d0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	pea 160.w
	pea 32.w
	pea 80.w
	pea 94.w
	jsr __Z8setFramejssssfj
	move.l sprite,%a0
	move.w #130,18056(%a0)
	move.w #98,18060(%a0)
	moveq #-1,%d0
	move.l %d0,18132(%a0)
	moveq #1,%d1
	move.l %d1,18052(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	lea (28,%sp),%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L84:
	tst.b _playedCrowd
	jeq .L91
.L25:
	move.w raptor_ticks,%a0
	move.l _matchTicks,%d0
	add.l #140,%d0
	cmp.l %a0,%d0
	jge .L75
.L94:
	tst.b _playedName
	jne .L27
	move.b #1,_playedName
	move.l %a0,_winsTicks
	move.l _winner,%d0
	moveq #7,%d2
	cmp.l %d0,%d2
	jcs .L28
	add.l %d0,%d0
	move.w .L37(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L37:
	.word .L29-.L37
	.word .L30-.L37
	.word .L31-.L37
	.word .L32-.L37
	.word .L33-.L37
	.word .L34-.L37
	.word .L35-.L37
	.word .L36-.L37
.L85:
	moveq #6,%d0
	cmp.l _loser.l,%d0
	jeq .L92
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15finishHimFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
.L57:
	move.l sprite,%a1
	moveq #1,%d1
	move.l %d1,18052(%a1)
	move.w raptor_ticks,%a0
	moveq #59,%d0
	add.l _matchTicks,%d0
	cmp.l %d0,%a0
	jle .L75
	moveq #5,%d2
	move.l %d2,_matchState
	moveq #-1,%d0
	move.l %d0,18052(%a1)
	move.l %a0,_matchTicks
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L90:
	move.l #12621392,-(%sp)
	move.l #0x3f000000,-(%sp)
	pea 192.w
	clr.l -(%sp)
	pea 48.w
	pea 160.w
	pea 94.w
	jsr __Z8setFramejssssfj
	move.l sprite,%a0
	move.w #160,18056(%a0)
	move.w #98,18060(%a0)
	move.l %d2,18132(%a0)
	move.l _fightScale,%d0
	move.l %d0,18136(%a0)
	move.l %d0,18140(%a0)
	lea (28,%sp),%sp
	jra .L10
.L87:
	tst.b 142(%a2)
	jne .L60
	moveq #2,%d2
	move.l %d2,_matchState
	moveq #1,%d0
	jra .L93
.L91:
	move.b #1,_playedCrowd
	lea __Z8stageGetv,%a2
	jsr (%a2)
	moveq #5,%d1
	cmp.l %d0,%d1
	jeq .L26
	jsr (%a2)
	tst.l %d0
	jne .L25
.L26:
	move.l 8(%fp),-(%sp)
	jsr __Z12sfxCrowdClapP12SoundHandler
	addq.l #4,%sp
	move.w raptor_ticks,%a0
	move.l _matchTicks,%d0
	add.l #140,%d0
	cmp.l %a0,%d0
	jlt .L94
	jra .L75
.L19:
	clr.w raptor_clock_mode
	move.l %a2,-(%sp)
	lea __Z17fighterSetOnFloorP7Fighter,%a4
	jsr (%a4)
	move.l %a3,(%sp)
	jsr (%a4)
	moveq #4,%d2
	move.l %d2,_matchState
	move.l 298(%a2),%a0
	addq.l #4,%sp
	cmp.w #68,(%a0)
	jeq .L95
	move.l 298(%a3),%a0
	cmp.w #68,(%a0)
	jeq .L22
	move.l _loser,%a1
.L21:
	move.l sprite,%a0
	move.w #8,18056(%a0)
	move.w #64,18060(%a0)
	moveq #-1,%d0
	move.l %d0,18132(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	moveq #6,%d0
	cmp.l %a1,%d0
	jeq .L96
	move.l 8(%fp),-(%sp)
	jsr __Z12sfxFinishHimP12SoundHandler
	addq.l #4,%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L12:
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
.L92:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15finishHerFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L57
.L35:
	move.l 8(%fp),-(%sp)
	jsr __Z8sfxSonyaP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
.L28:
	moveq #10,%d1
	cmp.l %d0,%d1
	jcs .L42
	add.l %d0,%d0
	move.w .L54(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L54:
	.word .L43-.L54
	.word .L44-.L54
	.word .L45-.L54
	.word .L46-.L54
	.word .L47-.L54
	.word .L48-.L54
	.word .L49-.L54
	.word .L50-.L54
	.word .L51-.L54
	.word .L52-.L54
	.word .L53-.L54
.L52:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14goroWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
.L42:
	move.l sprite,%a0
	moveq #1,%d2
	move.l %d2,18052(%a0)
	move.w raptor_ticks,%a0
	move.l _matchTicks,%d0
	add.l #360,%d0
	cmp.l %a0,%d0
	jge .L75
	tst.b _matchComplete
	jne .L75
	move.b #1,_matchComplete
	move.l _round,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	jlt .L71
	cmp.l _fighter1Wins.l,%d2
	jge .L97
.L71:
	clr.b %d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L97:
	cmp.l _fighter2Wins.l,%d2
	jlt .L71
	addq.l #1,%d0
	move.l %d0,_round
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L51:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL17reptileWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L50:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16kasumiWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L49:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15sonyaWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L48:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL17subzeroWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L47:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL18scorpionWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L46:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14kangWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L45:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16raidenWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L53:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15shangWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L44:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14kanoWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L43:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14cageWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L42
.L34:
	move.l 8(%fp),-(%sp)
	jsr __Z10sfxSubzeroP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L33:
	move.l 8(%fp),-(%sp)
	jsr __Z11sfxScorpionP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L32:
	move.l 8(%fp),-(%sp)
	jsr __Z10sfxLiuKangP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L29:
	move.l 8(%fp),-(%sp)
	jsr __Z13sfxJohnnyCageP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L36:
	move.l 8(%fp),-(%sp)
	jsr __Z9sfxKasumiP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L31:
	move.l 8(%fp),-(%sp)
	jsr __Z9sfxRaidenP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L30:
	move.l 8(%fp),-(%sp)
	jsr __Z7sfxKanoP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L11:
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
	jle .L75
	clr.w __ZL13fightAnimator+14
	pea 1.w
	pea 1.w
	pea 1.w
	pea __ZL15fightIdleFrames
	pea __ZL13fightAnimator
	jsr (%a4)
	move.l _fightScale,%d0
	lea (20,%sp),%sp
	move.l sprite,%a0
	jle .L13
	move.l %d0,18136(%a0)
	move.l %d0,18140(%a0)
	addq.w #8,18056(%a0)
	addq.w #4,18060(%a0)
	subq.l #4,%d0
	move.l %d0,_fightScale
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L89:
	clr.w raptor_clock_mode
	moveq #3,%d0
	move.l %d0,_matchState
	move.l sprite,%a0
	move.w #64,18056(%a0)
	move.w #48,18060(%a0)
	moveq #-1,%d1
	move.l %d1,18132(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	move.l %a0,_winsTicks
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L88:
	move.w (%a3),%a0
	move.l %a0,_winner
	move.b 306(%a3),%d1
	move.b %d1,_didFatality
	move.w (%a2),%a1
	move.l %a1,_loser
	move.l _fighter2Wins,%d0
	addq.l #1,%d0
	move.l %d0,_fighter2Wins
	cmp.l %d0,%d2
	jlt .L16
	tst.b %d1
	jne .L16
	clr.w 292(%a3)
	move.l 434(%a3),-(%sp)
	move.l %a3,-(%sp)
	pea 67.w
	move.l 12(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	move.l _winner,%a0
	lea (16,%sp),%sp
	jra .L16
.L27:
	tst.b _playedWins
	jne .L38
	moveq #70,%d0
	add.l _winsTicks,%d0
	cmp.l %a0,%d0
	jlt .L98
.L38:
	tst.b _didFatality
	jeq .L78
	tst.b _playedFatality
	jne .L78
	moveq #70,%d0
	add.l _winsTicks,%d0
	cmp.l %a0,%d0
	jlt .L41
.L78:
	move.l _winner,%d0
	jra .L28
.L98:
	move.b #1,_playedWins
	move.l 8(%fp),-(%sp)
	jsr __Z7sfxWinsP12SoundHandler
	move.w raptor_ticks,%a0
	move.l %a0,_winsTicks
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L41:
	move.b #1,_playedFatality
	move.l 8(%fp),-(%sp)
	jsr __Z11sfxFatalityP12SoundHandler
	move.l _winner,%d0
	addq.l #4,%sp
	jra .L28
.L17:
	move.w (%a2),%a0
	move.l %a0,_winner
	move.b 306(%a2),%d1
	move.b %d1,_didFatality
	move.w (%a3),%a1
	move.l %a1,_loser
	move.l _fighter1Wins,%d0
	addq.l #1,%d0
	move.l %d0,_fighter1Wins
	moveq #2,%d2
	cmp.l %d0,%d2
	jlt .L16
	tst.b %d1
	jne .L16
	clr.w 292(%a2)
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 67.w
	move.l 12(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	move.l _winner,%a0
	lea (16,%sp),%sp
	jra .L16
.L96:
	move.l 8(%fp),-(%sp)
	jsr __Z12sfxFinishHerP12SoundHandler
	addq.l #4,%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L95:
	move.w (%a2),%a1
	move.l %a1,_loser
	move.b #1,174(%a3)
	jra .L21
.L22:
	move.w (%a3),%a1
	move.l %a1,_loser
	move.b #1,174(%a2)
	jra .L21
.L13:
	moveq #-1,%d1
	move.l %d1,18052(%a0)
	move.b #1,174(%a2)
	move.b #1,174(%a3)
	moveq #2,%d2
	move.l %d2,_matchState
	move.w #4,raptor_clock_mode
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L86:
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 66.w
	move.l 12(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	moveq #2,%d0
	move.l %d0,_matchState
	lea (16,%sp),%sp
	tst.b 146(%a2)
	jeq .L60
	jra .L87
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
	move.w raptor_ticks,__ZL13fightAnimator+12
	unlk %fp
	rts
	.even
	.globl	__Z20matchPrepForFatalityv
__Z20matchPrepForFatalityv:
	link.w %fp,#0
	move.l sprite,%a0
	moveq #-1,%d0
	move.l %d0,18052(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z14matchHasWinnerv
__Z14matchHasWinnerv:
	link.w %fp,#0
	move.b _hasWinner,%d0
	unlk %fp
	rts
	.globl	_hasWinner
	.bss
_hasWinner:
	.skip 1
	.globl	_playedCrowd
_playedCrowd:
	.skip 1
	.globl	_didFatality
_didFatality:
	.skip 1
	.globl	_playedFatality
_playedFatality:
	.skip 1
	.globl	_playedWins
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
	.long	94
	.long	1056964608
	.long	12621392
	.word	0
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
	.word	3
	.word	160
	.word	48
	.word	0
	.word	240
	.word	0
	.word	0
	.word	3
	.even
__ZL15fightIdleFrames:
	.word	160
	.word	48
	.word	0
	.word	192
	.word	0
	.word	0
	.word	3
	.even
__ZL14cageWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	0
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	0
	.word	0
	.word	0
	.word	3
	.even
__ZL14kanoWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	32
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	32
	.word	0
	.word	0
	.word	3
	.even
__ZL16raidenWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	64
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	64
	.word	0
	.word	0
	.word	3
	.even
__ZL14kangWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	96
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	96
	.word	0
	.word	0
	.word	3
	.even
__ZL18scorpionWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	128
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	128
	.word	0
	.word	0
	.word	3
	.even
__ZL17subzeroWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	160
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	160
	.word	0
	.word	0
	.word	3
	.even
__ZL15sonyaWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	192
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	192
	.word	0
	.word	0
	.word	3
	.even
__ZL17reptileWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	224
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	224
	.word	0
	.word	0
	.word	3
	.even
__ZL16kasumiWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	256
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	256
	.word	0
	.word	0
	.word	3
	.even
__ZL14goroWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	288
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	288
	.word	0
	.word	0
	.word	3
	.even
__ZL15shangWinsFrames:
	.word	192
	.word	32
	.word	304
	.word	304
	.word	0
	.word	0
	.word	3
	.word	192
	.word	32
	.word	496
	.word	304
	.word	0
	.word	0
	.word	3
	.even
__ZL15finishHerFrames:
	.word	304
	.word	48
	.word	0
	.word	96
	.word	0
	.word	0
	.word	3
	.word	304
	.word	48
	.word	0
	.word	144
	.word	0
	.word	0
	.word	3
	.even
__ZL15finishHimFrames:
	.word	304
	.word	48
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	304
	.word	48
	.word	0
	.word	48
	.word	0
	.word	0
	.word	3
