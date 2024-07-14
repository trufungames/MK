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
	move.l %a0,32(%a2)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 4(%a0),%a0
	jsr (%a0)
	clr.b 48(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator
__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 32(%a0),%a1
	move.l 12(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 32(%a0),%a1
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
	move.l 32(%a2),%a0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l %d4,%d0
	add.l %d4,%d0
	add.l %d0,%d0
	move.l (%a2,%d0.l),%a0
	move.l %a0,32(%a2)
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
	clr.b 48(%a0)
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
	move.w 310(%a0),%a1
	move.l %a1,-(%sp)
	move.w 292(%a0),%a1
	move.l %a1,-(%sp)
	move.w 290(%a0),%a1
	move.l %a1,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a0),%a1
	move.l %a1,-(%sp)
	move.l 454(%a0),-(%sp)
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
	tst.b 208(%a2)
	jeq .L9
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L11
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L11
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L32
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	move.w 310(%a2),%d3
	tst.l %d1
	jeq .L14
	cmp.w #1,%d3
	jeq .L33
	cmp.w #-1,%d3
	jeq .L34
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
.L30:
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L11:
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L14:
	cmp.w #1,%d3
	jeq .L35
	cmp.w #-1,%d3
	jeq .L36
.L9:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L32:
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L36:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L37
.L22:
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L34:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jne .L16
	and.l JAGPAD_RIGHT,%d0
	jne .L26
	jne .L24
.L25:
	tst.l %d1
	jeq .L9
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
	jra .L30
.L35:
	move.l JAGPAD_RIGHT,%d1
	and.l %d0,%d1
	jne .L22
	and.l JAGPAD_LEFT,%d0
	jeq .L9
.L24:
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L37:
	and.l JAGPAD_RIGHT,%d0
	jeq .L25
	jra .L24
.L33:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jne .L16
	and.l JAGPAD_LEFT,%d0
	jeq .L25
.L26:
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L16:
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,32(%a3)
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
	clr.b 48(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,278(%a0)
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
	tst.b 48(%a3)
	jeq .L45
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jeq .L46
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L46:
	move.l 32(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L45:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
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
	move.l 12(%fp),%a0
	move.l 230(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L48
	and.l JAGPAD_8,%d0
	jne .L48
	move.l 8(%fp),%a0
	move.b #1,48(%a0)
.L48:
	unlk %fp
	rts
	.even
	.globl	__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a0
	clr.w 16(%a0)
	move.l 8(%fp),%a0
	clr.b 48(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,278(%a0)
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
	tst.b 48(%a3)
	jeq .L58
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jeq .L59
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L59:
	move.l 32(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L58:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
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
	move.l 12(%fp),%a0
	move.l JAGPAD_DOWN,%d0
	and.l 230(%a0),%d0
	jne .L61
	move.l 8(%fp),%a0
	move.b #1,48(%a0)
.L61:
	unlk %fp
	rts
	.even
	.globl	__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 48(%a0)
	clr.l 36(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,278(%a0)
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
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 310(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 36(%a3),%d0
	addq.l #2,%d0
	move.l %d0,36(%a3)
	addq.l #8,%sp
	tst.b 48(%a3)
	jeq .L67
	moveq #31,%d1
	cmp.l %d0,%d1
	jlt .L70
.L67:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L70:
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,32(%a3)
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
	move.w 310(%a2),%d0
	cmp.w #1,%d0
	jeq .L79
	cmp.w #-1,%d0
	jeq .L80
.L74:
	move.b #1,48(%a3)
.L72:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L80:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L74
.L75:
	and.l JAGPAD_UP,%d0
	jeq .L72
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L79:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jne .L75
	move.b #1,48(%a3)
	jra .L72
	.even
	.globl	__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 48(%a0)
	clr.l 36(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,278(%a0)
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
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 466(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 310(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 36(%a3),%d0
	addq.l #2,%d0
	move.l %d0,36(%a3)
	addq.l #8,%sp
	tst.b 48(%a3)
	jeq .L84
	moveq #27,%d1
	cmp.l %d0,%d1
	jlt .L87
.L84:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L87:
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,32(%a3)
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
	move.w 310(%a2),%d0
	cmp.w #1,%d0
	jeq .L96
	cmp.w #-1,%d0
	jeq .L97
.L91:
	move.b #1,48(%a3)
.L89:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L97:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L91
.L92:
	and.l JAGPAD_UP,%d0
	jeq .L89
	move.l 32(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L96:
	move.l 230(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L92
	move.b #1,48(%a3)
	jra .L89
	.even
	.globl	__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.b 48(%a1)
	clr.l 36(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,278(%a0)
	moveq #0,%d0
	move.b 314(%a0),%d0
	move.l %d0,16(%fp)
	move.l 306(%a0),12(%fp)
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
	move.l 36(%a3),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L112
	moveq #18,%d1
	cmp.l %d0,%d1
	jeq .L113
	moveq #19,%d1
	move.w 310(%a2),%a0
	cmp.l %d0,%d1
	jeq .L114
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 474(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L103:
	move.w raptor_ticks,%a1
	move.l 278(%a2),%d0
	addq.l #2,%d0
	cmp.l %d0,%a1
	jle .L110
	tst.b 210(%a2)
	jne .L110
	move.l 36(%a3),%a0
	move.l %a0,%a5
	add.l #__ZL11JumpOffsets,%a5
	move.w (%a5,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,36(%a3)
	move.l %a1,278(%a2)
	moveq #19,%d1
	cmp.l %a0,%d1
	jlt .L115
.L101:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L110:
	move.l 36(%a3),%a0
	moveq #19,%d1
	cmp.l %a0,%d1
	jge .L101
.L115:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 32(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L114:
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 474(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L103
.L112:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 474(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L103
.L113:
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a0
	move.l %a0,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 474(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L103
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
	clr.b 48(%a1)
	clr.l 36(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,278(%a0)
	moveq #0,%d0
	move.b 314(%a0),%d0
	move.l %d0,16(%fp)
	move.l 306(%a0),12(%fp)
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
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 478(%a2),-(%sp)
	move.l 36(%a3),-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 278(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L125
	tst.b 210(%a2)
	jeq .L123
.L125:
	move.l 36(%a3),%a0
.L122:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L127
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L127:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 32(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L123:
	move.w 310(%a2),%a1
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
	move.l 36(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,36(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,278(%a2)
	addq.l #8,%sp
	moveq #5,%d0
	cmp.l %a0,%d0
	jne .L122
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.l 36(%a3),%a0
	addq.l #8,%sp
	jra .L122
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
	clr.b 48(%a1)
	clr.l 36(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,278(%a0)
	moveq #0,%d0
	move.b 314(%a0),%d0
	move.l %d0,16(%fp)
	move.l 306(%a0),12(%fp)
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
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	move.w 292(%a2),%a1
	move.l %a1,-(%sp)
	move.w 290(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 478(%a2),-(%sp)
	moveq #19,%d0
	sub.l 36(%a3),%d0
	move.l %d0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 278(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L137
	tst.b 210(%a2)
	jeq .L135
.L137:
	move.l 36(%a3),%a0
.L134:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L139
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L139:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 32(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,32(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L135:
	move.w 310(%a2),%a0
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
	move.l 36(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,36(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,278(%a2)
	addq.l #8,%sp
	moveq #5,%d0
	cmp.l %a0,%d0
	jne .L134
	moveq #0,%d0
	move.b 314(%a2),%d0
	move.l %d0,-(%sp)
	move.l 306(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.l 36(%a3),%a0
	addq.l #8,%sp
	jra .L134
	.even
	.globl	__Z32StateJumpingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
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
