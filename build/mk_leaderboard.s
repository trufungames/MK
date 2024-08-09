#NO_APP
	.text
	.even
	.globl	__Z15leaderboardInitv
__Z15leaderboardInitv:
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
