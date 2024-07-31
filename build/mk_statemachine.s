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
	move.l %a0,172(%a2)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	clr.b 182(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 172(%a0),%a1
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
	move.l 172(%a2),%a0
	move.w (%a0),%a1
	cmp.l %a1,%d2
	jeq .L4
	move.l %d4,-(%sp)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	add.l %d2,%d2
	add.l %d2,%d2
	move.l (%a2,%d2.l),%a0
	move.l %a0,172(%a2)
	lea (12,%sp),%sp
	move.l %d4,16(%fp)
	move.l %d3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#1052
	unlk %fp
	jmp (%a0)
.L4:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
	.even
	.globl	__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator
__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d2
	tst.b 183(%a2)
	jeq .L9
	move.w raptor_ticks,%d0
	cmp.w 184(%a2),%d0
	jlt .L8
	clr.b 183(%a2)
.L9:
	tst.b 198(%a3)
	jne .L16
	tst.b 174(%a3)
	jeq .L12
	move.l 172(%a2),%a0
	move.w (%a0),%d0
	cmp.w #42,%d0
	jeq .L13
	cmp.w #5,%d0
	jeq .L13
	cmp.w #7,%d0
	jeq .L13
	cmp.w #6,%d0
	jeq .L13
	cmp.w #22,%d0
	jeq .L13
	cmp.w #21,%d0
	jeq .L13
	cmp.w #24,%d0
	jeq .L13
	cmp.w #23,%d0
	jeq .L13
	cmp.w #19,%d0
	jeq .L13
	cmp.w #18,%d0
	jeq .L13
	cmp.w #41,%d0
	jeq .L13
	cmp.w #40,%d0
	jeq .L13
	cmp.w #32,%d0
	jeq .L13
	cmp.w #28,%d0
	jeq .L13
	clr.b 174(%a3)
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	pea 42.w
	move.l %a2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L8:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L16:
	move.w 320(%a3),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a3,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 284(%a3),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	cmp.l %d0,%a0
	jgt .L17
.L12:
	move.l 172(%a2),%a0
.L13:
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 10(%a0),%a0
	jsr (%a0)
	move.l 172(%a2),%a0
	move.w (%a0),%a0
	move.l %a0,88(%a3)
	lea (12,%sp),%sp
.L18:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L17:
	clr.b 198(%a3)
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	move.l 172(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 10(%a0),%a0
	jsr (%a0)
	move.l 172(%a2),%a0
	move.w (%a0),%a0
	move.l %a0,88(%a3)
	lea (12,%sp),%sp
	jra .L18
	.even
	.globl	__Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
__Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%d0
	move.b #1,183(%a0)
	move.w raptor_ticks,%d1
	add.w 14(%fp),%d1
	move.w %d1,184(%a0)
	move.l 172(%a0),%a1
	move.l 20(%fp),16(%fp)
	move.l %d0,12(%fp)
	move.l 14(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z15StateIdle_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z15StateIdle_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.w raptor_ticks,%a2
	move.l %a2,12(%a1)
	clr.b 182(%a0)
	clr.w 176(%a0)
	move.l (%sp)+,%a2
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
	move.l 464(%a0),-(%sp)
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
	jeq .L25
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L27
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L27
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L29
	cmp.w #1,320(%a2)
	jeq .L30
.L29:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L31
	cmp.w #-1,320(%a2)
	jeq .L30
.L31:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L32
.L33:
	move.l 172(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L27:
	move.l 172(%a3),%a0
	cmp.w #1,(%a0)
	jne .L66
.L25:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L66:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L30:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jne .L67
.L32:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L34
	move.w 320(%a2),%d4
	cmp.w #1,%d4
	jeq .L68
	cmp.w #-1,%d4
	jeq .L69
.L34:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L42
	cmp.w #1,320(%a2)
	jeq .L43
.L42:
	tst.l %d1
	jeq .L41
	cmp.w #-1,320(%a2)
	jeq .L43
.L41:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L44
.L45:
	tst.l %d4
	jeq .L46
	cmp.w #1,320(%a2)
	jeq .L47
.L46:
	tst.l %d1
	jeq .L48
	cmp.w #-1,320(%a2)
	jeq .L47
.L48:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jne .L49
.L50:
	move.w 320(%a2),%d5
	cmp.w #1,%d5
	jeq .L70
	cmp.w #-1,%d5
	jeq .L71
.L54:
	tst.l %d3
	jne .L72
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L58
	tst.b 179(%a2)
	jeq .L59
	tst.b 130(%a2)
	jeq .L58
	move.l 172(%a3),%a0
	cmp.w #40,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 160(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L43:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jeq .L41
.L44:
	tst.b 130(%a2)
	jeq .L45
	move.l 172(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L47:
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L48
.L49:
	tst.b 130(%a2)
	jeq .L50
	move.l 172(%a3),%a0
	cmp.w #14,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L67:
	and.l JAGPAD_A,%d0
	jeq .L33
	tst.b 130(%a2)
	jeq .L33
	move.l 172(%a3),%a0
	cmp.w #20,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L58:
	and.l JAGPAD_A,%d0
	jeq .L25
	tst.b 130(%a2)
	jeq .L25
	move.l 172(%a3),%a0
	cmp.w #13,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 52(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L71:
	tst.l %d1
	jne .L52
	tst.l %d4
	jeq .L54
.L56:
	move.l 172(%a3),%a0
	cmp.w #4,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L69:
	tst.l %d1
	jne .L36
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L60
.L61:
	moveq #0,%d4
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L45
	jra .L44
.L68:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L36
	tst.l %d1
	jeq .L61
.L60:
	move.l 172(%a3),%a0
	cmp.w #7,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L70:
	tst.l %d4
	jne .L52
	tst.l %d1
	jeq .L54
	jra .L56
.L52:
	move.l 172(%a3),%a0
	cmp.w #3,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L36:
	move.l 172(%a3),%a0
	cmp.w #6,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L59:
	tst.b 130(%a2)
	jeq .L58
	move.l 172(%a3),%a0
	cmp.w #9,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 36(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L72:
	move.l 172(%a3),%a0
	cmp.w #5,(%a0)
	jeq .L25
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
	move.l %a0,172(%a3)
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
	clr.b 182(%a0)
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
	tst.b 182(%a4)
	jeq .L80
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
	move.l 500(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jeq .L81
.L76:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L81:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L76
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L80:
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
	move.l 500(%a2),-(%sp)
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
	jne .L85
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L88
.L85:
	and.l JAGPAD_DOWN,%d0
	jne .L89
.L84:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L89:
	move.l 172(%a3),%a0
	cmp.w #8,(%a0)
	jeq .L84
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 32(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L88:
	move.b #1,182(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	cmp.w #1,176(%a0)
	jeq .L92
	clr.w 16(%a1)
	clr.b 182(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
.L92:
	move.w #2,16(%a1)
	clr.b 182(%a0)
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
	tst.b 182(%a4)
	jeq .L101
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
	move.l 496(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a3)
	jeq .L102
.L97:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L102:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L97
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L101:
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
	move.l 496(%a2),-(%sp)
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
	jeq .L115
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L108
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L108
	tst.b 130(%a3)
	jeq .L105
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L110
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L110
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L112
	and.l JAGPAD_9,%d0
	jeq .L105
.L112:
	move.l 172(%a2),%a0
	cmp.w #17,(%a0)
	jeq .L105
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 68(%a2),%a0
	move.l %a0,172(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L115:
	move.b #1,182(%a2)
.L105:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L108:
	move.l 172(%a2),%a0
	cmp.w #8,(%a0)
	jeq .L105
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,172(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L110:
	move.l 172(%a2),%a0
	cmp.w #16,(%a0)
	jeq .L105
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 64(%a2),%a0
	move.l %a0,172(%a2)
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
	clr.b 182(%a0)
	clr.w 176(%a0)
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
	move.l 480(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L120
	tst.b 173(%a2)
	jeq .L121
	move.w 320(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,176(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
.L120:
	tst.b 182(%a3)
	jeq .L119
	cmp.w #31,176(%a3)
	jgt .L125
.L119:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L121:
	move.w 320(%a2),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,176(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	jra .L120
.L125:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L119
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	movem.l #14384,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%d0
	cmp.w #1,%d0
	jeq .L145
	cmp.w #-1,%d0
	jeq .L146
.L130:
	move.b #1,182(%a3)
.L128:
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L146:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L130
.L131:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L147
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L134
	tst.b 173(%a2)
	jeq .L134
	tst.b 130(%a2)
	jne .L148
.L134:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L149
.L135:
	tst.b 173(%a2)
	jeq .L136
	tst.b 130(%a2)
	jne .L150
.L136:
	and.l JAGPAD_7,%d0
	jeq .L137
	tst.b 130(%a2)
	jne .L142
.L137:
	tst.l %d1
	jeq .L138
	tst.b 130(%a2)
	jne .L142
.L138:
	tst.l %d3
	jeq .L128
	tst.b 130(%a2)
	jeq .L128
	move.l 172(%a3),%a0
	cmp.w #14,(%a0)
	jeq .L128
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L145:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jne .L131
	move.b #1,182(%a3)
	jra .L128
.L149:
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L136
	jra .L135
.L147:
	move.l 172(%a3),%a0
	cmp.w #6,(%a0)
	jeq .L128
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L142:
	move.l 172(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L128
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L150:
	move.l 172(%a3),%a0
	cmp.w #39,(%a0)
	jeq .L128
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 156(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L148:
	move.l 172(%a3),%a0
	cmp.w #38,(%a0)
	jeq .L128
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 152(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 182(%a0)
	clr.w 176(%a0)
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
	move.l 480(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jgt .L158
.L155:
	tst.b 182(%a3)
	jeq .L154
	cmp.w #27,176(%a3)
	jgt .L159
.L154:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L158:
	move.w 320(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.w #4,176(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	jra .L155
.L159:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L154
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	jeq .L174
	cmp.w #-1,%d0
	jeq .L175
.L164:
	move.b #1,182(%a3)
.L162:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L175:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L164
.L165:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L176
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L168
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L168
	tst.b 130(%a2)
	jne .L177
.L168:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L178
	tst.b 130(%a2)
	jne .L179
.L170:
	tst.l %d1
	jeq .L162
	tst.b 130(%a2)
	jeq .L162
	move.l 172(%a3),%a0
	cmp.w #15,(%a0)
	jeq .L162
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 60(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L174:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L165
	move.b #1,182(%a3)
	jra .L162
.L178:
	and.l JAGPAD_C,%d0
	jeq .L170
	tst.b 130(%a2)
	jeq .L170
	jra .L179
.L176:
	move.l 172(%a3),%a0
	cmp.w #7,(%a0)
	jeq .L162
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L179:
	move.l 172(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L162
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L177:
	move.l 172(%a3),%a0
	cmp.w #20,(%a0)
	jeq .L162
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,172(%a3)
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
	clr.b 182(%a1)
	clr.w 176(%a1)
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
	move.w 176(%a3),%d0
	move.w 320(%a2),%a0
	cmp.w #1,%d0
	jls .L194
	cmp.w #18,%d0
	jeq .L195
	cmp.w #19,%d0
	jeq .L196
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 488(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L185:
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L192
	tst.b 220(%a2)
	jne .L192
	move.w 176(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a5
	add.l #__ZL11JumpOffsets,%a5
	move.w (%a5,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.l %a0,288(%a2)
	cmp.w #19,%d0
	jgt .L197
.L183:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L192:
	move.w 176(%a3),%d0
	cmp.w #19,%d0
	jle .L183
.L197:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L183
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L196:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 488(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L185
.L194:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 488(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L185
.L195:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 488(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L185
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
	jne .L201
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L202
.L201:
	tst.b 130(%a2)
	jne .L207
.L202:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L208
	tst.b 130(%a2)
	jne .L209
.L200:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L208:
	and.l JAGPAD_9,%d0
	jeq .L200
	tst.b 130(%a2)
	jeq .L200
.L209:
	move.l 172(%a3),%a0
	cmp.w #19,(%a0)
	jeq .L200
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 76(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L207:
	move.l 172(%a3),%a0
	cmp.w #18,(%a0)
	jeq .L200
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 72(%a3),%a0
	move.l %a0,172(%a3)
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
	clr.b 182(%a1)
	clr.w 176(%a1)
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
	move.l 492(%a2),-(%sp)
	move.w 176(%a3),%a0
	move.l %a0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L218
	tst.b 220(%a2)
	jeq .L216
.L218:
	move.w 176(%a3),%d0
.L215:
	cmp.w #19,%d0
	jgt .L220
.L213:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L220:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L213
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L216:
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
	move.w 176(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L215
	move.l 316(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 176(%a3),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L213
	jra .L220
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
	jeq .L223
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L225
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L225
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L227
	and.l JAGPAD_7,%d0
	jeq .L223
.L227:
	move.l 172(%a3),%a0
	cmp.w #23,(%a0)
	jeq .L223
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 92(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L225:
	move.l 172(%a3),%a0
	cmp.w #21,(%a0)
	jne .L230
.L223:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L230:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 84(%a3),%a0
	move.l %a0,172(%a3)
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
	clr.b 182(%a1)
	clr.w 176(%a1)
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
	move.l 492(%a2),-(%sp)
	move.w #19,%a0
	sub.w 176(%a3),%a0
	move.l %a0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L239
	tst.b 220(%a2)
	jeq .L237
.L239:
	move.w 176(%a3),%d0
.L236:
	cmp.w #19,%d0
	jgt .L241
.L234:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L241:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L234
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L237:
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
	move.w 176(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L236
	move.l 316(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 176(%a3),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L234
	jra .L241
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
	jeq .L244
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L246
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L246
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L248
	and.l JAGPAD_7,%d0
	jeq .L244
.L248:
	move.l 172(%a3),%a0
	cmp.w #24,(%a0)
	jeq .L244
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 96(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L246:
	move.l 172(%a3),%a0
	cmp.w #22,(%a0)
	jne .L251
.L244:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L251:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 88(%a3),%a0
	move.l %a0,172(%a3)
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
	clr.w 176(%a0)
	clr.b 182(%a0)
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
	tst.b 182(%a3)
	jeq .L263
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
	move.l 508(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jne .L255
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L258
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L258
	and.l JAGPAD_DOWN,%d0
	jne .L264
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L255
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L263:
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
	move.l 508(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L255:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L258:
	move.l 172(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L255
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L264:
	move.w #1,176(%a3)
	move.l 172(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L255
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,172(%a3)
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
	jeq .L268
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L267
	and.l JAGPAD_8,%d0
	jne .L267
.L268:
	move.l 8(%fp),%a0
	move.b #1,182(%a0)
.L267:
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
	clr.w 176(%a1)
	clr.w 180(%a1)
	clr.b 182(%a1)
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
	move.l 516(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L280
.L275:
	tst.w 176(%a4)
	jle .L276
	move.l 172(%a4),%a0
	cmp.w #10,(%a0)
	jeq .L274
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 40(%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L276:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L281
.L274:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L280:
	tst.w 180(%a4)
	jne .L275
	move.w #1,180(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L275
.L281:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L274
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
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
	jeq .L284
	move.l JAGPAD_C,%d0
	and.l 240(%a0),%d0
	jeq .L284
	addq.w #1,176(%a1)
.L284:
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
	clr.w 176(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,178(%a0)
	clr.w 180(%a0)
	clr.b 182(%a0)
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
	tst.b 182(%a3)
	jne .L291
	move.l 404(%a2),-(%sp)
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
	move.l 520(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L296
.L292:
	tst.w 176(%a3)
	jle .L293
.L297:
	clr.w 176(%a3)
	move.w raptor_ticks,178(%a3)
	clr.w 180(%a3)
.L290:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L291:
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
	move.l 516(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 172(%a3),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L290
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L293:
	move.w raptor_ticks,%a0
	move.w 178(%a3),%a1
	lea (29,%a1),%a1
	cmp.l %a1,%a0
	jle .L290
	move.b #1,182(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L296:
	tst.w 180(%a3)
	jne .L292
	move.w #1,180(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 176(%a3)
	jgt .L297
	jra .L293
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
	jeq .L300
	move.l JAGPAD_C,%d0
	and.l 240(%a0),%d0
	jeq .L300
	addq.w #1,176(%a1)
.L300:
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
	clr.w 176(%a1)
	clr.w 180(%a1)
	clr.b 182(%a1)
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
	move.l 524(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L312
.L307:
	tst.w 176(%a4)
	jle .L308
	move.l 172(%a4),%a0
	cmp.w #12,(%a0)
	jeq .L306
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 48(%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L308:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L313
.L306:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L312:
	tst.w 180(%a4)
	jne .L307
	move.w #1,180(%a4)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L307
.L313:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L306
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
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
	jeq .L316
	move.l 240(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L320
	addq.w #1,176(%a1)
.L316:
	unlk %fp
	rts
.L320:
	and.l JAGPAD_7,%d0
	jeq .L316
	addq.w #1,176(%a1)
	jra .L316
	.even
	.globl	__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 176(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,178(%a0)
	clr.w 180(%a0)
	clr.b 182(%a0)
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
	tst.b 182(%a3)
	jne .L325
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
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L330
.L326:
	tst.w 176(%a3)
	jle .L327
.L331:
	clr.w 176(%a3)
	move.w raptor_ticks,178(%a3)
	clr.w 180(%a3)
.L324:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L325:
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
	move.l 516(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 172(%a3),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L324
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L327:
	move.w raptor_ticks,%a0
	move.w 178(%a3),%a1
	lea (29,%a1),%a1
	cmp.l %a1,%a0
	jle .L324
	move.b #1,182(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L330:
	tst.w 180(%a3)
	jne .L326
	move.w #1,180(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 176(%a3)
	jgt .L331
	jra .L327
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
	jeq .L334
	move.l 240(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L338
	addq.w #1,176(%a1)
.L334:
	unlk %fp
	rts
.L338:
	and.l JAGPAD_7,%d0
	jeq .L334
	addq.w #1,176(%a1)
	jra .L334
	.even
	.globl	__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
	clr.b 182(%a0)
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
	move.l 412(%a2),-(%sp)
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
	move.l 532(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L346
.L343:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L347
.L342:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L347:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L342
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L346:
	tst.w 180(%a4)
	jne .L343
	move.w #1,180(%a4)
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
	jeq .L342
	jra .L347
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
	clr.w 176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
	clr.b 182(%a0)
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
	move.l 416(%a2),-(%sp)
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
	move.l 536(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L357
.L354:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L358
.L353:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L358:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L353
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L357:
	tst.w 180(%a4)
	jne .L354
	move.w #1,180(%a4)
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
	jeq .L353
	jra .L358
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
	clr.w 176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
	clr.b 182(%a0)
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
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 588(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L367
.L364:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L367:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L364
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	clr.w 176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
	clr.b 182(%a0)
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
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 552(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L376
.L373:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L376:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L373
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	clr.w 176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
	clr.b 182(%a0)
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
	move.l 448(%a2),-(%sp)
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
	move.l 600(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L385
.L382:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L385:
	move.w #1,176(%a3)
	move.l 172(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L382
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,172(%a3)
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
	clr.b 182(%a1)
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
	move.l 420(%a2),-(%sp)
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
	move.l 540(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L396
	tst.b 220(%a2)
	jne .L396
	move.w 176(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.l %a0,288(%a2)
	cmp.w #19,%d0
	jgt .L398
.L391:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L396:
	move.w 176(%a3),%d0
	cmp.w #19,%d0
	jle .L391
.L398:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L391
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	move.l 540(%a1),-(%sp)
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
	clr.b 182(%a1)
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
	move.l 424(%a2),-(%sp)
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
	move.l 544(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L409
	tst.b 220(%a2)
	jne .L409
	move.w 176(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.l %a0,288(%a2)
	cmp.w #19,%d0
	jgt .L411
.L404:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L409:
	move.w 176(%a3),%d0
	cmp.w #19,%d0
	jle .L404
.L411:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L404
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	move.l 544(%a1),-(%sp)
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
	clr.w 176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
	clr.b 182(%a0)
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
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 584(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L420
.L417:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L420:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L417
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	clr.b 182(%a1)
	clr.w 178(%a1)
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
	move.l 424(%a2),-(%sp)
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
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jgt .L427
	move.w 176(%a3),%d0
	cmp.w #19,%d0
	jgt .L432
.L426:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L427:
	tst.w 178(%a3)
	jeq .L433
	move.w 176(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.l %a0,288(%a2)
.L434:
	cmp.w #19,%d0
	jle .L426
.L432:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L426
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L433:
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
	move.w 176(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.l %a0,288(%a2)
	jra .L434
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
	move.l 548(%a1),-(%sp)
	pea 2.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 8(%fp),%a0
	move.w #1,178(%a0)
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
	clr.b 182(%a1)
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
	move.l 424(%a2),-(%sp)
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
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L445
	tst.b 220(%a2)
	jeq .L443
.L445:
	move.w 176(%a3),%d0
	cmp.w #19,%d0
	jgt .L447
.L440:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L447:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L440
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L443:
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
	move.w 176(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L440
	jra .L447
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
	move.l 548(%a1),-(%sp)
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
	clr.b 182(%a1)
	clr.w 178(%a1)
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
	move.l 420(%a2),-(%sp)
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
	move.l 540(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jgt .L454
	move.w 176(%a3),%d0
	cmp.w #19,%d0
	jgt .L459
.L453:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L454:
	tst.w 178(%a3)
	jeq .L460
	move.w 176(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.l %a0,288(%a2)
.L461:
	cmp.w #19,%d0
	jle .L453
.L459:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L453
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L460:
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
	move.w 176(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.l %a0,288(%a2)
	jra .L461
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
	move.l 540(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 8(%fp),%a0
	move.w #1,178(%a0)
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
	clr.b 182(%a1)
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
	move.l 420(%a2),-(%sp)
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
	move.l 540(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L472
	tst.b 220(%a2)
	jeq .L470
.L472:
	move.w 176(%a3),%d0
	cmp.w #19,%d0
	jgt .L474
.L467:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L474:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 172(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L467
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L470:
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
	move.w 176(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L467
	jra .L474
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
	move.l 540(%a1),-(%sp)
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
	jle .L482
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 182(%a3)
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
.L482:
	move.l 172(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L478
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L478:
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
	move.l 556(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L488
.L485:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L488:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L485
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	jle .L496
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 182(%a3)
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
.L496:
	move.l 172(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L492
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L492:
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
	move.l 560(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L502
.L499:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L502:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L499
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	jle .L510
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 182(%a3)
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
.L510:
	move.l 172(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L506
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L506:
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
	move.l 576(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L516
.L513:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L516:
	move.l 316(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 172(%a3),%a0
	addq.l #4,%sp
	cmp.w #28,(%a0)
	jeq .L513
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 112(%a3),%a0
	move.l %a0,172(%a3)
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
	clr.b 182(%a1)
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
	move.l 580(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L525
.L522:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L525:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L522
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	jle .L533
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 182(%a3)
	clr.w 176(%a3)
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
.L533:
	move.l 172(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L529
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L529:
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
	jeq .L541
.L537:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L542
.L538:
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
	move.l 564(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L543
.L536:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L543:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L536
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L542:
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
	move.l 564(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L536
	jra .L543
.L541:
	tst.w 176(%a4)
	jne .L537
	move.w #1,176(%a4)
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
	jle .L538
	jra .L542
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
	jle .L551
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 182(%a3)
	clr.w 176(%a3)
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
.L551:
	move.l 172(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L547
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L547:
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
	jeq .L559
.L555:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L560
.L556:
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
	move.l 556(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L561
.L554:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L561:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L554
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L560:
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
	move.l 556(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L554
	jra .L561
.L559:
	tst.w 176(%a4)
	jne .L555
	move.w #1,176(%a4)
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
	jle .L556
	jra .L560
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
	clr.b 182(%a0)
	clr.w 176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
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
	cmp.l #65536,176(%a3)
	jeq .L574
	cmp.w #8,176(%a3)
	jeq .L575
.L569:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L576
.L567:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L576:
	move.w 320(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 176(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 302(%a2),%d1
	move.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a3)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L577
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L579:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L575:
	tst.w 180(%a3)
	jne .L569
	move.w #1,180(%a3)
	move.l 316(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L567
	jra .L576
.L577:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 172(%a3),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L578
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a3),%a0
	move.l %a0,172(%a3)
	addq.l #8,%sp
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d1
	move.w 176(%a3),%d0
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L579
.L574:
	move.w #1,178(%a3)
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
	jle .L567
	jra .L576
.L578:
	move.w 302(%a2),%d1
	move.w 176(%a3),%d0
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L579
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
	clr.b 182(%a0)
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
	move.l 572(%a2),-(%sp)
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
	jgt .L588
.L585:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L588:
	move.l 172(%a4),%a0
	cmp.w #28,(%a0)
	jeq .L585
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 112(%a4),%a0
	move.l %a0,172(%a4)
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
	clr.b 182(%a0)
	move.w #4,176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
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
	jeq .L601
	cmp.w #3,%d0
	jeq .L602
.L596:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L603
.L594:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L603:
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
	move.w 176(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 302(%a2),%d1
	move.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L604
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L606:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L602:
	tst.w 180(%a4)
	jne .L596
	move.w #1,180(%a4)
	move.l 316(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L594
	jra .L603
.L601:
	tst.w 178(%a4)
	jne .L596
	move.w #1,178(%a4)
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
	jle .L594
	jra .L603
.L604:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 172(%a4),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L605
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,172(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d1
	move.w 176(%a4),%d0
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L606
.L605:
	move.w 302(%a2),%d1
	move.w 176(%a4),%d0
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L606
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
	clr.b 182(%a0)
	move.w #4,176(%a0)
	clr.w 178(%a0)
	clr.w 180(%a0)
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
	jeq .L618
.L613:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L619
.L612:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L619:
	move.w 320(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 176(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 302(%a2),%d1
	move.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L620
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L622:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L618:
	tst.w 178(%a4)
	jne .L613
	move.w #1,178(%a4)
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
	jle .L612
	jra .L619
.L620:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 172(%a4),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L621
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,172(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d1
	move.w 176(%a4),%d0
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L622
.L621:
	move.w 302(%a2),%d1
	move.w 176(%a4),%d0
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
	move.l 568(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L622
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
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	clr.w 16(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l %a0,12(%a3)
	clr.b 182(%a1)
	move.w %d0,176(%a1)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 316(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
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
	move.w 176(%a3),%a1
	lea (9,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L631
.L629:
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
	move.l 504(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L631:
	move.l 172(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L629
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,172(%a3)
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
	move.l 504(%a2),-(%sp)
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
	clr.b 182(%a1)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 316(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
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
	jne .L640
.L638:
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
	move.l 512(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L640:
	move.l 172(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L638
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,172(%a3)
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
	move.l 512(%a2),-(%sp)
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
	clr.b 182(%a1)
	move.w %d0,176(%a1)
	move.l %a0,288(%a2)
	move.b #1,172(%a2)
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 316(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
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
	move.w 176(%a3),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L650
.L647:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jgt .L651
.L648:
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
	move.l 504(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L651:
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
	move.l 504(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L650:
	move.l 172(%a3),%a1
	tst.w (%a1)
	jeq .L647
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a1),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
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
	jle .L648
	jra .L651
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
	clr.b 182(%a0)
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a2
	move.l %a2,288(%a1)
	clr.w 176(%a0)
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
	move.l 440(%a2),-(%sp)
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
	move.l 592(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 176(%a4)
	jne .L658
	cmp.w #2,16(%a3)
	jeq .L662
.L658:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L663
.L657:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L663:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L657
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L662:
	move.w #1,176(%a4)
	moveq #2,%d0
	cmp.l (%a2),%d0
	jeq .L664
	move.l 316(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L657
	jra .L663
.L664:
	move.l 316(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandler
	addq.l #4,%sp
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L657
	jra .L663
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
	.even
	.globl	__Z22StateBodyKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateBodyKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	clr.b 182(%a0)
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a2
	move.l %a2,288(%a1)
	clr.w 176(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z21StateBodyKicking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateBodyKicking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateBodyKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateBodyKicking_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 444(%a2),-(%sp)
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
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 596(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 176(%a4)
	jne .L671
	cmp.w #2,16(%a3)
	jeq .L674
.L671:
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L675
.L670:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L675:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L670
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L674:
	move.w #1,176(%a4)
	move.l 316(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L670
	jra .L675
	.even
	.globl	__Z22StateBodyKicking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateBodyKicking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateBodyKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateBodyKicking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19StateThrowing_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z19StateThrowing_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	clr.b 182(%a1)
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	move.w raptor_ticks,%a2
	move.l %a2,288(%a0)
	clr.b 179(%a0)
	clr.w 176(%a1)
	move.l (%a0),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jls .L684
.L680:
	move.l 316(%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z12sfxThrowMaleP12SoundHandler
.L684:
	move.b #6,%d1
	cmp.l %d0,%d1
	jcs .L685
	move.l 316(%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z13sfxThrowNinjaP12SoundHandler
.L685:
	move.b #7,%d1
	cmp.l %d0,%d1
	jne .L680
	move.l 316(%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z14sfxThrowFemaleP12SoundHandler
	.even
	.globl	__Z18StateThrowing_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z18StateThrowing_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 179(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20StateThrowing_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z20StateThrowing_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 452(%a2),-(%sp)
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
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l 604(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L691
.L688:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L691:
	move.l 172(%a3),%a0
	tst.w (%a0)
	jeq .L688
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,172(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z19StateThrowing_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z19StateThrowing_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateThrowing_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z25StateThrowing_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateBeingThrown_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateBeingThrown_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a3
	clr.w 16(%a3)
	move.w raptor_ticks,%a2
	move.l %a2,12(%a3)
	clr.b 182(%a1)
	move.w #8,176(%a1)
	clr.w 178(%a1)
	clr.w 180(%a1)
	move.l %a2,288(%a0)
	move.b #1,172(%a0)
	move.w 320(%a0),%d0
	ext.l %d0
	lsl.l #5,%d0
	move.l %d0,12(%fp)
	move.l %a0,8(%fp)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	jra __Z19fighterPositionXAddP7Fighteri
	.even
	.globl	__Z21StateBeingThrown_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateBeingThrown_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 172(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23StateBeingThrown_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z23StateBeingThrown_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,16(%a3)
	jle .L706
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L697
	move.w 176(%a4),%d0
	move.w 320(%a2),%a0
	cmp.w #21,%d0
	jle .L707
	cmp.w #22,%d0
	jeq .L708
	cmp.w #23,%d0
	jeq .L709
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 608(%a2),-(%sp)
	pea 5.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w 320(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 176(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L710
.L704:
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
.L697:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L707:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 608(%a2),-(%sp)
	pea 2.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w 320(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 176(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L704
.L710:
	move.l 310(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 172(%a4),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L704
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,172(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	jra .L697
.L706:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 608(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L708:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 608(%a2),-(%sp)
	pea 3.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w 320(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 176(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L704
	jra .L710
.L709:
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 608(%a2),-(%sp)
	pea 4.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w 320(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 176(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,302(%a2)
	addq.w #1,%d0
	move.w %d0,176(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L704
	jra .L710
	.even
	.globl	__Z22StateBeingThrown_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateBeingThrown_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateBeingThrown_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateBeingThrown_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateTurningAround_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z24StateTurningAround_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 182(%a0)
	clr.w 176(%a0)
	move.l 16(%fp),%a0
	clr.w 16(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23StateTurningAround_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z23StateTurningAround_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 174(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z25StateTurningAround_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z25StateTurningAround_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.w 176(%a4)
	jeq .L726
	tst.w 16(%a3)
	jle .L727
.L722:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L724:
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L726:
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L718
	move.w #1,176(%a4)
	move.w 320(%a2),%d0
	neg.w %d0
	move.w %d0,320(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L728
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d2
	move.l %d2,24(%a0,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l 84(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L718:
	move.w 320(%a2),%a0
	move.l %a0,-(%sp)
	move.w 302(%a2),%a0
	move.l %a0,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L727:
	move.l 172(%a4),%a0
	tst.w (%a0)
	jeq .L722
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,172(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
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
	clr.l -(%sp)
	jra .L724
.L728:
	move.l 4(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #1,%d2
	move.l %d2,24(%a0,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l 84(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L718
	.even
	.globl	__Z24StateTurningAround_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z24StateTurningAround_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z30StateTurningAround_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z30StateTurningAround_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
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
