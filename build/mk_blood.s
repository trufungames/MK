#NO_APP
	.text
	.even
	.globl	__Z9bloodInitv
__Z9bloodInitv:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z11bloodUpdateP12SoundHandler
__Z11bloodUpdateP12SoundHandler:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z10bloodSprayiii
__Z10bloodSprayiii:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z9bloodGlobiii
__Z9bloodGlobiii:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z9bloodDropiii
__Z9bloodDropiii:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z9bloodPoolii
__Z9bloodPoolii:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z11bloodSquirtii
__Z11bloodSquirtii:
	link.w %fp,#0
	unlk %fp
	rts
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
