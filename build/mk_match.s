#NO_APP
	.text
	.even
	.globl	__Z9matchInitv
__Z9matchInitv:
	link.w %fp,#0
	clr.l _round
	clr.l _matchState
	clr.l _matchTicks
	clr.b _fightZoomed
	clr.l _fightScale
	unlk %fp
	rts
	.even
	.globl	__Z11matchUpdateP12SoundHandlerP7FighterS2_
__Z11matchUpdateP12SoundHandlerP7FighterS2_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l _matchState,%d0
	jne .L3
	move.l _matchTicks,%a0
	cmp.w #0,%a0
	jeq .L11
	lea (119,%a0),%a0
	move.w raptor_ticks,%a1
	cmp.l %a0,%a1
	jle .L2
	moveq #1,%d0
	move.l %d0,_matchState
.L2:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L3:
	moveq #1,%d1
	cmp.l %d0,%d1
	jne .L2
	move.l _fightScale,%d0
	jeq .L12
.L6:
	tst.b _fightZoomed
	jne .L7
	moveq #59,%d1
	add.l _matchTicks,%d1
	move.w raptor_ticks,%a0
	cmp.l %d1,%a0
	jle .L2
	moveq #32,%d1
	cmp.l %d0,%d1
	jlt .L8
	move.l sprite,%a0
	move.l %d0,9304(%a0)
	move.l %d0,9308(%a0)
	subq.w #8,9224(%a0)
	subq.w #4,9228(%a0)
	addq.l #4,%d0
	move.l %d0,_fightScale
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L11:
	move.l 12(%fp),%a0
	clr.b 154(%a0)
	move.l 16(%fp),%a0
	clr.b 154(%a0)
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
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L12:
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
	moveq #1,%d0
	move.l %d0,9300(%a0)
	move.l _fightScale,%d0
	move.l %d0,9304(%a0)
	move.l %d0,9308(%a0)
	lea (28,%sp),%sp
	jra .L6
.L7:
	pea 1.w
	pea 1.w
	pea 2.w
	pea __ZL16fightFlashFrames
	pea __ZL13fightAnimator
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb,%a2
	jsr (%a2)
	moveq #59,%d0
	add.l _matchTicks,%d0
	move.w raptor_ticks,%a0
	lea (20,%sp),%sp
	cmp.l %d0,%a0
	jle .L2
	clr.l __ZL13fightAnimator+16
	pea 1.w
	pea 1.w
	pea 1.w
	pea __ZL15fightIdleFrames
	pea __ZL13fightAnimator
	jsr (%a2)
	move.l _fightScale,%d0
	lea (20,%sp),%sp
	move.l sprite,%a0
	jle .L9
	move.l %d0,9304(%a0)
	move.l %d0,9308(%a0)
	addq.w #8,9224(%a0)
	addq.w #4,9228(%a0)
	subq.l #4,%d0
	move.l %d0,_fightScale
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L8:
	move.l 8(%fp),-(%sp)
	jsr __Z8sfxFightP12SoundHandler
	move.b #1,_fightZoomed
	move.w raptor_ticks,%a0
	move.l %a0,_matchTicks
	moveq #32,%d0
	move.l %d0,_fightScale
	addq.l #4,%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L9:
	moveq #-1,%d1
	move.l %d1,9220(%a0)
	move.l 12(%fp),%a0
	move.b #1,154(%a0)
	move.l 16(%fp),%a0
	move.b #1,154(%a0)
	moveq #2,%d0
	move.l %d0,_matchState
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.globl	_fightScale
	.bss
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
