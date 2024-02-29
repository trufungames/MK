#NO_APP
	.text
	.even
	.globl	__Z11showMessagePc
__Z11showMessagePc:
	link.w %fp,#0
	move.l 8(%fp),_js_r_textbuffer
	unlk %fp
	jra _jsfDebugMessage
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
