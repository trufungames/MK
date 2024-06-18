#NO_APP
	.text
	.even
	.globl	__Z15playerinputInitP7Fighter
__Z15playerinputInitP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 364(%a0),%a0
	clr.l (%a0)
	clr.l 4(%a0)
	clr.l 48(%a0)
	clr.l 52(%a0)
	clr.l 96(%a0)
	clr.l 100(%a0)
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 192(%a0)
	clr.l 196(%a0)
	clr.l 240(%a0)
	clr.l 244(%a0)
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
	move.l 364(%a1),%a0
	move.l 192(%a0),240(%a0)
	move.l 196(%a0),244(%a0)
	move.l 144(%a0),192(%a0)
	move.l 148(%a0),196(%a0)
	move.l 96(%a0),144(%a0)
	move.l 100(%a0),148(%a0)
	move.l 48(%a0),96(%a0)
	move.l 52(%a0),100(%a0)
	move.l (%a0),48(%a0)
	move.l 4(%a0),52(%a0)
	clr.l _k
	move.w 318(%a1),%d1
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
	sub.l %a1,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L7:
	move.w #4,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L6:
	move.w #3,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L18:
	moveq #1,%d0
	cmp.l %a1,%d0
	sne %d0
	ext.w %d0
	move.w %d0,%a1
	addq.l #2,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L17:
	moveq #1,%d0
	cmp.l %a1,%d0
	sne %d0
	ext.w %d0
	move.w #1,%a1
	sub.w %d0,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L10:
	move.w #6,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L13:
	move.w #7,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L11:
	move.w #5,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L14:
	move.w #9,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
.L19:
	move.w #8,%a1
	move.l %a1,(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,4(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z19playerinputContainsP7FighterPii
__Z19playerinputContainsP7FighterPii:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	jeq .L28
	clr.l _k
	tst.l %d2
	jle .L23
	move.l 364(%a3),%a0
	move.l (%a0),%d0
	cmp.l (%a2),%d0
	jne .L28
	lea (48,%a0),%a0
	lea (4,%a2),%a1
	moveq #1,%d0
.L24:
	move.l %d0,_k
	cmp.l %d0,%d2
	jeq .L23
	move.l (%a0),%d1
	addq.l #1,%d0
	lea (48,%a0),%a0
	cmp.l (%a1)+,%d1
	jeq .L24
.L28:
	moveq #0,%d0
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L23:
	moveq #7,%d0
	cmp.l 20(%a2),%d0
	jeq .L31
	moveq #1,%d0
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L31:
	moveq #0,%d0
	move.b 90(%a3),%d0
	movem.l (%sp)+,#3076
	unlk %fp
	rts
	.even
	.globl	__Z17playerinputUpdateP7FighterS0_
__Z17playerinputUpdateP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	clr.l _k
	move.w raptor_ticks,%a1
	move.l 8(%fp),%a0
	move.l 364(%a0),%a2
	move.l 12(%fp),%a0
	move.l 364(%a0),%a0
	moveq #30,%d0
	add.l 4(%a2),%d0
	cmp.l %d0,%a1
	jle .L34
	clr.l (%a2)
	clr.l 4(%a2)
.L34:
	moveq #30,%d0
	add.l 4(%a0),%d0
	cmp.l %a1,%d0
	jge .L35
	clr.l (%a0)
	clr.l 4(%a0)
.L35:
	moveq #30,%d0
	add.l 52(%a2),%d0
	cmp.l %a1,%d0
	jge .L36
	clr.l 48(%a2)
	clr.l 52(%a2)
.L36:
	moveq #30,%d0
	add.l 52(%a0),%d0
	cmp.l %a1,%d0
	jge .L37
	clr.l 48(%a0)
	clr.l 52(%a0)
.L37:
	moveq #30,%d0
	add.l 100(%a2),%d0
	cmp.l %a1,%d0
	jge .L38
	clr.l 96(%a2)
	clr.l 100(%a2)
.L38:
	moveq #30,%d0
	add.l 100(%a0),%d0
	cmp.l %a1,%d0
	jge .L39
	clr.l 96(%a0)
	clr.l 100(%a0)
.L39:
	moveq #30,%d0
	add.l 148(%a2),%d0
	cmp.l %a1,%d0
	jge .L40
	clr.l 144(%a2)
	clr.l 148(%a2)
.L40:
	moveq #30,%d0
	add.l 148(%a0),%d0
	cmp.l %a1,%d0
	jge .L41
	clr.l 144(%a0)
	clr.l 148(%a0)
.L41:
	moveq #30,%d0
	add.l 196(%a2),%d0
	cmp.l %a1,%d0
	jge .L42
	clr.l 192(%a2)
	clr.l 196(%a2)
.L42:
	moveq #30,%d0
	add.l 196(%a0),%d0
	cmp.l %a1,%d0
	jge .L43
	clr.l 192(%a0)
	clr.l 196(%a0)
.L43:
	moveq #30,%d0
	add.l 244(%a2),%d0
	cmp.l %d0,%a1
	jle .L44
	clr.l 240(%a2)
	clr.l 244(%a2)
.L44:
	moveq #30,%d0
	add.l 244(%a0),%d0
	cmp.l %d0,%a1
	jle .L45
	clr.l 240(%a0)
	clr.l 244(%a0)
.L45:
	moveq #6,%d0
	move.l %d0,_k
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z16playerinputResetP7FighterS0_
__Z16playerinputResetP7FighterS0_:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 364(%a0),%a1
	move.l 12(%fp),%a0
	move.l 364(%a0),%a0
	clr.l (%a1)
	clr.l 4(%a1)
	clr.l (%a0)
	clr.l 4(%a0)
	clr.l 48(%a1)
	clr.l 52(%a1)
	clr.l 48(%a0)
	clr.l 52(%a0)
	clr.l 96(%a1)
	clr.l 100(%a1)
	clr.l 96(%a0)
	clr.l 100(%a0)
	clr.l 144(%a1)
	clr.l 148(%a1)
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 192(%a1)
	clr.l 196(%a1)
	clr.l 192(%a0)
	clr.l 196(%a0)
	clr.l 240(%a1)
	clr.l 244(%a1)
	clr.l 240(%a0)
	clr.l 244(%a0)
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
