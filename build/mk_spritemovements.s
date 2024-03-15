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
	.globl	__Z6bgInitv
__Z6bgInitv:
	link.w %fp,#0
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
	clr.b _IsScrollingUp
	clr.b _IsScrollingDown
	clr.b _IsShaking
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
	movem.l #14396,-(%sp)
	move.l 8(%fp),%a5
	move.l 12(%fp),%a4
	move.w raptor_ticks,%a3
	cmp.l _LastTicks.l,%a3
	jle .L6
	move.l sprite,%a2
	move.l #___floatsisf,%d4
	move.w 3080(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #___addsf3,%d3
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #8,%sp
	move.l #___fixsfsi,%d2
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.w %d0,3080(%a2)
	move.w 3272(%a2),%a0
	move.l %a0,(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #0x40000000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.w %d0,3272(%a2)
	tst.b _IsScrollingUp
	jeq .L8
	move.l _bgYOffset,%d0
	addq.l #2,%d0
	move.l %d0,_bgYOffset
	moveq #2,%d1
	move.l %d1,_bgYInc
	move.b #15,%d1
	cmp.l %d0,%d1
	jge .L13
	clr.l _bgYOffset
	clr.l _bgYInc
	clr.b _IsScrollingUp
.L10:
	tst.b _IsScrollingDown
	jne .L13
	tst.b _IsShaking
	jeq .L14
.L13:
	move.l _bgYInc,%d0
	add.w %d0,3468(%a2)
	add.l %d0,270(%a5)
	add.l %d0,270(%a4)
.L14:
	move.l %a3,_LastTicks
.L6:
	movem.l -28(%fp),#15388
	unlk %fp
	rts
.L8:
	tst.b _IsScrollingDown
	jeq .L11
	move.l _bgYOffset,%d0
	subq.l #2,%d0
	move.l %d0,_bgYOffset
	moveq #-2,%d1
	move.l %d1,_bgYInc
	move.b #-15,%d1
	cmp.l %d0,%d1
	jle .L10
	clr.l _bgYInc
	clr.l _bgYOffset
	clr.b _IsScrollingDown
	move.b #1,_IsShaking
	clr.l _shakeCount
	moveq #1,%d0
	move.l %d0,_shakeDirection
	jra .L10
.L11:
	tst.b _IsShaking
	jeq .L10
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
	jge .L10
	clr.b _IsShaking
	tst.b _scrollUpAfterShake
	jeq .L10
	clr.l _bgYOffset
	clr.l _bgYInc
	move.b #1,_IsScrollingUp
	clr.b _IsScrollingDown
	move.l _bgYInc,%d0
	add.w %d0,3468(%a2)
	add.l %d0,270(%a5)
	add.l %d0,270(%a4)
	jra .L14
	.even
	.globl	__Z10bgScrollUpv
__Z10bgScrollUpv:
	link.w %fp,#0
	tst.b _IsScrollingUp
	jne .L17
	clr.l _bgYOffset
	clr.l _bgYInc
	move.b #1,_IsScrollingUp
	clr.b _IsScrollingDown
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L17:
	unlk %fp
	rts
	.even
	.globl	__Z12bgScrollDownv
__Z12bgScrollDownv:
	link.w %fp,#0
	tst.b _IsScrollingDown
	jne .L21
	clr.l _bgYOffset
	clr.l _bgYInc
	clr.b _IsScrollingUp
	move.b #1,_IsScrollingDown
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L21:
	unlk %fp
	rts
	.even
	.globl	__Z7bgShakeb
__Z7bgShakeb:
	link.w %fp,#0
	move.l 8(%fp),%d0
	tst.b _IsShaking
	jne .L25
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
.L25:
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
