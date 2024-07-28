#NO_APP
	.text
	.even
	.globl	__Z15stateMachineAddP12StateMachineiP5State
__Z15stateMachineAddP12StateMachineiP5State:
	link.w %fp,#0
	move.l 12(%fp),%d0
	move.l 16(%fp),%a0
	move.w %d0,(%a0)
	add.l %d0,%d0
	add.l %d0,%d0
	move.l 8(%fp),%a1
	move.l %a0,(%a1,%d0.l)
	unlk %fp
	rts
	.even
	.globl	__Z16stateMachineInitP12StateMachineiP7FighterP14SpriteAnimator
__Z16stateMachineInitP12StateMachineiP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d0
	add.l %d0,%d0
	add.l %d0,%d0
	move.l (%a2,%d0.l),%a0
	move.l %a0,156(%a2)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	clr.b 166(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator
__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	tst.b 167(%a2)
	jeq .L4
	move.w raptor_ticks,%d0
	cmp.w 168(%a2),%d0
	jlt .L3
	clr.b 167(%a2)
.L4:
	tst.b 198(%a3)
	jne .L8
.L6:
	move.l 156(%a2),%a0
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 10(%a0),%a0
	jsr (%a0)
	move.l 156(%a2),%a0
	move.w (%a0),%a0
	move.l %a0,88(%a3)
	lea (12,%sp),%sp
.L3:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L8:
	move.w 320(%a3),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 284(%a3),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	cmp.l %d0,%a0
	jle .L6
	clr.b 198(%a3)
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	move.l 156(%a2),%a0
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 10(%a0),%a0
	jsr (%a0)
	move.l 156(%a2),%a0
	move.w (%a0),%a0
	move.l %a0,88(%a3)
	lea (12,%sp),%sp
	jra .L3
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 156(%a0),%a1
	move.l 18(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
__Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d2
	move.l 16(%fp),%d3
	move.l 20(%fp),%d4
	move.l 156(%a2),%a0
	move.w (%a0),%a1
	cmp.l %a1,%d2
	jeq .L11
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	add.l %d2,%d2
	add.l %d2,%d2
	move.l (%a2,%d2.l),%a0
	move.l %a0,156(%a2)
	lea (12,%sp),%sp
	move.l %d4,16(%fp)
	move.l %d3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#1052
	unlk %fp
	jmp (%a0)
.L11:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
	.even
	.globl	__Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
__Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%d0
	move.b #1,167(%a0)
	move.w raptor_ticks,%d1
	add.w 14(%fp),%d1
	move.w %d1,168(%a0)
	move.l 156(%a0),%a1
	move.l 20(%fp),16(%fp)
	move.l %d0,12(%fp)
	move.l 14(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z15StateIdle_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z15StateIdle_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a0
	clr.w 16(%a0)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a0)
	move.l 8(%fp),%a0
	clr.b 166(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z14StateIdle_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z14StateIdle_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z16StateIdle_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z16StateIdle_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.w 320(%a0),%a1
	move.l %a1,-(%sp)
	move.w 302(%a0),%a1
	move.l %a1,-(%sp)
	move.w 300(%a0),%a1
	move.l %a1,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a0),%a1
	move.l %a1,-(%sp)
	move.l 472(%a0),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z15StateIdle_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z15StateIdle_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z21StateIdle_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z21StateIdle_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #15408,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 218(%a2)
	jeq .L20
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L22
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L22
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L24
	cmp.w #1,320(%a2)
	jeq .L25
.L24:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L26
	cmp.w #-1,320(%a2)
	jeq .L25
.L26:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L27
.L28:
	move.l 156(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L22:
	move.l 156(%a3),%a0
	cmp.w #1,(%a0)
	jne .L60
.L20:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L60:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L25:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jne .L61
.L27:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L29
	move.w 320(%a2),%d4
	cmp.w #1,%d4
	jeq .L62
	cmp.w #-1,%d4
	jeq .L63
.L29:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L37
	cmp.w #1,320(%a2)
	jeq .L38
.L37:
	tst.l %d1
	jeq .L36
	cmp.w #-1,320(%a2)
	jeq .L38
.L36:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L39
.L40:
	tst.l %d4
	jeq .L41
	cmp.w #1,320(%a2)
	jeq .L42
.L41:
	tst.l %d1
	jeq .L43
	cmp.w #-1,320(%a2)
	jeq .L42
.L43:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jne .L44
.L45:
	move.w 320(%a2),%d5
	cmp.w #1,%d5
	jeq .L64
	cmp.w #-1,%d5
	jeq .L65
.L49:
	tst.l %d3
	jne .L66
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L67
.L53:
	and.l JAGPAD_A,%d0
	jeq .L20
	tst.b 130(%a2)
	jeq .L20
	move.l 156(%a3),%a0
	cmp.w #13,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 52(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L38:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jeq .L36
.L39:
	tst.b 130(%a2)
	jeq .L40
	move.l 156(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L42:
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L43
.L44:
	tst.b 130(%a2)
	jeq .L45
	move.l 156(%a3),%a0
	cmp.w #14,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L61:
	and.l JAGPAD_A,%d0
	jeq .L28
	tst.b 130(%a2)
	jeq .L28
	move.l 156(%a3),%a0
	cmp.w #20,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L67:
	tst.b 130(%a2)
	jeq .L53
	move.l 156(%a3),%a0
	cmp.w #9,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 36(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L65:
	tst.l %d1
	jne .L47
	tst.l %d4
	jeq .L49
.L51:
	move.l 156(%a3),%a0
	cmp.w #4,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L63:
	tst.l %d1
	jne .L31
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L54
.L55:
	moveq #0,%d4
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L40
	jra .L39
.L62:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L31
	tst.l %d1
	jeq .L55
.L54:
	move.l 156(%a3),%a0
	cmp.w #7,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L64:
	tst.l %d4
	jne .L47
	tst.l %d1
	jeq .L49
	jra .L51
.L47:
	move.l 156(%a3),%a0
	cmp.w #3,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L31:
	move.l 156(%a3),%a0
	cmp.w #6,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L66:
	move.l 156(%a3),%a0
	cmp.w #5,(%a0)
	jeq .L20
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z19StateBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z19StateBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a0
	clr.w 16(%a0)
	move.l 8(%fp),%a0
	clr.b 166(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z18StateBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z18StateBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z20StateBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z20StateBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 166(%a4)
	jeq .L75
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jeq .L76
.L71:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L76:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L71
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L75:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z19StateBlocking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z19StateBlocking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z25StateBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L80
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L83
.L80:
	and.l JAGPAD_DOWN,%d0
	jne .L84
.L79:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L84:
	move.l 156(%a3),%a0
	cmp.w #8,(%a0)
	jeq .L79
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 32(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L83:
	move.b #1,166(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	cmp.w #1,160(%a0)
	jeq .L87
	clr.w 16(%a1)
	clr.b 166(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
.L87:
	move.w #2,16(%a1)
	clr.b 166(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17StateDucking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z17StateDucking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19StateDucking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z19StateDucking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 166(%a4)
	jeq .L96
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 504(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jeq .L97
.L92:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L97:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L92
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L96:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 504(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z18StateDucking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z18StateDucking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateDucking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateDucking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d2
	move.l 240(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L110
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L103
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L103
	tst.b 130(%a3)
	jeq .L100
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L105
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L105
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L107
	and.l JAGPAD_9,%d0
	jeq .L100
.L107:
	move.l 156(%a2),%a0
	cmp.w #17,(%a0)
	jeq .L100
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 68(%a2),%a0
	move.l %a0,156(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L110:
	move.b #1,166(%a2)
.L100:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L103:
	move.l 156(%a2),%a0
	cmp.w #8,(%a0)
	jeq .L100
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,156(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L105:
	move.l 156(%a2),%a0
	cmp.w #16,(%a0)
	jeq .L100
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 64(%a2),%a0
	move.l %a0,156(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 166(%a0)
	clr.w 160(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24StateWalkingForward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z24StateWalkingForward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z26StateWalkingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.b 173(%a2)
	jeq .L115
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
.L116:
	move.w 160(%a3),%d0
	addq.w #2,%d0
	move.w %d0,160(%a3)
	tst.b 166(%a3)
	jeq .L114
	cmp.w #31,%d0
	jgt .L119
.L114:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L115:
	move.w 320(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	jra .L116
.L119:
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L114
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z25StateWalkingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateWalkingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z31StateWalkingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateWalkingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%d0
	cmp.w #1,%d0
	jeq .L138
	cmp.w #-1,%d0
	jeq .L139
.L124:
	move.b #1,166(%a3)
.L122:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L139:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L124
.L125:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L140
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L141
	tst.b 173(%a2)
	jne .L142
.L130:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L131
	tst.b 130(%a2)
	jne .L135
.L131:
	tst.l %d1
	jeq .L129
	tst.b 130(%a2)
	jne .L135
.L129:
	and.l JAGPAD_A,%d0
	jeq .L122
	tst.b 130(%a2)
	jeq .L122
	move.l 156(%a3),%a0
	cmp.w #14,(%a0)
	jeq .L122
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L138:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jne .L125
	move.b #1,166(%a3)
	jra .L122
.L141:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L129
	tst.b 173(%a2)
	jeq .L130
.L142:
	tst.b 130(%a2)
	jeq .L130
	move.l 156(%a3),%a0
	cmp.w #38,(%a0)
	jeq .L122
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 152(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L140:
	move.l 156(%a3),%a0
	cmp.w #6,(%a0)
	jeq .L122
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L135:
	move.l 156(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L122
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 166(%a0)
	clr.w 160(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z25StateWalkingBackward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z25StateWalkingBackward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateWalkingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z27StateWalkingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 320(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 160(%a3),%d0
	addq.w #2,%d0
	move.w %d0,160(%a3)
	addq.l #8,%sp
	tst.b 166(%a3)
	jeq .L146
	cmp.w #27,%d0
	jgt .L149
.L146:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L149:
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L146
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z26StateWalkingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z32StateWalkingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateWalkingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%d0
	cmp.w #1,%d0
	jeq .L164
	cmp.w #-1,%d0
	jeq .L165
.L154:
	move.b #1,166(%a3)
.L152:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L165:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L154
.L155:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L166
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L158
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L158
	tst.b 130(%a2)
	jne .L167
.L158:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L168
	tst.b 130(%a2)
	jne .L169
.L160:
	tst.l %d1
	jeq .L152
	tst.b 130(%a2)
	jeq .L152
	move.l 156(%a3),%a0
	cmp.w #15,(%a0)
	jeq .L152
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 60(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L164:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L155
	move.b #1,166(%a3)
	jra .L152
.L168:
	and.l JAGPAD_C,%d0
	jeq .L160
	tst.b 130(%a2)
	jeq .L160
	jra .L169
.L166:
	move.l 156(%a3),%a0
	cmp.w #7,(%a0)
	jeq .L152
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L169:
	move.l 156(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L152
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L167:
	move.l 156(%a3),%a0
	cmp.w #20,(%a0)
	jeq .L152
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 166(%a1)
	clr.w 160(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z15fighterPlayJumpiP12SoundHandlerb
	.even
	.globl	__Z17StateJumping_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z17StateJumping_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19StateJumping_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z19StateJumping_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	move.w 160(%a3),%d0
	move.w 320(%a2),%a0
	cmp.w #1,%d0
	jls .L184
	cmp.w #18,%d0
	jeq .L185
	cmp.w #19,%d0
	jeq .L186
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 496(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L175:
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L182
	tst.b 220(%a2)
	jne .L182
	move.w 160(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a5
	add.l #__ZL11JumpOffsets,%a5
	move.w (%a5,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.l %a0,288(%a2)
	cmp.w #19,%d0
	jgt .L187
.L173:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L182:
	move.w 160(%a3),%d0
	cmp.w #19,%d0
	jle .L173
.L187:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L173
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L186:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 496(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L175
.L184:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 496(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L175
.L185:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 496(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L175
	.even
	.globl	__Z18StateJumping_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z18StateJumping_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateJumping_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateJumping_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L191
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L192
.L191:
	tst.b 130(%a2)
	jne .L197
.L192:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L198
	tst.b 130(%a2)
	jne .L199
.L190:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L198:
	and.l JAGPAD_9,%d0
	jeq .L190
	tst.b 130(%a2)
	jeq .L190
.L199:
	move.l 156(%a3),%a0
	cmp.w #19,(%a0)
	jeq .L190
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 76(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L197:
	move.l 156(%a3),%a0
	cmp.w #18,(%a0)
	jeq .L190
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 72(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z25StateJumpingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateJumpingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 166(%a1)
	clr.w 160(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z15fighterPlayJumpiP12SoundHandlerb
	.even
	.globl	__Z24StateJumpingForward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z24StateJumpingForward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z26StateJumpingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z26StateJumpingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 500(%a2),-(%sp)
	move.w 160(%a3),%a0
	move.l %a0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L208
	tst.b 220(%a2)
	jeq .L206
.L208:
	move.w 160(%a3),%d0
.L205:
	cmp.w #19,%d0
	jgt .L210
.L203:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L210:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L203
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L206:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l #0x40f00000,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 160(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L205
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.w 160(%a3),%d0
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L203
	jra .L210
	.even
	.globl	__Z25StateJumpingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateJumpingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z31StateJumpingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateJumpingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 130(%a2)
	jeq .L213
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L215
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L215
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L217
	and.l JAGPAD_7,%d0
	jeq .L213
.L217:
	move.l 156(%a3),%a0
	cmp.w #23,(%a0)
	jeq .L213
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 92(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L215:
	move.l 156(%a3),%a0
	cmp.w #21,(%a0)
	jne .L220
.L213:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L220:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 84(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z26StateJumpingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateJumpingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 166(%a1)
	clr.w 160(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z15fighterPlayJumpiP12SoundHandlerb
	.even
	.globl	__Z25StateJumpingBackward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z25StateJumpingBackward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateJumpingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z27StateJumpingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 500(%a2),-(%sp)
	move.w #19,%a0
	sub.w 160(%a3),%a0
	move.l %a0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L229
	tst.b 220(%a2)
	jeq .L227
.L229:
	move.w 160(%a3),%d0
.L226:
	cmp.w #19,%d0
	jgt .L231
.L224:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L231:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L224
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L227:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l #0x40f00000,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 160(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L226
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.w 160(%a3),%d0
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L224
	jra .L231
	.even
	.globl	__Z26StateJumpingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z26StateJumpingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z32StateJumpingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 130(%a2)
	jeq .L234
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L236
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L236
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L238
	and.l JAGPAD_7,%d0
	jeq .L234
.L238:
	move.l 156(%a3),%a0
	cmp.w #24,(%a0)
	jeq .L234
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 96(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L236:
	move.l 156(%a3),%a0
	cmp.w #22,(%a0)
	jne .L241
.L234:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L241:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 88(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23StateDuckBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateDuckBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.w 160(%a0)
	clr.b 166(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z22StateDuckBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z22StateDuckBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateDuckBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z24StateDuckBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	tst.b 166(%a3)
	jeq .L253
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jne .L245
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L248
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L248
	and.l JAGPAD_DOWN,%d0
	jne .L254
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L245
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L253:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L245:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L248:
	move.l 156(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L245
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L254:
	move.w #1,160(%a3)
	move.l 156(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L245
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23StateDuckBlocking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateDuckBlocking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateDuckBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateDuckBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 240(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L258
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L257
	and.l JAGPAD_8,%d0
	jne .L257
.L258:
	move.l 8(%fp),%a0
	move.b #1,166(%a0)
.L257:
	unlk %fp
	rts
	.even
	.globl	__Z22StateLowPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateLowPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a1)
	clr.w 164(%a1)
	clr.b 166(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	clr.b 130(%a0)
	move.l 316(%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z21StateLowPunching_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowPunching_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateLowPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateLowPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 404(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L270
.L265:
	tst.w 160(%a4)
	jle .L266
	move.l 156(%a4),%a0
	cmp.w #10,(%a0)
	jeq .L264
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 40(%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L266:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L271
.L264:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L270:
	tst.w 164(%a4)
	jne .L265
	move.w #1,164(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L265
.L271:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L264
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z22StateLowPunching_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateLowPunching_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateLowPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateLowPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 130(%a0)
	jeq .L274
	move.l JAGPAD_C,%d0
	and.l 240(%a0),%d0
	jeq .L274
	addq.w #1,160(%a1)
.L274:
	unlk %fp
	rts
	.even
	.globl	__Z28StateLowRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z28StateLowRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,162(%a0)
	clr.w 164(%a0)
	clr.b 166(%a0)
	move.w %d0,%a0
	move.l %a0,288(%a1)
	clr.b 130(%a1)
	move.l 316(%a1),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z27StateLowRepeatPunching_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z27StateLowRepeatPunching_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateLowRepeatPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z29StateLowRepeatPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	tst.b 166(%a3)
	jne .L281
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L286
.L282:
	tst.w 160(%a3)
	jle .L283
.L287:
	clr.w 160(%a3)
	move.w raptor_ticks,162(%a3)
	clr.w 164(%a3)
.L280:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L281:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 156(%a3),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L280
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L283:
	move.w raptor_ticks,%a0
	move.w 162(%a3),%a1
	lea (29,%a1),%a1
	cmp.l %a1,%a0
	jle .L280
	move.b #1,166(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L286:
	tst.w 164(%a3)
	jne .L282
	move.w #1,164(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 160(%a3)
	jgt .L287
	jra .L283
	.even
	.globl	__Z28StateLowRepeatPunching_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z28StateLowRepeatPunching_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z34StateLowRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z34StateLowRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 130(%a0)
	jeq .L290
	move.l JAGPAD_C,%d0
	and.l 240(%a0),%d0
	jeq .L290
	addq.w #1,160(%a1)
.L290:
	unlk %fp
	rts
	.even
	.globl	__Z23StateHighPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHighPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a1)
	clr.w 164(%a1)
	clr.b 166(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	clr.b 130(%a0)
	move.l 316(%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z22StateHighPunching_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHighPunching_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateHighPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z24StateHighPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 404(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 532(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L302
.L297:
	tst.w 160(%a4)
	jle .L298
	move.l 156(%a4),%a0
	cmp.w #12,(%a0)
	jeq .L296
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 48(%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L298:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L303
.L296:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L302:
	tst.w 164(%a4)
	jne .L297
	move.w #1,164(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L297
.L303:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L296
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23StateHighPunching_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHighPunching_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateHighPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 130(%a0)
	jeq .L306
	move.l 240(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L310
	addq.w #1,160(%a1)
.L306:
	unlk %fp
	rts
.L310:
	and.l JAGPAD_7,%d0
	jeq .L306
	addq.w #1,160(%a1)
	jra .L306
	.even
	.globl	__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,162(%a0)
	clr.w 164(%a0)
	clr.b 166(%a0)
	move.w %d0,%a0
	move.l %a0,288(%a1)
	clr.b 130(%a1)
	move.l 316(%a1),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z28StateHighRepeatPunching_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z28StateHighRepeatPunching_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z30StateHighRepeatPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z30StateHighRepeatPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	tst.b 166(%a3)
	jne .L315
	move.l 416(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 536(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L320
.L316:
	tst.w 160(%a3)
	jle .L317
.L321:
	clr.w 160(%a3)
	move.w raptor_ticks,162(%a3)
	clr.w 164(%a3)
.L314:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L315:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 156(%a3),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L314
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L317:
	move.w raptor_ticks,%a0
	move.w 162(%a3),%a1
	lea (29,%a1),%a1
	cmp.l %a1,%a0
	jle .L314
	move.b #1,166(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L320:
	tst.w 164(%a3)
	jne .L316
	move.w #1,164(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 160(%a3)
	jgt .L321
	jra .L317
	.even
	.globl	__Z29StateHighRepeatPunching_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighRepeatPunching_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z35StateHighRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z35StateHighRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 130(%a0)
	jeq .L324
	move.l 240(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L328
	addq.w #1,160(%a1)
.L324:
	unlk %fp
	rts
.L328:
	and.l JAGPAD_7,%d0
	jeq .L324
	addq.w #1,160(%a1)
	jra .L324
	.even
	.globl	__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	clr.b 166(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a1)
	clr.b 130(%a1)
	move.l 316(%a1),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z20StateLowKicking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z20StateLowKicking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateLowKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z22StateLowKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 420(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 540(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L336
.L333:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L337
.L332:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L337:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L332
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L336:
	tst.w 164(%a4)
	jne .L333
	move.w #1,164(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L332
	jra .L337
	.even
	.globl	__Z21StateLowKicking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowKicking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateLowKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z27StateLowKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateHighKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHighKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	clr.b 166(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a1)
	clr.b 130(%a1)
	move.l 316(%a1),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z21StateHighKicking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHighKicking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateHighKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHighKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 424(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 544(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L347
.L344:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L348
.L343:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L348:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L343
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L347:
	tst.w 164(%a4)
	jne .L344
	move.w #1,164(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L343
	jra .L348
	.even
	.globl	__Z22StateHighKicking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHighKicking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateHighKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateHighKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateRoundhouseKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z28StateRoundhouseKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	clr.b 166(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a1)
	clr.b 130(%a1)
	move.l 316(%a1),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z27StateRoundhouseKicking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z27StateRoundhouseKicking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateRoundhouseKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z29StateRoundhouseKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 444(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 596(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L357
.L354:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L357:
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L354
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z28StateRoundhouseKicking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z28StateRoundhouseKicking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z34StateRoundhouseKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z34StateRoundhouseKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateUppercutting_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateUppercutting_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	clr.b 166(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a1)
	clr.b 130(%a1)
	move.l 316(%a1),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z22StateUppercutting_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z22StateUppercutting_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateUppercutting_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z24StateUppercutting_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 436(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 560(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L366
.L363:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L366:
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L363
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23StateUppercutting_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateUppercutting_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateUppercutting_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateUppercutting_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateDuckKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateDuckKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	clr.b 166(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a1)
	clr.b 130(%a1)
	move.l 316(%a1),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z21StateDuckKicking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateDuckKicking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateDuckKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateDuckKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 456(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 608(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L375
.L372:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L375:
	move.w #1,160(%a3)
	move.l 156(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L372
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z22StateDuckKicking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateDuckKicking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateDuckKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateDuckKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateJumpPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateJumpPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 8(%fp),%a1
	clr.b 166(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	clr.b 130(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z22StateJumpPunching_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z22StateJumpPunching_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateJumpPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z24StateJumpPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 428(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L386
	tst.b 220(%a2)
	jne .L386
	move.w 160(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.l %a0,288(%a2)
	cmp.w #19,%d0
	jgt .L388
.L381:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L386:
	move.w 160(%a3),%d0
	cmp.w #19,%d0
	jle .L381
.L388:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L381
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23StateJumpPunching_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateJumpPunching_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 320(%a1),%a2
	move.l %a2,-(%sp)
	move.w 302(%a1),%a2
	move.l %a2,-(%sp)
	move.w 300(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 548(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z29StateJumpPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateJumpPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateJumpKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateJumpKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 8(%fp),%a1
	clr.b 166(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	clr.b 130(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z21StateJumpKicking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateJumpKicking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateJumpKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateJumpKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 552(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L399
	tst.b 220(%a2)
	jne .L399
	move.w 160(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.l %a0,288(%a2)
	cmp.w #19,%d0
	jgt .L401
.L394:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L399:
	move.w 160(%a3),%d0
	cmp.w #19,%d0
	jle .L394
.L401:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L394
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z22StateJumpKicking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateJumpKicking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 320(%a1),%a2
	move.l %a2,-(%sp)
	move.w 302(%a1),%a2
	move.l %a2,-(%sp)
	move.w 300(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 552(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z28StateJumpKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateJumpKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19StateSweeping_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z19StateSweeping_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	clr.b 166(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a1)
	clr.b 130(%a1)
	move.l 316(%a1),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z18StateSweeping_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z18StateSweeping_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z20StateSweeping_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z20StateSweeping_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 440(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L410
.L407:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L410:
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L407
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z19StateSweeping_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z19StateSweeping_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateSweeping_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z25StateSweeping_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z32StateJumpingKickingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingKickingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 166(%a1)
	clr.w 162(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	clr.b 130(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z31StateJumpingKickingForward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z31StateJumpingKickingForward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z33StateJumpingKickingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingKickingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 556(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jgt .L417
	move.w 160(%a3),%d0
	cmp.w #19,%d0
	jgt .L422
.L416:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L417:
	tst.w 162(%a3)
	jeq .L423
	move.w 160(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.l %a0,288(%a2)
.L424:
	cmp.w #19,%d0
	jle .L416
.L422:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L416
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L423:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l #0x40f00000,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	move.w 160(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.l %a0,288(%a2)
	jra .L424
	.even
	.globl	__Z32StateJumpingKickingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingKickingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 320(%a1),%a2
	move.l %a2,-(%sp)
	move.w 302(%a1),%a2
	move.l %a2,-(%sp)
	move.w 300(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 556(%a1),-(%sp)
	pea 2.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 8(%fp),%a0
	move.w #1,162(%a0)
	lea (36,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z38StateJumpingKickingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z38StateJumpingKickingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z33StateJumpingKickingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingKickingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 8(%fp),%a1
	clr.b 166(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	clr.b 130(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z32StateJumpingKickingBackward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingKickingBackward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z34StateJumpingKickingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z34StateJumpingKickingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 432(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 556(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L435
	tst.b 220(%a2)
	jeq .L433
.L435:
	move.w 160(%a3),%d0
	cmp.w #19,%d0
	jgt .L437
.L430:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L437:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L430
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L433:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l #0x40f00000,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 160(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L430
	jra .L437
	.even
	.globl	__Z33StateJumpingKickingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingKickingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 320(%a1),%a2
	move.l %a2,-(%sp)
	move.w 302(%a1),%a2
	move.l %a2,-(%sp)
	move.w 300(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 556(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z39StateJumpingKickingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z39StateJumpingKickingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z33StateJumpingPunchingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingPunchingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 166(%a1)
	clr.w 162(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	clr.b 130(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z32StateJumpingPunchingForward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingPunchingForward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z34StateJumpingPunchingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z34StateJumpingPunchingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 428(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jgt .L444
	move.w 160(%a3),%d0
	cmp.w #19,%d0
	jgt .L449
.L443:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L444:
	tst.w 162(%a3)
	jeq .L450
	move.w 160(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.l %a0,288(%a2)
.L451:
	cmp.w #19,%d0
	jle .L443
.L449:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L443
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L450:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l #0x40f00000,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #4,%sp
	move.l %d0,(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	move.w 160(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.l %a0,288(%a2)
	jra .L451
	.even
	.globl	__Z33StateJumpingPunchingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingPunchingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 320(%a1),%a2
	move.l %a2,-(%sp)
	move.w 302(%a1),%a2
	move.l %a2,-(%sp)
	move.w 300(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 548(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 8(%fp),%a0
	move.w #1,162(%a0)
	lea (36,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z39StateJumpingPunchingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z39StateJumpingPunchingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z34StateJumpingPunchingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z34StateJumpingPunchingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 8(%fp),%a1
	clr.b 166(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	clr.b 130(%a0)
	moveq #0,%d0
	move.b 324(%a0),%d0
	move.l %d0,16(%fp)
	move.l 316(%a0),12(%fp)
	move.l (%a0),8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z33StateJumpingPunchingBackward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingPunchingBackward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z35StateJumpingPunchingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z35StateJumpingPunchingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 428(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L462
	tst.b 220(%a2)
	jeq .L460
.L462:
	move.w 160(%a3),%d0
	cmp.w #19,%d0
	jgt .L464
.L457:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L464:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 156(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L457
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L460:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	jsr ___floatsisf
	move.l #0x40f00000,(%sp)
	move.l %d0,-(%sp)
	jsr ___mulsf3
	addq.l #8,%sp
	add.l #-2147483648,%d0
	move.l %d0,-(%sp)
	jsr ___fixsfsi
	move.l %d0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 160(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L457
	jra .L464
	.even
	.globl	__Z34StateJumpingPunchingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z34StateJumpingPunchingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 320(%a1),%a2
	move.l %a2,-(%sp)
	move.w 302(%a1),%a2
	move.l %a2,-(%sp)
	move.w 300(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 548(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z40StateJumpingPunchingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z40StateJumpingPunchingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z17StateHitLow_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z17StateHitLow_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	cmp.w #89,302(%a2)
	jle .L472
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 166(%a3)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 310(%a2),12(%fp)
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L472:
	move.l 156(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L468
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L468:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z16StateHitLow_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z16StateHitLow_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z18StateHitLow_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitLow_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 564(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L478
.L475:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L478:
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L475
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z17StateHitLow_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z17StateHitLow_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateHitLow_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHitLow_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18StateHitHigh_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitHigh_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	cmp.w #89,302(%a2)
	jle .L486
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 166(%a3)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	addq.l #8,%sp
	move.l 310(%a2),(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	move.w 320(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%a0
	move.l %a0,16(%fp)
	move.w 302(%a2),%d1
	add.w #-10,%d1
	move.w %d1,%a0
	move.l %a0,12(%fp)
	muls.w #-10,%d0
	add.w 300(%a2),%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z10bloodSpraysss
.L486:
	move.l 156(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L482
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L482:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z17StateHitHigh_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z17StateHitHigh_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z19StateHitHigh_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z19StateHitHigh_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 568(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L492
.L489:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L492:
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L489
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z18StateHitHigh_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitHigh_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateHitHigh_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateHitHigh_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19StateHitSweep_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z19StateHitSweep_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	cmp.w #89,302(%a2)
	jle .L500
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 166(%a3)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 310(%a2),12(%fp)
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L500:
	move.l 156(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L496
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L496:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z18StateHitSweep_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitSweep_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20StateHitSweep_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z20StateHitSweep_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 584(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L506
.L503:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L506:
	move.l 316(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 156(%a3),%a0
	addq.l #4,%sp
	cmp.w #28,(%a0)
	jeq .L503
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 112(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z19StateHitSweep_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z19StateHitSweep_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateHitSweep_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z25StateHitSweep_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z16StateGetUp_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z16StateGetUp_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a1)
	move.l 8(%fp),%a1
	clr.b 166(%a1)
	move.l 12(%fp),%a1
	move.l %a0,288(%a1)
	unlk %fp
	rts
	.even
	.globl	__Z15StateGetUp_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z15StateGetUp_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17StateGetUp_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z17StateGetUp_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 588(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L515
.L512:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L515:
	move.l 156(%a3),%a0
	tst.w (%a0)
	jeq .L512
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z16StateGetUp_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z16StateGetUp_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateGetUp_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z22StateGetUp_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18StateHitBack_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitBack_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	cmp.w #89,302(%a2)
	jle .L523
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 166(%a3)
	clr.w 160(%a3)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l 316(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.w 320(%a2),%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w 300(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,16(%fp)
	move.w 302(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,12(%fp)
	move.w 300(%a2),%a2
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z9bloodDropsss
.L523:
	move.l 156(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L519
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L519:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z17StateHitBack_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z17StateHitBack_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z19StateHitBack_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z19StateHitBack_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #2,16(%a3)
	jeq .L531
.L527:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L532
.L528:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l 572(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L533
.L526:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L533:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L526
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L532:
	move.w 320(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l 572(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L526
	jra .L533
.L531:
	tst.w 160(%a4)
	jne .L527
	move.w #1,160(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L528
	jra .L532
	.even
	.globl	__Z18StateHitBack_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitBack_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateHitBack_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateHitBack_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z21StateHitBackLow_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitBackLow_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	cmp.w #89,302(%a2)
	jle .L541
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 166(%a3)
	clr.w 160(%a3)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 316(%a2),8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
.L541:
	move.l 156(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L537
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,156(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L537:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z20StateHitBackLow_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z20StateHitBackLow_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitBackLow_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitBackLow_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,16(%a3)
	jeq .L549
.L545:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L550
.L546:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 564(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L551
.L544:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L551:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L544
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L550:
	move.w 320(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 564(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L544
	jra .L551
.L549:
	tst.w 160(%a4)
	jne .L545
	move.w #1,160(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L546
	jra .L550
	.even
	.globl	__Z21StateHitBackLow_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitBackLow_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateHitBackLow_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z27StateHitBackLow_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitUppercut_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitUppercut_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	clr.w 16(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a3)
	clr.b 166(%a0)
	clr.w 160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	move.l %a1,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l 316(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 302(%a2),%d0
	add.w #-10,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 320(%a2),%d0
	muls.w #-40,%d0
	add.w 300(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	lea __Z11bloodSquirtss,%a3
	jsr (%a3)
	addq.l #8,%sp
	move.w 302(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%d0
	add.w #20,%d0
	move.w 320(%a2),%d1
	muls.w #-40,%d1
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	move.w 302(%a2),%d0
	add.w #-50,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%d0
	add.w #10,%d0
	move.w 320(%a2),%d1
	muls.w #-40,%d1
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 320(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w 300(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a3
	jsr (%a3)
	move.w 320(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-80,%d0
	add.w 300(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 320(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w 300(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 320(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,16(%fp)
	move.w 302(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,12(%fp)
	muls.w #-60,%d0
	add.w 300(%a2),%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z9bloodDropsss
	.even
	.globl	__Z21StateHitUppercut_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitUppercut_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23StateHitUppercut_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHitUppercut_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	cmp.l #65536,160(%a3)
	jeq .L564
	cmp.w #8,160(%a3)
	jeq .L565
.L559:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L566
.L557:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L566:
	move.w 320(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 160(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 302(%a2),%d1
	move.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a3)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L567
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a4),%a0
	move.l %a0,-(%sp)
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L569:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L565:
	tst.w 164(%a3)
	jne .L559
	move.w #1,164(%a3)
	move.l 316(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L557
	jra .L566
.L567:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 156(%a3),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L568
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a3),%a0
	move.l %a0,156(%a3)
	addq.l #8,%sp
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d1
	move.w 160(%a3),%d0
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a4),%a0
	move.l %a0,-(%sp)
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L569
.L564:
	move.w #1,162(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L557
	jra .L566
.L568:
	move.w 302(%a2),%d1
	move.w 160(%a3),%d0
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a4),%a0
	move.l %a0,-(%sp)
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L569
	.even
	.globl	__Z22StateHitUppercut_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitUppercut_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateHitUppercut_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateHitUppercut_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18StateLaydown_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateLaydown_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 166(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17StateLaydown_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z17StateLaydown_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19StateLaydown_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z19StateLaydown_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 580(%a2),-(%sp)
	moveq #0,%d0
	move.w 80(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 288(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jgt .L578
.L575:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L578:
	move.l 156(%a4),%a0
	cmp.w #28,(%a0)
	jeq .L575
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 112(%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z18StateLaydown_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z18StateLaydown_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateLaydown_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateLaydown_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitDropKick_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitDropKick_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	clr.w 16(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a3)
	clr.b 166(%a0)
	move.w #4,160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	move.l %a1,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 316(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
	.even
	.globl	__Z21StateHitDropKick_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitDropKick_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23StateHitDropKick_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHitDropKick_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 16(%a3),%d0
	cmp.w #1,%d0
	jeq .L591
	cmp.w #3,%d0
	jeq .L592
.L586:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L593
.L584:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L593:
	move.w 320(%a2),%d0
	ext.l %d0
	move.l %d0,%d1
	neg.l %d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 160(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 302(%a2),%d1
	move.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L594
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L596:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L592:
	tst.w 164(%a4)
	jne .L586
	move.w #1,164(%a4)
	move.l 316(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L584
	jra .L593
.L591:
	tst.w 162(%a4)
	jne .L586
	move.w #1,162(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L584
	jra .L593
.L594:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 156(%a4),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L595
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,156(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d1
	move.w 160(%a4),%d0
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L596
.L595:
	move.w 302(%a2),%d1
	move.w 160(%a4),%d0
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L596
	.even
	.globl	__Z22StateHitDropKick_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitDropKick_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateHitDropKick_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateHitDropKick_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z17StateHitAir_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z17StateHitAir_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	clr.w 16(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,12(%a3)
	clr.b 166(%a0)
	move.w #4,160(%a0)
	clr.w 162(%a0)
	clr.w 164(%a0)
	move.l %a1,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 316(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
	.even
	.globl	__Z16StateHitAir_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z16StateHitAir_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z18StateHitAir_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitAir_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,16(%a3)
	jeq .L608
.L603:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L609
.L602:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L609:
	move.w 320(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 160(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 302(%a2),%d1
	move.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,160(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L610
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L612:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L608:
	tst.w 162(%a4)
	jne .L603
	move.w #1,162(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L602
	jra .L609
.L610:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 156(%a4),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L611
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,156(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d1
	move.w 160(%a4),%d0
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L612
.L611:
	move.w 302(%a2),%d1
	move.w 160(%a4),%d0
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L612
	.even
	.globl	__Z17StateHitAir_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z17StateHitAir_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateHitAir_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHitAir_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a1)
	move.l 8(%fp),%a1
	clr.b 166(%a1)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,12(%fp)
	move.l 316(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z8sfxBlockP12SoundHandlerb
	.even
	.globl	__Z21StateHitBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23StateHitBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHitBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L621
.L619:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L621:
	move.l 156(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L619
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,156(%a3)
	addq.l #8,%sp
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitBlocking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitBlocking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateHitBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateHitBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateHitDuckingBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHitDuckingBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a1)
	move.l 8(%fp),%a1
	clr.b 166(%a1)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,12(%fp)
	move.l 316(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z8sfxBlockP12SoundHandlerb
	.even
	.globl	__Z28StateHitDuckingBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z28StateHitDuckingBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z30StateHitDuckingBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z30StateHitDuckingBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L630
.L628:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L630:
	move.l 156(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L628
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,156(%a3)
	addq.l #8,%sp
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z29StateHitDuckingBlocking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHitDuckingBlocking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z35StateHitDuckingBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z35StateHitDuckingBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z31StateHitBlockingKnockback_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z31StateHitBlockingKnockback_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	clr.w 16(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l %a0,12(%a3)
	clr.b 166(%a1)
	move.w %d0,160(%a1)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,12(%fp)
	move.l 316(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z8sfxBlockP12SoundHandlerb
	.even
	.globl	__Z30StateHitBlockingKnockback_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z30StateHitBlockingKnockback_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z32StateHitBlockingKnockback_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z32StateHitBlockingKnockback_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w raptor_ticks,%a0
	move.w 160(%a3),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L640
.L637:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jgt .L641
.L638:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L641:
	move.w 320(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L640:
	move.l 156(%a3),%a1
	tst.w (%a1)
	jeq .L637
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a1),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,156(%a3)
	addq.l #8,%sp
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L638
	jra .L641
	.even
	.globl	__Z31StateHitBlockingKnockback_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z31StateHitBlockingKnockback_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z37StateHitBlockingKnockback_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z37StateHitBlockingKnockback_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateBodyPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateBodyPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	clr.b 166(%a0)
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a2
	move.l %a2,288(%a1)
	clr.w 160(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z22StateBodyPunching_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z22StateBodyPunching_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateBodyPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z24StateBodyPunching_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 448(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 600(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	moveq #2,%d0
	cmp.l (%a2),%d0
	jeq .L651
.L648:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L652
.L647:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L652:
	move.l 156(%a4),%a0
	tst.w (%a0)
	jeq .L647
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,156(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L651:
	tst.w 160(%a4)
	jne .L648
	cmp.w #2,16(%a3)
	jne .L648
	move.w #1,160(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandlerb
	addq.l #8,%sp
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L647
	jra .L652
	.even
	.globl	__Z23StateBodyPunching_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateBodyPunching_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateBodyPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateBodyPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
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
	.text
	.even
__ZL11JumpOffsets:
	.word	-20
	.word	-16
	.word	-12
	.word	-10
	.word	-8
	.word	-6
	.word	-4
	.word	-2
	.word	0
	.word	0
	.word	2
	.word	4
	.word	6
	.word	8
	.word	10
	.word	12
	.word	16
	.word	20
	.skip 4
	.even
__ZL11FlipOffsets:
	.word	-20
	.word	-16
	.word	-12
	.word	-10
	.word	-8
	.word	-6
	.word	-4
	.word	-2
	.word	0
	.word	0
	.word	2
	.word	4
	.word	6
	.word	8
	.word	10
	.word	12
	.word	16
	.word	20
	.skip 4
	.even
__ZL15UppercutOffsets:
	.word	-20
	.word	-20
	.word	-16
	.word	-14
	.word	-13
	.word	-10
	.word	-9
	.word	-6
	.word	-4
	.word	-3
	.word	-2
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	2
	.word	3
	.word	4
	.word	6
	.word	9
	.word	12
	.word	13
	.word	14
	.word	20
	.word	22
	.word	24
