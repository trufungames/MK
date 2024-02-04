#NO_APP
	.text
	.even
	.globl	__Z10matchResetv
__Z10matchResetv:
	link.w %fp,#0
	clr.l _matchState
	clr.l _matchTicks
	clr.b _fightZoomed
	clr.l _fightScale
	clr.l _winner
	clr.l _loser
	clr.b _matchComplete
	unlk %fp
	rts
	.even
	.globl	__Z9matchInitv
__Z9matchInitv:
	link.w %fp,#0
	clr.l _round
	clr.l _fighter1Wins
	clr.l _fighter2Wins
	clr.l _matchState
	clr.l _matchTicks
	clr.b _fightZoomed
	clr.l _fightScale
	clr.l _winner
	clr.l _loser
	clr.b _matchComplete
	unlk %fp
	rts
	.even
	.globl	__Z11matchUpdateP12SoundHandlerP7FighterS2_
__Z11matchUpdateP12SoundHandlerP7FighterS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l _matchState,%d0
	jne .L4
	move.l _matchTicks,%a0
	cmp.w #0,%a0
	jeq .L53
	lea (119,%a0),%a0
	move.w raptor_ticks,%a1
	cmp.l %a0,%a1
	jle .L50
	moveq #1,%d0
	move.l %d0,_matchState
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L4:
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L54
	moveq #2,%d1
	cmp.l %d0,%d1
	jeq .L55
	moveq #3,%d1
	cmp.l %d0,%d1
	jeq .L56
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L57
	moveq #5,%d1
	cmp.l %d0,%d1
	jne .L50
	move.l _matchTicks,%d0
	add.l #179,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L50
	tst.b 161(%a2)
	jne .L58
	tst.b 161(%a3)
	jeq .L50
	move.b #1,166(%a3)
	moveq #2,%d0
	move.l %d0,_matchState
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L13:
	tst.b 162(%a3)
	jeq .L59
	move.l (%a2),%d0
	move.l %d0,_winner
	move.l (%a3),_loser
	move.l _fighter1Wins,%d1
	addq.l #1,%d1
	move.l %d1,_fighter1Wins
	moveq #2,%d2
	cmp.l %d1,%d2
	jlt .L14
	move.b #1,167(%a2)
.L14:
	tst.l %d0
	jne .L60
	tst.b 161(%a2)
	jne .L17
	tst.b 161(%a3)
	jne .L17
.L50:
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L54:
	move.l _fightScale,%d0
	jeq .L61
.L8:
	tst.b _fightZoomed
	jne .L9
	moveq #59,%d1
	add.l _matchTicks,%d1
	move.w raptor_ticks,%a0
	cmp.l %d1,%a0
	jle .L50
	moveq #32,%d1
	cmp.l %d0,%d1
	jlt .L10
	move.l sprite,%a0
	move.l %d0,9304(%a0)
	move.l %d0,9308(%a0)
	subq.w #8,9224(%a0)
	subq.w #4,9228(%a0)
	addq.l #4,%d0
	move.l %d0,_fightScale
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L53:
	clr.b 168(%a2)
	clr.b 168(%a3)
	move.l #13316128,-(%sp)
	move.l #0x3f000000,-(%sp)
	move.l _round,%d0
	addq.l #6,%d0
	lsl.l #5,%d0
	move.l %d0,-(%sp)
	pea 160.w
	pea 32.w
	pea 80.w
	pea 48.w
	jsr __Z8setFramejiiiifj
	move.l sprite,%a0
	move.w #130,9224(%a0)
	move.w #98,9228(%a0)
	moveq #-1,%d0
	move.l %d0,9300(%a0)
	moveq #1,%d1
	move.l %d1,9220(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	lea (28,%sp),%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L56:
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (60,%a1),%a2
	cmp.l %a0,%a2
	jge .L50
	moveq #11,%d2
	cmp.l _winner.l,%d2
	jcs .L20
	move.l _winner,%d0
	add.l %d0,%d0
	move.w .L32(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L32:
	.word .L20-.L32
	.word .L21-.L32
	.word .L22-.L32
	.word .L23-.L32
	.word .L24-.L32
	.word .L25-.L32
	.word .L26-.L32
	.word .L27-.L32
	.word .L28-.L32
	.word .L29-.L32
	.word .L30-.L32
	.word .L31-.L32
.L55:
	tst.b 162(%a2)
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
	move.b #1,167(%a3)
	jra .L14
.L57:
	moveq #7,%d2
	cmp.l _loser.l,%d2
	jeq .L62
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15finishHimFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
.L35:
	move.l sprite,%a1
	moveq #1,%d0
	move.l %d0,9220(%a1)
	move.w raptor_ticks,%a0
	move.b #59,%d0
	add.l _matchTicks,%d0
	cmp.l %d0,%a0
	jle .L50
	moveq #5,%d1
	move.l %d1,_matchState
	moveq #-1,%d2
	move.l %d2,9220(%a1)
	move.l %a0,_matchTicks
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L61:
	move.l #13316128,-(%sp)
	move.l #0x3f000000,-(%sp)
	pea 192.w
	clr.l -(%sp)
	pea 48.w
	pea 160.w
	pea 48.w
	jsr __Z8setFramejiiiifj
	move.l sprite,%a0
	move.w #160,9224(%a0)
	move.w #98,9228(%a0)
	moveq #1,%d2
	move.l %d2,9300(%a0)
	move.l _fightScale,%d0
	move.l %d0,9304(%a0)
	move.l %d0,9308(%a0)
	lea (28,%sp),%sp
	jra .L8
.L17:
	moveq #4,%d0
	move.l %d0,_matchState
	move.l sprite,%a0
	move.w #8,9224(%a0)
	move.w #64,9228(%a0)
	moveq #-1,%d1
	move.l %d1,9300(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	move.b #7,%d0
	cmp.l _loser.l,%d0
	jeq .L63
	move.l 8(%fp),-(%sp)
	jsr __Z12sfxFinishHimP12SoundHandler
	addq.l #4,%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L59:
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
.L62:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15finishHerFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	jra .L35
.L31:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15shangWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
.L20:
	move.l sprite,%a2
	moveq #1,%d0
	move.l %d0,9220(%a2)
	lea (360,%a1),%a1
	cmp.l %a1,%a0
	jle .L50
	tst.b _matchComplete
	jne .L50
	move.b #1,_matchComplete
	move.l _round,%d0
	moveq #2,%d1
	cmp.l %d0,%d1
	jlt .L46
	moveq #1,%d2
	cmp.l _fighter1Wins.l,%d2
	jge .L64
.L46:
	clr.b %d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L64:
	cmp.l _fighter2Wins.l,%d2
	jlt .L46
	addq.l #1,%d0
	move.l %d0,_round
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L21:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14cageWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L23:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16raidenWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L22:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14kanoWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L27:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL15sonyaWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L26:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL17subzeroWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L25:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL18scorpionWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L24:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14kangWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L30:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL14goroWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L29:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16kasumiWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L28:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL17reptileWinsFrames
	pea __ZL13fightAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	move.w raptor_ticks,%a0
	move.l _matchTicks,%a1
	lea (20,%sp),%sp
	jra .L20
.L9:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16fightFlashFrames
	pea __ZL13fightAnimator
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb,%a4
	jsr (%a4)
	moveq #59,%d0
	add.l _matchTicks,%d0
	move.w raptor_ticks,%a0
	lea (20,%sp),%sp
	cmp.l %d0,%a0
	jle .L50
	clr.l __ZL13fightAnimator+16
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
	move.l %d0,9304(%a0)
	move.l %d0,9308(%a0)
	addq.w #8,9224(%a0)
	addq.w #4,9228(%a0)
	subq.l #4,%d0
	move.l %d0,_fightScale
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L60:
	moveq #3,%d0
	move.l %d0,_matchState
	move.l sprite,%a0
	move.w #64,9224(%a0)
	move.w #48,9228(%a0)
	moveq #-1,%d1
	move.l %d1,9300(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L63:
	move.l 8(%fp),-(%sp)
	jsr __Z12sfxFinishHerP12SoundHandler
	addq.l #4,%sp
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L58:
	move.b #1,166(%a2)
	moveq #2,%d2
	move.l %d2,_matchState
	moveq #1,%d0
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L11:
	moveq #-1,%d1
	move.l %d1,9220(%a0)
	move.b #1,168(%a2)
	move.b #1,168(%a3)
	moveq #2,%d2
	move.l %d2,_matchState
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
	.globl	__Z17matchIsFinalRoundv
__Z17matchIsFinalRoundv:
	link.w %fp,#0
	tst.l _fighter1Wins
	jle .L71
	moveq #1,%d0
	unlk %fp
	rts
.L71:
	tst.l _fighter2Wins
	sgt %d0
	neg.b %d0
	unlk %fp
	rts
	.globl	_fighter2Wins
	.bss
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
	.long	48
	.long	1056964608
	.long	13316128
	.long	0
	.long	0
	.skip 4
	.even
__ZL16fightFlashFrames:
	.long	160
	.long	48
	.long	0
	.long	192
	.long	0
	.long	0
	.long	3
	.long	160
	.long	48
	.long	0
	.long	240
	.long	0
	.long	0
	.long	3
	.even
__ZL15fightIdleFrames:
	.long	160
	.long	48
	.long	0
	.long	192
	.long	0
	.long	0
	.long	3
	.even
__ZL14cageWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	0
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	0
	.long	0
	.long	0
	.long	3
	.even
__ZL14kanoWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	32
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	32
	.long	0
	.long	0
	.long	3
	.even
__ZL16raidenWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	64
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	64
	.long	0
	.long	0
	.long	3
	.even
__ZL14kangWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	96
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	96
	.long	0
	.long	0
	.long	3
	.even
__ZL18scorpionWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	128
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	128
	.long	0
	.long	0
	.long	3
	.even
__ZL17subzeroWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	160
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	160
	.long	0
	.long	0
	.long	3
	.even
__ZL15sonyaWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	192
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	192
	.long	0
	.long	0
	.long	3
	.even
__ZL17reptileWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	224
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	224
	.long	0
	.long	0
	.long	3
	.even
__ZL16kasumiWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	256
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	256
	.long	0
	.long	0
	.long	3
	.even
__ZL14goroWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	288
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	288
	.long	0
	.long	0
	.long	3
	.even
__ZL15shangWinsFrames:
	.long	192
	.long	32
	.long	304
	.long	304
	.long	0
	.long	0
	.long	3
	.long	192
	.long	32
	.long	496
	.long	304
	.long	0
	.long	0
	.long	3
	.even
__ZL15finishHerFrames:
	.long	304
	.long	48
	.long	0
	.long	96
	.long	0
	.long	0
	.long	3
	.long	304
	.long	48
	.long	0
	.long	144
	.long	0
	.long	0
	.long	3
	.even
__ZL15finishHimFrames:
	.long	304
	.long	48
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	304
	.long	48
	.long	0
	.long	48
	.long	0
	.long	0
	.long	3
