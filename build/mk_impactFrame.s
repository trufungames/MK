#NO_APP
	.text
	.even
	.globl	__Z16impactFrameResetP7Fighter
__Z16impactFrameResetP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	tst.b 270(%a0)
	jne .L5
	move.w 242(%a0),%d0
	add.w #30,%d0
	move.w %d0,13832(%a1)
	move.w 244(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,13836(%a1)
	unlk %fp
	rts
.L5:
	move.w 242(%a0),%d0
	add.w #30,%d0
	move.w %d0,13640(%a1)
	move.w 244(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,13644(%a1)
	unlk %fp
	rts
	.even
	.globl	__Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
__Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.l 8(%fp),%a2
	move.w 14(%a2),%d0
	cmp.w (%a0),%d0
	jeq .L8
	cmp.w 8(%a0),%d0
	jeq .L8
	tst.b 6(%a0)
	jeq .L9
.L8:
	move.w 266(%a1),%d1
	move.l sprite,%a3
	cmp.w #1,%d1
	jeq .L14
	move.l 190(%a1),%d0
	move.l %d0,%a2
	add.l %d0,%a2
	add.l %a2,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a2
	move.l 2(%a1),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a1
	move.w 8(%a1),%a3
	add.w 30(%a1),%a3
	move.w 2(%a0),%d0
	add.w #48,%d0
	muls.w %d1,%d0
	add.w %d0,%a3
	move.w %a3,8(%a2)
	move.w 4(%a0),%a0
	add.w 12(%a1),%a0
	move.w %a0,12(%a2)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L14:
	move.l 190(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a3,%d1.l),%a2
	move.l 2(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a1
	move.w 2(%a0),%d0
	add.w 8(%a1),%d0
	move.w %d0,8(%a2)
	move.w 4(%a0),%a0
	add.w 12(%a1),%a0
	move.w %a0,12(%a2)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L9:
	move.l sprite,%a0
	tst.b 270(%a1)
	jne .L15
	move.w 242(%a1),%d0
	add.w #30,%d0
	move.w %d0,13832(%a0)
	move.w 244(%a1),%a1
	lea (200,%a1),%a1
	move.w %a1,13836(%a0)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L15:
	move.w 242(%a1),%d0
	add.w #30,%d0
	move.w %d0,13640(%a0)
	move.w 244(%a1),%a1
	lea (200,%a1),%a1
	move.w %a1,13644(%a0)
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
