#NO_APP
	.text
	.even
	.globl	__Z15playerinputInitP7Fighter
__Z15playerinputInitP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 372(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 376(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 380(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 384(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 388(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 392(%a0),%a0
	clr.w (%a0)
	clr.w 2(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z15playerinputPushP7Fighteri
__Z15playerinputPushP7Fighteri:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%d0
	move.l 392(%a0),%a2
	move.l 388(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.l 384(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.l 380(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.l 376(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.l 372(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.w 326(%a0),%d1
	cmp.l JAGPAD_UP.l,%d0
	jeq .L6
	cmp.l JAGPAD_DOWN.l,%d0
	jeq .L7
	move.w %d1,%a0
	cmp.l JAGPAD_LEFT.l,%d0
	jeq .L17
	cmp.l JAGPAD_RIGHT.l,%d0
	jeq .L18
	cmp.l JAGPAD_C.l,%d0
	jeq .L10
	cmp.l JAGPAD_7.l,%d0
	jeq .L11
	cmp.l JAGPAD_B.l,%d0
	jeq .L13
	cmp.l JAGPAD_8.l,%d0
	jeq .L13
	cmp.l JAGPAD_A.l,%d0
	jeq .L14
	cmp.l JAGPAD_9.l,%d0
	jeq .L19
	clr.w %d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L7:
	moveq #4,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L6:
	moveq #3,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L18:
	moveq #1,%d0
	cmp.l %a0,%d0
	sne %d0
	ext.w %d0
	addq.w #2,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L17:
	moveq #1,%d0
	cmp.l %a0,%d0
	sne %d0
	ext.w %d0
	moveq #1,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L10:
	moveq #6,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L13:
	moveq #7,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L11:
	moveq #5,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L14:
	moveq #9,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L19:
	moveq #8,%d0
	move.w %d0,(%a1)
	move.w raptor_ticks,2(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z19playerinputContainsP7FighterPii
__Z19playerinputContainsP7FighterPii:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d0
	jeq .L39
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L25
	move.b #5,%d1
	cmp.l %d0,%d1
	jeq .L26
	move.b #3,%d1
	cmp.l %d0,%d1
	jeq .L44
.L23:
	moveq #7,%d0
	cmp.l 20(%a0),%d0
	jeq .L45
	moveq #1,%d0
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L26:
	move.l 372(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L39
	move.l 376(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L39
	move.l 380(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jne .L39
	move.l 384(%a1),%a2
	move.w (%a2),%a2
	cmp.l 12(%a0),%a2
	jne .L39
	move.l 388(%a1),%a2
	move.w (%a2),%a2
	cmp.l 16(%a0),%a2
	jeq .L23
.L39:
	moveq #0,%d0
.L46:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L25:
	move.l 372(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L39
	move.l 376(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L39
	move.l 380(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jne .L39
	move.l 384(%a1),%a2
	move.w (%a2),%a2
	cmp.l 12(%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L46
.L44:
	move.l 372(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L39
	move.l 376(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L39
	move.l 380(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L46
.L45:
	moveq #0,%d0
	move.b 106(%a1),%d0
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17playerinputUpdateP7FighterS0_
__Z17playerinputUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a0
	move.l 392(%a2),%a3
	move.w 2(%a3),%a4
	lea (60,%a4),%a4
	cmp.l %a0,%a4
	jge .L49
	clr.w (%a3)
	clr.w 2(%a3)
.L49:
	move.l 388(%a2),%a3
	move.w 2(%a3),%a4
	lea (60,%a4),%a4
	cmp.l %a0,%a4
	jge .L50
	clr.w (%a3)
	clr.w 2(%a3)
.L50:
	move.l 384(%a2),%a3
	move.w 2(%a3),%a4
	lea (60,%a4),%a4
	cmp.l %a0,%a4
	jge .L51
	clr.w (%a3)
	clr.w 2(%a3)
.L51:
	move.l 380(%a2),%a3
	move.w 2(%a3),%a4
	lea (60,%a4),%a4
	cmp.l %a0,%a4
	jge .L52
	clr.w (%a3)
	clr.w 2(%a3)
.L52:
	move.l 376(%a2),%a3
	move.w 2(%a3),%a4
	lea (60,%a4),%a4
	cmp.l %a0,%a4
	jge .L53
	clr.w (%a3)
	clr.w 2(%a3)
.L53:
	move.l 372(%a2),%a2
	move.w 2(%a2),%a3
	lea (60,%a3),%a3
	cmp.l %a0,%a3
	jge .L54
	clr.w (%a2)
	clr.w 2(%a2)
.L54:
	move.l 392(%a1),%a2
	move.w 2(%a2),%a3
	lea (60,%a3),%a3
	cmp.l %a0,%a3
	jge .L55
	clr.w (%a2)
	clr.w 2(%a2)
.L55:
	move.l 388(%a1),%a2
	move.w 2(%a2),%a3
	lea (60,%a3),%a3
	cmp.l %a0,%a3
	jge .L56
	clr.w (%a2)
	clr.w 2(%a2)
.L56:
	move.l 384(%a1),%a2
	move.w 2(%a2),%a3
	lea (60,%a3),%a3
	cmp.l %a0,%a3
	jge .L57
	clr.w (%a2)
	clr.w 2(%a2)
.L57:
	move.l 380(%a1),%a2
	move.w 2(%a2),%a3
	lea (60,%a3),%a3
	cmp.l %a0,%a3
	jge .L58
	clr.w (%a2)
	clr.w 2(%a2)
.L58:
	move.l 376(%a1),%a2
	move.w 2(%a2),%a3
	lea (60,%a3),%a3
	cmp.l %a0,%a3
	jge .L59
	clr.w (%a2)
	clr.w 2(%a2)
.L59:
	move.l 372(%a1),%a1
	move.w 2(%a1),%a2
	lea (60,%a2),%a2
	cmp.l %a0,%a2
	jge .L48
	clr.w (%a1)
	clr.w 2(%a1)
.L48:
	movem.l (%sp)+,#7168
	unlk %fp
	rts
	.even
	.globl	__Z16playerinputResetP7FighterS0_
__Z16playerinputResetP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 372(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 376(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 380(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 384(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 388(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 392(%a1),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 372(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 376(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 380(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 384(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 388(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 392(%a0),%a0
	clr.w (%a0)
	clr.w 2(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z19playerinputGetValueii
__Z19playerinputGetValueii:
	link.w %fp,#0
	move.l 8(%fp),%d0
	cmp.l JAGPAD_UP.l,%d0
	jeq .L68
	cmp.l JAGPAD_DOWN.l,%d0
	jeq .L69
	cmp.l JAGPAD_LEFT.l,%d0
	jeq .L79
	cmp.l JAGPAD_RIGHT.l,%d0
	jeq .L80
	cmp.l JAGPAD_C.l,%d0
	jeq .L72
	cmp.l JAGPAD_7.l,%d0
	jeq .L73
	cmp.l JAGPAD_B.l,%d0
	jeq .L75
	cmp.l JAGPAD_8.l,%d0
	jeq .L75
	cmp.l JAGPAD_A.l,%d0
	jeq .L76
	cmp.l JAGPAD_9.l,%d0
	jeq .L81
	moveq #0,%d0
	unlk %fp
	rts
.L69:
	moveq #4,%d0
	unlk %fp
	rts
.L68:
	moveq #3,%d0
	unlk %fp
	rts
.L80:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	addq.l #2,%d0
	unlk %fp
	rts
.L79:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,%d0
	unlk %fp
	rts
.L72:
	moveq #6,%d0
	unlk %fp
	rts
.L75:
	moveq #7,%d0
	unlk %fp
	rts
.L73:
	moveq #5,%d0
	unlk %fp
	rts
.L76:
	moveq #9,%d0
	unlk %fp
	rts
.L81:
	moveq #8,%d0
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
