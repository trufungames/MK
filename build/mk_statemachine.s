#NO_APP
	.text
	.even
	.globl	__Z15stateMachineAddP12StateMachineiP5State
__Z15stateMachineAddP12StateMachineiP5State:
	link.w %fp,#0
	move.l 12(%fp),%d0
	move.l 16(%fp),%a0
	move.l %d0,(%a0)
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
	move.l %a0,140(%a2)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 4(%a0),%a0
	jsr (%a0)
	clr.b 156(%a2)
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
	tst.b 157(%a2)
	jeq .L4
	move.w raptor_ticks,%a0
	cmp.l 158(%a2),%a0
	jlt .L3
	clr.b 157(%a2)
.L4:
	move.l 140(%a2),%a0
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%a0),%a0
	jsr (%a0)
	move.l 140(%a2),%a0
	move.l (%a0),88(%a3)
	lea (12,%sp),%sp
.L3:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 140(%a0),%a1
	move.l 20(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
__Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d4
	move.l 16(%fp),%d2
	move.l 20(%fp),%d3
	move.l 140(%a2),%a0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l %d4,%d0
	add.l %d4,%d0
	add.l %d0,%d0
	move.l (%a2,%d0.l),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d3,16(%fp)
	move.l %d2,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#1052
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
__Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%d0
	move.b #1,157(%a0)
	move.w raptor_ticks,%a1
	add.l 12(%fp),%a1
	move.l %a1,158(%a0)
	move.l 140(%a0),%a1
	move.l 20(%fp),16(%fp)
	move.l %d0,12(%fp)
	move.l 16(%a1),%a0
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
	clr.b 156(%a0)
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
	jeq .L15
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L17
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L17
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L19
	cmp.w #1,320(%a2)
	jeq .L20
.L19:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L21
	cmp.w #-1,320(%a2)
	jeq .L20
.L21:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L22
.L23:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L15:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L17:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L20:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jne .L55
.L22:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L24
	move.w 320(%a2),%d4
	cmp.w #1,%d4
	jeq .L56
	cmp.w #-1,%d4
	jeq .L57
.L24:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L32
	cmp.w #1,320(%a2)
	jeq .L33
.L32:
	tst.l %d1
	jeq .L31
	cmp.w #-1,320(%a2)
	jeq .L33
.L31:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L34
.L35:
	tst.l %d4
	jeq .L36
	cmp.w #1,320(%a2)
	jeq .L37
.L36:
	tst.l %d1
	jeq .L38
	cmp.w #-1,320(%a2)
	jeq .L37
.L38:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jne .L39
.L40:
	move.w 320(%a2),%d5
	cmp.w #1,%d5
	jeq .L58
	cmp.w #-1,%d5
	jeq .L59
.L44:
	tst.l %d3
	jne .L60
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L61
.L48:
	and.l JAGPAD_A,%d0
	jeq .L15
	tst.b 130(%a2)
	jeq .L15
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 52(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L33:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jeq .L31
.L34:
	tst.b 130(%a2)
	jeq .L35
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L37:
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L38
.L39:
	tst.b 130(%a2)
	jeq .L40
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L55:
	and.l JAGPAD_A,%d0
	jeq .L23
	tst.b 130(%a2)
	jeq .L23
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L61:
	tst.b 130(%a2)
	jeq .L48
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 36(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L59:
	tst.l %d1
	jne .L42
	tst.l %d4
	jeq .L44
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
.L62:
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L57:
	tst.l %d1
	jne .L26
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L49
.L50:
	moveq #0,%d4
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L35
	jra .L34
.L56:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L26
	tst.l %d1
	jeq .L50
.L49:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L58:
	tst.l %d4
	jne .L42
	tst.l %d1
	jeq .L44
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
	jra .L62
.L42:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L26:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L60:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a0)
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
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	tst.b 156(%a3)
	jeq .L70
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
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jeq .L71
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L71:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L70:
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
	move.l %a4,-(%sp)
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
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d2
	move.l 240(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L75
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L78
.L75:
	and.l JAGPAD_DOWN,%d0
	jne .L79
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L79:
	move.l 140(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L78:
	move.b #1,156(%a2)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	moveq #1,%d0
	cmp.l 144(%a0),%d0
	jeq .L82
	clr.w 16(%a1)
	clr.b 156(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,288(%a0)
	unlk %fp
	rts
.L82:
	move.w #2,16(%a1)
	clr.b 156(%a0)
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
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	tst.b 156(%a3)
	jeq .L91
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
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jeq .L92
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L92:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L91:
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
	move.l %a4,-(%sp)
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
	jeq .L105
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L98
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L98
	tst.b 130(%a3)
	jeq .L95
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L100
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L100
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L102
	and.l JAGPAD_9,%d0
	jeq .L95
.L102:
	move.l 140(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 68(%a2),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L105:
	move.b #1,156(%a2)
.L95:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L98:
	move.l 140(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L100:
	move.l 140(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 64(%a2),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a0)
	clr.l 144(%a0)
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
	move.w 320(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 144(%a3),%d0
	addq.l #2,%d0
	move.l %d0,144(%a3)
	addq.l #8,%sp
	tst.b 156(%a3)
	jeq .L109
	moveq #31,%d1
	cmp.l %d0,%d1
	jlt .L112
.L109:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L112:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 320(%a2),%d0
	cmp.w #1,%d0
	jeq .L127
	cmp.w #-1,%d0
	jeq .L128
.L117:
	move.b #1,156(%a3)
.L115:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L128:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L117
.L118:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L129
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L121
	tst.b 130(%a2)
	jne .L124
.L121:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L122
	tst.b 130(%a2)
	jne .L124
.L122:
	and.l JAGPAD_A,%d0
	jeq .L115
	tst.b 130(%a2)
	jeq .L115
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L127:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jne .L118
	move.b #1,156(%a3)
	jra .L115
.L124:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L129:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 156(%a0)
	clr.l 144(%a0)
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
	move.l 144(%a3),%d0
	addq.l #2,%d0
	move.l %d0,144(%a3)
	addq.l #8,%sp
	tst.b 156(%a3)
	jeq .L133
	moveq #27,%d1
	cmp.l %d0,%d1
	jlt .L136
.L133:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L136:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	jeq .L151
	cmp.w #-1,%d0
	jeq .L152
.L141:
	move.b #1,156(%a3)
.L139:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L152:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L141
.L142:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L153
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L145
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L145
	tst.b 130(%a2)
	jne .L154
.L145:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L155
	tst.b 130(%a2)
	jne .L156
.L147:
	tst.l %d1
	jeq .L139
	tst.b 130(%a2)
	jeq .L139
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 60(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L151:
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L142
	move.b #1,156(%a3)
	jra .L139
.L155:
	and.l JAGPAD_C,%d0
	jeq .L147
	tst.b 130(%a2)
	jeq .L147
	jra .L156
.L153:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L156:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L154:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a1)
	clr.l 144(%a1)
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
	move.l 144(%a3),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L171
	moveq #18,%d1
	cmp.l %d0,%d1
	jeq .L172
	moveq #19,%d1
	move.w 320(%a2),%a0
	cmp.l %d0,%d1
	jeq .L173
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
.L162:
	move.w raptor_ticks,%a1
	move.l 288(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a1
	jle .L169
	tst.b 220(%a2)
	jne .L169
	move.l 144(%a3),%a0
	move.l %a0,%a5
	add.l #__ZL11JumpOffsets,%a5
	move.w (%a5,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.l %a1,288(%a2)
	moveq #19,%d1
	cmp.l %a0,%d1
	jlt .L174
.L160:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L169:
	move.l 144(%a3),%a0
	moveq #19,%d1
	cmp.l %a0,%d1
	jge .L160
.L174:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L173:
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
	jra .L162
.L171:
	move.w 320(%a2),%a0
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
	jra .L162
.L172:
	move.w 320(%a2),%a0
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
	jra .L162
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
	jne .L178
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L179
.L178:
	tst.b 130(%a2)
	jne .L184
.L179:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L185
	tst.b 130(%a2)
	jne .L186
.L177:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L185:
	and.l JAGPAD_9,%d0
	jeq .L177
	tst.b 130(%a2)
	jeq .L177
.L186:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 76(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L184:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 72(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a1)
	clr.l 144(%a1)
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
	move.w 302(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 500(%a2),-(%sp)
	move.l 144(%a3),-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L195
	tst.b 220(%a2)
	jeq .L193
.L195:
	move.l 144(%a3),%a0
.L192:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L197
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L197:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L193:
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
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
	move.l 144(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a2)
	addq.l #8,%sp
	moveq #5,%d0
	cmp.l %a0,%d0
	jne .L192
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.l 144(%a3),%a0
	addq.l #8,%sp
	jra .L192
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
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d2
	tst.b 130(%a3)
	jeq .L200
	move.l 240(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L202
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L202
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L204
	and.l JAGPAD_7,%d0
	jeq .L200
.L204:
	move.l 140(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 92(%a2),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L200:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L202:
	move.l 140(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 84(%a2),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a1)
	clr.l 144(%a1)
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
	move.w 302(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 500(%a2),-(%sp)
	moveq #19,%d0
	sub.l 144(%a3),%d0
	move.l %d0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L215
	tst.b 220(%a2)
	jeq .L213
.L215:
	move.l 144(%a3),%a0
.L212:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L217
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L217:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L213:
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
	move.l 144(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a2)
	addq.l #8,%sp
	moveq #5,%d0
	cmp.l %a0,%d0
	jne .L212
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.l 144(%a3),%a0
	addq.l #8,%sp
	jra .L212
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
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d2
	tst.b 130(%a3)
	jeq .L220
	move.l 240(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L222
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L222
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L224
	and.l JAGPAD_7,%d0
	jeq .L220
.L224:
	move.l 140(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 96(%a2),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L220:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L222:
	move.l 140(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 88(%a2),%a0
	move.l %a0,140(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
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
	clr.l 144(%a0)
	clr.b 156(%a0)
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
	tst.b 156(%a3)
	jeq .L238
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
	jne .L230
	move.l 240(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L233
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L233
	and.l JAGPAD_DOWN,%d0
	jne .L239
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L238:
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
.L230:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L233:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L239:
	moveq #1,%d0
	move.l %d0,144(%a3)
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	jeq .L243
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L242
	and.l JAGPAD_8,%d0
	jne .L242
.L243:
	move.l 8(%fp),%a0
	move.b #1,156(%a0)
.L242:
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
	clr.l 144(%a1)
	clr.l 152(%a1)
	clr.b 156(%a1)
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
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
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
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 524(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a4)
	jeq .L255
.L250:
	tst.l 144(%a3)
	jle .L251
.L256:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 40(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L255:
	tst.l 152(%a3)
	jne .L250
	moveq #1,%d0
	move.l %d0,152(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 144(%a3)
	jgt .L256
.L251:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L257
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L257:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	jeq .L260
	move.l JAGPAD_C,%d0
	and.l 240(%a0),%d0
	jeq .L260
	addq.l #1,144(%a1)
.L260:
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
	clr.l 144(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,148(%a0)
	clr.l 152(%a0)
	clr.b 156(%a0)
	move.l %a2,288(%a1)
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
	tst.b 156(%a3)
	jne .L267
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
	jeq .L272
.L268:
	tst.l 144(%a3)
	jle .L269
.L273:
	clr.l 144(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,148(%a3)
	clr.l 152(%a3)
.L266:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L267:
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
	lea (32,%sp),%sp
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L269:
	move.w raptor_ticks,%a0
	moveq #29,%d0
	add.l 148(%a3),%d0
	cmp.l %d0,%a0
	jle .L266
	move.b #1,156(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L272:
	tst.l 152(%a3)
	jne .L268
	moveq #1,%d0
	move.l %d0,152(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 144(%a3)
	jgt .L273
	jra .L269
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
	jeq .L276
	move.l JAGPAD_C,%d0
	and.l 240(%a0),%d0
	jeq .L276
	addq.l #1,144(%a1)
.L276:
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
	clr.l 144(%a1)
	clr.l 152(%a1)
	clr.b 156(%a1)
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
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
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
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 532(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a4)
	jeq .L288
.L283:
	tst.l 144(%a3)
	jle .L284
.L289:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 48(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L288:
	tst.l 152(%a3)
	jne .L283
	moveq #1,%d0
	move.l %d0,152(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 144(%a3)
	jgt .L289
.L284:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L290
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L290:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	jeq .L293
	move.l 240(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L297
	addq.l #1,144(%a1)
.L293:
	unlk %fp
	rts
.L297:
	and.l JAGPAD_7,%d0
	jeq .L293
	addq.l #1,144(%a1)
	jra .L293
	.even
	.globl	__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.l 144(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,148(%a0)
	clr.l 152(%a0)
	clr.b 156(%a0)
	move.l %a2,288(%a1)
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
	tst.b 156(%a3)
	jne .L302
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
	jeq .L307
.L303:
	tst.l 144(%a3)
	jle .L304
.L308:
	clr.l 144(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,148(%a3)
	clr.l 152(%a3)
.L301:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L302:
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
	lea (32,%sp),%sp
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L304:
	move.w raptor_ticks,%a0
	moveq #29,%d0
	add.l 148(%a3),%d0
	cmp.l %d0,%a0
	jle .L301
	move.b #1,156(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L307:
	tst.l 152(%a3)
	jne .L303
	moveq #1,%d0
	move.l %d0,152(%a3)
	moveq #0,%d0
	move.b 324(%a2),%d0
	move.l %d0,-(%sp)
	move.l 316(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 144(%a3)
	jgt .L308
	jra .L304
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
	jeq .L311
	move.l 240(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L315
	addq.l #1,144(%a1)
.L311:
	unlk %fp
	rts
.L315:
	and.l JAGPAD_7,%d0
	jeq .L311
	addq.l #1,144(%a1)
	jra .L311
	.even
	.globl	__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
	clr.b 156(%a0)
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
	jeq .L323
.L320:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L324
.L319:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L323:
	tst.l 152(%a4)
	jne .L320
	moveq #1,%d0
	move.l %d0,152(%a4)
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
	jeq .L319
.L324:
	move.l 140(%a4),%a0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,140(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
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
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
	clr.b 156(%a0)
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
	jeq .L334
.L331:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L335
.L330:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L334:
	tst.l 152(%a4)
	jne .L331
	moveq #1,%d0
	move.l %d0,152(%a4)
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
	jeq .L330
.L335:
	move.l 140(%a4),%a0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,140(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
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
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
	clr.b 156(%a0)
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
	jne .L344
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L344:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
	clr.b 156(%a0)
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
	jne .L353
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L353:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
	clr.b 156(%a0)
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
	jne .L362
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L362:
	moveq #1,%d0
	move.l %d0,144(%a3)
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a1)
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
	move.w raptor_ticks,%a1
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a1
	jle .L373
	tst.b 220(%a2)
	jne .L373
	move.l 144(%a3),%a0
	move.l %a0,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.l %a1,288(%a2)
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L375
.L368:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L373:
	move.l 144(%a3),%a0
	moveq #19,%d0
	cmp.l %a0,%d0
	jge .L368
.L375:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a1)
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
	move.w raptor_ticks,%a1
	move.l 288(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a1
	jle .L386
	tst.b 220(%a2)
	jne .L386
	move.l 144(%a3),%a0
	move.l %a0,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.l %a1,288(%a2)
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L388
.L381:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L386:
	move.l 144(%a3),%a0
	moveq #19,%d0
	cmp.l %a0,%d0
	jge .L381
.L388:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
	clr.b 156(%a0)
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
	jne .L397
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L397:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 8(%fp),%a1
	clr.b 156(%a1)
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
	.globl	__Z31StateJumpingKickingForward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z31StateJumpingKickingForward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z33StateJumpingKickingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingKickingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
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
	move.w 302(%a2),%a1
	move.l %a1,-(%sp)
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
	jle .L408
	tst.b 220(%a2)
	jeq .L406
.L408:
	move.l 144(%a3),%a0
.L405:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L410
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L410:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L406:
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
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
	move.l 144(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a2)
	addq.l #8,%sp
	jra .L405
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
	pea 1.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
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
	clr.b 156(%a1)
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
	move.w 302(%a2),%a1
	move.l %a1,-(%sp)
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
	jle .L421
	tst.b 220(%a2)
	jeq .L419
.L421:
	move.l 144(%a3),%a0
.L418:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L423
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L423:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L419:
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
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
	move.l 144(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a2)
	addq.l #8,%sp
	jra .L418
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 8(%fp),%a1
	clr.b 156(%a1)
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
	.globl	__Z32StateJumpingPunchingForward_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingPunchingForward_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z34StateJumpingPunchingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z34StateJumpingPunchingForward_UpdateP12StateMachineP7FighterP14SpriteAnimator:
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
	move.w 302(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a1
	move.l %a1,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L434
	tst.b 220(%a2)
	jeq .L432
.L434:
	move.l 144(%a3),%a0
.L431:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L436
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L436:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L432:
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
	move.l 144(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a2)
	addq.l #8,%sp
	jra .L431
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
	clr.b 156(%a1)
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
	move.w 302(%a2),%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a1
	move.l %a1,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L447
	tst.b 220(%a2)
	jeq .L445
.L447:
	move.l 144(%a3),%a0
.L444:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L449
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L449:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 140(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L445:
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
	move.l 144(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,288(%a2)
	addq.l #8,%sp
	jra .L444
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
	jle .L456
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 156(%a3)
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
.L456:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
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
	jne .L462
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L462:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	jle .L469
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 156(%a3)
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
.L469:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
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
	jne .L475
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L475:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	jle .L482
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 156(%a3)
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
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z18StateHitSweep_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitSweep_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
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
	jne .L488
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L488:
	move.l 316(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 140(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 112(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a1)
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
	jne .L497
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L497:
	move.l 140(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
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
	jle .L504
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 156(%a3)
	clr.l 144(%a3)
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
.L504:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
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
	jeq .L512
.L508:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L513
.L509:
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
	jne .L514
.L507:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L513:
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
	jeq .L507
.L514:
	move.l 140(%a4),%a0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,140(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L512:
	tst.l 144(%a4)
	jne .L508
	moveq #1,%d0
	move.l %d0,144(%a4)
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
	jle .L509
	jra .L513
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
	jle .L521
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 156(%a3)
	clr.l 144(%a3)
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
.L521:
	move.l 140(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,140(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
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
	jeq .L529
.L525:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L530
.L526:
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
	jne .L531
.L524:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L530:
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
	jeq .L524
.L531:
	move.l 140(%a4),%a0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,140(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L529:
	tst.l 144(%a4)
	jne .L525
	moveq #1,%d0
	move.l %d0,144(%a4)
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
	jle .L526
	jra .L530
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
	clr.b 156(%a0)
	clr.l 144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
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
	move.l 144(%a3),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L543
	moveq #8,%d1
	cmp.l %d0,%d1
	jeq .L544
.L539:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L545
.L537:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L545:
	move.w 320(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 144(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w 302(%a2),%d0
	move.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a3)
	addq.l #8,%sp
	moveq #25,%d1
	cmp.l %a0,%d1
	jeq .L546
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a4),%a1
	move.l %a1,-(%sp)
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 576(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L547:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L544:
	tst.l 152(%a3)
	jne .L539
	moveq #1,%d0
	move.l %d0,152(%a3)
	move.l 316(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L537
	jra .L545
.L543:
	tst.l 148(%a3)
	jne .L539
	move.l %d1,148(%a3)
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
	jle .L537
	jra .L545
.L546:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 140(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 128(%a3),%a0
	move.l %a0,140(%a3)
	addq.l #8,%sp
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 4(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d0
	move.l 144(%a3),%a0
	lea (12,%sp),%sp
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a4),%a1
	move.l %a1,-(%sp)
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 576(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L547
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
	clr.b 156(%a0)
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
	jgt .L556
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L556:
	move.l 140(%a4),%a0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 112(%a4),%a0
	move.l %a0,140(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 4(%a0),%a0
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
	clr.b 156(%a0)
	moveq #4,%d0
	move.l %d0,144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
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
	jeq .L568
	cmp.w #3,%d0
	jeq .L569
.L564:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L570
.L562:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L570:
	move.w 320(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 144(%a4),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w 302(%a2),%d0
	move.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a4)
	addq.l #8,%sp
	moveq #25,%d1
	cmp.l %a0,%d1
	jeq .L571
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L572:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L569:
	tst.l 152(%a4)
	jne .L564
	moveq #1,%d1
	move.l %d1,152(%a4)
	move.l 316(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L562
	jra .L570
.L568:
	tst.l 148(%a4)
	jne .L564
	moveq #1,%d0
	move.l %d0,148(%a4)
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
	jle .L562
	jra .L570
.L571:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 140(%a4),%a0
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,140(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 4(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d0
	move.l 144(%a4),%a0
	lea (12,%sp),%sp
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L572
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
	clr.b 156(%a0)
	moveq #4,%d0
	move.l %d0,144(%a0)
	clr.l 148(%a0)
	clr.l 152(%a0)
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
	jeq .L583
.L579:
	move.l 288(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L584
.L578:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L584:
	move.w 320(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 144(%a4),%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w 302(%a2),%d0
	move.w %d0,302(%a2)
	addq.l #1,%a0
	move.l %a0,144(%a4)
	addq.l #8,%sp
	moveq #25,%d1
	cmp.l %a0,%d1
	jeq .L585
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
.L586:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L583:
	tst.l 148(%a4)
	jne .L579
	moveq #1,%d0
	move.l %d0,148(%a4)
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
	jle .L578
	jra .L584
.L585:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 316(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 140(%a4),%a0
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,140(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 4(%a0),%a0
	jsr (%a0)
	move.w 302(%a2),%d0
	move.l 144(%a4),%a0
	lea (12,%sp),%sp
	move.w 320(%a2),%a1
	move.l %a1,-(%sp)
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 300(%a2),%a1
	move.l %a1,-(%sp)
	move.w 18(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 576(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,288(%a2)
	lea (36,%sp),%sp
	jra .L586
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
