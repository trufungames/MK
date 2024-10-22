#NO_APP
	.text
	.even
	.globl	__Z15stateMachineAddP12StateMachinesP5State
__Z15stateMachineAddP12StateMachinesP5State:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w %a1,(%a0)
	move.w %a1,%a1
	add.l %a1,%a1
	add.l %a1,%a1
	move.l 8(%fp),%a2
	move.l %a0,(%a1,%a2.l)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z16stateMachineInitP12StateMachinesP7FighterP14SpriteAnimator
__Z16stateMachineInitP12StateMachinesP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 16(%fp),%a2
	move.w 14(%fp),%a0
	add.l %a0,%a0
	add.l %a0,%a0
	move.l (%a0,%a1.l),%a0
	move.l %a0,296(%a2)
	move.l 20(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	clr.b 300(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 296(%a0),%a1
	move.l 14(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
__Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 16(%fp),%a0
	move.l 20(%fp),%d1
	move.w 14(%fp),%d0
	move.l 296(%a0),%a2
	cmp.w (%a2),%d0
	jeq .L4
	move.w %d0,%a2
	add.l %a2,%a2
	add.l %a2,%a2
	move.l (%a2,%a1.l),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L4:
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z18stateMachineUpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 20(%fp),%d3
	tst.b 301(%a2)
	jeq .L9
	move.w raptor_ticks,%d0
	cmp.w 302(%a2),%d0
	jlt .L21
	clr.b 301(%a2)
.L9:
	tst.w 256(%a2)
	jle .L22
.L11:
	tst.b 160(%a2)
	jne .L23
	tst.b 138(%a2)
	jeq .L14
	move.l 296(%a2),%a0
	move.w (%a0),%d0
	cmp.w #42,%d0
	jeq .L14
	cmp.w #5,%d0
	jeq .L14
	cmp.w #7,%d0
	jeq .L14
	cmp.w #6,%d0
	jeq .L14
	cmp.w #22,%d0
	jeq .L14
	cmp.w #21,%d0
	jeq .L14
	cmp.w #24,%d0
	jeq .L14
	cmp.w #23,%d0
	jeq .L14
	cmp.w #19,%d0
	jeq .L14
	cmp.w #18,%d0
	jeq .L14
	cmp.w #41,%d0
	jeq .L14
	cmp.w #40,%d0
	jeq .L14
	cmp.w #32,%d0
	jeq .L14
	cmp.w #28,%d0
	jeq .L14
	clr.b 138(%a2)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #42,%d0
	move.l %d0,12(%fp)
	move.l %a3,8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L23:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 240(%a2),%a1
	addq.l #3,%a1
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	cmp.l %a1,%a0
	jle .L14
	clr.b 160(%a2)
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L14:
	move.l 648(%a2),%a0
	move.l 296(%a0),%a0
	cmp.w #68,(%a0)
	jeq .L24
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	tst.b %d0
	jne .L8
.L17:
	tst.b 166(%a2)
	jne .L25
	move.l 296(%a2),%a0
	move.l %d3,20(%fp)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 6(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L24:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z21fighterHandleFatalityP12StateMachineP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	tst.b %d0
	jeq .L17
.L8:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L22:
	tst.b 136(%a2)
	jne .L11
	tst.b 140(%a2)
	jeq .L11
	tst.b 144(%a2)
	jne .L11
	tst.b 142(%a2)
	jne .L11
	move.l 296(%a2),%a0
	move.w (%a0),%d0
	cmp.w #68,%d0
	jeq .L11
	cmp.w #66,%d0
	jeq .L11
	move.w 272(%a2),%d0
	jle .L12
	move.l 272(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L11
.L25:
	clr.b 166(%a2)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	move.l 296(%a2),%a0
	move.l %d3,20(%fp)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 6(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L21:
	move.l 296(%a2),%a0
	move.l 10(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L12:
	clr.w %d1
	move.b 145(%a2),%d1
	move.w %d1,284(%a2)
	addq.w #1,%d0
	move.w %d0,272(%a2)
	move.l 264(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L11
	.even
	.globl	__Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
__Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a0
	move.b #1,301(%a0)
	move.w 14(%fp),%d0
	add.w raptor_ticks,%d0
	move.w %d0,302(%a0)
	move.l 296(%a0),%a1
	move.l 20(%fp),16(%fp)
	move.l %a0,12(%fp)
	move.l 10(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z15StateIdle_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z15StateIdle_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 144(%a2)
	jne .L36
.L29:
	clr.b 174(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	clr.w 284(%a2)
	move.w %d0,286(%a2)
	move.l sprite,%a1
	move.l 190(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	move.w 242(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w 244(%a2),%d1
	move.w %d1,%d2
	add.w #160,%d2
	move.w %d2,12(%a0)
	cmp.w #3,(%a2)
	jeq .L37
.L30:
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
	cmp.w #89,%d1
	jle .L38
.L28:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L38:
	move.l 296(%a2),%a0
	cmp.w #59,(%a0)
	jeq .L28
	move.l 236(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L36:
	clr.b 140(%a2)
	move.b #1,142(%a2)
	move.l 296(%a2),%a0
	cmp.w #66,(%a0)
	jeq .L29
	move.l 264(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.b 174(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	clr.w 284(%a2)
	move.w %d0,286(%a2)
	move.l sprite,%a1
	move.l 190(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	move.w 242(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w 244(%a2),%d1
	move.w %d1,%d2
	add.w #160,%d2
	move.w %d2,12(%a0)
	cmp.w #3,(%a2)
	jne .L30
.L37:
	move.l 262(%a2),-(%sp)
	jsr __Z16sfxRaidenIdleZapP12SoundHandler
	move.l %a2,(%sp)
	jsr __Z27fighterResetRaidenLightningP7Fighter
	move.l 92(%a2),%d0
	move.l %d0,%a5
	add.l %d0,%a5
	add.l %a5,%d0
	lsl.l #6,%d0
	move.l sprite,%a5
	add.l %d0,%a5
	moveq #1,%d0
	move.l %d0,4(%a5)
	addq.l #4,%sp
	cmp.w #1,266(%a2)
	jeq .L39
	move.w 252(%a2),%d2
	add.w #-12,%d2
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a5)
	move.w 244(%a2),%d1
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w %d1,12(%a0,%d0.l)
.L40:
	cmp.w #89,%d1
	jgt .L28
	jra .L38
.L39:
	move.w 252(%a2),%d2
	subq.w #4,%d2
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a5)
	move.w 244(%a2),%d1
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w %d1,12(%a0,%d0.l)
	jra .L40
	.even
	.globl	__Z16StateIdle_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z16StateIdle_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	clr.b 145(%a2)
	cmp.w #3,(%a2)
	jeq .L48
.L43:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 10(%a2),%a0
	move.l %a0,-(%sp)
	move.l 440(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (28,%sp),%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	cmp.w #3,(%a2)
	jeq .L49
.L42:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L49:
	move.l 92(%a2),%d0
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	cmp.w #1,266(%a2)
	jeq .L50
	move.w 252(%a2),%d2
	add.w #-12,%d2
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w 244(%a2),12(%a0,%d0.l)
	pea 1.w
	pea 1.w
	pea 30.w
	move.l 624(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
.L51:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L48:
	move.w 286(%a2),%a1
	lea (119,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L43
	move.l 262(%a2),-(%sp)
	jsr __Z16sfxRaidenIdleZapP12SoundHandler
	move.w raptor_ticks,286(%a2)
	addq.l #4,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 10(%a2),%a0
	move.l %a0,-(%sp)
	move.l 440(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (28,%sp),%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	cmp.w #3,(%a2)
	jne .L42
	jra .L49
.L50:
	move.w 252(%a2),%d2
	subq.w #4,%d2
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w 244(%a2),12(%a0,%d0.l)
	pea 1.w
	pea 1.w
	pea 30.w
	move.l 624(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L51
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
	tst.b 172(%a2)
	jne .L95
.L54:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L95:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	tst.b %d0
	jne .L54
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L56
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L56
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L58
	cmp.w #1,266(%a2)
	jeq .L59
.L58:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jeq .L60
	cmp.w #-1,266(%a2)
	jeq .L59
.L60:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L61
.L62:
	move.l 296(%a2),%a0
	cmp.w #2,(%a0)
	jeq .L54
	move.l 8(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L56:
	move.l 296(%a2),%a0
	cmp.w #1,(%a0)
	jeq .L54
	move.l 4(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L61:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L63
	move.w 266(%a2),%d4
	cmp.w #1,%d4
	jeq .L96
	cmp.w #-1,%d4
	jne .L63
	tst.l %d1
	jne .L65
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L89
.L90:
	moveq #0,%d4
.L70:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L74
.L73:
	tst.b 101(%a2)
	jeq .L74
	move.l 296(%a2),%a0
	cmp.w #11,(%a0)
	jeq .L54
	move.l 44(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L63:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L71
	cmp.w #1,266(%a2)
	jeq .L72
.L71:
	tst.l %d1
	jeq .L70
	cmp.w #-1,266(%a2)
	jne .L70
.L72:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jne .L73
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L73
.L74:
	tst.l %d4
	jeq .L75
	cmp.w #1,266(%a2)
	jeq .L76
.L75:
	tst.l %d1
	jeq .L77
	cmp.w #-1,266(%a2)
	jeq .L76
.L77:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L79
.L78:
	tst.b 101(%a2)
	jeq .L79
	move.l 296(%a2),%a0
	cmp.w #14,(%a0)
	jeq .L54
	move.l 56(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L59:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L61
	and.l JAGPAD_A,%d0
	jeq .L62
	tst.b 101(%a2)
	jeq .L62
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 20.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L79:
	move.w 266(%a2),%d5
	cmp.w #1,%d5
	jeq .L97
	cmp.w #-1,%d5
	jeq .L98
.L83:
	tst.l %d3
	jne .L99
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L87
	tst.b 139(%a2)
	jeq .L88
	tst.b 101(%a2)
	jne .L100
.L87:
	and.l JAGPAD_A,%d0
	jeq .L54
	tst.b 101(%a2)
	jeq .L54
	move.l 296(%a2),%a0
	cmp.w #13,(%a0)
	jeq .L54
	move.l 52(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L98:
	tst.l %d1
	jne .L81
	tst.l %d4
	jeq .L83
.L85:
	move.l 296(%a2),%a0
	cmp.w #4,(%a0)
	jeq .L54
	move.l 16(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L76:
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jne .L78
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L79
	jra .L78
.L96:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L65
	tst.l %d1
	jeq .L90
.L89:
	move.l 296(%a2),%a0
	cmp.w #7,(%a0)
	jeq .L54
	move.l 28(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L100:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 40.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L97:
	tst.l %d4
	jne .L81
	tst.l %d1
	jeq .L83
	jra .L85
.L81:
	move.l 296(%a2),%a0
	cmp.w #3,(%a0)
	jeq .L54
	move.l 12(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L65:
	move.l 296(%a2),%a0
	cmp.w #6,(%a0)
	jeq .L54
	move.l 24(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L88:
	tst.b 101(%a2)
	jeq .L87
	move.l 296(%a2),%a0
	cmp.w #9,(%a0)
	jeq .L54
	move.l 36(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L99:
	move.l 296(%a2),%a0
	cmp.w #5,(%a0)
	jeq .L54
	move.l 20(%a3),%a0
	move.l %a0,296(%a2)
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20StateBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z20StateBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 300(%a2)
	jeq .L107
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 476(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 14(%a3)
	jeq .L108
.L103:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L108:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L103
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L107:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 476(%a2),-(%sp)
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
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d2
	move.l 194(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L112
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L115
.L112:
	and.l JAGPAD_DOWN,%d0
	jne .L116
.L111:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L116:
	move.l 296(%a0),%a2
	cmp.w #8,(%a2)
	jeq .L111
	move.l 32(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L115:
	move.b #1,300(%a0)
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateDucking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	cmp.w #1,284(%a0)
	jeq .L119
	clr.w 14(%a1)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
.L119:
	move.w #2,14(%a1)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z19StateDucking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z19StateDucking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 300(%a2)
	jeq .L127
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 14(%a3)
	jeq .L128
.L123:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L128:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L123
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L127:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
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
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d2
	move.l 194(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L141
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L134
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L134
	tst.b 101(%a0)
	jeq .L131
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L136
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L136
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L138
	and.l JAGPAD_9,%d0
	jeq .L131
.L138:
	move.l 296(%a0),%a2
	cmp.w #17,(%a2)
	jeq .L131
	move.l 68(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L141:
	move.b #1,300(%a0)
.L131:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L134:
	move.l 296(%a0),%a2
	cmp.w #8,(%a2)
	jeq .L131
	move.l 32(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L136:
	move.l 296(%a0),%a2
	cmp.w #16,(%a2)
	jeq .L131
	move.l 64(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateWalkingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.w 284(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z26StateWalkingForward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateWalkingForward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 456(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L145
	tst.b 137(%a2)
	jeq .L146
	move.w 266(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,284(%a2)
	move.w raptor_ticks,238(%a2)
.L145:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 300(%a2)
	jeq .L144
	cmp.w #31,284(%a2)
	jgt .L150
.L144:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L146:
	move.w 266(%a2),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,284(%a2)
	move.w raptor_ticks,238(%a2)
	jra .L145
.L150:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L144
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d1
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L170
	cmp.w #-1,%d0
	jeq .L171
.L155:
	move.b #1,300(%a0)
.L153:
	movem.l (%sp)+,#1052
	unlk %fp
	rts
.L171:
	move.l 194(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jeq .L155
.L156:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L172
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jeq .L159
	tst.b 137(%a0)
	jeq .L159
	tst.b 101(%a0)
	jne .L173
.L159:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L174
.L160:
	tst.b 137(%a0)
	jeq .L161
	tst.b 101(%a0)
	jne .L175
.L161:
	and.l JAGPAD_7,%d0
	jeq .L162
	tst.b 101(%a0)
	jne .L167
.L162:
	tst.l %d2
	jeq .L163
	tst.b 101(%a0)
	jne .L167
.L163:
	tst.l %d3
	jeq .L153
	tst.b 101(%a0)
	jeq .L153
	move.l 296(%a0),%a2
	cmp.w #14,(%a2)
	jeq .L153
	move.l 56(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L170:
	move.l 194(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jne .L156
	move.b #1,300(%a0)
	jra .L153
.L174:
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L161
	jra .L160
.L172:
	move.l 296(%a0),%a2
	cmp.w #6,(%a2)
	jeq .L153
	move.l 24(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L167:
	move.l 296(%a0),%a2
	cmp.w #11,(%a2)
	jeq .L153
	move.l 44(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L175:
	move.l 296(%a0),%a2
	cmp.w #39,(%a2)
	jeq .L153
	move.l 156(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L173:
	move.l 296(%a0),%a2
	cmp.w #38,(%a2)
	jeq .L153
	move.l 152(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateWalkingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.w 284(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z27StateWalkingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateWalkingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 456(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L182
.L179:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 300(%a2)
	jeq .L178
	cmp.w #27,284(%a2)
	jgt .L183
.L178:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L182:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.w #4,284(%a2)
	move.w raptor_ticks,238(%a2)
	addq.l #8,%sp
	jra .L179
.L183:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L178
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	movem.l #12320,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d1
	move.w 266(%a0),%d0
	cmp.w #1,%d0
	jeq .L198
	cmp.w #-1,%d0
	jeq .L199
.L188:
	move.b #1,300(%a0)
.L186:
	movem.l (%sp)+,#1036
	unlk %fp
	rts
.L199:
	move.l 194(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jeq .L188
.L189:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L200
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jeq .L192
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L192
	tst.b 101(%a0)
	jne .L201
.L192:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L202
	tst.b 101(%a0)
	jne .L203
.L194:
	tst.l %d2
	jeq .L186
	tst.b 101(%a0)
	jeq .L186
	move.l 296(%a0),%a2
	cmp.w #15,(%a2)
	jeq .L186
	move.l 60(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L198:
	move.l 194(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jne .L189
	move.b #1,300(%a0)
	jra .L186
.L202:
	and.l JAGPAD_C,%d0
	jeq .L194
	tst.b 101(%a0)
	jeq .L194
	jra .L203
.L200:
	move.l 296(%a0),%a2
	cmp.w #7,(%a2)
	jeq .L186
	move.l 28(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L203:
	move.l 296(%a0),%a2
	cmp.w #11,(%a2)
	jeq .L186
	move.l 44(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L201:
	move.l 296(%a0),%a2
	cmp.w #20,(%a2)
	jeq .L186
	move.l 80(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateJumping_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.w 284(%a0)
	move.w raptor_ticks,238(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayJumpiP12SoundHandlerb
	.even
	.globl	__Z19StateJumping_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z19StateJumping_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 284(%a2),%d0
	move.w 266(%a2),%a0
	cmp.w #1,%d0
	jls .L217
	cmp.w #18,%d0
	jeq .L218
	cmp.w #19,%d0
	jeq .L219
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
.L208:
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L215
	tst.b 174(%a2)
	jne .L215
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d2
	add.w %d2,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w %d1,238(%a2)
	cmp.w #19,%d0
	jgt .L220
.L206:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L215:
	move.w 284(%a2),%d0
	cmp.w #19,%d0
	jle .L206
.L220:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L206
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L219:
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 3.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L208
.L217:
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	clr.l -(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L208
.L218:
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 2.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L208
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
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d2
	move.l 194(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L224
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L225
.L224:
	tst.b 101(%a0)
	jne .L230
.L225:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L231
	tst.b 101(%a0)
	jne .L232
.L223:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L231:
	and.l JAGPAD_9,%d0
	jeq .L223
	tst.b 101(%a0)
	jeq .L223
.L232:
	move.l 296(%a0),%a2
	cmp.w #19,(%a2)
	jeq .L223
	move.l 76(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L230:
	move.l 296(%a0),%a2
	cmp.w #18,(%a2)
	jeq .L223
	move.l 72(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z25StateJumpingForward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateJumpingForward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.w 284(%a0)
	move.w raptor_ticks,238(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayJumpiP12SoundHandlerb
	.even
	.globl	__Z26StateJumpingForward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateJumpingForward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 468(%a2),-(%sp)
	move.w 284(%a2),%a0
	move.l %a0,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jle .L240
	tst.b 174(%a2)
	jeq .L238
.L240:
	move.w 284(%a2),%d0
.L237:
	cmp.w #19,%d0
	jgt .L242
.L235:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L242:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L235
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L238:
	move.w 266(%a2),%a0
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
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w raptor_ticks,238(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L237
	move.l 262(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 284(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L235
	jra .L242
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
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d1
	tst.b 101(%a0)
	jeq .L245
	move.l 194(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L247
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L247
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L249
	and.l JAGPAD_7,%d0
	jeq .L245
.L249:
	move.l 296(%a0),%a2
	cmp.w #23,(%a2)
	jeq .L245
	move.l 92(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L247:
	move.l 296(%a0),%a2
	cmp.w #21,(%a2)
	jne .L252
.L245:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L252:
	move.l 84(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z26StateJumpingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateJumpingBackward_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.w 284(%a0)
	move.w raptor_ticks,238(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayJumpiP12SoundHandlerb
	.even
	.globl	__Z27StateJumpingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateJumpingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 468(%a2),-(%sp)
	move.w #19,%a0
	sub.w 284(%a2),%a0
	move.l %a0,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jle .L260
	tst.b 174(%a2)
	jeq .L258
.L260:
	move.w 284(%a2),%d0
.L257:
	cmp.w #19,%d0
	jgt .L262
.L255:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L262:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L255
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L258:
	move.w 266(%a2),%a0
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
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w raptor_ticks,238(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L257
	move.l 262(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 284(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L255
	jra .L262
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
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.l 16(%fp),%d1
	tst.b 101(%a0)
	jeq .L265
	move.l 194(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L267
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L267
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L269
	and.l JAGPAD_7,%d0
	jeq .L265
.L269:
	move.l 296(%a0),%a2
	cmp.w #24,(%a2)
	jeq .L265
	move.l 96(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L267:
	move.l 296(%a0),%a2
	cmp.w #22,(%a2)
	jne .L272
.L265:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L272:
	move.l 88(%a1),%a2
	move.l %a2,296(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23StateDuckBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateDuckBlocking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24StateDuckBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateDuckBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 300(%a2)
	jeq .L283
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 14(%a3)
	jne .L275
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L278
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L278
	and.l JAGPAD_DOWN,%d0
	jne .L284
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L275
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L283:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 484(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L275:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L278:
	move.l 296(%a2),%a0
	cmp.w #1,(%a0)
	jeq .L275
	move.l 4(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L284:
	move.w #1,284(%a2)
	move.l 296(%a2),%a0
	cmp.w #2,(%a0)
	jeq .L275
	move.l 8(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
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
	move.l 194(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L288
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L287
	and.l JAGPAD_8,%d0
	jne .L287
.L288:
	move.b #1,300(%a0)
.L287:
	unlk %fp
	rts
	.even
	.globl	__Z22StateLowPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateLowPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z23StateLowPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateLowPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 376(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L299
.L294:
	tst.w 284(%a2)
	jle .L295
	move.l 296(%a2),%a0
	cmp.w #10,(%a0)
	jeq .L293
	move.l 40(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L295:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L300
.L293:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L299:
	tst.w 288(%a2)
	jne .L294
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L294
.L300:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L293
	move.l (%a4),%a0
	move.l %a0,296(%a2)
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
	move.l 12(%fp),%a0
	tst.b 101(%a0)
	jeq .L303
	move.l JAGPAD_C,%d0
	and.l 194(%a0),%d0
	jeq .L303
	addq.w #1,284(%a0)
.L303:
	unlk %fp
	rts
	.even
	.globl	__Z28StateLowRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z28StateLowRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,286(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w %d0,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z29StateLowRepeatPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z29StateLowRepeatPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 300(%a2)
	jne .L309
	move.l 376(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 496(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,14(%a3)
	jeq .L314
.L310:
	tst.w 284(%a2)
	jle .L311
.L315:
	clr.w 284(%a2)
	move.w raptor_ticks,286(%a2)
	clr.w 288(%a2)
.L308:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L309:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 296(%a2),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L308
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L311:
	move.w raptor_ticks,%d0
	move.w 286(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L308
	move.b #1,300(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L314:
	tst.w 288(%a2)
	jne .L310
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 284(%a2)
	jgt .L315
	jra .L311
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
	move.l 12(%fp),%a0
	tst.b 101(%a0)
	jeq .L318
	move.l JAGPAD_C,%d0
	and.l 194(%a0),%d0
	jeq .L318
	addq.w #1,284(%a0)
.L318:
	unlk %fp
	rts
	.even
	.globl	__Z23StateHighPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHighPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z24StateHighPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateHighPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 376(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 500(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L329
.L324:
	tst.w 284(%a2)
	jle .L325
	move.l 296(%a2),%a0
	cmp.w #12,(%a0)
	jeq .L323
	move.l 48(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L325:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L330
.L323:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L329:
	tst.w 288(%a2)
	jne .L324
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	jra .L324
.L330:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L323
	move.l (%a4),%a0
	move.l %a0,296(%a2)
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
	move.l 12(%fp),%a0
	tst.b 101(%a0)
	jeq .L333
	move.l 194(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L337
	addq.w #1,284(%a0)
.L333:
	unlk %fp
	rts
.L337:
	and.l JAGPAD_7,%d0
	jeq .L333
	addq.w #1,284(%a0)
	jra .L333
	.even
	.globl	__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,286(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w %d0,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z30StateHighRepeatPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z30StateHighRepeatPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 300(%a2)
	jne .L341
	move.l 380(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 504(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,14(%a3)
	jeq .L346
.L342:
	tst.w 284(%a2)
	jle .L343
.L347:
	clr.w 284(%a2)
	move.w raptor_ticks,286(%a2)
	clr.w 288(%a2)
.L340:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L341:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 492(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 296(%a2),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L340
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L343:
	move.w raptor_ticks,%d0
	move.w 286(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L340
	move.b #1,300(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L346:
	tst.w 288(%a2)
	jne .L342
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 284(%a2)
	jgt .L347
	jra .L343
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
	move.l 12(%fp),%a0
	tst.b 101(%a0)
	jeq .L350
	move.l 194(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L354
	addq.w #1,284(%a0)
.L350:
	unlk %fp
	rts
.L354:
	and.l JAGPAD_7,%d0
	jeq .L350
	addq.w #1,284(%a0)
	jra .L350
	.even
	.globl	__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z22StateLowKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z22StateLowKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 384(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L361
.L358:
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L362
.L357:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L362:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L357
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L361:
	tst.w 288(%a2)
	jne .L358
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L357
	jra .L362
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z23StateHighKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateHighKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 388(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 512(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L371
.L368:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L372
.L367:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L372:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L367
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L371:
	tst.w 288(%a2)
	jne .L368
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L367
	jra .L372
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z29StateRoundhouseKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z29StateRoundhouseKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 408(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 564(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 58(%a2),%a0
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
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L377
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z24StateUppercutting_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateUppercutting_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 400(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 528(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L388
.L385:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L388:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L385
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	move.l 12(%fp),%a0
	move.w 266(%a0),%a1
	move.l %a1,-(%sp)
	move.w 244(%a0),%a1
	move.l %a1,-(%sp)
	move.w 242(%a0),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a0),%a1
	move.l %a1,-(%sp)
	move.l 528(%a0),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z23StateDuckKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateDuckKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
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
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 576(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L396
.L393:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L396:
	move.w #1,284(%a2)
	move.l 296(%a2),%a0
	cmp.w #2,(%a0)
	jeq .L393
	move.l 8(%a3),%a0
	move.l %a0,296(%a2)
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
	clr.w 14(%a1)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z24StateJumpPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateJumpPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L406
	tst.b 174(%a2)
	jne .L406
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w %d1,238(%a2)
	cmp.w #19,%d0
	jgt .L408
.L401:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L406:
	move.w 284(%a2),%d0
	cmp.w #19,%d0
	jle .L401
.L408:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L401
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z23StateJumpPunching_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateJumpPunching_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 266(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
	move.l %a2,-(%sp)
	move.w 242(%a1),%a2
	move.l %a2,-(%sp)
	move.w 16(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 516(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
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
	clr.w 14(%a1)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z23StateJumpKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateJumpKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 520(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L418
	tst.b 174(%a2)
	jne .L418
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w %d1,238(%a2)
	cmp.w #19,%d0
	jgt .L420
.L413:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L418:
	move.w 284(%a2),%d0
	cmp.w #19,%d0
	jle .L413
.L420:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L413
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z22StateJumpKicking_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateJumpKicking_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 266(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
	move.l %a2,-(%sp)
	move.w 242(%a1),%a2
	move.l %a2,-(%sp)
	move.w 16(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 520(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z8sfxSwingP12SoundHandler
	.even
	.globl	__Z20StateSweeping_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z20StateSweeping_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 404(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 560(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L428
.L425:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L428:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L425
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.w 286(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z33StateJumpingKickingForward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z33StateJumpingKickingForward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 524(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%d0
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d0,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L434
	move.w 284(%a2),%d1
	cmp.w #19,%d1
	jgt .L439
.L433:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L434:
	tst.w 286(%a2)
	jeq .L440
	move.w 284(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,244(%a2)
	addq.w #1,%d1
	move.w %d1,284(%a2)
	move.w %d0,238(%a2)
.L441:
	cmp.w #19,%d1
	jle .L433
.L439:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L433
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L440:
	move.w 266(%a2),%a0
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
	move.w raptor_ticks,%d0
	addq.l #8,%sp
	move.w 284(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,244(%a2)
	addq.w #1,%d1
	move.w %d1,284(%a2)
	move.w %d0,238(%a2)
	jra .L441
	.even
	.globl	__Z32StateJumpingKickingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingKickingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a0),%a1
	move.l %a1,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 524(%a2),-(%sp)
	pea 2.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w #1,286(%a2)
	lea (40,%sp),%sp
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
	clr.w 14(%a1)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z34StateJumpingKickingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z34StateJumpingKickingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 524(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L451
	tst.b 174(%a2)
	jeq .L449
.L451:
	move.w 284(%a2),%d0
	cmp.w #19,%d0
	jgt .L453
.L446:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L453:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L446
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L449:
	move.w 266(%a2),%a0
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
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w raptor_ticks,238(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L446
	jra .L453
	.even
	.globl	__Z33StateJumpingKickingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingKickingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 266(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
	move.l %a2,-(%sp)
	move.w 242(%a1),%a2
	move.l %a2,-(%sp)
	move.w 16(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 524(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
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
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.w 286(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z34StateJumpingPunchingForward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z34StateJumpingPunchingForward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%d0
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d0,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L459
	move.w 284(%a2),%d1
	cmp.w #19,%d1
	jgt .L464
.L458:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L459:
	tst.w 286(%a2)
	jeq .L465
	move.w 284(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,244(%a2)
	addq.w #1,%d1
	move.w %d1,284(%a2)
	move.w %d0,238(%a2)
.L466:
	cmp.w #19,%d1
	jle .L458
.L464:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L458
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L465:
	move.w 266(%a2),%a0
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
	move.w raptor_ticks,%d0
	addq.l #8,%sp
	move.w 284(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,244(%a2)
	addq.w #1,%d1
	move.w %d1,284(%a2)
	move.w %d0,238(%a2)
	jra .L466
	.even
	.globl	__Z33StateJumpingPunchingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingPunchingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a0),%a1
	move.l %a1,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 516(%a2),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w #1,286(%a2)
	lea (40,%sp),%sp
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
	clr.w 14(%a1)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayHiyaiP12SoundHandlerb
	.even
	.globl	__Z35StateJumpingPunchingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z35StateJumpingPunchingBackward_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 392(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L476
	tst.b 174(%a2)
	jeq .L474
.L476:
	move.w 284(%a2),%d0
	cmp.w #19,%d0
	jgt .L478
.L471:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L478:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L471
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L474:
	move.w 266(%a2),%a0
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
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w raptor_ticks,238(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L471
	jra .L478
	.even
	.globl	__Z34StateJumpingPunchingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z34StateJumpingPunchingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 266(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
	move.l %a2,-(%sp)
	move.w 242(%a1),%a2
	move.l %a2,-(%sp)
	move.w 16(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 516(%a1),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
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
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	addq.l #4,%sp
	cmp.w #89,244(%a2)
	jle .L486
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 258(%a2),%a0
	move.l %a0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L486:
	move.l 296(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L482
	move.l 136(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L482:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z18StateHitLow_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z18StateHitLow_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 532(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L491
.L488:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L491:
	clr.b 136(%a2)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L488
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	addq.l #4,%sp
	cmp.w #89,244(%a2)
	jle .L499
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 258(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	move.w 266(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%a0
	move.l %a0,16(%fp)
	move.w 244(%a2),%d1
	add.w #-10,%d1
	move.w %d1,%a0
	move.l %a0,12(%fp)
	muls.w #-10,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z10bloodSpraysss
.L499:
	move.l 296(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L495
	move.l 136(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L495:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z19StateHitHigh_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z19StateHitHigh_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 536(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L504
.L501:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L504:
	clr.b 136(%a2)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L501
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	addq.l #4,%sp
	cmp.w #89,244(%a2)
	jle .L512
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 258(%a2),%a0
	move.l %a0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L512:
	move.l 296(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L508
	move.l 136(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L508:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z20StateHitSweep_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z20StateHitSweep_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 80(%a2),%a0
	move.l %a0,-(%sp)
	move.l 552(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 80(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L517
.L514:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L517:
	move.l 262(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 136(%a2)
	move.b #1,145(%a2)
	move.l 296(%a2),%a0
	addq.l #4,%sp
	cmp.w #28,(%a0)
	jeq .L514
	move.l 112(%a3),%a0
	move.l %a0,296(%a2)
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
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 144(%a2)
	jne .L525
.L522:
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w %d0,238(%a2)
	cmp.w #3,(%a2)
	jeq .L526
.L521:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L525:
	clr.b 140(%a2)
	move.b #1,142(%a2)
	move.l 296(%a2),%a1
	cmp.w #66,(%a1)
	jeq .L522
	move.l 264(%a0),%a1
	move.l %a1,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w %d0,238(%a2)
	cmp.w #3,(%a2)
	jne .L521
.L526:
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z17sfxRaidenTeleportP12SoundHandler
	.even
	.globl	__Z17StateGetUp_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z17StateGetUp_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 556(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L531
.L528:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L531:
	clr.b 136(%a2)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L528
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	addq.l #4,%sp
	cmp.w #89,244(%a2)
	jle .L539
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	clr.w 284(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 258(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l 262(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	tst.b 103(%a2)
	jeq .L540
.L535:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L540:
	move.w 266(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,16(%fp)
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,12(%fp)
	move.w 252(%a2),%a2
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z9bloodDropsss
.L539:
	move.l 296(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L535
	move.l 136(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z19StateHitBack_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z19StateHitBack_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #2,14(%a3)
	jeq .L547
.L543:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L548
.L544:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 540(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L549
.L542:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L549:
	clr.b 136(%a2)
	clr.b 103(%a2)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L542
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L548:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 540(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L542
	jra .L549
.L547:
	tst.w 284(%a2)
	jne .L543
	move.w #1,284(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L544
	jra .L548
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
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	addq.l #4,%sp
	cmp.w #89,244(%a2)
	jle .L557
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	clr.w 284(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 258(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 262(%a2),8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
.L557:
	move.l 296(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L553
	move.l 136(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L553:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitBackLow_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z22StateHitBackLow_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,14(%a3)
	jeq .L564
.L560:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L565
.L561:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 532(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L566
.L559:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L566:
	clr.b 136(%a2)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L559
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L565:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 532(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L559
	jra .L566
.L564:
	tst.w 284(%a2)
	jne .L560
	move.w #1,284(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L561
	jra .L565
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
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 258(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l 262(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 266(%a2),%d0
	muls.w #-20,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	move.w 266(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-80,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a3
	jsr (%a3)
	move.w 266(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 266(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,16(%fp)
	move.w 244(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,12(%fp)
	muls.w #-60,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z9bloodDropsss
	.even
	.globl	__Z23StateHitUppercut_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateHitUppercut_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.l #65536,284(%a2)
	jeq .L578
	cmp.w #8,284(%a2)
	jeq .L579
.L573:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L580
.L571:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L580:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 244(%a2),%d1
	move.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L581
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
.L583:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L579:
	tst.w 288(%a2)
	jne .L573
	move.w #1,288(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L571
	jra .L580
.L581:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 136(%a2)
	move.b #1,145(%a2)
	move.l 296(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L582
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 244(%a2),%d1
	move.w 284(%a2),%d0
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
	jra .L583
.L578:
	move.w #1,286(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L571
	jra .L580
.L582:
	move.w 244(%a2),%d1
	move.w 284(%a2),%d0
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
	jra .L583
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
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	tst.b 144(%a2)
	jne .L590
.L588:
	clr.b 300(%a2)
	move.w raptor_ticks,238(%a2)
	move.b #1,145(%a2)
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L590:
	clr.b 140(%a2)
	move.b #1,142(%a2)
	move.l 296(%a2),%a1
	cmp.w #66,(%a1)
	jeq .L588
	move.l 264(%a0),%a1
	move.l %a1,296(%a2)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.b 300(%a2)
	move.w raptor_ticks,238(%a2)
	move.b #1,145(%a2)
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z19StateLaydown_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z19StateLaydown_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 548(%a2),-(%sp)
	moveq #0,%d0
	move.w 78(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w 238(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jgt .L595
.L592:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L595:
	move.l 296(%a2),%a0
	cmp.w #28,(%a0)
	jeq .L592
	move.l 112(%a4),%a0
	move.l %a0,296(%a2)
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
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w #4,284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 258(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
	.even
	.globl	__Z23StateHitDropKick_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateHitDropKick_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 14(%a3),%d0
	cmp.w #1,%d0
	jeq .L607
	cmp.w #3,%d0
	jeq .L608
.L602:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L609
.L600:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L609:
	move.w 266(%a2),%d0
	ext.l %d0
	move.l %d0,%d1
	neg.l %d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 244(%a2),%d1
	move.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L610
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
.L612:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L608:
	tst.w 288(%a2)
	jne .L602
	move.w #1,288(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L600
	jra .L609
.L607:
	tst.w 286(%a2)
	jne .L602
	move.w #1,286(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L600
	jra .L609
.L610:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 136(%a2)
	move.b #1,145(%a2)
	move.l 296(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L611
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 244(%a2),%d1
	move.w 284(%a2),%d0
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
	jra .L612
.L611:
	move.w 244(%a2),%d1
	move.w 284(%a2),%d0
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
	jra .L612
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
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w #4,284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 258(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
	.even
	.globl	__Z18StateHitAir_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z18StateHitAir_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,14(%a3)
	jeq .L623
.L618:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L624
.L617:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L624:
	move.w 266(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 244(%a2),%d1
	move.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L625
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
.L627:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L623:
	tst.w 286(%a2)
	jne .L618
	move.w #1,286(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L617
	jra .L624
.L625:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 136(%a2)
	move.b #1,145(%a2)
	move.l 296(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L626
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 244(%a2),%d1
	move.w 284(%a2),%d0
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
	jra .L627
.L626:
	move.w 244(%a2),%d1
	move.w 284(%a2),%d0
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
	jra .L627
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
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w %d0,284(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 258(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
	.even
	.globl	__Z23StateHitBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateHitBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 284(%a2),%a1
	lea (9,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L635
.L633:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 480(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L635:
	clr.b 136(%a2)
	move.l 296(%a2),%a0
	cmp.w #1,(%a0)
	jeq .L633
	move.l 4(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 480(%a2),-(%sp)
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
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 258(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
	.even
	.globl	__Z30StateHitDuckingBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z30StateHitDuckingBlocking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L643
.L641:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L643:
	clr.b 136(%a2)
	move.l 296(%a2),%a0
	cmp.w #1,(%a0)
	jeq .L641
	move.l 4(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 488(%a2),-(%sp)
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
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	move.w %d0,284(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 258(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z8sfxBlockP12SoundHandler
	.even
	.globl	__Z32StateHitBlockingKnockback_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z32StateHitBlockingKnockback_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w raptor_ticks,%a0
	move.w 284(%a2),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L652
.L649:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jgt .L653
.L650:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 480(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L653:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,238(%a2)
	addq.l #8,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 480(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L652:
	clr.b 136(%a2)
	move.l 296(%a2),%a1
	tst.w (%a1)
	jeq .L649
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	move.w 238(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jle .L650
	jra .L653
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
	move.l 12(%fp),%a0
	clr.b 300(%a0)
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	move.w raptor_ticks,238(%a0)
	clr.w 284(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24StateBodyPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateBodyPunching_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
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
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 568(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 284(%a2)
	jne .L659
	cmp.w #2,14(%a3)
	jeq .L663
.L659:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L664
.L658:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L664:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L658
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L663:
	move.w #1,284(%a2)
	cmp.w #2,(%a2)
	jeq .L665
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L658
	jra .L664
.L665:
	move.l 262(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L658
	jra .L664
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
	move.l 12(%fp),%a0
	clr.b 300(%a0)
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	move.w raptor_ticks,238(%a0)
	clr.w 284(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23StateBodyKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateBodyKicking_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
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
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 572(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 284(%a2)
	jne .L671
	cmp.w #2,14(%a3)
	jeq .L674
.L671:
	move.w 62(%a2),%a0
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
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L670
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L674:
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 62(%a2),%a0
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
	move.l 12(%fp),%a0
	clr.b 300(%a0)
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	move.w raptor_ticks,238(%a0)
	clr.b 139(%a0)
	clr.w 284(%a0)
	move.w (%a0),%d0
	cmp.w #5,%d0
	jge .L684
.L680:
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z12sfxThrowMaleP12SoundHandler
.L684:
	cmp.w #6,%d0
	jgt .L685
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z13sfxThrowNinjaP12SoundHandler
.L685:
	cmp.w #7,%d0
	jne .L680
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z14sfxThrowFemaleP12SoundHandler
	.even
	.globl	__Z20StateThrowing_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z20StateThrowing_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
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
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 580(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L690
.L687:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L690:
	clr.b 139(%a2)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L687
	move.l (%a3),%a0
	move.l %a0,296(%a2)
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
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	tst.b 126(%a0)
	jne .L698
	clr.w %d0
	move.w %d0,14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	clr.b 300(%a0)
	move.w #8,284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	move.w %d0,238(%a0)
	move.b #1,136(%a0)
	move.w 266(%a0),%d0
	ext.l %d0
	lsl.l #5,%d0
	move.l %d0,12(%fp)
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z19fighterPositionXAddP7Fighteri
.L698:
	moveq #2,%d0
	move.w %d0,14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	clr.b 300(%a0)
	move.w #8,284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	move.w %d0,238(%a0)
	move.b #1,136(%a0)
	move.w 266(%a0),%d0
	ext.l %d0
	lsl.l #5,%d0
	move.l %d0,12(%fp)
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z19fighterPositionXAddP7Fighteri
	.even
	.globl	__Z23StateBeingThrown_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateBeingThrown_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,14(%a3)
	jle .L709
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L700
	move.w 284(%a2),%d0
	move.w 266(%a2),%a0
	cmp.w #21,%d0
	jle .L710
	cmp.w #22,%d0
	jeq .L711
	cmp.w #23,%d0
	jeq .L712
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 5.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
.L704:
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L713
	move.w raptor_ticks,238(%a2)
.L700:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L710:
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 2.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L704
.L709:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l 584(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L711:
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 3.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L704
.L713:
	move.w 258(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 136(%a2)
	clr.b 126(%a2)
	move.b #1,145(%a2)
	move.l 296(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L700
	move.l 128(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L712:
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 4.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L704
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
	move.l 12(%fp),%a0
	clr.b 300(%a0)
	clr.w 284(%a0)
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	move.w raptor_ticks,238(%a0)
	clr.b 136(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z25StateTurningAround_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateTurningAround_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.w 284(%a2)
	jeq .L724
	tst.w 14(%a3)
	jle .L725
.L722:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 20(%a2),%a1
	move.l %a1,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L718:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L724:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L726
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L727:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L726:
	move.w #1,284(%a2)
	move.l %a2,-(%sp)
	jsr __Z20fighterTurnInstantlyP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L727
.L725:
	clr.b 138(%a2)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L722
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 20(%a2),%a1
	move.l %a1,-(%sp)
	move.l 460(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L718
	.even
	.globl	__Z24StateTurningAround_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z24StateTurningAround_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L730
	move.w #1,284(%a2)
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,266(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L736
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d3
	move.l %d3,24(%a0,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
.L730:
	clr.b 136(%a2)
	clr.b 138(%a2)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L729
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L729:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L736:
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #1,%d3
	move.l %d3,24(%a0,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d3,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	jra .L730
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
	move.l %d2,-(%sp)
	move.l 12(%fp),%a2
	clr.b 300(%a2)
	move.l 16(%fp),%a0
	clr.w 14(%a0)
	clr.w 284(%a2)
	move.w raptor_ticks,%a1
	move.w %a1,286(%a2)
	clr.w 288(%a2)
	clr.b 175(%a2)
	move.w 252(%a2),250(%a2)
	move.w 244(%a2),%d0
	move.w %d0,248(%a2)
	move.w (%a2),%d1
	move.w %d1,%d2
	subq.w #1,%d2
	cmp.w #1,%d2
	jls .L760
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.w %a1,238(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12854512,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #7,%d1
	jls .L761
.L739:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L761:
	and.l #65535,%d1
	add.l %d1,%d1
	move.w .L747(%pc,%d1.l),%d0
	jmp %pc@(2,%d0:w)
.L747:
	.word .L739-.L747
	.word .L742-.L747
	.word .L743-.L747
	.word .L744-.L747
	.word .L745-.L747
	.word .L739-.L747
	.word .L739-.L747
	.word .L746-.L747
.L760:
	subq.w #8,%d0
	move.w %d0,248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.w %a1,238(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12854512,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #7,%d1
	jhi .L739
	jra .L761
.L743:
	tst.b 270(%a2)
	jne .L762
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991104,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z12sfxKanoKnifeP12SoundHandler
.L744:
	tst.b 270(%a2)
	jne .L763
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991152,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L745:
	tst.b 270(%a2)
	jne .L764
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991200,-(%sp)
.L758:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L746:
	tst.b 270(%a2)
	jeq .L757
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991248,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L742:
	tst.b 270(%a2)
	jne .L765
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991056,-(%sp)
.L766:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L757:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991248,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L765:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991056,-(%sp)
	jra .L766
.L764:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991200,-(%sp)
	jra .L758
.L763:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991152,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L762:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991104,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z12sfxKanoKnifeP12SoundHandler
	.even
	.globl	__Z30StateThrowingProjectile_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z30StateThrowingProjectile_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 175(%a2)
	jne .L769
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	cmp.w #3,(%a2)
	jeq .L770
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L794
.L771:
	move.w (%a2),%d0
	cmp.w #2,%d0
	jeq .L795
	cmp.w #3,%d0
	jeq .L776
.L789:
	move.w 266(%a2),%d0
.L775:
	move.w raptor_ticks,%a0
	move.w 286(%a2),%a4
	addq.l #1,%a4
	move.w %a0,%a1
	cmp.l %a4,%a1
	jle .L778
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,%d1
	add.w %d1,%d1
	add.w %d1,250(%a2)
	move.w %a0,286(%a2)
.L778:
	cmp.w #1,%d0
	jeq .L796
	cmp.w #-1,%d0
	jne .L781
	tst.w 246(%a2)
	jlt .L792
.L781:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L783:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L797
.L768:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L769:
	tst.w 284(%a2)
	jne .L784
	move.w #1,284(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
.L784:
	move.w 90(%a2),%a0
	move.l %a0,-(%sp)
	move.l 436(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L792
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 90(%a2),%a0
	move.l %a0,-(%sp)
	move.l 616(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L768
.L797:
	moveq #1,%d0
	move.l %d0,4(%a0)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L796:
	cmp.w #320,246(%a2)
	jle .L781
.L792:
	move.l 92(%a2),%d0
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
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L768
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L794:
	cmp.w #3,(%a2)
	jne .L772
.L770:
	pea 8.w
	move.l 436(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jne .L771
.L772:
	move.w 266(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L783
.L776:
	tst.w 288(%a2)
	jne .L789
	move.w #1,288(%a2)
	move.w 266(%a2),%d0
	move.w %d0,%d1
	lsl.w #6,%d1
	add.w %d1,250(%a2)
	jra .L775
.L795:
	tst.w 288(%a2)
	jne .L789
	move.w #1,288(%a2)
	move.w 266(%a2),%d0
	move.w %d0,%d1
	lsl.w #4,%d1
	add.w %d1,250(%a2)
	jra .L775
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
	.even
	.globl	__Z25StateCageShadowKick_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateCageShadowKick_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	clr.b 300(%a2)
	move.l 16(%fp),%a0
	clr.w 14(%a0)
	move.w raptor_ticks,%d1
	move.w %d1,284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.b 175(%a2)
	move.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.w %d1,238(%a2)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d0
	move.l %d0,144(%a3)
	move.b #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 244(%a2),%d0
	subq.w #1,%d0
	move.w %d0,12(%a0)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	cmp.w #1,(%a2)
	jeq .L808
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L808:
	tst.b 270(%a2)
	jeq .L805
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991008,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L805:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991008,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
	.even
	.globl	__Z26StateCageShadowKick_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateCageShadowKick_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w 288(%a2),%d0
	lea (12,%sp),%sp
	cmp.w #3,%d0
	jeq .L811
	move.w raptor_ticks,%d1
	move.w 284(%a2),%a1
	addq.l #4,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jgt .L827
	cmp.w #6,%d0
	jgt .L813
.L828:
	move.w %d0,%a0
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL20cageShadowKickFrames
	move.l 436(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L810:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L827:
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w %d1,284(%a2)
	cmp.w #6,%d0
	jle .L828
.L813:
	move.l 92(%a2),%d0
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
	move.l %a2,(%sp)
	jsr __Z27fighterResetRaidenLightningP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L810
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L811:
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	moveq #-1,%d1
	cmp.l 4(%a0),%d1
	jeq .L829
	move.w raptor_ticks,%d0
	cmp.w #95,286(%a2)
	jgt .L830
.L817:
	move.w 284(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jle .L819
	tst.b 175(%a2)
	jeq .L831
.L818:
	move.w 266(%a2),%d1
	move.w %d1,%d2
	lsl.w #5,%d2
	add.w %d2,250(%a2)
	cmp.w #1,%d1
	jeq .L832
	cmp.w #-1,%d1
	jeq .L833
.L824:
	move.w #3,%a0
	move.w %d0,284(%a2)
.L834:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL20cageShadowKickFrames
	move.l 436(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L810
.L830:
	move.w 284(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jgt .L818
.L819:
	move.w #3,%a0
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL20cageShadowKickFrames
	move.l 436(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L810
.L829:
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.w raptor_ticks,%d0
	cmp.w #95,286(%a2)
	jle .L817
	jra .L830
.L833:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jle .L824
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,288(%a2)
	move.w #4,%a0
.L835:
	move.w %d0,284(%a2)
	jra .L834
.L831:
	move.w 266(%a2),%d0
	ext.l %d0
	lsl.l #4,%d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	add.w #16,286(%a2)
	move.w raptor_ticks,284(%a2)
	move.w 288(%a2),%a0
	addq.l #8,%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 508(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL20cageShadowKickFrames
	move.l 436(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L810
.L832:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jge .L824
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,288(%a2)
	move.w #4,%a0
	jra .L835
	.even
	.globl	__Z25StateCageShadowKick_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateCageShadowKick_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,175(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z31StateCageShadowKick_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateCageShadowKick_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateCageNutPunch_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateCageNutPunch_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	clr.w 284(%a0)
	clr.w 286(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24StateCageNutPunch_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateCageNutPunch_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 96(%a2),%d0
	cmp.w #1,%d0
	jeq .L841
	cmp.w #7,%d0
	jeq .L841
	move.l 428(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L850
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 608(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L840:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L841:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 608(%a2),-(%sp)
	move.w 284(%a2),%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,%d0
	move.w 238(%a2),%a1
	addq.l #3,%a1
	move.w %d0,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jle .L840
	tst.w 286(%a2)
	jne .L844
	move.w 284(%a2),%d1
	addq.w #1,%d1
	move.w %d1,284(%a2)
	cmp.w #4,%d1
	jeq .L852
.L845:
	moveq #1,%d1
	cmp.l 284(%a2),%d1
	jeq .L850
	move.w %d0,238(%a2)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L850:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L840
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L844:
	subq.w #1,284(%a2)
	jra .L845
.L852:
	move.w #3,284(%a2)
	move.w #1,286(%a2)
	jra .L845
	.even
	.globl	__Z23StateCageNutPunch_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateCageNutPunch_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateCageNutPunch_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateCageNutPunch_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18StateHitNuts_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitNuts_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.b 300(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,238(%a2)
	move.w %d0,284(%a2)
	clr.w 286(%a2)
	move.l 262(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	clr.l 8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z7bgShakeb
	.even
	.globl	__Z19StateHitNuts_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z19StateHitNuts_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 284(%a2),%a1
	move.w raptor_ticks,%a0
	lea (9,%a1),%a3
	cmp.l %a3,%a0
	jle .L858
	tst.w 286(%a2)
	jeq .L862
.L858:
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jgt .L863
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 2.w
	move.l 620(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L857:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L863:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L857
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L862:
	move.w #1,286(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	move.w 284(%a2),%a1
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	jra .L858
	.even
	.globl	__Z18StateHitNuts_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z18StateHitNuts_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateHitNuts_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateHitNuts_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateKanoCannonBall_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateKanoCannonBall_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.b 174(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	move.w %d0,284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z22sfxKanoCannonBallStartP12SoundHandler
	.even
	.globl	__Z26StateKanoCannonBall_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateKanoCannonBall_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w 284(%a2),%a1
	lea (179,%a1),%a1
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L869
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L878
	and.l JAGPAD_8,%d0
	jne .L878
.L869:
	move.w 286(%a2),%d0
	jeq .L880
	cmp.w #1,%d0
	jeq .L881
.L872:
	tst.b 174(%a2)
	jeq .L874
.L873:
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	move.w 288(%a2),%d0
	cmp.l %a1,%a0
	jle .L876
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,244(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w %d1,238(%a2)
.L876:
	cmp.w #19,%d0
	jgt .L882
.L874:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 600(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L868:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L881:
	tst.b 174(%a2)
	jne .L873
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	tst.b 174(%a2)
	jne .L873
	jra .L874
.L878:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L872
	jra .L881
.L880:
	move.w #1,286(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z17sfxKanoCannonBallP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #1,%d0
	jne .L872
	jra .L881
.L882:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L868
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z25StateKanoCannonBall_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateKanoCannonBall_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,174(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z31StateKanoCannonBall_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateKanoCannonBall_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateRaidenTorpedo_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z24StateRaidenTorpedo_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.b 174(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z16sfxRaidenTorpedoP12SoundHandler
	.even
	.globl	__Z25StateRaidenTorpedo_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateRaidenTorpedo_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L901
	tst.w 284(%a2)
	jne .L901
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	addq.w #6,%d0
	move.w %d0,288(%a2)
	addq.l #8,%sp
	cmp.w #199,%d0
	jle .L903
.L891:
	tst.w 284(%a2)
	jne .L894
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L894:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L896
.L907:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L898
.L908:
	move.w 284(%a2),%d0
.L895:
	tst.w %d0
	jne .L900
	tst.b 174(%a2)
	jeq .L904
.L900:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 7.w
	move.l 604(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L887:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L901:
	move.w 288(%a2),%d0
	cmp.w #199,%d0
	jgt .L891
.L903:
	move.w 266(%a2),%d0
	cmp.w #1,%d0
	jeq .L905
	cmp.w #-1,%d0
	jeq .L906
.L893:
	move.w 284(%a2),%d0
	cmp.w #1,%d0
	jne .L895
.L909:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L907
.L896:
	move.w 266(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w raptor_ticks,238(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L908
.L898:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L887
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L904:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 600(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L905:
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jne .L891
	move.w 266(%a2),%d0
	cmp.w #-1,%d0
	jne .L893
.L906:
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jne .L891
	move.w 284(%a2),%d0
	cmp.w #1,%d0
	jne .L895
	jra .L909
	.even
	.globl	__Z24StateRaidenTorpedo_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z24StateRaidenTorpedo_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.w #1,284(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z30StateRaidenTorpedo_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z30StateRaidenTorpedo_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z21StateHitTorpedo_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitTorpedo_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.b 300(%a2)
	clr.b 174(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,238(%a2)
	addq.l #4,%sp
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitTorpedo_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z22StateHitTorpedo_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 266(%a2),%d0
	cmp.w #1,%d0
	jeq .L920
	cmp.w #-1,%d0
	jeq .L921
.L918:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 544(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L920:
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jeq .L916
	move.w 266(%a2),%d0
	cmp.w #-1,%d0
	jne .L918
.L921:
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jeq .L916
	move.w 266(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 544(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L916:
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 266(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 544(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z21StateHitTorpedo_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitTorpedo_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,174(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z27StateHitTorpedo_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z27StateHitTorpedo_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateRaidenTeleport_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateRaidenTeleport_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.b 174(%a0)
	move.w 86(%a0),%d0
	subq.w #1,%d0
	move.w %d0,14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	clr.w 284(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z17sfxRaidenTeleportP12SoundHandler
	.even
	.globl	__Z26StateRaidenTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateRaidenTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a5
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 20(%fp),%a4
	tst.w 14(%a3)
	jne .L927
	tst.w 284(%a2)
	jne .L927
	move.w 266(%a2),%d0
	cmp.w #1,%d0
	jeq .L941
	cmp.w #-1,%d0
	jeq .L931
	move.w 242(%a2),%d1
	move.w #1,284(%a2)
.L933:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
.L939:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 608(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L926:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L927:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L934
	move.w 284(%a2),%d0
	cmp.w #1,%d0
	jeq .L942
	tst.w %d0
	jne .L937
.L943:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 608(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L926
.L934:
	move.w 284(%a2),%d0
	jeq .L943
.L937:
	move.w 266(%a2),%d0
	move.w 242(%a2),%d1
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	jra .L939
.L942:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L926
	move.l (%a5),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L941:
	move.l %a4,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jeq .L944
	move.w 242(%a4),%d1
	add.w #-68,%d1
	move.w %d1,242(%a2)
	move.w 266(%a2),%d0
	move.w #1,284(%a2)
	jra .L933
.L931:
	move.l %a4,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jeq .L945
	move.w 242(%a4),%d1
	add.w #68,%d1
	move.w %d1,242(%a2)
	move.w 266(%a2),%d0
	move.w #1,284(%a2)
	jra .L933
.L944:
	move.w 242(%a4),%a4
	lea (68,%a4),%a4
	move.w %a4,242(%a2)
	neg.w 266(%a2)
	move.l sprite,%a0
	move.l 2(%a2),%d0
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
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.w 266(%a2),%d0
	move.w 242(%a2),%d1
	addq.l #4,%sp
.L946:
	move.w #1,284(%a2)
	jra .L933
.L945:
	move.w 242(%a4),%a4
	lea (-68,%a4),%a4
	move.w %a4,242(%a2)
	neg.w 266(%a2)
	move.l sprite,%a0
	move.l 2(%a2),%d0
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
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.w 266(%a2),%d0
	move.w 242(%a2),%d1
	addq.l #4,%sp
	jra .L946
	.even
	.globl	__Z25StateRaidenTeleport_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateRaidenTeleport_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z31StateRaidenTeleport_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateRaidenTeleport_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateKangFlyingKick_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateKangFlyingKick_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.b 174(%a0)
	clr.w 284(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z17sfxKangFlyingKickP12SoundHandler
	.even
	.globl	__Z26StateKangFlyingKick_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateKangFlyingKick_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w raptor_ticks,%d0
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d0,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L952
	move.w 284(%a2),%d1
	cmp.w #19,%d1
	jgt .L959
.L956:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 524(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L951:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L952:
	tst.b 174(%a2)
	jeq .L960
	move.w 284(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L961
.L955:
	add.w %d3,244(%a2)
	addq.w #1,%d1
	move.w %d1,284(%a2)
	move.w %d0,238(%a2)
.L962:
	cmp.w #19,%d1
	jle .L956
.L959:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L951
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L961:
	moveq #-4,%d3
	add.w %d3,244(%a2)
	addq.w #1,%d1
	move.w %d1,284(%a2)
	move.w %d0,238(%a2)
	jra .L962
.L960:
	move.w 266(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%d0
	addq.l #8,%sp
	move.w 284(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jge .L955
	jra .L961
	.even
	.globl	__Z25StateKangFlyingKick_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateKangFlyingKick_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,174(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z31StateKangFlyingKick_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateKangFlyingKick_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z26StateScorpionHarpoon_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateScorpionHarpoon_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.b 127(%a2)
	clr.b 175(%a2)
	clr.w 128(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,12(%a0)
	clr.w 284(%a2)
	clr.w 286(%a2)
	move.w #1,288(%a2)
	move.w 252(%a2),%d0
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	jeq .L974
	clr.w %d2
.L967:
	add.w %d0,%d2
	move.w %d2,250(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d0
	move.l %d0,144(%a3)
	move.b #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
	cmp.w #-1,%d1
	seq %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a3)
	moveq #-1,%d0
	move.l %d0,84(%a3)
	moveq #1,%d1
	move.l %d1,4(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	tst.b 270(%a2)
	jne .L975
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991344,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,238(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L975:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991344,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,238(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L974:
	moveq #48,%d2
	jra .L967
	.even
	.globl	__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 175(%a2)
	jeq .L997
	tst.b 127(%a2)
	jeq .L977
	tst.w 286(%a2)
	jeq .L985
	move.w #1,286(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
.L985:
	cmp.w #-1,288(%a2)
	jeq .L998
	tst.b 270(%a2)
	jeq .L991
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8528496,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L988:
	neg.w 288(%a2)
	move.w 128(%a2),%d0
	addq.w #1,%d0
	move.w %d0,128(%a2)
	cmp.w #8,%d0
	jgt .L994
.L977:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L997:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L979
	tst.w 284(%a2)
	jne .L999
	move.w 266(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,%d1
	add.w %d1,250(%a2)
	cmp.w #1,%d0
	jeq .L1000
.L981:
	cmp.w #-1,%d0
	jeq .L1001
.L983:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 19.w
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1002:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L991:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8528496,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L988
.L1000:
	cmp.w #320,246(%a2)
	jle .L983
.L994:
	move.l 92(%a2),%d0
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
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L977
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1001:
	tst.w 246(%a2)
	jlt .L994
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 19.w
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1002
.L999:
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	addq.l #4,%sp
	move.w 266(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,%d1
	add.w %d1,250(%a2)
	cmp.w #1,%d0
	jne .L981
	jra .L1000
.L998:
	tst.b 270(%a2)
	jeq .L990
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991344,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1003:
	neg.w 288(%a2)
	move.w 128(%a2),%d0
	addq.w #1,%d0
	move.w %d0,128(%a2)
	cmp.w #8,%d0
	jle .L977
	jra .L994
.L990:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991344,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1003
.L979:
	move.w 266(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 19.w
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1002
	.even
	.globl	__Z26StateScorpionHarpoon_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z26StateScorpionHarpoon_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z32StateScorpionHarpoon_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateScorpionHarpoon_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z21StateHitHarpoon_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitHarpoon_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.b 300(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,238(%a2)
	move.w 258(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	clr.w 284(%a2)
	move.w raptor_ticks,286(%a2)
	clr.w 288(%a2)
	lea (12,%sp),%sp
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z22StateHitHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 20(%fp),%a3
	tst.w 284(%a2)
	jne .L1009
	move.w #1,284(%a2)
	move.w 266(%a2),%d1
	move.w 242(%a3),%d3
	cmp.w #-1,%d1
	jeq .L1036
	move.w %d3,%d0
	add.w #48,%d0
	sub.w 242(%a2),%d0
	move.w %d0,106(%a2)
	cmp.w #149,%d0
	jle .L1037
.L1012:
	clr.w 106(%a2)
	cmp.w #-1,%d1
	jeq .L1038
.L1014:
	add.w #-48,%d3
	move.w %d3,108(%a2)
	move.w raptor_ticks,238(%a2)
	move.l 92(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1009:
	tst.w 106(%a2)
	jle .L1016
	tst.b 130(%a2)
	jeq .L1016
	tst.w 288(%a2)
	jne .L1016
	move.l 132(%a2),%d0
	move.w 242(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1039
	jgt .L1040
.L1018:
	move.w raptor_ticks,286(%a2)
.L1019:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 544(%a2),-(%sp)
	move.l %d2,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1008:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1016:
	move.w 286(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1033
	tst.w 288(%a2)
	jeq .L1041
.L1021:
	tst.b 130(%a2)
	jeq .L1033
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1033
	move.l 132(%a2),%d0
	move.w 242(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1042
	jgt .L1043
	move.w raptor_ticks,238(%a2)
.L1045:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 544(%a2),-(%sp)
	move.l %d2,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	jra .L1008
.L1033:
	move.w 242(%a2),%a0
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 544(%a2),-(%sp)
	move.l %d2,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	jra .L1008
.L1036:
	move.w 242(%a2),%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a2)
	cmp.w #149,%d0
	jgt .L1012
.L1037:
	move.w #150,%a0
	sub.w %d0,%a0
	move.w %a0,%d0
	move.w %a0,106(%a2)
	move.w 242(%a2),%a0
	muls.w %d1,%d0
	sub.l %d0,%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	move.w 266(%a2),%d1
	move.w 242(%a3),%d3
	addq.l #8,%sp
	cmp.w #-1,%d1
	jne .L1014
.L1038:
	add.w #48,%d3
	move.w %d3,108(%a2)
	move.w raptor_ticks,238(%a2)
	move.l 92(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	jra .L1009
.L1041:
	move.w #1,288(%a2)
	move.w 108(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	addq.l #8,%sp
	jra .L1021
.L1039:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a0
	addq.l #8,%sp
	cmp.l 132(%a2),%a0
	jlt .L1018
	clr.b 130(%a2)
.L1044:
	move.w raptor_ticks,286(%a2)
	jra .L1019
.L1040:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a0
	addq.l #8,%sp
	cmp.l 132(%a2),%a0
	jgt .L1018
	clr.b 130(%a2)
	jra .L1044
.L1043:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a0
	addq.l #8,%sp
	cmp.l 132(%a2),%a0
	jgt .L1025
.L1028:
	clr.b 130(%a2)
.L1031:
	move.l 296(%a2),%a0
	cmp.w #55,(%a0)
	jeq .L1008
	move.l 220(%a4),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1042:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a0
	addq.l #8,%sp
	cmp.l 132(%a2),%a0
	jge .L1028
.L1025:
	move.b 130(%a2),%d0
	jeq .L1031
	move.w raptor_ticks,238(%a2)
	jra .L1045
	.even
	.globl	__Z21StateHitHarpoon_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitHarpoon_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateHitHarpoon_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z27StateHitHarpoon_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateScorpionReelingIn_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z28StateScorpionReelingIn_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	clr.w 284(%a0)
	clr.w 286(%a0)
	move.w %d0,288(%a0)
	move.w #1,120(%a0)
	move.w #32,116(%a0)
	move.l 436(%a0),%a1
	clr.w 14(%a1)
	move.l 92(%a0),%d0
	move.l %d0,(%a1)
	move.l #12854512,8(%a1)
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.l #12854512,44(%a1)
	moveq #104,%d0
	move.l %d0,144(%a1)
	moveq #16,%d1
	move.l %d1,40(%a1)
	move.l %d1,36(%a1)
	move.b #1,%d0
	move.l %d0,4(%a1)
	move.l %d0,84(%a1)
	tst.b 270(%a0)
	jne .L1053
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12991344,8(%fp)
	unlk %fp
	jra jsfLoadClut
.L1053:
	move.b #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12991344,8(%fp)
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z29StateScorpionReelingIn_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z29StateScorpionReelingIn_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12348,-(%sp)
	move.l 8(%fp),%a5
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 20(%fp),%a4
	move.w raptor_ticks,%d1
	move.w %d1,%a0
	move.w 288(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jle .L1056
	move.w %d1,288(%a2)
.L1056:
	move.w 286(%a2),%d0
	cmp.w #7,%d0
	jgt .L1057
	move.w 238(%a2),%a1
	addq.l #1,%a1
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.l %a0,%a1
	jge .L1058
	move.w 120(%a2),%d2
	move.w %d2,%d3
	add.w %d2,%d3
	add.w %d3,116(%a2)
	neg.w %d2
	move.w %d2,120(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,238(%a2)
.L1058:
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1071
.L1062:
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	jeq .L1072
.L1063:
	move.w 242(%a2),%d2
	move.w %d2,%d0
	add.w #48,%d0
	sub.w 242(%a4),%d0
	move.w %d0,118(%a2)
	add.w #32,%d2
	move.w %d2,114(%a2)
	tst.w %d0
	jlt .L1073
.L1065:
	move.w %d0,%a1
	cmp.w #1,%d1
	jeq .L1074
.L1067:
	moveq #50,%d0
	add.l %d0,%a1
	move.l %a1,88(%a0)
	moveq #32,%d0
	move.l %d0,92(%a0)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 116(%a2),%d0
	add.w 244(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 114(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	move.l 616(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1055:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1057:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.w #8,%d0
	jne .L1058
	tst.w 284(%a2)
	jeq .L1075
	move.l 296(%a4),%a0
	cmp.w #55,(%a0)
	jeq .L1076
.L1060:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 596(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L1062
.L1071:
	moveq #1,%d3
	move.l %d3,4(%a0)
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	jne .L1063
.L1072:
	move.w 242(%a2),%a1
	move.w 242(%a4),%d0
	add.w #48,%d0
	sub.w %a1,%d0
	move.w %d0,118(%a2)
	lea (-80,%a1),%a1
	move.w %d0,%d2
	moveq #15,%d3
	lsr.w %d3,%d2
	add.w %d0,%d2
	asr.w #1,%d2
	add.w %d2,%a1
	move.w %d0,%a4
	lea (-64,%a4),%a4
	move.l %a4,%d2
	jpl .L1078
	addq.l #1,%d2
.L1078:
	asr.l #1,%d2
	sub.w %d2,%a1
	move.w %a1,114(%a2)
	tst.w %d0
	jge .L1065
.L1073:
	neg.w %d0
	move.w %d0,118(%a2)
	move.w %d0,%a1
	cmp.w #1,%d1
	jne .L1067
.L1074:
	moveq #48,%d0
	add.l %d0,%a1
	move.l %a1,88(%a0)
	moveq #32,%d0
	move.l %d0,92(%a0)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 116(%a2),%d0
	add.w 244(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 114(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	move.l 616(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1055
.L1075:
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z22sfxScorpionGetOverHereP12SoundHandler
	addq.l #4,%sp
	move.l 296(%a4),%a0
	cmp.w #55,(%a0)
	jne .L1060
.L1076:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L1055
	move.l (%a5),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#15372
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z28StateScorpionReelingIn_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z28StateScorpionReelingIn_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z34StateScorpionReelingIn_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z34StateScorpionReelingIn_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18StateStunned_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateStunned_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,284(%a0)
	move.w %d0,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z19StateStunned_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z19StateStunned_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a0
	move.l 16(%fp),%d0
	move.w 284(%a0),%a2
	lea (119,%a2),%a2
	move.w raptor_ticks,%a1
	cmp.l %a2,%a1
	jgt .L1086
	move.w 266(%a0),%a1
	move.l %a1,-(%sp)
	move.w 244(%a0),%a1
	move.l %a1,-(%sp)
	move.w 242(%a0),%a1
	move.l %a1,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a0),%a1
	move.l %a1,-(%sp)
	move.l 444(%a0),-(%sp)
	move.l %d0,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1082:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1086:
	move.l 296(%a0),%a1
	tst.w (%a1)
	jeq .L1082
	move.l (%a3),%a1
	move.l %a1,296(%a0)
	move.l 2(%a1),%a0
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z18StateStunned_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z18StateStunned_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateStunned_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateStunned_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateScorpionTeleport_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z27StateScorpionTeleport_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	clr.w 284(%a2)
	clr.w 286(%a2)
	move.w %d0,238(%a2)
	move.l sprite,%a0
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a1
	move.w 266(%a2),%d2
	cmp.w #1,%d2
	jeq .L1097
	moveq #1,%d1
	move.l %d1,24(%a1)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d3
	move.l %d3,24(%a0,%d0.l)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a3
	cmp.w #-1,%d2
	seq %d1
	ext.w %d1
	ext.l %d1
	or.l %d3,%d1
.L1093:
	move.l %d1,24(%a3)
	neg.w %d2
	move.w %d2,266(%a2)
	lsl.w #4,%d2
	move.w 252(%a2),%d1
	sub.w %d2,%d1
	move.w %d1,%d2
	move.w %d1,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l #12854512,44(%a3)
	moveq #104,%d3
	move.l %d3,144(%a3)
	moveq #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
	moveq #-1,%d1
	move.l %d1,84(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),12(%a0)
	move.b #1,%d3
	move.l %d3,4(%a0)
	tst.b 270(%a2)
	jne .L1098
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991776,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1098:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991776,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1097:
	moveq #-1,%d1
	move.l %d1,24(%a1)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d3
	move.l %d3,24(%a0,%d0.l)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a3
	moveq #1,%d1
	jra .L1093
	.even
	.globl	__Z28StateScorpionTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z28StateScorpionTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 20(%fp),%a4
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1101
	move.w 284(%a2),%d0
.L1102:
	cmp.w #14,%d0
	jgt .L1117
.L1107:
	tst.w 286(%a2)
	jne .L1118
.L1109:
	move.w 266(%a2),%d0
	cmp.w #-1,%d0
	jeq .L1119
	cmp.w #1,%d0
	jeq .L1113
	move.w 242(%a2),%a0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL22scorpionTeleportFrames
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1100:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1101:
	tst.b 174(%a2)
	jeq .L1120
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1121
.L1104:
	add.w %d3,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w %d1,238(%a2)
	cmp.w #6,%d0
	jeq .L1105
.L1122:
	cmp.w #10,%d0
	jeq .L1105
	cmp.w #8,%d0
	jne .L1102
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.w 286(%a2)
	jeq .L1109
.L1118:
	move.w 266(%a2),%d0
	move.w 242(%a2),%a0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL22scorpionTeleportFrames
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1100
.L1121:
	moveq #-4,%d3
	add.w %d3,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w %d1,238(%a2)
	cmp.w #6,%d0
	jne .L1122
	jra .L1105
.L1117:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1100
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1105:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d1.l)
	cmp.w #14,%d0
	jle .L1107
	jra .L1117
.L1120:
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%d1
	addq.l #8,%sp
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jge .L1104
	jra .L1121
.L1113:
	move.w 242(%a2),%d1
	cmp.w #309,%d1
	jle .L1115
	move.w #-37,242(%a2)
	move.b #1,138(%a4)
	move.w #1,286(%a2)
	move.w #-37,%a0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL22scorpionTeleportFrames
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1100
.L1115:
	move.w %d1,%a0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL22scorpionTeleportFrames
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1100
.L1119:
	move.w 242(%a2),%d1
	cmp.w #10,%d1
	jgt .L1115
	move.w #357,242(%a2)
	move.b #1,138(%a4)
	move.w #1,286(%a2)
	move.w #357,%a0
	move.w %d0,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 516(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL22scorpionTeleportFrames
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1100
	.even
	.globl	__Z27StateScorpionTeleport_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z27StateScorpionTeleport_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,174(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z33StateScorpionTeleport_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z33StateScorpionTeleport_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateSubzeroFreeze_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z24StateSubzeroFreeze_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 284(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d1
	move.w %d1,12(%a0)
	clr.b 175(%a2)
	move.w 252(%a2),250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.w %d1,238(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12854512,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	moveq #16,%d1
	move.l %d1,40(%a0)
	move.l %d1,36(%a0)
	tst.b 270(%a2)
	jne .L1130
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991296,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z16sfxSubzeroFreezeP12SoundHandler
	move.w raptor_ticks,238(%a2)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	addq.l #4,%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1130:
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991296,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z16sfxSubzeroFreezeP12SoundHandler
	move.w raptor_ticks,238(%a2)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	addq.l #4,%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z25StateSubzeroFreeze_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateSubzeroFreeze_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 175(%a2)
	jeq .L1144
	tst.w 284(%a2)
	jne .L1139
	move.w #1,284(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
.L1139:
	pea 5.w
	move.l 436(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1145
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 5.w
	move.l 616(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1132:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1145:
	move.l 92(%a2),%d0
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
	jsr __Z27fighterResetRaidenLightningP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1132
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1144:
	pea 9.w
	move.l 436(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1134
	move.w 266(%a2),%d0
	move.w %d0,%d1
	lsl.w #3,%d1
	add.w %d1,250(%a2)
	cmp.w #1,%d0
	jeq .L1146
	cmp.w #-1,%d0
	jeq .L1147
.L1137:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 10.w
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1148:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1147:
	tst.w 246(%a2)
	jge .L1137
.L1136:
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1132
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1146:
	cmp.w #320,246(%a2)
	jgt .L1136
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 10.w
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1148
.L1134:
	move.w 266(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 10.w
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1148
	.even
	.globl	__Z24StateSubzeroFreeze_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z24StateSubzeroFreeze_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),8(%fp)
	unlk %fp
	jra __Z15fighterUnfreezeP7Fighter
	.even
	.globl	__Z30StateSubzeroFreeze_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z30StateSubzeroFreeze_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z20StateHitFreeze_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z20StateHitFreeze_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	clr.w 284(%a2)
	move.w #1,286(%a2)
	clr.w 288(%a2)
	clr.b 300(%a2)
	move.w %d0,238(%a2)
	move.b #1,146(%a2)
	clr.b 172(%a2)
	move.w %d0,%a0
	move.l %a0,156(%a2)
	move.b #1,104(%a2)
	tst.b 270(%a2)
	jne .L1156
	pea 16.w
	pea 15.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandler
	addq.l #4,%sp
	move.w 258(%a2),%a0
	move.l %a0,12(%fp)
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L1156:
	pea 16.w
	pea 14.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandler
	addq.l #4,%sp
	move.w 258(%a2),%a0
	move.l %a0,12(%fp)
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
	.even
	.globl	__Z21StateHitFreeze_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z21StateHitFreeze_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w raptor_ticks,%a0
	tst.w 284(%a2)
	jne .L1160
	move.l 156(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L1165
	move.w 286(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,252(%a2)
	neg.w %d0
	move.w %d0,286(%a2)
	move.w 288(%a2),%d0
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.l %a0,156(%a2)
.L1162:
	cmp.w #5,%d0
	jle .L1160
	move.w #1,284(%a2)
.L1160:
	move.w 238(%a2),%a1
	lea (180,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1166
.L1163:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 18(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1166:
	move.l %a2,-(%sp)
	jsr __Z15fighterUnfreezeP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1163
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 18(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1165:
	move.w 288(%a2),%d0
	jra .L1162
	.even
	.globl	__Z20StateHitFreeze_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z20StateHitFreeze_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z26StateHitFreeze_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z26StateHitFreeze_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19StateIdleFall_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z19StateIdleFall_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 136(%a0)
	clr.b 300(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20StateIdleFall_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z20StateIdleFall_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (40,%sp),%sp
	move.w 244(%a2),%d0
	cmp.l %a1,%a0
	jle .L1173
	add.w #12,%d0
	move.w %d0,244(%a2)
	move.w %d1,238(%a2)
.L1173:
	cmp.w #89,%d0
	jgt .L1176
.L1171:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1176:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1171
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z19StateIdleFall_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z19StateIdleFall_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateIdleFall_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z25StateIdleFall_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateSubzeroSlide_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateSubzeroSlide_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.b 174(%a0)
	clr.w 284(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z15sfxSubzeroSlideP12SoundHandler
	.even
	.globl	__Z24StateSubzeroSlide_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateSubzeroSlide_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (12,%sp),%sp
	move.b 174(%a2),%d0
	cmp.l %a1,%a0
	jle .L1183
	tst.b %d0
	jeq .L1189
	add.w #14,284(%a2)
	move.w %d1,238(%a2)
.L1183:
	tst.b %d0
	jne .L1185
	cmp.w #269,284(%a2)
	jle .L1186
.L1185:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L1181
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1186:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 2.w
	move.l 600(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1181:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1189:
	move.w 266(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%d1
	move.b 174(%a2),%d0
	addq.l #8,%sp
	add.w #14,284(%a2)
	move.w %d1,238(%a2)
	jra .L1183
	.even
	.globl	__Z23StateSubzeroSlide_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateSubzeroSlide_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,174(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z29StateSubzeroSlide_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateSubzeroSlide_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23StateSonyaLegGrab_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateSonyaLegGrab_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.b 174(%a0)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24StateSonyaLegGrab_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateSonyaLegGrab_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	pea __ZL18sonyaImpactLegGrab
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.w 284(%a2)
	jne .L1195
	cmp.w #2,14(%a3)
	jeq .L1202
.L1195:
	tst.w 286(%a2)
	jeq .L1203
	tst.w 14(%a3)
	jeq .L1204
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 600(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1194:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1204:
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L1194
	move.l (%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1203:
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1197
	move.w #1,286(%a2)
.L1197:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 600(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1194
.L1202:
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1195
	.even
	.globl	__Z23StateSonyaLegGrab_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateSonyaLegGrab_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,174(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z29StateSonyaLegGrab_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z29StateSonyaLegGrab_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z21StateHitLegGrab_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitLegGrab_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 300(%a2)
	clr.w 284(%a2)
	move.w #6,286(%a2)
	clr.w 288(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 266(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,%d0
	jeq .L1212
	cmp.w #1,%d0
	jeq .L1213
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,16(%fp)
	move.l 262(%a2),12(%fp)
	move.w (%a2),%a2
	move.l %a2,8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z15fighterPlayYelliP12SoundHandlerb
.L1213:
	move.l 648(%a2),%a0
	move.w 242(%a0),%a0
	lea (-112,%a0),%a0
	move.w %a0,242(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,16(%fp)
	move.l 262(%a2),12(%fp)
	move.w (%a2),%a2
	move.l %a2,8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z15fighterPlayYelliP12SoundHandlerb
.L1212:
	move.l 648(%a2),%a0
	move.w 242(%a0),%a0
	lea (112,%a0),%a0
	move.w %a0,242(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,16(%fp)
	move.l 262(%a2),12(%fp)
	move.w (%a2),%a2
	move.l %a2,8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z15fighterPlayYelliP12SoundHandlerb
	.even
	.globl	__Z22StateHitLegGrab_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z22StateHitLegGrab_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.w 284(%a2)
	jne .L1216
	move.w 238(%a2),%a1
	lea (29,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1217
	move.w #1,284(%a2)
.L1217:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 544(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1215:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1216:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1215
	tst.w 288(%a2)
	jne .L1219
	move.w 286(%a2),%d0
	move.w 266(%a2),%a1
	cmp.w #21,%d0
	jle .L1228
	cmp.w #22,%d0
	jeq .L1229
	cmp.w #23,%d0
	jeq .L1230
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 5.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L1231
.L1224:
	move.w raptor_ticks,238(%a2)
.L1233:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1219:
	cmp.w #23,286(%a2)
	jle .L1232
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 5.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	pea (%a1,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1224
.L1234:
	move.w 258(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 136(%a2)
	move.l 296(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L1224
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w raptor_ticks,238(%a2)
	jra .L1233
.L1231:
	move.w 258(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.w #1,288(%a2)
	move.w #10,286(%a2)
	addq.l #4,%sp
	move.w raptor_ticks,238(%a2)
	jra .L1233
.L1228:
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 2.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1224
	jra .L1231
.L1232:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 4.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	pea (%a1,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1224
	jra .L1234
.L1229:
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 3.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1224
	jra .L1231
.L1230:
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 584(%a2),-(%sp)
	pea 4.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1224
	jra .L1231
	.even
	.globl	__Z21StateHitLegGrab_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z21StateHitLegGrab_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateHitLegGrab_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z27StateHitLegGrab_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateSonyaSquareFlight_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z28StateSonyaSquareFlight_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.b 174(%a0)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	move.w raptor_ticks,238(%a0)
	moveq #0,%d0
	move.b 270(%a0),%d0
	move.l %d0,16(%fp)
	move.l 262(%a0),12(%fp)
	move.w (%a0),%a0
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z15fighterPlayJumpiP12SoundHandlerb
	.even
	.globl	__Z29StateSonyaSquareFlight_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z29StateSonyaSquareFlight_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1239
	move.w 286(%a2),%d0
	jeq .L1254
	cmp.w #1,%d0
	jeq .L1255
	move.w 284(%a2),%d0
	cmp.w #18,%d0
	jeq .L1256
	cmp.w #19,%d0
	jeq .L1257
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	tst.b 174(%a2)
	jne .L1258
.L1252:
	addq.w #1,%d0
	move.w %d0,284(%a2)
	cmp.w #19,%d0
	jle .L1245
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1245
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1245:
	move.w raptor_ticks,238(%a2)
.L1239:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1254:
	cmp.w #1,284(%a2)
	jls .L1259
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 284(%a2),%d0
	cmp.w #7,%d0
	jeq .L1260
.L1244:
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
.L1261:
	move.w raptor_ticks,238(%a2)
	jra .L1239
.L1258:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 284(%a2),%d0
	addq.l #8,%sp
	jra .L1252
.L1257:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 3.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	tst.b 174(%a2)
	jeq .L1252
	jra .L1258
.L1259:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	clr.l -(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 284(%a2),%d0
	cmp.w #7,%d0
	jne .L1244
.L1260:
	move.w #1,286(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z15sfxSubzeroSlideP12SoundHandler
	move.w 284(%a2),%d0
	addq.l #4,%sp
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	jra .L1261
.L1255:
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	cmp.w #230,288(%a2)
	jgt .L1247
	tst.b 174(%a2)
	jeq .L1262
.L1247:
	move.w #2,286(%a2)
	move.w #10,284(%a2)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 516(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
.L1263:
	move.w raptor_ticks,238(%a2)
	jra .L1239
.L1262:
	move.w 266(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	add.w #14,288(%a2)
	addq.l #8,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 516(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L1263
.L1256:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 464(%a2),-(%sp)
	pea 2.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	tst.b 174(%a2)
	jeq .L1252
	jra .L1258
	.even
	.globl	__Z28StateSonyaSquareFlight_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z28StateSonyaSquareFlight_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,174(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z34StateSonyaSquareFlight_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z34StateSonyaSquareFlight_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateKasumiFireball_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateKasumiFireball_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.b 300(%a0)
	clr.w 284(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z26StateKasumiFireball_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateKasumiFireball_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 284(%a2),%d0
	jeq .L1279
	cmp.w #1,%d0
	jeq .L1276
.L1281:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1268:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1279:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1280
	move.w #1,284(%a2)
	move.l 648(%a2),%a0
	move.w 266(%a0),%d0
	lsl.w #4,%d0
	add.w 252(%a0),%d0
	move.w %d0,250(%a2)
	move.w 244(%a2),%d0
	add.w #-32,%d0
	move.w %d0,248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.w raptor_ticks,238(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12854512,44(%a0)
	moveq #104,%d1
	move.l %d1,144(%a0)
	moveq #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	tst.b 270(%a2)
	jeq .L1277
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991392,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
.L1284:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1268
.L1280:
	move.w 284(%a2),%d0
	cmp.w #1,%d0
	jne .L1281
.L1276:
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 436(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1282
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1283
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
.L1285:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 592(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1268
.L1277:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991392,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jra .L1284
.L1283:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 612(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1285
.L1282:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 296(%a2),%a0
	tst.w (%a0)
	jeq .L1268
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z25StateKasumiFireball_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateKasumiFireball_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z31StateKasumiFireball_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateKasumiFireball_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z21StateKasumiRoll_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateKasumiRoll_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.b 174(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	clr.w 284(%a0)
	clr.w 286(%a0)
	move.w %d0,238(%a0)
	add.w #64,244(%a0)
	move.l 262(%a0),8(%fp)
	unlk %fp
	jra __Z22sfxKanoCannonBallStartP12SoundHandler
	.even
	.globl	__Z22StateKasumiRoll_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z22StateKasumiRoll_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 396(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.w 284(%a2)
	jne .L1291
	tst.b 174(%a2)
	jeq .L1305
.L1292:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1298
	move.w 286(%a2),%d0
.L1299:
	cmp.w #19,%d0
	jgt .L1300
	move.w 266(%a2),%d0
	move.w 242(%a2),%d1
.L1295:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 600(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1290:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1291:
	tst.b 174(%a2)
	jne .L1292
.L1300:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 296(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1290
	move.l (%a3),%a0
	move.l %a0,296(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1305:
	move.w 266(%a2),%d0
	ext.l %d0
	lsl.l #3,%d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 266(%a2),%d0
	addq.l #8,%sp
	move.w 242(%a2),%d1
	cmp.w #-1,%d0
	jeq .L1306
	cmp.w #1,%d0
	jne .L1295
	cmp.w #261,%d1
	jle .L1295
	move.w #1,284(%a2)
.L1307:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 600(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1290
.L1298:
	move.w 266(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w raptor_ticks,238(%a2)
	addq.l #8,%sp
	jra .L1299
.L1306:
	cmp.w #10,%d1
	jgt .L1295
	move.w #1,284(%a2)
	jra .L1307
	.even
	.globl	__Z21StateKasumiRoll_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z21StateKasumiRoll_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,174(%a0)
	move.w raptor_ticks,238(%a0)
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z17fighterSetOnFloorP7Fighter
	.even
	.globl	__Z27StateKasumiRoll_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z27StateKasumiRoll_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18StateIsLoser_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z18StateIsLoser_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	cmp.w #1,286(%a0)
	jeq .L1314
	unlk %fp
	rts
.L1314:
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	unlk %fp
	rts
	.even
	.globl	__Z19StateIsLoser_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z19StateIsLoser_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.w 284(%a2)
	jeq .L1321
	cmp.w #1,286(%a2)
	jeq .L1322
.L1316:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1322:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1321:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1323
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1324:
	cmp.w #1,286(%a2)
	jne .L1316
	jra .L1322
.L1323:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w #1,284(%a2)
	addq.l #4,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1324
	.even
	.globl	__Z18StateIsLoser_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z18StateIsLoser_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateIsLoser_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z24StateIsLoser_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19StateIsWinner_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z19StateIsWinner_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	clr.w 284(%a2)
	move.b #1,98(%a2)
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	cmp.w #123,288(%a2)
	jeq .L1328
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1328:
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z20StateIsWinner_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z20StateIsWinner_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,290(%a2)
	jeq .L1332
	tst.w 284(%a2)
	jne .L1334
	cmp.w #1,14(%a3)
	jeq .L1338
.L1334:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1332:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1338:
	move.w #1,284(%a2)
	move.w (%a2),%d0
	cmp.w #1,%d0
	jeq .L1335
	cmp.w #2,%d0
	jne .L1334
	move.l 262(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandler
	addq.l #4,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1332
.L1335:
	move.l 262(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandler
	addq.l #4,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 448(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1332
	.even
	.globl	__Z19StateIsWinner_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z19StateIsWinner_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateIsWinner_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z25StateIsWinner_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z20StateFinishHim_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z20StateFinishHim_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.b 144(%a2)
	jeq .L1343
	tst.b 142(%a2)
	jne .L1345
.L1343:
	clr.b 300(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,238(%a2)
	move.b #1,144(%a2)
	clr.b 145(%a2)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1345:
	clr.b 140(%a2)
	move.l 296(%a2),%a1
	cmp.w #66,(%a1)
	jeq .L1343
	move.l 264(%a0),%a1
	move.l %a1,296(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.b 300(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,238(%a2)
	move.b #1,144(%a2)
	clr.b 145(%a2)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z21StateFinishHim_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z21StateFinishHim_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 144(%a2)
	jeq .L1348
	tst.b 142(%a2)
	jne .L1352
.L1348:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 444(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1352:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1353
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1354:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1353:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w #1,284(%a2)
	addq.l #4,%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l 548(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1354
	.even
	.globl	__Z20StateFinishHim_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z20StateFinishHim_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z26StateFinishHim_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z26StateFinishHim_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateCageFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z24StateCageFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	move.b #1,271(%a0)
	clr.w 284(%a0)
	move.w %d0,286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	move.b #1,304(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z25StateCageFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateCageFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	tst.w 290(%a2)
	jne .L1360
	move.w raptor_ticks,%a0
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jle .L1359
	move.w 284(%a2),%d0
	jeq .L1367
	cmp.w #1,%d0
	jeq .L1368
.L1359:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1360:
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1359
	clr.w 290(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1359
	move.l 268(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1368:
	move.w 286(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1359
	tst.w 288(%a2)
	jeq .L1369
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1365
.L1370:
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.w #1,290(%a2)
	move.w raptor_ticks,238(%a2)
	move.l 648(%a2),%a0
	move.l 432(%a0),%d0
	move.l 296(%a0),%a1
	addq.l #4,%sp
	cmp.w #70,(%a1)
	jeq .L1359
	move.l 280(%a3),%a1
	move.l %a1,296(%a0)
	move.l %d0,16(%fp)
	move.l %a0,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1367:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1363
	move.w #1,284(%a2)
	move.w raptor_ticks,286(%a2)
	clr.w 14(%a4)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1365:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 632(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1369:
	move.w #1,288(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1365
	jra .L1370
.L1363:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z24StateCageFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z24StateCageFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z30StateCageFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z30StateCageFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateHitCageFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z27StateHitCageFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	clr.w 284(%a2)
	move.w #4,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z24fighterPlayFatalityGroaniP12SoundHandlerb
	addq.l #8,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d0
	move.l %d0,144(%a3)
	moveq #16,%d1
	move.l %d1,40(%a3)
	move.l %d1,36(%a3)
	lea (12,%sp),%sp
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	cmp.w #9,(%a2)
	jls .L1402
.L1374:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1402:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1384(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1384:
	.word .L1374-.L1384
	.word .L1376-.L1384
	.word .L1377-.L1384
	.word .L1378-.L1384
	.word .L1379-.L1384
	.word .L1380-.L1384
	.word .L1381-.L1384
	.word .L1382-.L1384
	.word .L1374-.L1384
	.word .L1383-.L1384
.L1376:
	tst.b 270(%a2)
	jne .L1403
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992256,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1377:
	tst.b 270(%a2)
	jne .L1404
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992304,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1378:
	tst.b 270(%a2)
	jne .L1405
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992352,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1379:
	tst.b 270(%a2)
	jne .L1406
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992400,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1380:
	tst.b 270(%a2)
	jne .L1407
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992496,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1381:
	tst.b 270(%a2)
	jne .L1408
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992448,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1382:
	tst.b 270(%a2)
	jne .L1409
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992544,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1383:
	tst.b 270(%a2)
	jeq .L1400
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992592,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1400:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992592,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1403:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992256,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1409:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992544,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1408:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992448,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1407:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992496,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1406:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992400,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1405:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992352,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1404:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992304,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z28StateHitCageFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z28StateHitCageFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,290(%a2)
	jeq .L1428
.L1412:
	tst.w 14(%a3)
	jne .L1414
	tst.w 284(%a2)
	jne .L1414
	move.w 238(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1414
	move.w #1,284(%a2)
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
.L1414:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 628(%a2),-(%sp)
	move.l %a3,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L1429
	tst.w 288(%a2)
	jne .L1417
	addq.w #3,250(%a2)
	move.w 286(%a2),%d2
	move.w %d2,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w 248(%a2),%d0
	move.w %d0,248(%a2)
	addq.w #1,%d2
	move.w %d2,286(%a2)
	cmp.w #166,%d0
	jle .L1418
.L1419:
	move.w #158,248(%a2)
	jsr RAPTOR_random
	and.w #4,%d0
	add.w #182,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%d0
	addq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodPoolss
	addq.l #4,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.w #1,288(%a2)
	move.w #5,286(%a2)
	move.w raptor_ticks,%d1
	move.w 248(%a2),%d0
	addq.l #4,%sp
	moveq #5,%d2
	move.w %d1,238(%a2)
.L1416:
	move.w 266(%a2),%a0
	cmp.w #24,%d2
	jle .L1430
.L1423:
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.l 636(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	move.l 92(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1411:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1429:
	move.w 286(%a2),%d2
	move.w 248(%a2),%d0
	move.w 266(%a2),%a0
	cmp.w #24,%d2
	jgt .L1423
.L1430:
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 4.w
	move.l 636(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1417:
	addq.w #3,250(%a2)
	move.w 286(%a2),%d2
	move.w %d2,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w 248(%a2),%d0
	move.w %d0,248(%a2)
	addq.w #1,%d2
	move.w %d2,286(%a2)
	cmp.w #182,%d0
	jle .L1421
.L1422:
	move.w #182,248(%a2)
	jsr RAPTOR_random
	and.w #4,%d0
	add.w #182,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%d0
	addq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodPoolss
	addq.l #4,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.b #1,144(%a2)
	move.b #1,142(%a2)
	clr.b 140(%a2)
	move.w #1,290(%a2)
	move.w raptor_ticks,%d1
	move.w 286(%a2),%d2
	move.w 248(%a2),%d0
	addq.l #4,%sp
	move.w %d1,238(%a2)
	jra .L1416
.L1428:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1412
	move.w #1,284(%a2)
	move.w #1,286(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #66,(%a0)
	jeq .L1411
	move.l 264(%a4),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1421:
	cmp.w #182,%d0
	jeq .L1422
	move.w %d1,238(%a2)
	jra .L1416
.L1418:
	cmp.w #166,%d0
	jeq .L1419
	move.w %d1,238(%a2)
	jra .L1416
	.even
	.globl	__Z27StateHitCageFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z27StateHitCageFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z33StateHitCageFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z33StateHitCageFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateKanoFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z24StateKanoFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	move.b #1,271(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	move.b #1,304(%a2)
	move.w 266(%a2),%d2
	add.w %d2,%d2
	add.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),%d0
	add.w #-12,%d0
	move.w %d0,248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d1
	move.l %d1,144(%a3)
	moveq #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),12(%a0)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	cmp.w #1,266(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 270(%a2)
	jne .L1440
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992640,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1440:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992640,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z25StateKanoFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateKanoFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a5
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w raptor_ticks,%d0
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1442
	move.w 14(%a3),%d1
	cmp.w #2,%d1
	jeq .L1458
	cmp.w #3,%d1
	jeq .L1446
.L1445:
	move.w 286(%a2),%d1
.L1447:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	cmp.w #1,%d1
	jeq .L1459
.L1448:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 632(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
.L1442:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L1458:
	tst.w 284(%a2)
	jne .L1445
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 648(%a2),%a0
	move.l 432(%a0),%d0
	move.l 296(%a0),%a1
	addq.l #4,%sp
	cmp.w #72,(%a1)
	jeq .L1442
	move.l 288(%a5),%a1
	move.l %a1,296(%a0)
	move.l %d0,16(%fp)
	move.l %a0,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L1446:
	move.w 286(%a2),%d1
	jne .L1447
	move.w #1,286(%a2)
	move.l 648(%a2),%a0
	move.w #1,290(%a0)
	move.w %d0,288(%a2)
	clr.w 290(%a2)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 632(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
	jra .L1442
.L1459:
	pea 8.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1448
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1450
	move.w %d0,288(%a2)
	addq.w #1,290(%a2)
	tst.w 292(%a2)
	jeq .L1460
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,4(%a0)
.L1450:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL15kanoHeartFrames
	move.l 436(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	lea (32,%sp),%sp
	cmp.w #7,290(%a2)
	jle .L1448
	move.w #1,290(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1442
	move.l 268(%a5),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L1460:
	move.w #1,292(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z16sfxKanoHeartbeatP12SoundHandler
	move.w 244(%a2),%a0
	move.w 252(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,266(%a2)
	jeq .L1461
	clr.w %d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
.L1462:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,4(%a0)
	jra .L1450
.L1461:
	moveq #40,%d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
	jra .L1462
	.even
	.globl	__Z24StateKanoFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z24StateKanoFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z30StateKanoFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z30StateKanoFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateHitKanoFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z27StateHitKanoFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	clr.b 300(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,238(%a2)
	clr.w 284(%a2)
	move.w #1,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z24fighterPlayFatalityGroaniP12SoundHandlerb
	move.w 266(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	lsl.w #5,%d0
	move.w 252(%a2),%d1
	sub.w %d0,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	move.w 266(%a2),%d0
	lea (12,%sp),%sp
	move.l 648(%a2),%a0
	move.w 252(%a0),%a0
	cmp.w #-1,%d0
	jeq .L1470
	lea (-72,%a0),%a0
	move.w %a0,252(%a2)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 444(%a2),-(%sp)
	move.w 14(%a3),%a0
	move.l %a0,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1470:
	lea (72,%a0),%a0
	move.w %a0,252(%a2)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 444(%a2),-(%sp)
	move.w 14(%a3),%a0
	move.l %a0,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z28StateHitKanoFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z28StateHitKanoFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	tst.w 284(%a2)
	jne .L1473
	move.w raptor_ticks,%d0
	move.w %d0,%a3
	move.w 238(%a2),%a1
	addq.l #2,%a1
	cmp.l %a3,%a1
	jlt .L1477
	cmp.w #5,288(%a2)
	jle .L1472
.L1478:
	move.w #1,284(%a2)
	clr.w 288(%a2)
	move.w raptor_ticks,238(%a2)
.L1472:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1473:
	moveq #1,%d0
	cmp.l 288(%a2),%d0
	jne .L1472
	move.l 262(%a2),-(%sp)
	jsr __Z15sfxKanoHeartripP12SoundHandler
	move.w 266(%a2),%a0
	move.l %a0,(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	clr.w 284(%a2)
	move.b #1,144(%a2)
	clr.b 140(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	lea (12,%sp),%sp
	cmp.w #66,(%a0)
	jeq .L1472
	move.l 264(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1477:
	move.w 286(%a2),%d1
	move.w %d1,%d2
	add.w %d1,%d2
	add.w %d2,252(%a2)
	neg.w %d1
	move.w %d1,286(%a2)
	addq.w #1,288(%a2)
	move.w %d0,238(%a2)
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 444(%a2),-(%sp)
	move.w 14(%a0),%a1
	move.l %a1,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	cmp.w #5,288(%a2)
	jle .L1472
	jra .L1478
	.even
	.globl	__Z27StateHitKanoFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z27StateHitKanoFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z33StateHitKanoFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z33StateHitKanoFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z26StateRaidenFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateRaidenFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	move.b #1,271(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	move.b #1,304(%a2)
	move.w 266(%a2),%d0
	move.w %d0,%d2
	add.w %d0,%d2
	add.w %d0,%d2
	lsl.w #4,%d2
	add.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d0
	move.l %d0,144(%a3)
	moveq #16,%d1
	move.l %d1,40(%a3)
	move.l %d1,36(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),12(%a0)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	cmp.w #1,266(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 270(%a2)
	jne .L1488
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12991152,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1488:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12991152,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z27StateRaidenFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateRaidenFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 284(%a2),%d0
	jne .L1491
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1500
.L1490:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1491:
	cmp.w #1,%d0
	jne .L1490
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1490
	clr.w 290(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1490
	move.l 268(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1500:
	pea 6.w
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	tst.b %d0
	jeq .L1493
	tst.w 284(%a2)
	jne .L1493
	move.l 436(%a2),%a0
	cmp.w #3,14(%a0)
	jeq .L1501
.L1494:
	pea 8.w
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1496
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.w raptor_ticks,238(%a2)
	move.w #1,284(%a2)
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1496:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	pea __ZL29raidenLightningFatalityFrames
	move.l 436(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	jsr (%a5)
	lea (32,%sp),%sp
.L1493:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 632(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (32,%sp),%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1501:
	tst.w 292(%a2)
	jne .L1494
	move.l 262(%a2),-(%sp)
	jsr __Z16sfxRaidenHeadZapP12SoundHandler
	move.w #1,292(%a2)
	move.l 648(%a2),%a0
	move.l 432(%a0),%d0
	move.l 296(%a0),%a1
	addq.l #4,%sp
	cmp.w #74,(%a1)
	jeq .L1502
	move.l 296(%a3),%a1
	move.l %a1,296(%a0)
	move.l %d0,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	move.l 436(%a2),%a0
	lea (12,%sp),%sp
	jra .L1494
.L1502:
	move.l 436(%a2),%a0
	jra .L1494
	.even
	.globl	__Z26StateRaidenFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z26StateRaidenFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z32StateRaidenFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateRaidenFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateHitRaidenFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHitRaidenFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z30StateHitRaidenFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z30StateHitRaidenFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 284(%a2),%d0
	jne .L1508
	tst.w 292(%a2)
	jne .L1509
	tst.b 270(%a2)
	jeq .L1510
	pea 16.w
	pea 14.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1509:
	pea 4.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1511
.L1522:
	tst.w 292(%a2)
	jne .L1512
	tst.b 270(%a2)
	jeq .L1513
	pea 16.w
	pea 14.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1512:
	move.w #1,284(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,290(%a2)
	clr.w 292(%a2)
.L1511:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 4.w
	move.l 640(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1507:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1508:
	cmp.w #1,%d0
	jne .L1507
	move.w 288(%a2),%d0
	jne .L1515
	tst.w 286(%a2)
	jeq .L1521
	tst.w 292(%a2)
	jne .L1517
.L1523:
	move.w 238(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1517
	move.w #1,292(%a2)
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z15sfxKanoHeartripP12SoundHandler
	addq.l #4,%sp
.L1517:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1518
	cmp.w #1,292(%a2)
	jne .L1518
	move.w #1,288(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 262(%a2),8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z7sfxThudP12SoundHandler
.L1510:
	pea 16.w
	pea 15.w
	move.l 280(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	pea 4.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1522
	jra .L1511
.L1518:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 628(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 290(%a2),%a1
	lea (89,%a1),%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1507
	clr.w 14(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1515:
	cmp.w #1,%d0
	jne .L1507
	move.w #1,284(%a2)
	clr.w 286(%a2)
	move.b #1,144(%a2)
	clr.b 140(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a1
	cmp.w #66,(%a1)
	jeq .L1507
	move.l 264(%a0),%a1
	move.l %a1,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1513:
	pea 16.w
	pea 15.w
	move.l 276(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.w #1,284(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,290(%a2)
	clr.w 292(%a2)
	jra .L1511
.L1521:
	move.w #1,286(%a2)
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z25fighterPlayFatalityScreamiP12SoundHandlerb
	move.w raptor_ticks,238(%a2)
	lea (12,%sp),%sp
	tst.w 292(%a2)
	jne .L1517
	jra .L1523
	.even
	.globl	__Z29StateHitRaidenFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHitRaidenFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z35StateHitRaidenFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z35StateHitRaidenFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24StateKangFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z24StateKangFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	move.b #1,271(%a0)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.w 292(%a0)
	move.b #1,304(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z25StateKangFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateKangFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 284(%a2),%d0
	jne .L1529
	move.w raptor_ticks,%d0
	move.w %d0,%a1
	move.w 238(%a2),%a3
	lea (59,%a3),%a3
	cmp.l %a3,%a1
	jle .L1530
	move.w 286(%a2),%d1
	jeq .L1544
	tst.b 130(%a2)
	jeq .L1532
	cmp.w #1,%d1
	jeq .L1545
.L1532:
	pea 14.w
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1537
	move.w #1,284(%a2)
.L1537:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 14.w
	move.l 632(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1528:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1529:
	cmp.w #1,%d0
	jeq .L1539
.L1530:
	move.w 292(%a2),%d0
.L1540:
	cmp.w #1,%d0
	jne .L1528
	move.w 238(%a2),%a3
	lea (59,%a3),%a3
	move.w raptor_ticks,%a1
	cmp.l %a3,%a1
	jle .L1528
	clr.w 290(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a1
	cmp.w #67,(%a1)
	jeq .L1528
	move.l 268(%a0),%a1
	move.l %a1,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1539:
	move.w 292(%a2),%d0
	jne .L1540
	move.l 648(%a2),%a1
	move.l 432(%a1),%d0
	move.l 296(%a1),%a3
	cmp.w #70,(%a3)
	jeq .L1541
	move.l 280(%a0),%a3
	move.l %a3,296(%a1)
	move.l %d0,-(%sp)
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a3),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1541:
	move.w #1,292(%a2)
	move.w raptor_ticks,238(%a2)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1544:
	move.l 262(%a2),-(%sp)
	jsr __Z15sfxKangFatalityP12SoundHandler
	addq.l #4,%sp
	move.l 648(%a2),%a0
	move.w 252(%a0),%a0
	move.w 266(%a2),%d0
	muls.w #-48,%d0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	addq.l #8,%sp
	jra .L1532
.L1545:
	move.w 288(%a2),%a0
	addq.l #1,%a0
	cmp.l %a1,%a0
	jge .L1532
	move.l 132(%a2),%d1
	move.w 252(%a2),%a0
	cmp.l %d1,%a0
	jlt .L1546
	jgt .L1547
	move.w %d0,288(%a2)
	jra .L1532
.L1547:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 252(%a2),%a0
	move.l 132(%a2),%d0
	addq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jlt .L1542
	clr.b 130(%a2)
	move.w #1,290(%a2)
.L1542:
	move.w raptor_ticks,%d0
	move.w %d0,288(%a2)
	jra .L1532
.L1546:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 252(%a2),%a0
	move.l 132(%a2),%d0
	subq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jgt .L1542
	clr.b 130(%a2)
	move.w #1,290(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,288(%a2)
	jra .L1532
	.even
	.globl	__Z24StateKangFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z24StateKangFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z30StateKangFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z30StateKangFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateScorpionFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z28StateScorpionFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	move.b #1,271(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	move.b #1,304(%a2)
	move.w 266(%a2),%d2
	lsl.w #6,%d2
	add.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),%d0
	add.w #32,%d0
	move.w %d0,248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d1
	move.l %d1,144(%a3)
	moveq #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),12(%a0)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	cmp.w #1,266(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 270(%a2)
	jne .L1557
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12991392,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1557:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12991392,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z29StateScorpionFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z29StateScorpionFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	tst.w 284(%a2)
	jne .L1559
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1559
	cmp.w #2,14(%a3)
	jeq .L1566
.L1561:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 632(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.l #__Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%d2
	move.l %d2,%a0
	jsr (%a0)
	lea (32,%sp),%sp
	pea 7.w
	move.l %a3,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a5
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1559
	tst.w 288(%a2)
	jeq .L1567
	pea 12.w
	move.l 436(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1568
.L1563:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 648(%a2),%a0
	move.l 432(%a0),%d0
	move.l 296(%a0),%a1
	cmp.w #77,(%a1)
	jeq .L1564
	move.l 308(%a4),%a1
	move.l %a1,296(%a0)
	move.l %d0,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1564:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 632(%a2),-(%sp)
	pea 7.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w #1,290(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	lea (40,%sp),%sp
	cmp.w #67,(%a0)
	jeq .L1559
	move.l 268(%a4),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1568:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 12.w
	pea __ZL28scorpionToastyFatalityFrames
	move.l 436(%a2),-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	lea (32,%sp),%sp
.L1559:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1566:
	tst.w 286(%a2)
	jne .L1561
	move.w #1,286(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z16sfxScorpionSkullP12SoundHandler
	addq.l #4,%sp
	jra .L1561
.L1567:
	move.w #1,288(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	addq.l #4,%sp
	pea 12.w
	move.l 436(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jne .L1563
	jra .L1568
	.even
	.globl	__Z28StateScorpionFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z28StateScorpionFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z34StateScorpionFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z34StateScorpionFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StateHitSkeleton_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitSkeleton_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	move.b #1,271(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	move.b #1,304(%a2)
	move.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.w %d0,12(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d0
	move.l %d0,144(%a3)
	moveq #16,%d1
	move.l %d1,40(%a3)
	move.l %d1,36(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),12(%a0)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	cmp.w #1,266(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 270(%a2)
	jne .L1578
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1578:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z23StateHitSkeleton_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StateHitSkeleton_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.w 284(%a2)
	jeq .L1585
	pea 7.w
	move.l 436(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1586
.L1582:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	pea __ZL14skeletonFrames
	move.l 436(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l sprite,%a0
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d2
	move.l %d2,4(%a0,%d1.l)
	move.b #1,145(%a2)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,4(%a0,%d0.l)
	lea (32,%sp),%sp
.L1580:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1585:
	move.w #1,284(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z25fighterPlayFatalityScreamiP12SoundHandlerb
	lea (12,%sp),%sp
	pea 7.w
	move.l 436(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1582
.L1586:
	move.w #1,284(%a2)
	move.w #1,286(%a2)
	move.b #1,144(%a2)
	clr.b 140(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #66,(%a0)
	jeq .L1580
	move.l 264(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z22StateHitSkeleton_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StateHitSkeleton_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StateHitSkeleton_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StateHitSkeleton_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27StateSubzeroFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z27StateSubzeroFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	move.b #1,271(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	move.b #1,304(%a2)
	move.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d0
	move.l %d0,144(%a3)
	moveq #16,%d1
	move.l %d1,40(%a3)
	move.l %d1,36(%a3)
	lea __Z10cameraGetXv,%a4
	jsr (%a4)
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l sprite,%a3
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a0
	move.w 248(%a2),12(%a0)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	move.l 648(%a2),%a0
	move.w 252(%a0),%d2
	move.w %d2,250(%a0)
	move.w 244(%a0),248(%a0)
	move.l 436(%a0),%a1
	clr.w 14(%a1)
	move.l 92(%a0),%d0
	move.l %d0,(%a1)
	move.l #12854512,8(%a1)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d1
	move.l %d1,144(%a3)
	moveq #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
	jsr (%a4)
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l sprite,%a3
	move.l 648(%a2),%a0
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a1
	move.w 248(%a0),12(%a1)
	moveq #-1,%d1
	move.l %d1,4(%a1)
	cmp.w #1,266(%a2)
	jeq .L1607
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #-1,%d0
	move.l %d0,24(%a1)
.L1592:
	tst.b 270(%a2)
	jeq .L1605
	moveq #13,%d0
	moveq #9,%d2
.L1593:
	cmp.w #9,(%a0)
	jhi .L1594
	moveq #0,%d1
	move.w (%a0),%d1
	add.l %d1,%d1
	move.w .L1604(%pc,%d1.l),%d1
	jmp %pc@(2,%d1:w)
.L1604:
	.word .L1594-.L1604
	.word .L1595-.L1604
	.word .L1596-.L1604
	.word .L1597-.L1604
	.word .L1598-.L1604
	.word .L1599-.L1604
	.word .L1600-.L1604
	.word .L1601-.L1604
	.word .L1602-.L1604
	.word .L1603-.L1604
.L1595:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991824,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1594:
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1605:
	moveq #9,%d0
	moveq #13,%d2
	jra .L1593
.L1607:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #1,%d0
	move.l %d0,24(%a1)
	jra .L1592
.L1603:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12992208,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1596:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991872,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1597:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991920,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1598:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12991968,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1599:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12992064,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1600:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12992016,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1601:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12992160,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1602:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12992112,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12990960,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z28StateSubzeroFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z28StateSubzeroFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a5
	tst.w 284(%a2)
	jne .L1609
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1609
	cmp.w #2,14(%a5)
	jeq .L1616
.L1611:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 9.w
	move.l 632(%a2),-(%sp)
	move.l %a5,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	lea (32,%sp),%sp
	cmp.w #2,14(%a5)
	jgt .L1617
.L1609:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L1617:
	pea 9.w
	move.l 432(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1618
	move.l sprite,%a0
	move.l 92(%a2),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a1
	moveq #-1,%d0
	cmp.l 4(%a1),%d0
	jeq .L1619
	move.l 648(%a2),%a1
	move.l 92(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1620
.L1614:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	pea __ZL16decapSpineFrames
	move.l 436(%a2),-(%sp)
	jsr (%a4)
	move.l 648(%a2),%a0
	lea (32,%sp),%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a2
	move.l %a2,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 644(%a0),-(%sp)
	move.l 436(%a0),-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
.L1621:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L1616:
	tst.w 286(%a2)
	jne .L1611
	move.w #1,286(%a2)
	move.l 648(%a2),%a0
	move.w #1,292(%a0)
	move.l 432(%a0),%d0
	move.l 296(%a0),%a1
	cmp.w #79,(%a1)
	jeq .L1611
	move.l 316(%a3),%a1
	move.l %a1,296(%a0)
	move.l %d0,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 9.w
	move.l 632(%a2),-(%sp)
	move.l %a5,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	lea (32,%sp),%sp
	cmp.w #2,14(%a5)
	jle .L1609
	jra .L1617
.L1620:
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	pea __ZL16decapSpineFrames
	move.l 436(%a2),-(%sp)
	jsr (%a4)
	move.l 648(%a2),%a0
	lea (32,%sp),%sp
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a2
	move.l %a2,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 644(%a0),-(%sp)
	move.l 436(%a0),-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
	jra .L1621
.L1619:
	moveq #1,%d0
	move.l %d0,4(%a1)
	move.l 648(%a2),%a1
	move.l 92(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L1614
	jra .L1620
.L1618:
	move.w #1,290(%a2)
	move.w #123,288(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1609
	move.l 268(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z27StateSubzeroFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z27StateSubzeroFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z33StateSubzeroFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z33StateSubzeroFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z30StateHitSubzeroFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z30StateHitSubzeroFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	clr.w 284(%a0)
	move.w #1,286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.w 292(%a0)
	move.w %d0,%a1
	move.l %a1,156(%a0)
	cmp.w #-1,266(%a0)
	jeq .L1629
	move.l 648(%a0),%a1
	move.w 252(%a1),%a1
	lea (-56,%a1),%a1
	move.w %a1,252(%a0)
	unlk %fp
	rts
.L1629:
	move.l 648(%a0),%a1
	move.w 252(%a1),%a1
	lea (64,%a1),%a1
	move.w %a1,252(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z31StateHitSubzeroFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z31StateHitSubzeroFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 284(%a2),%d0
	jne .L1632
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l 156(%a2),%d1
	addq.l #2,%d1
	cmp.l %a0,%d1
	jge .L1644
	move.w 286(%a2),%d1
	move.w %d1,%d2
	add.w %d1,%d2
	add.w %d2,252(%a2)
	neg.w %d1
	move.w %d1,286(%a2)
	move.w 288(%a2),%d1
	addq.w #1,%d1
	move.w %d1,288(%a2)
	move.l %a0,156(%a2)
.L1634:
	cmp.w #5,%d1
	jle .L1635
	move.w #1,284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 14(%a3)
	move.w %d0,290(%a2)
	clr.w 292(%a2)
.L1635:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 640(%a2),-(%sp)
	pea 3.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
.L1631:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1632:
	cmp.w #1,%d0
	jne .L1631
	move.w 288(%a2),%d0
	jne .L1637
	tst.w 286(%a2)
	jeq .L1645
	tst.w 292(%a2)
	jne .L1639
	move.w 238(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1646
.L1639:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1647
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 628(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 290(%a2),%a1
	lea (89,%a1),%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1631
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1644:
	move.w 288(%a2),%d1
	jra .L1634
.L1637:
	cmp.w #1,%d0
	jne .L1631
	move.w 244(%a2),%a0
	addq.w #6,%a0
	move.w %a0,%a0
	move.w 252(%a2),%d0
	cmp.w #-1,266(%a2)
	jeq .L1648
	moveq #-72,%d1
.L1641:
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	sub.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	move.w #1,284(%a2)
	move.w #1,286(%a2)
	move.b #1,144(%a2)
	clr.b 140(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	lea (12,%sp),%sp
	cmp.w #66,(%a0)
	jeq .L1631
	move.l 264(%a4),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1645:
	move.w #1,286(%a2)
	move.w 266(%a2),%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d1,%d0
	lsl.w #3,%d0
	add.w 252(%a2),%d0
	move.w %d0,252(%a2)
	move.w 244(%a2),%d1
	add.w #-30,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z25fighterPlayFatalityScreamiP12SoundHandlerb
	move.w raptor_ticks,%d0
	move.w %d0,238(%a2)
	clr.w 14(%a3)
	move.w %d0,12(%a3)
	lea (12,%sp),%sp
	jra .L1639
.L1648:
	moveq #42,%d1
	jra .L1641
.L1646:
	move.w #1,292(%a2)
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z15sfxKanoHeartripP12SoundHandler
	addq.l #4,%sp
	jra .L1639
.L1647:
	move.w #1,288(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 262(%a2),8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra __Z7sfxThudP12SoundHandler
	.even
	.globl	__Z30StateHitSubzeroFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z30StateHitSubzeroFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z36StateHitSubzeroFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z36StateHitSubzeroFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateSonyaFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateSonyaFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	move.b #1,271(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	move.b #1,304(%a2)
	move.w 266(%a2),%d2
	lsl.w #4,%d2
	add.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),%d0
	add.w #16,%d0
	move.w %d0,248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d1
	move.l %d1,144(%a3)
	moveq #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),12(%a0)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	cmp.w #1,266(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 270(%a2)
	jne .L1658
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12991392,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1658:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12991392,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z26StateSonyaFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateSonyaFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a5
	tst.w 284(%a2)
	jne .L1660
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1660
	cmp.w #1,14(%a5)
	jeq .L1672
.L1662:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 632(%a2),-(%sp)
	move.l %a5,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	lea (32,%sp),%sp
	pea 8.w
	move.l %a5,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a5
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1660
	tst.w 288(%a2)
	jeq .L1673
	move.w 290(%a2),%d0
	cmp.w #15,%d0
	jgt .L1664
.L1676:
	move.w 294(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1664
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1674
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL15sonyaKissFrames
	move.l 436(%a2),-(%sp)
	jsr (%a4)
	move.w 290(%a2),%a0
	add.l %a0,%a0
	lea __ZL17SonyaKissXOffsets,%a1
	move.w (%a1,%a0.l),%d2
	add.w #16,%d2
	muls.w 266(%a2),%d2
	add.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),%d0
	add.w #16,%d0
	lea __ZL17SonyaKissYOffsets,%a1
	add.w (%a0,%a1.l),%d0
	move.w %d0,248(%a2)
	move.l 92(%a2),%d0
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	lea (32,%sp),%sp
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w 248(%a2),12(%a0,%d0.l)
	addq.w #1,290(%a2)
	move.w raptor_ticks,294(%a2)
.L1660:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1664:
	move.w 292(%a2),%d1
	jne .L1666
	cmp.w #15,%d0
	jle .L1660
	move.w 294(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1660
	move.w 266(%a2),%d2
	lsl.w #3,%d2
	add.w 250(%a2),%d2
	move.w %d2,250(%a2)
	lea __Z10cameraGetXv,%a3
	jsr (%a3)
	sub.w %d0,%d2
	move.w %d2,246(%a2)
	add.w #12,248(%a2)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a4
	add.l %d0,%a4
	move.w 250(%a2),%d2
	jsr (%a3)
	sub.w %d0,%d2
	move.w %d2,8(%a4)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w 248(%a2),12(%a0,%d0.l)
	move.w raptor_ticks,294(%a2)
	move.w 266(%a2),%d0
	cmp.w #1,%d0
	jeq .L1675
	cmp.w #-1,%d0
	jne .L1660
	move.w 250(%a2),%a1
	move.l 648(%a2),%a0
	move.w 252(%a0),%a0
	lea (48,%a0),%a0
	cmp.l %a1,%a0
	jlt .L1660
.L1668:
	tst.w 292(%a2)
	jne .L1660
	move.l 262(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	move.w #1,292(%a2)
	move.l 436(%a2),%a0
	move.w #6,14(%a0)
	addq.l #4,%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1672:
	tst.w 286(%a2)
	jne .L1662
	move.w #1,286(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z12sfxSonyaKissP12SoundHandler
	addq.l #4,%sp
	jra .L1662
.L1673:
	move.w #1,288(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z22sfxKanoCannonBallStartP12SoundHandler
	move.w raptor_ticks,294(%a2)
	addq.l #4,%sp
	move.w 290(%a2),%d0
	cmp.w #15,%d0
	jgt .L1664
	jra .L1676
.L1666:
	cmp.w #1,%d1
	jne .L1660
	move.w 266(%a2),%d2
	muls.w #-40,%d2
	move.l 648(%a2),%a0
	add.w 252(%a0),%d2
	move.w %d2,250(%a2)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,246(%a2)
	move.l 648(%a2),%a0
	move.w 244(%a0),%a0
	lea (32,%a0),%a0
	move.w %a0,248(%a2)
	pea 12.w
	move.l 436(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1677
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 648(%a2),%a0
	move.l 432(%a0),%d0
	move.l 296(%a0),%a1
	cmp.w #77,(%a1)
	jeq .L1670
	move.l 308(%a3),%a1
	move.l %a1,296(%a0)
	move.l %d0,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1670:
	clr.w 290(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1660
	move.l 268(%a3),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1674:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL15sonyaKissFrames
	move.l 436(%a2),-(%sp)
	jsr (%a4)
	move.w 290(%a2),%a0
	add.l %a0,%a0
	lea __ZL17SonyaKissXOffsets,%a1
	move.w (%a1,%a0.l),%d2
	add.w #16,%d2
	muls.w 266(%a2),%d2
	add.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),%d0
	add.w #16,%d0
	lea __ZL17SonyaKissYOffsets,%a1
	add.w (%a0,%a1.l),%d0
	move.w %d0,248(%a2)
	move.l 92(%a2),%d0
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	lea (32,%sp),%sp
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w 248(%a2),12(%a0,%d0.l)
	addq.w #1,290(%a2)
	move.w raptor_ticks,294(%a2)
	jra .L1660
.L1677:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 12.w
	pea __ZL28scorpionToastyFatalityFrames
	move.l 436(%a2),-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1675:
	move.l 648(%a2),%a0
	move.w 252(%a0),%d0
	cmp.w 250(%a2),%d0
	jle .L1668
	movem.l -20(%fp),#15364
	unlk %fp
	rts
	.even
	.globl	__Z25StateSonyaFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateSonyaFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z31StateSonyaFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateSonyaFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z26StateKasumiFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z26StateKasumiFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	move.b #1,271(%a0)
	clr.w 284(%a0)
	move.w %d0,286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.w 292(%a0)
	clr.w 294(%a0)
	move.b #1,304(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z27StateKasumiFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateKasumiFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w raptor_ticks,%a0
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jle .L1682
	move.w 284(%a2),%d0
	jeq .L1692
	cmp.w #1,%d0
	jeq .L1693
.L1682:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1692:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1685
	move.w #1,284(%a2)
	move.w raptor_ticks,286(%a2)
	clr.w 14(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1693:
	move.w 286(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1682
	tst.w 288(%a2)
	jeq .L1694
.L1686:
	tst.w 292(%a2)
	jeq .L1695
	cmp.l #65537,292(%a2)
	jne .L1682
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1696
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 564(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1685:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 472(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1694:
	move.w #1,288(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1686
.L1695:
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1688
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 648(%a2),%a0
	move.l 432(%a0),%d0
	move.l 296(%a0),%a1
	addq.l #4,%sp
	cmp.w #82,(%a1)
	jeq .L1689
	move.l 328(%a4),%a1
	move.l %a1,296(%a0)
	move.l %d0,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1689:
	clr.w 286(%a2)
	move.w #1,292(%a2)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1688:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 632(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1696:
	clr.w 290(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1682
	move.l 268(%a4),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z26StateKasumiFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z26StateKasumiFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z32StateKasumiFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z32StateKasumiFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z29StateHitKasumiFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHitKasumiFatality1_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	clr.b 300(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z25fighterPlayFatalityScreamiP12SoundHandlerb
	addq.l #8,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 436(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12854512,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12854512,44(%a3)
	moveq #104,%d0
	move.l %d0,144(%a3)
	moveq #16,%d1
	move.l %d1,40(%a3)
	move.l %d1,36(%a3)
	lea (12,%sp),%sp
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.w 248(%a2),12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	cmp.w #9,(%a2)
	jls .L1728
.L1700:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1728:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1710(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1710:
	.word .L1700-.L1710
	.word .L1702-.L1710
	.word .L1703-.L1710
	.word .L1704-.L1710
	.word .L1705-.L1710
	.word .L1706-.L1710
	.word .L1707-.L1710
	.word .L1708-.L1710
	.word .L1700-.L1710
	.word .L1709-.L1710
.L1702:
	tst.b 270(%a2)
	jne .L1729
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992256,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1703:
	tst.b 270(%a2)
	jne .L1730
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992304,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1704:
	tst.b 270(%a2)
	jne .L1731
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992352,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1705:
	tst.b 270(%a2)
	jne .L1732
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992400,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1706:
	tst.b 270(%a2)
	jne .L1733
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992496,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1707:
	tst.b 270(%a2)
	jne .L1734
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992448,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1708:
	tst.b 270(%a2)
	jne .L1735
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992544,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1709:
	tst.b 270(%a2)
	jeq .L1726
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992592,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1726:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992592,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1729:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992256,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1735:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992544,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1734:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992448,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1733:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992496,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1732:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992400,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1731:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992352,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1730:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12992304,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z30StateHitKasumiFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z30StateHitKasumiFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	cmp.w #1,290(%a2)
	jeq .L1761
.L1738:
	tst.w 14(%a3)
	jne .L1740
	tst.w 284(%a2)
	jne .L1740
	move.w 238(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1740
	move.w #1,284(%a2)
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
.L1740:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 628(%a2),-(%sp)
	move.l %a3,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	move.w raptor_ticks,%a0
	move.w 238(%a2),%a4
	addq.l #1,%a4
	move.w %a0,%a1
	lea (32,%sp),%sp
	cmp.l %a4,%a1
	jle .L1762
	tst.w 288(%a2)
	jne .L1743
	move.w 286(%a2),%d2
	move.w %d2,%a1
	move.l %a1,%a4
	add.l #__ZL15UppercutOffsets,%a4
	move.w (%a4,%a1.l),%d0
	add.w 248(%a2),%d0
	move.w %d0,248(%a2)
	cmp.w #166,%d0
	jle .L1744
	move.w #166,248(%a2)
.L1744:
	addq.w #1,%d2
	move.w %d2,286(%a2)
	move.l 648(%a2),%a1
	cmp.w #23,%d2
	jle .L1758
	tst.w 294(%a1)
	jne .L1758
	move.w #1,294(%a1)
	move.l 432(%a1),%a1
	clr.w 14(%a1)
.L1748:
	move.w 292(%a2),%d0
.L1749:
	cmp.w #1,%d0
	jeq .L1751
	move.w 266(%a2),%d0
	move.w 248(%a2),%d1
	move.w %a0,238(%a2)
.L1742:
	move.w %d0,%a0
	cmp.w #24,%d2
	jle .L1763
.L1756:
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.l 636(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	move.l 92(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1737:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1762:
	move.w 286(%a2),%d2
	move.w 266(%a2),%d0
	move.w 248(%a2),%d1
	move.w %d0,%a0
	cmp.w #24,%d2
	jgt .L1756
.L1763:
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 4.w
	move.l 636(%a2),-(%sp)
	move.l 436(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1743:
	move.w 266(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	sub.w %d1,250(%a2)
	move.w 286(%a2),%d2
	move.w %d2,%a1
	move.l %a1,%a4
	add.l #__ZL15UppercutOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w 248(%a2),%d1
	move.w %d1,248(%a2)
	addq.w #1,%d2
	move.w %d2,286(%a2)
	cmp.w #182,%d1
	jle .L1754
.L1755:
	move.w #182,248(%a2)
	jsr RAPTOR_random
	and.w #4,%d0
	add.w #182,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%d0
	addq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodPoolss
	addq.l #4,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.b #1,144(%a2)
	move.b #1,142(%a2)
	clr.b 140(%a2)
	move.w #1,290(%a2)
	move.w raptor_ticks,%a0
	move.w 286(%a2),%d2
	move.w 266(%a2),%d0
	move.w 248(%a2),%d1
	addq.l #4,%sp
	move.w %a0,238(%a2)
	jra .L1742
.L1761:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1738
	move.w #1,284(%a2)
	move.w #1,286(%a2)
	move.l 432(%a2),%d0
	move.l 296(%a2),%a0
	cmp.w #66,(%a0)
	jeq .L1737
	move.l 264(%a4),%a0
	move.l %a0,296(%a2)
	move.l %d0,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1754:
	cmp.w #182,%d1
	jeq .L1755
	move.w %a0,238(%a2)
	jra .L1742
.L1758:
	move.l 432(%a1),%a1
	move.w 14(%a1),%d0
	cmp.w #1,%d0
	jne .L1748
	move.w 292(%a2),%d0
	jne .L1749
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z24fighterPlayFatalityGroaniP12SoundHandlerb
	move.w #6,286(%a2)
	move.w #1,292(%a2)
	lea (12,%sp),%sp
	moveq #6,%d2
	move.w 248(%a2),%d1
	cmp.w #165,%d1
	jgt .L1753
.L1764:
	move.w raptor_ticks,%a0
	move.w 266(%a2),%d0
	move.w %a0,238(%a2)
	jra .L1742
.L1751:
	move.w 266(%a2),%d0
	neg.w %d0
	lsl.w #3,%d0
	add.w %d0,250(%a2)
	move.w 248(%a2),%d1
	cmp.w #165,%d1
	jle .L1764
.L1753:
	move.w #158,248(%a2)
	jsr RAPTOR_random
	and.w #4,%d0
	add.w #182,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%d0
	addq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodPoolss
	addq.l #4,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 262(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.w #1,288(%a2)
	move.w #5,286(%a2)
	move.w raptor_ticks,%a0
	move.w 266(%a2),%d0
	move.w 248(%a2),%d1
	addq.l #4,%sp
	moveq #5,%d2
	move.w %a0,238(%a2)
	jra .L1742
	.even
	.globl	__Z29StateHitKasumiFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHitKasumiFatality1_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z35StateHitKasumiFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z35StateHitKasumiFatality1_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z22StatePitFatality_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StatePitFatality_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.b 300(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	clr.w 284(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	move.w %d0,238(%a0)
	move.b #1,304(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23StatePitFatality_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z23StatePitFatality_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 12(%fp),%a0
	move.l 16(%fp),%a3
	move.l 18(%a3),%a2
	move.w 2(%a2),%d1
	move.w 284(%a0),%d2
	moveq #0,%d0
	move.w %d1,%d0
	move.l %d0,%a1
	sub.w %d2,%a1
	moveq #16,%d0
	cmp.l %a1,%d0
	jge .L1770
	move.l 2(%a0),%d0
	move.l %d0,%d3
	add.l %d0,%d3
	add.l %d0,%d3
	lsl.l #6,%d3
	move.l sprite,%a1
	add.l %d3,%a1
	move.w 12(%a1),%d3
	cmp.w #1,%d3
	jle .L1771
	move.w 286(%a0),%d0
	jle .L1769
	move.w %d3,%a2
	sub.w %d0,%a2
	clr.w 286(%a0)
	cmp.w #0,%a2
	jle .L1776
	move.w %a2,12(%a1)
.L1769:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1770:
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1771:
	move.w 286(%a0),%d3
	jle .L1769
	add.w %d3,%d2
	move.w %d2,284(%a0)
	clr.w 286(%a0)
	move.w #1,12(%a1)
	move.w 266(%a0),%a1
	move.l %a1,-(%sp)
	move.w 10(%a2),%a1
	move.l %a1,-(%sp)
	move.w 8(%a2),%a1
	move.l %a1,-(%sp)
	pea 1.w
	move.w 242(%a0),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.w %d2,%a0
	add.w 6(%a2),%a0
	move.w %a0,%a0
	move.l %a0,-(%sp)
	move.w 4(%a2),%a0
	move.l %a0,-(%sp)
	sub.w %d2,%d1
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w (%a2),%a2
	move.l %a2,-(%sp)
	move.l %d0,-(%sp)
	jsr __Z8setFramejssssfjssssi
	lea (48,%sp),%sp
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1776:
	move.w #1,%a2
	move.w %a2,12(%a1)
	jra .L1769
	.even
	.globl	__Z22StatePitFatality_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z22StatePitFatality_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z28StatePitFatality_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z28StatePitFatality_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z25StateHitPitFatality_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z25StateHitPitFatality_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	clr.b 300(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,238(%a2)
	clr.w 284(%a2)
	clr.w 286(%a2)
	move.w %d0,288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	move.l 262(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 244(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 266(%a2),%d0
	muls.w #-20,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 244(%a2),%d0
	add.w #-20,%d0
	move.w %d0,%a0
	move.l %a0,12(%fp)
	move.w 266(%a2),%d0
	muls.w #-10,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z11bloodSquirtss
	.even
	.globl	__Z26StateHitPitFatality_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateHitPitFatality_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #60,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w raptor_ticks,%a0
	tst.w 294(%a2)
	jne .L1783
	move.w 288(%a2),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1790
.L1783:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w 290(%a2),%d0
	cmp.l %a1,%a0
	jle .L1785
	tst.w %d0
	jeq .L1791
.L1785:
	cmp.w #1,%d0
	jeq .L1792
.L1781:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L1791:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 244(%a2),%d1
	move.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	addq.l #8,%sp
	cmp.w #24,%d0
	jeq .L1793
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
.L1794:
	movem.l -16(%fp),#15360
	unlk %fp
	rts
.L1790:
	move.w #1,294(%a2)
	jsr __Z9musicStopv
	move.w raptor_ticks,%a0
	jra .L1783
.L1792:
	jsr __Z20cameraIsScrollingPitv
	tst.b %d0
	jne .L1781
	tst.w 292(%a2)
	jne .L1781
	move.w #1,292(%a2)
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z18fighterPlayPitLandiP12SoundHandlerb
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.w 266(%a2),%a0
	move.l %a0,(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	pea 25.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 244(%a2),%d0
	add.w #32,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 244(%a2),%d0
	add.w #42,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 266(%a2),%d0
	lsl.w #3,%d0
	add.w 252(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 266(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #32,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%d0
	add.w #36,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.b #1,144(%a2)
	move.b #1,142(%a2)
	clr.b 140(%a2)
	move.l 648(%a2),%a1
	move.w #1,290(%a1)
	move.l 432(%a1),%d0
	move.l 296(%a1),%a0
	lea (12,%sp),%sp
	cmp.w #67,(%a0)
	jeq .L1788
	move.l 268(%a4),%a0
	move.l %a0,296(%a1)
	move.l %d0,-(%sp)
	move.l %a1,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1788:
	move.w #1,284(%a2)
	clr.w 286(%a2)
	move.l 296(%a2),%a0
	cmp.w #66,(%a0)
	jeq .L1781
	move.l 264(%a4),%a0
	move.l %a0,296(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#15360
	unlk %fp
	jmp (%a0)
.L1793:
	jsr __Z15cameraScrollPitv
	moveq #0,%d0
	move.b 270(%a2),%d0
	move.l %d0,-(%sp)
	move.l 262(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z18fighterPlayPitFalliP12SoundHandlerb
	move.w #1,290(%a2)
	move.w 244(%a2),%d1
	move.w 284(%a2),%d0
	lea (12,%sp),%sp
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 544(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,238(%a2)
	lea (40,%sp),%sp
	jra .L1794
	.even
	.globl	__Z25StateHitPitFatality_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateHitPitFatality_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z31StateHitPitFatality_HandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z31StateHitPitFatality_HandleInputP12StateMachineP7FighterP14SpriteAnimator:
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
	.data
	.even
__ZL20cageShadowKickFrames:
	.word	96
	.word	96
	.word	0
	.word	736
	.word	0
	.word	16
	.word	6
	.even
__ZL22scorpionTeleportFrames:
	.word	64
	.word	96
	.word	96
	.word	736
	.word	0
	.word	16
	.word	6
	.even
__ZL18sonyaImpactLegGrab:
	.word	5
	.word	0
	.word	30
	.byte	0
	.skip 1
	.word	99
	.even
__ZL15kanoHeartFrames:
	.word	16
	.word	16
	.word	192
	.word	640
	.word	0
	.word	0
	.word	6
	.even
__ZL29raidenLightningFatalityFrames:
	.word	48
	.word	48
	.word	0
	.word	592
	.word	0
	.word	0
	.word	5
	.word	48
	.word	48
	.word	0
	.word	592
	.word	0
	.word	0
	.word	5
	.word	32
	.word	32
	.word	160
	.word	608
	.word	32
	.word	0
	.word	5
	.word	48
	.word	32
	.word	160
	.word	576
	.word	35
	.word	-7
	.word	5
	.word	48
	.word	64
	.word	0
	.word	176
	.word	22
	.word	-16
	.word	5
	.word	64
	.word	80
	.word	48
	.word	176
	.word	22
	.word	-24
	.word	5
	.word	80
	.word	96
	.word	112
	.word	192
	.word	18
	.word	-32
	.word	5
	.word	80
	.word	96
	.word	112
	.word	192
	.word	18
	.word	-32
	.word	5
	.even
__ZL28scorpionToastyFatalityFrames:
	.word	16
	.word	16
	.word	0
	.word	832
	.word	0
	.word	0
	.word	5
	.word	16
	.word	16
	.word	16
	.word	832
	.word	0
	.word	8
	.word	5
	.word	32
	.word	32
	.word	32
	.word	832
	.word	-2
	.word	-2
	.word	5
	.word	48
	.word	48
	.word	64
	.word	832
	.word	0
	.word	10
	.word	5
	.word	64
	.word	80
	.word	112
	.word	832
	.word	6
	.word	-2
	.word	5
	.word	80
	.word	80
	.word	0
	.word	880
	.word	-2
	.word	8
	.word	5
	.word	48
	.word	64
	.word	96
	.word	912
	.word	48
	.word	16
	.word	5
	.word	64
	.word	80
	.word	144
	.word	912
	.word	42
	.word	0
	.word	5
	.word	80
	.word	144
	.word	96
	.word	992
	.word	26
	.word	-64
	.word	5
	.word	32
	.word	160
	.word	0
	.word	960
	.word	50
	.word	-80
	.word	5
	.word	32
	.word	128
	.word	32
	.word	960
	.word	50
	.word	-48
	.word	5
	.word	32
	.word	128
	.word	64
	.word	976
	.word	50
	.word	-48
	.word	5
	.even
__ZL14skeletonFrames:
	.word	48
	.word	96
	.word	0
	.word	1120
	.word	0
	.word	16
	.word	90
	.word	48
	.word	96
	.word	48
	.word	1120
	.word	0
	.word	16
	.word	5
	.word	48
	.word	96
	.word	96
	.word	1136
	.word	0
	.word	16
	.word	5
	.word	48
	.word	80
	.word	144
	.word	1136
	.word	0
	.word	32
	.word	5
	.word	48
	.word	80
	.word	0
	.word	1216
	.word	0
	.word	32
	.word	5
	.word	48
	.word	80
	.word	48
	.word	1216
	.word	0
	.word	32
	.word	5
	.word	48
	.word	64
	.word	96
	.word	1232
	.word	0
	.word	48
	.word	5
	.even
__ZL16decapSpineFrames:
	.word	16
	.word	48
	.word	192
	.word	752
	.word	45
	.word	2
	.word	30
	.word	16
	.word	48
	.word	192
	.word	752
	.word	45
	.word	2
	.word	60
	.word	16
	.word	48
	.word	192
	.word	752
	.word	37
	.word	44
	.word	8
	.word	16
	.word	48
	.word	192
	.word	752
	.word	0
	.word	28
	.word	4
	.word	16
	.word	48
	.word	192
	.word	704
	.word	-8
	.word	28
	.word	4
	.word	16
	.word	48
	.word	192
	.word	704
	.word	-9
	.word	21
	.word	8
	.word	16
	.word	48
	.word	192
	.word	704
	.word	-10
	.word	9
	.word	8
	.even
__ZL15sonyaKissFrames:
	.word	16
	.word	16
	.word	160
	.word	768
	.word	0
	.word	0
	.word	6
	.text
	.even
__ZL17SonyaKissXOffsets:
	.word	14
	.word	31
	.word	48
	.word	64
	.word	73
	.word	79
	.word	76
	.word	67
	.word	52
	.word	39
	.word	30
	.word	25
	.word	26
	.word	32
	.word	41
	.word	52
	.even
__ZL17SonyaKissYOffsets:
	.word	0
	.word	-3
	.word	-8
	.word	-14
	.word	-21
	.word	-29
	.word	-39
	.word	-45
	.word	-48
	.word	-46
	.word	-42
	.word	-36
	.word	-27
	.word	-20
	.word	-14
	.word	-9
