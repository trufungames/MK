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
	move.l %a0,176(%a2)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	clr.b 186(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 176(%a0),%a1
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
	move.l 176(%a2),%a0
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
	move.l %a0,176(%a2)
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
	tst.b 187(%a2)
	jeq .L9
	move.w raptor_ticks,%d0
	cmp.w 188(%a2),%d0
	jlt .L8
	clr.b 187(%a2)
.L9:
	tst.b 204(%a3)
	jne .L14
	tst.b 180(%a3)
	jeq .L12
	move.l 176(%a2),%a0
	move.w (%a0),%d0
	cmp.w #42,%d0
	jeq .L12
	cmp.w #5,%d0
	jeq .L12
	cmp.w #7,%d0
	jeq .L12
	cmp.w #6,%d0
	jeq .L12
	cmp.w #22,%d0
	jeq .L12
	cmp.w #21,%d0
	jeq .L12
	cmp.w #24,%d0
	jeq .L12
	cmp.w #23,%d0
	jeq .L12
	cmp.w #19,%d0
	jeq .L12
	cmp.w #18,%d0
	jeq .L12
	cmp.w #41,%d0
	jeq .L12
	cmp.w #40,%d0
	jeq .L12
	cmp.w #32,%d0
	jeq .L12
	cmp.w #28,%d0
	jeq .L12
	clr.b 180(%a3)
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
.L14:
	move.w 326(%a3),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a3,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.l 290(%a3),%d0
	addq.l #3,%d0
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	cmp.l %d0,%a0
	jle .L12
	clr.b 204(%a3)
	move.l 4(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L12:
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l 176(%a2),%a0
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 10(%a0),%a0
	jsr (%a0)
	move.l 176(%a2),%a0
	move.w (%a0),%a0
	move.l %a0,94(%a3)
	lea (12,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator
__Z17stateMachineSleepP12StateMachineiP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%d0
	move.b #1,187(%a0)
	move.w raptor_ticks,%d1
	add.w 14(%fp),%d1
	move.w %d1,188(%a0)
	move.l 176(%a0),%a1
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
	clr.b 186(%a0)
	clr.w 180(%a0)
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
	move.w 326(%a0),%a1
	move.l %a1,-(%sp)
	move.w 308(%a0),%a1
	move.l %a1,-(%sp)
	move.w 306(%a0),%a1
	move.l %a1,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a0),%a1
	move.l %a1,-(%sp)
	move.l 490(%a0),-(%sp)
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
	tst.b 224(%a2)
	jne .L62
.L21:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L62:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	tst.b %d0
	jne .L21
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L23
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L23
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L25
	cmp.w #1,326(%a2)
	jeq .L26
.L25:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L27
	cmp.w #-1,326(%a2)
	jeq .L26
.L27:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L28
.L29:
	move.l 176(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L23:
	move.l 176(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L28:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L30
	move.w 326(%a2),%d4
	cmp.w #1,%d4
	jeq .L63
	cmp.w #-1,%d4
	jne .L30
	tst.l %d1
	jne .L32
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L56
.L57:
	moveq #0,%d4
.L37:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L41
.L40:
	tst.b 136(%a2)
	jeq .L41
	move.l 176(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L30:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L38
	cmp.w #1,326(%a2)
	jeq .L39
.L38:
	tst.l %d1
	jeq .L37
	cmp.w #-1,326(%a2)
	jne .L37
.L39:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jne .L40
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L40
.L41:
	tst.l %d4
	jeq .L42
	cmp.w #1,326(%a2)
	jeq .L43
.L42:
	tst.l %d1
	jeq .L44
	cmp.w #-1,326(%a2)
	jeq .L43
.L44:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L46
.L45:
	tst.b 136(%a2)
	jeq .L46
	move.l 176(%a3),%a0
	cmp.w #14,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L26:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L28
	and.l JAGPAD_A,%d0
	jeq .L29
	tst.b 136(%a2)
	jeq .L29
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 20.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L46:
	move.w 326(%a2),%d5
	cmp.w #1,%d5
	jeq .L64
	cmp.w #-1,%d5
	jeq .L65
.L50:
	tst.l %d3
	jne .L66
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L54
	tst.b 185(%a2)
	jeq .L55
	tst.b 136(%a2)
	jne .L67
.L54:
	and.l JAGPAD_A,%d0
	jeq .L21
	tst.b 136(%a2)
	jeq .L21
	move.l 176(%a3),%a0
	cmp.w #13,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 52(%a3),%a0
	move.l %a0,176(%a3)
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
	jne .L48
	tst.l %d4
	jeq .L50
.L52:
	move.l 176(%a3),%a0
	cmp.w #4,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 16(%a3),%a0
	move.l %a0,176(%a3)
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
	and.l JAGPAD_A,%d5
	jne .L45
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L46
	jra .L45
.L63:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L32
	tst.l %d1
	jeq .L57
.L56:
	move.l 176(%a3),%a0
	cmp.w #7,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L67:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 40.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachineiP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L64:
	tst.l %d4
	jne .L48
	tst.l %d1
	jeq .L50
	jra .L52
.L48:
	move.l 176(%a3),%a0
	cmp.w #3,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 12(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L32:
	move.l 176(%a3),%a0
	cmp.w #6,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L55:
	tst.b 136(%a2)
	jeq .L54
	move.l 176(%a3),%a0
	cmp.w #9,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 36(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L66:
	move.l 176(%a3),%a0
	cmp.w #5,(%a0)
	jeq .L21
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 20(%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
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
	tst.b 186(%a4)
	jeq .L75
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
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
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L71
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L75:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 526(%a2),-(%sp)
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
	move.l 246(%a2),%d0
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
	move.l 176(%a3),%a0
	cmp.w #8,(%a0)
	jeq .L79
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 32(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L83:
	move.b #1,186(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 16(%fp),%a1
	cmp.w #1,180(%a0)
	jeq .L87
	clr.w 16(%a1)
	clr.b 186(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	unlk %fp
	rts
.L87:
	move.w #2,16(%a1)
	clr.b 186(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
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
	tst.b 186(%a4)
	jeq .L96
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
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
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L92
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L96:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
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
	move.l 246(%a3),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L110
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L103
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L103
	tst.b 136(%a3)
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
	move.l 176(%a2),%a0
	cmp.w #17,(%a0)
	jeq .L100
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 68(%a2),%a0
	move.l %a0,176(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L110:
	move.b #1,186(%a2)
.L100:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L103:
	move.l 176(%a2),%a0
	cmp.w #8,(%a0)
	jeq .L100
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 32(%a2),%a0
	move.l %a0,176(%a2)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a3,12(%fp)
	move.l %a2,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L105:
	move.l 176(%a2),%a0
	cmp.w #16,(%a0)
	jeq .L100
	move.l %d2,-(%sp)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 64(%a2),%a0
	move.l %a0,176(%a2)
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
	clr.b 186(%a0)
	clr.w 180(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L115
	tst.b 179(%a2)
	jeq .L116
	move.w 326(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
.L115:
	tst.b 186(%a3)
	jeq .L114
	cmp.w #31,180(%a3)
	jgt .L120
.L114:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L116:
	move.w 326(%a2),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	jra .L115
.L120:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L114
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	move.w 326(%a2),%d0
	cmp.w #1,%d0
	jeq .L140
	cmp.w #-1,%d0
	jeq .L141
.L125:
	move.b #1,186(%a3)
.L123:
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L141:
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L125
.L126:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L142
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L129
	tst.b 179(%a2)
	jeq .L129
	tst.b 136(%a2)
	jne .L143
.L129:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L144
.L130:
	tst.b 179(%a2)
	jeq .L131
	tst.b 136(%a2)
	jne .L145
.L131:
	and.l JAGPAD_7,%d0
	jeq .L132
	tst.b 136(%a2)
	jne .L137
.L132:
	tst.l %d1
	jeq .L133
	tst.b 136(%a2)
	jne .L137
.L133:
	tst.l %d3
	jeq .L123
	tst.b 136(%a2)
	jeq .L123
	move.l 176(%a3),%a0
	cmp.w #14,(%a0)
	jeq .L123
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 56(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L140:
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jne .L126
	move.b #1,186(%a3)
	jra .L123
.L144:
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L131
	jra .L130
.L142:
	move.l 176(%a3),%a0
	cmp.w #6,(%a0)
	jeq .L123
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 24(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L137:
	move.l 176(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L123
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L145:
	move.l 176(%a3),%a0
	cmp.w #39,(%a0)
	jeq .L123
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 156(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L143:
	move.l 176(%a3),%a0
	cmp.w #38,(%a0)
	jeq .L123
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 152(%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a0)
	clr.w 180(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jgt .L153
.L150:
	tst.b 186(%a3)
	jeq .L149
	cmp.w #27,180(%a3)
	jgt .L154
.L149:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L153:
	move.w 326(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.w #4,180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	addq.l #8,%sp
	jra .L150
.L154:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L149
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	move.w 326(%a2),%d0
	cmp.w #1,%d0
	jeq .L169
	cmp.w #-1,%d0
	jeq .L170
.L159:
	move.b #1,186(%a3)
.L157:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L170:
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L159
.L160:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jne .L171
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L163
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L163
	tst.b 136(%a2)
	jne .L172
.L163:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L173
	tst.b 136(%a2)
	jne .L174
.L165:
	tst.l %d1
	jeq .L157
	tst.b 136(%a2)
	jeq .L157
	move.l 176(%a3),%a0
	cmp.w #15,(%a0)
	jeq .L157
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 60(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L169:
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L160
	move.b #1,186(%a3)
	jra .L157
.L173:
	and.l JAGPAD_C,%d0
	jeq .L165
	tst.b 136(%a2)
	jeq .L165
	jra .L174
.L171:
	move.l 176(%a3),%a0
	cmp.w #7,(%a0)
	jeq .L157
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 28(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L174:
	move.l 176(%a3),%a0
	cmp.w #11,(%a0)
	jeq .L157
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 44(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L172:
	move.l 176(%a3),%a0
	cmp.w #20,(%a0)
	jeq .L157
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 80(%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a1)
	clr.w 180(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.w 180(%a3),%d0
	move.w 326(%a2),%a0
	cmp.w #1,%d0
	jls .L189
	cmp.w #18,%d0
	jeq .L190
	cmp.w #19,%d0
	jeq .L191
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 514(%a2),-(%sp)
	pea 1.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
.L180:
	move.w raptor_ticks,%a0
	move.l 294(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L187
	tst.b 226(%a2)
	jne .L187
	move.w 180(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a5
	add.l #__ZL11JumpOffsets,%a5
	move.w (%a5,%a1.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.l %a0,294(%a2)
	cmp.w #19,%d0
	jgt .L192
.L178:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L187:
	move.w 180(%a3),%d0
	cmp.w #19,%d0
	jle .L178
.L192:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L178
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L191:
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 514(%a2),-(%sp)
	pea 3.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L180
.L189:
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 514(%a2),-(%sp)
	clr.l -(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L180
.L190:
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 514(%a2),-(%sp)
	pea 2.w
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	jra .L180
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
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L196
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L197
.L196:
	tst.b 136(%a2)
	jne .L202
.L197:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L203
	tst.b 136(%a2)
	jne .L204
.L195:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L203:
	and.l JAGPAD_9,%d0
	jeq .L195
	tst.b 136(%a2)
	jeq .L195
.L204:
	move.l 176(%a3),%a0
	cmp.w #19,(%a0)
	jeq .L195
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 76(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L202:
	move.l 176(%a3),%a0
	cmp.w #18,(%a0)
	jeq .L195
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 72(%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a1)
	clr.w 180(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 518(%a2),-(%sp)
	move.w 180(%a3),%a0
	move.l %a0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L213
	tst.b 226(%a2)
	jeq .L211
.L213:
	move.w 180(%a3),%d0
.L210:
	cmp.w #19,%d0
	jgt .L215
.L208:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L215:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L208
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L211:
	move.w 326(%a2),%a0
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
	move.w 180(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L210
	move.l 322(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 180(%a3),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L208
	jra .L215
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
	tst.b 136(%a2)
	jeq .L218
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L220
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L220
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L222
	and.l JAGPAD_7,%d0
	jeq .L218
.L222:
	move.l 176(%a3),%a0
	cmp.w #23,(%a0)
	jeq .L218
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 92(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L220:
	move.l 176(%a3),%a0
	cmp.w #21,(%a0)
	jne .L225
.L218:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L225:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 84(%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a1)
	clr.w 180(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 518(%a2),-(%sp)
	move.w #19,%a0
	sub.w 180(%a3),%a0
	move.l %a0,-(%sp)
	move.l 4(%a2),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jle .L234
	tst.b 226(%a2)
	jeq .L232
.L234:
	move.w 180(%a3),%d0
.L231:
	cmp.w #19,%d0
	jgt .L236
.L229:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L236:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L229
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L232:
	move.w 326(%a2),%a0
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
	move.w 180(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L231
	move.l 322(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 180(%a3),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L229
	jra .L236
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
	tst.b 136(%a2)
	jeq .L239
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L241
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jne .L241
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L243
	and.l JAGPAD_7,%d0
	jeq .L239
.L243:
	move.l 176(%a3),%a0
	cmp.w #24,(%a0)
	jeq .L239
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 96(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L241:
	move.l 176(%a3),%a0
	cmp.w #22,(%a0)
	jne .L246
.L239:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L246:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 88(%a3),%a0
	move.l %a0,176(%a3)
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
	clr.w 180(%a0)
	clr.b 186(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
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
	tst.b 186(%a3)
	jeq .L258
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 16(%a4)
	jne .L250
	move.l 246(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L253
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L253
	and.l JAGPAD_DOWN,%d0
	jne .L259
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L250
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L258:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L250:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L253:
	move.l 176(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L250
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L259:
	move.w #1,180(%a3)
	move.l 176(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L250
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,176(%a3)
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
	move.l 246(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L263
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L262
	and.l JAGPAD_8,%d0
	jne .L262
.L263:
	move.l 8(%fp),%a0
	move.b #1,186(%a0)
.L262:
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
	clr.w 180(%a1)
	clr.w 184(%a1)
	clr.b 186(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	clr.b 136(%a0)
	move.l 322(%a0),8(%fp)
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
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L275
.L270:
	tst.w 180(%a4)
	jle .L271
	move.l 176(%a4),%a0
	cmp.w #10,(%a0)
	jeq .L269
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 40(%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L271:
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L276
.L269:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L275:
	tst.w 184(%a4)
	jne .L270
	move.w #1,184(%a4)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L270
.L276:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L269
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
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
	tst.b 136(%a0)
	jeq .L279
	move.l JAGPAD_C,%d0
	and.l 246(%a0),%d0
	jeq .L279
	addq.w #1,180(%a1)
.L279:
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
	clr.w 180(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,182(%a0)
	clr.w 184(%a0)
	clr.b 186(%a0)
	move.w %d0,%a0
	move.l %a0,294(%a1)
	clr.b 136(%a1)
	move.l 322(%a1),8(%fp)
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
	tst.b 186(%a3)
	jne .L286
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L291
.L287:
	tst.w 180(%a3)
	jle .L288
.L292:
	clr.w 180(%a3)
	move.w raptor_ticks,182(%a3)
	clr.w 184(%a3)
.L285:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L286:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 176(%a3),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L285
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L288:
	move.w raptor_ticks,%a0
	move.w 182(%a3),%a1
	lea (29,%a1),%a1
	cmp.l %a1,%a0
	jle .L285
	move.b #1,186(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L291:
	tst.w 184(%a3)
	jne .L287
	move.w #1,184(%a3)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 180(%a3)
	jgt .L292
	jra .L288
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
	tst.b 136(%a0)
	jeq .L295
	move.l JAGPAD_C,%d0
	and.l 246(%a0),%d0
	jeq .L295
	addq.w #1,180(%a1)
.L295:
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
	clr.w 180(%a1)
	clr.w 184(%a1)
	clr.b 186(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	clr.b 136(%a0)
	move.l 322(%a0),8(%fp)
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
	move.l 430(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L307
.L302:
	tst.w 180(%a4)
	jle .L303
	move.l 176(%a4),%a0
	cmp.w #12,(%a0)
	jeq .L301
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 48(%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L303:
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L308
.L301:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L307:
	tst.w 184(%a4)
	jne .L302
	move.w #1,184(%a4)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L302
.L308:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L301
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
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
	tst.b 136(%a0)
	jeq .L311
	move.l 246(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L315
	addq.w #1,180(%a1)
.L311:
	unlk %fp
	rts
.L315:
	and.l JAGPAD_7,%d0
	jeq .L311
	addq.w #1,180(%a1)
	jra .L311
	.even
	.globl	__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 180(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,182(%a0)
	clr.w 184(%a0)
	clr.b 186(%a0)
	move.w %d0,%a0
	move.l %a0,294(%a1)
	clr.b 136(%a1)
	move.l 322(%a1),8(%fp)
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
	tst.b 186(%a3)
	jne .L320
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 554(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,16(%a4)
	jeq .L325
.L321:
	tst.w 180(%a3)
	jle .L322
.L326:
	clr.w 180(%a3)
	move.w raptor_ticks,182(%a3)
	clr.w 184(%a3)
.L319:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L320:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 176(%a3),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L319
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L322:
	move.w raptor_ticks,%a0
	move.w 182(%a3),%a1
	lea (29,%a1),%a1
	cmp.l %a1,%a0
	jle .L319
	move.b #1,186(%a3)
	move.w #3,16(%a4)
	move.l %a0,12(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L325:
	tst.w 184(%a3)
	jne .L321
	move.w #1,184(%a3)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 180(%a3)
	jgt .L326
	jra .L322
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
	tst.b 136(%a0)
	jeq .L329
	move.l 246(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L333
	addq.w #1,180(%a1)
.L329:
	unlk %fp
	rts
.L333:
	and.l JAGPAD_7,%d0
	jeq .L329
	addq.w #1,180(%a1)
	jra .L329
	.even
	.globl	__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	clr.w 180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	clr.b 186(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a1)
	clr.b 136(%a1)
	move.l 322(%a1),8(%fp)
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
	move.l 438(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 558(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L341
.L338:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L342
.L337:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L342:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L337
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L341:
	tst.w 184(%a4)
	jne .L338
	move.w #1,184(%a4)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L337
	jra .L342
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
	clr.w 180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	clr.b 186(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a1)
	clr.b 136(%a1)
	move.l 322(%a1),8(%fp)
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
	move.l 442(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 562(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,16(%a3)
	jeq .L352
.L349:
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L353
.L348:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L353:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L348
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L352:
	tst.w 184(%a4)
	jne .L349
	move.w #1,184(%a4)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L348
	jra .L353
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
	clr.w 180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	clr.b 186(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a1)
	clr.b 136(%a1)
	move.l 322(%a1),8(%fp)
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
	move.l 462(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 614(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L362
.L359:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L362:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L359
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	clr.w 180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	clr.b 186(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a1)
	clr.b 136(%a1)
	move.l 322(%a1),8(%fp)
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
	move.l 454(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 578(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L371
.L368:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L371:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L368
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	clr.w 180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	clr.b 186(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a1)
	clr.b 136(%a1)
	move.l 322(%a1),8(%fp)
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
	move.l 474(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 626(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L380
.L377:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L380:
	move.w #1,180(%a3)
	move.l 176(%a3),%a0
	cmp.w #2,(%a0)
	jeq .L377
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 8(%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	clr.b 136(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.l 446(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 294(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L391
	tst.b 226(%a2)
	jne .L391
	move.w 180(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.l %a0,294(%a2)
	cmp.w #19,%d0
	jgt .L393
.L386:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L391:
	move.w 180(%a3),%d0
	cmp.w #19,%d0
	jle .L386
.L393:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L386
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	move.w 326(%a1),%a2
	move.l %a2,-(%sp)
	move.w 308(%a1),%a2
	move.l %a2,-(%sp)
	move.w 306(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 566(%a1),-(%sp)
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
	clr.b 186(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	clr.b 136(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.l 450(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 570(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 294(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L404
	tst.b 226(%a2)
	jne .L404
	move.w 180(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11JumpOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.l %a0,294(%a2)
	cmp.w #19,%d0
	jgt .L406
.L399:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L404:
	move.w 180(%a3),%d0
	cmp.w #19,%d0
	jle .L399
.L406:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L399
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	move.w 326(%a1),%a2
	move.l %a2,-(%sp)
	move.w 308(%a1),%a2
	move.l %a2,-(%sp)
	move.w 306(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 570(%a1),-(%sp)
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
	clr.w 180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	clr.b 186(%a0)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a1)
	clr.b 136(%a1)
	move.l 322(%a1),8(%fp)
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
	move.l 458(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 610(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L415
.L412:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L415:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L412
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a1)
	clr.w 182(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	clr.b 136(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.l 450(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 574(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 294(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jgt .L422
	move.w 180(%a3),%d0
	cmp.w #19,%d0
	jgt .L427
.L421:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L422:
	tst.w 182(%a3)
	jeq .L428
	move.w 180(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.l %a0,294(%a2)
.L429:
	cmp.w #19,%d0
	jle .L421
.L427:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L421
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L428:
	move.w 326(%a2),%a0
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
	move.w 180(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.l %a0,294(%a2)
	jra .L429
	.even
	.globl	__Z32StateJumpingKickingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingKickingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 326(%a1),%a2
	move.l %a2,-(%sp)
	move.w 308(%a1),%a2
	move.l %a2,-(%sp)
	move.w 306(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 574(%a1),-(%sp)
	pea 2.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 8(%fp),%a0
	move.w #1,182(%a0)
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
	clr.b 186(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	clr.b 136(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.l 450(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 574(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L440
	tst.b 226(%a2)
	jeq .L438
.L440:
	move.w 180(%a3),%d0
	cmp.w #19,%d0
	jgt .L442
.L435:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L442:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L435
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L438:
	move.w 326(%a2),%a0
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
	move.w 180(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L435
	jra .L442
	.even
	.globl	__Z33StateJumpingKickingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingKickingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 326(%a1),%a2
	move.l %a2,-(%sp)
	move.w 308(%a1),%a2
	move.l %a2,-(%sp)
	move.w 306(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 574(%a1),-(%sp)
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
	clr.b 186(%a1)
	clr.w 182(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	clr.b 136(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.l 446(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%a0
	move.l 294(%a2),%d0
	addq.l #1,%d0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jgt .L449
	move.w 180(%a3),%d0
	cmp.w #19,%d0
	jgt .L454
.L448:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L449:
	tst.w 182(%a3)
	jeq .L455
	move.w 180(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.l %a0,294(%a2)
.L456:
	cmp.w #19,%d0
	jle .L448
.L454:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L448
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L455:
	move.w 326(%a2),%a0
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
	move.w 180(%a3),%d0
	move.w %d0,%a1
	move.l %a1,%a4
	add.l #__ZL11FlipOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.l %a0,294(%a2)
	jra .L456
	.even
	.globl	__Z33StateJumpingPunchingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingPunchingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 326(%a1),%a2
	move.l %a2,-(%sp)
	move.w 308(%a1),%a2
	move.l %a2,-(%sp)
	move.w 306(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 566(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.l 8(%fp),%a0
	move.w #1,182(%a0)
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
	clr.b 186(%a1)
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	clr.b 136(%a0)
	moveq #0,%d0
	move.b 330(%a0),%d0
	move.l %d0,16(%fp)
	move.l 322(%a0),12(%fp)
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
	move.l 446(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %d0,%a0
	jle .L467
	tst.b 226(%a2)
	jeq .L465
.L467:
	move.w 180(%a3),%d0
	cmp.w #19,%d0
	jgt .L469
.L462:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L469:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 176(%a3),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L462
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L465:
	move.w 326(%a2),%a0
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
	move.w 180(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L462
	jra .L469
	.even
	.globl	__Z34StateJumpingPunchingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z34StateJumpingPunchingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 326(%a1),%a2
	move.l %a2,-(%sp)
	move.w 308(%a1),%a2
	move.l %a2,-(%sp)
	move.w 306(%a1),%a2
	move.l %a2,-(%sp)
	move.w 18(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 566(%a1),-(%sp)
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
	cmp.w #89,308(%a2)
	jle .L477
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 186(%a3)
	move.l %a0,294(%a2)
	move.b #1,178(%a2)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 316(%a2),12(%fp)
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L477:
	move.l 176(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L473
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L473:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z16StateHitLow_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z16StateHitLow_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 582(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L483
.L480:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L483:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L480
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	cmp.w #89,308(%a2)
	jle .L491
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 186(%a3)
	move.l %a0,294(%a2)
	move.b #1,178(%a2)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	addq.l #8,%sp
	move.l 316(%a2),(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	move.w 326(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%a0
	move.l %a0,16(%fp)
	move.w 308(%a2),%d1
	add.w #-10,%d1
	move.w %d1,%a0
	move.l %a0,12(%fp)
	muls.w #-10,%d0
	add.w 306(%a2),%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z10bloodSpraysss
.L491:
	move.l 176(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L487
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L487:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z17StateHitHigh_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z17StateHitHigh_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 586(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L497
.L494:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L497:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L494
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	cmp.w #89,308(%a2)
	jle .L505
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 186(%a3)
	move.l %a0,294(%a2)
	move.b #1,178(%a2)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 316(%a2),12(%fp)
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L505:
	move.l 176(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L501
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L501:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z18StateHitSweep_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitSweep_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 602(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L511
.L508:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L511:
	move.l 322(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 176(%a3),%a0
	addq.l #4,%sp
	cmp.w #28,(%a0)
	jeq .L508
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 112(%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a1)
	move.l 12(%fp),%a1
	move.l %a0,294(%a1)
	unlk %fp
	rts
	.even
	.globl	__Z15StateGetUp_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z15StateGetUp_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 606(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L520
.L517:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L520:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L517
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	cmp.w #89,308(%a2)
	jle .L528
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 186(%a3)
	clr.w 180(%a3)
	move.l %a0,294(%a2)
	move.b #1,178(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l 322(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	tst.b 138(%a2)
	jeq .L529
.L524:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L529:
	move.w 326(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w 306(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,16(%fp)
	move.w 308(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,12(%fp)
	move.w 306(%a2),%a2
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z9bloodDropsss
.L528:
	move.l 176(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L524
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z17StateHitBack_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z17StateHitBack_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
	clr.b 138(%a0)
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
	jeq .L537
.L533:
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L538
.L534:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l 590(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L539
.L532:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L539:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L532
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L538:
	move.w 326(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l 590(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 76(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L532
	jra .L539
.L537:
	tst.w 180(%a4)
	jne .L533
	move.w #1,180(%a4)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L534
	jra .L538
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
	cmp.w #89,308(%a2)
	jle .L547
	clr.w 16(%a4)
	move.w raptor_ticks,%a0
	move.l %a0,12(%a4)
	clr.b 186(%a3)
	clr.w 180(%a3)
	move.l %a0,294(%a2)
	move.b #1,178(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 322(%a2),8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
.L547:
	move.l 176(%a3),%a0
	cmp.w #34,(%a0)
	jeq .L543
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 136(%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %a4,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L543:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z20StateHitBackLow_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z20StateHitBackLow_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	jeq .L555
.L551:
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L556
.L552:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 582(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L557
.L550:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L557:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L550
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L556:
	move.w 326(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 582(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L550
	jra .L557
.L555:
	tst.w 180(%a4)
	jne .L551
	move.w #1,180(%a4)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L552
	jra .L556
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
	clr.b 186(%a0)
	clr.w 180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	move.l %a1,294(%a2)
	move.b #1,178(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l 322(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 308(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 306(%a2),%d0
	add.w #20,%d0
	move.w 326(%a2),%d1
	muls.w #-40,%d1
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	move.w 326(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-80,%d0
	add.w 306(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a3
	jsr (%a3)
	move.w 326(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w 306(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 326(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,16(%fp)
	move.w 308(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,12(%fp)
	muls.w #-60,%d0
	add.w 306(%a2),%d0
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
	clr.b 178(%a0)
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
	cmp.l #65536,180(%a3)
	jeq .L570
	cmp.w #8,180(%a3)
	jeq .L571
.L565:
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L572
.L563:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L572:
	move.w 326(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 180(%a3),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 308(%a2),%d1
	move.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a3)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L573
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a4),%a0
	move.l %a0,-(%sp)
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
.L575:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L571:
	tst.w 184(%a3)
	jne .L565
	move.w #1,184(%a3)
	move.l 322(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L563
	jra .L572
.L573:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 322(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 176(%a3),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L574
	move.l %a4,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a3),%a0
	move.l %a0,176(%a3)
	addq.l #8,%sp
	move.l %a4,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 308(%a2),%d1
	move.w 180(%a3),%d0
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a4),%a0
	move.l %a0,-(%sp)
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
	jra .L575
.L570:
	move.w #1,182(%a3)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L563
	jra .L572
.L574:
	move.w 308(%a2),%d1
	move.w 180(%a3),%d0
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a4),%a0
	move.l %a0,-(%sp)
	move.l 8(%a4),-(%sp)
	move.l 4(%a4),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a4),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
	jra .L575
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
	clr.b 186(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
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
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 598(%a2),-(%sp)
	moveq #0,%d0
	move.w 80(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	moveq #19,%d0
	add.l 294(%a2),%d0
	move.w raptor_ticks,%a0
	lea (36,%sp),%sp
	cmp.l %d0,%a0
	jgt .L584
.L581:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L584:
	move.l 176(%a4),%a0
	cmp.w #28,(%a0)
	jeq .L581
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 112(%a4),%a0
	move.l %a0,176(%a4)
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
	clr.b 186(%a0)
	move.w #4,180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	move.l %a1,294(%a2)
	move.b #1,178(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 322(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
	.even
	.globl	__Z21StateHitDropKick_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitDropKick_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	jeq .L597
	cmp.w #3,%d0
	jeq .L598
.L592:
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L599
.L590:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L599:
	move.w 326(%a2),%d0
	ext.l %d0
	move.l %d0,%d1
	neg.l %d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 180(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 308(%a2),%d1
	move.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L600
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
.L602:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L598:
	tst.w 184(%a4)
	jne .L592
	move.w #1,184(%a4)
	move.l 322(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L590
	jra .L599
.L597:
	tst.w 182(%a4)
	jne .L592
	move.w #1,182(%a4)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L590
	jra .L599
.L600:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 322(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 176(%a4),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L601
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,176(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 308(%a2),%d1
	move.w 180(%a4),%d0
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
	jra .L602
.L601:
	move.w 308(%a2),%d1
	move.w 180(%a4),%d0
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
	jra .L602
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
	clr.b 186(%a0)
	move.w #4,180(%a0)
	clr.w 182(%a0)
	clr.w 184(%a0)
	move.l %a1,294(%a2)
	move.b #1,178(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 322(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
	.even
	.globl	__Z16StateHitAir_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z16StateHitAir_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	jeq .L614
.L609:
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jgt .L615
.L608:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L615:
	move.w 326(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 180(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 308(%a2),%d1
	move.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L616
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
.L618:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L614:
	tst.w 182(%a4)
	jne .L609
	move.w #1,182(%a4)
	moveq #0,%d0
	move.b 330(%a2),%d0
	move.l %d0,-(%sp)
	move.l 322(%a2),-(%sp)
	move.l (%a2),-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L608
	jra .L615
.L616:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 322(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 176(%a4),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L617
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,176(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 308(%a2),%d1
	move.w 180(%a4),%d0
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
	jra .L618
.L617:
	move.w 308(%a2),%d1
	move.w 180(%a4),%d0
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 594(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	lea (36,%sp),%sp
	jra .L618
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
	clr.b 186(%a1)
	move.w %d0,180(%a1)
	move.l %a0,294(%a2)
	move.b #1,178(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 322(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
	.even
	.globl	__Z21StateHitBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	move.w 180(%a3),%a1
	lea (9,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L627
.L625:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L627:
	move.l 176(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L625
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,176(%a3)
	addq.l #8,%sp
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
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
	clr.b 186(%a1)
	move.l %a0,294(%a2)
	move.b #1,178(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 322(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
	.even
	.globl	__Z28StateHitDuckingBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z28StateHitDuckingBlocking_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	jne .L636
.L634:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L636:
	move.l 176(%a3),%a0
	cmp.w #1,(%a0)
	jeq .L634
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 4(%a3),%a0
	move.l %a0,176(%a3)
	addq.l #8,%sp
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
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
	clr.b 186(%a1)
	move.w %d0,180(%a1)
	move.l %a0,294(%a2)
	move.b #1,178(%a2)
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 322(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
	.even
	.globl	__Z30StateHitBlockingKnockback_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z30StateHitBlockingKnockback_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 178(%a0)
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
	move.w 180(%a3),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L646
.L643:
	move.l 294(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jgt .L647
.L644:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L647:
	move.w 326(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	addq.l #8,%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L646:
	move.l 176(%a3),%a1
	tst.w (%a1)
	jeq .L643
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a1),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	addq.l #8,%sp
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	move.l 294(%a2),%d0
	addq.l #1,%d0
	cmp.l %d0,%a0
	jle .L644
	jra .L647
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
	clr.b 186(%a0)
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a2
	move.l %a2,294(%a1)
	clr.w 180(%a0)
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
	move.l 466(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 618(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 180(%a4)
	jne .L654
	cmp.w #2,16(%a3)
	jeq .L658
.L654:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L659
.L653:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L659:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L653
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L658:
	move.w #1,180(%a4)
	moveq #2,%d0
	cmp.l (%a2),%d0
	jeq .L660
	move.l 322(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L653
	jra .L659
.L660:
	move.l 322(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandler
	addq.l #4,%sp
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L653
	jra .L659
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
	clr.b 186(%a0)
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	move.l 12(%fp),%a1
	move.w raptor_ticks,%a2
	move.l %a2,294(%a1)
	clr.w 180(%a0)
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
	move.l 470(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 622(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 180(%a4)
	jne .L667
	cmp.w #2,16(%a3)
	jeq .L670
.L667:
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L671
.L666:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L671:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L666
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	lea (12,%sp),%sp
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L670:
	move.w #1,180(%a4)
	move.l 322(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L666
	jra .L671
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
	clr.b 186(%a1)
	move.l 16(%fp),%a2
	clr.w 16(%a2)
	move.w raptor_ticks,%a2
	move.l %a2,294(%a0)
	clr.b 185(%a0)
	clr.w 180(%a1)
	move.l (%a0),%d0
	moveq #5,%d1
	cmp.l %d0,%d1
	jls .L680
.L676:
	move.l 322(%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z12sfxThrowMaleP12SoundHandler
.L680:
	move.b #6,%d1
	cmp.l %d0,%d1
	jcs .L681
	move.l 322(%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z13sfxThrowNinjaP12SoundHandler
.L681:
	move.b #7,%d1
	cmp.l %d0,%d1
	jne .L676
	move.l 322(%a0),8(%fp)
	move.l (%sp)+,%a2
	unlk %fp
	jra __Z14sfxThrowFemaleP12SoundHandler
	.even
	.globl	__Z18StateThrowing_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z18StateThrowing_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 185(%a0)
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
	move.l 478(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l 630(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L687
.L684:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L687:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L684
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
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
	clr.b 186(%a1)
	move.w #8,180(%a1)
	clr.w 182(%a1)
	clr.w 184(%a1)
	move.l %a2,294(%a0)
	move.b #1,178(%a0)
	move.w 326(%a0),%d0
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
	clr.b 178(%a0)
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
	jle .L702
	move.l 294(%a2),%d0
	addq.l #1,%d0
	move.w raptor_ticks,%a0
	cmp.l %d0,%a0
	jle .L693
	move.w 180(%a4),%d0
	move.w 326(%a2),%a0
	cmp.w #21,%d0
	jle .L703
	cmp.w #22,%d0
	jeq .L704
	cmp.w #23,%d0
	jeq .L705
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 634(%a2),-(%sp)
	pea 5.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w 326(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 180(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L706
.L700:
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
.L693:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L703:
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 634(%a2),-(%sp)
	pea 2.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w 326(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 180(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L700
.L706:
	move.l 316(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 322(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.l 176(%a4),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L700
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l 128(%a4),%a0
	move.l %a0,176(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w raptor_ticks,%a0
	move.l %a0,294(%a2)
	jra .L693
.L702:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 634(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L704:
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 634(%a2),-(%sp)
	pea 3.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w 326(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 180(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L700
	jra .L706
.L705:
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	move.w 18(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 634(%a2),-(%sp)
	pea 4.w
	move.l (%a3),-(%sp)
	jsr __Z12animateFramejjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	move.w 326(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 180(%a4),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,308(%a2)
	addq.w #1,%d0
	move.w %d0,180(%a4)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L700
	jra .L706
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
	clr.b 186(%a0)
	clr.w 180(%a0)
	move.l 16(%fp),%a0
	clr.w 16(%a0)
	move.l 12(%fp),%a0
	move.w raptor_ticks,%a1
	move.l %a1,294(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23StateTurningAround_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z23StateTurningAround_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	clr.b 180(%a0)
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
	tst.w 180(%a4)
	jeq .L722
	tst.w 16(%a3)
	jle .L723
.L718:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
.L720:
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L722:
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L714
	move.w #1,180(%a4)
	move.w 326(%a2),%d0
	neg.w %d0
	move.w %d0,326(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L724
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
	move.l 90(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L714:
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 22(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L723:
	move.l 176(%a4),%a0
	tst.w (%a0)
	jeq .L718
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a4),%a0
	move.l %a0,176(%a4)
	addq.l #8,%sp
	move.l %a3,(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	jra .L720
.L724:
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
	move.l 90(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L714
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
	.even
	.globl	__Z29StateThrowingProjectile_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateThrowingProjectile_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	clr.b 186(%a0)
	move.l 16(%fp),%a1
	clr.w 16(%a1)
	clr.w 180(%a0)
	move.w raptor_ticks,%d1
	move.w %d1,182(%a0)
	clr.b 227(%a2)
	move.w 306(%a2),310(%a2)
	move.l 486(%a2),%a0
	clr.w 16(%a0)
	move.l 90(%a2),%d0
	move.l %d0,(%a0)
	move.l #12697392,8(%a0)
	move.w %d1,%a0
	move.l %a0,294(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12697392,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	move.b #1,%d0
	cmp.l (%a2),%d0
	jeq .L733
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L733:
	pea 16.w
	pea 13.w
	move.l #12773984,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 322(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
	.even
	.globl	__Z28StateThrowingProjectile_ExitP12StateMachineP7FighterP14SpriteAnimator
__Z28StateThrowingProjectile_ExitP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 90(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	move.l %d0,112(%a0)
	move.l %d0,4(%a0)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	addq.l #4,%sp
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z27fighterResetRaidenLightningP7Fighter
	.even
	.globl	__Z30StateThrowingProjectile_UpdateP12StateMachineP7FighterP14SpriteAnimator
__Z30StateThrowingProjectile_UpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 227(%a2)
	jeq .L753
	tst.w 180(%a3)
	jne .L746
	move.w #1,180(%a3)
	move.l 486(%a2),%a0
	clr.w 16(%a0)
.L746:
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L750
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 662(%a2),-(%sp)
	move.l 486(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l 90(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L754
.L736:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L753:
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L738
	move.w raptor_ticks,%a0
	move.w 182(%a3),%a4
	addq.l #1,%a4
	move.w %a0,%a1
	move.w 326(%a2),%d0
	cmp.l %a4,%a1
	jle .L740
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,%d1
	add.w %d1,%d1
	add.w %d1,310(%a2)
	move.w %a0,182(%a3)
.L740:
	cmp.w #1,%d0
	jne .L741
	cmp.w #320,310(%a2)
	jle .L743
.L750:
	move.l 176(%a3),%a0
	tst.w (%a0)
	jeq .L736
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 6(%a0),%a0
	jsr (%a0)
	move.l (%a3),%a0
	move.l %a0,176(%a3)
	lea (12,%sp),%sp
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L754:
	moveq #1,%d0
	move.l %d0,4(%a0)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L741:
	cmp.w #-1,%d0
	jeq .L755
.L743:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 642(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 658(%a2),-(%sp)
	move.l 486(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L756:
	move.l 90(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L736
	jra .L754
.L755:
	tst.w 310(%a2)
	jlt .L750
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 642(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 658(%a2),-(%sp)
	move.l 486(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L756
.L738:
	move.w 326(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 306(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 642(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 326(%a2),%a0
	move.l %a0,-(%sp)
	move.w 308(%a2),%a0
	move.l %a0,-(%sp)
	move.w 310(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 658(%a2),-(%sp)
	move.l 486(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L756
	.even
	.globl	__Z29StateThrowingProjectile_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z29StateThrowingProjectile_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z35StateThrowingProjectile_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z35StateThrowingProjectile_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
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
