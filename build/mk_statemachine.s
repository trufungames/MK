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
	move.l %a0,28(%a2)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 4(%a0),%a0
	jsr (%a0)
	clr.b 44(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator
__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 28(%a0),%a1
	move.l 12(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 28(%a0),%a1
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
	move.l 28(%a2),%a0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l %d4,%d0
	add.l %d4,%d0
	add.l %d0,%d0
	move.l (%a2,%d0.l),%a0
	move.l %a0,28(%a2)
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
	clr.b 44(%a0)
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
	jne .L27
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	move.w 310(%a2),%d3
	tst.l %d1
	jeq .L14
	cmp.w #1,%d3
	jeq .L28
	cmp.w #-1,%d3
	jeq .L29
.L18:
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L11:
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L29:
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jne .L16
.L19:
	and.l JAGPAD_RIGHT,%d0
	jne .L22
.L23:
	tst.l %d1
	jne .L18
.L9:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L14:
	cmp.w #1,%d3
	jeq .L30
	cmp.w #-1,%d3
	jne .L9
	move.l %d0,%d3
	and.l JAGPAD_LEFT,%d3
	jeq .L19
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
.L31:
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L27:
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L28:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jne .L16
.L17:
	and.l JAGPAD_LEFT,%d0
	jeq .L23
.L22:
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L16:
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L30:
	move.l JAGPAD_RIGHT,%d3
	and.l %d0,%d3
	jeq .L17
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
	jra .L31
	.even
	.globl	__Z19StateBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z19StateBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a0
	clr.w 16(%a0)
	move.l 8(%fp),%a0
	clr.b 44(%a0)
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
	tst.b 44(%a3)
	jeq .L39
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
	jeq .L40
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L40:
	move.l 28(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L39:
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
	jne .L42
	and.l JAGPAD_8,%d0
	jne .L42
	move.l 8(%fp),%a0
	move.b #1,44(%a0)
.L42:
	unlk %fp
	rts
	.even
	.globl	__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a0
	clr.w 16(%a0)
	move.l 8(%fp),%a0
	clr.b 44(%a0)
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
	tst.b 44(%a3)
	jeq .L52
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
	jeq .L53
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L53:
	move.l 28(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L52:
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
	jne .L55
	move.l 8(%fp),%a0
	move.b #1,44(%a0)
.L55:
	unlk %fp
	rts
	.even
	.globl	__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 44(%a0)
	clr.l 32(%a0)
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
	move.l 32(%a3),%d0
	addq.l #2,%d0
	move.l %d0,32(%a3)
	addq.l #8,%sp
	tst.b 44(%a3)
	jeq .L61
	moveq #31,%d1
	cmp.l %d0,%d1
	jlt .L64
.L61:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L64:
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,28(%a3)
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
	move.l 12(%fp),%a0
	move.w 310(%a0),%d0
	cmp.w #1,%d0
	jeq .L72
	cmp.w #-1,%d0
	jeq .L73
	move.l 8(%fp),%a0
	move.b #1,44(%a0)
.L66:
	unlk %fp
	rts
.L73:
	move.l JAGPAD_LEFT,%d0
	and.l 230(%a0),%d0
	jne .L66
	move.l 8(%fp),%a0
	move.b #1,44(%a0)
	jra .L66
.L72:
	move.l JAGPAD_RIGHT,%d0
	and.l 230(%a0),%d0
	jne .L66
	move.l 8(%fp),%a0
	move.b #1,44(%a0)
	jra .L66
	.even
	.globl	__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 44(%a0)
	clr.l 32(%a0)
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
	move.l 32(%a3),%d0
	addq.l #2,%d0
	move.l %d0,32(%a3)
	addq.l #8,%sp
	tst.b 44(%a3)
	jeq .L77
	moveq #27,%d1
	cmp.l %d0,%d1
	jlt .L80
.L77:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L80:
	move.l 28(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,28(%a3)
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
	move.l 12(%fp),%a0
	move.w 310(%a0),%d0
	cmp.w #1,%d0
	jeq .L88
	cmp.w #-1,%d0
	jeq .L89
	move.l 8(%fp),%a0
	move.b #1,44(%a0)
.L82:
	unlk %fp
	rts
.L89:
	move.l JAGPAD_RIGHT,%d0
	and.l 230(%a0),%d0
	jne .L82
	move.l 8(%fp),%a0
	move.b #1,44(%a0)
	jra .L82
.L88:
	move.l JAGPAD_LEFT,%d0
	and.l 230(%a0),%d0
	jne .L82
	move.l 8(%fp),%a0
	move.b #1,44(%a0)
	jra .L82
	.even
	.globl	__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 44(%a0)
	clr.l 32(%a0)
	unlk %fp
	rts
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
	move.l 32(%a3),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L104
	moveq #18,%d1
	cmp.l %d0,%d1
	jeq .L105
	moveq #19,%d1
	move.w 310(%a2),%a0
	cmp.l %d0,%d1
	jeq .L106
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
.L95:
	move.w raptor_ticks,%a1
	move.l 278(%a2),%d0
	addq.l #2,%d0
	cmp.l %d0,%a1
	jle .L102
	tst.b 210(%a2)
	jne .L102
	move.l 32(%a3),%a0
	move.l %a0,%a5
	add.l #__ZL11JumpOffsets,%a5
	move.w (%a5,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,32(%a3)
	move.l %a1,278(%a2)
	moveq #19,%d1
	cmp.l %a0,%d1
	jlt .L107
.L93:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L102:
	move.l 32(%a3),%a0
	moveq #19,%d1
	cmp.l %a0,%d1
	jge .L93
.L107:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 28(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L106:
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
	jra .L95
.L104:
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
	jra .L95
.L105:
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
	jra .L95
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
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.b 44(%a0)
	clr.l 32(%a0)
	unlk %fp
	rts
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
	move.l 32(%a3),-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 278(%a2),%d0
	addq.l #2,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L117
	tst.b 210(%a2)
	jeq .L115
.L117:
	move.l 32(%a3),%a0
.L114:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L119
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L119:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 28(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,28(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L115:
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
	move.l 32(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,292(%a2)
	addq.l #1,%a0
	move.l %a0,32(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,278(%a2)
	addq.l #8,%sp
	jra .L114
	.even
	.globl	__Z31StateJumpingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateJumpingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
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
