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
	jne .L118
.L60:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L118:
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
	jne .L119
.L67:
	tst.l %d1
	jeq .L68
	cmp.w #1,268(%a2)
	jeq .L69
.L68:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jne .L120
.L70:
	tst.l %d1
	jeq .L72
	cmp.w #1,268(%a2)
	jeq .L73
.L72:
	move.l %d0,%d3
	and.l JAGPAD_RIGHT,%d3
	jne .L121
.L74:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L76
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L77
	tst.b 273(%a2)
	jne .L77
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L77:
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
.L76:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L78
	move.w 268(%a2),%d4
	cmp.w #1,%d4
	jeq .L122
	cmp.w #-1,%d4
	jne .L78
	tst.l %d1
	jne .L80
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L112
.L113:
	moveq #0,%d4
.L86:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L91
.L90:
	tst.b 101(%a2)
	jeq .L91
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #11,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L92
	tst.b 273(%a2)
	jne .L92
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L92:
	move.l 44(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L119:
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
.L120:
	cmp.w #-1,268(%a2)
	jne .L70
.L69:
	move.l %d0,%d3
	and.l JAGPAD_9,%d3
	jeq .L70
	tst.b 101(%a2)
	jeq .L70
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #15,%d0
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
	move.l 60(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L121:
	cmp.w #-1,268(%a2)
	jne .L74
.L73:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L74
	tst.b 101(%a2)
	jeq .L74
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #20,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L75
	tst.b 273(%a2)
	jne .L75
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L75:
	move.l 80(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L78:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L88
	cmp.w #1,268(%a2)
	jeq .L89
.L88:
	tst.l %d1
	jeq .L86
	cmp.w #-1,268(%a2)
	jne .L86
.L89:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jne .L90
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L90
.L91:
	tst.l %d4
	jeq .L93
	cmp.w #1,268(%a2)
	jeq .L94
.L93:
	tst.l %d1
	jeq .L95
	cmp.w #-1,268(%a2)
	jeq .L94
.L95:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L97
.L96:
	tst.b 101(%a2)
	jeq .L97
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #14,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L98
	tst.b 273(%a2)
	jne .L98
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L98:
	move.l 56(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L97:
	move.w 268(%a2),%d5
	cmp.w #1,%d5
	jeq .L123
	cmp.w #-1,%d5
	jeq .L124
.L102:
	tst.l %d3
	jne .L125
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L109
	tst.b 141(%a2)
	jeq .L110
	tst.b 101(%a2)
	jne .L126
.L109:
	and.l JAGPAD_A,%d0
	jeq .L60
	tst.b 101(%a2)
	jeq .L60
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #13,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L111
	tst.b 273(%a2)
	jne .L111
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L111:
	move.l 52(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L124:
	tst.l %d1
	jne .L100
	tst.l %d4
	jeq .L102
.L105:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #4,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L106
	tst.b 273(%a2)
	jne .L106
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L106:
	move.l 16(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L94:
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jne .L96
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L97
	jra .L96
.L122:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L80
	tst.l %d1
	jeq .L113
.L112:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #7,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L87
	tst.b 273(%a2)
	jne .L87
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L87:
	move.l 28(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L126:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 40.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L123:
	tst.l %d4
	jne .L100
	tst.l %d1
	jeq .L102
	jra .L105
.L100:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #3,%d0
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
	move.l 12(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L80:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #6,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L84
	tst.b 273(%a2)
	jne .L84
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L84:
	move.l 24(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L110:
	tst.b 101(%a2)
	jeq .L109
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 9.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L125:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
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
	jeq .L134
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
	jeq .L135
.L129:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L135:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L129
	cmp.w #43,%d0
	jeq .L132
	tst.b 273(%a2)
	jne .L132
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L132:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L134:
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
	jne .L139
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L143
.L139:
	and.l JAGPAD_DOWN,%d0
	jne .L144
.L138:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L144:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #8,%d0
	jeq .L138
	cmp.w #43,%d0
	jeq .L141
	tst.b 273(%a0)
	jne .L141
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L141:
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
.L143:
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
	jeq .L147
	clr.w 14(%a1)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	unlk %fp
	rts
.L147:
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
	jeq .L156
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
	jeq .L157
.L151:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L157:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L151
	cmp.w #43,%d0
	jeq .L154
	tst.b 273(%a2)
	jne .L154
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L154:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L156:
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
	jeq .L173
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L163
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L163
	tst.b 101(%a0)
	jeq .L160
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L166
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L166
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L169
	and.l JAGPAD_9,%d0
	jeq .L160
.L169:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #17,%d0
	jeq .L160
	cmp.w #43,%d0
	jeq .L170
	tst.b 273(%a0)
	jne .L170
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L170:
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
.L173:
	move.b #1,302(%a0)
.L160:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L163:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #8,%d0
	jeq .L160
	cmp.w #43,%d0
	jeq .L165
	tst.b 273(%a0)
	jne .L165
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L165:
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
.L166:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #16,%d0
	jeq .L160
	cmp.w #43,%d0
	jeq .L168
	tst.b 273(%a0)
	jne .L168
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L168:
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
	jle .L177
	tst.b 139(%a2)
	jeq .L178
	move.w 268(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,286(%a2)
	move.w raptor_ticks,240(%a2)
.L177:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 302(%a2)
	jeq .L176
	cmp.w #31,286(%a2)
	jgt .L183
.L176:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L178:
	move.w 268(%a2),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,286(%a2)
	move.w raptor_ticks,240(%a2)
	jra .L177
.L183:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L176
	cmp.w #43,%d0
	jeq .L181
	tst.b 273(%a2)
	jne .L181
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L181:
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
	jeq .L222
	cmp.w #-1,%d0
	jeq .L223
.L188:
	move.b #1,302(%a0)
.L186:
	movem.l (%sp)+,#1052
	unlk %fp
	rts
.L223:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jeq .L188
.L189:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L224
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jeq .L193
	tst.b 139(%a0)
	jeq .L193
	tst.b 101(%a0)
	jne .L225
.L193:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L226
.L195:
	tst.b 139(%a0)
	jeq .L196
	tst.b 101(%a0)
	jne .L227
.L196:
	move.l %d0,%d4
	and.l JAGPAD_7,%d4
	jeq .L198
	tst.b 101(%a0)
	jne .L217
.L198:
	tst.l %d2
	jeq .L200
	tst.b 101(%a0)
	jne .L217
.L200:
	and.l JAGPAD_9,%d0
	jeq .L202
	tst.b 101(%a0)
	jne .L219
.L202:
	tst.l %d3
	jeq .L186
	tst.b 101(%a0)
	jeq .L186
.L219:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #14,%d0
	jeq .L186
	cmp.w #43,%d0
	jeq .L204
	tst.b 273(%a0)
	jne .L204
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L204:
	move.l 56(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L222:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jne .L189
	move.b #1,302(%a0)
	jra .L186
.L226:
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L196
	jra .L195
.L224:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #6,%d0
	jeq .L186
	cmp.w #43,%d0
	jeq .L192
	tst.b 273(%a0)
	jne .L192
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L192:
	move.l 24(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L217:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #11,%d0
	jeq .L186
	cmp.w #43,%d0
	jeq .L201
	tst.b 273(%a0)
	jne .L201
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L201:
	move.l 44(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L227:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #39,%d0
	jeq .L186
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
	move.l 156(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L225:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #38,%d0
	jeq .L186
	cmp.w #43,%d0
	jeq .L194
	tst.b 273(%a0)
	jne .L194
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L194:
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
	jgt .L235
.L231:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 302(%a2)
	jeq .L230
	cmp.w #27,286(%a2)
	jgt .L236
.L230:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L235:
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
	jra .L231
.L236:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L230
	cmp.w #43,%d0
	jeq .L233
	tst.b 273(%a2)
	jne .L233
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L233:
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
	jeq .L264
	cmp.w #-1,%d0
	jeq .L265
.L241:
	move.b #1,302(%a0)
.L239:
	movem.l (%sp)+,#1036
	unlk %fp
	rts
.L265:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jeq .L241
.L242:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L266
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jeq .L246
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L246
	tst.b 101(%a0)
	jne .L261
.L246:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L267
	tst.b 101(%a0)
	jne .L268
.L249:
	and.l JAGPAD_9,%d0
	jeq .L251
	tst.b 101(%a0)
	jne .L261
.L251:
	tst.l %d2
	jeq .L239
	tst.b 101(%a0)
	jeq .L239
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #20,%d0
	jeq .L239
	cmp.w #43,%d0
	jeq .L253
	tst.b 273(%a0)
	jne .L253
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L253:
	move.l 80(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L264:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jne .L242
	move.b #1,302(%a0)
	jra .L239
.L267:
	move.l %d0,%d3
	and.l JAGPAD_C,%d3
	jeq .L249
	tst.b 101(%a0)
	jeq .L249
	jra .L268
.L266:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #7,%d0
	jeq .L239
	cmp.w #43,%d0
	jeq .L245
	tst.b 273(%a0)
	jne .L245
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L245:
	move.l 28(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L268:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #11,%d0
	jeq .L239
	cmp.w #43,%d0
	jeq .L250
	tst.b 273(%a0)
	jne .L250
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L250:
	move.l 44(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L261:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #15,%d0
	jeq .L239
	cmp.w #43,%d0
	jeq .L252
	tst.b 273(%a0)
	jne .L252
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L252:
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
	jls .L283
	cmp.w #18,%d0
	jeq .L284
	cmp.w #19,%d0
	jeq .L285
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
.L273:
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L281
	tst.b 176(%a2)
	jne .L281
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
	jgt .L286
.L271:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L281:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L271
.L286:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L271
	cmp.w #43,%d0
	jeq .L280
	tst.b 273(%a2)
	jne .L280
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L280:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L285:
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
	jra .L273
.L283:
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
	jra .L273
.L284:
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
	jra .L273
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
	jne .L290
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L291
.L290:
	tst.b 101(%a0)
	jne .L298
.L291:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L299
	tst.b 101(%a0)
	jne .L300
.L289:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L299:
	and.l JAGPAD_9,%d0
	jeq .L289
	tst.b 101(%a0)
	jeq .L289
.L300:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #19,%d0
	jeq .L289
	cmp.w #43,%d0
	jeq .L295
	tst.b 273(%a0)
	jne .L295
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L295:
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
.L298:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #18,%d0
	jeq .L289
	cmp.w #43,%d0
	jeq .L293
	tst.b 273(%a0)
	jne .L293
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L293:
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
	jle .L309
	tst.b 176(%a2)
	jeq .L306
.L309:
	move.w 286(%a2),%d0
.L305:
	cmp.w #19,%d0
	jgt .L311
.L303:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L311:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L303
	cmp.w #43,%d0
	jeq .L308
	tst.b 273(%a2)
	jne .L308
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L308:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L306:
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
	jne .L305
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L303
	jra .L311
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
	jeq .L314
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L316
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L316
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L319
	and.l JAGPAD_7,%d0
	jeq .L314
.L319:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #23,%d0
	jeq .L314
	cmp.w #43,%d0
	jeq .L320
	tst.b 273(%a0)
	jne .L320
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L320:
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
.L314:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L316:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #21,%d0
	jeq .L314
	cmp.w #43,%d0
	jeq .L318
	tst.b 273(%a0)
	jne .L318
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L318:
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
	jle .L331
	tst.b 176(%a2)
	jeq .L328
.L331:
	move.w 286(%a2),%d0
.L327:
	cmp.w #19,%d0
	jgt .L333
.L325:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L333:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L325
	cmp.w #43,%d0
	jeq .L330
	tst.b 273(%a2)
	jne .L330
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L330:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L328:
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
	jne .L327
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L325
	jra .L333
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
	jeq .L336
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L338
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L338
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L341
	and.l JAGPAD_7,%d0
	jeq .L336
.L341:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #24,%d0
	jeq .L336
	cmp.w #43,%d0
	jeq .L342
	tst.b 273(%a0)
	jne .L342
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L342:
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
.L336:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L338:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #22,%d0
	jeq .L336
	cmp.w #43,%d0
	jeq .L340
	tst.b 273(%a0)
	jne .L340
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L340:
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
	jeq .L358
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
	jne .L347
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L350
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L350
	and.l JAGPAD_DOWN,%d0
	jne .L359
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L347
	cmp.w #43,%d0
	jeq .L355
	tst.b 273(%a2)
	jne .L355
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L355:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L358:
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
.L347:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L350:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
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
	move.l 4(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L359:
	move.w #1,286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L347
	cmp.w #43,%d0
	jeq .L354
	tst.b 273(%a2)
	jne .L354
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L354:
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
	jeq .L363
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L362
	and.l JAGPAD_8,%d0
	jne .L362
.L363:
	move.b #1,302(%a0)
.L362:
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
	jeq .L376
.L369:
	tst.w 286(%a2)
	jle .L370
.L377:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #10,%d0
	jeq .L368
	cmp.w #43,%d0
	jeq .L372
	tst.b 273(%a2)
	jne .L372
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L372:
	move.l 40(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L376:
	tst.w 290(%a2)
	jne .L369
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
	jgt .L377
.L370:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L378
.L368:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L378:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L368
	cmp.w #43,%d0
	jeq .L373
	tst.b 273(%a2)
	jne .L373
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L373:
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
	jeq .L381
	move.l JAGPAD_C,%d0
	and.l 196(%a0),%d0
	jeq .L381
	addq.w #1,286(%a0)
.L381:
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
	jne .L387
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
	jeq .L393
.L388:
	tst.w 286(%a2)
	jle .L389
.L394:
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
.L386:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L387:
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
	jeq .L386
	cmp.w #43,%d0
	jeq .L391
	tst.b 273(%a2)
	jne .L391
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L391:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L389:
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L386
	move.b #1,302(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L393:
	tst.w 290(%a2)
	jne .L388
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
	jgt .L394
	jra .L389
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
	jeq .L397
	move.l JAGPAD_C,%d0
	and.l 196(%a0),%d0
	jeq .L397
	addq.w #1,286(%a0)
.L397:
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
	jeq .L410
.L403:
	tst.w 286(%a2)
	jle .L404
.L411:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #12,%d0
	jeq .L402
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
	move.l 48(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L410:
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
	jgt .L411
.L404:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L412
.L402:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L412:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L402
	cmp.w #43,%d0
	jeq .L407
	tst.b 273(%a2)
	jne .L407
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L407:
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
	jeq .L415
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L419
	addq.w #1,286(%a0)
.L415:
	unlk %fp
	rts
.L419:
	and.l JAGPAD_7,%d0
	jeq .L415
	addq.w #1,286(%a0)
	jra .L415
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
	jne .L423
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
	jeq .L429
.L424:
	tst.w 286(%a2)
	jle .L425
.L430:
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
.L422:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L423:
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
	jeq .L422
	cmp.w #43,%d0
	jeq .L427
	tst.b 273(%a2)
	jne .L427
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L427:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L425:
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L422
	move.b #1,302(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L429:
	tst.w 290(%a2)
	jne .L424
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
	jgt .L430
	jra .L425
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
	jeq .L433
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L437
	addq.w #1,286(%a0)
.L433:
	unlk %fp
	rts
.L437:
	and.l JAGPAD_7,%d0
	jeq .L433
	addq.w #1,286(%a0)
	jra .L433
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
	jeq .L445
.L441:
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L446
.L440:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L446:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L440
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
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L445:
	tst.w 290(%a2)
	jne .L441
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
	jeq .L440
	jra .L446
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
	jeq .L456
.L452:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L457
.L451:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L457:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L451
	cmp.w #43,%d0
	jeq .L454
	tst.b 273(%a2)
	jne .L454
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L454:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L456:
	tst.w 290(%a2)
	jne .L452
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
	jeq .L451
	jra .L457
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
	jne .L466
.L462:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L466:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L462
	cmp.w #43,%d0
	jeq .L464
	tst.b 273(%a2)
	jne .L464
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L464:
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
	jne .L475
.L471:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L475:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L471
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
	jne .L484
.L480:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L484:
	move.w #1,286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L480
	cmp.w #43,%d0
	jeq .L482
	tst.b 273(%a2)
	jne .L482
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L482:
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
	jle .L495
	tst.b 176(%a2)
	jne .L495
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
	jgt .L497
.L489:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L495:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L489
.L497:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L489
	cmp.w #43,%d0
	jeq .L494
	tst.b 273(%a2)
	jne .L494
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L494:
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
	jle .L508
	tst.b 176(%a2)
	jne .L508
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
	jgt .L510
.L502:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L508:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L502
.L510:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L502
	cmp.w #43,%d0
	jeq .L507
	tst.b 273(%a2)
	jne .L507
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L507:
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
	jne .L519
.L515:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L519:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L515
	cmp.w #43,%d0
	jeq .L517
	tst.b 273(%a2)
	jne .L517
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L517:
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
	jgt .L525
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L531
.L524:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L525:
	tst.w 288(%a2)
	jeq .L532
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L533:
	cmp.w #19,%d1
	jle .L524
.L531:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L524
	cmp.w #43,%d0
	jeq .L529
	tst.b 273(%a2)
	jne .L529
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L529:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L532:
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
	jra .L533
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
	jle .L544
	tst.b 176(%a2)
	jeq .L541
.L544:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L546
.L538:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L546:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L538
	cmp.w #43,%d0
	jeq .L543
	tst.b 273(%a2)
	jne .L543
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L543:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L541:
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
	jle .L538
	jra .L546
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
	jgt .L552
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L558
.L551:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L552:
	tst.w 288(%a2)
	jeq .L559
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L560:
	cmp.w #19,%d1
	jle .L551
.L558:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L551
	cmp.w #43,%d0
	jeq .L556
	tst.b 273(%a2)
	jne .L556
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L556:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L559:
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
	jra .L560
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
	jle .L571
	tst.b 176(%a2)
	jeq .L568
.L571:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L573
.L565:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L573:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L565
	cmp.w #43,%d0
	jeq .L570
	tst.b 273(%a2)
	jne .L570
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L570:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L568:
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
	jle .L565
	jra .L573
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
	jle .L582
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
.L582:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L577
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
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L577:
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
	jne .L588
.L584:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L588:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L584
	cmp.w #43,%d0
	jeq .L586
	tst.b 273(%a2)
	jne .L586
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L586:
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
	jle .L597
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
.L597:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L592
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
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L592:
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
	jne .L603
.L599:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L603:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L599
	cmp.w #43,%d0
	jeq .L601
	tst.b 273(%a2)
	jne .L601
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L601:
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
	jle .L612
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
.L612:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L607
	cmp.w #43,%d0
	jeq .L610
	tst.b 273(%a2)
	jne .L610
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L610:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L607:
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
	jne .L618
.L614:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L618:
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
	jeq .L614
	cmp.w #43,%d0
	jeq .L616
	tst.b 273(%a2)
	jne .L616
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L616:
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
	jne .L627
.L623:
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	cmp.w #2,(%a2)
	jeq .L628
.L622:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L627:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L623
	cmp.w #43,%d0
	jeq .L624
	tst.b 273(%a2)
	jne .L624
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
.L624:
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
	jne .L622
.L628:
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
	jne .L634
.L630:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L634:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L630
	cmp.w #43,%d0
	jeq .L632
	tst.b 273(%a2)
	jne .L632
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L632:
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
	jle .L643
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
	jeq .L644
.L638:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L644:
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
.L643:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L638
	cmp.w #43,%d0
	jeq .L641
	tst.b 273(%a2)
	jne .L641
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L641:
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
	jeq .L652
.L647:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L653
.L648:
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
	jne .L654
.L646:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L654:
	clr.b 138(%a2)
	clr.b 106(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L646
	cmp.w #43,%d0
	jeq .L650
	tst.b 273(%a2)
	jne .L650
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L650:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L653:
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
	jeq .L646
	jra .L654
.L652:
	tst.w 286(%a2)
	jne .L647
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
	jle .L648
	jra .L653
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
	jle .L663
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
.L663:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L658
	cmp.w #43,%d0
	jeq .L661
	tst.b 273(%a2)
	jne .L661
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L661:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L658:
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
	jeq .L671
.L666:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L672
.L667:
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
	jne .L673
.L665:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L673:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L665
	cmp.w #43,%d0
	jeq .L669
	tst.b 273(%a2)
	jne .L669
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L669:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L672:
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
	jeq .L665
	jra .L673
.L671:
	tst.w 286(%a2)
	jne .L666
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
	jle .L667
	jra .L672
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
	jeq .L686
	cmp.w #8,%d0
	jeq .L687
.L680:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L688
.L678:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L688:
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
	jeq .L689
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
.L691:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L687:
	tst.w 290(%a2)
	jne .L680
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L678
	jra .L688
.L686:
	tst.w 288(%a2)
	jne .L680
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
	jle .L678
	jra .L688
.L689:
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
	jeq .L690
	cmp.w #43,%d0
	jeq .L684
	tst.b 273(%a2)
	jne .L684
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L684:
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
	jra .L691
.L690:
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
	jra .L691
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
	jne .L699
.L696:
	clr.b 302(%a2)
	move.w raptor_ticks,240(%a2)
	move.b #1,147(%a2)
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L699:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L696
	cmp.w #43,%d0
	jeq .L697
	tst.b 273(%a2)
	jne .L697
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
.L697:
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
	jgt .L705
.L701:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L705:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #28,%d0
	jeq .L701
	cmp.w #43,%d0
	jeq .L703
	tst.b 273(%a2)
	jne .L703
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L703:
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
	jeq .L718
	cmp.w #3,%d0
	jeq .L719
.L712:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L720
.L710:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L720:
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
	jeq .L721
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
.L723:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L719:
	tst.w 290(%a2)
	jne .L712
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L710
	jra .L720
.L718:
	tst.w 288(%a2)
	jne .L712
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
	jle .L710
	jra .L720
.L721:
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
	jeq .L722
	cmp.w #43,%d0
	jeq .L716
	tst.b 273(%a2)
	jne .L716
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L716:
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
	jra .L723
.L722:
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
	jra .L723
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
	jeq .L735
.L729:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L736
.L728:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L736:
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
	jeq .L737
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
.L739:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L735:
	tst.w 288(%a2)
	jne .L729
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
	jle .L728
	jra .L736
.L737:
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
	jeq .L738
	cmp.w #43,%d0
	jeq .L733
	tst.b 273(%a2)
	jne .L733
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L733:
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
	jra .L739
.L738:
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
	jra .L739
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
	jgt .L748
.L745:
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
.L748:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L745
	cmp.w #43,%d0
	jeq .L746
	tst.b 273(%a2)
	jne .L746
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L746:
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
	jne .L757
.L754:
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
.L757:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L754
	cmp.w #43,%d0
	jeq .L755
	tst.b 273(%a2)
	jne .L755
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L755:
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
	jgt .L767
.L763:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jgt .L768
.L765:
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
.L768:
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
.L767:
	clr.b 138(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	jeq .L763
	cmp.w #43,%d0
	jeq .L764
	tst.b 273(%a2)
	jne .L764
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L764:
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
	jle .L765
	jra .L768
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
	jne .L774
	cmp.w #2,14(%a3)
	jeq .L779
.L774:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L780
.L773:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L780:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L773
	cmp.w #43,%d0
	jeq .L777
	tst.b 273(%a2)
	jne .L777
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L777:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L779:
	move.w #1,286(%a2)
	cmp.w #1,(%a2)
	jeq .L781
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L773
	jra .L780
.L781:
	move.l 264(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L773
	jra .L780
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
	jne .L787
	cmp.w #2,14(%a3)
	jeq .L791
.L787:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L792
.L786:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L792:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L786
	cmp.w #43,%d0
	jeq .L789
	tst.b 273(%a2)
	jne .L789
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L789:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L791:
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
	jeq .L786
	jra .L792
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
	jge .L801
.L797:
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z12sfxThrowMaleP12SoundHandler
.L801:
	cmp.w #5,%d0
	jgt .L802
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z13sfxThrowNinjaP12SoundHandler
.L802:
	cmp.w #6,%d0
	jne .L797
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
	jne .L808
.L804:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L808:
	clr.b 141(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L804
	cmp.w #43,%d0
	jeq .L806
	tst.b 273(%a2)
	jne .L806
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L806:
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
	jne .L816
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
.L816:
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
	jle .L828
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L818
	move.w 286(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #21,%d0
	jle .L829
	cmp.w #22,%d0
	jeq .L830
	cmp.w #23,%d0
	jeq .L831
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
	jeq .L832
.L825:
	move.w raptor_ticks,240(%a2)
.L818:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L829:
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
	jne .L825
.L832:
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
	jle .L825
	clr.w 286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #32,%d0
	jeq .L818
	cmp.w #43,%d0
	jeq .L826
	tst.b 273(%a2)
	jne .L826
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L826:
	move.l 128(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L828:
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
.L830:
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
	jne .L825
	jra .L832
.L831:
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
	jne .L825
	jra .L832
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
	jeq .L844
	tst.w 14(%a3)
	jle .L845
.L841:
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
.L837:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L844:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L846
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
.L847:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L846:
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
	jra .L847
.L845:
	clr.b 140(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L841
	cmp.w #43,%d0
	jeq .L842
	tst.b 273(%a2)
	jne .L842
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L842:
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
	jra .L837
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
	jne .L850
	move.w #1,286(%a2)
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,268(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L857
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
.L850:
	clr.b 138(%a2)
	clr.b 140(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L849
	cmp.w #43,%d0
	jeq .L854
	tst.b 273(%a2)
	jne .L854
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L854:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L857:
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
	jra .L850
.L849:
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
	jls .L881
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838528,8(%a0)
	move.w %a1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838528,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #6,%d1
	jls .L882
.L860:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L882:
	and.l #65535,%d1
	add.l %d1,%d1
	move.w .L868(%pc,%d1.l),%d0
	jmp %pc@(2,%d0:w)
.L868:
	.word .L863-.L868
	.word .L864-.L868
	.word .L865-.L868
	.word .L866-.L868
	.word .L860-.L868
	.word .L860-.L868
	.word .L867-.L868
.L881:
	subq.w #8,%d0
	move.w %d0,250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838528,8(%a0)
	move.w %a1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838528,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #6,%d1
	jhi .L860
	jra .L882
.L864:
	tst.b 272(%a2)
	jne .L883
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975120,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z12sfxKanoKnifeP12SoundHandler
.L865:
	tst.b 272(%a2)
	jne .L884
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L866:
	tst.b 272(%a2)
	jne .L885
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975216,-(%sp)
.L879:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L867:
	tst.b 272(%a2)
	jeq .L878
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975264,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L863:
	tst.b 272(%a2)
	jne .L886
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975072,-(%sp)
.L887:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L878:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975264,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L886:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975072,-(%sp)
	jra .L887
.L885:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975216,-(%sp)
	jra .L879
.L884:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L883:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975120,-(%sp)
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
	jne .L890
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	cmp.w #2,(%a2)
	jeq .L891
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L921
.L892:
	move.w (%a2),%d0
	cmp.w #1,%d0
	jeq .L922
	cmp.w #2,%d0
	jeq .L897
.L912:
	move.w 268(%a2),%d0
.L896:
	move.w raptor_ticks,%d1
	move.w 288(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L899
	move.w %d0,%d4
	add.w %d0,%d4
	move.w %d4,%d3
	lsl.w #3,%d3
	sub.w %d4,%d3
	add.w %d3,252(%a2)
	move.w %d1,288(%a2)
.L899:
	cmp.w #1,%d0
	jeq .L923
	cmp.w #-1,%d0
	jne .L902
	tst.w 248(%a2)
	jlt .L919
.L902:
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
.L905:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L924
.L889:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L890:
	tst.w 286(%a2)
	jne .L906
	move.w #1,286(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L906:
	move.w 90(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L919
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
	jne .L889
.L924:
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L923:
	cmp.w #320,248(%a2)
	jle .L902
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
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L889
	cmp.w #43,%d0
	jeq .L908
	tst.b 273(%a2)
	jne .L908
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L908:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#7196
	unlk %fp
	jmp (%a0)
.L921:
	cmp.w #2,(%a2)
	jne .L893
.L891:
	pea 8.w
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jne .L892
.L893:
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
	jra .L905
.L897:
	tst.w 290(%a2)
	jne .L912
	move.w #1,290(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d1
	lsl.w #6,%d1
	add.w %d1,252(%a2)
	jra .L896
.L922:
	tst.w 290(%a2)
	jne .L912
	move.w #1,290(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d1
	lsl.w #4,%d1
	add.w %d1,252(%a2)
	jra .L896
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
	move.l #12838528,8(%a0)
	move.w %d1,240(%a2)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jeq .L935
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L935:
	tst.b 272(%a2)
	jeq .L932
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975024,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L932:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975024,-(%sp)
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
	jeq .L938
	move.w raptor_ticks,%d1
	move.w 286(%a2),%a1
	addq.l #4,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jgt .L955
	cmp.w #6,%d0
	jgt .L940
.L956:
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
.L937:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L955:
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.w %d1,286(%a2)
	cmp.w #6,%d0
	jle .L956
.L940:
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
	jeq .L937
	cmp.w #43,%d0
	jeq .L943
	tst.b 273(%a2)
	jne .L943
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L943:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L938:
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L957
	move.w raptor_ticks,%d0
	cmp.w #95,288(%a2)
	jgt .L958
.L945:
	move.w 286(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jle .L947
	tst.b 177(%a2)
	jeq .L959
.L946:
	move.w 268(%a2),%d1
	move.w %d1,%d2
	lsl.w #5,%d2
	add.w %d2,252(%a2)
	cmp.w #1,%d1
	jeq .L960
	cmp.w #-1,%d1
	jeq .L961
.L952:
	move.w #3,%a0
	move.w %d0,286(%a2)
.L962:
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
	jra .L937
.L958:
	move.w 286(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jgt .L946
.L947:
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
	jra .L937
.L957:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w raptor_ticks,%d0
	cmp.w #95,288(%a2)
	jle .L945
	jra .L958
.L961:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jle .L952
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,290(%a2)
	move.w #4,%a0
.L963:
	move.w %d0,286(%a2)
	jra .L962
.L959:
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
	jra .L937
.L960:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jge .L952
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,290(%a2)
	move.w #4,%a0
	jra .L963
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
	jeq .L969
	cmp.w #6,%d0
	jeq .L969
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
	jne .L984
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
.L968:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L969:
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
	jle .L968
	move.w 288(%a2),%d2
	move.w 286(%a2),%d1
	tst.w %d2
	jne .L972
	addq.w #1,%d1
	move.w %d1,286(%a2)
	cmp.w #4,%d1
	jne .L973
	move.w #3,286(%a2)
	move.w #1,288(%a2)
.L974:
	move.w %d0,240(%a2)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L972:
	subq.w #1,%d1
	move.w %d1,286(%a2)
.L973:
	tst.w %d1
	jne .L974
	cmp.w #1,%d2
	jne .L974
.L984:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L968
	cmp.w #43,%d0
	jeq .L977
	tst.b 273(%a2)
	jne .L977
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L977:
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
	jle .L991
	tst.w 288(%a2)
	jeq .L996
.L991:
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jgt .L997
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
.L990:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L997:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L990
	cmp.w #43,%d0
	jeq .L994
	tst.b 273(%a2)
	jne .L994
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L994:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L996:
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
	jra .L991
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
	jgt .L1003
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L1013
	and.l JAGPAD_8,%d0
	jne .L1013
.L1003:
	move.w 288(%a2),%d0
	jeq .L1015
	cmp.w #1,%d0
	jeq .L1016
.L1006:
	tst.b 176(%a2)
	jeq .L1008
.L1007:
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	move.w 290(%a2),%d0
	cmp.l %a1,%a0
	jle .L1010
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.w %d1,240(%a2)
.L1010:
	cmp.w #19,%d0
	jgt .L1017
.L1008:
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
.L1002:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1016:
	tst.b 176(%a2)
	jne .L1007
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	tst.b 176(%a2)
	jne .L1007
	jra .L1008
.L1013:
	move.w 288(%a2),%d0
	cmp.w #1,%d0
	jne .L1006
	jra .L1016
.L1015:
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z17sfxKanoCannonBallP12SoundHandler
	move.w 288(%a2),%d0
	addq.l #4,%sp
	cmp.w #1,%d0
	jne .L1006
	jra .L1016
.L1017:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1002
	cmp.w #43,%d0
	jeq .L1012
	tst.b 273(%a2)
	jne .L1012
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1012:
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
	jeq .L1037
	tst.w 286(%a2)
	jne .L1037
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
	jle .L1039
.L1026:
	tst.w 286(%a2)
	jne .L1029
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L1029:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1031
.L1043:
	move.w 288(%a2),%d0
	cmp.w #19,%d0
	jgt .L1033
.L1044:
	move.w 286(%a2),%d0
.L1030:
	tst.w %d0
	jne .L1036
	tst.b 176(%a2)
	jeq .L1040
.L1036:
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
.L1022:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1037:
	move.w 290(%a2),%d0
	cmp.w #199,%d0
	jgt .L1026
.L1039:
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1041
	cmp.w #-1,%d0
	jeq .L1042
.L1028:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1030
.L1045:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1043
.L1031:
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
	jle .L1044
.L1033:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1022
	cmp.w #43,%d0
	jeq .L1035
	tst.b 273(%a2)
	jne .L1035
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1035:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1040:
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
.L1041:
	pea 64.w
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jne .L1026
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L1028
.L1042:
	pea 64.w
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jne .L1026
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1030
	jra .L1045
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
	jeq .L1056
	cmp.w #-1,%d0
	jeq .L1057
.L1054:
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
.L1056:
	clr.l -(%sp)
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jeq .L1052
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L1054
.L1057:
	clr.l -(%sp)
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jeq .L1052
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
.L1052:
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
	jne .L1063
	tst.w 286(%a2)
	jne .L1063
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1077
	cmp.w #-1,%d0
	jeq .L1078
	move.w #1,286(%a2)
.L1068:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
.L1075:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 610(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1062:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1063:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1069
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jeq .L1079
	tst.w %d0
	jne .L1073
.L1080:
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
	jra .L1062
.L1069:
	move.w 286(%a2),%d0
	jeq .L1080
.L1073:
	move.w 268(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	jra .L1075
.L1079:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1062
	cmp.w #43,%d0
	jeq .L1072
	tst.b 273(%a2)
	jne .L1072
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1072:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1078:
	clr.l -(%sp)
	move.l %a5,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	move.w 254(%a5),%a5
	tst.b %d0
	jeq .L1081
	lea (68,%a5),%a5
	move.w %a5,254(%a2)
	move.w 268(%a2),%d0
	move.w #1,286(%a2)
	jra .L1068
.L1077:
	clr.l -(%sp)
	move.l %a5,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	move.w 254(%a5),%a5
	tst.b %d0
	jeq .L1082
	lea (-68,%a5),%a5
	move.w %a5,254(%a2)
	move.w 268(%a2),%d0
	move.w #1,286(%a2)
	jra .L1068
.L1082:
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
.L1083:
	move.w #1,286(%a2)
	jra .L1068
.L1081:
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
	jra .L1083
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
	jgt .L1089
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L1097
.L1093:
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
.L1088:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1089:
	tst.b 176(%a2)
	jeq .L1098
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1099
.L1092:
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L1100:
	cmp.w #19,%d1
	jle .L1093
.L1097:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1088
	cmp.w #43,%d0
	jeq .L1095
	tst.b 273(%a2)
	jne .L1095
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1095:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1099:
	moveq #-4,%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
	jra .L1100
.L1098:
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
	jge .L1092
	jra .L1099
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
	jeq .L1112
	clr.w %d2
.L1105:
	add.w %d0,%d2
	move.w %d2,252(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jne .L1113
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975360,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,240(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1113:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975360,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,240(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1112:
	moveq #48,%d2
	jra .L1105
	.even
	.globl	__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 177(%a2)
	jeq .L1143
	tst.b 129(%a2)
	jeq .L1115
	tst.w 288(%a2)
	jeq .L1125
	move.w #1,288(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L1125:
	cmp.w #-1,290(%a2)
	jeq .L1144
	tst.b 272(%a2)
	jeq .L1132
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8493168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1128:
	neg.w 290(%a2)
	move.w 130(%a2),%d0
	addq.w #1,%d0
	move.w %d0,130(%a2)
	cmp.w #8,%d0
	jle .L1115
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
.L1139:
	moveq #-1,%d0
	move.l %d0,112(%a0)
	move.l %d0,4(%a0)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1115
	cmp.w #43,%d0
	jeq .L1130
	tst.b 273(%a2)
	jne .L1130
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1130:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1117:
	move.w 268(%a2),%d1
.L1122:
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
.L1115:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1143:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1117
	tst.w 286(%a2)
	jne .L1145
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1146
.L1119:
	move.w 268(%a2),%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	add.w %d0,%d0
	add.w %d0,252(%a2)
	cmp.w #1,%d1
	jeq .L1147
.L1120:
	cmp.w #-1,%d1
	jne .L1122
	tst.w 248(%a2)
	jlt .L1139
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
	jra .L1115
.L1132:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8493168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1128
.L1145:
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
	jne .L1119
.L1146:
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
	jne .L1120
.L1147:
	cmp.w #320,248(%a2)
	jgt .L1139
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
	jra .L1115
.L1144:
	tst.b 272(%a2)
	jeq .L1131
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975360,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1128
.L1131:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975360,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1128
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
	jne .L1153
	move.w #1,286(%a2)
	move.w 268(%a2),%d1
	move.w 254(%a3),%d3
	cmp.w #-1,%d1
	jeq .L1177
	move.w %d3,%d0
	add.w #48,%d0
	sub.w 254(%a2),%d0
	move.w %d0,108(%a2)
	cmp.w #149,%d0
	jle .L1178
.L1156:
	clr.w 108(%a2)
	cmp.w #-1,%d1
	jeq .L1179
.L1158:
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
.L1153:
	tst.w 108(%a2)
	jle .L1160
	tst.b 132(%a2)
	jeq .L1160
	tst.w 290(%a2)
	jne .L1160
	move.l 134(%a2),%d0
	move.w 254(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1180
	jgt .L1181
.L1162:
	move.w raptor_ticks,288(%a2)
.L1163:
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
.L1152:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1160:
	move.w 288(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1163
	tst.w 290(%a2)
	jeq .L1182
.L1164:
	tst.b 132(%a2)
	jeq .L1163
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1163
	move.l 134(%a2),%d0
	move.w 254(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1183
	jgt .L1184
	move.w raptor_ticks,240(%a2)
.L1186:
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
	jra .L1152
.L1177:
	move.w 254(%a2),%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,108(%a2)
	cmp.w #149,%d0
	jgt .L1156
.L1178:
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
	jne .L1158
.L1179:
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
	jra .L1153
.L1182:
	move.w #1,290(%a2)
	move.w 110(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	addq.l #8,%sp
	jra .L1164
.L1180:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jlt .L1162
	clr.b 132(%a2)
.L1185:
	move.w raptor_ticks,288(%a2)
	jra .L1163
.L1181:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jgt .L1162
	clr.b 132(%a2)
	jra .L1185
.L1184:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jgt .L1166
.L1169:
	clr.b 132(%a2)
.L1173:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #55,%d0
	jeq .L1152
	cmp.w #43,%d0
	jeq .L1172
	tst.b 273(%a2)
	jne .L1172
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1172:
	move.l 220(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1183:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jge .L1169
.L1166:
	move.b 132(%a2),%d0
	jeq .L1173
	move.w raptor_ticks,240(%a2)
	jra .L1186
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
	move.l #12838528,8(%a1)
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.l #12838528,44(%a1)
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
	jne .L1194
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975360,8(%fp)
	unlk %fp
	jra jsfLoadClut
.L1194:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975360,8(%fp)
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
	jle .L1197
	move.w %d1,290(%a2)
.L1197:
	move.w 288(%a2),%d0
	cmp.w #7,%d0
	jgt .L1198
	move.w 240(%a2),%a1
	addq.l #1,%a1
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.l %a0,%a1
	jlt .L1212
.L1199:
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	jeq .L1213
.L1204:
	move.w 244(%a2),%d2
	move.w %d2,%d0
	add.w #48,%d0
	sub.w 244(%a4),%d0
	move.w %d0,120(%a2)
	add.w #32,%d2
	move.w %d2,116(%a2)
	tst.w %d0
	jlt .L1214
.L1206:
	move.l 92(%a2),%a0
	move.l %a0,%d2
	add.l %a0,%d2
	add.l %a0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w %d0,%a1
	cmp.w #1,%d1
	jeq .L1215
.L1208:
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
	jeq .L1216
.L1196:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1198:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.w #8,%d0
	jne .L1199
	tst.w 286(%a2)
	jeq .L1217
	move.l 298(%a4),%a0
	cmp.w #55,(%a0)
	jeq .L1218
.L1201:
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
	jne .L1204
.L1213:
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
	jpl .L1220
	addq.l #1,%d2
.L1220:
	asr.l #1,%d2
	sub.w %d2,%a0
	move.w %a0,116(%a2)
	tst.w %d0
	jge .L1206
	jra .L1214
.L1216:
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1214:
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
	jne .L1208
.L1215:
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
	jne .L1196
	jra .L1216
.L1212:
	move.w 122(%a2),%d2
	move.w %d2,%d3
	add.w %d2,%d3
	add.w %d3,118(%a2)
	neg.w %d2
	move.w %d2,122(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w %d1,240(%a2)
	jra .L1199
.L1217:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z22sfxScorpionGetOverHereP12SoundHandler
	addq.l #4,%sp
	move.l 298(%a4),%a0
	cmp.w #55,(%a0)
	jne .L1201
.L1218:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1196
	cmp.w #43,%d0
	jeq .L1203
	tst.b 273(%a2)
	jne .L1203
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1203:
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
	jgt .L1229
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
.L1224:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1229:
	move.l 298(%a0),%a1
	move.w (%a1),%d1
	jeq .L1224
	cmp.w #43,%d1
	jeq .L1227
	tst.b 273(%a0)
	jne .L1227
	move.l 92(%a0),%d1
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%d1
	lsl.l #6,%d1
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d1.l)
.L1227:
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
	jeq .L1240
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
.L1236:
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
	move.l #12838528,8(%a0)
	move.l #12838528,44(%a3)
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
	jne .L1241
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975792,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1241:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975792,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1240:
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
	jra .L1236
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
	jgt .L1244
	move.w 286(%a2),%d0
.L1245:
	cmp.w #14,%d0
	jgt .L1260
.L1250:
	tst.w 288(%a2)
	jne .L1258
.L1253:
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
	cmp.w #-1,%d0
	jeq .L1261
	cmp.w #1,%d0
	jeq .L1256
.L1254:
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
.L1243:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1244:
	tst.b 176(%a2)
	jeq .L1262
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1263
.L1247:
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #6,%d0
	jeq .L1248
.L1264:
	cmp.w #10,%d0
	jeq .L1248
	cmp.w #8,%d0
	jne .L1245
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.w 288(%a2)
	jeq .L1253
	jra .L1258
.L1256:
	cmp.w #309,%d1
	jle .L1254
	jsr __Z10cameraGetXv
	add.w #-37,%d0
	move.w %d0,254(%a2)
	move.b #1,140(%a3)
	move.w #1,288(%a2)
.L1258:
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
	jra .L1243
.L1263:
	moveq #-4,%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #6,%d0
	jne .L1264
	jra .L1248
.L1260:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1243
	cmp.w #43,%d0
	jeq .L1252
	tst.b 273(%a2)
	jne .L1252
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d0.l)
.L1252:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1248:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d1.l)
	cmp.w #14,%d0
	jle .L1250
	jra .L1260
.L1262:
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
	jge .L1247
	jra .L1263
.L1261:
	cmp.w #10,%d1
	jgt .L1254
	jsr __Z10cameraGetXv
	add.w #357,%d0
	move.w %d0,254(%a2)
	move.b #1,140(%a3)
	move.w #1,288(%a2)
	jra .L1258
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
	move.l #12838528,8(%a0)
	move.w %d1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838528,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	moveq #16,%d1
	move.l %d1,40(%a0)
	move.l %d1,36(%a0)
	tst.b 272(%a2)
	jne .L1272
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975312,-(%sp)
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
.L1272:
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975312,-(%sp)
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
	jeq .L1285
	tst.w 286(%a2)
	jne .L1281
	move.w #1,286(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L1281:
	pea 5.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1286
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
.L1274:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1286:
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
	jeq .L1274
	cmp.w #43,%d0
	jeq .L1283
	tst.b 273(%a2)
	jne .L1283
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1283:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1285:
	pea 9.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1276
	move.w 268(%a2),%d0
	move.w %d0,%d3
	add.w %d0,%d3
	move.w %d3,%d1
	lsl.w #3,%d1
	sub.w %d3,%d1
	add.w %d1,252(%a2)
	cmp.w #1,%d0
	jeq .L1287
	cmp.w #-1,%d0
	jeq .L1288
.L1279:
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
	jne .L1274
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1287:
	cmp.w #320,248(%a2)
	jle .L1279
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
	jeq .L1274
.L1289:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1288:
	tst.w 248(%a2)
	jge .L1279
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
	jne .L1289
	jra .L1274
.L1276:
	move.w 268(%a2),%d0
	jra .L1279
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
	jne .L1297
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
.L1297:
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
	jne .L1301
	move.l 158(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L1307
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
.L1303:
	cmp.w #5,%d0
	jle .L1301
	move.w #1,286(%a2)
.L1301:
	move.w 240(%a2),%a1
	lea (180,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1308
.L1304:
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
.L1308:
	move.l %a2,-(%sp)
	jsr __Z15fighterUnfreezeP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1304
	cmp.w #43,%d0
	jeq .L1305
	tst.b 273(%a2)
	jne .L1305
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1305:
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
.L1307:
	move.w 290(%a2),%d0
	jra .L1303
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
	jle .L1315
	add.w #12,%d0
	move.w %d0,246(%a2)
	move.w %d1,240(%a2)
.L1315:
	cmp.w #89,%d0
	jgt .L1319
.L1313:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1319:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1313
	cmp.w #43,%d0
	jeq .L1317
	tst.b 273(%a2)
	jne .L1317
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1317:
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
	jle .L1326
	tst.b %d0
	jeq .L1333
	add.w #14,286(%a2)
	move.w %d1,240(%a2)
.L1326:
	tst.b %d0
	jne .L1328
	cmp.w #269,286(%a2)
	jle .L1329
.L1328:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1324
	cmp.w #43,%d0
	jeq .L1331
	tst.b 273(%a2)
	jne .L1331
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1331:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1329:
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
.L1324:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1333:
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
	jra .L1326
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
	jne .L1339
	cmp.w #2,14(%a3)
	jeq .L1347
.L1339:
	tst.w 288(%a2)
	jeq .L1348
	tst.w 14(%a3)
	jeq .L1349
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
.L1338:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1349:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1338
	cmp.w #43,%d0
	jeq .L1344
	tst.b 273(%a2)
	jne .L1344
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1344:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1348:
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1341
	move.w #1,288(%a2)
.L1341:
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
	jra .L1338
.L1347:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1339
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
	jeq .L1357
	cmp.w #1,%d0
	jeq .L1358
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
.L1358:
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
.L1357:
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
	jne .L1361
	move.w 240(%a2),%a1
	lea (29,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1362
	move.w #1,286(%a2)
.L1362:
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
.L1360:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1361:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1360
	tst.w 290(%a2)
	jne .L1364
	move.w 288(%a2),%d0
	move.w 268(%a2),%a1
	cmp.w #21,%d0
	jle .L1374
	cmp.w #22,%d0
	jeq .L1375
	cmp.w #23,%d0
	jeq .L1376
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
	jeq .L1377
.L1369:
	move.w raptor_ticks,240(%a2)
.L1379:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1364:
	cmp.w #23,288(%a2)
	jle .L1378
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
	jne .L1369
.L1380:
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
	jeq .L1369
	cmp.w #43,%d0
	jeq .L1372
	tst.b 273(%a2)
	jne .L1372
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1372:
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
	jra .L1379
.L1377:
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
	jra .L1379
.L1374:
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
	jne .L1369
	jra .L1377
.L1378:
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
	jne .L1369
	jra .L1380
.L1375:
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
	jne .L1369
	jra .L1377
.L1376:
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
	jne .L1369
	jra .L1377
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
	jle .L1385
	move.w 288(%a2),%d0
	jeq .L1401
	cmp.w #1,%d0
	jeq .L1402
	move.w 286(%a2),%d0
	cmp.w #18,%d0
	jeq .L1403
	cmp.w #19,%d0
	jeq .L1404
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
	jne .L1405
.L1398:
	addq.w #1,%d0
	move.w %d0,286(%a2)
	cmp.w #19,%d0
	jle .L1391
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1391
	cmp.w #43,%d0
	jeq .L1399
	tst.b 273(%a2)
	jne .L1399
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1399:
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1391:
	move.w raptor_ticks,240(%a2)
.L1385:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1401:
	cmp.w #1,286(%a2)
	jls .L1406
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
	jeq .L1407
.L1390:
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
.L1408:
	move.w raptor_ticks,240(%a2)
	jra .L1385
.L1405:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	addq.l #8,%sp
	jra .L1398
.L1404:
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
	jeq .L1398
	jra .L1405
.L1406:
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
	jne .L1390
.L1407:
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
	jra .L1408
.L1402:
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	cmp.w #230,290(%a2)
	jgt .L1393
	tst.b 176(%a2)
	jeq .L1409
.L1393:
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
.L1410:
	move.w raptor_ticks,240(%a2)
	jra .L1385
.L1409:
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
	jra .L1410
.L1403:
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
	jeq .L1398
	jra .L1405
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
	jeq .L1426
	cmp.w #1,%d0
	jeq .L1423
.L1428:
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
.L1415:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1426:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1427
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
	move.l #12838528,8(%a0)
	move.w raptor_ticks,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838528,44(%a0)
	moveq #104,%d1
	move.l %d1,144(%a0)
	moveq #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	tst.b 272(%a2)
	jeq .L1424
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975408,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
.L1431:
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
	jra .L1415
.L1427:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1428
.L1423:
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1429
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1430
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
.L1432:
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
	jra .L1415
.L1424:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975408,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jra .L1431
.L1430:
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
	jra .L1432
.L1429:
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
	jeq .L1415
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
	jne .L1438
	tst.b 176(%a2)
	jeq .L1458
.L1439:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1446
	move.w 288(%a2),%d0
.L1447:
	cmp.w #19,%d0
	jgt .L1448
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
.L1442:
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
.L1437:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1438:
	tst.b 176(%a2)
	jne .L1439
.L1448:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1437
	cmp.w #43,%d0
	jeq .L1449
	tst.b 273(%a2)
	jne .L1449
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1449:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1458:
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
	jeq .L1459
	cmp.w #1,%d0
	jne .L1442
	cmp.w #261,%d1
	jle .L1442
	move.w #1,286(%a2)
.L1460:
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
	jra .L1437
.L1446:
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
	jra .L1447
.L1459:
	cmp.w #10,%d1
	jgt .L1442
	move.w #1,286(%a2)
	jra .L1460
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
	jeq .L1472
	cmp.w #1,288(%a2)
	jeq .L1473
.L1467:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1473:
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
.L1472:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1474
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
.L1475:
	cmp.w #1,288(%a2)
	jne .L1467
	jra .L1473
.L1474:
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
	jra .L1475
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
	jeq .L1479
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1479:
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
	jeq .L1483
	tst.w 286(%a2)
	jne .L1485
	cmp.w #1,14(%a3)
	jeq .L1489
.L1485:
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
.L1483:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1489:
	move.w #1,286(%a2)
	move.w (%a2),%d0
	jne .L1490
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
	jra .L1483
.L1490:
	cmp.w #1,%d0
	jne .L1485
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
	jra .L1483
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
	jeq .L1495
	tst.b 144(%a2)
	jne .L1498
.L1495:
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
.L1498:
	clr.b 142(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1495
	cmp.w #43,%d0
	jeq .L1496
	tst.b 273(%a2)
	jne .L1496
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1496:
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
	jeq .L1501
	tst.b 144(%a2)
	jne .L1505
.L1501:
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
.L1505:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1506
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
.L1507:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1506:
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
	jra .L1507
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
	jne .L1513
	move.w raptor_ticks,%a0
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jle .L1512
	move.w 286(%a2),%d0
	jeq .L1522
	cmp.w #1,%d0
	jeq .L1523
.L1512:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1513:
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1512
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1512
	cmp.w #43,%d0
	jeq .L1520
	tst.b 273(%a2)
	jne .L1520
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1520:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1523:
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1512
	tst.w 290(%a2)
	jeq .L1524
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1518
.L1525:
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
	jeq .L1512
	cmp.w #43,%d0
	jeq .L1519
	tst.b 273(%a0)
	jne .L1519
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1519:
	move.l 280(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1522:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1516
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 14(%a4)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1518:
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
.L1524:
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
	jeq .L1518
	jra .L1525
.L1516:
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
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jls .L1557
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1557:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1539(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1539:
	.word .L1531-.L1539
	.word .L1532-.L1539
	.word .L1533-.L1539
	.word .L1534-.L1539
	.word .L1535-.L1539
	.word .L1536-.L1539
	.word .L1537-.L1539
	.word .L1538-.L1539
.L1537:
	tst.b 272(%a2)
	jne .L1558
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976560,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1538:
	tst.b 272(%a2)
	jeq .L1555
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976608,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1531:
	tst.b 272(%a2)
	jne .L1559
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976272,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1532:
	tst.b 272(%a2)
	jne .L1560
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976320,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1533:
	tst.b 272(%a2)
	jne .L1561
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976368,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1534:
	tst.b 272(%a2)
	jne .L1562
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976416,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1535:
	tst.b 272(%a2)
	jne .L1563
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976512,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1536:
	tst.b 272(%a2)
	jne .L1564
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976464,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1555:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976608,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1558:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976560,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1564:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976464,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1563:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976512,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1562:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976416,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1561:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976368,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1560:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976320,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1559:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976272,8(%fp)
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
	jeq .L1584
.L1567:
	tst.w 14(%a3)
	jne .L1570
	tst.w 286(%a2)
	jne .L1570
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1570
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
.L1570:
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
	jle .L1585
	tst.w 290(%a2)
	jne .L1573
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
	jle .L1574
.L1575:
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
.L1572:
	move.w 268(%a2),%a0
	cmp.w #24,%d2
	jle .L1586
.L1579:
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
.L1566:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1585:
	move.w 288(%a2),%d2
	move.w 250(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #24,%d2
	jgt .L1579
.L1586:
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
.L1573:
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
	jle .L1577
.L1578:
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
	jra .L1572
.L1584:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1567
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1566
	cmp.w #43,%d0
	jeq .L1569
	tst.b 273(%a2)
	jne .L1569
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1569:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1577:
	cmp.w #182,%d0
	jeq .L1578
	move.w %d1,240(%a2)
	jra .L1572
.L1574:
	cmp.w #166,%d0
	jeq .L1575
	move.w %d1,240(%a2)
	jra .L1572
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
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jne .L1596
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976656,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1596:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976656,8(%fp)
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
	jle .L1598
	move.w 14(%a3),%d1
	cmp.w #2,%d1
	jeq .L1616
	cmp.w #3,%d1
	jeq .L1603
.L1601:
	move.w 288(%a2),%d1
.L1604:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	cmp.w #1,%d1
	jeq .L1617
.L1605:
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
.L1598:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1616:
	tst.w 286(%a2)
	jne .L1601
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #72,%d0
	jeq .L1598
	cmp.w #43,%d0
	jeq .L1602
	tst.b 273(%a0)
	jne .L1602
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1602:
	move.l 288(%a5),%a1
	move.l %a1,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a1),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1603:
	move.w 288(%a2),%d1
	jne .L1604
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
	jra .L1598
.L1617:
	pea 8.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1605
	move.w raptor_ticks,%d0
	move.w 290(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1607
	move.w %d0,290(%a2)
	addq.w #1,292(%a2)
	tst.w 294(%a2)
	jeq .L1618
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
.L1607:
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
	jle .L1605
	move.w #1,292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1598
	cmp.w #43,%d0
	jeq .L1611
	tst.b 273(%a2)
	jne .L1611
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1611:
	move.l 268(%a5),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1618:
	move.w #1,294(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxKanoHeartbeatP12SoundHandler
	move.w 246(%a2),%a0
	move.w 254(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,268(%a2)
	jeq .L1619
	clr.w %d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
.L1620:
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
	jra .L1607
.L1619:
	moveq #40,%d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
	jra .L1620
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
	jeq .L1628
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
.L1628:
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
	jne .L1631
	move.w raptor_ticks,%d0
	move.w %d0,%a3
	move.w 240(%a2),%a1
	addq.l #2,%a1
	cmp.l %a3,%a1
	jlt .L1636
	cmp.w #5,290(%a2)
	jle .L1630
.L1637:
	move.w #1,286(%a2)
	clr.w 290(%a2)
	move.w raptor_ticks,240(%a2)
.L1630:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1631:
	cmp.w #1,292(%a2)
	jne .L1630
	tst.w 290(%a2)
	jne .L1630
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
	jeq .L1630
	cmp.w #43,%d0
	jeq .L1634
	tst.b 273(%a2)
	jne .L1634
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1634:
	move.l 264(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1636:
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
	jle .L1630
	jra .L1637
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
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jne .L1647
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975168,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1647:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975168,8(%fp)
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
	jne .L1650
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1661
.L1649:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1650:
	cmp.w #1,%d0
	jne .L1649
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1649
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1649
	cmp.w #43,%d0
	jeq .L1657
	tst.b 273(%a2)
	jne .L1657
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1657:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#15372
	unlk %fp
	jmp (%a0)
.L1661:
	pea 6.w
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	tst.b %d0
	jeq .L1652
	tst.w 286(%a2)
	jne .L1652
	move.l 438(%a2),%a0
	cmp.w #3,14(%a0)
	jeq .L1662
.L1653:
	pea 8.w
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1656
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
.L1656:
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
.L1652:
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
.L1662:
	tst.w 294(%a2)
	jne .L1653
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxRaidenHeadZapP12SoundHandler
	move.w #1,294(%a2)
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #74,%d0
	jeq .L1663
	cmp.w #43,%d0
	jeq .L1655
	tst.b 273(%a0)
	jne .L1655
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d3
	move.l %d3,4(%a1,%d0.l)
.L1655:
	move.l 296(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	move.l 438(%a2),%a0
	lea (12,%sp),%sp
	jra .L1653
.L1663:
	move.l 438(%a2),%a0
	jra .L1653
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
	jne .L1669
	tst.w 294(%a2)
	jne .L1670
	tst.b 272(%a2)
	jeq .L1671
	pea 16.w
	pea 14.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1670:
	pea 4.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1672
.L1684:
	tst.w 294(%a2)
	jne .L1673
	tst.b 272(%a2)
	jeq .L1674
	pea 16.w
	pea 14.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1673:
	move.w #1,286(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,292(%a2)
	clr.w 294(%a2)
.L1672:
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
.L1668:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1669:
	cmp.w #1,%d0
	jne .L1668
	move.w 290(%a2),%d0
	jne .L1676
	tst.w 288(%a2)
	jeq .L1683
	tst.w 294(%a2)
	jne .L1678
.L1685:
	move.w 240(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1678
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
.L1678:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1679
	cmp.w #1,294(%a2)
	jne .L1679
	move.w #1,290(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra __Z7sfxThudP12SoundHandler
.L1671:
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
	jne .L1684
	jra .L1672
.L1679:
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
	jgt .L1668
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1676:
	cmp.w #1,%d0
	jne .L1668
	move.w #1,286(%a2)
	clr.w 288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L1668
	cmp.w #43,%d0
	jeq .L1680
	tst.b 273(%a2)
	jne .L1680
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1680:
	move.l 264(%a0),%a1
	move.l %a1,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1674:
	pea 16.w
	pea 15.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.w #1,286(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,292(%a2)
	clr.w 294(%a2)
	jra .L1672
.L1683:
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
	jne .L1678
	jra .L1685
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
	jne .L1691
	move.w raptor_ticks,%d0
	move.w %d0,%a1
	move.w 240(%a2),%a3
	lea (59,%a3),%a3
	cmp.l %a3,%a1
	jle .L1692
	move.w 288(%a2),%d1
	jeq .L1708
	tst.b 132(%a2)
	jeq .L1694
	cmp.w #1,%d1
	jeq .L1709
.L1694:
	pea 14.w
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1699
	move.w #1,286(%a2)
.L1699:
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
.L1690:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1691:
	cmp.w #1,%d0
	jeq .L1701
.L1692:
	move.w 294(%a2),%d0
.L1702:
	cmp.w #1,%d0
	jne .L1690
	move.w 240(%a2),%a3
	lea (59,%a3),%a3
	move.w raptor_ticks,%a1
	cmp.l %a3,%a1
	jle .L1690
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #67,%d0
	jeq .L1690
	cmp.w #43,%d0
	jeq .L1705
	tst.b 273(%a2)
	jne .L1705
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1705:
	move.l 268(%a0),%a1
	move.l %a1,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1701:
	move.w 294(%a2),%d0
	jne .L1702
	move.l 650(%a2),%a1
	move.l 434(%a1),%d1
	move.l 298(%a1),%a3
	move.w (%a3),%d0
	cmp.w #70,%d0
	jeq .L1703
	cmp.w #43,%d0
	jeq .L1704
	tst.b 273(%a1)
	jne .L1704
	move.l 92(%a1),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	moveq #-1,%d2
	move.l %d2,4(%a3,%d0.l)
.L1704:
	move.l 280(%a0),%a3
	move.l %a3,298(%a1)
	move.l %d1,-(%sp)
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a3),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1703:
	move.w #1,294(%a2)
	move.w raptor_ticks,240(%a2)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1708:
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
	jra .L1694
.L1709:
	move.w 290(%a2),%a0
	addq.l #1,%a0
	cmp.l %a1,%a0
	jge .L1694
	move.l 134(%a2),%d1
	move.w 254(%a2),%a0
	cmp.l %d1,%a0
	jlt .L1710
	jgt .L1711
	move.w %d0,290(%a2)
	jra .L1694
.L1711:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	move.l 134(%a2),%d0
	addq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jlt .L1706
	clr.b 132(%a2)
	move.w #1,292(%a2)
.L1706:
	move.w raptor_ticks,%d0
	move.w %d0,290(%a2)
	jra .L1694
.L1710:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	move.l 134(%a2),%d0
	subq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jgt .L1706
	clr.b 132(%a2)
	move.w #1,292(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,290(%a2)
	jra .L1694
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
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jne .L1721
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975408,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1721:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975408,8(%fp)
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
	jne .L1723
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1723
	cmp.w #2,14(%a3)
	jeq .L1732
.L1725:
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
	jeq .L1723
	tst.w 290(%a2)
	jeq .L1733
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1734
.L1727:
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
	jeq .L1728
	cmp.w #43,%d0
	jeq .L1729
	tst.b 273(%a0)
	jne .L1729
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1729:
	move.l 308(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1728:
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
	jeq .L1723
	cmp.w #43,%d0
	jeq .L1730
	tst.b 273(%a2)
	jne .L1730
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1730:
	move.l 268(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1734:
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
.L1723:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1732:
	tst.w 288(%a2)
	jne .L1725
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxScorpionSkullP12SoundHandler
	addq.l #4,%sp
	jra .L1725
.L1733:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	addq.l #4,%sp
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jne .L1727
	jra .L1734
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
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jne .L1744
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1744:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12974976,8(%fp)
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
	jeq .L1752
	pea 7.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1753
.L1748:
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
.L1746:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1752:
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
	jeq .L1748
.L1753:
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1746
	cmp.w #43,%d0
	jeq .L1750
	tst.b 273(%a2)
	jne .L1750
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1750:
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
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	move.l #12838528,8(%a1)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jeq .L1774
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #-1,%d0
	move.l %d0,24(%a1)
.L1759:
	tst.b 272(%a2)
	jeq .L1772
	moveq #13,%d0
	moveq #9,%d2
.L1760:
	cmp.w #8,(%a0)
	jhi .L1761
	moveq #0,%d1
	move.w (%a0),%d1
	add.l %d1,%d1
	move.w .L1771(%pc,%d1.l),%d1
	jmp %pc@(2,%d1:w)
.L1771:
	.word .L1762-.L1771
	.word .L1763-.L1771
	.word .L1764-.L1771
	.word .L1765-.L1771
	.word .L1766-.L1771
	.word .L1767-.L1771
	.word .L1768-.L1771
	.word .L1769-.L1771
	.word .L1770-.L1771
.L1762:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975840,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1761:
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1772:
	moveq #9,%d0
	moveq #13,%d2
	jra .L1760
.L1774:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #1,%d0
	move.l %d0,24(%a1)
	jra .L1759
.L1769:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976224,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1770:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976128,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1763:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975888,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1764:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975936,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1765:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975984,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1766:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976080,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1767:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976032,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1768:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976176,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12974976,8(%fp)
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
	jne .L1776
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1776
	cmp.w #2,14(%a5)
	jeq .L1785
.L1778:
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
	jgt .L1786
.L1776:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1786:
	pea 9.w
	move.l 434(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1787
	move.l sprite,%a0
	move.l 92(%a2),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a1
	moveq #-1,%d0
	cmp.l 4(%a1),%d0
	jeq .L1788
	move.l 650(%a2),%a1
	move.l 92(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1789
.L1783:
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
.L1790:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1785:
	tst.w 288(%a2)
	jne .L1778
	move.w #1,288(%a2)
	move.l 650(%a2),%a0
	move.w #1,294(%a0)
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	cmp.w #79,%d0
	jeq .L1778
	cmp.w #43,%d0
	jeq .L1779
	tst.b 273(%a0)
	jne .L1779
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1779:
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
	jle .L1776
	jra .L1786
.L1789:
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
	jra .L1790
.L1788:
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
	jne .L1783
	jra .L1789
.L1787:
	move.w #1,292(%a2)
	move.w #123,290(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1776
	cmp.w #43,%d0
	jeq .L1781
	tst.b 273(%a2)
	jne .L1781
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1781:
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
	jeq .L1798
	move.l 650(%a0),%a1
	move.w 254(%a1),%a1
	lea (-56,%a1),%a1
	move.w %a1,254(%a0)
	unlk %fp
	rts
.L1798:
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
	jne .L1801
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l 158(%a2),%d1
	addq.l #2,%d1
	cmp.l %a0,%d1
	jge .L1814
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
.L1803:
	cmp.w #5,%d1
	jle .L1804
	move.w #1,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 14(%a3)
	move.w %d0,292(%a2)
	clr.w 294(%a2)
.L1804:
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
.L1800:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1801:
	cmp.w #1,%d0
	jne .L1800
	move.w 290(%a2),%d0
	jne .L1806
	tst.w 288(%a2)
	jeq .L1815
	tst.w 294(%a2)
	jne .L1808
	move.w 240(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1816
.L1808:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1817
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
	jgt .L1800
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1814:
	move.w 290(%a2),%d1
	jra .L1803
.L1806:
	cmp.w #1,%d0
	jne .L1800
	move.w 246(%a2),%a0
	addq.w #6,%a0
	move.w %a0,%a0
	move.w 254(%a2),%d0
	cmp.w #-1,268(%a2)
	jeq .L1818
	moveq #-72,%d1
.L1810:
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
	jeq .L1800
	cmp.w #43,%d0
	jeq .L1811
	tst.b 273(%a2)
	jne .L1811
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1811:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1815:
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
	jra .L1808
.L1818:
	moveq #42,%d1
	jra .L1810
.L1816:
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
	jra .L1808
.L1817:
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
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jne .L1828
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975408,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1828:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975408,8(%fp)
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
	jne .L1830
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1830
	cmp.w #1,14(%a5)
	jeq .L1844
.L1832:
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
	jeq .L1830
	tst.w 290(%a2)
	jeq .L1845
	move.w 292(%a2),%d0
	cmp.w #15,%d0
	jgt .L1834
.L1848:
	move.w 296(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1834
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1846
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
.L1830:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1834:
	move.w 294(%a2),%d1
	jne .L1836
	cmp.w #15,%d0
	jle .L1830
	move.w 296(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1830
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
	jeq .L1847
	cmp.w #-1,%d0
	jne .L1830
	move.w 252(%a2),%a1
	move.l 650(%a2),%a0
	move.w 254(%a0),%a0
	lea (48,%a0),%a0
	cmp.l %a1,%a0
	jlt .L1830
.L1838:
	tst.w 294(%a2)
	jne .L1830
	move.l 264(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	move.w #1,294(%a2)
	move.l 438(%a2),%a0
	move.w #6,14(%a0)
	addq.l #4,%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1844:
	tst.w 288(%a2)
	jne .L1832
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z12sfxSonyaKissP12SoundHandler
	addq.l #4,%sp
	jra .L1832
.L1845:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z22sfxKanoCannonBallStartP12SoundHandler
	move.w raptor_ticks,296(%a2)
	addq.l #4,%sp
	move.w 292(%a2),%d0
	cmp.w #15,%d0
	jgt .L1834
	jra .L1848
.L1836:
	cmp.w #1,%d1
	jne .L1830
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
	jeq .L1849
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
	jeq .L1840
	cmp.w #43,%d0
	jeq .L1841
	tst.b 273(%a0)
	jne .L1841
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1841:
	move.l 308(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1840:
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1830
	cmp.w #43,%d0
	jeq .L1842
	tst.b 273(%a2)
	jne .L1842
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1842:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1846:
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
	jra .L1830
.L1849:
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
.L1847:
	move.l 650(%a2),%a0
	move.w 254(%a0),%d0
	cmp.w 252(%a2),%d0
	jle .L1838
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
	jle .L1854
	move.w 286(%a2),%d0
	jeq .L1866
	cmp.w #1,%d0
	jeq .L1867
.L1854:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1866:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1857
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1867:
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1854
	tst.w 290(%a2)
	jeq .L1868
.L1858:
	move.w 294(%a2),%d0
	jeq .L1869
	cmp.w #1,%d0
	jne .L1854
	cmp.w #1,296(%a2)
	jne .L1854
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1870
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
.L1857:
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
.L1868:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1858
.L1869:
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1860
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #82,%d0
	jeq .L1861
	cmp.w #43,%d0
	jeq .L1862
	tst.b 273(%a0)
	jne .L1862
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1862:
	move.l 328(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1861:
	clr.w 288(%a2)
	move.w #1,294(%a2)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1860:
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
.L1870:
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1854
	cmp.w #43,%d0
	jeq .L1864
	tst.b 273(%a2)
	jne .L1864
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1864:
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
	move.l #12838528,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838528,44(%a3)
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
	jls .L1902
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1902:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1884(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1884:
	.word .L1876-.L1884
	.word .L1877-.L1884
	.word .L1878-.L1884
	.word .L1879-.L1884
	.word .L1880-.L1884
	.word .L1881-.L1884
	.word .L1882-.L1884
	.word .L1883-.L1884
.L1882:
	tst.b 272(%a2)
	jne .L1903
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976560,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1883:
	tst.b 272(%a2)
	jeq .L1900
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976608,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1876:
	tst.b 272(%a2)
	jne .L1904
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976272,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1877:
	tst.b 272(%a2)
	jne .L1905
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976320,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1878:
	tst.b 272(%a2)
	jne .L1906
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976368,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1879:
	tst.b 272(%a2)
	jne .L1907
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976416,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1880:
	tst.b 272(%a2)
	jne .L1908
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976512,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1881:
	tst.b 272(%a2)
	jne .L1909
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976464,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1900:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976608,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1903:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976560,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1909:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976464,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1908:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976512,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1907:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976416,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1906:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976368,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1905:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976320,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1904:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976272,8(%fp)
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
	jeq .L1936
.L1912:
	tst.w 14(%a3)
	jne .L1915
	tst.w 286(%a2)
	jne .L1915
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1915
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
.L1915:
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
	jle .L1937
	tst.w 290(%a2)
	jne .L1918
	move.w 288(%a2),%d2
	move.w %d2,%a1
	move.l %a1,%a4
	add.l #__ZL15UppercutOffsets,%a4
	move.w (%a4,%a1.l),%d0
	add.w 250(%a2),%d0
	move.w %d0,250(%a2)
	cmp.w #166,%d0
	jle .L1919
	move.w #166,250(%a2)
.L1919:
	addq.w #1,%d2
	move.w %d2,288(%a2)
	move.l 650(%a2),%a1
	cmp.w #23,%d2
	jle .L1933
	tst.w 296(%a1)
	jne .L1933
	move.w #1,296(%a1)
	move.l 434(%a1),%a1
	clr.w 14(%a1)
.L1923:
	move.w 294(%a2),%d0
.L1924:
	cmp.w #1,%d0
	jeq .L1926
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	move.w %a0,240(%a2)
.L1917:
	move.w %d0,%a0
	cmp.w #24,%d2
	jle .L1938
.L1931:
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
.L1911:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1937:
	move.w 288(%a2),%d2
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	move.w %d0,%a0
	cmp.w #24,%d2
	jgt .L1931
.L1938:
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
.L1918:
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
	jle .L1929
.L1930:
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
	jra .L1917
.L1936:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1912
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1911
	cmp.w #43,%d0
	jeq .L1914
	tst.b 273(%a2)
	jne .L1914
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1914:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1929:
	cmp.w #182,%d1
	jeq .L1930
	move.w %a0,240(%a2)
	jra .L1917
.L1933:
	move.l 434(%a1),%a1
	move.w 14(%a1),%d0
	cmp.w #1,%d0
	jne .L1923
	move.w 294(%a2),%d0
	jne .L1924
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
	jgt .L1928
.L1939:
	move.w raptor_ticks,%a0
	move.w 268(%a2),%d0
	move.w %a0,240(%a2)
	jra .L1917
.L1926:
	move.w 268(%a2),%d0
	neg.w %d0
	lsl.w #3,%d0
	add.w %d0,252(%a2)
	move.w 250(%a2),%d1
	cmp.w #165,%d1
	jle .L1939
.L1928:
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
	jra .L1917
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
	jge .L1945
	move.l 2(%a0),%d0
	move.l %d0,%d3
	add.l %d0,%d3
	add.l %d0,%d3
	lsl.l #6,%d3
	move.l sprite,%a1
	add.l %d3,%a1
	move.w 12(%a1),%d3
	cmp.w #1,%d3
	jle .L1946
	move.w 288(%a0),%d0
	jle .L1944
	move.w %d3,%a2
	sub.w %d0,%a2
	clr.w 288(%a0)
	cmp.w #0,%a2
	jle .L1951
	move.w %a2,12(%a1)
.L1944:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1945:
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
.L1946:
	move.w 288(%a0),%d3
	jle .L1944
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
.L1951:
	move.w #1,%a2
	move.w %a2,12(%a1)
	jra .L1944
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
	jne .L1958
	move.w 290(%a2),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1967
.L1958:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w 292(%a2),%d0
	cmp.l %a1,%a0
	jle .L1960
	tst.w %d0
	jeq .L1968
.L1960:
	cmp.w #1,%d0
	jeq .L1969
.L1956:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1968:
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
	jeq .L1970
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
.L1971:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1967:
	move.w #1,296(%a2)
	jsr __Z9musicStopv
	move.w raptor_ticks,%a0
	jra .L1958
.L1969:
	jsr __Z20cameraIsScrollingPitv
	tst.b %d0
	jne .L1956
	tst.w 294(%a2)
	jne .L1956
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
	jeq .L1963
	cmp.w #43,%d0
	jeq .L1964
	tst.b 273(%a0)
	jne .L1964
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1964:
	move.l 268(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1963:
	move.w #1,286(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1956
	cmp.w #43,%d0
	jeq .L1965
	tst.b 273(%a2)
	jne .L1965
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1965:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1970:
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
	jra .L1971
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
