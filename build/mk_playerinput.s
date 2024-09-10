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
	.globl	__Z19playerinputContainsP7FighterPii
__Z19playerinputContainsP7FighterPii:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d0
	jeq .L43
	moveq #14,%d1
	cmp.l %d0,%d1
	jcc .L54
.L4:
	moveq #7,%d0
	cmp.l 20(%a0),%d0
	jeq .L55
.L45:
	moveq #1,%d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L9:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L43
	move.l 298(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L43
	move.l 302(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jne .L43
	move.l 306(%a1),%a2
	move.w (%a2),%a2
	cmp.l 12(%a0),%a2
	jne .L43
	move.l 310(%a1),%a2
	move.w (%a2),%a2
	cmp.l 16(%a0),%a2
	jeq .L4
.L43:
	moveq #0,%d0
.L56:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L54:
	add.l %d0,%d0
	move.w .L11(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L11:
	.word .L4-.L11
	.word .L5-.L11
	.word .L6-.L11
	.word .L7-.L11
	.word .L8-.L11
	.word .L9-.L11
	.word .L4-.L11
	.word .L4-.L11
	.word .L4-.L11
	.word .L4-.L11
	.word .L4-.L11
	.word .L4-.L11
	.word .L4-.L11
	.word .L4-.L11
	.word .L10-.L11
.L8:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L43
	move.l 298(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L43
	move.l 302(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jne .L43
	move.l 306(%a1),%a2
	move.w (%a2),%a2
	cmp.l 12(%a0),%a2
	jeq .L4
	moveq #0,%d0
	jra .L56
.L7:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L43
	move.l 298(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jne .L43
	move.l 302(%a1),%a2
	move.w (%a2),%a2
	cmp.l 8(%a0),%a2
	jeq .L4
	moveq #0,%d0
	jra .L56
.L6:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jne .L43
	move.l 298(%a1),%a2
	move.w (%a2),%a2
	cmp.l 4(%a0),%a2
	jeq .L4
	moveq #0,%d0
	jra .L56
.L5:
	move.l 294(%a1),%a2
	move.w (%a2),%a2
	cmp.l (%a0),%a2
	jeq .L4
	moveq #0,%d0
	jra .L56
.L10:
	move.l (%a0),%d0
	moveq #9,%d1
	cmp.l %d0,%d1
	jeq .L12
	cmp.l 4(%a0),%d1
	jeq .L12
	cmp.l 8(%a0),%d1
	jeq .L12
	cmp.l 12(%a0),%d1
	jeq .L12
	moveq #6,%d1
	cmp.l %d0,%d1
	jeq .L14
.L57:
	cmp.l 4(%a0),%d1
	jeq .L14
	cmp.l 8(%a0),%d1
	jeq .L14
	cmp.l 12(%a0),%d1
	jeq .L14
.L15:
	moveq #7,%d1
	cmp.l %d0,%d1
	jeq .L16
	cmp.l 4(%a0),%d1
	jeq .L16
	cmp.l 8(%a0),%d1
	jeq .L16
	cmp.l 12(%a0),%d1
	jeq .L16
.L17:
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L18
	cmp.l 4(%a0),%d1
	jeq .L18
	cmp.l 8(%a0),%d1
	jeq .L18
	cmp.l 12(%a0),%d1
	jeq .L18
.L19:
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L21
	cmp.l 4(%a0),%d1
	jeq .L21
	cmp.l 8(%a0),%d1
	jeq .L21
	cmp.l 12(%a0),%d1
	jne .L4
.L21:
	move.l JAGPAD_DOWN,%d0
	and.l 192(%a1),%d0
	jeq .L43
	moveq #7,%d0
	cmp.l 20(%a0),%d0
	jne .L45
	jra .L55
.L12:
	move.l JAGPAD_A,%d1
	and.l 192(%a1),%d1
	jeq .L43
	moveq #6,%d1
	cmp.l %d0,%d1
	jne .L57
	jra .L14
.L55:
	move.l 192(%a1),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L45
	and.l JAGPAD_8,%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	neg.l %d0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L14:
	move.l JAGPAD_C,%d1
	and.l 192(%a1),%d1
	jne .L15
	moveq #0,%d0
	jra .L56
.L16:
	move.l 192(%a1),%d1
	move.l %d1,%d2
	and.l JAGPAD_B,%d2
	jne .L17
	and.l JAGPAD_8,%d1
	jne .L17
	moveq #0,%d0
	jra .L56
.L18:
	move.w 262(%a1),%d1
	cmp.w #1,%d1
	jeq .L58
	cmp.w #-1,%d1
	jne .L19
	move.l JAGPAD_RIGHT,%d1
	and.l 192(%a1),%d1
	jne .L19
	moveq #0,%d0
	jra .L56
.L58:
	move.l JAGPAD_LEFT,%d1
	and.l 192(%a1),%d1
	jne .L19
	moveq #0,%d0
	jra .L56
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
	jge .L61
	clr.w (%a3)
	clr.w 2(%a3)
.L61:
	move.l 310(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L62
	clr.w (%a3)
	clr.w 2(%a3)
.L62:
	move.l 306(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L63
	clr.w (%a3)
	clr.w 2(%a3)
.L63:
	move.l 302(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L64
	clr.w (%a3)
	clr.w 2(%a3)
.L64:
	move.l 298(%a2),%a3
	move.w 2(%a3),%a4
	lea (30,%a4),%a4
	cmp.l %a0,%a4
	jge .L65
	clr.w (%a3)
	clr.w 2(%a3)
.L65:
	move.l 294(%a2),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L66
	clr.w (%a2)
	clr.w 2(%a2)
.L66:
	move.l 314(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L67
	clr.w (%a2)
	clr.w 2(%a2)
.L67:
	move.l 310(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L68
	clr.w (%a2)
	clr.w 2(%a2)
.L68:
	move.l 306(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L69
	clr.w (%a2)
	clr.w 2(%a2)
.L69:
	move.l 302(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L70
	clr.w (%a2)
	clr.w 2(%a2)
.L70:
	move.l 298(%a1),%a2
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a0,%a3
	jge .L71
	clr.w (%a2)
	clr.w 2(%a2)
.L71:
	move.l 294(%a1),%a1
	move.w 2(%a1),%a2
	lea (30,%a2),%a2
	cmp.l %a0,%a2
	jge .L60
	clr.w (%a1)
	clr.w 2(%a1)
.L60:
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
	jeq .L80
	cmp.l JAGPAD_DOWN.l,%d0
	jeq .L81
	cmp.l JAGPAD_LEFT.l,%d0
	jeq .L94
	cmp.l JAGPAD_RIGHT.l,%d0
	jeq .L95
	cmp.l JAGPAD_C.l,%d0
	jeq .L84
	cmp.l JAGPAD_7.l,%d0
	jeq .L85
	cmp.l JAGPAD_B.l,%d0
	jeq .L87
	cmp.l JAGPAD_8.l,%d0
	jeq .L87
	cmp.l JAGPAD_A.l,%d0
	jeq .L88
	cmp.l JAGPAD_9.l,%d0
	jeq .L89
	cmp.l JAGPAD_0.l,%d0
	jeq .L90
	cmp.l JAGPAD_HASH.l,%d0
	jeq .L91
	cmp.l JAGPAD_STAR.l,%d0
	jeq .L96
	moveq #0,%d0
	unlk %fp
	rts
.L81:
	moveq #4,%d0
	unlk %fp
	rts
.L80:
	moveq #3,%d0
	unlk %fp
	rts
.L95:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	addq.l #2,%d0
	unlk %fp
	rts
.L94:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,%d0
	unlk %fp
	rts
.L84:
	moveq #6,%d0
	unlk %fp
	rts
.L87:
	moveq #7,%d0
	unlk %fp
	rts
.L85:
	moveq #5,%d0
	unlk %fp
	rts
.L88:
	moveq #9,%d0
	unlk %fp
	rts
.L89:
	moveq #8,%d0
	unlk %fp
	rts
.L90:
	moveq #11,%d0
	unlk %fp
	rts
.L91:
	moveq #10,%d0
	unlk %fp
	rts
.L96:
	moveq #12,%d0
	unlk %fp
	rts
	.even
	.globl	__Z15playerinputPushP7Fighteri
__Z15playerinputPushP7Fighteri:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 314(%a0),%a1
	move.l 310(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.l 306(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.l 302(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.l 298(%a0),%a1
	move.w (%a1),(%a2)
	move.w 2(%a1),2(%a2)
	move.l 294(%a0),%a2
	move.w (%a2),(%a1)
	move.w 2(%a2),2(%a1)
	move.w 262(%a0),%a0
	move.l %a0,-(%sp)
	move.l 12(%fp),-(%sp)
	jsr __Z19playerinputGetValueii
	addq.l #8,%sp
	move.w %d0,(%a2)
	move.w raptor_ticks,2(%a2)
	move.l -4(%fp),%a2
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
