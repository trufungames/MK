#NO_APP
	.text
	.even
	.globl	__Z15playerinputInitP7Fighter
__Z15playerinputInitP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 372(%a0),%a0
	clr.w (%a0)
	clr.w 2(%a0)
	clr.w 24(%a0)
	clr.w 26(%a0)
	clr.w 48(%a0)
	clr.w 50(%a0)
	clr.w 72(%a0)
	clr.w 74(%a0)
	clr.w 96(%a0)
	clr.w 98(%a0)
	clr.w 120(%a0)
	clr.w 122(%a0)
	moveq #6,%d0
	move.l %d0,_k
	unlk %fp
	rts
	.even
	.globl	__Z15playerinputPushP7Fighteri
__Z15playerinputPushP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%d0
	move.l 372(%a1),%a0
	move.w 96(%a0),120(%a0)
	move.w 98(%a0),122(%a0)
	move.w 72(%a0),96(%a0)
	move.w 74(%a0),98(%a0)
	move.w 48(%a0),72(%a0)
	move.w 50(%a0),74(%a0)
	move.w 24(%a0),48(%a0)
	move.w 26(%a0),50(%a0)
	move.w (%a0),24(%a0)
	move.w 2(%a0),26(%a0)
	clr.l _k
	move.w 326(%a1),%d1
	cmp.l JAGPAD_UP.l,%d0
	jeq .L6
	cmp.l JAGPAD_DOWN.l,%d0
	jeq .L7
	move.w %d1,%a1
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
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L7:
	moveq #4,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L6:
	moveq #3,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L18:
	moveq #1,%d0
	cmp.l %a1,%d0
	sne %d0
	ext.w %d0
	addq.w #2,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L17:
	moveq #1,%d0
	cmp.l %a1,%d0
	sne %d0
	ext.w %d0
	moveq #1,%d1
	sub.w %d0,%d1
	move.w %d1,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L10:
	moveq #6,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L13:
	moveq #7,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L11:
	moveq #5,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L14:
	moveq #9,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
.L19:
	moveq #8,%d0
	move.w %d0,(%a0)
	move.w raptor_ticks,2(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z19playerinputContainsP12StateMachineP7FighterPii
__Z19playerinputContainsP12StateMachineP7FighterPii:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 12(%fp),%a4
	move.l 16(%fp),%a3
	move.l 20(%fp),%d1
	jeq .L28
	clr.l _k
	tst.l %d1
	jle .L23
	move.l 372(%a4),%a0
	move.w (%a0),%a1
	cmp.l (%a3),%a1
	jne .L28
	lea (24,%a0),%a0
	lea (4,%a3),%a1
	moveq #1,%d0
.L24:
	move.l %d0,_k
	cmp.l %d0,%d1
	jeq .L23
	move.w (%a0),%a2
	addq.l #1,%d0
	lea (24,%a0),%a0
	cmp.l (%a1)+,%a2
	jeq .L24
.L28:
	moveq #0,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L23:
	moveq #7,%d0
	cmp.l 20(%a3),%d0
	jeq .L31
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L31:
	move.l %a4,-(%sp)
	move.l 8(%fp),-(%sp)
	jsr __Z17fighterIsBlockingP12StateMachineP7Fighter
	and.l #255,%d0
	addq.l #8,%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z17playerinputUpdateP7FighterS0_
__Z17playerinputUpdateP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	clr.l _k
	move.w raptor_ticks,%d0
	move.w %d0,%a1
	move.l 8(%fp),%a0
	move.l 372(%a0),%a2
	move.l 12(%fp),%a0
	move.l 372(%a0),%a0
	move.w 2(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L34
	clr.w (%a2)
	move.w %d0,2(%a2)
.L34:
	move.w 2(%a0),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L35
	clr.w (%a0)
	move.w %d0,2(%a0)
.L35:
	move.w 26(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L36
	clr.w 24(%a2)
	move.w %d0,26(%a2)
.L36:
	move.w 26(%a0),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L37
	clr.w 24(%a0)
	move.w %d0,26(%a0)
.L37:
	move.w 50(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L38
	clr.w 48(%a2)
	move.w %d0,50(%a2)
.L38:
	move.w 50(%a0),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L39
	clr.w 48(%a0)
	move.w %d0,50(%a0)
.L39:
	move.w 74(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L40
	clr.w 72(%a2)
	move.w %d0,74(%a2)
.L40:
	move.w 74(%a0),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L41
	clr.w 72(%a0)
	move.w %d0,74(%a0)
.L41:
	move.w 98(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L42
	clr.w 96(%a2)
	move.w %d0,98(%a2)
.L42:
	move.w 98(%a0),%a3
	lea (30,%a3),%a3
	cmp.l %a1,%a3
	jge .L43
	clr.w 96(%a0)
	move.w %d0,98(%a0)
.L43:
	move.w 122(%a2),%a3
	lea (30,%a3),%a3
	cmp.l %a3,%a1
	jle .L44
	clr.w 120(%a2)
	move.w %d0,122(%a2)
.L44:
	move.w 122(%a0),%a2
	lea (30,%a2),%a2
	cmp.l %a1,%a2
	jge .L45
	clr.w 120(%a0)
	move.w %d0,122(%a0)
.L45:
	moveq #6,%d0
	move.l %d0,_k
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.even
	.globl	__Z16playerinputResetP7FighterS0_
__Z16playerinputResetP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 372(%a0),%a1
	move.l 12(%fp),%a0
	move.l 372(%a0),%a0
	clr.w (%a1)
	clr.w 2(%a1)
	clr.w (%a0)
	clr.w 2(%a0)
	clr.w 24(%a1)
	clr.w 26(%a1)
	clr.w 24(%a0)
	clr.w 26(%a0)
	clr.w 48(%a1)
	clr.w 50(%a1)
	clr.w 48(%a0)
	clr.w 50(%a0)
	clr.w 72(%a1)
	clr.w 74(%a1)
	clr.w 72(%a0)
	clr.w 74(%a0)
	clr.w 96(%a1)
	clr.w 98(%a1)
	clr.w 96(%a0)
	clr.w 98(%a0)
	clr.w 120(%a1)
	clr.w 122(%a1)
	clr.w 120(%a0)
	clr.w 122(%a0)
	moveq #6,%d0
	move.l %d0,_k
	unlk %fp
	rts
	.even
	.globl	__Z19playerinputGetValueii
__Z19playerinputGetValueii:
	link.w %fp,#0
	move.l 8(%fp),%d0
	cmp.l JAGPAD_UP.l,%d0
	jeq .L53
	cmp.l JAGPAD_DOWN.l,%d0
	jeq .L54
	cmp.l JAGPAD_LEFT.l,%d0
	jeq .L64
	cmp.l JAGPAD_RIGHT.l,%d0
	jeq .L65
	cmp.l JAGPAD_C.l,%d0
	jeq .L57
	cmp.l JAGPAD_7.l,%d0
	jeq .L58
	cmp.l JAGPAD_B.l,%d0
	jeq .L60
	cmp.l JAGPAD_8.l,%d0
	jeq .L60
	cmp.l JAGPAD_A.l,%d0
	jeq .L61
	cmp.l JAGPAD_9.l,%d0
	jeq .L66
	moveq #0,%d0
	unlk %fp
	rts
.L54:
	moveq #4,%d0
	unlk %fp
	rts
.L53:
	moveq #3,%d0
	unlk %fp
	rts
.L65:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	addq.l #2,%d0
	unlk %fp
	rts
.L64:
	moveq #1,%d0
	cmp.l 12(%fp),%d0
	sne %d0
	ext.w %d0
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,%d0
	unlk %fp
	rts
.L57:
	moveq #6,%d0
	unlk %fp
	rts
.L60:
	moveq #7,%d0
	unlk %fp
	rts
.L58:
	moveq #5,%d0
	unlk %fp
	rts
.L61:
	moveq #9,%d0
	unlk %fp
	rts
.L66:
	moveq #8,%d0
	unlk %fp
	rts
	.globl	_k
	.bss
	.even
_k:
	.skip 4
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
