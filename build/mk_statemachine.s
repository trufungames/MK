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
	move.l %a0,294(%a2)
	move.l 20(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	clr.b 298(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 294(%a0),%a1
	move.l 14(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
__Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%a1
	move.l 16(%fp),%a0
	move.l 20(%fp),%d2
	move.w 14(%fp),%d0
	move.l 294(%a0),%a2
	cmp.w (%a2),%d0
	jeq .L4
	move.l 92(%a0),%d1
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%d1
	lsl.l #6,%d1
	move.l sprite,%a2
	moveq #-1,%d3
	move.l %d3,4(%a2,%d1.l)
	move.w %d0,%a2
	add.l %a2,%a2
	add.l %a2,%a2
	move.l (%a2,%a1.l),%a2
	move.l %a2,294(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L4:
	movem.l (%sp)+,#1036
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
	tst.b 299(%a2)
	jeq .L9
	move.w raptor_ticks,%d0
	cmp.w 300(%a2),%d0
	jlt .L21
	clr.b 299(%a2)
.L9:
	tst.w 256(%a2)
	jle .L22
.L11:
	tst.b 160(%a2)
	jne .L23
	tst.b 138(%a2)
	jeq .L14
	move.l 294(%a2),%a0
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
	move.l 642(%a2),%a0
	move.l 294(%a0),%a0
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
	move.l 294(%a2),%a0
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
	move.l 294(%a2),%a0
	move.w (%a0),%d0
	cmp.w #68,%d0
	jeq .L11
	cmp.w #66,%d0
	jeq .L11
	move.w 272(%a2),%d0
	jle .L12
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 272(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	move.l %d3,20(%fp)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 6(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L21:
	move.l 294(%a2),%a0
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
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 264(%a3),%a0
	move.l %a0,294(%a2)
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
	move.b #1,299(%a0)
	move.w 14(%fp),%d0
	add.w raptor_ticks,%d0
	move.w %d0,300(%a0)
	move.l 294(%a0),%a1
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
	clr.b 298(%a2)
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
	move.w 244(%a2),%d2
	move.w %d2,%d1
	add.w #160,%d1
	move.w %d1,12(%a0)
	cmp.w #3,(%a2)
	jeq .L37
.L30:
	move.l 92(%a2),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1)
	cmp.w #89,%d2
	jle .L38
.L28:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L38:
	move.l 294(%a2),%a0
	cmp.w #59,(%a0)
	jeq .L28
	moveq #-1,%d0
	move.l %d0,4(%a1)
	move.l 236(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #66,(%a0)
	jeq .L29
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 264(%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a2)
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
	move.w 244(%a2),%d2
	move.w %d2,%d1
	add.w #160,%d1
	move.w %d1,12(%a0)
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
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 244(%a2),%d2
	move.w %d2,12(%a1)
.L40:
	cmp.w #89,%d2
	jgt .L28
	jra .L38
.L39:
	move.w 252(%a2),%d2
	subq.w #4,%d2
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a5)
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.w 244(%a2),%d2
	move.w %d2,12(%a1)
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
	move.l 438(%a2),-(%sp)
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
	move.l 622(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
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
	move.l 438(%a2),-(%sp)
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
	move.l 622(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	cmp.w #2,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L56:
	move.l 294(%a2),%a0
	cmp.w #1,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 4(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #11,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 44(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #14,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 56(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #13,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 52(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #4,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 16(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #7,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 28(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #3,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 12(%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L65:
	move.l 294(%a2),%a0
	cmp.w #6,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 24(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #9,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 36(%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L99:
	move.l 294(%a2),%a0
	cmp.w #5,(%a0)
	jeq .L54
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 20(%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	tst.b 298(%a2)
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
	move.l 474(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L103
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 474(%a2),-(%sp)
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
	move.l 294(%a0),%a2
	cmp.w #8,(%a2)
	jeq .L111
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
	move.l 32(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L115:
	move.b #1,298(%a0)
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
	clr.b 298(%a0)
	move.w raptor_ticks,238(%a0)
	unlk %fp
	rts
.L119:
	move.w #2,14(%a1)
	clr.b 298(%a0)
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
	tst.b 298(%a2)
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
	move.l 470(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L123
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 470(%a2),-(%sp)
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
	move.l 294(%a0),%a2
	cmp.w #17,(%a2)
	jeq .L131
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
	move.l 68(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L141:
	move.b #1,298(%a0)
.L131:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L134:
	move.l 294(%a0),%a2
	cmp.w #8,(%a2)
	jeq .L131
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
	move.l 32(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L136:
	move.l 294(%a0),%a2
	cmp.w #16,(%a2)
	jeq .L131
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
	move.l 64(%a1),%a2
	move.l %a2,294(%a0)
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
	clr.b 298(%a0)
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
	move.l 454(%a2),-(%sp)
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
	tst.b 298(%a2)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L144
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.b #1,298(%a0)
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
	move.l 294(%a0),%a2
	cmp.w #14,(%a2)
	jeq .L153
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 56(%a1),%a2
	move.l %a2,294(%a0)
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
	move.b #1,298(%a0)
	jra .L153
.L174:
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L161
	jra .L160
.L172:
	move.l 294(%a0),%a2
	cmp.w #6,(%a2)
	jeq .L153
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 24(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L167:
	move.l 294(%a0),%a2
	cmp.w #11,(%a2)
	jeq .L153
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 44(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L175:
	move.l 294(%a0),%a2
	cmp.w #39,(%a2)
	jeq .L153
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 156(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L173:
	move.l 294(%a0),%a2
	cmp.w #38,(%a2)
	jeq .L153
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 152(%a1),%a2
	move.l %a2,294(%a0)
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
	clr.b 298(%a0)
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
	move.l 454(%a2),-(%sp)
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
	tst.b 298(%a2)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L178
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.b #1,298(%a0)
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
	move.l 294(%a0),%a2
	cmp.w #15,(%a2)
	jeq .L186
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 60(%a1),%a2
	move.l %a2,294(%a0)
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
	move.b #1,298(%a0)
	jra .L186
.L202:
	and.l JAGPAD_C,%d0
	jeq .L194
	tst.b 101(%a0)
	jeq .L194
	jra .L203
.L200:
	move.l 294(%a0),%a2
	cmp.w #7,(%a2)
	jeq .L186
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 28(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L203:
	move.l 294(%a0),%a2
	cmp.w #11,(%a2)
	jeq .L186
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 44(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L201:
	move.l 294(%a0),%a2
	cmp.w #20,(%a2)
	jeq .L186
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 80(%a1),%a2
	move.l %a2,294(%a0)
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
	clr.b 298(%a0)
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
	move.l 462(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L206
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 462(%a2),-(%sp)
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
	move.l 462(%a2),-(%sp)
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
	move.l 462(%a2),-(%sp)
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
	move.l 294(%a0),%a2
	cmp.w #19,(%a2)
	jeq .L223
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
	move.l 76(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L230:
	move.l 294(%a0),%a2
	cmp.w #18,(%a2)
	jeq .L223
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
	move.l 72(%a1),%a2
	move.l %a2,294(%a0)
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
	clr.b 298(%a0)
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
	move.l 466(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L235
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a0),%a2
	cmp.w #23,(%a2)
	jeq .L245
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 92(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L247:
	move.l 294(%a0),%a2
	cmp.w #21,(%a2)
	jne .L252
.L245:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L252:
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 84(%a1),%a2
	move.l %a2,294(%a0)
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
	clr.b 298(%a0)
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
	move.l 466(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L255
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a0),%a2
	cmp.w #24,(%a2)
	jeq .L265
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 96(%a1),%a2
	move.l %a2,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L267:
	move.l 294(%a0),%a2
	cmp.w #22,(%a2)
	jne .L272
.L265:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L272:
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
	move.l 88(%a1),%a2
	move.l %a2,294(%a0)
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
	clr.b 298(%a0)
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
	tst.b 298(%a2)
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
	move.l 482(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L275
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 482(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L275:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L278:
	move.l 294(%a2),%a0
	cmp.w #1,(%a0)
	jeq .L275
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 4(%a4),%a0
	move.l %a0,294(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L284:
	move.w #1,284(%a2)
	move.l 294(%a2),%a0
	cmp.w #2,(%a0)
	jeq .L275
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%a4),%a0
	move.l %a0,294(%a2)
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
	move.b #1,298(%a0)
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
	clr.b 298(%a0)
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
	move.l 374(%a2),-(%sp)
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
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L299
.L294:
	tst.w 284(%a2)
	jle .L295
	move.l 294(%a2),%a0
	cmp.w #10,(%a0)
	jeq .L293
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 40(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L293
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	tst.b 298(%a2)
	jne .L309
	move.l 374(%a2),-(%sp)
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
	move.l 494(%a2),-(%sp)
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
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 294(%a2),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L308
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.b #1,298(%a2)
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
	clr.b 298(%a0)
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
	move.l 374(%a2),-(%sp)
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
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L329
.L324:
	tst.w 284(%a2)
	jle .L325
	move.l 294(%a2),%a0
	cmp.w #12,(%a0)
	jeq .L323
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 48(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L323
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	tst.b 298(%a2)
	jne .L341
	move.l 378(%a2),-(%sp)
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
	move.l 502(%a2),-(%sp)
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
	move.l 490(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 294(%a2),%a0
	lea (32,%sp),%sp
	tst.w (%a0)
	jeq .L340
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.b #1,298(%a2)
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
	clr.b 298(%a0)
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
	move.l 382(%a2),-(%sp)
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
	move.l 506(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L357
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 386(%a2),-(%sp)
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
	move.l 510(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L367
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 406(%a2),-(%sp)
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
	move.l 562(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L377
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 398(%a2),-(%sp)
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
	move.l 526(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L385
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 526(%a0),-(%sp)
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
	clr.b 298(%a0)
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
	move.l 418(%a2),-(%sp)
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
	move.l 574(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	cmp.w #2,(%a0)
	jeq .L393
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 390(%a2),-(%sp)
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
	move.l 514(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L401
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 514(%a1),-(%sp)
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
	clr.b 298(%a0)
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
	move.l 394(%a2),-(%sp)
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
	move.l 518(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L413
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 518(%a1),-(%sp)
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
	clr.b 298(%a0)
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
	move.l 402(%a2),-(%sp)
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
	move.l 558(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L425
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 394(%a2),-(%sp)
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
	move.l 522(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L433
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 522(%a2),-(%sp)
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
	clr.b 298(%a0)
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
	move.l 394(%a2),-(%sp)
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
	move.l 522(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L446
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 522(%a1),-(%sp)
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
	clr.b 298(%a0)
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
	move.l 390(%a2),-(%sp)
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
	move.l 514(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L458
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 514(%a2),-(%sp)
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
	clr.b 298(%a0)
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
	move.l 390(%a2),-(%sp)
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
	move.l 514(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L471
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 514(%a1),-(%sp)
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
	clr.b 298(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L482
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 136(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 530(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L488
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L495
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 136(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 534(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L501
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L508
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 136(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 550(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	cmp.w #28,(%a0)
	jeq .L514
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 112(%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a2)
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
	move.l 294(%a2),%a1
	cmp.w #66,(%a1)
	jeq .L522
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 264(%a0),%a1
	move.l %a1,294(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 298(%a2)
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
	move.l 554(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L528
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L535
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 136(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 538(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L542
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 538(%a2),-(%sp)
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
	clr.b 298(%a2)
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
	move.l 294(%a2),%a0
	cmp.w #34,(%a0)
	jeq .L553
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 136(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 530(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L559
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 530(%a2),-(%sp)
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
	clr.b 298(%a2)
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
	move.l 542(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L582
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,294(%a2)
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
	move.l 542(%a2),-(%sp)
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
	move.l 542(%a2),-(%sp)
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
	clr.b 298(%a2)
	move.w raptor_ticks,238(%a2)
	move.b #1,145(%a2)
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L590:
	clr.b 140(%a2)
	move.b #1,142(%a2)
	move.l 294(%a2),%a1
	cmp.w #66,(%a1)
	jeq .L588
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 264(%a0),%a1
	move.l %a1,294(%a2)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.b 298(%a2)
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
	move.l 546(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	cmp.w #28,(%a0)
	jeq .L592
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 112(%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a2)
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
	move.l 542(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L611
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,294(%a2)
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
	move.l 542(%a2),-(%sp)
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
	move.l 542(%a2),-(%sp)
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
	clr.b 298(%a2)
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
	move.l 542(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L626
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,294(%a2)
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
	move.l 542(%a2),-(%sp)
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
	move.l 542(%a2),-(%sp)
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
	clr.b 298(%a2)
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
	move.l 478(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L635:
	clr.b 136(%a2)
	move.l 294(%a2),%a0
	cmp.w #1,(%a0)
	jeq .L633
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 4(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 478(%a2),-(%sp)
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
	clr.b 298(%a2)
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
	move.l 486(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L643:
	clr.b 136(%a2)
	move.l 294(%a2),%a0
	cmp.w #1,(%a0)
	jeq .L641
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 4(%a3),%a0
	move.l %a0,294(%a2)
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
	move.l 486(%a2),-(%sp)
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
	clr.b 298(%a2)
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
	move.l 478(%a2),-(%sp)
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
	move.l 478(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L652:
	clr.b 136(%a2)
	move.l 294(%a2),%a1
	tst.w (%a1)
	jeq .L649
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 410(%a2),-(%sp)
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
	move.l 566(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L658
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 414(%a2),-(%sp)
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
	move.l 570(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L670
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 422(%a2),-(%sp)
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
	move.l 578(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L687
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	clr.b 298(%a0)
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
	move.l 582(%a2),-(%sp)
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
	move.l 582(%a2),-(%sp)
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
	move.l 582(%a2),-(%sp)
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
	move.l 582(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L700
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 128(%a4),%a0
	move.l %a0,294(%a2)
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
	move.l 582(%a2),-(%sp)
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
	clr.b 298(%a0)
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
	move.l 458(%a2),-(%sp)
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
	move.l 458(%a2),-(%sp)
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
	move.l 458(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L727
.L725:
	clr.b 138(%a2)
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L722
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,294(%a2)
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
	move.l 458(%a2),-(%sp)
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
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L729
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a2)
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
	jls .L750
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.w %a1,238(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12710272,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #7,%d1
	jls .L751
.L739:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L751:
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
.L750:
	subq.w #8,%d0
	move.w %d0,248(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.w %a1,238(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12710272,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #7,%d1
	jhi .L739
	jra .L751
.L743:
	pea 16.w
	pea 13.w
	move.l #12830224,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z12sfxKanoKnifeP12SoundHandler
.L744:
	pea 16.w
	pea 13.w
	move.l #12830272,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L745:
	pea 16.w
	pea 13.w
	move.l #12830320,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L746:
	pea 16.w
	pea 13.w
	move.l #12830368,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L742:
	pea 16.w
	pea 13.w
	move.l #12830176,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
	.even
	.globl	__Z30StateThrowingProjectile_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z30StateThrowingProjectile_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 175(%a2)
	jne .L754
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	cmp.w #3,(%a2)
	jeq .L755
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L779
.L756:
	move.w (%a2),%d0
	cmp.w #2,%d0
	jeq .L780
	cmp.w #3,%d0
	jeq .L761
.L774:
	move.w 266(%a2),%d0
.L760:
	move.w raptor_ticks,%a0
	move.w 286(%a2),%a4
	addq.l #1,%a4
	move.w %a0,%a1
	cmp.l %a4,%a1
	jle .L763
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,%d1
	add.w %d1,%d1
	add.w %d1,250(%a2)
	move.w %a0,286(%a2)
.L763:
	cmp.w #1,%d0
	jeq .L781
	cmp.w #-1,%d0
	jne .L766
	tst.w 246(%a2)
	jlt .L777
.L766:
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
	move.l 590(%a2),-(%sp)
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L768:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L782
.L753:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L754:
	tst.w 284(%a2)
	jne .L769
	move.w #1,284(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
.L769:
	move.w 90(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L777
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
	move.l 590(%a2),-(%sp)
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
	move.l 614(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
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
	jne .L753
.L782:
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L781:
	cmp.w #320,246(%a2)
	jle .L766
.L777:
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L753
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L779:
	cmp.w #3,(%a2)
	jne .L757
.L755:
	pea 8.w
	move.l 434(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jne .L756
.L757:
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
	move.l 590(%a2),-(%sp)
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L768
.L761:
	tst.w 288(%a2)
	jne .L774
	move.w #1,288(%a2)
	move.w 266(%a2),%d0
	move.w %d0,%d1
	lsl.w #6,%d1
	add.w %d1,250(%a2)
	jra .L760
.L780:
	tst.w 288(%a2)
	jne .L774
	move.w #1,288(%a2)
	move.w 266(%a2),%d0
	move.w %d0,%d1
	lsl.w #4,%d1
	add.w %d1,250(%a2)
	jra .L760
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
	clr.b 298(%a2)
	move.l 16(%fp),%a0
	clr.w 14(%a0)
	move.w raptor_ticks,%d1
	move.w %d1,284(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.b 175(%a2)
	move.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.w %d1,238(%a2)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12710272,44(%a3)
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
	jeq .L791
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L791:
	pea 16.w
	pea 13.w
	move.l #12830128,-(%sp)
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
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w 288(%a2),%d0
	lea (12,%sp),%sp
	cmp.w #3,%d0
	jeq .L794
	move.w raptor_ticks,%d1
	move.w 284(%a2),%a1
	addq.l #4,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jgt .L810
	cmp.w #6,%d0
	jgt .L796
.L811:
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
	move.l 506(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L793:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L810:
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w %d1,284(%a2)
	cmp.w #6,%d0
	jle .L811
.L796:
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L793
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L794:
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L812
	move.w raptor_ticks,%d0
	cmp.w #95,286(%a2)
	jgt .L813
.L800:
	move.w 284(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jle .L802
	tst.b 175(%a2)
	jeq .L814
.L801:
	move.w 266(%a2),%d1
	move.w %d1,%d2
	lsl.w #5,%d2
	add.w %d2,250(%a2)
	cmp.w #1,%d1
	jeq .L815
	cmp.w #-1,%d1
	jeq .L816
.L807:
	move.w #3,%a0
	move.w %d0,284(%a2)
.L817:
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
	move.l 506(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L793
.L813:
	move.w 284(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jgt .L801
.L802:
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
	move.l 506(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L793
.L812:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w raptor_ticks,%d0
	cmp.w #95,286(%a2)
	jle .L800
	jra .L813
.L816:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jle .L807
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,288(%a2)
	move.w #4,%a0
.L818:
	move.w %d0,284(%a2)
	jra .L817
.L814:
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
	move.l 506(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L793
.L815:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jge .L807
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,288(%a2)
	move.w #4,%a0
	jra .L818
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
	clr.b 298(%a0)
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
	jeq .L824
	cmp.w #7,%d0
	jeq .L824
	move.l 426(%a2),-(%sp)
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
	jne .L833
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
	move.l 606(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L823:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L824:
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
	move.l 606(%a2),-(%sp)
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
	jle .L823
	tst.w 286(%a2)
	jne .L827
	move.w 284(%a2),%d1
	addq.w #1,%d1
	move.w %d1,284(%a2)
	cmp.w #4,%d1
	jeq .L835
.L828:
	moveq #1,%d1
	cmp.l 284(%a2),%d1
	jeq .L833
	move.w %d0,238(%a2)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L833:
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L823
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L827:
	subq.w #1,284(%a2)
	jra .L828
.L835:
	move.w #3,284(%a2)
	move.w #1,286(%a2)
	jra .L828
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
	clr.b 298(%a2)
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
	jle .L841
	tst.w 286(%a2)
	jeq .L845
.L841:
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jgt .L846
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 2.w
	move.l 618(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L840:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L846:
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L840
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L845:
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
	jra .L841
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
	clr.b 298(%a0)
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
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w 284(%a2),%a1
	lea (179,%a1),%a1
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L852
	move.l 194(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L861
	and.l JAGPAD_8,%d0
	jne .L861
.L852:
	move.w 286(%a2),%d0
	jeq .L863
	cmp.w #1,%d0
	jeq .L864
.L855:
	tst.b 174(%a2)
	jeq .L857
.L856:
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	move.w 288(%a2),%d0
	cmp.l %a1,%a0
	jle .L859
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,244(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w %d1,238(%a2)
.L859:
	cmp.w #19,%d0
	jgt .L865
.L857:
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
	move.l 598(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L851:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L864:
	tst.b 174(%a2)
	jne .L856
	move.w 266(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	tst.b 174(%a2)
	jne .L856
	jra .L857
.L861:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L855
	jra .L864
.L863:
	move.w #1,286(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z17sfxKanoCannonBallP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #1,%d0
	jne .L855
	jra .L864
.L865:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L851
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 394(%a2),-(%sp)
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
	jeq .L884
	tst.w 284(%a2)
	jne .L884
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
	jle .L886
.L874:
	tst.w 284(%a2)
	jne .L877
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L877:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L879
.L890:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L881
.L891:
	move.w 284(%a2),%d0
.L878:
	tst.w %d0
	jne .L883
	tst.b 174(%a2)
	jeq .L887
.L883:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 7.w
	move.l 602(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L870:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L884:
	move.w 288(%a2),%d0
	cmp.w #199,%d0
	jgt .L874
.L886:
	move.w 266(%a2),%d0
	cmp.w #1,%d0
	jeq .L888
	cmp.w #-1,%d0
	jeq .L889
.L876:
	move.w 284(%a2),%d0
	cmp.w #1,%d0
	jne .L878
.L892:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L890
.L879:
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
	jle .L891
.L881:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L870
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L887:
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
	move.l 598(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L888:
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jne .L874
	move.w 266(%a2),%d0
	cmp.w #-1,%d0
	jne .L876
.L889:
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jne .L874
	move.w 284(%a2),%d0
	cmp.w #1,%d0
	jne .L878
	jra .L892
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
	clr.b 298(%a2)
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
	jeq .L903
	cmp.w #-1,%d0
	jeq .L904
.L901:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L903:
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jeq .L899
	move.w 266(%a2),%d0
	cmp.w #-1,%d0
	jne .L901
.L904:
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jeq .L899
	move.w 266(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L899:
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
	move.l 542(%a2),-(%sp)
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
	clr.b 298(%a0)
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
	jne .L910
	tst.w 284(%a2)
	jne .L910
	move.w 266(%a2),%d0
	cmp.w #1,%d0
	jeq .L924
	cmp.w #-1,%d0
	jeq .L914
	move.w 242(%a2),%d1
	move.w #1,284(%a2)
.L916:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
.L922:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 606(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L909:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L910:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L917
	move.w 284(%a2),%d0
	cmp.w #1,%d0
	jeq .L925
	tst.w %d0
	jne .L920
.L926:
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
	move.l 606(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L909
.L917:
	move.w 284(%a2),%d0
	jeq .L926
.L920:
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
	jra .L922
.L925:
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L909
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a5),%a0
	move.l %a0,294(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L924:
	move.l %a4,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jeq .L927
	move.w 242(%a4),%d1
	add.w #-68,%d1
	move.w %d1,242(%a2)
	move.w 266(%a2),%d0
	move.w #1,284(%a2)
	jra .L916
.L914:
	move.l %a4,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighter
	addq.l #4,%sp
	tst.b %d0
	jeq .L928
	move.w 242(%a4),%d1
	add.w #68,%d1
	move.w %d1,242(%a2)
	move.w 266(%a2),%d0
	move.w #1,284(%a2)
	jra .L916
.L927:
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
.L929:
	move.w #1,284(%a2)
	jra .L916
.L928:
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
	jra .L929
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
	clr.b 298(%a0)
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
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w raptor_ticks,%d0
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d0,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L935
	move.w 284(%a2),%d1
	cmp.w #19,%d1
	jgt .L942
.L939:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 522(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L934:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L935:
	tst.b 174(%a2)
	jeq .L943
	move.w 284(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L944
.L938:
	add.w %d3,244(%a2)
	addq.w #1,%d1
	move.w %d1,284(%a2)
	move.w %d0,238(%a2)
.L945:
	cmp.w #19,%d1
	jle .L939
.L942:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L934
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L944:
	moveq #-4,%d3
	add.w %d3,244(%a2)
	addq.w #1,%d1
	move.w %d1,284(%a2)
	move.w %d0,238(%a2)
	jra .L945
.L943:
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
	jge .L938
	jra .L944
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
	clr.b 298(%a2)
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
	jeq .L955
	clr.w %d2
	add.w %d0,%d2
	move.w %d2,250(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12710272,44(%a3)
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
	pea 16.w
	pea 13.w
	move.l #12830464,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,238(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L955:
	moveq #48,%d2
	add.w %d0,%d2
	move.w %d2,250(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12710272,44(%a3)
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
	pea 16.w
	pea 13.w
	move.l #12830464,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,238(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 175(%a2)
	jeq .L973
	tst.b 127(%a2)
	jeq .L957
	tst.w 286(%a2)
	jeq .L965
	move.w #1,286(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
.L965:
	cmp.w #-1,288(%a2)
	jeq .L974
	pea 16.w
	pea 13.w
	move.l #8528496,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	neg.w 288(%a2)
	move.w 128(%a2),%d0
	addq.w #1,%d0
	move.w %d0,128(%a2)
	cmp.w #8,%d0
	jgt .L970
.L957:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L973:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L959
	tst.w 284(%a2)
	jeq .L960
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	addq.l #4,%sp
.L960:
	move.w 266(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,%d1
	add.w %d1,250(%a2)
	cmp.w #1,%d0
	jne .L961
	cmp.w #320,246(%a2)
	jle .L963
.L970:
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L957
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L961:
	cmp.w #-1,%d0
	jeq .L975
.L963:
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
	move.l 590(%a2),-(%sp)
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L976:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L975:
	tst.w 246(%a2)
	jlt .L970
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
	move.l 590(%a2),-(%sp)
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L976
.L974:
	pea 16.w
	pea 13.w
	move.l #12830464,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	neg.w 288(%a2)
	move.w 128(%a2),%d0
	addq.w #1,%d0
	move.w %d0,128(%a2)
	cmp.w #8,%d0
	jle .L957
	jra .L970
.L959:
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
	move.l 590(%a2),-(%sp)
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L976
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
	clr.b 298(%a2)
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
	jne .L982
	move.w #1,284(%a2)
	move.w 266(%a2),%d1
	move.w 242(%a3),%d3
	cmp.w #-1,%d1
	jeq .L1009
	move.w %d3,%d0
	add.w #48,%d0
	sub.w 242(%a2),%d0
	move.w %d0,106(%a2)
	cmp.w #149,%d0
	jle .L1010
.L985:
	clr.w 106(%a2)
	cmp.w #-1,%d1
	jeq .L1011
.L987:
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
.L982:
	tst.w 106(%a2)
	jle .L989
	tst.b 130(%a2)
	jeq .L989
	tst.w 288(%a2)
	jne .L989
	move.l 132(%a2),%d0
	move.w 242(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1012
	jgt .L1013
.L991:
	move.w raptor_ticks,286(%a2)
.L992:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %d2,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L981:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L989:
	move.w 286(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1006
	tst.w 288(%a2)
	jeq .L1014
.L994:
	tst.b 130(%a2)
	jeq .L1006
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1006
	move.l 132(%a2),%d0
	move.w 242(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1015
	jgt .L1016
	move.w raptor_ticks,238(%a2)
.L1018:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %d2,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	jra .L981
.L1006:
	move.w 242(%a2),%a0
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %d2,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	jra .L981
.L1009:
	move.w 242(%a2),%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,106(%a2)
	cmp.w #149,%d0
	jgt .L985
.L1010:
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
	jne .L987
.L1011:
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
	jra .L982
.L1014:
	move.w #1,288(%a2)
	move.w 108(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	addq.l #8,%sp
	jra .L994
.L1012:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a0
	addq.l #8,%sp
	cmp.l 132(%a2),%a0
	jlt .L991
	clr.b 130(%a2)
.L1017:
	move.w raptor_ticks,286(%a2)
	jra .L992
.L1013:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a0
	addq.l #8,%sp
	cmp.l 132(%a2),%a0
	jgt .L991
	clr.b 130(%a2)
	jra .L1017
.L1016:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a0
	addq.l #8,%sp
	cmp.l 132(%a2),%a0
	jgt .L998
.L1001:
	clr.b 130(%a2)
.L1004:
	move.l 294(%a2),%a0
	cmp.w #55,(%a0)
	jeq .L981
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 220(%a4),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1015:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a0
	addq.l #8,%sp
	cmp.l 132(%a2),%a0
	jge .L1001
.L998:
	move.b 130(%a2),%d0
	jeq .L1004
	move.w raptor_ticks,238(%a2)
	jra .L1018
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
	clr.b 298(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	clr.w 284(%a0)
	clr.w 286(%a0)
	move.w %d0,288(%a0)
	move.w #1,120(%a0)
	move.w #32,116(%a0)
	move.l 434(%a0),%a1
	clr.w 14(%a1)
	move.l 92(%a0),%d0
	move.l %d0,(%a1)
	move.l #12710272,8(%a1)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12710272,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	move.b #1,%d0
	move.l %d0,4(%a0)
	move.l %d0,84(%a0)
	move.b #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12830464,8(%fp)
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
	jle .L1024
	move.w %d1,288(%a2)
.L1024:
	move.w 286(%a2),%d0
	cmp.w #7,%d0
	jgt .L1025
	move.w 238(%a2),%a1
	addq.l #1,%a1
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.l %a0,%a1
	jge .L1026
	move.w 120(%a2),%d2
	move.w %d2,%d3
	add.w %d2,%d3
	add.w %d3,116(%a2)
	neg.w %d2
	move.w %d2,120(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,238(%a2)
.L1026:
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1039
.L1030:
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	jeq .L1040
.L1031:
	move.w 242(%a2),%d2
	move.w %d2,%d0
	add.w #48,%d0
	sub.w 242(%a4),%d0
	move.w %d0,118(%a2)
	add.w #32,%d2
	move.w %d2,114(%a2)
	tst.w %d0
	jlt .L1041
.L1033:
	move.w %d0,%a1
	cmp.w #1,%d1
	jeq .L1042
.L1035:
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
	move.l 614(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1023:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1025:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.w #8,%d0
	jne .L1026
	tst.w 284(%a2)
	jeq .L1043
	move.l 294(%a4),%a0
	cmp.w #55,(%a0)
	jeq .L1044
.L1028:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 594(%a2),-(%sp)
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
	jne .L1030
.L1039:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w 266(%a2),%d1
	cmp.w #-1,%d1
	jne .L1031
.L1040:
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
	jpl .L1046
	addq.l #1,%d2
.L1046:
	asr.l #1,%d2
	sub.w %d2,%a1
	move.w %a1,114(%a2)
	tst.w %d0
	jge .L1033
.L1041:
	neg.w %d0
	move.w %d0,118(%a2)
	move.w %d0,%a1
	cmp.w #1,%d1
	jne .L1035
.L1042:
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
	move.l 614(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1023
.L1043:
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z22sfxScorpionGetOverHereP12SoundHandler
	addq.l #4,%sp
	move.l 294(%a4),%a0
	cmp.w #55,(%a0)
	jne .L1028
.L1044:
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L1023
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a5),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a0
	move.l 16(%fp),%d0
	move.w 284(%a0),%a2
	lea (119,%a2),%a2
	move.w raptor_ticks,%a1
	cmp.l %a2,%a1
	jgt .L1054
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
	move.l 442(%a0),-(%sp)
	move.l %d0,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1050:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1054:
	move.l 294(%a0),%a1
	tst.w (%a1)
	jeq .L1050
	move.l 92(%a0),%d1
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%d1
	lsl.l #6,%d1
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d1.l)
	move.l (%a3),%a1
	move.l %a1,294(%a0)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#3076
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
	clr.b 298(%a2)
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
	jeq .L1063
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
	move.l %d1,24(%a3)
	neg.w %d2
	move.w %d2,266(%a2)
	lsl.w #4,%d2
	move.w 252(%a2),%d1
	sub.w %d2,%d1
	move.w %d1,%d2
	move.w %d1,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.l #12710272,44(%a3)
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
	pea 16.w
	pea 13.w
	move.l #12830896,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1063:
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
	move.l %d1,24(%a3)
	neg.w %d2
	move.w %d2,266(%a2)
	lsl.w #4,%d2
	move.w 252(%a2),%d1
	sub.w %d2,%d1
	move.w %d1,%d2
	move.w %d1,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.l #12710272,44(%a3)
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
	pea 16.w
	pea 13.w
	move.l #12830896,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 262(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
	.even
	.globl	__Z28StateScorpionTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z28StateScorpionTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 20(%fp),%a4
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1066
	move.w 284(%a2),%d0
.L1067:
	cmp.w #14,%d0
	jgt .L1082
.L1072:
	tst.w 286(%a2)
	jne .L1083
.L1074:
	move.w 266(%a2),%d0
	cmp.w #-1,%d0
	jeq .L1084
	cmp.w #1,%d0
	jeq .L1078
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
	move.l 514(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1065:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1066:
	tst.b 174(%a2)
	jeq .L1085
	move.w 284(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1086
.L1069:
	add.w %d3,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w %d1,238(%a2)
	cmp.w #6,%d0
	jeq .L1070
.L1087:
	cmp.w #10,%d0
	jeq .L1070
	cmp.w #8,%d0
	jne .L1067
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.w 286(%a2)
	jeq .L1074
.L1083:
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
	move.l 514(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1065
.L1086:
	moveq #-4,%d3
	add.w %d3,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
	move.w %d1,238(%a2)
	cmp.w #6,%d0
	jne .L1087
	jra .L1070
.L1082:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1065
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1070:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d1.l)
	cmp.w #14,%d0
	jle .L1072
	jra .L1082
.L1085:
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
	jge .L1069
	jra .L1086
.L1078:
	move.w 242(%a2),%d1
	cmp.w #309,%d1
	jle .L1080
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
	move.l 514(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1065
.L1080:
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
	move.l 514(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1065
.L1084:
	move.w 242(%a2),%d1
	cmp.w #10,%d1
	jgt .L1080
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
	move.l 514(%a2),-(%sp)
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
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1065
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
	clr.b 298(%a2)
	clr.w 284(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d1
	move.w %d1,12(%a0)
	clr.b 175(%a2)
	move.w 252(%a2),250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.w %d1,238(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12710272,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	moveq #16,%d1
	move.l %d1,40(%a0)
	move.l %d1,36(%a0)
	pea 16.w
	pea 13.w
	move.l #12830416,-(%sp)
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
	jeq .L1104
	tst.w 284(%a2)
	jne .L1099
	move.w #1,284(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
.L1099:
	pea 5.w
	move.l 434(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1105
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 5.w
	move.l 614(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1092:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1105:
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1092
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1104:
	pea 9.w
	move.l 434(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1094
	move.w 266(%a2),%d0
	move.w %d0,%d1
	lsl.w #3,%d1
	add.w %d1,250(%a2)
	cmp.w #1,%d0
	jeq .L1106
	cmp.w #-1,%d0
	jeq .L1107
.L1097:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 590(%a2),-(%sp)
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1108:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1107:
	tst.w 246(%a2)
	jge .L1097
.L1096:
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1092
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1106:
	cmp.w #320,246(%a2)
	jgt .L1096
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 590(%a2),-(%sp)
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1108
.L1094:
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
	move.l 590(%a2),-(%sp)
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1108
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
	clr.b 298(%a2)
	move.w %d0,238(%a2)
	move.b #1,146(%a2)
	clr.b 172(%a2)
	move.w %d0,%a0
	move.l %a0,156(%a2)
	move.b #1,104(%a2)
	tst.b 270(%a2)
	jne .L1116
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
.L1116:
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
	jne .L1120
	move.l 156(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L1125
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
.L1122:
	cmp.w #5,%d0
	jle .L1120
	move.w #1,284(%a2)
.L1120:
	move.w 238(%a2),%a1
	lea (180,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1126
.L1123:
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
.L1126:
	move.l %a2,-(%sp)
	jsr __Z15fighterUnfreezeP7Fighter
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1123
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
.L1125:
	move.w 288(%a2),%d0
	jra .L1122
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
	clr.b 298(%a0)
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
	move.l 462(%a2),-(%sp)
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
	jle .L1133
	add.w #12,%d0
	move.w %d0,244(%a2)
	move.w %d1,238(%a2)
.L1133:
	cmp.w #89,%d0
	jgt .L1136
.L1131:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1136:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1131
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 394(%a2),-(%sp)
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
	jle .L1143
	tst.b %d0
	jeq .L1149
	add.w #14,284(%a2)
	move.w %d1,238(%a2)
.L1143:
	tst.b %d0
	jne .L1145
	cmp.w #269,284(%a2)
	jle .L1146
.L1145:
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L1141
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1146:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 2.w
	move.l 598(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1141:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1149:
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
	jra .L1143
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
	clr.b 298(%a0)
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
	jne .L1155
	cmp.w #2,14(%a3)
	jeq .L1162
.L1155:
	tst.w 286(%a2)
	jeq .L1163
	tst.w 14(%a3)
	jeq .L1164
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
	move.l 598(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1154:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1164:
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L1154
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a4),%a0
	move.l %a0,294(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1163:
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1157
	move.w #1,286(%a2)
.L1157:
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
	move.l 598(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1154
.L1162:
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1155
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
	clr.b 298(%a2)
	clr.w 284(%a2)
	move.w #6,286(%a2)
	clr.w 288(%a2)
	move.w %d0,238(%a2)
	move.b #1,136(%a2)
	move.w 266(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,%d0
	jeq .L1172
	cmp.w #1,%d0
	jeq .L1173
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
.L1173:
	move.l 642(%a2),%a0
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
.L1172:
	move.l 642(%a2),%a0
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
	jne .L1176
	move.w 238(%a2),%a1
	lea (29,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1177
	move.w #1,284(%a2)
.L1177:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1175:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1176:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1175
	tst.w 288(%a2)
	jne .L1179
	move.w 286(%a2),%d0
	move.w 266(%a2),%a1
	cmp.w #21,%d0
	jle .L1188
	cmp.w #22,%d0
	jeq .L1189
	cmp.w #23,%d0
	jeq .L1190
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 582(%a2),-(%sp)
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
	jeq .L1191
.L1184:
	move.w raptor_ticks,238(%a2)
.L1193:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1179:
	cmp.w #23,286(%a2)
	jle .L1192
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
	move.l 582(%a2),-(%sp)
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
	jne .L1184
.L1194:
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
	move.l 294(%a2),%a0
	addq.l #4,%sp
	cmp.w #32,(%a0)
	jeq .L1184
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,294(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w raptor_ticks,238(%a2)
	jra .L1193
.L1191:
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
	jra .L1193
.L1188:
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 582(%a2),-(%sp)
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
	jne .L1184
	jra .L1191
.L1192:
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
	move.l 582(%a2),-(%sp)
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
	jne .L1184
	jra .L1194
.L1189:
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 582(%a2),-(%sp)
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
	jne .L1184
	jra .L1191
.L1190:
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 582(%a2),-(%sp)
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
	jne .L1184
	jra .L1191
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
	clr.b 298(%a0)
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
	jle .L1199
	move.w 286(%a2),%d0
	jeq .L1214
	cmp.w #1,%d0
	jeq .L1215
	move.w 284(%a2),%d0
	cmp.w #18,%d0
	jeq .L1216
	cmp.w #19,%d0
	jeq .L1217
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
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
	jne .L1218
.L1212:
	addq.w #1,%d0
	move.w %d0,284(%a2)
	cmp.w #19,%d0
	jle .L1205
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1205
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,294(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1205:
	move.w raptor_ticks,238(%a2)
.L1199:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1214:
	cmp.w #1,284(%a2)
	jls .L1219
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 284(%a2),%d0
	cmp.w #7,%d0
	jeq .L1220
.L1204:
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,244(%a2)
	addq.w #1,%d0
	move.w %d0,284(%a2)
.L1221:
	move.w raptor_ticks,238(%a2)
	jra .L1199
.L1218:
	move.w 266(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 284(%a2),%d0
	addq.l #8,%sp
	jra .L1212
.L1217:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
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
	jeq .L1212
	jra .L1218
.L1219:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
	clr.l -(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 284(%a2),%d0
	cmp.w #7,%d0
	jne .L1204
.L1220:
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
	jra .L1221
.L1215:
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	cmp.w #230,288(%a2)
	jgt .L1207
	tst.b 174(%a2)
	jeq .L1222
.L1207:
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
	move.l 514(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
.L1223:
	move.w raptor_ticks,238(%a2)
	jra .L1199
.L1222:
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
	move.l 514(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L1223
.L1216:
	move.w 266(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 462(%a2),-(%sp)
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
	jeq .L1212
	jra .L1218
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
	clr.b 298(%a0)
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
	jeq .L1237
	cmp.w #1,%d0
	jeq .L1235
.L1239:
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
	move.l 590(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1228:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1237:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1238
	move.w #1,284(%a2)
	move.l 642(%a2),%a0
	move.w 266(%a0),%d0
	lsl.w #4,%d0
	add.w 252(%a0),%d0
	move.w %d0,250(%a2)
	move.w 244(%a2),%d0
	add.w #-32,%d0
	move.w %d0,248(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.w raptor_ticks,238(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12710272,44(%a0)
	moveq #104,%d1
	move.l %d1,144(%a0)
	moveq #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	pea 16.w
	pea 13.w
	move.l #12830512,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 262(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
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
	move.l 590(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1228
.L1238:
	move.w 284(%a2),%d0
	cmp.w #1,%d0
	jne .L1239
.L1235:
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 434(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1240
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1241
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
.L1242:
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
	move.l 590(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1228
.L1241:
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
	move.l 610(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1242
.L1240:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 294(%a2),%a0
	tst.w (%a0)
	jeq .L1228
	move.l (%a3),%a0
	move.l %a0,294(%a2)
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
	clr.b 298(%a0)
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
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.w 284(%a2)
	jne .L1248
	tst.b 174(%a2)
	jeq .L1262
.L1249:
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1255
	move.w 286(%a2),%d0
.L1256:
	cmp.w #19,%d0
	jgt .L1257
	move.w 266(%a2),%d0
	move.w 242(%a2),%d1
.L1252:
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
	move.l 598(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1247:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1248:
	tst.b 174(%a2)
	jne .L1249
.L1257:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 294(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1247
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l (%a3),%a0
	move.l %a0,294(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1262:
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
	jeq .L1263
	cmp.w #1,%d0
	jne .L1252
	cmp.w #261,%d1
	jle .L1252
	move.w #1,284(%a2)
.L1264:
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
	move.l 598(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1247
.L1255:
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
	jra .L1256
.L1263:
	cmp.w #10,%d1
	jgt .L1252
	move.w #1,284(%a2)
	jra .L1264
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
	clr.b 298(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
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
	jeq .L1274
	cmp.w #1,286(%a2)
	jeq .L1275
.L1269:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1275:
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
.L1274:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1276
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
	move.l 546(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1277:
	cmp.w #1,286(%a2)
	jne .L1269
	jra .L1275
.L1276:
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
	move.l 546(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1277
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
	clr.b 298(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,238(%a2)
	clr.w 284(%a2)
	move.b #1,98(%a2)
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	addq.l #4,%sp
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
	jeq .L1282
	tst.w 284(%a2)
	jne .L1284
	cmp.w #1,14(%a3)
	jeq .L1288
.L1284:
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
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1282:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1288:
	move.w #1,284(%a2)
	move.w (%a2),%d0
	cmp.w #1,%d0
	jeq .L1285
	cmp.w #2,%d0
	jne .L1284
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
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1282
.L1285:
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
	move.l 446(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1282
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
	jeq .L1293
	tst.b 142(%a2)
	jne .L1295
.L1293:
	clr.b 298(%a2)
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
.L1295:
	clr.b 140(%a2)
	move.l 294(%a2),%a1
	cmp.w #66,(%a1)
	jeq .L1293
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 264(%a0),%a1
	move.l %a1,294(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.b 298(%a2)
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
	jeq .L1298
	tst.b 142(%a2)
	jne .L1302
.L1298:
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
	move.l 442(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1302:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1303
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
	move.l 546(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1304:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1303:
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
	move.l 546(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1304
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
	clr.b 298(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,238(%a0)
	move.b #1,271(%a0)
	clr.w 284(%a0)
	move.w %d0,286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	move.b #1,302(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z25StateCageFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateCageFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a4
	tst.w 290(%a2)
	jne .L1310
	move.w raptor_ticks,%a0
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jle .L1309
	move.w 284(%a2),%d0
	jeq .L1317
	cmp.w #1,%d0
	jeq .L1318
.L1309:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1310:
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1309
	clr.w 290(%a2)
	move.l 430(%a2),%d1
	move.l 294(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1309
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
	move.l 268(%a3),%a0
	move.l %a0,294(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1318:
	move.w 286(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1309
	tst.w 288(%a2)
	jeq .L1319
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1315
.L1320:
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.w #1,290(%a2)
	move.w raptor_ticks,238(%a2)
	move.l 642(%a2),%a0
	move.l 430(%a0),%d1
	move.l 294(%a0),%a1
	addq.l #4,%sp
	cmp.w #70,(%a1)
	jeq .L1309
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
	move.l 280(%a3),%a1
	move.l %a1,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1317:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1313
	move.w #1,284(%a2)
	move.w raptor_ticks,286(%a2)
	clr.w 14(%a4)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1315:
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
	move.l 630(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1319:
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
	jeq .L1315
	jra .L1320
.L1313:
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
	move.l 470(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
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
	clr.b 298(%a2)
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
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12710272,44(%a3)
	moveq #104,%d0
	move.l %d0,144(%a3)
	move.b #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
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
	jls .L1336
.L1324:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1336:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1334(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1334:
	.word .L1324-.L1334
	.word .L1326-.L1334
	.word .L1327-.L1334
	.word .L1328-.L1334
	.word .L1329-.L1334
	.word .L1330-.L1334
	.word .L1331-.L1334
	.word .L1332-.L1334
	.word .L1324-.L1334
	.word .L1333-.L1334
.L1326:
	moveq #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12830944,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1327:
	moveq #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12830992,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1328:
	moveq #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12831040,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1329:
	moveq #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12831088,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1330:
	moveq #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12831184,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1331:
	moveq #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12831136,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1332:
	moveq #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12831232,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1333:
	moveq #16,%d0
	move.l %d0,16(%fp)
	move.b #13,%d0
	move.l %d0,12(%fp)
	move.l #12831280,8(%fp)
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
	jeq .L1355
.L1339:
	tst.w 14(%a3)
	jne .L1341
	tst.w 284(%a2)
	jne .L1341
	move.w 238(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1341
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
.L1341:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 626(%a2),-(%sp)
	move.l %a3,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	move.w raptor_ticks,%d1
	move.w 238(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L1356
	tst.w 288(%a2)
	jne .L1344
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
	jle .L1345
.L1346:
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
.L1343:
	move.w 266(%a2),%a0
	cmp.w #24,%d2
	jle .L1357
.L1350:
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.l 634(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	move.l 92(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1338:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1356:
	move.w 286(%a2),%d2
	move.w 248(%a2),%d0
	move.w 266(%a2),%a0
	cmp.w #24,%d2
	jgt .L1350
.L1357:
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 4.w
	move.l 634(%a2),-(%sp)
	move.l 434(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1344:
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
	jle .L1348
.L1349:
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
	jra .L1343
.L1355:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1339
	move.w #1,284(%a2)
	move.w #1,286(%a2)
	move.l 430(%a2),%a1
	move.l 294(%a2),%a0
	cmp.w #66,(%a0)
	jeq .L1338
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 264(%a4),%a0
	move.l %a0,294(%a2)
	move.l %a1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1348:
	cmp.w #182,%d0
	jeq .L1349
	move.w %d1,238(%a2)
	jra .L1343
.L1345:
	cmp.w #166,%d0
	jeq .L1346
	move.w %d1,238(%a2)
	jra .L1343
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
	clr.b 298(%a2)
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
	move.b #1,302(%a2)
	move.w 266(%a2),%d2
	add.w %d2,%d2
	add.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),%d0
	add.w #-12,%d0
	move.w %d0,248(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12710272,44(%a3)
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
	moveq #16,%d0
	move.l %d0,16(%fp)
	moveq #13,%d1
	move.l %d1,12(%fp)
	move.l #12831328,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z25StateKanoFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateKanoFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a5
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w raptor_ticks,%d0
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1364
	move.w 14(%a3),%d1
	cmp.w #2,%d1
	jeq .L1380
	cmp.w #3,%d1
	jeq .L1368
.L1367:
	move.w 286(%a2),%d1
.L1369:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	cmp.w #1,%d1
	jeq .L1381
.L1370:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 630(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
.L1364:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1380:
	tst.w 284(%a2)
	jne .L1367
	move.w #1,284(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 642(%a2),%a0
	move.l 430(%a0),%d1
	move.l 294(%a0),%a1
	addq.l #4,%sp
	cmp.w #72,(%a1)
	jeq .L1364
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
	move.l 288(%a5),%a1
	move.l %a1,294(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a1),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1368:
	move.w 286(%a2),%d1
	jne .L1369
	move.w #1,286(%a2)
	move.l 642(%a2),%a0
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
	move.l 630(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
	jra .L1364
.L1381:
	pea 8.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1370
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1372
	move.w %d0,288(%a2)
	addq.w #1,290(%a2)
	tst.w 292(%a2)
	jeq .L1382
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
.L1372:
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
	move.l 434(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	lea (32,%sp),%sp
	cmp.w #7,290(%a2)
	jle .L1370
	move.w #1,290(%a2)
	move.l 430(%a2),%d1
	move.l 294(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1364
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
	move.l 268(%a5),%a0
	move.l %a0,294(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1382:
	move.w #1,292(%a2)
	move.l 262(%a2),-(%sp)
	jsr __Z16sfxKanoHeartbeatP12SoundHandler
	move.w 244(%a2),%a0
	move.w 252(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,266(%a2)
	jeq .L1383
	clr.w %d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
.L1384:
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
	jra .L1372
.L1383:
	moveq #40,%d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
	jra .L1384
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
	clr.b 298(%a2)
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
	move.l 642(%a2),%a0
	move.w 252(%a0),%a0
	cmp.w #-1,%d0
	jeq .L1392
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
	move.l 442(%a2),-(%sp)
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
.L1392:
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
	move.l 442(%a2),-(%sp)
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
	jne .L1395
	move.w raptor_ticks,%d0
	move.w %d0,%a3
	move.w 238(%a2),%a1
	addq.l #2,%a1
	cmp.l %a3,%a1
	jlt .L1399
	cmp.w #5,288(%a2)
	jle .L1394
.L1400:
	move.w #1,284(%a2)
	clr.w 288(%a2)
	move.w raptor_ticks,238(%a2)
.L1394:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1395:
	moveq #1,%d0
	cmp.l 288(%a2),%d0
	jne .L1394
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
	move.l 430(%a2),%d1
	move.l 294(%a2),%a0
	lea (12,%sp),%sp
	cmp.w #66,(%a0)
	jeq .L1394
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
	move.l 264(%a3),%a0
	move.l %a0,294(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1399:
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
	move.l 442(%a2),-(%sp)
	move.w 14(%a0),%a1
	move.l %a1,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	cmp.w #5,288(%a2)
	jle .L1394
	jra .L1400
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
	clr.b 298(%a2)
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
	move.b #1,302(%a2)
	move.w 266(%a2),%d0
	move.w %d0,%d2
	add.w %d0,%d2
	add.w %d0,%d2
	lsl.w #4,%d2
	add.w 252(%a2),%d2
	move.w %d2,250(%a2)
	move.w 244(%a2),248(%a2)
	move.l 434(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12710272,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12710272,44(%a3)
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
	moveq #16,%d0
	move.l %d0,16(%fp)
	moveq #13,%d1
	move.l %d1,12(%fp)
	move.l #12830272,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z27StateRaidenFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateRaidenFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12348,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.w 284(%a2),%d0
	jne .L1408
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1417
.L1407:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1408:
	cmp.w #1,%d0
	jne .L1407
	move.w 238(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1407
	clr.w 290(%a2)
	move.l 430(%a2),%d1
	move.l 294(%a2),%a0
	cmp.w #67,(%a0)
	jeq .L1407
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
	move.l 268(%a3),%a0
	move.l %a0,294(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#15372
	unlk %fp
	jmp (%a0)
.L1417:
	pea 6.w
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	tst.b %d0
	jeq .L1410
	tst.w 284(%a2)
	jne .L1410
	move.l 434(%a2),%a0
	cmp.w #3,14(%a0)
	jeq .L1418
.L1411:
	pea 8.w
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1413
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
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1413:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d3
	move.l %d3,4(%a0,%d0.l)
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
	move.l 434(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	jsr (%a5)
	lea (32,%sp),%sp
.L1410:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 630(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (32,%sp),%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1418:
	tst.w 292(%a2)
	jne .L1411
	move.l 262(%a2),-(%sp)
	jsr __Z16sfxRaidenHeadZapP12SoundHandler
	move.w #1,292(%a2)
	move.l 642(%a2),%a0
	move.l 430(%a0),%d1
	move.l 294(%a0),%a1
	addq.l #4,%sp
	cmp.w #74,(%a1)
	jeq .L1419
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d3
	move.l %d3,4(%a1,%d0.l)
	move.l 296(%a3),%a1
	move.l %a1,294(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	move.l 434(%a2),%a0
	lea (12,%sp),%sp
	jra .L1411
.L1419:
	move.l 434(%a2),%a0
	jra .L1411
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
	clr.b 298(%a0)
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
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 284(%a2),%d0
	jne .L1425
	tst.b 270(%a2)
	jeq .L1426
	pea 16.w
	pea 14.w
	move.l 280(%a2),-(%sp)
	lea jsfLoadClut,%a4
	jsr (%a4)
	lea (12,%sp),%sp
.L1427:
	pea 4.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1428
	tst.b 270(%a2)
	jeq .L1429
	pea 16.w
	pea 14.w
	move.l 276(%a2),-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w #1,284(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,290(%a2)
.L1428:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 4.w
	move.l 638(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1424:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1425:
	cmp.w #1,%d0
	jne .L1424
	move.w 288(%a2),%d0
	jne .L1432
	tst.w 286(%a2)
	jeq .L1438
	tst.w 292(%a2)
	jne .L1434
.L1439:
	move.w 238(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1434
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
.L1434:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1435
	cmp.w #1,292(%a2)
	jne .L1435
	move.w #1,288(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 262(%a2),8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra __Z7sfxThudP12SoundHandler
.L1426:
	pea 16.w
	pea 15.w
	move.l 280(%a2),-(%sp)
	lea jsfLoadClut,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	jra .L1427
.L1429:
	pea 16.w
	pea 15.w
	move.l 276(%a2),-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w #1,284(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,290(%a2)
	jra .L1428
.L1435:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 626(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 290(%a2),%a1
	lea (89,%a1),%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1424
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1432:
	cmp.w #1,%d0
	jne .L1424
	move.w #1,284(%a2)
	clr.w 286(%a2)
	move.b #1,144(%a2)
	clr.b 140(%a2)
	move.l 430(%a2),%d1
	move.l 294(%a2),%a1
	cmp.w #66,(%a1)
	jeq .L1424
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
	move.l 264(%a0),%a1
	move.l %a1,294(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1438:
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
	jsr __Z24fighterPlayFatalityGroaniP12SoundHandlerb
	move.w raptor_ticks,238(%a2)
	lea (12,%sp),%sp
	tst.w 292(%a2)
	jne .L1434
	jra .L1439
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
	clr.b 298(%a0)
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
	move.b #1,302(%a0)
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
	jne .L1445
	move.w raptor_ticks,%d0
	move.w %d0,%a1
	move.w 238(%a2),%a3
	lea (59,%a3),%a3
	cmp.l %a3,%a1
	jle .L1446
	move.w 286(%a2),%d1
	jeq .L1460
	tst.b 130(%a2)
	jeq .L1448
	cmp.w #1,%d1
	jeq .L1461
.L1448:
	pea 14.w
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1453
	move.w #1,284(%a2)
.L1453:
	move.w 266(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 242(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 14.w
	move.l 630(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1444:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1445:
	cmp.w #1,%d0
	jeq .L1455
.L1446:
	move.w 292(%a2),%d0
.L1456:
	cmp.w #1,%d0
	jne .L1444
	move.w 238(%a2),%a3
	lea (59,%a3),%a3
	move.w raptor_ticks,%a1
	cmp.l %a3,%a1
	jle .L1444
	clr.w 290(%a2)
	move.l 430(%a2),%d1
	move.l 294(%a2),%a1
	cmp.w #67,(%a1)
	jeq .L1444
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
	move.l 268(%a0),%a1
	move.l %a1,294(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1455:
	move.w 292(%a2),%d0
	jne .L1456
	move.l 642(%a2),%a1
	move.l 430(%a1),%d1
	move.l 294(%a1),%a3
	cmp.w #70,(%a3)
	jeq .L1457
	move.l 92(%a1),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	moveq #-1,%d2
	move.l %d2,4(%a3,%d0.l)
	move.l 280(%a0),%a3
	move.l %a3,294(%a1)
	move.l %d1,-(%sp)
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a3),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1457:
	move.w #1,292(%a2)
	move.w raptor_ticks,238(%a2)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1460:
	move.l 262(%a2),-(%sp)
	jsr __Z15sfxKangFatalityP12SoundHandler
	addq.l #4,%sp
	move.l 642(%a2),%a0
	move.w 252(%a0),%a0
	move.w 266(%a2),%d0
	muls.w #-48,%d0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	addq.l #8,%sp
	jra .L1448
.L1461:
	move.w 288(%a2),%a0
	addq.l #1,%a0
	cmp.l %a1,%a0
	jge .L1448
	move.l 132(%a2),%d1
	move.w 252(%a2),%a0
	cmp.l %d1,%a0
	jlt .L1462
	jgt .L1463
	move.w %d0,288(%a2)
	jra .L1448
.L1463:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 252(%a2),%a0
	move.l 132(%a2),%d0
	addq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jlt .L1458
	clr.b 130(%a2)
	move.w #1,290(%a2)
.L1458:
	move.w raptor_ticks,%d0
	move.w %d0,288(%a2)
	jra .L1448
.L1462:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 252(%a2),%a0
	move.l 132(%a2),%d0
	subq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jgt .L1458
	clr.b 130(%a2)
	move.w #1,290(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,288(%a2)
	jra .L1448
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
