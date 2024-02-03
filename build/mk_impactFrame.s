#NO_APP
	.text
	.even
	.globl	__Z16impactFrameResetP7Fighter
__Z16impactFrameResetP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	tst.b 276(%a0)
	jne .L5
	move.w 250(%a0),%d0
	add.w #30,%d0
	move.w %d0,6152(%a1)
	move.w 254(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,6156(%a1)
	unlk %fp
	rts
.L5:
	move.w 250(%a0),%d0
	add.w #30,%d0
	move.w %d0,5768(%a1)
	move.w 254(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,5772(%a1)
	unlk %fp
	rts
	.even
	.globl	__Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
__Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	move.l 8(%fp),%a2
	move.l 16(%a2),%a2
	cmp.l (%a1),%a2
	jeq .L13
	move.l sprite,%a1
	tst.b 276(%a0)
	jne .L14
	move.w 250(%a0),%d0
	add.w #30,%d0
	move.w %d0,6152(%a1)
	move.w 254(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,6156(%a1)
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L13:
	move.l 270(%a0),%d1
	moveq #1,%d0
	move.l sprite,%a3
	cmp.l %d1,%d0
	jeq .L15
	move.l 186(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a2
	move.l 4(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a0
	move.w 8(%a0),%d0
	add.w 30(%a0),%d0
	moveq #48,%d2
	add.l 4(%a1),%d2
	muls.w %d2,%d1
	add.w %d1,%d0
	move.w %d0,8(%a2)
	move.w 12(%a0),%a0
	add.w 10(%a1),%a0
	move.w %a0,12(%a2)
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L14:
	move.w 250(%a0),%d0
	add.w #30,%d0
	move.w %d0,5768(%a1)
	move.w 254(%a0),%a0
	lea (200,%a0),%a0
	move.w %a0,5772(%a1)
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L15:
	move.l 186(%a0),%d1
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
	move.w 8(%a0),%d0
	add.w 6(%a1),%d0
	move.w %d0,8(%a2)
	move.w 12(%a0),%a0
	add.w 10(%a1),%a0
	move.w %a0,12(%a2)
	movem.l (%sp)+,#3076
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
