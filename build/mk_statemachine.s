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
	move.l %a0,100(%a2)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 4(%a0),%a0
	jsr (%a0)
	clr.b 116(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator
__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 100(%a0),%a1
	move.l 12(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 100(%a0),%a1
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
	move.l 100(%a2),%a0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l %d4,%d0
	add.l %d4,%d0
	add.l %d0,%d0
	move.l (%a2,%d0.l),%a0
	move.l %a0,100(%a2)
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
	clr.b 116(%a0)
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
	move.w 314(%a0),%a1
	move.l %a1,-(%sp)
	move.w 296(%a0),%a1
	move.l %a1,-(%sp)
	move.w 294(%a0),%a1
	move.l %a1,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a0),%a1
	move.l %a1,-(%sp)
	move.l 466(%a0),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
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
	tst.b 212(%a2)
	jeq .L9
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L11
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L11
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L13
	cmp.w #1,314(%a2)
	jeq .L14
.L13:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L15
	cmp.w #-1,314(%a2)
	jeq .L14
.L15:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L16
.L17:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L9:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L11:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L14:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jne .L49
.L16:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L18
	move.w 314(%a2),%d4
	cmp.w #1,%d4
	jeq .L50
	cmp.w #-1,%d4
	jeq .L51
.L18:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L26
	cmp.w #1,314(%a2)
	jeq .L27
.L26:
	tst.l %d1
	jeq .L25
	cmp.w #-1,314(%a2)
	jeq .L27
.L25:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L28
.L29:
	tst.l %d4
	jeq .L30
	cmp.w #1,314(%a2)
	jeq .L31
.L30:
	tst.l %d1
	jeq .L32
	cmp.w #-1,314(%a2)
	jeq .L31
.L32:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jne .L33
.L34:
	move.w 314(%a2),%d5
	cmp.w #1,%d5
	jeq .L52
	cmp.w #-1,%d5
	jeq .L53
.L38:
	tst.l %d3
	jne .L54
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L55
.L42:
	and.l JAGPAD_A,%d0
	jeq .L9
	tst.b 124(%a2)
	jeq .L9
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 52(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L27:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jeq .L25
.L28:
	tst.b 124(%a2)
	jeq .L29
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L31:
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jeq .L32
.L33:
	tst.b 124(%a2)
	jeq .L34
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L49:
	and.l JAGPAD_A,%d0
	jeq .L17
	tst.b 124(%a2)
	jeq .L17
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L55:
	tst.b 124(%a2)
	jeq .L42
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 36(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L53:
	tst.l %d1
	jne .L36
	tst.l %d4
	jeq .L38
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
.L56:
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L51:
	tst.l %d1
	jne .L20
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L43
.L44:
	moveq #0,%d4
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L29
	jra .L28
.L50:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L20
	tst.l %d1
	jeq .L44
.L43:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L52:
	tst.l %d4
	jne .L36
	tst.l %d1
	jeq .L38
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
	jra .L56
.L36:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L20:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L54:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
	move.l %a0,100(%a3)
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
	clr.b 116(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
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
	tst.b 116(%a3)
	jeq .L64
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jeq .L65
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L65:
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L64:
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
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
	move.l 234(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L68
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L71
.L68:
	and.l JAGPAD_DOWN,%d0
	jne .L72
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L72:
	move.l 100(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,100(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L71:
	move.b #1,116(%a2)
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
	cmp.l 104(%a0),%d0
	jeq .L75
	clr.w 16(%a1)
	clr.b 116(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	unlk %fp
	rts
.L75:
	move.w #2,16(%a1)
	clr.b 116(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
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
	tst.b 116(%a3)
	jeq .L84
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jeq .L85
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L85:
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L84:
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
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
	move.l 234(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L97
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L90
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L90
	tst.b 124(%a3)
	jeq .L87
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L92
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L92
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L94
	and.l JAGPAD_9,%d0
	jeq .L87
.L94:
	move.l 100(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 68(%a2),%a0
	move.l %a0,100(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L97:
	move.b #1,116(%a2)
.L87:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L90:
	move.l 100(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,100(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L92:
	move.l 100(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 64(%a2),%a0
	move.l %a0,100(%a2)
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
	clr.b 116(%a0)
	clr.l 104(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 314(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 104(%a3),%d0
	addq.l #2,%d0
	move.l %d0,104(%a3)
	addq.l #8,%sp
	tst.b 116(%a3)
	jeq .L101
	moveq #31,%d1
	cmp.l %d0,%d1
	jlt .L104
.L101:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L104:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
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
	move.w 314(%a2),%d0
	cmp.w #1,%d0
	jeq .L118
	cmp.w #-1,%d0
	jeq .L119
.L108:
	move.b #1,116(%a3)
.L106:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L119:
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L108
.L109:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L120
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L112
	tst.b 124(%a2)
	jne .L115
.L112:
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L113
	tst.b 124(%a2)
	jne .L115
.L113:
	and.l JAGPAD_A,%d0
	jeq .L106
	tst.b 124(%a2)
	jeq .L106
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L118:
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jne .L109
	move.b #1,116(%a3)
	jra .L106
.L115:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L120:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,100(%a3)
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
	clr.b 116(%a0)
	clr.l 104(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 314(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 104(%a3),%d0
	addq.l #2,%d0
	move.l %d0,104(%a3)
	addq.l #8,%sp
	tst.b 116(%a3)
	jeq .L124
	moveq #27,%d1
	cmp.l %d0,%d1
	jlt .L127
.L124:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L127:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
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
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 314(%a2),%d0
	cmp.w #1,%d0
	jeq .L141
	cmp.w #-1,%d0
	jeq .L142
.L131:
	move.b #1,116(%a3)
.L129:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L142:
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L131
.L132:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L143
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L135
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L135
	tst.b 124(%a2)
	jne .L144
.L135:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L145
	tst.b 124(%a2)
	jne .L146
.L137:
	tst.l %d1
	jeq .L129
	tst.b 124(%a2)
	jeq .L129
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 60(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L141:
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L132
	move.b #1,116(%a3)
	jra .L129
.L145:
	and.l JAGPAD_C,%d0
	jeq .L137
	tst.b 124(%a2)
	jeq .L137
	jra .L146
.L143:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L146:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L144:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,100(%a3)
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
	clr.b 116(%a1)
	clr.l 104(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.l 104(%a3),%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jcc .L161
	moveq #18,%d1
	cmp.l %d0,%d1
	jeq .L162
	moveq #19,%d1
	move.w 314(%a2),%a0
	cmp.l %d0,%d1
	jeq .L163
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 486(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L152:
	move.w raptor_ticks,%a1
	move.l 282(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a1
	jle .L159
	tst.b 214(%a2)
	jne .L159
	move.l 104(%a3),%a0
	move.l %a0,%a5
	add.l #__ZL11JumpOffsets,%a5
	move.w (%a5,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.l %a1,282(%a2)
	moveq #19,%d1
	cmp.l %a0,%d1
	jlt .L164
.L150:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L159:
	move.l 104(%a3),%a0
	moveq #19,%d1
	cmp.l %a0,%d1
	jge .L150
.L164:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L163:
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 486(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L152
.L161:
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 486(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L152
.L162:
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 486(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L152
	.even
	.globl	__Z24StateJumping_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateJumping_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L167
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L168
.L167:
	tst.b 124(%a2)
	jne .L173
.L168:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L174
	tst.b 124(%a2)
	jne .L175
.L166:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L174:
	and.l JAGPAD_9,%d0
	jeq .L166
	tst.b 124(%a2)
	jeq .L166
.L175:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 76(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L173:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 72(%a3),%a0
	move.l %a0,100(%a3)
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
	clr.b 116(%a1)
	clr.l 104(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a1
	move.l %a1,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 490(%a2),-(%sp)
	move.l 104(%a3),-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 282(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L184
	tst.b 214(%a2)
	jeq .L182
.L184:
	move.l 104(%a3),%a0
.L181:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L186
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L186:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L182:
	move.w 314(%a2),%a1
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
	move.l 104(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a2)
	addq.l #8,%sp
	moveq #5,%d0
	cmp.l %a0,%d0
	jne .L181
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.l 104(%a3),%a0
	addq.l #8,%sp
	jra .L181
	.even
	.globl	__Z31StateJumpingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateJumpingForward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d2
	tst.b 124(%a3)
	jeq .L188
	move.l 234(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L190
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L190
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L192
	and.l JAGPAD_7,%d0
	jeq .L188
.L192:
	move.l 100(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 92(%a2),%a0
	move.l %a0,100(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L188:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L190:
	move.l 100(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 84(%a2),%a0
	move.l %a0,100(%a2)
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
	clr.b 116(%a1)
	clr.l 104(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a1
	move.l %a1,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 490(%a2),-(%sp)
	moveq #19,%d0
	sub.l 104(%a3),%d0
	move.l %d0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 282(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L203
	tst.b 214(%a2)
	jeq .L201
.L203:
	move.l 104(%a3),%a0
.L200:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L205
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L205:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L201:
	move.w 314(%a2),%a0
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
	move.l 104(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a2)
	addq.l #8,%sp
	moveq #5,%d0
	cmp.l %a0,%d0
	jne .L200
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandlerb
	move.l 104(%a3),%a0
	addq.l #8,%sp
	jra .L200
	.even
	.globl	__Z32StateJumpingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d2
	tst.b 124(%a3)
	jeq .L207
	move.l 234(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L209
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L209
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L211
	and.l JAGPAD_7,%d0
	jeq .L207
.L211:
	move.l 100(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 96(%a2),%a0
	move.l %a0,100(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L207:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L209:
	move.l 100(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 88(%a2),%a0
	move.l %a0,100(%a2)
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
	clr.l 104(%a0)
	clr.b 116(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
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
	tst.b 116(%a3)
	jeq .L225
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jne .L217
	move.l 234(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L220
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L220
	and.l JAGPAD_DOWN,%d0
	jne .L226
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L225:
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L217:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L220:
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L226:
	moveq #1,%d0
	move.l %d0,104(%a3)
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,100(%a3)
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
	move.l 234(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L229
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L228
	and.l JAGPAD_8,%d0
	jne .L228
.L229:
	move.l 8(%fp),%a0
	move.b #1,116(%a0)
.L228:
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
	clr.l 104(%a1)
	clr.l 112(%a1)
	clr.b 116(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	clr.b 124(%a0)
	move.l 310(%a0),8(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a4)
	jeq .L241
.L236:
	tst.l 104(%a3)
	jle .L237
.L242:
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 40(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L241:
	tst.l 112(%a3)
	jne .L236
	moveq #1,%d0
	move.l %d0,112(%a3)
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 104(%a3)
	jgt .L242
.L237:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L243
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L243:
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
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
	tst.b 124(%a0)
	jeq .L245
	move.l JAGPAD_C,%d0
	and.l 234(%a0),%d0
	jeq .L245
	addq.l #1,104(%a1)
.L245:
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
	clr.l 104(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,108(%a0)
	clr.l 112(%a0)
	clr.b 116(%a0)
	move.l %a2,282(%a1)
	clr.b 124(%a1)
	move.l 310(%a1),8(%fp)
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
	tst.b 116(%a3)
	jne .L252
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L257
.L253:
	tst.l 104(%a3)
	jle .L254
.L258:
	clr.l 104(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,108(%a3)
	clr.l 112(%a3)
.L251:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L252:
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L254:
	move.w raptor_ticks,%a0
	moveq #29,%d0
	add.l 108(%a3),%d0
	cmp.l %d0,%a0
	jle .L251
	move.b #1,116(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L257:
	tst.l 112(%a3)
	jne .L253
	moveq #1,%d0
	move.l %d0,112(%a3)
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 104(%a3)
	jgt .L258
	jra .L254
	.even
	.globl	__Z34StateLowRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z34StateLowRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 124(%a0)
	jeq .L260
	move.l JAGPAD_C,%d0
	and.l 234(%a0),%d0
	jeq .L260
	addq.l #1,104(%a1)
.L260:
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
	clr.l 104(%a1)
	clr.l 112(%a1)
	clr.b 116(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	clr.b 124(%a0)
	move.l 310(%a0),8(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a4)
	jeq .L272
.L267:
	tst.l 104(%a3)
	jle .L268
.L273:
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 48(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L272:
	tst.l 112(%a3)
	jne .L267
	moveq #1,%d0
	move.l %d0,112(%a3)
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 104(%a3)
	jgt .L273
.L268:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L274
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L274:
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z29StateHighPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 124(%a0)
	jeq .L276
	move.l 234(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L280
	addq.l #1,104(%a1)
.L276:
	unlk %fp
	rts
.L280:
	and.l JAGPAD_7,%d0
	jeq .L276
	addq.l #1,104(%a1)
	jra .L276
	.even
	.globl	__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.l 104(%a0)
	move.w raptor_ticks,%a2
	move.l %a2,108(%a0)
	clr.l 112(%a0)
	clr.b 116(%a0)
	move.l %a2,282(%a1)
	clr.b 124(%a1)
	move.l 310(%a1),8(%fp)
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
	tst.b 116(%a3)
	jne .L285
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L290
.L286:
	tst.l 104(%a3)
	jle .L287
.L291:
	clr.l 104(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,108(%a3)
	clr.l 112(%a3)
.L284:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L285:
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l 100(%a3),%a0
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L287:
	move.w raptor_ticks,%a0
	moveq #29,%d0
	add.l 108(%a3),%d0
	cmp.l %d0,%a0
	jle .L284
	move.b #1,116(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L290:
	tst.l 112(%a3)
	jne .L286
	moveq #1,%d0
	move.l %d0,112(%a3)
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.l 104(%a3)
	jgt .L291
	jra .L287
	.even
	.globl	__Z35StateHighRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z35StateHighRepeatPunching_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 124(%a0)
	jeq .L293
	move.l 234(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L297
	addq.l #1,104(%a1)
.L293:
	unlk %fp
	rts
.L297:
	and.l JAGPAD_7,%d0
	jeq .L293
	addq.l #1,104(%a1)
	jra .L293
	.even
	.globl	__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.l 104(%a0)
	clr.l 108(%a0)
	clr.l 112(%a0)
	clr.b 116(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a1)
	clr.b 124(%a1)
	move.l 310(%a1),8(%fp)
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
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L305
.L302:
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L306
.L301:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L305:
	tst.l 112(%a4)
	jne .L302
	moveq #1,%d0
	move.l %d0,112(%a4)
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L301
.L306:
	move.l 100(%a4),%a0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,100(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
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
	clr.l 104(%a0)
	clr.l 108(%a0)
	clr.l 112(%a0)
	clr.b 116(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a1)
	clr.b 124(%a1)
	move.l 310(%a1),8(%fp)
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
	move.l 418(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L315
.L312:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L316
.L311:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L315:
	tst.l 112(%a4)
	jne .L312
	moveq #1,%d0
	move.l %d0,112(%a4)
	moveq #0,%d0
	move.b 318(%a2),%d0
	move.l %d0,-(%sp)
	move.l 310(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L311
.L316:
	move.l 100(%a4),%a0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,100(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
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
	clr.l 104(%a0)
	clr.l 108(%a0)
	clr.l 112(%a0)
	clr.b 116(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a1)
	clr.b 124(%a1)
	move.l 310(%a1),8(%fp)
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
	move.l 438(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 586(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L324
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L324:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
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
	clr.l 104(%a0)
	clr.l 108(%a0)
	clr.l 112(%a0)
	clr.b 116(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a1)
	clr.b 124(%a1)
	move.l 310(%a1),8(%fp)
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
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L332
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L332:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
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
	clr.l 104(%a0)
	clr.l 108(%a0)
	clr.l 112(%a0)
	clr.b 116(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a1)
	clr.b 124(%a1)
	move.l 310(%a1),8(%fp)
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
	move.l 450(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 598(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L340
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L340:
	moveq #1,%d0
	move.l %d0,104(%a3)
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
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
	clr.b 116(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	clr.b 124(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.l 422(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a1
	move.l 282(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a1
	jle .L350
	tst.b 214(%a2)
	jne .L350
	move.l 104(%a3),%a0
	move.l %a0,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.l %a1,282(%a2)
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L352
.L345:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L350:
	move.l 104(%a3),%a0
	moveq #19,%d0
	cmp.l %a0,%d0
	jge .L345
.L352:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
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
	clr.b 116(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	clr.b 124(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.l 426(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a1
	move.l 282(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a1
	jle .L362
	tst.b 214(%a2)
	jne .L362
	move.l 104(%a3),%a0
	move.l %a0,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.l %a1,282(%a2)
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L364
.L357:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L362:
	move.l 104(%a3),%a0
	moveq #19,%d0
	cmp.l %a0,%d0
	jge .L357
.L364:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
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
	clr.l 104(%a0)
	clr.l 108(%a0)
	clr.l 112(%a0)
	clr.b 116(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,282(%a1)
	clr.b 124(%a1)
	move.l 310(%a1),8(%fp)
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
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a0
	move.l %a0,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 582(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L372
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L372:
	move.l 100(%a3),%a0
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
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
	clr.b 116(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	clr.b 124(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a1
	move.l %a1,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 546(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 282(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L382
	tst.b 214(%a2)
	jeq .L380
.L382:
	move.l 104(%a3),%a0
.L379:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L384
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L384:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L380:
	move.w 314(%a2),%a1
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
	move.l 104(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a2)
	addq.l #8,%sp
	jra .L379
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
	clr.b 116(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	clr.b 124(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a1
	move.l %a1,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 546(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 282(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L394
	tst.b 214(%a2)
	jeq .L392
.L394:
	move.l 104(%a3),%a0
.L391:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L396
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L396:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L392:
	move.w 314(%a2),%a1
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
	move.l 104(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a2)
	addq.l #8,%sp
	jra .L391
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
	clr.b 116(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	clr.b 124(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a1
	move.l %a1,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a1
	move.l %a1,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 282(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L406
	tst.b 214(%a2)
	jeq .L404
.L406:
	move.l 104(%a3),%a0
.L403:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L408
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L408:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L404:
	move.w 314(%a2),%a0
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
	move.l 104(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a2)
	addq.l #8,%sp
	jra .L403
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
	clr.b 116(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a0)
	clr.b 124(%a0)
	moveq #0,%d0
	move.b 318(%a0),%d0
	move.l %d0,16(%fp)
	move.l 310(%a0),12(%fp)
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
	move.w 314(%a2),%a0
	move.l %a0,-(%sp)
	move.w 296(%a2),%a1
	move.l %a1,-(%sp)
	move.w 294(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a1
	move.l %a1,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 282(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L418
	tst.b 214(%a2)
	jeq .L416
.L418:
	move.l 104(%a3),%a0
.L415:
	moveq #19,%d0
	cmp.l %a0,%d0
	jlt .L420
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L420:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 100(%a3),%a0
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 8(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,100(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 4(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L416:
	move.w 314(%a2),%a0
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
	move.l 104(%a3),%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w %d0,296(%a2)
	addq.l #1,%a0
	move.l %a0,104(%a3)
	move.w raptor_ticks,%a1
	move.l %a1,282(%a2)
	addq.l #8,%sp
	jra .L415
	.even
	.globl	__Z40StateJumpingPunchingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z40StateJumpingPunchingBackward_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
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
