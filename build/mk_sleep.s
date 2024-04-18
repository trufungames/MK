#NO_APP
	.text
	.even
	.globl	__Z9sleepInitv
__Z9sleepInitv:
	link.w %fp,#0
	clr.b _isSleeping
	clr.l _lastTick
	clr.l _totalSleepTicks
	unlk %fp
	rts
	.even
	.globl	__Z10sleepCheckv
__Z10sleepCheckv:
	link.w %fp,#0
	tst.b _isSleeping
	jeq .L4
	move.w raptor_ticks,%a0
	move.l _lastTick,%d0
	add.l _totalSleepTicks,%d0
	cmp.l %a0,%d0
	jgt .L5
	clr.b _isSleeping
	clr.b %d0
	unlk %fp
	rts
.L5:
	moveq #1,%d0
	unlk %fp
	rts
.L4:
	clr.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z8sleepAddi
__Z8sleepAddi:
	link.w %fp,#0
	move.b #1,_isSleeping
	move.w raptor_ticks,%a0
	move.l %a0,_lastTick
	move.l 8(%fp),_totalSleepTicks
	unlk %fp
	rts
	.globl	_totalSleepTicks
	.bss
	.even
_totalSleepTicks:
	.skip 4
	.globl	_lastTick
	.even
_lastTick:
	.skip 4
	.globl	_isSleeping
_isSleeping:
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
