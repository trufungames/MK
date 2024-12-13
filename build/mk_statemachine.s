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
	move.l %a0,298(%a2)
	move.l 20(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	clr.b 302(%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z23stateMachineHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 298(%a0),%a1
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
	move.l 298(%a0),%a2
	move.w (%a2),%d1
	cmp.w %d1,%d0
	jeq .L4
	cmp.w #43,%d1
	jeq .L6
	tst.b 273(%a0)
	jne .L6
	move.l 92(%a0),%d1
	move.l %d1,%a2
	add.l %d1,%a2
	add.l %a2,%d1
	lsl.l #6,%d1
	move.l sprite,%a2
	moveq #-1,%d3
	move.l %d3,4(%a2,%d1.l)
.L6:
	move.w %d0,%a2
	add.l %a2,%a2
	add.l %a2,%a2
	move.l (%a2,%a1.l),%a2
	move.l %a2,298(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
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
	movem.l #14384,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 20(%fp),%d3
	tst.b 303(%a2)
	jeq .L10
	move.w raptor_ticks,%d0
	cmp.w 304(%a2),%d0
	jlt .L24
	clr.b 303(%a2)
.L10:
	tst.w 258(%a2)
	jle .L25
.L12:
	tst.b 162(%a2)
	jne .L26
	tst.b 140(%a2)
	jeq .L17
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #42,%d0
	jeq .L17
	cmp.w #5,%d0
	jeq .L17
	cmp.w #7,%d0
	jeq .L17
	cmp.w #6,%d0
	jeq .L17
	cmp.w #22,%d0
	jeq .L17
	cmp.w #21,%d0
	jeq .L17
	cmp.w #24,%d0
	jeq .L17
	cmp.w #23,%d0
	jeq .L17
	cmp.w #19,%d0
	jeq .L17
	cmp.w #18,%d0
	jeq .L17
	cmp.w #41,%d0
	jeq .L17
	cmp.w #40,%d0
	jeq .L17
	cmp.w #32,%d0
	jeq .L17
	cmp.w #28,%d0
	jeq .L17
	clr.b 140(%a2)
	move.l %d2,20(%fp)
	move.l %a2,16(%fp)
	moveq #42,%d4
	move.l %d4,12(%fp)
	move.l %a3,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L26:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 242(%a2),%a1
	addq.l #3,%a1
	move.w raptor_ticks,%a0
	addq.l #8,%sp
	cmp.l %a1,%a0
	jle .L17
	clr.b 162(%a2)
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L17:
	move.l 650(%a2),%a0
	move.l 298(%a0),%a0
	cmp.w #68,(%a0)
	jeq .L27
	tst.b 174(%a2)
	jne .L28
.L20:
	tst.b 168(%a2)
	jne .L29
.L21:
	move.l 298(%a2),%a0
	move.l %d3,20(%fp)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 6(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L29:
	clr.b 168(%a2)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	move.l 298(%a2),%a0
	move.l %d3,20(%fp)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 6(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L25:
	tst.b 138(%a2)
	jne .L12
	tst.b 142(%a2)
	jeq .L12
	tst.b 146(%a2)
	jne .L12
	tst.b 144(%a2)
	jne .L12
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #68,%d0
	jeq .L12
	cmp.w #66,%d0
	jeq .L12
	move.w 274(%a2),%d1
	jle .L13
	cmp.w #43,%d0
	jeq .L14
	tst.b 273(%a2)
	jne .L14
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L14:
	move.l 272(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L12
.L28:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	tst.b 168(%a2)
	jeq .L21
	jra .L29
.L24:
	move.l 298(%a2),%a0
	move.l 10(%a0),%a0
	movem.l -20(%fp),#3100
	unlk %fp
	jmp (%a0)
.L27:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z21fighterHandleFatalityP12StateMachineP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	tst.b %d0
	jeq .L20
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L13:
	clr.w %d4
	move.b 147(%a2),%d4
	move.w %d4,%a0
	move.w %a0,286(%a2)
	addq.w #1,%d1
	move.w %d1,274(%a2)
	clr.w 288(%a2)
	cmp.w #43,%d0
	jeq .L15
	tst.b 273(%a2)
	jne .L15
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L15:
	move.l 264(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L12
	.even
	.globl	__Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
__Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 16(%fp),%a0
	move.b #1,303(%a0)
	move.w 14(%fp),%d0
	add.w raptor_ticks,%d0
	move.w %d0,304(%a0)
	move.l 298(%a0),%a1
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
	tst.b 146(%a2)
	jne .L42
.L33:
	clr.b 176(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	clr.w 286(%a2)
	move.w %d0,288(%a2)
	move.l sprite,%a1
	move.l 192(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	move.w 244(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w 246(%a2),%d2
	move.w %d2,%d1
	add.w #160,%d1
	move.w %d1,12(%a0)
	cmp.w #2,(%a2)
	jeq .L43
.L35:
	move.l 92(%a2),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1)
	cmp.w #89,%d2
	jle .L44
.L32:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L44:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #59,%d0
	jeq .L32
	cmp.w #43,%d0
	jeq .L40
	tst.b 273(%a2)
	jne .L40
	moveq #-1,%d0
	move.l %d0,4(%a1)
.L40:
	move.l 236(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L42:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L33
	cmp.w #43,%d0
	jeq .L34
	tst.b 273(%a2)
	jne .L34
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L34:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.b 176(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	clr.w 286(%a2)
	move.w %d0,288(%a2)
	move.l sprite,%a1
	move.l 192(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	move.w 244(%a2),%d0
	add.w #12,%d0
	move.w %d0,8(%a0)
	move.w 246(%a2),%d2
	move.w %d2,%d1
	add.w #160,%d1
	move.w %d1,12(%a0)
	cmp.w #2,(%a2)
	jne .L35
.L43:
	move.l 264(%a2),-(%sp)
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
	cmp.w #1,268(%a2)
	jeq .L45
	move.w 254(%a2),%d2
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
	move.w 246(%a2),%d2
	move.w %d2,12(%a1)
.L46:
	cmp.w #89,%d2
	jgt .L32
	jra .L44
.L45:
	move.w 254(%a2),%d2
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
	move.w 246(%a2),%d2
	move.w %d2,12(%a1)
	jra .L46
	.even
	.globl	__Z16StateIdle_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z16StateIdle_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	clr.b 147(%a2)
	cmp.w #2,(%a2)
	jeq .L54
.L49:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 10(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (28,%sp),%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	cmp.w #2,(%a2)
	jeq .L55
.L48:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L55:
	move.l 92(%a2),%d0
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	cmp.w #1,268(%a2)
	jeq .L56
	move.w 254(%a2),%d2
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
	move.w 246(%a2),12(%a0,%d0.l)
	pea 1.w
	pea 1.w
	pea 30.w
	move.l 626(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
.L57:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L54:
	move.w 288(%a2),%a1
	lea (119,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L49
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxRaidenIdleZapP12SoundHandler
	move.w raptor_ticks,288(%a2)
	addq.l #4,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 10(%a2),%a0
	move.l %a0,-(%sp)
	move.l 442(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (28,%sp),%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	cmp.w #2,(%a2)
	jne .L48
	jra .L55
.L56:
	move.w 254(%a2),%d2
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
	move.w 246(%a2),12(%a0,%d0.l)
	pea 1.w
	pea 1.w
	pea 30.w
	move.l 626(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbb
	lea (20,%sp),%sp
	jra .L57
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
	tst.b 174(%a2)
	jne .L115
.L60:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L115:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l %d2,(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	tst.b %d0
	jne .L60
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L62
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L65
	cmp.w #1,268(%a2)
	jeq .L66
.L65:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jne .L116
.L67:
	tst.l %d1
	jeq .L68
	cmp.w #1,268(%a2)
	jeq .L69
.L68:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jne .L117
.L70:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L72
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L73
	tst.b 273(%a2)
	jne .L73
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L73:
	move.l 8(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L62:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L64
	tst.b 273(%a2)
	jne .L64
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L64:
	move.l 4(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L72:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L74
	move.w 268(%a2),%d4
	cmp.w #1,%d4
	jeq .L118
	cmp.w #-1,%d4
	jne .L74
	tst.l %d1
	jne .L76
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L109
.L110:
	moveq #0,%d4
.L82:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L87
.L86:
	tst.b 101(%a2)
	jeq .L87
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #11,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L88
	tst.b 273(%a2)
	jne .L88
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L88:
	move.l 44(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L116:
	cmp.w #-1,268(%a2)
	jne .L67
.L66:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L67
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L67
	tst.b 101(%a2)
	jeq .L67
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 15.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L117:
	cmp.w #-1,268(%a2)
	jne .L70
.L69:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L70
	tst.b 101(%a2)
	jeq .L70
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #20,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L71
	tst.b 273(%a2)
	jne .L71
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L71:
	move.l 80(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L74:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L84
	cmp.w #1,268(%a2)
	jeq .L85
.L84:
	tst.l %d1
	jeq .L82
	cmp.w #-1,268(%a2)
	jne .L82
.L85:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jne .L86
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L86
.L87:
	tst.l %d4
	jeq .L89
	cmp.w #1,268(%a2)
	jeq .L90
.L89:
	tst.l %d1
	jeq .L91
	cmp.w #-1,268(%a2)
	jeq .L90
.L91:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L93
.L92:
	tst.b 101(%a2)
	jeq .L93
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #14,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L94
	tst.b 273(%a2)
	jne .L94
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L94:
	move.l 56(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L93:
	move.w 268(%a2),%d5
	cmp.w #1,%d5
	jeq .L119
	cmp.w #-1,%d5
	jeq .L120
.L98:
	tst.l %d3
	jne .L121
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L105
	tst.b 141(%a2)
	jeq .L106
	tst.b 101(%a2)
	jne .L122
.L105:
	and.l JAGPAD_A,%d0
	jeq .L60
	tst.b 101(%a2)
	jeq .L60
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #13,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L108
	tst.b 273(%a2)
	jne .L108
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L108:
	move.l 52(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L120:
	tst.l %d1
	jne .L96
	tst.l %d4
	jeq .L98
.L101:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #4,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L102
	tst.b 273(%a2)
	jne .L102
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L102:
	move.l 16(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L90:
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jne .L92
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L93
	jra .L92
.L118:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L76
	tst.l %d1
	jeq .L110
.L109:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #7,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L83
	tst.b 273(%a2)
	jne .L83
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L83:
	move.l 28(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L122:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 40.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L119:
	tst.l %d4
	jne .L96
	tst.l %d1
	jeq .L98
	jra .L101
.L96:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #3,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L100
	tst.b 273(%a2)
	jne .L100
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L100:
	move.l 12(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L76:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #6,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L80
	tst.b 273(%a2)
	jne .L80
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L80:
	move.l 24(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L106:
	tst.b 101(%a2)
	jeq .L105
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #9,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L107
	tst.b 273(%a2)
	jne .L107
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L107:
	move.l 36(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L121:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L104
	tst.b 273(%a2)
	jne .L104
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L104:
	move.l 20(%a3),%a0
	move.l %a0,298(%a2)
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
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
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
	tst.b 302(%a2)
	jeq .L130
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 14(%a3)
	jeq .L131
.L125:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L131:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L125
	cmp.w #43,%d0
	jeq .L128
	tst.b 273(%a2)
	jne .L128
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L128:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L130:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 28(%a2),%a0
	move.l %a0,-(%sp)
	move.l 478(%a2),-(%sp)
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
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L135
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L139
.L135:
	and.l JAGPAD_DOWN,%d0
	jne .L140
.L134:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L140:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #8,%d0
	jeq .L134
	cmp.w #43,%d0
	jeq .L137
	tst.b 273(%a0)
	jne .L137
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L137:
	move.l 32(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L139:
	move.b #1,302(%a0)
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
	cmp.w #1,286(%a0)
	jeq .L143
	clr.w 14(%a1)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	unlk %fp
	rts
.L143:
	move.w #2,14(%a1)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
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
	tst.b 302(%a2)
	jeq .L152
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 14(%a3)
	jeq .L153
.L147:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L153:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L147
	cmp.w #43,%d0
	jeq .L150
	tst.b 273(%a2)
	jne .L150
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L150:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L152:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
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
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L169
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L159
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L159
	tst.b 101(%a0)
	jeq .L156
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L162
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L162
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L165
	and.l JAGPAD_9,%d0
	jeq .L156
.L165:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #17,%d0
	jeq .L156
	cmp.w #43,%d0
	jeq .L166
	tst.b 273(%a0)
	jne .L166
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L166:
	move.l 68(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L169:
	move.b #1,302(%a0)
.L156:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L159:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #8,%d0
	jeq .L156
	cmp.w #43,%d0
	jeq .L161
	tst.b 273(%a0)
	jne .L161
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L161:
	move.l 32(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L162:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #16,%d0
	jeq .L156
	cmp.w #43,%d0
	jeq .L164
	tst.b 273(%a0)
	jne .L164
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L164:
	move.l 64(%a1),%a2
	move.l %a2,298(%a0)
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
	clr.b 302(%a0)
	clr.w 286(%a0)
	move.w raptor_ticks,240(%a0)
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L173
	tst.b 139(%a2)
	jeq .L174
	move.w 268(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,286(%a2)
	move.w raptor_ticks,240(%a2)
.L173:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 302(%a2)
	jeq .L172
	cmp.w #31,286(%a2)
	jgt .L179
.L172:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L174:
	move.w 268(%a2),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,286(%a2)
	move.w raptor_ticks,240(%a2)
	jra .L173
.L179:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L172
	cmp.w #43,%d0
	jeq .L177
	tst.b 273(%a2)
	jne .L177
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L177:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L209
	cmp.w #-1,%d0
	jeq .L210
.L184:
	move.b #1,302(%a0)
.L182:
	movem.l (%sp)+,#1052
	unlk %fp
	rts
.L210:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jeq .L184
.L185:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L211
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jeq .L189
	tst.b 139(%a0)
	jeq .L189
	tst.b 101(%a0)
	jne .L212
.L189:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L213
.L191:
	tst.b 139(%a0)
	jeq .L192
	tst.b 101(%a0)
	jne .L214
.L192:
	and.l JAGPAD_7,%d0
	jeq .L194
	tst.b 101(%a0)
	jne .L206
.L194:
	tst.l %d2
	jeq .L196
	tst.b 101(%a0)
	jne .L206
.L196:
	tst.l %d3
	jeq .L182
	tst.b 101(%a0)
	jeq .L182
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #14,%d0
	jeq .L182
	cmp.w #43,%d0
	jeq .L198
	tst.b 273(%a0)
	jne .L198
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L198:
	move.l 56(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L209:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jne .L185
	move.b #1,302(%a0)
	jra .L182
.L213:
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L192
	jra .L191
.L211:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #6,%d0
	jeq .L182
	cmp.w #43,%d0
	jeq .L188
	tst.b 273(%a0)
	jne .L188
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L188:
	move.l 24(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L206:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #11,%d0
	jeq .L182
	cmp.w #43,%d0
	jeq .L197
	tst.b 273(%a0)
	jne .L197
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L197:
	move.l 44(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L214:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #39,%d0
	jeq .L182
	cmp.w #43,%d0
	jeq .L193
	tst.b 273(%a0)
	jne .L193
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L193:
	move.l 156(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L212:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #38,%d0
	jeq .L182
	cmp.w #43,%d0
	jeq .L190
	tst.b 273(%a0)
	jne .L190
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L190:
	move.l 152(%a1),%a2
	move.l %a2,298(%a0)
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
	clr.b 302(%a0)
	clr.w 286(%a0)
	move.w raptor_ticks,240(%a0)
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	clr.l -(%sp)
	move.w 18(%a2),%a0
	move.l %a0,-(%sp)
	move.l 458(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L222
.L218:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 302(%a2)
	jeq .L217
	cmp.w #27,286(%a2)
	jgt .L223
.L217:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L222:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.w #4,286(%a2)
	move.w raptor_ticks,240(%a2)
	addq.l #8,%sp
	jra .L218
.L223:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L217
	cmp.w #43,%d0
	jeq .L220
	tst.b 273(%a2)
	jne .L220
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L220:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L242
	cmp.w #-1,%d0
	jeq .L243
.L228:
	move.b #1,302(%a0)
.L226:
	movem.l (%sp)+,#1036
	unlk %fp
	rts
.L243:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jeq .L228
.L229:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L244
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jeq .L233
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L233
	tst.b 101(%a0)
	jne .L245
.L233:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L246
	tst.b 101(%a0)
	jne .L247
.L236:
	tst.l %d2
	jeq .L226
	tst.b 101(%a0)
	jeq .L226
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #20,%d0
	jeq .L226
	cmp.w #43,%d0
	jeq .L238
	tst.b 273(%a0)
	jne .L238
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L238:
	move.l 80(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L242:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jne .L229
	move.b #1,302(%a0)
	jra .L226
.L246:
	and.l JAGPAD_C,%d0
	jeq .L236
	tst.b 101(%a0)
	jeq .L236
	jra .L247
.L244:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #7,%d0
	jeq .L226
	cmp.w #43,%d0
	jeq .L232
	tst.b 273(%a0)
	jne .L232
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L232:
	move.l 28(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L247:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #11,%d0
	jeq .L226
	cmp.w #43,%d0
	jeq .L237
	tst.b 273(%a0)
	jne .L237
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L237:
	move.l 44(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L245:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #15,%d0
	jeq .L226
	cmp.w #43,%d0
	jeq .L234
	tst.b 273(%a0)
	jne .L234
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L234:
	move.l 60(%a1),%a2
	move.l %a2,298(%a0)
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
	clr.b 302(%a0)
	clr.w 286(%a0)
	move.w raptor_ticks,240(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.w 286(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #1,%d0
	jls .L262
	cmp.w #18,%d0
	jeq .L263
	cmp.w #19,%d0
	jeq .L264
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
.L252:
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L260
	tst.b 176(%a2)
	jne .L260
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d2
	add.w %d2,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #19,%d0
	jgt .L265
.L250:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L260:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L250
.L265:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L250
	cmp.w #43,%d0
	jeq .L259
	tst.b 273(%a2)
	jne .L259
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L259:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L264:
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 3.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L252
.L262:
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	clr.l -(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L252
.L263:
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 2.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L252
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
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L269
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L270
.L269:
	tst.b 101(%a0)
	jne .L277
.L270:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L278
	tst.b 101(%a0)
	jne .L279
.L268:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L278:
	and.l JAGPAD_9,%d0
	jeq .L268
	tst.b 101(%a0)
	jeq .L268
.L279:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #19,%d0
	jeq .L268
	cmp.w #43,%d0
	jeq .L274
	tst.b 273(%a0)
	jne .L274
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L274:
	move.l 76(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d2,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L277:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #18,%d0
	jeq .L268
	cmp.w #43,%d0
	jeq .L272
	tst.b 273(%a0)
	jne .L272
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L272:
	move.l 72(%a1),%a2
	move.l %a2,298(%a0)
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
	clr.b 302(%a0)
	clr.w 286(%a0)
	move.w raptor_ticks,240(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	move.w 286(%a2),%a0
	move.l %a0,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jle .L288
	tst.b 176(%a2)
	jeq .L285
.L288:
	move.w 286(%a2),%d0
.L284:
	cmp.w #19,%d0
	jgt .L290
.L282:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L290:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L282
	cmp.w #43,%d0
	jeq .L287
	tst.b 273(%a2)
	jne .L287
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L287:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L285:
	move.w 268(%a2),%a0
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
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w raptor_ticks,240(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L284
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L282
	jra .L290
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
	jeq .L293
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L295
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L295
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L298
	and.l JAGPAD_7,%d0
	jeq .L293
.L298:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #23,%d0
	jeq .L293
	cmp.w #43,%d0
	jeq .L299
	tst.b 273(%a0)
	jne .L299
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L299:
	move.l 92(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L293:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L295:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #21,%d0
	jeq .L293
	cmp.w #43,%d0
	jeq .L297
	tst.b 273(%a0)
	jne .L297
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L297:
	move.l 84(%a1),%a2
	move.l %a2,298(%a0)
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
	clr.b 302(%a0)
	clr.w 286(%a0)
	move.w raptor_ticks,240(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 470(%a2),-(%sp)
	move.w #19,%a0
	sub.w 286(%a2),%a0
	move.l %a0,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jle .L310
	tst.b 176(%a2)
	jeq .L307
.L310:
	move.w 286(%a2),%d0
.L306:
	cmp.w #19,%d0
	jgt .L312
.L304:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L312:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L304
	cmp.w #43,%d0
	jeq .L309
	tst.b 273(%a2)
	jne .L309
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L309:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L307:
	move.w 268(%a2),%a0
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
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w raptor_ticks,240(%a2)
	addq.l #8,%sp
	cmp.w #5,%d0
	jne .L306
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L304
	jra .L312
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
	jeq .L315
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L317
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L317
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L320
	and.l JAGPAD_7,%d0
	jeq .L315
.L320:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #24,%d0
	jeq .L315
	cmp.w #43,%d0
	jeq .L321
	tst.b 273(%a0)
	jne .L321
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L321:
	move.l 96(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	jmp (%a0)
.L315:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L317:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #22,%d0
	jeq .L315
	cmp.w #43,%d0
	jeq .L319
	tst.b 273(%a0)
	jne .L319
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L319:
	move.l 88(%a1),%a2
	move.l %a2,298(%a0)
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
	clr.w 286(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
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
	tst.b 302(%a2)
	jeq .L337
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 14(%a3)
	jne .L326
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L329
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L329
	and.l JAGPAD_DOWN,%d0
	jne .L338
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L326
	cmp.w #43,%d0
	jeq .L334
	tst.b 273(%a2)
	jne .L334
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L334:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L337:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 32(%a2),%a0
	move.l %a0,-(%sp)
	move.l 486(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L326:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L329:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L326
	cmp.w #43,%d0
	jeq .L331
	tst.b 273(%a2)
	jne .L331
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L331:
	move.l 4(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L338:
	move.w #1,286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L326
	cmp.w #43,%d0
	jeq .L333
	tst.b 273(%a2)
	jne .L333
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L333:
	move.l 8(%a4),%a0
	move.l %a0,298(%a2)
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
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jeq .L342
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L341
	and.l JAGPAD_8,%d0
	jne .L341
.L342:
	move.b #1,302(%a0)
.L341:
	unlk %fp
	rts
	.even
	.globl	__Z22StateLowPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z22StateLowPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 286(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L355
.L348:
	tst.w 286(%a2)
	jle .L349
.L356:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #10,%d0
	jeq .L347
	cmp.w #43,%d0
	jeq .L351
	tst.b 273(%a2)
	jne .L351
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L351:
	move.l 40(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L355:
	tst.w 290(%a2)
	jne .L348
	move.w #1,290(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 286(%a2)
	jgt .L356
.L349:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L357
.L347:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L357:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L347
	cmp.w #43,%d0
	jeq .L352
	tst.b 273(%a2)
	jne .L352
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L352:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
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
	jeq .L360
	move.l JAGPAD_C,%d0
	and.l 196(%a0),%d0
	jeq .L360
	addq.w #1,286(%a0)
.L360:
	unlk %fp
	rts
	.even
	.globl	__Z28StateLowRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z28StateLowRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 286(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,288(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w %d0,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	tst.b 302(%a2)
	jne .L366
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 38(%a2),%a0
	move.l %a0,-(%sp)
	move.l 498(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,14(%a3)
	jeq .L372
.L367:
	tst.w 286(%a2)
	jle .L368
.L373:
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
.L365:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L366:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	lea (32,%sp),%sp
	jeq .L365
	cmp.w #43,%d0
	jeq .L370
	tst.b 273(%a2)
	jne .L370
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L370:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L368:
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L365
	move.b #1,302(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L372:
	tst.w 290(%a2)
	jne .L367
	move.w #1,290(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 286(%a2)
	jgt .L373
	jra .L368
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
	jeq .L376
	move.l JAGPAD_C,%d0
	and.l 196(%a0),%d0
	jeq .L376
	addq.w #1,286(%a0)
.L376:
	unlk %fp
	rts
	.even
	.globl	__Z23StateHighPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z23StateHighPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 286(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 378(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l 502(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L389
.L382:
	tst.w 286(%a2)
	jle .L383
.L390:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #12,%d0
	jeq .L381
	cmp.w #43,%d0
	jeq .L385
	tst.b 273(%a2)
	jne .L385
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L385:
	move.l 48(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L389:
	tst.w 290(%a2)
	jne .L382
	move.w #1,290(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 286(%a2)
	jgt .L390
.L383:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L391
.L381:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L391:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L381
	cmp.w #43,%d0
	jeq .L386
	tst.b 273(%a2)
	jne .L386
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L386:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
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
	jeq .L394
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L398
	addq.w #1,286(%a0)
.L394:
	unlk %fp
	rts
.L398:
	and.l JAGPAD_7,%d0
	jeq .L394
	addq.w #1,286(%a0)
	jra .L394
	.even
	.globl	__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z29StateHighRepeatPunching_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 286(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,288(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w %d0,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	tst.b 302(%a2)
	jne .L402
	move.l 382(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 42(%a2),%a0
	move.l %a0,-(%sp)
	move.l 506(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #3,14(%a3)
	jeq .L408
.L403:
	tst.w 286(%a2)
	jle .L404
.L409:
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
.L401:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L402:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l 494(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	lea (32,%sp),%sp
	jeq .L401
	cmp.w #43,%d0
	jeq .L406
	tst.b 273(%a2)
	jne .L406
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L406:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L404:
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L401
	move.b #1,302(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L408:
	tst.w 290(%a2)
	jne .L403
	move.w #1,290(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayHiyaiP12SoundHandlerb
	lea (12,%sp),%sp
	tst.w 286(%a2)
	jgt .L409
	jra .L404
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
	jeq .L412
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L416
	addq.w #1,286(%a0)
.L412:
	unlk %fp
	rts
.L416:
	and.l JAGPAD_7,%d0
	jeq .L412
	addq.w #1,286(%a0)
	jra .L412
	.even
	.globl	__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator
__Z21StateLowKicking_EnterP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 386(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L424
.L420:
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L425
.L419:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L425:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L419
	cmp.w #43,%d0
	jeq .L422
	tst.b 273(%a2)
	jne .L422
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L422:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L424:
	tst.w 290(%a2)
	jne .L420
	move.w #1,290(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
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
	jeq .L419
	jra .L425
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
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 390(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l 514(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	cmp.w #2,14(%a3)
	jeq .L435
.L431:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L436
.L430:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L436:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L430
	cmp.w #43,%d0
	jeq .L433
	tst.b 273(%a2)
	jne .L433
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L433:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L435:
	tst.w 290(%a2)
	jne .L431
	move.w #1,290(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
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
	jeq .L430
	jra .L436
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
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 410(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L445
.L441:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L445:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L441
	cmp.w #43,%d0
	jeq .L443
	tst.b 273(%a2)
	jne .L443
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L443:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 402(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 530(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L454
.L450:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L454:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L450
	cmp.w #43,%d0
	jeq .L452
	tst.b 273(%a2)
	jne .L452
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L452:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 268(%a1),%a2
	move.l %a2,-(%sp)
	move.w 246(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
	move.l %a2,-(%sp)
	move.w 16(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 530(%a1),-(%sp)
	pea 3.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.l -4(%fp),%a2
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
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 422(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l 578(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 64(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L463
.L459:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L463:
	move.w #1,286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L459
	cmp.w #43,%d0
	jeq .L461
	tst.b 273(%a2)
	jne .L461
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L461:
	move.l 8(%a3),%a0
	move.l %a0,298(%a2)
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
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L474
	tst.b 176(%a2)
	jne .L474
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #19,%d0
	jgt .L476
.L468:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L474:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L468
.L476:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L468
	cmp.w #43,%d0
	jeq .L473
	tst.b 273(%a2)
	jne .L473
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L473:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	move.w 268(%a1),%a2
	move.l %a2,-(%sp)
	move.w 246(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
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
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 50(%a2),%a0
	move.l %a0,-(%sp)
	move.l 522(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L487
	tst.b 176(%a2)
	jne .L487
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #19,%d0
	jgt .L489
.L481:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L487:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L481
.L489:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L481
	cmp.w #43,%d0
	jeq .L486
	tst.b 273(%a2)
	jne .L486
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L486:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	move.w 268(%a1),%a2
	move.l %a2,-(%sp)
	move.w 246(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
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
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 406(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l 562(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 56(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L498
.L494:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L498:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L494
	cmp.w #43,%d0
	jeq .L496
	tst.b 273(%a2)
	jne .L496
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L496:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	clr.b 302(%a0)
	clr.w 288(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 526(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%d0
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d0,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L504
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L510
.L503:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L504:
	tst.w 288(%a2)
	jeq .L511
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L512:
	cmp.w #19,%d1
	jle .L503
.L510:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L503
	cmp.w #43,%d0
	jeq .L508
	tst.b 273(%a2)
	jne .L508
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L508:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L511:
	move.w 268(%a2),%a0
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
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
	jra .L512
	.even
	.globl	__Z32StateJumpingKickingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z32StateJumpingKickingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a0),%a1
	move.l %a1,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 526(%a2),-(%sp)
	pea 2.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w #1,288(%a2)
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
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 526(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L523
	tst.b 176(%a2)
	jeq .L520
.L523:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L525
.L517:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L525:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L517
	cmp.w #43,%d0
	jeq .L522
	tst.b 273(%a2)
	jne .L522
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L522:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L520:
	move.w 268(%a2),%a0
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
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w raptor_ticks,240(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L517
	jra .L525
	.even
	.globl	__Z33StateJumpingKickingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingKickingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 268(%a1),%a2
	move.l %a2,-(%sp)
	move.w 246(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
	move.l %a2,-(%sp)
	move.w 16(%a0),%a2
	move.l %a2,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 526(%a1),-(%sp)
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
	clr.b 302(%a0)
	clr.w 288(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w raptor_ticks,%d0
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d0,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L531
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L537
.L530:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L531:
	tst.w 288(%a2)
	jeq .L538
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L539:
	cmp.w #19,%d1
	jle .L530
.L537:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L530
	cmp.w #43,%d0
	jeq .L535
	tst.b 273(%a2)
	jne .L535
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L535:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L538:
	move.w 268(%a2),%a0
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
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
	jra .L539
	.even
	.globl	__Z33StateJumpingPunchingForward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z33StateJumpingPunchingForward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.l 16(%fp),%a0
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a0),%a1
	move.l %a1,-(%sp)
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 518(%a2),-(%sp)
	pea 1.w
	move.l (%a0),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w #1,288(%a2)
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
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	clr.b 101(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.l 394(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L550
	tst.b 176(%a2)
	jeq .L547
.L550:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L552
.L544:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L552:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L544
	cmp.w #43,%d0
	jeq .L549
	tst.b 273(%a2)
	jne .L549
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L549:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L547:
	move.w 268(%a2),%a0
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
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w raptor_ticks,240(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L544
	jra .L552
	.even
	.globl	__Z34StateJumpingPunchingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z34StateJumpingPunchingBackward_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w 268(%a1),%a2
	move.l %a2,-(%sp)
	move.w 246(%a1),%a2
	move.l %a2,-(%sp)
	move.w 244(%a1),%a2
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
	cmp.w #89,246(%a2)
	jle .L561
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 260(%a2),%a0
	move.l %a0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L561:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L556
	cmp.w #43,%d0
	jeq .L559
	tst.b 273(%a2)
	jne .L559
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L559:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L556:
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L567
.L563:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L567:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L563
	cmp.w #43,%d0
	jeq .L565
	tst.b 273(%a2)
	jne .L565
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L565:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	cmp.w #89,246(%a2)
	jle .L576
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 260(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	move.w 268(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%a0
	move.l %a0,16(%fp)
	move.w 246(%a2),%d1
	add.w #-10,%d1
	move.w %d1,%a0
	move.l %a0,12(%fp)
	muls.w #-10,%d0
	add.w 254(%a2),%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z10bloodSpraysss
.L576:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L571
	cmp.w #43,%d0
	jeq .L574
	tst.b 273(%a2)
	jne .L574
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L574:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L571:
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l 538(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 72(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L582
.L578:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L582:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L578
	cmp.w #43,%d0
	jeq .L580
	tst.b 273(%a2)
	jne .L580
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L580:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	cmp.w #89,246(%a2)
	jle .L591
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 260(%a2),%a0
	move.l %a0,12(%fp)
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L591:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L586
	cmp.w #43,%d0
	jeq .L589
	tst.b 273(%a2)
	jne .L589
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L589:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L586:
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 80(%a2),%a0
	move.l %a0,-(%sp)
	move.l 554(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 80(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L597
.L593:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L597:
	move.l 264(%a2),-(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	clr.b 138(%a2)
	move.b #1,147(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	cmp.w #28,%d0
	jeq .L593
	cmp.w #43,%d0
	jeq .L595
	tst.b 273(%a2)
	jne .L595
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L595:
	move.l 112(%a3),%a0
	move.l %a0,298(%a2)
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
	tst.b 146(%a2)
	jne .L606
.L602:
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	cmp.w #2,(%a2)
	jeq .L607
.L601:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L606:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L602
	cmp.w #43,%d0
	jeq .L603
	tst.b 273(%a2)
	jne .L603
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
.L603:
	move.l 264(%a0),%a1
	move.l %a1,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	cmp.w #2,(%a2)
	jne .L601
.L607:
	move.l 264(%a2),8(%fp)
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l 558(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 54(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L613
.L609:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L613:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L609
	cmp.w #43,%d0
	jeq .L611
	tst.b 273(%a2)
	jne .L611
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L611:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	cmp.w #89,246(%a2)
	jle .L622
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	clr.w 286(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 260(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l 264(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	tst.b 106(%a2)
	jeq .L623
.L617:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L623:
	move.w 268(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	muls.w #-40,%d0
	add.w 254(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodGlobsss
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,16(%fp)
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,12(%fp)
	move.w 254(%a2),%a2
	move.l %a2,8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z9bloodDropsss
.L622:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L617
	cmp.w #43,%d0
	jeq .L620
	tst.b 273(%a2)
	jne .L620
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L620:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
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
	jeq .L631
.L626:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L632
.L627:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L633
.L625:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L633:
	clr.b 138(%a2)
	clr.b 106(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L625
	cmp.w #43,%d0
	jeq .L629
	tst.b 273(%a2)
	jne .L629
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L629:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L632:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l 542(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 74(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L625
	jra .L633
.L631:
	tst.w 286(%a2)
	jne .L626
	move.w #1,286(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L627
	jra .L632
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
	cmp.w #89,246(%a2)
	jle .L642
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	clr.w 286(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 260(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 264(%a2),8(%fp)
	movem.l -12(%fp),#7168
	unlk %fp
	jra __Z9sfxImpactP12SoundHandler
.L642:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L637
	cmp.w #43,%d0
	jeq .L640
	tst.b 273(%a2)
	jne .L640
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L640:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L637:
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
	jeq .L650
.L645:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L651
.L646:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L652
.L644:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L652:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L644
	cmp.w #43,%d0
	jeq .L648
	tst.b 273(%a2)
	jne .L648
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L648:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L651:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l 534(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 70(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L644
	jra .L652
.L650:
	tst.w 286(%a2)
	jne .L645
	move.w #1,286(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z16fighterPlayGroaniP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L646
	jra .L651
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
	clr.b 302(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 260(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l 264(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 268(%a2),%d0
	muls.w #-20,%d0
	add.w 254(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	move.w 268(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d1
	add.w #-40,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-80,%d0
	add.w 254(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a3
	jsr (%a3)
	move.w 268(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	muls.w #-20,%d0
	add.w 254(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 268(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%d1
	neg.w %d1
	move.w %d1,%a0
	move.l %a0,16(%fp)
	move.w 246(%a2),%d1
	add.w #-50,%d1
	move.w %d1,%a0
	move.l %a0,12(%fp)
	muls.w #-60,%d0
	add.w 254(%a2),%d0
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
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jeq .L665
	cmp.w #8,%d0
	jeq .L666
.L659:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L667
.L657:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L667:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	add.l %d0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 246(%a2),%d1
	move.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L668
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
.L670:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L666:
	tst.w 290(%a2)
	jne .L659
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L657
	jra .L667
.L665:
	tst.w 288(%a2)
	jne .L659
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L657
	jra .L667
.L668:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 138(%a2)
	move.b #1,147(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	cmp.w #32,%d0
	jeq .L669
	cmp.w #43,%d0
	jeq .L663
	tst.b 273(%a2)
	jne .L663
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L663:
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 246(%a2),%d1
	move.w 286(%a2),%d0
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
	jra .L670
.L669:
	move.w 246(%a2),%d1
	move.w 286(%a2),%d0
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
	jra .L670
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
	tst.b 146(%a2)
	jne .L678
.L675:
	clr.b 302(%a2)
	move.w raptor_ticks,240(%a2)
	move.b #1,147(%a2)
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L678:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L675
	cmp.w #43,%d0
	jeq .L676
	tst.b 273(%a2)
	jne .L676
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
.L676:
	move.l 264(%a0),%a1
	move.l %a1,298(%a2)
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.b 302(%a2)
	move.w raptor_ticks,240(%a2)
	move.b #1,147(%a2)
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 550(%a2),-(%sp)
	moveq #0,%d0
	move.w 78(%a2),%d0
	move.l %d0,%a0
	pea -1(%a0)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jgt .L684
.L680:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L684:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #28,%d0
	jeq .L680
	cmp.w #43,%d0
	jeq .L682
	tst.b 273(%a2)
	jne .L682
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L682:
	move.l 112(%a4),%a0
	move.l %a0,298(%a2)
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
	clr.b 302(%a2)
	move.w #4,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 260(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 264(%a2),8(%fp)
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
	jeq .L697
	cmp.w #3,%d0
	jeq .L698
.L691:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L699
.L689:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L699:
	move.w 268(%a2),%d0
	ext.l %d0
	move.l %d0,%d1
	neg.l %d1
	add.l %d1,%d1
	add.l %d1,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 246(%a2),%d1
	move.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L700
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
.L702:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L698:
	tst.w 290(%a2)
	jne .L691
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L689
	jra .L699
.L697:
	tst.w 288(%a2)
	jne .L691
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L689
	jra .L699
.L700:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 138(%a2)
	move.b #1,147(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	cmp.w #32,%d0
	jeq .L701
	cmp.w #43,%d0
	jeq .L695
	tst.b 273(%a2)
	jne .L695
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L695:
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 246(%a2),%d1
	move.w 286(%a2),%d0
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
	jra .L702
.L701:
	move.w 246(%a2),%d1
	move.w 286(%a2),%d0
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
	jra .L702
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
	clr.b 302(%a2)
	move.w #4,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 260(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 264(%a2),8(%fp)
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
	jeq .L714
.L708:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L715
.L707:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L715:
	move.w 268(%a2),%a0
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
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 246(%a2),%d1
	move.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L716
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
.L718:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L714:
	tst.w 288(%a2)
	jne .L708
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	lea (12,%sp),%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L707
	jra .L715
.L716:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 138(%a2)
	move.b #1,147(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	cmp.w #32,%d0
	jeq .L717
	cmp.w #43,%d0
	jeq .L712
	tst.b 273(%a2)
	jne .L712
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L712:
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w 246(%a2),%d1
	move.w 286(%a2),%d0
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
	jra .L718
.L717:
	move.w 246(%a2),%d1
	move.w 286(%a2),%d0
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
	jra .L718
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
	clr.b 302(%a2)
	move.w %d0,286(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 260(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 264(%a2),8(%fp)
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
	move.w 286(%a2),%a1
	lea (9,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L727
.L724:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L727:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L724
	cmp.w #43,%d0
	jeq .L725
	tst.b 273(%a2)
	jne .L725
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L725:
	move.l 4(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
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
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 260(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 264(%a2),8(%fp)
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
	jne .L736
.L733:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 490(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L736:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L733
	cmp.w #43,%d0
	jeq .L734
	tst.b 273(%a2)
	jne .L734
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L734:
	move.l 4(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 34(%a2),%a0
	move.l %a0,-(%sp)
	move.l 490(%a2),-(%sp)
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
	clr.b 302(%a2)
	move.w %d0,286(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 260(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.l 264(%a2),8(%fp)
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
	move.w 286(%a2),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L746
.L742:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jgt .L747
.L744:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L747:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,240(%a2)
	addq.l #8,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 30(%a2),%a0
	move.l %a0,-(%sp)
	move.l 482(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L746:
	clr.b 138(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	jeq .L742
	cmp.w #43,%d0
	jeq .L743
	tst.b 273(%a2)
	jne .L743
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L743:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jle .L744
	jra .L747
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
	clr.b 302(%a0)
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	move.w raptor_ticks,240(%a0)
	clr.w 286(%a0)
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
	move.l 414(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l 570(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 286(%a2)
	jne .L753
	cmp.w #2,14(%a3)
	jeq .L758
.L753:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L759
.L752:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L759:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L752
	cmp.w #43,%d0
	jeq .L756
	tst.b 273(%a2)
	jne .L756
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L756:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L758:
	move.w #1,286(%a2)
	cmp.w #1,(%a2)
	jeq .L760
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L752
	jra .L759
.L760:
	move.l 264(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L752
	jra .L759
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
	clr.b 302(%a0)
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	move.w raptor_ticks,240(%a0)
	clr.w 286(%a0)
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
	move.l 418(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l 574(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	tst.w 286(%a2)
	jne .L766
	cmp.w #2,14(%a3)
	jeq .L770
.L766:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L771
.L765:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L771:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L765
	cmp.w #43,%d0
	jeq .L768
	tst.b 273(%a2)
	jne .L768
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L768:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L770:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L765
	jra .L771
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
	clr.b 302(%a0)
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	move.w raptor_ticks,240(%a0)
	clr.b 141(%a0)
	clr.w 286(%a0)
	move.w (%a0),%d0
	cmp.w #4,%d0
	jge .L780
.L776:
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z12sfxThrowMaleP12SoundHandler
.L780:
	cmp.w #5,%d0
	jgt .L781
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z13sfxThrowNinjaP12SoundHandler
.L781:
	cmp.w #6,%d0
	jne .L776
	move.l 264(%a0),8(%fp)
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
	move.l 426(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l 582(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.w 66(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L787
.L783:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L787:
	clr.b 141(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L783
	cmp.w #43,%d0
	jeq .L785
	tst.b 273(%a2)
	jne .L785
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L785:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	tst.b 128(%a0)
	jne .L795
	clr.w %d0
	move.w %d0,14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	clr.b 302(%a0)
	move.w #8,286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	move.w %d0,240(%a0)
	move.b #1,138(%a0)
	move.w 268(%a0),%d0
	ext.l %d0
	lsl.l #5,%d0
	move.l %d0,12(%fp)
	move.l %a0,8(%fp)
	unlk %fp
	jra __Z19fighterPositionXAddP7Fighteri
.L795:
	moveq #2,%d0
	move.w %d0,14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	clr.b 302(%a0)
	move.w #8,286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	move.w %d0,240(%a0)
	move.b #1,138(%a0)
	move.w 268(%a0),%d0
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
	jle .L807
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L797
	move.w 286(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #21,%d0
	jle .L808
	cmp.w #22,%d0
	jeq .L809
	cmp.w #23,%d0
	jeq .L810
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 5.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
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
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L811
.L804:
	move.w raptor_ticks,240(%a2)
.L797:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L808:
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 2.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
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
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L804
.L811:
	move.w 260(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 138(%a2)
	clr.b 128(%a2)
	move.b #1,147(%a2)
	clr.b 146(%a2)
	clr.b 144(%a2)
	addq.l #4,%sp
	tst.w 258(%a2)
	jle .L804
	clr.w 286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #32,%d0
	jeq .L797
	cmp.w #43,%d0
	jeq .L805
	tst.b 273(%a2)
	jne .L805
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L805:
	move.l 128(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L807:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 68(%a2),%a0
	move.l %a0,-(%sp)
	move.l 586(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L809:
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 3.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
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
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L804
	jra .L811
.L810:
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 4.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
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
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L804
	jra .L811
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
	clr.b 302(%a0)
	clr.w 286(%a0)
	move.l 16(%fp),%a1
	clr.w 14(%a1)
	move.w raptor_ticks,240(%a0)
	clr.b 138(%a0)
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
	tst.w 286(%a2)
	jeq .L823
	tst.w 14(%a3)
	jle .L824
.L820:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 20(%a2),%a1
	move.l %a1,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L816:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L823:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L825
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L826:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L825:
	move.w #1,286(%a2)
	move.l %a2,-(%sp)
	jsr __Z20fighterTurnInstantlyP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	addq.l #4,%sp
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L826
.L824:
	clr.b 140(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L820
	cmp.w #43,%d0
	jeq .L821
	tst.b 273(%a2)
	jne .L821
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L821:
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 20(%a2),%a1
	move.l %a1,-(%sp)
	move.l 462(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L816
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
	jne .L829
	move.w #1,286(%a2)
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,268(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L836
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
.L829:
	clr.b 138(%a2)
	clr.b 140(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L828
	cmp.w #43,%d0
	jeq .L833
	tst.b 273(%a2)
	jne .L833
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L833:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L836:
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
	jra .L829
.L828:
	movem.l -16(%fp),#3084
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
	move.l 12(%fp),%a2
	clr.b 302(%a2)
	move.l 16(%fp),%a0
	clr.w 14(%a0)
	clr.w 286(%a2)
	move.w raptor_ticks,%a1
	move.w %a1,288(%a2)
	clr.w 290(%a2)
	clr.b 177(%a2)
	move.w 254(%a2),252(%a2)
	move.w 246(%a2),%d0
	move.w %d0,250(%a2)
	move.w (%a2),%d1
	cmp.w #1,%d1
	jls .L860
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.w %a1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838736,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #6,%d1
	jls .L861
.L839:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L861:
	and.l #65535,%d1
	add.l %d1,%d1
	move.w .L847(%pc,%d1.l),%d0
	jmp %pc@(2,%d0:w)
.L847:
	.word .L842-.L847
	.word .L843-.L847
	.word .L844-.L847
	.word .L845-.L847
	.word .L839-.L847
	.word .L839-.L847
	.word .L846-.L847
.L860:
	subq.w #8,%d0
	move.w %d0,250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.w %a1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838736,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #6,%d1
	jhi .L839
	jra .L861
.L843:
	tst.b 272(%a2)
	jne .L862
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975328,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z12sfxKanoKnifeP12SoundHandler
.L844:
	tst.b 272(%a2)
	jne .L863
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975376,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L845:
	tst.b 272(%a2)
	jne .L864
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975424,-(%sp)
.L858:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L846:
	tst.b 272(%a2)
	jeq .L857
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975472,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L842:
	tst.b 272(%a2)
	jne .L865
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975280,-(%sp)
.L866:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L857:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975472,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L865:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975280,-(%sp)
	jra .L866
.L864:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975424,-(%sp)
	jra .L858
.L863:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975376,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L862:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975328,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z12sfxKanoKnifeP12SoundHandler
	.even
	.globl	__Z30StateThrowingProjectile_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z30StateThrowingProjectile_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #14392,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 177(%a2)
	jne .L869
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	cmp.w #2,(%a2)
	jeq .L870
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L900
.L871:
	move.w (%a2),%d0
	cmp.w #1,%d0
	jeq .L901
	cmp.w #2,%d0
	jeq .L876
.L891:
	move.w 268(%a2),%d0
.L875:
	move.w raptor_ticks,%d1
	move.w 288(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L878
	move.w %d0,%d4
	add.w %d0,%d4
	move.w %d4,%d3
	lsl.w #3,%d3
	sub.w %d4,%d3
	add.w %d3,252(%a2)
	move.w %d1,288(%a2)
.L878:
	cmp.w #1,%d0
	jeq .L902
	cmp.w #-1,%d0
	jne .L881
	tst.w 248(%a2)
	jlt .L898
.L881:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 614(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L884:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L903
.L868:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L869:
	tst.w 286(%a2)
	jne .L885
	move.w #1,286(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L885:
	move.w 90(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L898
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 90(%a2),%a0
	move.l %a0,-(%sp)
	move.l 618(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
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
	jne .L868
.L903:
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L902:
	cmp.w #320,248(%a2)
	jle .L881
.L898:
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
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L868
	cmp.w #43,%d0
	jeq .L887
	tst.b 273(%a2)
	jne .L887
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L887:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#7196
	unlk %fp
	jmp (%a0)
.L900:
	cmp.w #2,(%a2)
	jne .L872
.L870:
	pea 8.w
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jne .L871
.L872:
	move.w 268(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 614(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L884
.L876:
	tst.w 290(%a2)
	jne .L891
	move.w #1,290(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d1
	lsl.w #6,%d1
	add.w %d1,252(%a2)
	jra .L875
.L901:
	tst.w 290(%a2)
	jne .L891
	move.w #1,290(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d1
	lsl.w #4,%d1
	add.w %d1,252(%a2)
	jra .L875
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
	clr.b 302(%a2)
	move.l 16(%fp),%a0
	clr.w 14(%a0)
	move.w raptor_ticks,%d1
	move.w %d1,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.b 177(%a2)
	move.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.w %d1,240(%a2)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 246(%a2),%d0
	subq.w #1,%d0
	move.w %d0,12(%a0)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	tst.w (%a2)
	jeq .L914
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L914:
	tst.b 272(%a2)
	jeq .L911
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975232,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L911:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975232,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w 290(%a2),%d0
	lea (12,%sp),%sp
	cmp.w #3,%d0
	jeq .L917
	move.w raptor_ticks,%d1
	move.w 286(%a2),%a1
	addq.l #4,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jgt .L934
	cmp.w #6,%d0
	jgt .L919
.L935:
	move.w %d0,%a0
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL20cageShadowKickFrames
	move.l 438(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L916:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L934:
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.w %d1,286(%a2)
	cmp.w #6,%d0
	jle .L935
.L919:
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
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L916
	cmp.w #43,%d0
	jeq .L922
	tst.b 273(%a2)
	jne .L922
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L922:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L917:
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L936
	move.w raptor_ticks,%d0
	cmp.w #95,288(%a2)
	jgt .L937
.L924:
	move.w 286(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jle .L926
	tst.b 177(%a2)
	jeq .L938
.L925:
	move.w 268(%a2),%d1
	move.w %d1,%d2
	lsl.w #5,%d2
	add.w %d2,252(%a2)
	cmp.w #1,%d1
	jeq .L939
	cmp.w #-1,%d1
	jeq .L940
.L931:
	move.w #3,%a0
	move.w %d0,286(%a2)
.L941:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL20cageShadowKickFrames
	move.l 438(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L916
.L937:
	move.w 286(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jgt .L925
.L926:
	move.w #3,%a0
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL20cageShadowKickFrames
	move.l 438(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L916
.L936:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w raptor_ticks,%d0
	cmp.w #95,288(%a2)
	jle .L924
	jra .L937
.L940:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jle .L931
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,290(%a2)
	move.w #4,%a0
.L942:
	move.w %d0,286(%a2)
	jra .L941
.L938:
	move.w 268(%a2),%d0
	ext.l %d0
	lsl.l #4,%d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	add.w #16,288(%a2)
	move.w raptor_ticks,286(%a2)
	move.w 290(%a2),%a0
	addq.l #8,%sp
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a1
	move.l %a1,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 510(%a2),-(%sp)
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL20cageShadowKickFrames
	move.l 438(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L916
.L939:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jge .L931
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,290(%a2)
	move.w #4,%a0
	jra .L942
	.even
	.globl	__Z25StateCageShadowKick_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateCageShadowKick_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,177(%a0)
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24StateCageNutPunch_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z24StateCageNutPunch_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w 96(%a2),%d0
	jeq .L948
	cmp.w #6,%d0
	jeq .L948
	move.l 430(%a2),-(%sp)
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
	jne .L963
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 610(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L947:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L948:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 610(%a2),-(%sp)
	move.w 286(%a2),%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,%d0
	move.w 240(%a2),%a1
	addq.l #3,%a1
	move.w %d0,%a0
	lea (40,%sp),%sp
	cmp.l %a1,%a0
	jle .L947
	move.w 288(%a2),%d2
	move.w 286(%a2),%d1
	tst.w %d2
	jne .L951
	addq.w #1,%d1
	move.w %d1,286(%a2)
	cmp.w #4,%d1
	jne .L952
	move.w #3,286(%a2)
	move.w #1,288(%a2)
.L953:
	move.w %d0,240(%a2)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L951:
	subq.w #1,%d1
	move.w %d1,286(%a2)
.L952:
	tst.w %d1
	jne .L953
	cmp.w #1,%d2
	jne .L953
.L963:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L947
	cmp.w #43,%d0
	jeq .L956
	tst.b 273(%a2)
	jne .L956
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L956:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
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
	clr.b 302(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,240(%a2)
	move.w %d0,286(%a2)
	clr.w 288(%a2)
	move.l 264(%a2),(%sp)
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
	move.w 286(%a2),%a1
	move.w raptor_ticks,%a0
	lea (9,%a1),%a3
	cmp.l %a3,%a0
	jle .L970
	tst.w 288(%a2)
	jeq .L975
.L970:
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jgt .L976
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 2.w
	move.l 622(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L969:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L976:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L969
	cmp.w #43,%d0
	jeq .L973
	tst.b 273(%a2)
	jne .L973
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L973:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L975:
	move.w #1,288(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	move.w 286(%a2),%a1
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	jra .L970
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
	clr.b 302(%a0)
	clr.b 176(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	move.w %d0,286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w 286(%a2),%a1
	lea (179,%a1),%a1
	move.w raptor_ticks,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L982
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L992
	and.l JAGPAD_8,%d0
	jne .L992
.L982:
	move.w 288(%a2),%d0
	jeq .L994
	cmp.w #1,%d0
	jeq .L995
.L985:
	tst.b 176(%a2)
	jeq .L987
.L986:
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	move.w 290(%a2),%d0
	cmp.l %a1,%a0
	jle .L989
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.w %d1,240(%a2)
.L989:
	cmp.w #19,%d0
	jgt .L996
.L987:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 602(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L981:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L995:
	tst.b 176(%a2)
	jne .L986
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	tst.b 176(%a2)
	jne .L986
	jra .L987
.L992:
	move.w 288(%a2),%d0
	cmp.w #1,%d0
	jne .L985
	jra .L995
.L994:
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z17sfxKanoCannonBallP12SoundHandler
	move.w 288(%a2),%d0
	addq.l #4,%sp
	cmp.w #1,%d0
	jne .L985
	jra .L995
.L996:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L981
	cmp.w #43,%d0
	jeq .L991
	tst.b 273(%a2)
	jne .L991
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L991:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	move.b #1,176(%a0)
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
	clr.b 302(%a0)
	clr.b 176(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 398(%a2),-(%sp)
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
	jeq .L1016
	tst.w 286(%a2)
	jne .L1016
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 290(%a2),%d0
	add.w #12,%d0
	move.w %d0,290(%a2)
	addq.l #8,%sp
	cmp.w #199,%d0
	jle .L1018
.L1005:
	tst.w 286(%a2)
	jne .L1008
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L1008:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1010
.L1022:
	move.w 288(%a2),%d0
	cmp.w #19,%d0
	jgt .L1012
.L1023:
	move.w 286(%a2),%d0
.L1009:
	tst.w %d0
	jne .L1015
	tst.b 176(%a2)
	jeq .L1019
.L1015:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 7.w
	move.l 606(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1001:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1016:
	move.w 290(%a2),%d0
	cmp.w #199,%d0
	jgt .L1005
.L1018:
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1020
	cmp.w #-1,%d0
	jeq .L1021
.L1007:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1009
.L1024:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1022
.L1010:
	move.w 268(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w raptor_ticks,240(%a2)
	addq.l #8,%sp
	cmp.w #19,%d0
	jle .L1023
.L1012:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1001
	cmp.w #43,%d0
	jeq .L1014
	tst.b 273(%a2)
	jne .L1014
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1014:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1019:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 602(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1020:
	pea 64.w
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jne .L1005
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L1007
.L1021:
	pea 64.w
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jne .L1005
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1009
	jra .L1024
	.even
	.globl	__Z24StateRaidenTorpedo_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z24StateRaidenTorpedo_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.w #1,286(%a0)
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
	clr.b 302(%a2)
	clr.b 176(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,240(%a2)
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
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1035
	cmp.w #-1,%d0
	jeq .L1036
.L1033:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1035:
	clr.l -(%sp)
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jeq .L1031
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L1033
.L1036:
	clr.l -(%sp)
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jeq .L1031
	move.w 268(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l 16(%fp),-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1031:
	move.w 268(%a2),%d0
	muls.w #-12,%d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 268(%a2),%d0
	addq.l #8,%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
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
	move.b #1,176(%a0)
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
	clr.b 302(%a0)
	clr.b 176(%a0)
	move.w 86(%a0),%d0
	subq.w #1,%d0
	move.w %d0,14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	clr.w 286(%a0)
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z17sfxRaidenTeleportP12SoundHandler
	.even
	.globl	__Z26StateRaidenTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z26StateRaidenTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l 20(%fp),%a5
	tst.w 14(%a3)
	jne .L1042
	tst.w 286(%a2)
	jne .L1042
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1056
	cmp.w #-1,%d0
	jeq .L1057
	move.w #1,286(%a2)
.L1047:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
.L1054:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 610(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1041:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1042:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1048
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jeq .L1058
	tst.w %d0
	jne .L1052
.L1059:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 610(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1041
.L1048:
	move.w 286(%a2),%d0
	jeq .L1059
.L1052:
	move.w 268(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	jra .L1054
.L1058:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1041
	cmp.w #43,%d0
	jeq .L1051
	tst.b 273(%a2)
	jne .L1051
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1051:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1057:
	clr.l -(%sp)
	move.l %a5,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	move.w 254(%a5),%a5
	tst.b %d0
	jeq .L1060
	lea (68,%a5),%a5
	move.w %a5,254(%a2)
	move.w 268(%a2),%d0
	move.w #1,286(%a2)
	jra .L1047
.L1056:
	clr.l -(%sp)
	move.l %a5,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	move.w 254(%a5),%a5
	tst.b %d0
	jeq .L1061
	lea (-68,%a5),%a5
	move.w %a5,254(%a2)
	move.w 268(%a2),%d0
	move.w #1,286(%a2)
	jra .L1047
.L1061:
	lea (68,%a5),%a5
	move.w %a5,254(%a2)
	neg.w 268(%a2)
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
	move.w 268(%a2),%d0
	addq.l #4,%sp
.L1062:
	move.w #1,286(%a2)
	jra .L1047
.L1060:
	lea (-68,%a5),%a5
	move.w %a5,254(%a2)
	neg.w 268(%a2)
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
	move.w 268(%a2),%d0
	addq.l #4,%sp
	jra .L1062
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
	clr.b 302(%a0)
	clr.b 176(%a0)
	clr.w 286(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w raptor_ticks,%d0
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d0,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1068
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L1076
.L1072:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 3.w
	move.l 526(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1067:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1068:
	tst.b 176(%a2)
	jeq .L1077
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1078
.L1071:
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L1079:
	cmp.w #19,%d1
	jle .L1072
.L1076:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1067
	cmp.w #43,%d0
	jeq .L1074
	tst.b 273(%a2)
	jne .L1074
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1074:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1078:
	moveq #-4,%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
	jra .L1079
.L1077:
	move.w 268(%a2),%a0
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
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jge .L1071
	jra .L1078
	.even
	.globl	__Z25StateKangFlyingKick_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z25StateKangFlyingKick_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,176(%a0)
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
	clr.b 302(%a2)
	clr.b 129(%a2)
	clr.b 177(%a2)
	clr.w 130(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,12(%a0)
	clr.w 286(%a2)
	clr.w 288(%a2)
	move.w #1,290(%a2)
	move.w 254(%a2),%d0
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	jeq .L1091
	clr.w %d2
.L1084:
	add.w %d0,%d2
	move.w %d2,252(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.l %d0,4(%a3)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	tst.b 272(%a2)
	jne .L1092
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975568,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,240(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1092:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975568,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,240(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1091:
	moveq #48,%d2
	jra .L1084
	.even
	.globl	__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 177(%a2)
	jeq .L1122
	tst.b 129(%a2)
	jeq .L1094
	tst.w 288(%a2)
	jeq .L1104
	move.w #1,288(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L1104:
	cmp.w #-1,290(%a2)
	jeq .L1123
	tst.b 272(%a2)
	jeq .L1111
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8493168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1107:
	neg.w 290(%a2)
	move.w 130(%a2),%d0
	addq.w #1,%d0
	move.w %d0,130(%a2)
	cmp.w #8,%d0
	jle .L1094
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
.L1118:
	moveq #-1,%d0
	move.l %d0,112(%a0)
	move.l %d0,4(%a0)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1094
	cmp.w #43,%d0
	jeq .L1109
	tst.b 273(%a2)
	jne .L1109
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1109:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1096:
	move.w 268(%a2),%d1
.L1101:
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 19.w
	move.l 614(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1094:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1122:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1096
	tst.w 286(%a2)
	jne .L1124
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1125
.L1098:
	move.w 268(%a2),%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	add.w %d0,%d0
	add.w %d0,252(%a2)
	cmp.w #1,%d1
	jeq .L1126
.L1099:
	cmp.w #-1,%d1
	jne .L1101
	tst.w 248(%a2)
	jlt .L1118
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 19.w
	move.l 614(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1094
.L1111:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8493168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1107
.L1124:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	addq.l #4,%sp
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L1098
.L1125:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w 268(%a2),%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	add.w %d0,%d0
	add.w %d0,252(%a2)
	cmp.w #1,%d1
	jne .L1099
.L1126:
	cmp.w #320,248(%a2)
	jgt .L1118
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 19.w
	move.l 614(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1094
.L1123:
	tst.b 272(%a2)
	jeq .L1110
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975568,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1107
.L1110:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975568,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1107
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
	clr.b 302(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,240(%a2)
	move.w 260(%a2),%a0
	move.l %a0,(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #8,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z15fighterPlayYelliP12SoundHandlerb
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
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
	tst.w 286(%a2)
	jne .L1132
	move.w #1,286(%a2)
	move.w 268(%a2),%d1
	move.w 254(%a3),%d3
	cmp.w #-1,%d1
	jeq .L1156
	move.w %d3,%d0
	add.w #48,%d0
	sub.w 254(%a2),%d0
	move.w %d0,108(%a2)
	cmp.w #149,%d0
	jle .L1157
.L1135:
	clr.w 108(%a2)
	cmp.w #-1,%d1
	jeq .L1158
.L1137:
	add.w #-48,%d3
	move.w %d3,110(%a2)
	move.w raptor_ticks,240(%a2)
	move.l 92(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1132:
	tst.w 108(%a2)
	jle .L1139
	tst.b 132(%a2)
	jeq .L1139
	tst.w 290(%a2)
	jne .L1139
	move.l 134(%a2),%d0
	move.w 254(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1159
	jgt .L1160
.L1141:
	move.w raptor_ticks,288(%a2)
.L1142:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %d2,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1131:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1139:
	move.w 288(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1142
	tst.w 290(%a2)
	jeq .L1161
.L1143:
	tst.b 132(%a2)
	jeq .L1142
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1142
	move.l 134(%a2),%d0
	move.w 254(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1162
	jgt .L1163
	move.w raptor_ticks,240(%a2)
.L1165:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %d2,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	jra .L1131
.L1156:
	move.w 254(%a2),%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,108(%a2)
	cmp.w #149,%d0
	jgt .L1135
.L1157:
	move.w #150,%a0
	sub.w %d0,%a0
	move.w %a0,%d0
	move.w %a0,108(%a2)
	move.w 254(%a2),%a0
	muls.w %d1,%d0
	sub.l %d0,%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	move.w 268(%a2),%d1
	move.w 254(%a3),%d3
	addq.l #8,%sp
	cmp.w #-1,%d1
	jne .L1137
.L1158:
	add.w #48,%d3
	move.w %d3,110(%a2)
	move.w raptor_ticks,240(%a2)
	move.l 92(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	jra .L1132
.L1161:
	move.w #1,290(%a2)
	move.w 110(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	addq.l #8,%sp
	jra .L1143
.L1159:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jlt .L1141
	clr.b 132(%a2)
.L1164:
	move.w raptor_ticks,288(%a2)
	jra .L1142
.L1160:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jgt .L1141
	clr.b 132(%a2)
	jra .L1164
.L1163:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jgt .L1145
.L1148:
	clr.b 132(%a2)
.L1152:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #55,%d0
	jeq .L1131
	cmp.w #43,%d0
	jeq .L1151
	tst.b 273(%a2)
	jne .L1151
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1151:
	move.l 220(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1162:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jge .L1148
.L1145:
	move.b 132(%a2),%d0
	jeq .L1152
	move.w raptor_ticks,240(%a2)
	jra .L1165
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	move.w %d0,290(%a0)
	move.w #1,122(%a0)
	move.w #32,118(%a0)
	move.l 438(%a0),%a1
	clr.w 14(%a1)
	move.l 92(%a0),%d0
	move.l %d0,(%a1)
	move.l #12838736,8(%a1)
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.l #12838736,44(%a1)
	moveq #104,%d0
	move.l %d0,144(%a1)
	moveq #16,%d1
	move.l %d1,40(%a1)
	move.l %d1,36(%a1)
	moveq #-1,%d0
	move.l %d0,4(%a1)
	move.b #1,%d1
	move.l %d1,84(%a1)
	tst.b 272(%a0)
	jne .L1173
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975568,8(%fp)
	unlk %fp
	jra jsfLoadClut
.L1173:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975568,8(%fp)
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
	move.w 290(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jle .L1176
	move.w %d1,290(%a2)
.L1176:
	move.w 288(%a2),%d0
	cmp.w #7,%d0
	jgt .L1177
	move.w 240(%a2),%a1
	addq.l #1,%a1
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.l %a0,%a1
	jlt .L1191
.L1178:
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	jeq .L1192
.L1183:
	move.w 244(%a2),%d2
	move.w %d2,%d0
	add.w #48,%d0
	sub.w 244(%a4),%d0
	move.w %d0,120(%a2)
	add.w #32,%d2
	move.w %d2,116(%a2)
	tst.w %d0
	jlt .L1193
.L1185:
	move.l 92(%a2),%a0
	move.l %a0,%d2
	add.l %a0,%d2
	add.l %a0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w %d0,%a1
	cmp.w #1,%d1
	jeq .L1194
.L1187:
	moveq #50,%d0
	add.l %d0,%a1
	move.l %a1,88(%a0)
	moveq #32,%d0
	move.l %d0,92(%a0)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 118(%a2),%d0
	add.w 246(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 116(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	move.l 618(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	lea (32,%sp),%sp
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1195
.L1175:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1177:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.w #8,%d0
	jne .L1178
	tst.w 286(%a2)
	jeq .L1196
	move.l 298(%a4),%a0
	cmp.w #55,(%a0)
	jeq .L1197
.L1180:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 598(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	jne .L1183
.L1192:
	move.w 244(%a2),%a0
	move.w 244(%a4),%d0
	add.w #48,%d0
	sub.w %a0,%d0
	move.w %d0,120(%a2)
	lea (-80,%a0),%a0
	move.w %d0,%d2
	moveq #15,%d3
	lsr.w %d3,%d2
	add.w %d0,%d2
	asr.w #1,%d2
	add.w %d2,%a0
	move.w %d0,%a1
	lea (-64,%a1),%a1
	move.l %a1,%d2
	jpl .L1199
	addq.l #1,%d2
.L1199:
	asr.l #1,%d2
	sub.w %d2,%a0
	move.w %a0,116(%a2)
	tst.w %d0
	jge .L1185
	jra .L1193
.L1195:
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1193:
	neg.w %d0
	move.w %d0,120(%a2)
	move.l 92(%a2),%a0
	move.l %a0,%d2
	add.l %a0,%d2
	add.l %a0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w %d0,%a1
	cmp.w #1,%d1
	jne .L1187
.L1194:
	moveq #48,%d0
	add.l %d0,%a1
	move.l %a1,88(%a0)
	moveq #32,%d0
	move.l %d0,92(%a0)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 118(%a2),%d0
	add.w 246(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 116(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	move.l 618(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	lea (32,%sp),%sp
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L1175
	jra .L1195
.L1191:
	move.w 122(%a2),%d2
	move.w %d2,%d3
	add.w %d2,%d3
	add.w %d3,118(%a2)
	neg.w %d2
	move.w %d2,122(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w %d1,240(%a2)
	jra .L1178
.L1196:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z22sfxScorpionGetOverHereP12SoundHandler
	addq.l #4,%sp
	move.l 298(%a4),%a0
	cmp.w #55,(%a0)
	jne .L1180
.L1197:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1175
	cmp.w #43,%d0
	jeq .L1182
	tst.b 273(%a2)
	jne .L1182
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1182:
	move.l (%a5),%a0
	move.l %a0,298(%a2)
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,286(%a0)
	move.w %d0,240(%a0)
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
	move.w 286(%a0),%a2
	lea (119,%a2),%a2
	move.w raptor_ticks,%a1
	cmp.l %a2,%a1
	jgt .L1208
	move.w 268(%a0),%a1
	move.l %a1,-(%sp)
	move.w 246(%a0),%a1
	move.l %a1,-(%sp)
	move.w 244(%a0),%a1
	move.l %a1,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a0),%a1
	move.l %a1,-(%sp)
	move.l 446(%a0),-(%sp)
	move.l %d0,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1203:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1208:
	move.l 298(%a0),%a1
	move.w (%a1),%d1
	jeq .L1203
	cmp.w #43,%d1
	jeq .L1206
	tst.b 273(%a0)
	jne .L1206
	move.l 92(%a0),%d1
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%d1
	lsl.l #6,%d1
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d1.l)
.L1206:
	move.l (%a3),%a1
	move.l %a1,298(%a0)
	move.l %d0,16(%fp)
	move.l %a0,12(%fp)
	move.l %a3,8(%fp)
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	clr.w 286(%a2)
	clr.w 288(%a2)
	move.w %d0,240(%a2)
	move.l sprite,%a0
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a1
	move.w 268(%a2),%d2
	cmp.w #1,%d2
	jeq .L1219
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
.L1215:
	move.l %d1,24(%a3)
	neg.w %d2
	move.w %d2,268(%a2)
	lsl.w #4,%d2
	move.w 254(%a2),%d1
	sub.w %d2,%d1
	move.w %d1,%d2
	move.w %d1,252(%a2)
	move.w 246(%a2),250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	move.b #1,%d3
	move.l %d3,4(%a0)
	tst.b 272(%a2)
	jne .L1220
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976000,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1220:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976000,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1219:
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
	jra .L1215
	.even
	.globl	__Z28StateScorpionTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z28StateScorpionTeleport_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	move.l 20(%fp),%a3
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (12,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1223
	move.w 286(%a2),%d0
.L1224:
	cmp.w #14,%d0
	jgt .L1239
.L1229:
	tst.w 288(%a2)
	jne .L1237
.L1232:
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
	cmp.w #-1,%d0
	jeq .L1240
	cmp.w #1,%d0
	jeq .L1235
.L1233:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL22scorpionTeleportFrames
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1222:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1223:
	tst.b 176(%a2)
	jeq .L1241
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1242
.L1226:
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #6,%d0
	jeq .L1227
.L1243:
	cmp.w #10,%d0
	jeq .L1227
	cmp.w #8,%d0
	jne .L1224
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.w 288(%a2)
	jeq .L1232
	jra .L1237
.L1235:
	cmp.w #309,%d1
	jle .L1233
	jsr __Z10cameraGetXv
	add.w #-37,%d0
	move.w %d0,254(%a2)
	move.b #1,140(%a3)
	move.w #1,288(%a2)
.L1237:
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 48(%a2),%a0
	move.l %a0,-(%sp)
	move.l 518(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL22scorpionTeleportFrames
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1222
.L1242:
	moveq #-4,%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #6,%d0
	jne .L1243
	jra .L1227
.L1239:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1222
	cmp.w #43,%d0
	jeq .L1231
	tst.b 273(%a2)
	jne .L1231
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d0.l)
.L1231:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1227:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d1.l)
	cmp.w #14,%d0
	jle .L1229
	jra .L1239
.L1241:
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%d1
	addq.l #8,%sp
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jge .L1226
	jra .L1242
.L1240:
	cmp.w #10,%d1
	jgt .L1233
	jsr __Z10cameraGetXv
	add.w #357,%d0
	move.w %d0,254(%a2)
	move.b #1,140(%a3)
	move.w #1,288(%a2)
	jra .L1237
	.even
	.globl	__Z27StateScorpionTeleport_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z27StateScorpionTeleport_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,176(%a0)
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
	clr.b 302(%a2)
	clr.w 286(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d1
	move.w %d1,12(%a0)
	clr.b 177(%a2)
	move.w 254(%a2),252(%a2)
	move.w 246(%a2),250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.w %d1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838736,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	moveq #16,%d1
	move.l %d1,40(%a0)
	move.l %d1,36(%a0)
	tst.b 272(%a2)
	jne .L1251
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975520,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z16sfxSubzeroFreezeP12SoundHandler
	move.w raptor_ticks,240(%a2)
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
.L1251:
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975520,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z16sfxSubzeroFreezeP12SoundHandler
	move.w raptor_ticks,240(%a2)
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
	.globl	__Z25StateSubzeroFreeze_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z25StateSubzeroFreeze_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 177(%a2)
	jeq .L1264
	tst.w 286(%a2)
	jne .L1260
	move.w #1,286(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L1260:
	pea 5.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1265
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 5.w
	move.l 618(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1253:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1265:
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
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1253
	cmp.w #43,%d0
	jeq .L1262
	tst.b 273(%a2)
	jne .L1262
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1262:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1264:
	pea 9.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1255
	move.w 268(%a2),%d0
	move.w %d0,%d3
	add.w %d0,%d3
	move.w %d3,%d1
	lsl.w #3,%d1
	sub.w %d3,%d1
	add.w %d1,252(%a2)
	cmp.w #1,%d0
	jeq .L1266
	cmp.w #-1,%d0
	jeq .L1267
.L1258:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 10.w
	move.l 614(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	lea (32,%sp),%sp
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L1253
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1266:
	cmp.w #320,248(%a2)
	jle .L1258
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
	move.l 298(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jeq .L1253
.L1268:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1267:
	tst.w 248(%a2)
	jge .L1258
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
	move.l 298(%a2),%a0
	addq.l #4,%sp
	tst.w (%a0)
	jne .L1268
	jra .L1253
.L1255:
	move.w 268(%a2),%d0
	jra .L1258
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
	clr.w 286(%a2)
	move.w #1,288(%a2)
	clr.w 290(%a2)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	move.b #1,148(%a2)
	clr.b 174(%a2)
	move.w %d0,%a0
	move.l %a0,158(%a2)
	move.b #1,107(%a2)
	tst.b 272(%a2)
	jne .L1276
	pea 16.w
	pea 15.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandler
	addq.l #4,%sp
	move.w 260(%a2),%a0
	move.l %a0,12(%fp)
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17fighterTakeDamageP7Fighteri
.L1276:
	pea 16.w
	pea 14.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),-(%sp)
	jsr __Z19sfxSubzeroFreezeEndP12SoundHandler
	addq.l #4,%sp
	move.w 260(%a2),%a0
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
	tst.w 286(%a2)
	jne .L1280
	move.l 158(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L1286
	move.w 288(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,254(%a2)
	neg.w %d0
	move.w %d0,288(%a2)
	move.w 290(%a2),%d0
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.l %a0,158(%a2)
.L1282:
	cmp.w #5,%d0
	jle .L1280
	move.w #1,286(%a2)
.L1280:
	move.w 240(%a2),%a1
	lea (180,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1287
.L1283:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.l 18(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1287:
	move.l %a2,-(%sp)
	jsr __Z15fighterUnfreezeP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1283
	cmp.w #43,%d0
	jeq .L1284
	tst.b 273(%a2)
	jne .L1284
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1284:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.l 18(%a3),-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1286:
	move.w 290(%a2),%d0
	jra .L1282
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
	clr.b 138(%a0)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
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
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (40,%sp),%sp
	move.w 246(%a2),%d0
	cmp.l %a1,%a0
	jle .L1294
	add.w #12,%d0
	move.w %d0,246(%a2)
	move.w %d1,240(%a2)
.L1294:
	cmp.w #89,%d0
	jgt .L1298
.L1292:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1298:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1292
	cmp.w #43,%d0
	jeq .L1296
	tst.b 273(%a2)
	jne .L1296
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1296:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
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
	clr.b 302(%a0)
	clr.b 176(%a0)
	clr.w 286(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (12,%sp),%sp
	move.b 176(%a2),%d0
	cmp.l %a1,%a0
	jle .L1305
	tst.b %d0
	jeq .L1312
	add.w #14,286(%a2)
	move.w %d1,240(%a2)
.L1305:
	tst.b %d0
	jne .L1307
	cmp.w #269,286(%a2)
	jle .L1308
.L1307:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1303
	cmp.w #43,%d0
	jeq .L1310
	tst.b 273(%a2)
	jne .L1310
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1310:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1308:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 2.w
	move.l 602(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1303:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1312:
	move.w 268(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w raptor_ticks,%d1
	move.b 176(%a2),%d0
	addq.l #8,%sp
	add.w #14,286(%a2)
	move.w %d1,240(%a2)
	jra .L1305
	.even
	.globl	__Z23StateSubzeroSlide_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateSubzeroSlide_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,176(%a0)
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
	clr.b 302(%a0)
	clr.b 176(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
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
	tst.w 286(%a2)
	jne .L1318
	cmp.w #2,14(%a3)
	jeq .L1326
.L1318:
	tst.w 288(%a2)
	jeq .L1327
	tst.w 14(%a3)
	jeq .L1328
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	clr.l -(%sp)
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 602(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1317:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1328:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1317
	cmp.w #43,%d0
	jeq .L1323
	tst.b 273(%a2)
	jne .L1323
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1323:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1327:
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1320
	move.w #1,288(%a2)
.L1320:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 602(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1317
.L1326:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1318
	.even
	.globl	__Z23StateSonyaLegGrab_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z23StateSonyaLegGrab_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,176(%a0)
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
	clr.b 302(%a2)
	clr.w 286(%a2)
	move.w #6,288(%a2)
	clr.w 290(%a2)
	move.w %d0,240(%a2)
	move.b #1,138(%a2)
	move.w 268(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,%d0
	jeq .L1336
	cmp.w #1,%d0
	jeq .L1337
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,16(%fp)
	move.l 264(%a2),12(%fp)
	move.w (%a2),%a2
	move.l %a2,8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z15fighterPlayYelliP12SoundHandlerb
.L1337:
	move.l 650(%a2),%a0
	move.w 244(%a0),%a0
	lea (-112,%a0),%a0
	move.w %a0,244(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,16(%fp)
	move.l 264(%a2),12(%fp)
	move.w (%a2),%a2
	move.l %a2,8(%fp)
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra __Z15fighterPlayYelliP12SoundHandlerb
.L1336:
	move.l 650(%a2),%a0
	move.w 244(%a0),%a0
	lea (112,%a0),%a0
	move.w %a0,244(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,16(%fp)
	move.l 264(%a2),12(%fp)
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
	tst.w 286(%a2)
	jne .L1340
	move.w 240(%a2),%a1
	lea (29,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1341
	move.w #1,286(%a2)
.L1341:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.l 546(%a2),-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1339:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1340:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1339
	tst.w 290(%a2)
	jne .L1343
	move.w 288(%a2),%d0
	move.w 268(%a2),%a1
	cmp.w #21,%d0
	jle .L1353
	cmp.w #22,%d0
	jeq .L1354
	cmp.w #23,%d0
	jeq .L1355
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 5.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jeq .L1356
.L1348:
	move.w raptor_ticks,240(%a2)
.L1358:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1343:
	cmp.w #23,288(%a2)
	jle .L1357
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 5.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	pea (%a1,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1348
.L1359:
	move.w 260(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	cmp.w #32,%d0
	jeq .L1348
	cmp.w #43,%d0
	jeq .L1351
	tst.b 273(%a2)
	jne .L1351
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1351:
	move.l 8(%fp),%a1
	move.l 128(%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w raptor_ticks,240(%a2)
	jra .L1358
.L1356:
	move.w 260(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z17fighterTakeDamageP7Fighteri
	addq.l #4,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.w #1,290(%a2)
	move.w #10,288(%a2)
	addq.l #4,%sp
	move.w raptor_ticks,240(%a2)
	jra .L1358
.L1353:
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 2.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1348
	jra .L1356
.L1357:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 4.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	pea (%a1,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1348
	jra .L1359
.L1354:
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 3.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1348
	jra .L1356
.L1355:
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 586(%a2),-(%sp)
	pea 4.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	add.l %a1,%a1
	lea (%a1,%a0.l),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	addq.l #8,%sp
	cmp.w #25,%d0
	jne .L1348
	jra .L1356
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
	clr.b 302(%a0)
	clr.b 176(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	move.w raptor_ticks,240(%a0)
	moveq #0,%d0
	move.b 272(%a0),%d0
	move.l %d0,16(%fp)
	move.l 264(%a0),12(%fp)
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
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1364
	move.w 288(%a2),%d0
	jeq .L1380
	cmp.w #1,%d0
	jeq .L1381
	move.w 286(%a2),%d0
	cmp.w #18,%d0
	jeq .L1382
	cmp.w #19,%d0
	jeq .L1383
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	tst.b 176(%a2)
	jne .L1384
.L1377:
	addq.w #1,%d0
	move.w %d0,286(%a2)
	cmp.w #19,%d0
	jle .L1370
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1370
	cmp.w #43,%d0
	jeq .L1378
	tst.b 273(%a2)
	jne .L1378
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1378:
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1370:
	move.w raptor_ticks,240(%a2)
.L1364:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1380:
	cmp.w #1,286(%a2)
	jls .L1385
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 286(%a2),%d0
	cmp.w #7,%d0
	jeq .L1386
.L1369:
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
.L1387:
	move.w raptor_ticks,240(%a2)
	jra .L1364
.L1384:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	addq.l #8,%sp
	jra .L1377
.L1383:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 3.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	tst.b 176(%a2)
	jeq .L1377
	jra .L1384
.L1385:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	clr.l -(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 286(%a2),%d0
	cmp.w #7,%d0
	jne .L1369
.L1386:
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z15sfxSubzeroSlideP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	jra .L1387
.L1381:
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	cmp.w #230,290(%a2)
	jgt .L1372
	tst.b 176(%a2)
	jeq .L1388
.L1372:
	move.w #2,288(%a2)
	move.w #10,286(%a2)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
.L1389:
	move.w raptor_ticks,240(%a2)
	jra .L1364
.L1388:
	move.w 268(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	move.l %d0,%d1
	lsl.l #3,%d1
	sub.l %d0,%d1
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	add.w #14,290(%a2)
	addq.l #8,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 518(%a2),-(%sp)
	pea 1.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	jra .L1389
.L1382:
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 466(%a2),-(%sp)
	pea 2.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	tst.b 176(%a2)
	jeq .L1377
	jra .L1384
	.even
	.globl	__Z28StateSonyaSquareFlight_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z28StateSonyaSquareFlight_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,176(%a0)
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
	clr.b 302(%a0)
	clr.w 286(%a0)
	move.w raptor_ticks,240(%a0)
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
	move.w 286(%a2),%d0
	jeq .L1405
	cmp.w #1,%d0
	jeq .L1402
.L1407:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
.L1394:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1405:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1406
	move.w #1,286(%a2)
	move.l 650(%a2),%a0
	move.w 268(%a0),%d0
	lsl.w #4,%d0
	add.w 254(%a0),%d0
	move.w %d0,252(%a2)
	move.w 246(%a2),%d0
	add.w #-32,%d0
	move.w %d0,250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.w raptor_ticks,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838736,44(%a0)
	moveq #104,%d1
	move.l %d1,144(%a0)
	moveq #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	tst.b 272(%a2)
	jeq .L1403
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975616,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
.L1410:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1394
.L1406:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1407
.L1402:
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1408
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1409
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 614(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
.L1411:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l 594(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1394
.L1403:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975616,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jra .L1410
.L1409:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 614(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	lea (32,%sp),%sp
	jra .L1411
.L1408:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 298(%a2),%a0
	tst.w (%a0)
	jeq .L1394
	move.l (%a3),%a0
	move.l %a0,298(%a2)
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
	clr.b 302(%a0)
	clr.b 176(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	clr.w 286(%a0)
	clr.w 288(%a0)
	move.w %d0,240(%a0)
	add.w #64,246(%a0)
	move.l 264(%a0),8(%fp)
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
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	tst.w 286(%a2)
	jne .L1417
	tst.b 176(%a2)
	jeq .L1437
.L1418:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1425
	move.w 288(%a2),%d0
.L1426:
	cmp.w #19,%d0
	jgt .L1427
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
.L1421:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 602(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1416:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1417:
	tst.b 176(%a2)
	jne .L1418
.L1427:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1416
	cmp.w #43,%d0
	jeq .L1428
	tst.b 273(%a2)
	jne .L1428
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1428:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1437:
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 268(%a2),%d0
	addq.l #8,%sp
	move.w 244(%a2),%d1
	cmp.w #-1,%d0
	jeq .L1438
	cmp.w #1,%d0
	jne .L1421
	cmp.w #261,%d1
	jle .L1421
	move.w #1,286(%a2)
.L1439:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l 602(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1416
.L1425:
	move.w 268(%a2),%a0
	move.l %a0,%d0
	add.l %a0,%d0
	add.l %a0,%d0
	neg.l %d0
	move.l %d0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 288(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w raptor_ticks,240(%a2)
	addq.l #8,%sp
	jra .L1426
.L1438:
	cmp.w #10,%d1
	jgt .L1421
	move.w #1,286(%a2)
	jra .L1439
	.even
	.globl	__Z21StateKasumiRoll_SleepP12StateMachineP7FighterP14SpriteAnimator
__Z21StateKasumiRoll_SleepP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b #1,176(%a0)
	move.w raptor_ticks,240(%a0)
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	cmp.w #1,288(%a0)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,4(%a1)
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
	tst.w 286(%a2)
	jeq .L1451
	cmp.w #1,288(%a2)
	jeq .L1452
.L1446:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1452:
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
.L1451:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1453
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1454:
	cmp.w #1,288(%a2)
	jne .L1446
	jra .L1452
.L1453:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w #1,286(%a2)
	addq.l #4,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1454
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	clr.w 286(%a2)
	move.b #1,98(%a2)
	clr.b 174(%a2)
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	cmp.w #123,290(%a2)
	jeq .L1458
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1458:
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
	cmp.w #1,292(%a2)
	jeq .L1462
	tst.w 286(%a2)
	jne .L1464
	cmp.w #1,14(%a3)
	jeq .L1468
.L1464:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1462:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1468:
	move.w #1,286(%a2)
	move.w (%a2),%d0
	jne .L1469
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxCageYeahP12SoundHandler
	addq.l #4,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1462
.L1469:
	cmp.w #1,%d0
	jne .L1464
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxKanoYellP12SoundHandler
	addq.l #4,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 14(%a2),%a0
	move.l %a0,-(%sp)
	move.l 450(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1462
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
	movem.l #56,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.l %a2,-(%sp)
	jsr __Z19fighterFaceOpponentP7Fighter
	addq.l #4,%sp
	tst.b 146(%a2)
	jeq .L1474
	tst.b 144(%a2)
	jne .L1477
.L1474:
	clr.b 302(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,240(%a2)
	move.b #1,146(%a2)
	clr.b 147(%a2)
	clr.b 144(%a2)
	clr.w 286(%a2)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1477:
	clr.b 142(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1474
	cmp.w #43,%d0
	jeq .L1475
	tst.b 273(%a2)
	jne .L1475
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1475:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	clr.b 302(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,240(%a2)
	move.b #1,146(%a2)
	clr.b 147(%a2)
	clr.b 144(%a2)
	clr.w 286(%a2)
	movem.l -12(%fp),#7168
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
	tst.b 146(%a2)
	jeq .L1480
	tst.b 144(%a2)
	jne .L1484
.L1480:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	move.w 12(%a2),%a0
	move.l %a0,-(%sp)
	move.l 446(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1484:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1485
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1486:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1485:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w #1,286(%a2)
	addq.l #4,%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l 550(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	jra .L1486
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	move.b #1,273(%a0)
	clr.w 286(%a0)
	move.w %d0,288(%a0)
	clr.w 290(%a0)
	clr.w 292(%a0)
	move.b #1,306(%a0)
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
	tst.w 292(%a2)
	jne .L1492
	move.w raptor_ticks,%a0
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jle .L1491
	move.w 286(%a2),%d0
	jeq .L1501
	cmp.w #1,%d0
	jeq .L1502
.L1491:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1492:
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1491
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1491
	cmp.w #43,%d0
	jeq .L1499
	tst.b 273(%a2)
	jne .L1499
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1499:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1502:
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1491
	tst.w 290(%a2)
	jeq .L1503
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1497
.L1504:
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.w #1,292(%a2)
	move.w raptor_ticks,240(%a2)
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #70,%d0
	jeq .L1491
	cmp.w #43,%d0
	jeq .L1498
	tst.b 273(%a0)
	jne .L1498
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1498:
	move.l 280(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1501:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1495
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 14(%a4)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1497:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 634(%a2),-(%sp)
	move.l %a4,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1503:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
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
	jeq .L1497
	jra .L1504
.L1495:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	clr.w 286(%a2)
	move.w #4,288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z24fighterPlayFatalityGroaniP12SoundHandlerb
	addq.l #8,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	cmp.w #7,(%a2)
	jls .L1536
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1536:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1518(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1518:
	.word .L1510-.L1518
	.word .L1511-.L1518
	.word .L1512-.L1518
	.word .L1513-.L1518
	.word .L1514-.L1518
	.word .L1515-.L1518
	.word .L1516-.L1518
	.word .L1517-.L1518
.L1516:
	tst.b 272(%a2)
	jne .L1537
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976768,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1517:
	tst.b 272(%a2)
	jeq .L1534
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976816,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1510:
	tst.b 272(%a2)
	jne .L1538
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976480,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1511:
	tst.b 272(%a2)
	jne .L1539
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976528,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1512:
	tst.b 272(%a2)
	jne .L1540
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976576,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1513:
	tst.b 272(%a2)
	jne .L1541
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976624,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1514:
	tst.b 272(%a2)
	jne .L1542
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976720,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1515:
	tst.b 272(%a2)
	jne .L1543
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976672,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1534:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976816,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1537:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976768,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1543:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976672,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1542:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976720,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1541:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976624,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1540:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976576,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1539:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976528,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1538:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976480,8(%fp)
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
	cmp.w #1,292(%a2)
	jeq .L1563
.L1546:
	tst.w 14(%a3)
	jne .L1549
	tst.w 286(%a2)
	jne .L1549
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1549
	move.w #1,286(%a2)
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
.L1549:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 630(%a2),-(%sp)
	move.l %a3,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jle .L1564
	tst.w 290(%a2)
	jne .L1552
	addq.w #3,252(%a2)
	move.w 288(%a2),%d2
	move.w %d2,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w 250(%a2),%d0
	move.w %d0,250(%a2)
	addq.w #1,%d2
	move.w %d2,288(%a2)
	cmp.w #166,%d0
	jle .L1553
.L1554:
	move.w #158,250(%a2)
	jsr RAPTOR_random
	and.w #4,%d0
	add.w #182,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%d0
	addq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodPoolss
	addq.l #4,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.w #1,290(%a2)
	move.w #5,288(%a2)
	move.w raptor_ticks,%d1
	move.w 250(%a2),%d0
	addq.l #4,%sp
	moveq #5,%d2
	move.w %d1,240(%a2)
.L1551:
	move.w 268(%a2),%a0
	cmp.w #24,%d2
	jle .L1565
.L1558:
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.l 638(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	move.l 92(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1545:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1564:
	move.w 288(%a2),%d2
	move.w 250(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #24,%d2
	jgt .L1558
.L1565:
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 4.w
	move.l 638(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1552:
	addq.w #3,252(%a2)
	move.w 288(%a2),%d2
	move.w %d2,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d0
	add.w 250(%a2),%d0
	move.w %d0,250(%a2)
	addq.w #1,%d2
	move.w %d2,288(%a2)
	cmp.w #182,%d0
	jle .L1556
.L1557:
	move.w #182,250(%a2)
	jsr RAPTOR_random
	and.w #4,%d0
	add.w #182,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%d0
	addq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodPoolss
	addq.l #4,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.b #1,146(%a2)
	move.b #1,144(%a2)
	clr.b 142(%a2)
	move.w #1,292(%a2)
	move.w raptor_ticks,%d1
	move.w 288(%a2),%d2
	move.w 250(%a2),%d0
	addq.l #4,%sp
	move.w %d1,240(%a2)
	jra .L1551
.L1563:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1546
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1545
	cmp.w #43,%d0
	jeq .L1548
	tst.b 273(%a2)
	jne .L1548
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1548:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1556:
	cmp.w #182,%d0
	jeq .L1557
	move.w %d1,240(%a2)
	jra .L1551
.L1553:
	cmp.w #166,%d0
	jeq .L1554
	move.w %d1,240(%a2)
	jra .L1551
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	move.b #1,273(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	move.b #1,306(%a2)
	move.w 268(%a2),%d2
	add.w %d2,%d2
	add.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),%d0
	add.w #-12,%d0
	move.w %d0,250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	cmp.w #1,268(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 272(%a2)
	jne .L1575
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976864,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1575:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976864,8(%fp)
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
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1577
	move.w 14(%a3),%d1
	cmp.w #2,%d1
	jeq .L1595
	cmp.w #3,%d1
	jeq .L1582
.L1580:
	move.w 288(%a2),%d1
.L1583:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	cmp.w #1,%d1
	jeq .L1596
.L1584:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 634(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
.L1577:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1595:
	tst.w 286(%a2)
	jne .L1580
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #72,%d0
	jeq .L1577
	cmp.w #43,%d0
	jeq .L1581
	tst.b 273(%a0)
	jne .L1581
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1581:
	move.l 288(%a5),%a1
	move.l %a1,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a1),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1582:
	move.w 288(%a2),%d1
	jne .L1583
	move.w #1,288(%a2)
	move.l 650(%a2),%a0
	move.w #1,292(%a0)
	move.w %d0,290(%a2)
	clr.w 292(%a2)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 634(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
	jra .L1577
.L1596:
	pea 8.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1584
	move.w raptor_ticks,%d0
	move.w 290(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1586
	move.w %d0,290(%a2)
	addq.w #1,292(%a2)
	tst.w 294(%a2)
	jeq .L1597
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
.L1586:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL15kanoHeartFrames
	move.l 438(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	lea (32,%sp),%sp
	cmp.w #7,292(%a2)
	jle .L1584
	move.w #1,292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1577
	cmp.w #43,%d0
	jeq .L1590
	tst.b 273(%a2)
	jne .L1590
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1590:
	move.l 268(%a5),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1597:
	move.w #1,294(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxKanoHeartbeatP12SoundHandler
	move.w 246(%a2),%a0
	move.w 254(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,268(%a2)
	jeq .L1598
	clr.w %d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
.L1599:
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
	jra .L1586
.L1598:
	moveq #40,%d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
	jra .L1599
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
	clr.b 302(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,240(%a2)
	clr.w 286(%a2)
	move.w #1,288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z24fighterPlayFatalityGroaniP12SoundHandlerb
	move.w 268(%a2),%d0
	lea (12,%sp),%sp
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	lsl.w #5,%d0
	move.w 254(%a2),%d1
	sub.w %d0,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	move.w 268(%a2),%d0
	lea (12,%sp),%sp
	move.l 650(%a2),%a0
	move.w 254(%a0),%a0
	cmp.w #-1,%d0
	jeq .L1607
	lea (-72,%a0),%a0
	move.w %a0,254(%a2)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 446(%a2),-(%sp)
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
.L1607:
	lea (72,%a0),%a0
	move.w %a0,254(%a2)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 446(%a2),-(%sp)
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
	tst.w 286(%a2)
	jne .L1610
	move.w raptor_ticks,%d0
	move.w %d0,%a3
	move.w 240(%a2),%a1
	addq.l #2,%a1
	cmp.l %a3,%a1
	jlt .L1615
	cmp.w #5,290(%a2)
	jle .L1609
.L1616:
	move.w #1,286(%a2)
	clr.w 290(%a2)
	move.w raptor_ticks,240(%a2)
.L1609:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1610:
	cmp.w #1,292(%a2)
	jne .L1609
	tst.w 290(%a2)
	jne .L1609
	move.l 264(%a2),-(%sp)
	jsr __Z15sfxKanoHeartripP12SoundHandler
	move.w 268(%a2),%a0
	move.l %a0,(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodImpalesss
	clr.w 286(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	lea (12,%sp),%sp
	cmp.w #66,%d0
	jeq .L1609
	cmp.w #43,%d0
	jeq .L1613
	tst.b 273(%a2)
	jne .L1613
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1613:
	move.l 264(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1615:
	move.w 288(%a2),%d1
	move.w %d1,%d2
	add.w %d1,%d2
	add.w %d2,254(%a2)
	neg.w %d1
	move.w %d1,288(%a2)
	addq.w #1,290(%a2)
	move.w %d0,240(%a2)
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a1
	move.l %a1,-(%sp)
	pea 48.w
	move.l 8(%a0),-(%sp)
	move.l 4(%a0),-(%sp)
	move.l 446(%a2),-(%sp)
	move.w 14(%a0),%a1
	move.l %a1,-(%sp)
	move.l 2(%a2),-(%sp)
	move.l %a0,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
	cmp.w #5,290(%a2)
	jle .L1609
	jra .L1616
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	move.b #1,273(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	move.b #1,306(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d2
	add.w %d0,%d2
	add.w %d0,%d2
	lsl.w #4,%d2
	add.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	cmp.w #1,268(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 272(%a2)
	jne .L1626
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975376,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1626:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975376,8(%fp)
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
	move.w 286(%a2),%d0
	jne .L1629
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1640
.L1628:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1629:
	cmp.w #1,%d0
	jne .L1628
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1628
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1628
	cmp.w #43,%d0
	jeq .L1636
	tst.b 273(%a2)
	jne .L1636
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1636:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#15372
	unlk %fp
	jmp (%a0)
.L1640:
	pea 6.w
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	tst.b %d0
	jeq .L1631
	tst.w 286(%a2)
	jne .L1631
	move.l 438(%a2),%a0
	cmp.w #3,14(%a0)
	jeq .L1641
.L1632:
	pea 8.w
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1635
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.w raptor_ticks,240(%a2)
	move.w #1,286(%a2)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1635:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d3
	move.l %d3,4(%a0,%d0.l)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	pea __ZL29raidenLightningFatalityFrames
	move.l 438(%a2),-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	jsr (%a5)
	lea (32,%sp),%sp
.L1631:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 6.w
	move.l 634(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr (%a5)
	lea (32,%sp),%sp
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1641:
	tst.w 294(%a2)
	jne .L1632
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxRaidenHeadZapP12SoundHandler
	move.w #1,294(%a2)
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #74,%d0
	jeq .L1642
	cmp.w #43,%d0
	jeq .L1634
	tst.b 273(%a0)
	jne .L1634
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d3
	move.l %d3,4(%a1,%d0.l)
.L1634:
	move.l 296(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	move.l 438(%a2),%a0
	lea (12,%sp),%sp
	jra .L1632
.L1642:
	move.l 438(%a2),%a0
	jra .L1632
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.w 292(%a0)
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
	move.w 286(%a2),%d0
	jne .L1648
	tst.w 294(%a2)
	jne .L1649
	tst.b 272(%a2)
	jeq .L1650
	pea 16.w
	pea 14.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1649:
	pea 4.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1651
.L1663:
	tst.w 294(%a2)
	jne .L1652
	tst.b 272(%a2)
	jeq .L1653
	pea 16.w
	pea 14.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1652:
	move.w #1,286(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,292(%a2)
	clr.w 294(%a2)
.L1651:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 4.w
	move.l 642(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1647:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1648:
	cmp.w #1,%d0
	jne .L1647
	move.w 290(%a2),%d0
	jne .L1655
	tst.w 288(%a2)
	jeq .L1662
	tst.w 294(%a2)
	jne .L1657
.L1664:
	move.w 240(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1657
	move.w #1,294(%a2)
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z15sfxKanoHeartripP12SoundHandler
	addq.l #4,%sp
.L1657:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1658
	cmp.w #1,294(%a2)
	jne .L1658
	move.w #1,290(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra __Z7sfxThudP12SoundHandler
.L1650:
	pea 16.w
	pea 15.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	pea 4.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1663
	jra .L1651
.L1658:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 630(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 292(%a2),%a1
	lea (89,%a1),%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1647
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1655:
	cmp.w #1,%d0
	jne .L1647
	move.w #1,286(%a2)
	clr.w 288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L1647
	cmp.w #43,%d0
	jeq .L1659
	tst.b 273(%a2)
	jne .L1659
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1659:
	move.l 264(%a0),%a1
	move.l %a1,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1653:
	pea 16.w
	pea 15.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.w #1,286(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,292(%a2)
	clr.w 294(%a2)
	jra .L1651
.L1662:
	move.w #1,288(%a2)
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z25fighterPlayFatalityScreamiP12SoundHandlerb
	move.w raptor_ticks,240(%a2)
	lea (12,%sp),%sp
	tst.w 294(%a2)
	jne .L1657
	jra .L1664
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	move.b #1,273(%a0)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	clr.w 292(%a0)
	clr.w 294(%a0)
	move.b #1,306(%a0)
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
	move.w 286(%a2),%d0
	jne .L1670
	move.w raptor_ticks,%d0
	move.w %d0,%a1
	move.w 240(%a2),%a3
	lea (59,%a3),%a3
	cmp.l %a3,%a1
	jle .L1671
	move.w 288(%a2),%d1
	jeq .L1687
	tst.b 132(%a2)
	jeq .L1673
	cmp.w #1,%d1
	jeq .L1688
.L1673:
	pea 14.w
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1678
	move.w #1,286(%a2)
.L1678:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 14.w
	move.l 634(%a2),-(%sp)
	move.l %d2,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1669:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1670:
	cmp.w #1,%d0
	jeq .L1680
.L1671:
	move.w 294(%a2),%d0
.L1681:
	cmp.w #1,%d0
	jne .L1669
	move.w 240(%a2),%a3
	lea (59,%a3),%a3
	move.w raptor_ticks,%a1
	cmp.l %a3,%a1
	jle .L1669
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #67,%d0
	jeq .L1669
	cmp.w #43,%d0
	jeq .L1684
	tst.b 273(%a2)
	jne .L1684
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1684:
	move.l 268(%a0),%a1
	move.l %a1,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1680:
	move.w 294(%a2),%d0
	jne .L1681
	move.l 650(%a2),%a1
	move.l 434(%a1),%d1
	move.l 298(%a1),%a3
	move.w (%a3),%d0
	cmp.w #70,%d0
	jeq .L1682
	cmp.w #43,%d0
	jeq .L1683
	tst.b 273(%a1)
	jne .L1683
	move.l 92(%a1),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	moveq #-1,%d2
	move.l %d2,4(%a3,%d0.l)
.L1683:
	move.l 280(%a0),%a3
	move.l %a3,298(%a1)
	move.l %d1,-(%sp)
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a3),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1682:
	move.w #1,294(%a2)
	move.w raptor_ticks,240(%a2)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1687:
	move.l 264(%a2),-(%sp)
	jsr __Z15sfxKangFatalityP12SoundHandler
	addq.l #4,%sp
	move.l 650(%a2),%a0
	move.w 254(%a0),%a0
	move.w 268(%a2),%d0
	muls.w #-48,%d0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	move.w #1,288(%a2)
	move.w raptor_ticks,290(%a2)
	addq.l #8,%sp
	jra .L1673
.L1688:
	move.w 290(%a2),%a0
	addq.l #1,%a0
	cmp.l %a1,%a0
	jge .L1673
	move.l 134(%a2),%d1
	move.w 254(%a2),%a0
	cmp.l %d1,%a0
	jlt .L1689
	jgt .L1690
	move.w %d0,290(%a2)
	jra .L1673
.L1690:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	move.l 134(%a2),%d0
	addq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jlt .L1685
	clr.b 132(%a2)
	move.w #1,292(%a2)
.L1685:
	move.w raptor_ticks,%d0
	move.w %d0,290(%a2)
	jra .L1673
.L1689:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	move.l 134(%a2),%d0
	subq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jgt .L1685
	clr.b 132(%a2)
	move.w #1,292(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,290(%a2)
	jra .L1673
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	move.b #1,273(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	move.b #1,306(%a2)
	move.w 268(%a2),%d2
	lsl.w #6,%d2
	add.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),%d0
	add.w #32,%d0
	move.w %d0,250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l %d1,84(%a0)
	cmp.w #1,268(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 272(%a2)
	jne .L1700
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975616,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1700:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975616,8(%fp)
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
	tst.w 286(%a2)
	jne .L1702
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1702
	cmp.w #2,14(%a3)
	jeq .L1711
.L1704:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 634(%a2),-(%sp)
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
	jeq .L1702
	tst.w 290(%a2)
	jeq .L1712
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1713
.L1706:
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a5
	move.w (%a5),%d0
	cmp.w #77,%d0
	jeq .L1707
	cmp.w #43,%d0
	jeq .L1708
	tst.b 273(%a0)
	jne .L1708
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1708:
	move.l 308(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1707:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 634(%a2),-(%sp)
	pea 7.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w #1,292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	lea (40,%sp),%sp
	cmp.w #67,%d0
	jeq .L1702
	cmp.w #43,%d0
	jeq .L1709
	tst.b 273(%a2)
	jne .L1709
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1709:
	move.l 268(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1713:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 12.w
	pea __ZL28scorpionToastyFatalityFrames
	move.l 438(%a2),-(%sp)
	move.l %d2,%a0
	jsr (%a0)
	lea (32,%sp),%sp
.L1702:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1711:
	tst.w 288(%a2)
	jne .L1704
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxScorpionSkullP12SoundHandler
	addq.l #4,%sp
	jra .L1704
.L1712:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	addq.l #4,%sp
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jne .L1706
	jra .L1713
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	move.b #1,273(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	move.b #1,306(%a2)
	move.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.w %d0,12(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	cmp.w #1,268(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 272(%a2)
	jne .L1723
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1723:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975184,8(%fp)
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
	tst.w 286(%a2)
	jeq .L1731
	pea 7.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1732
.L1727:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	pea __ZL14skeletonFrames
	move.l 438(%a2),-(%sp)
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
	move.b #1,147(%a2)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,4(%a0,%d0.l)
	lea (32,%sp),%sp
.L1725:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1731:
	move.w #1,286(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z25fighterPlayFatalityScreamiP12SoundHandlerb
	lea (12,%sp),%sp
	pea 7.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1727
.L1732:
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1725
	cmp.w #43,%d0
	jeq .L1729
	tst.b 273(%a2)
	jne .L1729
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1729:
	move.l 264(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	move.b #1,273(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	move.b #1,306(%a2)
	move.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	moveq #-1,%d0
	move.l %d0,4(%a0)
	move.l 650(%a2),%a0
	move.w 254(%a0),%d2
	move.w %d2,252(%a0)
	move.w 246(%a0),250(%a0)
	move.l 438(%a0),%a1
	clr.w 14(%a1)
	move.l 92(%a0),%d0
	move.l %d0,(%a1)
	move.l #12838736,8(%a1)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a3
	move.l #12838736,44(%a3)
	moveq #104,%d1
	move.l %d1,144(%a3)
	moveq #16,%d0
	move.l %d0,40(%a3)
	move.l %d0,36(%a3)
	jsr (%a4)
	sub.w %d0,%d2
	move.w %d2,8(%a3)
	move.l sprite,%a3
	move.l 650(%a2),%a0
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	lea (%a3,%d0.l),%a1
	move.w 250(%a0),12(%a1)
	moveq #-1,%d1
	move.l %d1,4(%a1)
	cmp.w #1,268(%a2)
	jeq .L1753
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #-1,%d0
	move.l %d0,24(%a1)
.L1738:
	tst.b 272(%a2)
	jeq .L1751
	moveq #13,%d0
	moveq #9,%d2
.L1739:
	cmp.w #8,(%a0)
	jhi .L1740
	moveq #0,%d1
	move.w (%a0),%d1
	add.l %d1,%d1
	move.w .L1750(%pc,%d1.l),%d1
	jmp %pc@(2,%d1:w)
.L1750:
	.word .L1741-.L1750
	.word .L1742-.L1750
	.word .L1743-.L1750
	.word .L1744-.L1750
	.word .L1745-.L1750
	.word .L1746-.L1750
	.word .L1747-.L1750
	.word .L1748-.L1750
	.word .L1749-.L1750
.L1741:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976048,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1740:
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1751:
	moveq #9,%d0
	moveq #13,%d2
	jra .L1739
.L1753:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #1,%d0
	move.l %d0,24(%a1)
	jra .L1738
.L1748:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976432,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1749:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976336,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1742:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976096,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1743:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976144,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1744:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976192,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1745:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976288,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1746:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976240,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1747:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976384,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975184,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
	.even
	.globl	__Z28StateSubzeroFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z28StateSubzeroFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%a5
	tst.w 286(%a2)
	jne .L1755
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1755
	cmp.w #2,14(%a5)
	jeq .L1764
.L1757:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 9.w
	move.l 634(%a2),-(%sp)
	move.l %a5,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	lea (32,%sp),%sp
	cmp.w #2,14(%a5)
	jgt .L1765
.L1755:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1765:
	pea 9.w
	move.l 434(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1766
	move.l sprite,%a0
	move.l 92(%a2),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a1
	moveq #-1,%d0
	cmp.l 4(%a1),%d0
	jeq .L1767
	move.l 650(%a2),%a1
	move.l 92(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1768
.L1762:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	pea __ZL16decapSpineFrames
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	move.l 650(%a2),%a0
	lea (32,%sp),%sp
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a2
	move.l %a2,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 646(%a0),-(%sp)
	move.l 438(%a0),-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
.L1769:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1764:
	tst.w 288(%a2)
	jne .L1757
	move.w #1,288(%a2)
	move.l 650(%a2),%a0
	move.w #1,294(%a0)
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	cmp.w #79,%d0
	jeq .L1757
	cmp.w #43,%d0
	jeq .L1758
	tst.b 273(%a0)
	jne .L1758
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1758:
	move.l 316(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a1
	move.l %a1,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 9.w
	move.l 634(%a2),-(%sp)
	move.l %a5,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	jsr (%a4)
	lea (32,%sp),%sp
	cmp.w #2,14(%a5)
	jle .L1755
	jra .L1765
.L1768:
	moveq #1,%d2
	move.l %d2,4(%a0)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	pea __ZL16decapSpineFrames
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	move.l 650(%a2),%a0
	lea (32,%sp),%sp
	move.w 268(%a2),%a1
	move.l %a1,-(%sp)
	move.w 250(%a2),%a1
	move.l %a1,-(%sp)
	move.w 248(%a2),%a2
	move.l %a2,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 646(%a0),-(%sp)
	move.l 438(%a0),-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
	jra .L1769
.L1767:
	moveq #1,%d2
	move.l %d2,4(%a1)
	move.l 650(%a2),%a1
	move.l 92(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L1762
	jra .L1768
.L1766:
	move.w #1,292(%a2)
	move.w #123,290(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1755
	cmp.w #43,%d0
	jeq .L1760
	tst.b 273(%a2)
	jne .L1760
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1760:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	clr.w 286(%a0)
	move.w #1,288(%a0)
	clr.w 290(%a0)
	clr.w 292(%a0)
	clr.w 294(%a0)
	move.w %d0,%a1
	move.l %a1,158(%a0)
	cmp.w #-1,268(%a0)
	jeq .L1777
	move.l 650(%a0),%a1
	move.w 254(%a1),%a1
	lea (-56,%a1),%a1
	move.w %a1,254(%a0)
	unlk %fp
	rts
.L1777:
	move.l 650(%a0),%a1
	move.w 254(%a1),%a1
	lea (64,%a1),%a1
	move.w %a1,254(%a0)
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
	move.w 286(%a2),%d0
	jne .L1780
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l 158(%a2),%d1
	addq.l #2,%d1
	cmp.l %a0,%d1
	jge .L1793
	move.w 288(%a2),%d1
	move.w %d1,%d2
	add.w %d1,%d2
	add.w %d2,254(%a2)
	neg.w %d1
	move.w %d1,288(%a2)
	move.w 290(%a2),%d1
	addq.w #1,%d1
	move.w %d1,290(%a2)
	move.l %a0,158(%a2)
.L1782:
	cmp.w #5,%d1
	jle .L1783
	move.w #1,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 14(%a3)
	move.w %d0,292(%a2)
	clr.w 294(%a2)
.L1783:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	pea 48.w
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 642(%a2),-(%sp)
	pea 3.w
	move.l 2(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (40,%sp),%sp
.L1779:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1780:
	cmp.w #1,%d0
	jne .L1779
	move.w 290(%a2),%d0
	jne .L1785
	tst.w 288(%a2)
	jeq .L1794
	tst.w 294(%a2)
	jne .L1787
	move.w 240(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1795
.L1787:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1796
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 630(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.w 292(%a2),%a1
	lea (89,%a1),%a1
	move.w raptor_ticks,%a0
	lea (32,%sp),%sp
	cmp.l %a1,%a0
	jgt .L1779
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1793:
	move.w 290(%a2),%d1
	jra .L1782
.L1785:
	cmp.w #1,%d0
	jne .L1779
	move.w 246(%a2),%a0
	addq.w #6,%a0
	move.w %a0,%a0
	move.w 254(%a2),%d0
	cmp.w #-1,268(%a2)
	jeq .L1797
	moveq #-72,%d1
.L1789:
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	sub.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	lea (12,%sp),%sp
	cmp.w #66,%d0
	jeq .L1779
	cmp.w #43,%d0
	jeq .L1790
	tst.b 273(%a2)
	jne .L1790
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1790:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1794:
	move.w #1,288(%a2)
	move.w 268(%a2),%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d1,%d0
	lsl.w #3,%d0
	add.w 254(%a2),%d0
	move.w %d0,254(%a2)
	move.w 246(%a2),%d1
	add.w #-30,%d1
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z25fighterPlayFatalityScreamiP12SoundHandlerb
	move.w raptor_ticks,%d0
	move.w %d0,240(%a2)
	clr.w 14(%a3)
	move.w %d0,12(%a3)
	lea (12,%sp),%sp
	jra .L1787
.L1797:
	moveq #42,%d1
	jra .L1789
.L1795:
	move.w #1,294(%a2)
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z15sfxKanoHeartripP12SoundHandler
	addq.l #4,%sp
	jra .L1787
.L1796:
	move.w #1,290(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 264(%a2),8(%fp)
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	move.b #1,273(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	clr.w 296(%a2)
	move.b #1,306(%a2)
	move.w 268(%a2),%d2
	lsl.w #4,%d2
	add.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),%d0
	add.w #16,%d0
	move.w %d0,250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	moveq #-1,%d1
	move.l %d1,4(%a0)
	cmp.w #1,268(%a2)
	sne %d0
	ext.w %d0
	ext.l %d0
	moveq #1,%d1
	or.l %d0,%d1
	move.l %d1,24(%a0)
	tst.b 272(%a2)
	jne .L1807
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975616,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1807:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975616,8(%fp)
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
	tst.w 286(%a2)
	jne .L1809
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1809
	cmp.w #1,14(%a5)
	jeq .L1823
.L1811:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 8.w
	move.l 634(%a2),-(%sp)
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
	jeq .L1809
	tst.w 290(%a2)
	jeq .L1824
	move.w 292(%a2),%d0
	cmp.w #15,%d0
	jgt .L1813
.L1827:
	move.w 296(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1813
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1825
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL15sonyaKissFrames
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	move.w 292(%a2),%a0
	add.l %a0,%a0
	lea __ZL17SonyaKissXOffsets,%a1
	move.w (%a1,%a0.l),%d2
	add.w #16,%d2
	muls.w 268(%a2),%d2
	add.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),%d0
	add.w #16,%d0
	lea __ZL17SonyaKissYOffsets,%a1
	add.w (%a0,%a1.l),%d0
	move.w %d0,250(%a2)
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
	move.w 250(%a2),12(%a0,%d0.l)
	addq.w #1,292(%a2)
	move.w raptor_ticks,296(%a2)
.L1809:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1813:
	move.w 294(%a2),%d1
	jne .L1815
	cmp.w #15,%d0
	jle .L1809
	move.w 296(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1809
	move.w 268(%a2),%d2
	lsl.w #3,%d2
	add.w 252(%a2),%d2
	move.w %d2,252(%a2)
	lea __Z10cameraGetXv,%a3
	jsr (%a3)
	sub.w %d0,%d2
	move.w %d2,248(%a2)
	add.w #12,250(%a2)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a4
	add.l %d0,%a4
	move.w 252(%a2),%d2
	jsr (%a3)
	sub.w %d0,%d2
	move.w %d2,8(%a4)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	move.w 250(%a2),12(%a0,%d0.l)
	move.w raptor_ticks,296(%a2)
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1826
	cmp.w #-1,%d0
	jne .L1809
	move.w 252(%a2),%a1
	move.l 650(%a2),%a0
	move.w 254(%a0),%a0
	lea (48,%a0),%a0
	cmp.l %a1,%a0
	jlt .L1809
.L1817:
	tst.w 294(%a2)
	jne .L1809
	move.l 264(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	move.w #1,294(%a2)
	move.l 438(%a2),%a0
	move.w #6,14(%a0)
	addq.l #4,%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1823:
	tst.w 288(%a2)
	jne .L1811
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z12sfxSonyaKissP12SoundHandler
	addq.l #4,%sp
	jra .L1811
.L1824:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z22sfxKanoCannonBallStartP12SoundHandler
	move.w raptor_ticks,296(%a2)
	addq.l #4,%sp
	move.w 292(%a2),%d0
	cmp.w #15,%d0
	jgt .L1813
	jra .L1827
.L1815:
	cmp.w #1,%d1
	jne .L1809
	move.w 268(%a2),%d2
	muls.w #-40,%d2
	move.l 650(%a2),%a0
	add.w 254(%a0),%d2
	move.w %d2,252(%a2)
	jsr __Z10cameraGetXv
	sub.w %d0,%d2
	move.w %d2,248(%a2)
	move.l 650(%a2),%a0
	move.w 246(%a0),%a0
	lea (32,%a0),%a0
	move.w %a0,250(%a2)
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1828
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a4
	move.w (%a4),%d0
	cmp.w #77,%d0
	jeq .L1819
	cmp.w #43,%d0
	jeq .L1820
	tst.b 273(%a0)
	jne .L1820
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1820:
	move.l 308(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1819:
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1809
	cmp.w #43,%d0
	jeq .L1821
	tst.b 273(%a2)
	jne .L1821
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1821:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1825:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 1.w
	pea __ZL15sonyaKissFrames
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	move.w 292(%a2),%a0
	add.l %a0,%a0
	lea __ZL17SonyaKissXOffsets,%a1
	move.w (%a1,%a0.l),%d2
	add.w #16,%d2
	muls.w 268(%a2),%d2
	add.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),%d0
	add.w #16,%d0
	lea __ZL17SonyaKissYOffsets,%a1
	add.w (%a0,%a1.l),%d0
	move.w %d0,250(%a2)
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
	move.w 250(%a2),12(%a0,%d0.l)
	addq.w #1,292(%a2)
	move.w raptor_ticks,296(%a2)
	jra .L1809
.L1828:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 250(%a2),%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 12.w
	pea __ZL28scorpionToastyFatalityFrames
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	lea (32,%sp),%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1826:
	move.l 650(%a2),%a0
	move.w 254(%a0),%d0
	cmp.w 252(%a2),%d0
	jle .L1817
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	move.w %d0,240(%a0)
	move.b #1,273(%a0)
	clr.w 286(%a0)
	move.w %d0,288(%a0)
	clr.w 290(%a0)
	clr.w 292(%a0)
	clr.w 294(%a0)
	clr.w 296(%a0)
	move.b #1,306(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z27StateKasumiFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateKasumiFatality1_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w raptor_ticks,%a0
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jle .L1833
	move.w 286(%a2),%d0
	jeq .L1845
	cmp.w #1,%d0
	jeq .L1846
.L1833:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1845:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1836
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1846:
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1833
	tst.w 290(%a2)
	jeq .L1847
.L1837:
	move.w 294(%a2),%d0
	jeq .L1848
	cmp.w #1,%d0
	jne .L1833
	cmp.w #1,296(%a2)
	jne .L1833
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1849
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l 566(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1836:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l 474(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1847:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1837
.L1848:
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1839
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #82,%d0
	jeq .L1840
	cmp.w #43,%d0
	jeq .L1841
	tst.b 273(%a0)
	jne .L1841
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1841:
	move.l 328(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1840:
	clr.w 288(%a2)
	move.w #1,294(%a2)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1839:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 52(%a2),%a0
	move.l %a0,-(%sp)
	move.l 634(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1849:
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1833
	cmp.w #43,%d0
	jeq .L1843
	tst.b 273(%a2)
	jne .L1843
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1843:
	move.l 268(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
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
	clr.b 302(%a2)
	clr.w 14(%a0)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a0)
	move.w %d0,240(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z25fighterPlayFatalityScreamiP12SoundHandlerb
	addq.l #8,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	subq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a3)
	move.w 254(%a2),%d2
	move.w %d2,252(%a2)
	move.w 246(%a2),250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838736,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838736,44(%a3)
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
	move.w 250(%a2),12(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	cmp.w #7,(%a2)
	jls .L1881
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1881:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1863(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1863:
	.word .L1855-.L1863
	.word .L1856-.L1863
	.word .L1857-.L1863
	.word .L1858-.L1863
	.word .L1859-.L1863
	.word .L1860-.L1863
	.word .L1861-.L1863
	.word .L1862-.L1863
.L1861:
	tst.b 272(%a2)
	jne .L1882
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976768,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1862:
	tst.b 272(%a2)
	jeq .L1879
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976816,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1855:
	tst.b 272(%a2)
	jne .L1883
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976480,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1856:
	tst.b 272(%a2)
	jne .L1884
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976528,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1857:
	tst.b 272(%a2)
	jne .L1885
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976576,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1858:
	tst.b 272(%a2)
	jne .L1886
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976624,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1859:
	tst.b 272(%a2)
	jne .L1887
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976720,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1860:
	tst.b 272(%a2)
	jne .L1888
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976672,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1879:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976816,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1882:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976768,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1888:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976672,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1887:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976720,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1886:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976624,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1885:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976576,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1884:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976528,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1883:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976480,8(%fp)
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
	cmp.w #1,292(%a2)
	jeq .L1915
.L1891:
	tst.w 14(%a3)
	jne .L1894
	tst.w 286(%a2)
	jne .L1894
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1894
	move.w #1,286(%a2)
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
.L1894:
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	pea 7.w
	move.l 630(%a2),-(%sp)
	move.l %a3,-(%sp)
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jsr (%a3)
	move.w raptor_ticks,%a0
	move.w 240(%a2),%a4
	addq.l #1,%a4
	move.w %a0,%a1
	lea (32,%sp),%sp
	cmp.l %a4,%a1
	jle .L1916
	tst.w 290(%a2)
	jne .L1897
	move.w 288(%a2),%d2
	move.w %d2,%a1
	move.l %a1,%a4
	add.l #__ZL15UppercutOffsets,%a4
	move.w (%a4,%a1.l),%d0
	add.w 250(%a2),%d0
	move.w %d0,250(%a2)
	cmp.w #166,%d0
	jle .L1898
	move.w #166,250(%a2)
.L1898:
	addq.w #1,%d2
	move.w %d2,288(%a2)
	move.l 650(%a2),%a1
	cmp.w #23,%d2
	jle .L1912
	tst.w 296(%a1)
	jne .L1912
	move.w #1,296(%a1)
	move.l 434(%a1),%a1
	clr.w 14(%a1)
.L1902:
	move.w 294(%a2),%d0
.L1903:
	cmp.w #1,%d0
	jeq .L1905
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	move.w %a0,240(%a2)
.L1896:
	move.w %d0,%a0
	cmp.w #24,%d2
	jle .L1917
.L1910:
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	move.l 638(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	move.l 92(%a2),-(%sp)
	jsr __Z17setAnimationFramejP14SpriteAnimatorP14AnimationFrameiii
	lea (24,%sp),%sp
.L1890:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1916:
	move.w 288(%a2),%d2
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	move.w %d0,%a0
	cmp.w #24,%d2
	jgt .L1910
.L1917:
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 248(%a2),%a0
	move.l %a0,-(%sp)
	pea 1.w
	pea 1.w
	pea 4.w
	move.l 638(%a2),-(%sp)
	move.l 438(%a2),-(%sp)
	jsr (%a3)
	lea (32,%sp),%sp
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1897:
	move.w 268(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	sub.w %d1,252(%a2)
	move.w 288(%a2),%d2
	move.w %d2,%a1
	move.l %a1,%a4
	add.l #__ZL15UppercutOffsets,%a4
	move.w (%a4,%a1.l),%d1
	add.w 250(%a2),%d1
	move.w %d1,250(%a2)
	addq.w #1,%d2
	move.w %d2,288(%a2)
	cmp.w #182,%d1
	jle .L1908
.L1909:
	move.w #182,250(%a2)
	jsr RAPTOR_random
	and.w #4,%d0
	add.w #182,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%d0
	addq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodPoolss
	addq.l #4,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.b #1,146(%a2)
	move.b #1,144(%a2)
	clr.b 142(%a2)
	move.w #1,292(%a2)
	move.w raptor_ticks,%a0
	move.w 288(%a2),%d2
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	addq.l #4,%sp
	move.w %a0,240(%a2)
	jra .L1896
.L1915:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1891
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1890
	cmp.w #43,%d0
	jeq .L1893
	tst.b 273(%a2)
	jne .L1893
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1893:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1908:
	cmp.w #182,%d1
	jeq .L1909
	move.w %a0,240(%a2)
	jra .L1896
.L1912:
	move.l 434(%a1),%a1
	move.w 14(%a1),%d0
	cmp.w #1,%d0
	jne .L1902
	move.w 294(%a2),%d0
	jne .L1903
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a4
	jsr (%a4)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #-16,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a4)
	lea (12,%sp),%sp
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z24fighterPlayFatalityGroaniP12SoundHandlerb
	move.w #6,288(%a2)
	move.w #1,294(%a2)
	lea (12,%sp),%sp
	moveq #6,%d2
	move.w 250(%a2),%d1
	cmp.w #165,%d1
	jgt .L1907
.L1918:
	move.w raptor_ticks,%a0
	move.w 268(%a2),%d0
	move.w %a0,240(%a2)
	jra .L1896
.L1905:
	move.w 268(%a2),%d0
	neg.w %d0
	lsl.w #3,%d0
	add.w %d0,252(%a2)
	move.w 250(%a2),%d1
	cmp.w #165,%d1
	jle .L1918
.L1907:
	move.w #158,250(%a2)
	jsr RAPTOR_random
	and.w #4,%d0
	add.w #182,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 252(%a2),%d0
	addq.w #8,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodPoolss
	addq.l #4,%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.l 264(%a2),(%sp)
	jsr __Z7sfxThudP12SoundHandler
	move.w #1,290(%a2)
	move.w #5,288(%a2)
	move.w raptor_ticks,%a0
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	addq.l #4,%sp
	moveq #5,%d2
	move.w %a0,240(%a2)
	jra .L1896
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
	clr.b 302(%a0)
	clr.w 14(%a1)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a1)
	clr.w 286(%a0)
	clr.w 288(%a0)
	clr.w 290(%a0)
	move.w %d0,240(%a0)
	move.b #1,306(%a0)
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
	move.w 286(%a0),%d2
	moveq #0,%d0
	move.w %d1,%d0
	move.l %d0,%a1
	sub.w %d2,%a1
	moveq #16,%d0
	cmp.l %a1,%d0
	jge .L1924
	move.l 2(%a0),%d0
	move.l %d0,%d3
	add.l %d0,%d3
	add.l %d0,%d3
	lsl.l #6,%d3
	move.l sprite,%a1
	add.l %d3,%a1
	move.w 12(%a1),%d3
	cmp.w #1,%d3
	jle .L1925
	move.w 288(%a0),%d0
	jle .L1923
	move.w %d3,%a2
	sub.w %d0,%a2
	clr.w 288(%a0)
	cmp.w #0,%a2
	jle .L1930
	move.w %a2,12(%a1)
.L1923:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1924:
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
.L1925:
	move.w 288(%a0),%d3
	jle .L1923
	add.w %d3,%d2
	move.w %d2,286(%a0)
	clr.w 288(%a0)
	move.w #1,12(%a1)
	move.w 268(%a0),%a1
	move.l %a1,-(%sp)
	move.w 10(%a2),%a1
	move.l %a1,-(%sp)
	move.w 8(%a2),%a1
	move.l %a1,-(%sp)
	pea 1.w
	move.w 244(%a0),%a0
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
.L1930:
	move.w #1,%a2
	move.w %a2,12(%a1)
	jra .L1923
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
	clr.b 302(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	move.w %d0,240(%a2)
	clr.w 286(%a2)
	clr.w 288(%a2)
	move.w %d0,290(%a2)
	clr.w 292(%a2)
	clr.w 294(%a2)
	clr.w 296(%a2)
	move.l 264(%a2),(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 246(%a2),%d0
	add.w #-30,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 268(%a2),%d0
	muls.w #-20,%d0
	add.w 254(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z11bloodSquirtss
	addq.l #8,%sp
	move.w 246(%a2),%d0
	add.w #-20,%d0
	move.w %d0,%a0
	move.l %a0,12(%fp)
	move.w 268(%a2),%d0
	muls.w #-10,%d0
	add.w 254(%a2),%d0
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
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%a2
	move.l 16(%fp),%a3
	move.w raptor_ticks,%a0
	tst.w 296(%a2)
	jne .L1937
	move.w 290(%a2),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1946
.L1937:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w 292(%a2),%d0
	cmp.l %a1,%a0
	jle .L1939
	tst.w %d0
	jeq .L1947
.L1939:
	cmp.w #1,%d0
	jeq .L1948
.L1935:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1947:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL15UppercutOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w 246(%a2),%d1
	move.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	addq.l #8,%sp
	cmp.w #24,%d0
	jeq .L1949
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
.L1950:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1946:
	move.w #1,296(%a2)
	jsr __Z9musicStopv
	move.w raptor_ticks,%a0
	jra .L1937
.L1948:
	jsr __Z20cameraIsScrollingPitv
	tst.b %d0
	jne .L1935
	tst.w 294(%a2)
	jne .L1935
	move.w #1,294(%a2)
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z18fighterPlayPitLandiP12SoundHandlerb
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.w 268(%a2),%a0
	move.l %a0,(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	pea 25.w
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	lea (36,%sp),%sp
	clr.l (%sp)
	jsr __Z7bgShakeb
	move.w 246(%a2),%d0
	add.w #32,%d0
	move.w %d0,%a0
	move.l %a0,(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z11bloodSquirtss,%a5
	jsr (%a5)
	addq.l #8,%sp
	move.w 246(%a2),%d0
	add.w #42,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 268(%a2),%d0
	lsl.w #3,%d0
	add.w 254(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #32,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	lea __Z9bloodDropsss,%a5
	jsr (%a5)
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%d0
	add.w #36,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 254(%a2),%a0
	move.l %a0,-(%sp)
	jsr (%a5)
	move.b #1,146(%a2)
	move.b #1,144(%a2)
	clr.b 142(%a2)
	move.l 650(%a2),%a0
	move.w #1,292(%a0)
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	lea (12,%sp),%sp
	cmp.w #67,%d0
	jeq .L1942
	cmp.w #43,%d0
	jeq .L1943
	tst.b 273(%a0)
	jne .L1943
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1943:
	move.l 268(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1942:
	move.w #1,286(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1935
	cmp.w #43,%d0
	jeq .L1944
	tst.b 273(%a2)
	jne .L1944
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1944:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1949:
	jsr __Z15cameraScrollPitv
	moveq #0,%d0
	move.b 272(%a2),%d0
	move.l %d0,-(%sp)
	move.l 264(%a2),-(%sp)
	move.w (%a2),%a0
	move.l %a0,-(%sp)
	jsr __Z18fighterPlayPitFalliP12SoundHandlerb
	move.w #1,292(%a2)
	move.w 246(%a2),%d1
	move.w 286(%a2),%d0
	lea (12,%sp),%sp
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w %d1,%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	move.w 16(%a3),%a0
	move.l %a0,-(%sp)
	move.l 8(%a3),-(%sp)
	move.l 4(%a3),-(%sp)
	move.l 546(%a2),-(%sp)
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l (%a3),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z12animateFrameP14SpriteAnimatorjjP14AnimationFramefjiiii
	move.w raptor_ticks,240(%a2)
	lea (40,%sp),%sp
	jra .L1950
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
