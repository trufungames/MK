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
	clr.b _IsScrollingUp
	clr.b _IsScrollingDown
	clr.b _IsShaking
	unlk %fp
	rts
	.even
	.globl	__Z13bgScrollRightf
__Z13bgScrollRightf:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%d2
	move.l sprite,%a2
	lea ___floatsisf,%a3
	move.w 5000(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.l %d0,%a4
	move.l #0xc42d0000,(%sp)
	move.l %d0,-(%sp)
	jsr ___gesf2
	addq.l #8,%sp
	tst.l %d0
	jlt .L4
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr ___addsf3
	addq.l #8,%sp
	move.l %d0,%d2
	lea ___subsf3,%a5
	move.l %d0,-(%sp)
	move.l %a4,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	lea ___fixsfsi,%a4
	move.l %d0,-(%sp)
	jsr (%a4)
	move.w %d0,5000(%a2)
	move.w 8840(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,8840(%a2)
	move.w 5192(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,5192(%a2)
	move.w 9032(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,9032(%a2)
	move.w 5384(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,5384(%a2)
	move.w 9224(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,9224(%a2)
	move.w 5576(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,5576(%a2)
	move.w 9416(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,9416(%a2)
	move.w 5768(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,5768(%a2)
	move.w 9608(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,9608(%a2)
	move.w 5960(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,5960(%a2)
	move.w 9800(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,9800(%a2)
	move.w 6152(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,6152(%a2)
	move.w 9992(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,9992(%a2)
	move.w 6344(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,6344(%a2)
	move.w 10184(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	move.w %d0,10184(%a2)
	move.w 6536(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d2,(%sp)
	move.l %d0,-(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.w %d0,6536(%a2)
.L4:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
	.even
	.globl	__Z12bgScrollLeftf
__Z12bgScrollLeftf:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%d2
	move.l sprite,%a2
	lea ___floatsisf,%a3
	move.w 5000(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.l %d0,%a5
	move.l #0xc0000000,(%sp)
	move.l %d0,-(%sp)
	jsr ___lesf2
	addq.l #8,%sp
	tst.l %d0
	jgt .L10
	lea ___addsf3,%a4
	move.l %d2,-(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l %d0,%d2
	move.l %a5,-(%sp)
	move.l %d0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	lea ___fixsfsi,%a5
	move.l %d0,-(%sp)
	jsr (%a5)
	move.w %d0,5000(%a2)
	move.w 8840(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,8840(%a2)
	move.w 5192(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,5192(%a2)
	move.w 9032(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9032(%a2)
	move.w 5384(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,5384(%a2)
	move.w 9224(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9224(%a2)
	move.w 5576(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,5576(%a2)
	move.w 9416(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9416(%a2)
	move.w 5768(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,5768(%a2)
	move.w 9608(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9608(%a2)
	move.w 5960(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,5960(%a2)
	move.w 9800(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9800(%a2)
	move.w 6152(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,6152(%a2)
	move.w 9992(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,9992(%a2)
	move.w 6344(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,6344(%a2)
	move.w 10184(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	move.w %d0,10184(%a2)
	move.w 6536(%a2),%a0
	move.l %a0,(%sp)
	jsr (%a3)
	move.l %d0,(%sp)
	move.l %d2,-(%sp)
	jsr (%a4)
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr (%a5)
	addq.l #4,%sp
	move.w %d0,6536(%a2)
.L10:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
	.even
	.globl	__Z8bgUpdateP7FighterS0_
__Z8bgUpdateP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a0
	cmp.l _LastTicks.l,%a0
	jle .L16
	tst.b _IsScrollingUp
	jeq .L18
	move.l _bgYOffset,%d0
	addq.l #2,%d0
	move.l %d0,_bgYOffset
	moveq #2,%d1
	move.l %d1,_bgYInc
	move.b #15,%d1
	cmp.l %d0,%d1
	jge .L23
	clr.l _bgYOffset
	clr.l _bgYInc
	clr.b _IsScrollingUp
.L20:
	tst.b _IsScrollingDown
	jne .L23
	tst.b _IsShaking
	jeq .L24
.L23:
	move.l sprite,%a3
	move.l _bgYInc,%d0
	add.w %d0,5004(%a3)
	add.l %d0,198(%a2)
	add.l %d0,198(%a1)
.L24:
	move.l %a0,_LastTicks
.L16:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L18:
	tst.b _IsScrollingDown
	jeq .L21
	move.l _bgYOffset,%d0
	subq.l #2,%d0
	move.l %d0,_bgYOffset
	moveq #-2,%d1
	move.l %d1,_bgYInc
	move.b #-15,%d1
	cmp.l %d0,%d1
	jle .L20
	clr.l _bgYInc
	clr.l _bgYOffset
	clr.b _IsScrollingDown
	move.b #1,_IsShaking
	clr.l _shakeCount
	moveq #1,%d0
	move.l %d0,_shakeDirection
	jra .L20
.L21:
	tst.b _IsShaking
	jeq .L20
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
	jge .L20
	clr.b _IsShaking
	tst.b _scrollUpAfterShake
	jeq .L20
	clr.l _bgYOffset
	clr.l _bgYInc
	move.b #1,_IsScrollingUp
	clr.b _IsScrollingDown
	move.l sprite,%a3
	move.l _bgYInc,%d0
	add.w %d0,5004(%a3)
	add.l %d0,198(%a2)
	add.l %d0,198(%a1)
	jra .L24
	.even
	.globl	__Z10bgScrollUpv
__Z10bgScrollUpv:
	link.w %fp,#0
	tst.b _IsScrollingUp
	jne .L27
	clr.l _bgYOffset
	clr.l _bgYInc
	move.b #1,_IsScrollingUp
	clr.b _IsScrollingDown
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L27:
	unlk %fp
	rts
	.even
	.globl	__Z12bgScrollDownv
__Z12bgScrollDownv:
	link.w %fp,#0
	tst.b _IsScrollingDown
	jne .L31
	clr.l _bgYOffset
	clr.l _bgYInc
	clr.b _IsScrollingUp
	move.b #1,_IsScrollingDown
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L31:
	unlk %fp
	rts
	.even
	.globl	__Z7bgShakeb
__Z7bgShakeb:
	link.w %fp,#0
	move.l 8(%fp),%d0
	tst.b _IsShaking
	jne .L35
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
.L35:
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
