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
	move.l %a0,_cloudTicks1
	move.l %a0,_cloudTicks2
	move.l %a0,_cloudTicks3
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
	move.w raptor_ticks,%a2
	cmp.l _LastTicks.l,%a2
	jle .L6
	move.l _cloudTicks1,%d0
	addq.l #1,%d0
	cmp.l %a2,%d0
	jge .L8
	move.l sprite,%a3
	move.l #___floatsisf,%d4
	move.w 3080(%a3),%a0
	move.l %a0,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #___addsf3,%d3
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #8,%sp
	move.l #___fixsfsi,%d2
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.w %d0,3080(%a3)
	move.w 3272(%a3),%a0
	move.l %a0,(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.w %d0,3272(%a3)
	move.l %a2,_cloudTicks1
.L8:
	move.l _cloudTicks2,%d0
	addq.l #3,%d0
	cmp.l %a2,%d0
	jge .L9
	move.l sprite,%a3
	move.l #___floatsisf,%d4
	move.w 3464(%a3),%a0
	move.l %a0,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #___addsf3,%d3
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #8,%sp
	move.l #___fixsfsi,%d2
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.w %d0,3464(%a3)
	move.w 3656(%a3),%a0
	move.l %a0,(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.w %d0,3656(%a3)
	move.w 3848(%a3),%a0
	move.l %a0,(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.w %d0,3848(%a3)
	move.l %a2,_cloudTicks2
.L9:
	move.l _cloudTicks3,%d0
	addq.l #7,%d0
	cmp.l %a2,%d0
	jge .L10
	move.l sprite,%a3
	move.l #___floatsisf,%d4
	move.w 4040(%a3),%a0
	move.l %a0,-(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #___addsf3,%d3
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #8,%sp
	move.l #___fixsfsi,%d2
	move.l %d0,-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.w %d0,4040(%a3)
	move.w 4232(%a3),%a0
	move.l %a0,(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	move.w %d0,4232(%a3)
	move.w 4424(%a3),%a0
	move.l %a0,(%sp)
	move.l %d4,%a0
	jsr (%a0)
	move.l #0x3f800000,(%sp)
	move.l %d0,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.l %d0,(%sp)
	move.l %d2,%a0
	jsr (%a0)
	addq.l #4,%sp
	move.w %d0,4424(%a3)
	move.l %a2,_cloudTicks3
.L10:
	tst.b _IsScrollingUp
	jeq .L11
	move.l _bgYOffset,%d0
	addq.l #2,%d0
	move.l %d0,_bgYOffset
	moveq #2,%d1
	move.l %d1,_bgYInc
	move.b #15,%d1
	cmp.l %d0,%d1
	jge .L16
	clr.l _bgYOffset
	clr.l _bgYInc
	clr.b _IsScrollingUp
.L13:
	tst.b _IsScrollingDown
	jne .L16
	tst.b _IsShaking
	jeq .L17
.L16:
	move.l sprite,%a0
	move.l _bgYInc,%d0
	add.w %d0,4620(%a0)
	add.l %d0,298(%a5)
	add.l %d0,298(%a4)
.L17:
	move.l %a2,_LastTicks
.L6:
	movem.l -28(%fp),#15388
	unlk %fp
	rts
.L11:
	tst.b _IsScrollingDown
	jeq .L14
	move.l _bgYOffset,%d0
	subq.l #2,%d0
	move.l %d0,_bgYOffset
	moveq #-2,%d1
	move.l %d1,_bgYInc
	move.b #-15,%d1
	cmp.l %d0,%d1
	jle .L13
	clr.l _bgYInc
	clr.l _bgYOffset
	clr.b _IsScrollingDown
	move.b #1,_IsShaking
	clr.l _shakeCount
	moveq #1,%d0
	move.l %d0,_shakeDirection
	jra .L13
.L14:
	tst.b _IsShaking
	jeq .L13
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
	jge .L13
	clr.b _IsShaking
	tst.b _scrollUpAfterShake
	jeq .L13
	clr.l _bgYOffset
	clr.l _bgYInc
	move.b #1,_IsScrollingUp
	clr.b _IsScrollingDown
	move.l sprite,%a0
	move.l _bgYInc,%d0
	add.w %d0,4620(%a0)
	add.l %d0,298(%a5)
	add.l %d0,298(%a4)
	jra .L17
	.even
	.globl	__Z10bgScrollUpv
__Z10bgScrollUpv:
	link.w %fp,#0
	tst.b _IsScrollingUp
	jne .L20
	clr.l _bgYOffset
	clr.l _bgYInc
	move.b #1,_IsScrollingUp
	clr.b _IsScrollingDown
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L20:
	unlk %fp
	rts
	.even
	.globl	__Z12bgScrollDownv
__Z12bgScrollDownv:
	link.w %fp,#0
	tst.b _IsScrollingDown
	jne .L24
	clr.l _bgYOffset
	clr.l _bgYInc
	clr.b _IsScrollingUp
	move.b #1,_IsScrollingDown
	move.w raptor_ticks,%a0
	move.l %a0,_LastTicks
.L24:
	unlk %fp
	rts
	.even
	.globl	__Z7bgShakeb
__Z7bgShakeb:
	link.w %fp,#0
	move.l 8(%fp),%d0
	tst.b _IsShaking
	jne .L28
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
.L28:
	unlk %fp
	rts
	.globl	_cloudTicks3
	.bss
	.even
_cloudTicks3:
	.skip 4
	.globl	_cloudTicks2
	.even
_cloudTicks2:
	.skip 4
	.globl	_cloudTicks1
	.even
_cloudTicks1:
	.skip 4
	.globl	_scrollUpAfterShake
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
