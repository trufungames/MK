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
	move.l %a0,44(%a2)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 4(%a0),%a0
	jsr (%a0)
	clr.b 60(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator
__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 44(%a0),%a1
	move.l 12(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 44(%a0),%a1
	move.l 16(%a1),%a0
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
	move.l 44(%a2),%a0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l %d4,%d0
	add.l %d4,%d0
	add.l %d0,%d0
	move.l (%a2,%d0.l),%a0
	move.l %a0,44(%a2)
	lea (12,%sp),%sp
	move.l %d3,16(%fp)
	move.l %d2,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#1052
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
	clr.b 60(%a0)
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
	move.w 312(%a0),%a1
	move.l %a1,-(%sp)
	move.w 294(%a0),%a1
	move.l %a1,-(%sp)
	move.w 292(%a0),%a1
	move.l %a1,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a0),%a1
	move.l %a1,-(%sp)
	move.l 460(%a0),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z21StateIdle_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z21StateIdle_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 210(%a2)
	jeq .L9
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L11
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L11
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L34
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	move.w 312(%a2),%d3
	tst.l %d1
	jne .L35
	cmp.w #1,%d3
	jeq .L36
	cmp.w #-1,%d3
	jeq .L37
.L24:
	and.l JAGPAD_C,%d0
	jeq .L9
.L41:
	tst.b 122(%a2)
	jeq .L9
	clr.b 122(%a2)
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 36(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L9:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L11:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L35:
	cmp.w #1,%d3
	jeq .L38
	cmp.w #-1,%d3
	jeq .L39
.L18:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L34:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L37:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L40
.L22:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L39:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jne .L16
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jne .L27
	jne .L25
.L26:
	tst.l %d1
	jne .L18
	and.l JAGPAD_C,%d0
	jne .L41
	jra .L9
.L36:
	move.l JAGPAD_RIGHT,%d1
	and.l %d0,%d1
	jne .L22
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L24
.L25:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L40:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L26
	jra .L25
.L38:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jne .L16
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L26
.L27:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L16:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z19StateBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z19StateBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a0
	clr.w 16(%a0)
	move.l 8(%fp),%a0
	clr.b 60(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
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
	tst.b 60(%a3)
	jeq .L49
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jeq .L50
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L50:
	move.l 44(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L49:
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
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
	move.l 232(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L53
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L56
.L53:
	and.l JAGPAD_DOWN,%d0
	jne .L57
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L57:
	move.l 44(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,44(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L56:
	move.b #1,60(%a2)
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
	cmp.l 48(%a0),%d0
	jeq .L60
	clr.w 16(%a1)
	clr.b 60(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
	unlk %fp
	rts
.L60:
	move.w #2,16(%a1)
	clr.b 60(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
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
	tst.b 60(%a3)
	jeq .L69
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jeq .L70
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L70:
	move.l 44(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L69:
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
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
	move.l 232(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L77
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L75
	and.l JAGPAD_8,%d0
	jeq .L72
.L75:
	move.l 44(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,44(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L77:
	move.b #1,60(%a2)
.L72:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 60(%a0)
	clr.l 48(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
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
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 312(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 48(%a3),%d0
	addq.l #2,%d0
	move.l %d0,48(%a3)
	addq.l #8,%sp
	tst.b 60(%a3)
	jeq .L81
	moveq #31,%d1
	cmp.l %d0,%d1
	jlt .L84
.L81:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L84:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z31StateWalkingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateWalkingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 312(%a2),%d0
	cmp.w #1,%d0
	jeq .L93
	cmp.w #-1,%d0
	jeq .L94
.L88:
	move.b #1,60(%a3)
.L86:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L94:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L88
.L89:
	and.l JAGPAD_UP,%d0
	jeq .L86
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L93:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jne .L89
	move.b #1,60(%a3)
	jra .L86
	.even
	.globl	__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 60(%a0)
	clr.l 48(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
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
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 312(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 48(%a3),%d0
	addq.l #2,%d0
	move.l %d0,48(%a3)
	addq.l #8,%sp
	tst.b 60(%a3)
	jeq .L98
	moveq #27,%d1
	cmp.l %d0,%d1
	jlt .L101
.L98:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L101:
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z32StateWalkingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateWalkingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 312(%a2),%d0
	cmp.w #1,%d0
	jeq .L110
	cmp.w #-1,%d0
	jeq .L111
.L105:
	move.b #1,60(%a3)
.L103:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L111:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L105
.L106:
	and.l JAGPAD_UP,%d0
	jeq .L103
	move.l 44(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L110:
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L106
	move.b #1,60(%a3)
	jra .L103
	.even
	.globl	__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 60(%a1)
	clr.l 48(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
	moveq #0,%d0
	move.b 316(%a0),%d0
	move.l %d0,16(%fp)
	move.l 308(%a0),12(%fp)
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
	move.l 48(%a3),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L126
	moveq #18,%d1
	cmp.l %d0,%d1
	jeq .L127
	moveq #19,%d1
	move.w 312(%a2),%a0
	cmp.l %d0,%d1
	jeq .L128
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 480(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L117:
	move.w raptor_ticks,%a1
	move.l 280(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a1
	jle .L124
	tst.b 212(%a2)
	jne .L124
	move.l 48(%a3),%a0
	move.l %a0,%a5
	add.l #__ZL11JumpOffsets,%a5
	move.w (%a5,%a0.l),%d0
	add.w %d0,294(%a2)
	addq.l #1,%a0
	move.l %a0,48(%a3)
	move.l %a1,280(%a2)
	moveq #19,%d1
	cmp.l %a0,%d1
	jlt .L129
.L115:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L124:
	move.l 48(%a3),%a0
	moveq #19,%d1
	cmp.l %a0,%d1
	jge .L115
.L129:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 44(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L128:
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 480(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L117
.L126:
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 480(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L117
.L127:
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 480(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L117
	.even
	.globl	__Z24StateJumping_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateJumping_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateJumpingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateJumpingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 60(%a1)
	clr.l 48(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
	moveq #0,%d0
	move.b 316(%a0),%d0
	move.l %d0,16(%fp)
	move.l 308(%a0),12(%fp)
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
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 484(%a2),-(%sp)
	move.l 48(%a3),-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 280(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L139
	tst.b 212(%a2)
	jeq .L137
.L139:
	move.l 48(%a3),%a0
.L136:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L141
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L141:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 44(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L137:
	move.w 312(%a2),%a1
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
	move.l 48(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,294(%a2)
	addq.l #1,%a0
	move.l %a0,48(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,280(%a2)
	addq.l #8,%sp
	moveq #5,%d0
	cmp.l %a0,%d0
	jne .L136
	moveq #0,%d0
	move.b 316(%a2),%d0
	move.l %d0,-(%sp)
	move.l 308(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.l 48(%a3),%a0
	addq.l #8,%sp
	jra .L136
	.even
	.globl	__Z31StateJumpingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateJumpingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z26StateJumpingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateJumpingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 60(%a1)
	clr.l 48(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
	moveq #0,%d0
	move.b 316(%a0),%d0
	move.l %d0,16(%fp)
	move.l 308(%a0),12(%fp)
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
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a1
	move.l %a1,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 484(%a2),-(%sp)
	moveq #19,%d0
	sub.l 48(%a3),%d0
	move.l %d0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 280(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L151
	tst.b 212(%a2)
	jeq .L149
.L151:
	move.l 48(%a3),%a0
.L148:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L153
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L153:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 44(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L149:
	move.w 312(%a2),%a0
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
	move.l 48(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,294(%a2)
	addq.l #1,%a0
	move.l %a0,48(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,280(%a2)
	addq.l #8,%sp
	moveq #5,%d0
	cmp.l %a0,%d0
	jne .L148
	moveq #0,%d0
	move.b 316(%a2),%d0
	move.l %d0,-(%sp)
	move.l 308(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.l 48(%a3),%a0
	addq.l #8,%sp
	jra .L148
	.even
	.globl	__Z32StateJumpingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateDuckBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateDuckBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.l 48(%a0)
	clr.b 60(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,280(%a0)
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
	tst.b 60(%a3)
	jeq .L166
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 500(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jne .L158
	move.l 232(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L161
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L161
	and.l JAGPAD_DOWN,%d0
	jne .L167
	move.l 44(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L166:
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 500(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L158:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L161:
	move.l 44(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L167:
	moveq #1,%d0
	move.l %d0,48(%a3)
	move.l 44(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z29StateDuckBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateDuckBlocking_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 232(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L170
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L169
	and.l JAGPAD_8,%d0
	jne .L169
.L170:
	move.l 8(%fp),%a0
	move.b #1,60(%a0)
.L169:
	unlk %fp
	rts
	.even
	.globl	__Z22StateLowPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateLowPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.l 48(%a0)
	clr.l 56(%a0)
	clr.b 60(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,280(%a1)
	move.l 308(%a1),8(%fp)
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
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a4)
	jeq .L182
.L177:
	tst.l 48(%a3)
	jle .L178
.L183:
	move.l 44(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 40(%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L182:
	tst.l 56(%a3)
	jne .L177
	moveq #1,%d0
	move.l %d0,56(%a3)
	moveq #0,%d0
	move.b 316(%a2),%d0
	move.l %d0,-(%sp)
	move.l 308(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 48(%a3)
	jgt .L183
.L178:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L184
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L184:
	move.l 44(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z28StateLowPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateLowPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 122(%a0)
	jeq .L186
	move.l JAGPAD_C,%d0
	and.l 232(%a0),%d0
	jeq .L186
	addq.l #1,48(%a1)
.L186:
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
	clr.l 48(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,52(%a0)
	clr.l 56(%a0)
	clr.b 60(%a0)
	move.l %a2,280(%a1)
	move.l 308(%a1),8(%fp)
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
	tst.b 60(%a3)
	jne .L193
	move.l 400(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L198
.L194:
	tst.l 48(%a3)
	jle .L195
.L199:
	clr.l 48(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,52(%a3)
	clr.l 56(%a3)
.L192:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L193:
	move.w 312(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l 44(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,44(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L195:
	move.w raptor_ticks,%a0
	moveq #29,%d0
	add.l 52(%a3),%d0
	cmp.l %d0,%a0
	jle .L192
	move.b #1,60(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L198:
	tst.l 56(%a3)
	jne .L194
	moveq #1,%d0
	move.l %d0,56(%a3)
	moveq #0,%d0
	move.b 316(%a2),%d0
	move.l %d0,-(%sp)
	move.l 308(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 48(%a3)
	jgt .L199
	jra .L195
	.even
	.globl	__Z34StateLowRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z34StateLowRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 122(%a0)
	jeq .L201
	move.l JAGPAD_C,%d0
	and.l 232(%a0),%d0
	jeq .L201
	addq.l #1,48(%a1)
.L201:
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
