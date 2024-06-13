#NO_APP
	.text
	.even
	.globl	__Z16impactFrameResetP7Fighter
__Z16impactFrameResetP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	tst.b 304(%a0)
	jne .L5
	move.w 280(%a0),%d0
	add.w #30,%d0
	move.w %d0,11912(%a1)
	move.w 282(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,11916(%a1)
	unlk %fp
	rts
.L5:
	move.w 280(%a0),%d0
	add.w #30,%d0
	move.w %d0,11720(%a1)
	move.w 282(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,11724(%a1)
	unlk %fp
	rts
	.even
	.globl	__Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
__Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	move.l 8(%fp),%a2
	move.w (%a1),%d0
	cmp.w 16(%a2),%d0
	jeq .L13
	move.l sprite,%a1
	tst.b 304(%a0)
	jne .L14
	move.w 280(%a0),%d0
	add.w #30,%d0
	move.w %d0,11912(%a1)
	move.w 282(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,11916(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L13:
	move.w 300(%a0),%d1
	move.l sprite,%a3
	cmp.w #1,%d1
	jeq .L15
	move.l 208(%a0),%d0
	move.l %d0,%a2
	add.l %d0,%a2
	add.l %a2,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a2
	move.l 4(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a0
	move.w 8(%a0),%a3
	add.w 30(%a0),%a3
	move.w 2(%a1),%d0
	add.w #48,%d0
	muls.w %d1,%d0
	add.w %d0,%a3
	move.w %a3,8(%a2)
	move.w 4(%a1),%a1
	add.w 12(%a0),%a1
	move.w %a1,12(%a2)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L14:
	move.w 280(%a0),%d0
	add.w #30,%d0
	move.w %d0,11720(%a1)
	move.w 282(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,11724(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L15:
	move.l 208(%a0),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a3,%d1.l),%a2
	move.l 4(%a0),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a0
	move.w 2(%a1),%d0
	add.w 8(%a0),%d0
	move.w %d0,8(%a2)
	move.w 4(%a1),%a1
	add.w 12(%a0),%a1
	move.w %a1,12(%a2)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
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
