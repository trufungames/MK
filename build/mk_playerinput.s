#NO_APP
	.text
	.even
	.globl	__Z15playerinputInitP7Fighter
__Z15playerinputInitP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 294(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 298(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 302(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 306(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 310(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 314(%a0),%a0
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
	move.l 314(%a0),%a2
	move.l 310(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.l 306(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.l 302(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.l 298(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.l 294(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.w 262(%a0),%d1
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
	move.l %d2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d0
	jeq .L62
	moveq #14,%d1
	cmp.l %d0,%d1
	jcc .L73
.L23:
	moveq #7,%d0
	cmp.l 20(%a0),%d0
	jeq .L74
.L64:
	moveq #1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L28:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L62
	move.l 298(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L62
	move.l 302(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jne .L62
	move.l 306(%a1),%a2
	move.w (%a2),%a2
	cmp.l 12(%a0),%a2
	jne .L62
	move.l 310(%a1),%a2
	move.w (%a2),%a2
	cmp.l 16(%a0),%a2
	jeq .L23
.L62:
	moveq #0,%d0
.L75:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L73:
	add.l %d0,%d0
	move.w .L30(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L30:
	.word .L23-.L30
	.word .L24-.L30
	.word .L25-.L30
	.word .L26-.L30
	.word .L27-.L30
	.word .L28-.L30
	.word .L23-.L30
	.word .L23-.L30
	.word .L23-.L30
	.word .L23-.L30
	.word .L23-.L30
	.word .L23-.L30
	.word .L23-.L30
	.word .L23-.L30
	.word .L29-.L30
.L27:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L62
	move.l 298(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L62
	move.l 302(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jne .L62
	move.l 306(%a1),%a2
	move.w (%a2),%a2
	cmp.l 12(%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L75
.L26:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L62
	move.l 298(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L62
	move.l 302(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L75
.L25:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L62
	move.l 298(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L75
.L24:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jeq .L23
	moveq #0,%d0
	jra .L75
.L29:
	move.l (%a0),%d0
	moveq #9,%d1
	cmp.l %d0,%d1
	jeq .L31
	cmp.l 4(%a0),%d1
	jeq .L31
	cmp.l 8(%a0),%d1
	jeq .L31
	cmp.l 12(%a0),%d1
	jeq .L31
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L33
.L76:
	cmp.l 4(%a0),%d1
	jeq .L33
	cmp.l 8(%a0),%d1
	jeq .L33
	cmp.l 12(%a0),%d1
	jeq .L33
.L34:
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L35
	cmp.l 4(%a0),%d1
	jeq .L35
	cmp.l 8(%a0),%d1
	jeq .L35
	cmp.l 12(%a0),%d1
	jeq .L35
.L36:
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L37
	cmp.l 4(%a0),%d1
	jeq .L37
	cmp.l 8(%a0),%d1
	jeq .L37
	cmp.l 12(%a0),%d1
	jeq .L37
.L38:
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L40
	cmp.l 4(%a0),%d1
	jeq .L40
	cmp.l 8(%a0),%d1
	jeq .L40
	cmp.l 12(%a0),%d1
	jne .L23
.L40:
	move.l JAGPAD_DOWN,%d0
	and.l 192(%a1),%d0
	jeq .L62
	moveq #7,%d0
	cmp.l 20(%a0),%d0
	jne .L64
	jra .L74
.L31:
	move.l JAGPAD_A,%d1
	and.l 192(%a1),%d1
	jeq .L62
	moveq #6,%d1
	cmp.l %d0,%d1
	jne .L76
	jra .L33
.L74:
	move.l 192(%a1),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L64
	and.l JAGPAD_8,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L33:
	move.l JAGPAD_C,%d1
	and.l 192(%a1),%d1
	jne .L34
	moveq #0,%d0
	jra .L75
.L35:
	move.l 192(%a1),%d1
	move.l %d1,%d2
	and.l JAGPAD_B,%d2
	jne .L36
	and.l JAGPAD_8,%d1
	jne .L36
	moveq #0,%d0
	jra .L75
.L37:
	move.w 262(%a1),%d1
	cmp.w #1,%d1
	jeq .L77
	cmp.w #-1,%d1
	jne .L38
	move.l JAGPAD_RIGHT,%d1
	and.l 192(%a1),%d1
	jne .L38
	moveq #0,%d0
	jra .L75
.L77:
	move.l JAGPAD_LEFT,%d1
	and.l 192(%a1),%d1
	jne .L38
	moveq #0,%d0
	jra .L75
	.even
	.globl	__Z17playerinputUpdateP7FighterS0_
__Z17playerinputUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a0
	move.l 314(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L80
	clr.w (%a3)
	clr.w 2(%a3)
.L80:
	move.l 310(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L81
	clr.w (%a3)
	clr.w 2(%a3)
.L81:
	move.l 306(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L82
	clr.w (%a3)
	clr.w 2(%a3)
.L82:
	move.l 302(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L83
	clr.w (%a3)
	clr.w 2(%a3)
.L83:
	move.l 298(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L84
	clr.w (%a3)
	clr.w 2(%a3)
.L84:
	move.l 294(%a2),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L85
	clr.w (%a2)
	clr.w 2(%a2)
.L85:
	move.l 314(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L86
	clr.w (%a2)
	clr.w 2(%a2)
.L86:
	move.l 310(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L87
	clr.w (%a2)
	clr.w 2(%a2)
.L87:
	move.l 306(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L88
	clr.w (%a2)
	clr.w 2(%a2)
.L88:
	move.l 302(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L89
	clr.w (%a2)
	clr.w 2(%a2)
.L89:
	move.l 298(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L90
	clr.w (%a2)
	clr.w 2(%a2)
.L90:
	move.l 294(%a1),%a1
	move.w 2(%a1),%a2
	lea (30,%a2),%a2
	cmp.l %a0,%a2
	jge .L79
	clr.w (%a1)
	clr.w 2(%a1)
.L79:
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
	move.l 294(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 298(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 302(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 306(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 310(%a1),%a2
	clr.w (%a2)
	clr.w 2(%a2)
	move.l 314(%a1),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 294(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 298(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 302(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 306(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 310(%a0),%a1
	clr.w (%a1)
	clr.w 2(%a1)
	move.l 314(%a0),%a0
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
	jeq .L99
	cmp.l JAGPAD_DOWN.l,%d0
	jeq .L100
	cmp.l JAGPAD_LEFT.l,%d0
	jeq .L110
	cmp.l JAGPAD_RIGHT.l,%d0
	jeq .L111
	cmp.l JAGPAD_C.l,%d0
	jeq .L103
	cmp.l JAGPAD_7.l,%d0
	jeq .L104
	cmp.l JAGPAD_B.l,%d0
	jeq .L106
	cmp.l JAGPAD_8.l,%d0
	jeq .L106
	cmp.l JAGPAD_A.l,%d0
	jeq .L107
	cmp.l JAGPAD_9.l,%d0
	jeq .L112
	moveq #0,%d0
	unlk %fp
	rts
.L100:
	moveq #4,%d0
	unlk %fp
	rts
.L99:
	moveq #3,%d0
	unlk %fp
	rts
.L111:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	addq.l #2,%d0
	unlk %fp
	rts
.L110:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,%d0
	unlk %fp
	rts
.L103:
	moveq #6,%d0
	unlk %fp
	rts
.L106:
	moveq #7,%d0
	unlk %fp
	rts
.L104:
	moveq #5,%d0
	unlk %fp
	rts
.L107:
	moveq #9,%d0
	unlk %fp
	rts
.L112:
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
