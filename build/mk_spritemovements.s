#NO_APP
	.text
	.even
	.globl	__Z6moveUpv
__Z6moveUpv:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z8moveDownv
__Z8moveDownv:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z13bgScrollRightf
__Z13bgScrollRightf:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z12bgScrollLeftf
__Z12bgScrollLeftf:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z8bgUpdateP7FighterS0_
__Z8bgUpdateP7FighterS0_:
	link.w %fp,#0
	move.w raptor_ticks,%a0
	cmp.l _LastTicks.l,%a0
	jle .L5
	tst.b _IsScrollingUp
	jeq .L7
	move.l _bgYOffset,%d0
	addq.l #2,%d0
	move.l %d0,_bgYOffset
	moveq #2,%d1
	move.l %d1,_bgYInc
	move.b #15,%d1
	cmp.l %d0,%d1
	jge .L8
	clr.l _bgYOffset
	clr.l _bgYInc
	clr.b _IsScrollingUp
.L8:
	move.l %a0,_LastTicks
.L5:
	unlk %fp
	rts
.L7:
	tst.b _IsScrollingDown
	jeq .L9
	move.l _bgYOffset,%d0
	subq.l #2,%d0
	move.l %d0,_bgYOffset
	moveq #-2,%d1
	move.l %d1,_bgYInc
	move.b #-15,%d1
	cmp.l %d0,%d1
	jle .L8
	clr.l _bgYInc
	clr.l _bgYOffset
	clr.b _IsScrollingDown
	move.b #1,_IsShaking
	clr.l _shakeCount
	moveq #1,%d0
	move.l %d0,_shakeDirection
	move.l %a0,_LastTicks
	jra .L5
.L9:
	tst.b _IsShaking
	jeq .L8
	move.l _shakeDirection,%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	move.l %d1,_bgYInc
	neg.l %d0
	move.l %d0,_shakeDirection
	move.l _shakeCount,%d0
	addq.l #1,%d0
	move.l %d0,_shakeCount
	moveq #6,%d1
	cmp.l %d0,%d1
	jge .L8
	clr.b _IsShaking
	tst.b _scrollUpAfterShake
	jeq .L8
	clr.l _bgYOffset
	clr.l _bgYInc
	move.b #1,_IsScrollingUp
	clr.b _IsScrollingDown
	move.l %a0,_LastTicks
	jra .L5
	.even
	.globl	__Z10bgScrollUpv
__Z10bgScrollUpv:
	link.w %fp,#0
	tst.b _IsScrollingUp
	jne .L12
	clr.l _bgYOffset
	clr.l _bgYInc
	move.b #1,_IsScrollingUp
	clr.b _IsScrollingDown
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L12:
	unlk %fp
	rts
	.even
	.globl	__Z12bgScrollDownv
__Z12bgScrollDownv:
	link.w %fp,#0
	tst.b _IsScrollingDown
	jne .L16
	clr.l _bgYOffset
	clr.l _bgYInc
	clr.b _IsScrollingUp
	move.b #1,_IsScrollingDown
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L16:
	unlk %fp
	rts
	.even
	.globl	__Z7bgShakeb
__Z7bgShakeb:
	link.w %fp,#0
	move.l 8(%fp),%d0
	tst.b _IsShaking
	jne .L20
	move.b %d0,_scrollUpAfterShake
	clr.l _bgYInc
	clr.b _IsScrollingUp
	clr.b _IsScrollingDown
	move.b #1,_IsShaking
	clr.l _shakeCount
	moveq #1,%d0
	move.l %d0,_shakeDirection
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L20:
	unlk %fp
	rts
	.globl	_scrollUpAfterShake
	.bss
_scrollUpAfterShake:
	.skip 1
	.globl	_shakeDirection
	.data
	.even
_shakeDirection:
	.long	1
	.globl	_shakeCount
	.bss
	.even
_shakeCount:
	.skip 4
	.globl	_bgYInc
	.even
_bgYInc:
	.skip 4
	.globl	_bgYStart
	.even
_bgYStart:
	.skip 4
	.globl	_bgYOffset
	.even
_bgYOffset:
	.skip 4
	.globl	_ShakeTicks
	.data
	.even
_ShakeTicks:
	.long	40
	.globl	_LastTicks
	.bss
	.even
_LastTicks:
	.skip 4
	.globl	_IsShaking
_IsShaking:
	.skip 1
	.globl	_IsScrollingDown
_IsScrollingDown:
	.skip 1
	.globl	_IsScrollingUp
_IsScrollingUp:
	.skip 1
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
