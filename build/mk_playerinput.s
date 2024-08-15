#NO_APP
	.text
	.even
	.globl	__Z15playerinputInitP7Fighter
__Z15playerinputInitP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 304(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 308(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 312(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 316(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 320(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 324(%a0),%a0
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
	move.l 324(%a0),%a2
	move.l 320(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.l 316(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.l 312(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.l 308(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.l 304(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.w 272(%a0),%d1
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
	jeq .L45
	moveq #5,%d1
	cmp.l %d0,%d1
	jcc .L53
.L23:
	moveq #7,%d0
	cmp.l 20(%a0),%d0
	jeq .L54
.L47:
	moveq #1,%d0
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L28:
	move.l 304(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L45
	move.l 308(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L45
	move.l 312(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jne .L45
	move.l 316(%a1),%a2
	move.w (%a2),%a2
	cmp.l 12(%a0),%a2
	jne .L45
	move.l 320(%a1),%a2
	move.w (%a2),%a2
	cmp.l 16(%a0),%a2
	jeq .L23
.L45:
	moveq #0,%d0
.L55:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L53:
	add.l %d0,%d0
	move.w .L29(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L29:
	.word .L23-.L29
	.word .L24-.L29
	.word .L25-.L29
	.word .L26-.L29
	.word .L27-.L29
	.word .L28-.L29
.L27:
	move.l 304(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L45
	move.l 308(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L45
	move.l 312(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jne .L45
	move.l 316(%a1),%a2
	move.w (%a2),%a2
	cmp.l 12(%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L55
.L26:
	move.l 304(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L45
	move.l 308(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L45
	move.l 312(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L55
.L25:
	move.l 304(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L45
	move.l 308(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L55
.L24:
	move.l 304(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L55
.L54:
	tst.l 202(%a1)
	seq %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	and.l JAGPAD_B,%d0
	jeq .L47
	moveq #1,%d0
	and.l JAGPAD_8,%d0
	eor.w #1,%d0
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
	move.l 324(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L58
	clr.w (%a3)
	clr.w 2(%a3)
.L58:
	move.l 320(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L59
	clr.w (%a3)
	clr.w 2(%a3)
.L59:
	move.l 316(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L60
	clr.w (%a3)
	clr.w 2(%a3)
.L60:
	move.l 312(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L61
	clr.w (%a3)
	clr.w 2(%a3)
.L61:
	move.l 308(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L62
	clr.w (%a3)
	clr.w 2(%a3)
.L62:
	move.l 304(%a2),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L63
	clr.w (%a2)
	clr.w 2(%a2)
.L63:
	move.l 324(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L64
	clr.w (%a2)
	clr.w 2(%a2)
.L64:
	move.l 320(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L65
	clr.w (%a2)
	clr.w 2(%a2)
.L65:
	move.l 316(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L66
	clr.w (%a2)
	clr.w 2(%a2)
.L66:
	move.l 312(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L67
	clr.w (%a2)
	clr.w 2(%a2)
.L67:
	move.l 308(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L68
	clr.w (%a2)
	clr.w 2(%a2)
.L68:
	move.l 304(%a1),%a1
	move.w 2(%a1),%a2
	lea (30,%a2),%a2
	cmp.l %a0,%a2
	jge .L57
	clr.w (%a1)
	clr.w 2(%a1)
.L57:
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
	move.l 304(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 308(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 312(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 316(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 320(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 324(%a1),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 304(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 308(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 312(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 316(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 320(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 324(%a0),%a0
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
	jeq .L77
	cmp.l JAGPAD_DOWN.l,%d0
	jeq .L78
	cmp.l JAGPAD_LEFT.l,%d0
	jeq .L88
	cmp.l JAGPAD_RIGHT.l,%d0
	jeq .L89
	cmp.l JAGPAD_C.l,%d0
	jeq .L81
	cmp.l JAGPAD_7.l,%d0
	jeq .L82
	cmp.l JAGPAD_B.l,%d0
	jeq .L84
	cmp.l JAGPAD_8.l,%d0
	jeq .L84
	cmp.l JAGPAD_A.l,%d0
	jeq .L85
	cmp.l JAGPAD_9.l,%d0
	jeq .L90
	moveq #0,%d0
	unlk %fp
	rts
.L78:
	moveq #4,%d0
	unlk %fp
	rts
.L77:
	moveq #3,%d0
	unlk %fp
	rts
.L89:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	addq.l #2,%d0
	unlk %fp
	rts
.L88:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,%d0
	unlk %fp
	rts
.L81:
	moveq #6,%d0
	unlk %fp
	rts
.L84:
	moveq #7,%d0
	unlk %fp
	rts
.L82:
	moveq #5,%d0
	unlk %fp
	rts
.L85:
	moveq #9,%d0
	unlk %fp
	rts
.L90:
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
