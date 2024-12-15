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
	jeq .L213
	cmp.w #-1,%d0
	jeq .L214
.L188:
	move.b #1,302(%a0)
.L186:
	movem.l (%sp)+,#1052
	unlk %fp
	rts
.L214:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jeq .L188
.L189:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L215
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jeq .L193
	tst.b 139(%a0)
	jeq .L193
	tst.b 101(%a0)
	jne .L216
.L193:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L217
.L195:
	tst.b 139(%a0)
	jeq .L196
	tst.b 101(%a0)
	jne .L218
.L196:
	and.l JAGPAD_7,%d0
	jeq .L198
	tst.b 101(%a0)
	jne .L210
.L198:
	tst.l %d2
	jeq .L200
	tst.b 101(%a0)
	jne .L210
.L200:
	tst.l %d3
	jeq .L186
	tst.b 101(%a0)
	jeq .L186
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #14,%d0
	jeq .L186
	cmp.w #43,%d0
	jeq .L202
	tst.b 273(%a0)
	jne .L202
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L202:
	move.l 56(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L213:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jne .L189
	move.b #1,302(%a0)
	jra .L186
.L217:
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L196
	jra .L195
.L215:
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
.L210:
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
.L218:
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
.L216:
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
	jgt .L226
.L222:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 302(%a2)
	jeq .L221
	cmp.w #27,286(%a2)
	jgt .L227
.L221:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L226:
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
	jra .L222
.L227:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L221
	cmp.w #43,%d0
	jeq .L224
	tst.b 273(%a2)
	jne .L224
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L224:
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
	jeq .L255
	cmp.w #-1,%d0
	jeq .L256
.L232:
	move.b #1,302(%a0)
.L230:
	movem.l (%sp)+,#1036
	unlk %fp
	rts
.L256:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jeq .L232
.L233:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L257
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jeq .L237
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L237
	tst.b 101(%a0)
	jne .L252
.L237:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L258
	tst.b 101(%a0)
	jne .L259
.L240:
	and.l JAGPAD_9,%d0
	jeq .L242
	tst.b 101(%a0)
	jne .L252
.L242:
	tst.l %d2
	jeq .L230
	tst.b 101(%a0)
	jeq .L230
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #20,%d0
	jeq .L230
	cmp.w #43,%d0
	jeq .L244
	tst.b 273(%a0)
	jne .L244
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L244:
	move.l 80(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L255:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jne .L233
	move.b #1,302(%a0)
	jra .L230
.L258:
	move.l %d0,%d3
	and.l JAGPAD_C,%d3
	jeq .L240
	tst.b 101(%a0)
	jeq .L240
	jra .L259
.L257:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #7,%d0
	jeq .L230
	cmp.w #43,%d0
	jeq .L236
	tst.b 273(%a0)
	jne .L236
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L236:
	move.l 28(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L259:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #11,%d0
	jeq .L230
	cmp.w #43,%d0
	jeq .L241
	tst.b 273(%a0)
	jne .L241
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L241:
	move.l 44(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L252:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #15,%d0
	jeq .L230
	cmp.w #43,%d0
	jeq .L243
	tst.b 273(%a0)
	jne .L243
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L243:
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
	jls .L274
	cmp.w #18,%d0
	jeq .L275
	cmp.w #19,%d0
	jeq .L276
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
.L264:
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L272
	tst.b 176(%a2)
	jne .L272
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
	jgt .L277
.L262:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L272:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L262
.L277:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L262
	cmp.w #43,%d0
	jeq .L271
	tst.b 273(%a2)
	jne .L271
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L271:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L276:
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
	jra .L264
.L274:
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
	jra .L264
.L275:
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
	jra .L264
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
	jne .L281
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L282
.L281:
	tst.b 101(%a0)
	jne .L289
.L282:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L290
	tst.b 101(%a0)
	jne .L291
.L280:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L290:
	and.l JAGPAD_9,%d0
	jeq .L280
	tst.b 101(%a0)
	jeq .L280
.L291:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #19,%d0
	jeq .L280
	cmp.w #43,%d0
	jeq .L286
	tst.b 273(%a0)
	jne .L286
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L286:
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
.L289:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #18,%d0
	jeq .L280
	cmp.w #43,%d0
	jeq .L284
	tst.b 273(%a0)
	jne .L284
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L284:
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
	jle .L300
	tst.b 176(%a2)
	jeq .L297
.L300:
	move.w 286(%a2),%d0
.L296:
	cmp.w #19,%d0
	jgt .L302
.L294:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L302:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L294
	cmp.w #43,%d0
	jeq .L299
	tst.b 273(%a2)
	jne .L299
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L299:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L297:
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
	jne .L296
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L294
	jra .L302
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
	jeq .L305
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L307
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L307
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L310
	and.l JAGPAD_7,%d0
	jeq .L305
.L310:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #23,%d0
	jeq .L305
	cmp.w #43,%d0
	jeq .L311
	tst.b 273(%a0)
	jne .L311
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L311:
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
.L305:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L307:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #21,%d0
	jeq .L305
	cmp.w #43,%d0
	jeq .L309
	tst.b 273(%a0)
	jne .L309
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L309:
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
	jle .L322
	tst.b 176(%a2)
	jeq .L319
.L322:
	move.w 286(%a2),%d0
.L318:
	cmp.w #19,%d0
	jgt .L324
.L316:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L324:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L316
	cmp.w #43,%d0
	jeq .L321
	tst.b 273(%a2)
	jne .L321
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L321:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L319:
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
	jne .L318
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L316
	jra .L324
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
	jeq .L327
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L329
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L329
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L332
	and.l JAGPAD_7,%d0
	jeq .L327
.L332:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #24,%d0
	jeq .L327
	cmp.w #43,%d0
	jeq .L333
	tst.b 273(%a0)
	jne .L333
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L333:
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
.L327:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L329:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #22,%d0
	jeq .L327
	cmp.w #43,%d0
	jeq .L331
	tst.b 273(%a0)
	jne .L331
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L331:
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
	jeq .L349
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
	jne .L338
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L341
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L341
	and.l JAGPAD_DOWN,%d0
	jne .L350
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L338
	cmp.w #43,%d0
	jeq .L346
	tst.b 273(%a2)
	jne .L346
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L346:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L349:
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
.L338:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L341:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L338
	cmp.w #43,%d0
	jeq .L343
	tst.b 273(%a2)
	jne .L343
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L343:
	move.l 4(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L350:
	move.w #1,286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L338
	cmp.w #43,%d0
	jeq .L345
	tst.b 273(%a2)
	jne .L345
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L345:
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
	jeq .L354
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L353
	and.l JAGPAD_8,%d0
	jne .L353
.L354:
	move.b #1,302(%a0)
.L353:
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
	jeq .L367
.L360:
	tst.w 286(%a2)
	jle .L361
.L368:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #10,%d0
	jeq .L359
	cmp.w #43,%d0
	jeq .L363
	tst.b 273(%a2)
	jne .L363
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L363:
	move.l 40(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L367:
	tst.w 290(%a2)
	jne .L360
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
	jgt .L368
.L361:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L369
.L359:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L369:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L359
	cmp.w #43,%d0
	jeq .L364
	tst.b 273(%a2)
	jne .L364
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L364:
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
	jeq .L372
	move.l JAGPAD_C,%d0
	and.l 196(%a0),%d0
	jeq .L372
	addq.w #1,286(%a0)
.L372:
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
	jne .L378
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
	jeq .L384
.L379:
	tst.w 286(%a2)
	jle .L380
.L385:
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
.L377:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L378:
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
	jeq .L377
	cmp.w #43,%d0
	jeq .L382
	tst.b 273(%a2)
	jne .L382
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L382:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L380:
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L377
	move.b #1,302(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L384:
	tst.w 290(%a2)
	jne .L379
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
	jgt .L385
	jra .L380
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
	jeq .L388
	move.l JAGPAD_C,%d0
	and.l 196(%a0),%d0
	jeq .L388
	addq.w #1,286(%a0)
.L388:
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
	jeq .L401
.L394:
	tst.w 286(%a2)
	jle .L395
.L402:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #12,%d0
	jeq .L393
	cmp.w #43,%d0
	jeq .L397
	tst.b 273(%a2)
	jne .L397
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L397:
	move.l 48(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L401:
	tst.w 290(%a2)
	jne .L394
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
	jgt .L402
.L395:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L403
.L393:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L403:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L393
	cmp.w #43,%d0
	jeq .L398
	tst.b 273(%a2)
	jne .L398
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L398:
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
	jeq .L406
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L410
	addq.w #1,286(%a0)
.L406:
	unlk %fp
	rts
.L410:
	and.l JAGPAD_7,%d0
	jeq .L406
	addq.w #1,286(%a0)
	jra .L406
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
	jne .L414
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
	jeq .L420
.L415:
	tst.w 286(%a2)
	jle .L416
.L421:
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
.L413:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L414:
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
	jeq .L413
	cmp.w #43,%d0
	jeq .L418
	tst.b 273(%a2)
	jne .L418
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L418:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L416:
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L413
	move.b #1,302(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L420:
	tst.w 290(%a2)
	jne .L415
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
	jgt .L421
	jra .L416
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
	jeq .L424
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L428
	addq.w #1,286(%a0)
.L424:
	unlk %fp
	rts
.L428:
	and.l JAGPAD_7,%d0
	jeq .L424
	addq.w #1,286(%a0)
	jra .L424
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
	jeq .L436
.L432:
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L437
.L431:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L437:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L431
	cmp.w #43,%d0
	jeq .L434
	tst.b 273(%a2)
	jne .L434
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L434:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L436:
	tst.w 290(%a2)
	jne .L432
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
	jeq .L431
	jra .L437
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
	jeq .L447
.L443:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L448
.L442:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L448:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L442
	cmp.w #43,%d0
	jeq .L445
	tst.b 273(%a2)
	jne .L445
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L445:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L447:
	tst.w 290(%a2)
	jne .L443
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
	jeq .L442
	jra .L448
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
	jne .L457
.L453:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L457:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L453
	cmp.w #43,%d0
	jeq .L455
	tst.b 273(%a2)
	jne .L455
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L455:
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
	jne .L475
.L471:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L475:
	move.w #1,286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
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
	jle .L486
	tst.b 176(%a2)
	jne .L486
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
	jgt .L488
.L480:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L486:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L480
.L488:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L480
	cmp.w #43,%d0
	jeq .L485
	tst.b 273(%a2)
	jne .L485
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L485:
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
	jle .L499
	tst.b 176(%a2)
	jne .L499
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
	jgt .L501
.L493:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L499:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L493
.L501:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L493
	cmp.w #43,%d0
	jeq .L498
	tst.b 273(%a2)
	jne .L498
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L498:
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
	jne .L510
.L506:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L510:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L506
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
	jgt .L516
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L522
.L515:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L516:
	tst.w 288(%a2)
	jeq .L523
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L524:
	cmp.w #19,%d1
	jle .L515
.L522:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L515
	cmp.w #43,%d0
	jeq .L520
	tst.b 273(%a2)
	jne .L520
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L520:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L523:
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
	jra .L524
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
	jle .L535
	tst.b 176(%a2)
	jeq .L532
.L535:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L537
.L529:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L537:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L529
	cmp.w #43,%d0
	jeq .L534
	tst.b 273(%a2)
	jne .L534
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L534:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L532:
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
	jle .L529
	jra .L537
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
	jgt .L543
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L549
.L542:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L543:
	tst.w 288(%a2)
	jeq .L550
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L551:
	cmp.w #19,%d1
	jle .L542
.L549:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L542
	cmp.w #43,%d0
	jeq .L547
	tst.b 273(%a2)
	jne .L547
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L547:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L550:
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
	jra .L551
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
	jle .L562
	tst.b 176(%a2)
	jeq .L559
.L562:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L564
.L556:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L564:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L556
	cmp.w #43,%d0
	jeq .L561
	tst.b 273(%a2)
	jne .L561
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L561:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L559:
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
	jle .L556
	jra .L564
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
	jle .L573
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
.L573:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L568
	cmp.w #43,%d0
	jeq .L571
	tst.b 273(%a2)
	jne .L571
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L571:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L568:
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
	jne .L579
.L575:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L579:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L575
	cmp.w #43,%d0
	jeq .L577
	tst.b 273(%a2)
	jne .L577
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L577:
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
	jle .L588
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
.L588:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L583
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
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L583:
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
	jne .L594
.L590:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L594:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L590
	cmp.w #43,%d0
	jeq .L592
	tst.b 273(%a2)
	jne .L592
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L592:
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
	jle .L603
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
.L603:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L598
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
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L598:
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
	jne .L609
.L605:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L609:
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
	jeq .L605
	cmp.w #43,%d0
	jeq .L607
	tst.b 273(%a2)
	jne .L607
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L607:
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
	jne .L618
.L614:
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	cmp.w #2,(%a2)
	jeq .L619
.L613:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L618:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L614
	cmp.w #43,%d0
	jeq .L615
	tst.b 273(%a2)
	jne .L615
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
.L615:
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
	jne .L613
.L619:
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
	jne .L625
.L621:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L625:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L621
	cmp.w #43,%d0
	jeq .L623
	tst.b 273(%a2)
	jne .L623
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L623:
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
	jle .L634
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
	jeq .L635
.L629:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L635:
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
.L634:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L629
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
	jeq .L643
.L638:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L644
.L639:
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
	jne .L645
.L637:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L645:
	clr.b 138(%a2)
	clr.b 106(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L637
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
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L644:
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
	jeq .L637
	jra .L645
.L643:
	tst.w 286(%a2)
	jne .L638
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
	jle .L639
	jra .L644
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
	jle .L654
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
.L654:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L649
	cmp.w #43,%d0
	jeq .L652
	tst.b 273(%a2)
	jne .L652
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L652:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L649:
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
	jeq .L662
.L657:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L663
.L658:
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
	jne .L664
.L656:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L664:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L656
	cmp.w #43,%d0
	jeq .L660
	tst.b 273(%a2)
	jne .L660
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L660:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L663:
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
	jeq .L656
	jra .L664
.L662:
	tst.w 286(%a2)
	jne .L657
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
	jle .L658
	jra .L663
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
	jeq .L677
	cmp.w #8,%d0
	jeq .L678
.L671:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L679
.L669:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L679:
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
	jeq .L680
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
.L682:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L678:
	tst.w 290(%a2)
	jne .L671
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L669
	jra .L679
.L677:
	tst.w 288(%a2)
	jne .L671
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
	jle .L669
	jra .L679
.L680:
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
	jeq .L681
	cmp.w #43,%d0
	jeq .L675
	tst.b 273(%a2)
	jne .L675
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L675:
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
	jra .L682
.L681:
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
	jra .L682
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
	jne .L690
.L687:
	clr.b 302(%a2)
	move.w raptor_ticks,240(%a2)
	move.b #1,147(%a2)
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L690:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L687
	cmp.w #43,%d0
	jeq .L688
	tst.b 273(%a2)
	jne .L688
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
.L688:
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
	jgt .L696
.L692:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L696:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #28,%d0
	jeq .L692
	cmp.w #43,%d0
	jeq .L694
	tst.b 273(%a2)
	jne .L694
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L694:
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
	jeq .L709
	cmp.w #3,%d0
	jeq .L710
.L703:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L711
.L701:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L711:
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
	jeq .L712
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
.L714:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L710:
	tst.w 290(%a2)
	jne .L703
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L701
	jra .L711
.L709:
	tst.w 288(%a2)
	jne .L703
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
	jle .L701
	jra .L711
.L712:
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
	jeq .L713
	cmp.w #43,%d0
	jeq .L707
	tst.b 273(%a2)
	jne .L707
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L707:
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
	jra .L714
.L713:
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
	jra .L714
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
	jeq .L726
.L720:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L727
.L719:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L727:
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
	jeq .L728
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
.L730:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L726:
	tst.w 288(%a2)
	jne .L720
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
	jle .L719
	jra .L727
.L728:
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
	jeq .L729
	cmp.w #43,%d0
	jeq .L724
	tst.b 273(%a2)
	jne .L724
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L724:
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
	jra .L730
.L729:
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
	jra .L730
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
	jgt .L739
.L736:
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
.L739:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L736
	cmp.w #43,%d0
	jeq .L737
	tst.b 273(%a2)
	jne .L737
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L737:
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
	jne .L748
.L745:
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
	jgt .L758
.L754:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jgt .L759
.L756:
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
.L759:
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
.L758:
	clr.b 138(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
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
	jle .L756
	jra .L759
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
	jne .L765
	cmp.w #2,14(%a3)
	jeq .L770
.L765:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L771
.L764:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L771:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L764
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
	cmp.w #1,(%a2)
	jeq .L772
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L764
	jra .L771
.L772:
	move.l 264(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L764
	jra .L771
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
	jne .L778
	cmp.w #2,14(%a3)
	jeq .L782
.L778:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L783
.L777:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L783:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L777
	cmp.w #43,%d0
	jeq .L780
	tst.b 273(%a2)
	jne .L780
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L780:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L782:
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
	jeq .L777
	jra .L783
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
	jge .L792
.L788:
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z12sfxThrowMaleP12SoundHandler
.L792:
	cmp.w #5,%d0
	jgt .L793
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z13sfxThrowNinjaP12SoundHandler
.L793:
	cmp.w #6,%d0
	jne .L788
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
	jne .L799
.L795:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L799:
	clr.b 141(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L795
	cmp.w #43,%d0
	jeq .L797
	tst.b 273(%a2)
	jne .L797
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L797:
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
	jne .L807
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
.L807:
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
	jle .L819
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L809
	move.w 286(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #21,%d0
	jle .L820
	cmp.w #22,%d0
	jeq .L821
	cmp.w #23,%d0
	jeq .L822
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
	jeq .L823
.L816:
	move.w raptor_ticks,240(%a2)
.L809:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L820:
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
	jne .L816
.L823:
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
	jle .L816
	clr.w 286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #32,%d0
	jeq .L809
	cmp.w #43,%d0
	jeq .L817
	tst.b 273(%a2)
	jne .L817
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L817:
	move.l 128(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L819:
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
.L821:
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
	jne .L816
	jra .L823
.L822:
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
	jne .L816
	jra .L823
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
	jeq .L835
	tst.w 14(%a3)
	jle .L836
.L832:
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
.L828:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L835:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L837
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
.L838:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L837:
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
	jra .L838
.L836:
	clr.b 140(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L832
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
	jra .L828
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
	jne .L841
	move.w #1,286(%a2)
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,268(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L848
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
.L841:
	clr.b 138(%a2)
	clr.b 140(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L840
	cmp.w #43,%d0
	jeq .L845
	tst.b 273(%a2)
	jne .L845
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L845:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L848:
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
	jra .L841
.L840:
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
	jls .L872
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838608,8(%a0)
	move.w %a1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838608,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #6,%d1
	jls .L873
.L851:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L873:
	and.l #65535,%d1
	add.l %d1,%d1
	move.w .L859(%pc,%d1.l),%d0
	jmp %pc@(2,%d0:w)
.L859:
	.word .L854-.L859
	.word .L855-.L859
	.word .L856-.L859
	.word .L857-.L859
	.word .L851-.L859
	.word .L851-.L859
	.word .L858-.L859
.L872:
	subq.w #8,%d0
	move.w %d0,250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838608,8(%a0)
	move.w %a1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838608,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #6,%d1
	jhi .L851
	jra .L873
.L855:
	tst.b 272(%a2)
	jne .L874
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975200,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z12sfxKanoKnifeP12SoundHandler
.L856:
	tst.b 272(%a2)
	jne .L875
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975248,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L857:
	tst.b 272(%a2)
	jne .L876
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975296,-(%sp)
.L870:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L858:
	tst.b 272(%a2)
	jeq .L869
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975344,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L854:
	tst.b 272(%a2)
	jne .L877
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975152,-(%sp)
.L878:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L869:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975344,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L877:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975152,-(%sp)
	jra .L878
.L876:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975296,-(%sp)
	jra .L870
.L875:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975248,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L874:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975200,-(%sp)
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
	jne .L881
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	cmp.w #2,(%a2)
	jeq .L882
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L912
.L883:
	move.w (%a2),%d0
	cmp.w #1,%d0
	jeq .L913
	cmp.w #2,%d0
	jeq .L888
.L903:
	move.w 268(%a2),%d0
.L887:
	move.w raptor_ticks,%d1
	move.w 288(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L890
	move.w %d0,%d4
	add.w %d0,%d4
	move.w %d4,%d3
	lsl.w #3,%d3
	sub.w %d4,%d3
	add.w %d3,252(%a2)
	move.w %d1,288(%a2)
.L890:
	cmp.w #1,%d0
	jeq .L914
	cmp.w #-1,%d0
	jne .L893
	tst.w 248(%a2)
	jlt .L910
.L893:
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
.L896:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L915
.L880:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L881:
	tst.w 286(%a2)
	jne .L897
	move.w #1,286(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L897:
	move.w 90(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L910
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
	jne .L880
.L915:
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L914:
	cmp.w #320,248(%a2)
	jle .L893
.L910:
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
	jeq .L880
	cmp.w #43,%d0
	jeq .L899
	tst.b 273(%a2)
	jne .L899
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L899:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#7196
	unlk %fp
	jmp (%a0)
.L912:
	cmp.w #2,(%a2)
	jne .L884
.L882:
	pea 8.w
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jne .L883
.L884:
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
	jra .L896
.L888:
	tst.w 290(%a2)
	jne .L903
	move.w #1,290(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d1
	lsl.w #6,%d1
	add.w %d1,252(%a2)
	jra .L887
.L913:
	tst.w 290(%a2)
	jne .L903
	move.w #1,290(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d1
	lsl.w #4,%d1
	add.w %d1,252(%a2)
	jra .L887
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
	move.l #12838608,8(%a0)
	move.w %d1,240(%a2)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jeq .L926
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L926:
	tst.b 272(%a2)
	jeq .L923
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975104,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L923:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975104,-(%sp)
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
	jeq .L929
	move.w raptor_ticks,%d1
	move.w 286(%a2),%a1
	addq.l #4,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jgt .L946
	cmp.w #6,%d0
	jgt .L931
.L947:
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
.L928:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L946:
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.w %d1,286(%a2)
	cmp.w #6,%d0
	jle .L947
.L931:
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
	jeq .L928
	cmp.w #43,%d0
	jeq .L934
	tst.b 273(%a2)
	jne .L934
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L934:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L929:
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L948
	move.w raptor_ticks,%d0
	cmp.w #95,288(%a2)
	jgt .L949
.L936:
	move.w 286(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jle .L938
	tst.b 177(%a2)
	jeq .L950
.L937:
	move.w 268(%a2),%d1
	move.w %d1,%d2
	lsl.w #5,%d2
	add.w %d2,252(%a2)
	cmp.w #1,%d1
	jeq .L951
	cmp.w #-1,%d1
	jeq .L952
.L943:
	move.w #3,%a0
	move.w %d0,286(%a2)
.L953:
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
	jra .L928
.L949:
	move.w 286(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jgt .L937
.L938:
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
	jra .L928
.L948:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w raptor_ticks,%d0
	cmp.w #95,288(%a2)
	jle .L936
	jra .L949
.L952:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jle .L943
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,290(%a2)
	move.w #4,%a0
.L954:
	move.w %d0,286(%a2)
	jra .L953
.L950:
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
	jra .L928
.L951:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jge .L943
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,290(%a2)
	move.w #4,%a0
	jra .L954
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
	jeq .L960
	cmp.w #6,%d0
	jeq .L960
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
	jne .L975
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
.L959:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L960:
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
	jle .L959
	move.w 288(%a2),%d2
	move.w 286(%a2),%d1
	tst.w %d2
	jne .L963
	addq.w #1,%d1
	move.w %d1,286(%a2)
	cmp.w #4,%d1
	jne .L964
	move.w #3,286(%a2)
	move.w #1,288(%a2)
.L965:
	move.w %d0,240(%a2)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L963:
	subq.w #1,%d1
	move.w %d1,286(%a2)
.L964:
	tst.w %d1
	jne .L965
	cmp.w #1,%d2
	jne .L965
.L975:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L959
	cmp.w #43,%d0
	jeq .L968
	tst.b 273(%a2)
	jne .L968
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L968:
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
	jle .L982
	tst.w 288(%a2)
	jeq .L987
.L982:
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jgt .L988
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
.L981:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L988:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L981
	cmp.w #43,%d0
	jeq .L985
	tst.b 273(%a2)
	jne .L985
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L985:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L987:
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
	jra .L982
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
	jgt .L994
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L1004
	and.l JAGPAD_8,%d0
	jne .L1004
.L994:
	move.w 288(%a2),%d0
	jeq .L1006
	cmp.w #1,%d0
	jeq .L1007
.L997:
	tst.b 176(%a2)
	jeq .L999
.L998:
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	move.w 290(%a2),%d0
	cmp.l %a1,%a0
	jle .L1001
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.w %d1,240(%a2)
.L1001:
	cmp.w #19,%d0
	jgt .L1008
.L999:
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
.L993:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1007:
	tst.b 176(%a2)
	jne .L998
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	tst.b 176(%a2)
	jne .L998
	jra .L999
.L1004:
	move.w 288(%a2),%d0
	cmp.w #1,%d0
	jne .L997
	jra .L1007
.L1006:
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z17sfxKanoCannonBallP12SoundHandler
	move.w 288(%a2),%d0
	addq.l #4,%sp
	cmp.w #1,%d0
	jne .L997
	jra .L1007
.L1008:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L993
	cmp.w #43,%d0
	jeq .L1003
	tst.b 273(%a2)
	jne .L1003
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1003:
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
	jeq .L1028
	tst.w 286(%a2)
	jne .L1028
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
	jle .L1030
.L1017:
	tst.w 286(%a2)
	jne .L1020
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L1020:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1022
.L1034:
	move.w 288(%a2),%d0
	cmp.w #19,%d0
	jgt .L1024
.L1035:
	move.w 286(%a2),%d0
.L1021:
	tst.w %d0
	jne .L1027
	tst.b 176(%a2)
	jeq .L1031
.L1027:
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
.L1013:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1028:
	move.w 290(%a2),%d0
	cmp.w #199,%d0
	jgt .L1017
.L1030:
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1032
	cmp.w #-1,%d0
	jeq .L1033
.L1019:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1021
.L1036:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1034
.L1022:
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
	jle .L1035
.L1024:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1013
	cmp.w #43,%d0
	jeq .L1026
	tst.b 273(%a2)
	jne .L1026
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1026:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1031:
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
.L1032:
	pea 64.w
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jne .L1017
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L1019
.L1033:
	pea 64.w
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jne .L1017
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1021
	jra .L1036
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
	jeq .L1047
	cmp.w #-1,%d0
	jeq .L1048
.L1045:
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
.L1047:
	clr.l -(%sp)
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jeq .L1043
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L1045
.L1048:
	clr.l -(%sp)
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jeq .L1043
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
.L1043:
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
	jne .L1054
	tst.w 286(%a2)
	jne .L1054
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1068
	cmp.w #-1,%d0
	jeq .L1069
	move.w #1,286(%a2)
.L1059:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
.L1066:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 610(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1053:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1054:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1060
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jeq .L1070
	tst.w %d0
	jne .L1064
.L1071:
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
	jra .L1053
.L1060:
	move.w 286(%a2),%d0
	jeq .L1071
.L1064:
	move.w 268(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	jra .L1066
.L1070:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1053
	cmp.w #43,%d0
	jeq .L1063
	tst.b 273(%a2)
	jne .L1063
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1063:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1069:
	clr.l -(%sp)
	move.l %a5,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	move.w 254(%a5),%a5
	tst.b %d0
	jeq .L1072
	lea (68,%a5),%a5
	move.w %a5,254(%a2)
	move.w 268(%a2),%d0
	move.w #1,286(%a2)
	jra .L1059
.L1068:
	clr.l -(%sp)
	move.l %a5,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	move.w 254(%a5),%a5
	tst.b %d0
	jeq .L1073
	lea (-68,%a5),%a5
	move.w %a5,254(%a2)
	move.w 268(%a2),%d0
	move.w #1,286(%a2)
	jra .L1059
.L1073:
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
.L1074:
	move.w #1,286(%a2)
	jra .L1059
.L1072:
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
	jra .L1074
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
	jgt .L1080
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L1088
.L1084:
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
.L1079:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1080:
	tst.b 176(%a2)
	jeq .L1089
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1090
.L1083:
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L1091:
	cmp.w #19,%d1
	jle .L1084
.L1088:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1079
	cmp.w #43,%d0
	jeq .L1086
	tst.b 273(%a2)
	jne .L1086
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1086:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1090:
	moveq #-4,%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
	jra .L1091
.L1089:
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
	jge .L1083
	jra .L1090
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
	jeq .L1103
	clr.w %d2
.L1096:
	add.w %d0,%d2
	move.w %d2,252(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jne .L1104
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975440,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,240(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1104:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975440,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,240(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1103:
	moveq #48,%d2
	jra .L1096
	.even
	.globl	__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 177(%a2)
	jeq .L1134
	tst.b 129(%a2)
	jeq .L1106
	tst.w 288(%a2)
	jeq .L1116
	move.w #1,288(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L1116:
	cmp.w #-1,290(%a2)
	jeq .L1135
	tst.b 272(%a2)
	jeq .L1123
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8493168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1119:
	neg.w 290(%a2)
	move.w 130(%a2),%d0
	addq.w #1,%d0
	move.w %d0,130(%a2)
	cmp.w #8,%d0
	jle .L1106
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
.L1130:
	moveq #-1,%d0
	move.l %d0,112(%a0)
	move.l %d0,4(%a0)
	move.l %a2,-(%sp)
	jsr __Z15playerinputInitP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1106
	cmp.w #43,%d0
	jeq .L1121
	tst.b 273(%a2)
	jne .L1121
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1121:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1108:
	move.w 268(%a2),%d1
.L1113:
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
.L1106:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1134:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1108
	tst.w 286(%a2)
	jne .L1136
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1137
.L1110:
	move.w 268(%a2),%d1
	move.w %d1,%d0
	add.w %d1,%d0
	add.w %d1,%d0
	add.w %d0,%d0
	add.w %d0,%d0
	add.w %d0,252(%a2)
	cmp.w #1,%d1
	jeq .L1138
.L1111:
	cmp.w #-1,%d1
	jne .L1113
	tst.w 248(%a2)
	jlt .L1130
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
	jra .L1106
.L1123:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8493168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1119
.L1136:
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
	jne .L1110
.L1137:
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
	jne .L1111
.L1138:
	cmp.w #320,248(%a2)
	jgt .L1130
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
	jra .L1106
.L1135:
	tst.b 272(%a2)
	jeq .L1122
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975440,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1119
.L1122:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975440,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1119
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
	jne .L1144
	move.w #1,286(%a2)
	move.w 268(%a2),%d1
	move.w 254(%a3),%d3
	cmp.w #-1,%d1
	jeq .L1168
	move.w %d3,%d0
	add.w #48,%d0
	sub.w 254(%a2),%d0
	move.w %d0,108(%a2)
	cmp.w #149,%d0
	jle .L1169
.L1147:
	clr.w 108(%a2)
	cmp.w #-1,%d1
	jeq .L1170
.L1149:
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
.L1144:
	tst.w 108(%a2)
	jle .L1151
	tst.b 132(%a2)
	jeq .L1151
	tst.w 290(%a2)
	jne .L1151
	move.l 134(%a2),%d0
	move.w 254(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1171
	jgt .L1172
.L1153:
	move.w raptor_ticks,288(%a2)
.L1154:
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
.L1143:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1151:
	move.w 288(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1154
	tst.w 290(%a2)
	jeq .L1173
.L1155:
	tst.b 132(%a2)
	jeq .L1154
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1154
	move.l 134(%a2),%d0
	move.w 254(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1174
	jgt .L1175
	move.w raptor_ticks,240(%a2)
.L1177:
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
	jra .L1143
.L1168:
	move.w 254(%a2),%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,108(%a2)
	cmp.w #149,%d0
	jgt .L1147
.L1169:
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
	jne .L1149
.L1170:
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
	jra .L1144
.L1173:
	move.w #1,290(%a2)
	move.w 110(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	addq.l #8,%sp
	jra .L1155
.L1171:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jlt .L1153
	clr.b 132(%a2)
.L1176:
	move.w raptor_ticks,288(%a2)
	jra .L1154
.L1172:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jgt .L1153
	clr.b 132(%a2)
	jra .L1176
.L1175:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jgt .L1157
.L1160:
	clr.b 132(%a2)
.L1164:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #55,%d0
	jeq .L1143
	cmp.w #43,%d0
	jeq .L1163
	tst.b 273(%a2)
	jne .L1163
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1163:
	move.l 220(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1174:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jge .L1160
.L1157:
	move.b 132(%a2),%d0
	jeq .L1164
	move.w raptor_ticks,240(%a2)
	jra .L1177
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
	move.l #12838608,8(%a1)
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.l #12838608,44(%a1)
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
	jne .L1185
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975440,8(%fp)
	unlk %fp
	jra jsfLoadClut
.L1185:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975440,8(%fp)
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
	jle .L1188
	move.w %d1,290(%a2)
.L1188:
	move.w 288(%a2),%d0
	cmp.w #7,%d0
	jgt .L1189
	move.w 240(%a2),%a1
	addq.l #1,%a1
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.l %a0,%a1
	jlt .L1203
.L1190:
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	jeq .L1204
.L1195:
	move.w 244(%a2),%d2
	move.w %d2,%d0
	add.w #48,%d0
	sub.w 244(%a4),%d0
	move.w %d0,120(%a2)
	add.w #32,%d2
	move.w %d2,116(%a2)
	tst.w %d0
	jlt .L1205
.L1197:
	move.l 92(%a2),%a0
	move.l %a0,%d2
	add.l %a0,%d2
	add.l %a0,%d2
	lsl.l #6,%d2
	move.l sprite,%a0
	add.l %d2,%a0
	move.w %d0,%a1
	cmp.w #1,%d1
	jeq .L1206
.L1199:
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
	jeq .L1207
.L1187:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1189:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.w #8,%d0
	jne .L1190
	tst.w 286(%a2)
	jeq .L1208
	move.l 298(%a4),%a0
	cmp.w #55,(%a0)
	jeq .L1209
.L1192:
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
	jne .L1195
.L1204:
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
	jpl .L1211
	addq.l #1,%d2
.L1211:
	asr.l #1,%d2
	sub.w %d2,%a0
	move.w %a0,116(%a2)
	tst.w %d0
	jge .L1197
	jra .L1205
.L1207:
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1205:
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
	jne .L1199
.L1206:
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
	jne .L1187
	jra .L1207
.L1203:
	move.w 122(%a2),%d2
	move.w %d2,%d3
	add.w %d2,%d3
	add.w %d3,118(%a2)
	neg.w %d2
	move.w %d2,122(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w %d1,240(%a2)
	jra .L1190
.L1208:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z22sfxScorpionGetOverHereP12SoundHandler
	addq.l #4,%sp
	move.l 298(%a4),%a0
	cmp.w #55,(%a0)
	jne .L1192
.L1209:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1187
	cmp.w #43,%d0
	jeq .L1194
	tst.b 273(%a2)
	jne .L1194
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1194:
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
	jgt .L1220
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
.L1215:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1220:
	move.l 298(%a0),%a1
	move.w (%a1),%d1
	jeq .L1215
	cmp.w #43,%d1
	jeq .L1218
	tst.b 273(%a0)
	jne .L1218
	move.l 92(%a0),%d1
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%d1
	lsl.l #6,%d1
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d1.l)
.L1218:
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
	jeq .L1231
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
.L1227:
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
	move.l #12838608,8(%a0)
	move.l #12838608,44(%a3)
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
	jne .L1232
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975872,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1232:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975872,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1231:
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
	jra .L1227
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
	jgt .L1235
	move.w 286(%a2),%d0
.L1236:
	cmp.w #14,%d0
	jgt .L1251
.L1241:
	tst.w 288(%a2)
	jne .L1249
.L1244:
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
	cmp.w #-1,%d0
	jeq .L1252
	cmp.w #1,%d0
	jeq .L1247
.L1245:
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
.L1234:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1235:
	tst.b 176(%a2)
	jeq .L1253
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1254
.L1238:
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #6,%d0
	jeq .L1239
.L1255:
	cmp.w #10,%d0
	jeq .L1239
	cmp.w #8,%d0
	jne .L1236
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.w 288(%a2)
	jeq .L1244
	jra .L1249
.L1247:
	cmp.w #309,%d1
	jle .L1245
	jsr __Z10cameraGetXv
	add.w #-37,%d0
	move.w %d0,254(%a2)
	move.b #1,140(%a3)
	move.w #1,288(%a2)
.L1249:
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
	jra .L1234
.L1254:
	moveq #-4,%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #6,%d0
	jne .L1255
	jra .L1239
.L1251:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1234
	cmp.w #43,%d0
	jeq .L1243
	tst.b 273(%a2)
	jne .L1243
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d0.l)
.L1243:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1239:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d1.l)
	cmp.w #14,%d0
	jle .L1241
	jra .L1251
.L1253:
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
	jge .L1238
	jra .L1254
.L1252:
	cmp.w #10,%d1
	jgt .L1245
	jsr __Z10cameraGetXv
	add.w #357,%d0
	move.w %d0,254(%a2)
	move.b #1,140(%a3)
	move.w #1,288(%a2)
	jra .L1249
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
	move.l #12838608,8(%a0)
	move.w %d1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838608,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	moveq #16,%d1
	move.l %d1,40(%a0)
	move.l %d1,36(%a0)
	tst.b 272(%a2)
	jne .L1263
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975392,-(%sp)
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
.L1263:
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975392,-(%sp)
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
	jeq .L1276
	tst.w 286(%a2)
	jne .L1272
	move.w #1,286(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L1272:
	pea 5.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1277
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
.L1265:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1277:
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
	jeq .L1265
	cmp.w #43,%d0
	jeq .L1274
	tst.b 273(%a2)
	jne .L1274
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1274:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1276:
	pea 9.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1267
	move.w 268(%a2),%d0
	move.w %d0,%d3
	add.w %d0,%d3
	move.w %d3,%d1
	lsl.w #3,%d1
	sub.w %d3,%d1
	add.w %d1,252(%a2)
	cmp.w #1,%d0
	jeq .L1278
	cmp.w #-1,%d0
	jeq .L1279
.L1270:
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
	jne .L1265
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1278:
	cmp.w #320,248(%a2)
	jle .L1270
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
	jeq .L1265
.L1280:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1279:
	tst.w 248(%a2)
	jge .L1270
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
	jne .L1280
	jra .L1265
.L1267:
	move.w 268(%a2),%d0
	jra .L1270
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
	jne .L1288
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
.L1288:
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
	jne .L1292
	move.l 158(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L1298
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
.L1294:
	cmp.w #5,%d0
	jle .L1292
	move.w #1,286(%a2)
.L1292:
	move.w 240(%a2),%a1
	lea (180,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1299
.L1295:
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
.L1299:
	move.l %a2,-(%sp)
	jsr __Z15fighterUnfreezeP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1295
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
.L1298:
	move.w 290(%a2),%d0
	jra .L1294
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
	jle .L1306
	add.w #12,%d0
	move.w %d0,246(%a2)
	move.w %d1,240(%a2)
.L1306:
	cmp.w #89,%d0
	jgt .L1310
.L1304:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1310:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1304
	cmp.w #43,%d0
	jeq .L1308
	tst.b 273(%a2)
	jne .L1308
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1308:
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
	jle .L1317
	tst.b %d0
	jeq .L1324
	add.w #14,286(%a2)
	move.w %d1,240(%a2)
.L1317:
	tst.b %d0
	jne .L1319
	cmp.w #269,286(%a2)
	jle .L1320
.L1319:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1315
	cmp.w #43,%d0
	jeq .L1322
	tst.b 273(%a2)
	jne .L1322
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1322:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1320:
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
.L1315:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1324:
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
	jra .L1317
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
	jne .L1330
	cmp.w #2,14(%a3)
	jeq .L1338
.L1330:
	tst.w 288(%a2)
	jeq .L1339
	tst.w 14(%a3)
	jeq .L1340
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
.L1329:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1340:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1329
	cmp.w #43,%d0
	jeq .L1335
	tst.b 273(%a2)
	jne .L1335
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1335:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1339:
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1332
	move.w #1,288(%a2)
.L1332:
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
	jra .L1329
.L1338:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1330
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
	jeq .L1348
	cmp.w #1,%d0
	jeq .L1349
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
.L1349:
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
.L1348:
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
	jne .L1352
	move.w 240(%a2),%a1
	lea (29,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1353
	move.w #1,286(%a2)
.L1353:
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
.L1351:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1352:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1351
	tst.w 290(%a2)
	jne .L1355
	move.w 288(%a2),%d0
	move.w 268(%a2),%a1
	cmp.w #21,%d0
	jle .L1365
	cmp.w #22,%d0
	jeq .L1366
	cmp.w #23,%d0
	jeq .L1367
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
	jeq .L1368
.L1360:
	move.w raptor_ticks,240(%a2)
.L1370:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1355:
	cmp.w #23,288(%a2)
	jle .L1369
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
	jne .L1360
.L1371:
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
	jeq .L1360
	cmp.w #43,%d0
	jeq .L1363
	tst.b 273(%a2)
	jne .L1363
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1363:
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
	jra .L1370
.L1368:
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
	jra .L1370
.L1365:
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
	jne .L1360
	jra .L1368
.L1369:
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
	jne .L1360
	jra .L1371
.L1366:
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
	jne .L1360
	jra .L1368
.L1367:
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
	jne .L1360
	jra .L1368
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
	jle .L1376
	move.w 288(%a2),%d0
	jeq .L1392
	cmp.w #1,%d0
	jeq .L1393
	move.w 286(%a2),%d0
	cmp.w #18,%d0
	jeq .L1394
	cmp.w #19,%d0
	jeq .L1395
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
	jne .L1396
.L1389:
	addq.w #1,%d0
	move.w %d0,286(%a2)
	cmp.w #19,%d0
	jle .L1382
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1382
	cmp.w #43,%d0
	jeq .L1390
	tst.b 273(%a2)
	jne .L1390
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1390:
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1382:
	move.w raptor_ticks,240(%a2)
.L1376:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1392:
	cmp.w #1,286(%a2)
	jls .L1397
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
	jeq .L1398
.L1381:
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
.L1399:
	move.w raptor_ticks,240(%a2)
	jra .L1376
.L1396:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	addq.l #8,%sp
	jra .L1389
.L1395:
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
	jeq .L1389
	jra .L1396
.L1397:
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
	jne .L1381
.L1398:
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
	jra .L1399
.L1393:
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	cmp.w #230,290(%a2)
	jgt .L1384
	tst.b 176(%a2)
	jeq .L1400
.L1384:
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
.L1401:
	move.w raptor_ticks,240(%a2)
	jra .L1376
.L1400:
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
	jra .L1401
.L1394:
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
	jeq .L1389
	jra .L1396
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
	jeq .L1417
	cmp.w #1,%d0
	jeq .L1414
.L1419:
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
.L1406:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1417:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1418
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
	move.l #12838608,8(%a0)
	move.w raptor_ticks,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12838608,44(%a0)
	moveq #104,%d1
	move.l %d1,144(%a0)
	moveq #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	tst.b 272(%a2)
	jeq .L1415
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975488,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
.L1422:
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
	jra .L1406
.L1418:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1419
.L1414:
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1420
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1421
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
.L1423:
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
	jra .L1406
.L1415:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975488,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jra .L1422
.L1421:
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
	jra .L1423
.L1420:
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
	jeq .L1406
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
	jne .L1429
	tst.b 176(%a2)
	jeq .L1449
.L1430:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1437
	move.w 288(%a2),%d0
.L1438:
	cmp.w #19,%d0
	jgt .L1439
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
.L1433:
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
.L1428:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1429:
	tst.b 176(%a2)
	jne .L1430
.L1439:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1428
	cmp.w #43,%d0
	jeq .L1440
	tst.b 273(%a2)
	jne .L1440
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1440:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1449:
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
	jeq .L1450
	cmp.w #1,%d0
	jne .L1433
	cmp.w #261,%d1
	jle .L1433
	move.w #1,286(%a2)
.L1451:
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
	jra .L1428
.L1437:
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
	jra .L1438
.L1450:
	cmp.w #10,%d1
	jgt .L1433
	move.w #1,286(%a2)
	jra .L1451
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
	jeq .L1463
	cmp.w #1,288(%a2)
	jeq .L1464
.L1458:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1464:
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
.L1463:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1465
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
.L1466:
	cmp.w #1,288(%a2)
	jne .L1458
	jra .L1464
.L1465:
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
	jra .L1466
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
	jeq .L1470
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1470:
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
	jeq .L1474
	tst.w 286(%a2)
	jne .L1476
	cmp.w #1,14(%a3)
	jeq .L1480
.L1476:
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
.L1474:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1480:
	move.w #1,286(%a2)
	move.w (%a2),%d0
	jne .L1481
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
	jra .L1474
.L1481:
	cmp.w #1,%d0
	jne .L1476
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
	jra .L1474
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
	jeq .L1486
	tst.b 144(%a2)
	jne .L1489
.L1486:
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
.L1489:
	clr.b 142(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1486
	cmp.w #43,%d0
	jeq .L1487
	tst.b 273(%a2)
	jne .L1487
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1487:
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
	jeq .L1492
	tst.b 144(%a2)
	jne .L1496
.L1492:
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
.L1496:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1497
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
.L1498:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1497:
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
	jra .L1498
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
	jne .L1504
	move.w raptor_ticks,%a0
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jle .L1503
	move.w 286(%a2),%d0
	jeq .L1513
	cmp.w #1,%d0
	jeq .L1514
.L1503:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1504:
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1503
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1503
	cmp.w #43,%d0
	jeq .L1511
	tst.b 273(%a2)
	jne .L1511
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1511:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1514:
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1503
	tst.w 290(%a2)
	jeq .L1515
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1509
.L1516:
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
	jeq .L1503
	cmp.w #43,%d0
	jeq .L1510
	tst.b 273(%a0)
	jne .L1510
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1510:
	move.l 280(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1513:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1507
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 14(%a4)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1509:
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
.L1515:
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
	jeq .L1509
	jra .L1516
.L1507:
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
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jls .L1548
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1548:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1530(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1530:
	.word .L1522-.L1530
	.word .L1523-.L1530
	.word .L1524-.L1530
	.word .L1525-.L1530
	.word .L1526-.L1530
	.word .L1527-.L1530
	.word .L1528-.L1530
	.word .L1529-.L1530
.L1528:
	tst.b 272(%a2)
	jne .L1549
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976640,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1529:
	tst.b 272(%a2)
	jeq .L1546
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976688,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1522:
	tst.b 272(%a2)
	jne .L1550
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976352,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1523:
	tst.b 272(%a2)
	jne .L1551
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976400,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1524:
	tst.b 272(%a2)
	jne .L1552
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976448,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1525:
	tst.b 272(%a2)
	jne .L1553
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976496,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1526:
	tst.b 272(%a2)
	jne .L1554
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976592,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1527:
	tst.b 272(%a2)
	jne .L1555
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976544,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1546:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976688,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1549:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976640,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1555:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976544,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1554:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976592,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1553:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976496,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1552:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976448,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1551:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976400,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1550:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976352,8(%fp)
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
	jeq .L1575
.L1558:
	tst.w 14(%a3)
	jne .L1561
	tst.w 286(%a2)
	jne .L1561
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1561
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
.L1561:
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
	jle .L1576
	tst.w 290(%a2)
	jne .L1564
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
	jle .L1565
.L1566:
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
.L1563:
	move.w 268(%a2),%a0
	cmp.w #24,%d2
	jle .L1577
.L1570:
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
.L1557:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1576:
	move.w 288(%a2),%d2
	move.w 250(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #24,%d2
	jgt .L1570
.L1577:
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
.L1564:
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
	jle .L1568
.L1569:
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
	jra .L1563
.L1575:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1558
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1557
	cmp.w #43,%d0
	jeq .L1560
	tst.b 273(%a2)
	jne .L1560
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1560:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1568:
	cmp.w #182,%d0
	jeq .L1569
	move.w %d1,240(%a2)
	jra .L1563
.L1565:
	cmp.w #166,%d0
	jeq .L1566
	move.w %d1,240(%a2)
	jra .L1563
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
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jne .L1587
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976736,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1587:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976736,8(%fp)
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
	jle .L1589
	move.w 14(%a3),%d1
	cmp.w #2,%d1
	jeq .L1607
	cmp.w #3,%d1
	jeq .L1594
.L1592:
	move.w 288(%a2),%d1
.L1595:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	cmp.w #1,%d1
	jeq .L1608
.L1596:
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
.L1589:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1607:
	tst.w 286(%a2)
	jne .L1592
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #72,%d0
	jeq .L1589
	cmp.w #43,%d0
	jeq .L1593
	tst.b 273(%a0)
	jne .L1593
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1593:
	move.l 288(%a5),%a1
	move.l %a1,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a1),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1594:
	move.w 288(%a2),%d1
	jne .L1595
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
	jra .L1589
.L1608:
	pea 8.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1596
	move.w raptor_ticks,%d0
	move.w 290(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1598
	move.w %d0,290(%a2)
	addq.w #1,292(%a2)
	tst.w 294(%a2)
	jeq .L1609
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
.L1598:
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
	jle .L1596
	move.w #1,292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1589
	cmp.w #43,%d0
	jeq .L1602
	tst.b 273(%a2)
	jne .L1602
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1602:
	move.l 268(%a5),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1609:
	move.w #1,294(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxKanoHeartbeatP12SoundHandler
	move.w 246(%a2),%a0
	move.w 254(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,268(%a2)
	jeq .L1610
	clr.w %d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
.L1611:
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
	jra .L1598
.L1610:
	moveq #40,%d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
	jra .L1611
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
	jeq .L1619
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
.L1619:
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
	jne .L1622
	move.w raptor_ticks,%d0
	move.w %d0,%a3
	move.w 240(%a2),%a1
	addq.l #2,%a1
	cmp.l %a3,%a1
	jlt .L1627
	cmp.w #5,290(%a2)
	jle .L1621
.L1628:
	move.w #1,286(%a2)
	clr.w 290(%a2)
	move.w raptor_ticks,240(%a2)
.L1621:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1622:
	cmp.w #1,292(%a2)
	jne .L1621
	tst.w 290(%a2)
	jne .L1621
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
	jeq .L1621
	cmp.w #43,%d0
	jeq .L1625
	tst.b 273(%a2)
	jne .L1625
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1625:
	move.l 264(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1627:
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
	jle .L1621
	jra .L1628
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
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jne .L1638
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975248,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1638:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975248,8(%fp)
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
	jne .L1641
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1652
.L1640:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1641:
	cmp.w #1,%d0
	jne .L1640
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1640
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1640
	cmp.w #43,%d0
	jeq .L1648
	tst.b 273(%a2)
	jne .L1648
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1648:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#15372
	unlk %fp
	jmp (%a0)
.L1652:
	pea 6.w
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	tst.b %d0
	jeq .L1643
	tst.w 286(%a2)
	jne .L1643
	move.l 438(%a2),%a0
	cmp.w #3,14(%a0)
	jeq .L1653
.L1644:
	pea 8.w
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1647
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
.L1647:
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
.L1643:
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
.L1653:
	tst.w 294(%a2)
	jne .L1644
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxRaidenHeadZapP12SoundHandler
	move.w #1,294(%a2)
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #74,%d0
	jeq .L1654
	cmp.w #43,%d0
	jeq .L1646
	tst.b 273(%a0)
	jne .L1646
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d3
	move.l %d3,4(%a1,%d0.l)
.L1646:
	move.l 296(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	move.l 438(%a2),%a0
	lea (12,%sp),%sp
	jra .L1644
.L1654:
	move.l 438(%a2),%a0
	jra .L1644
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
	jne .L1660
	tst.w 294(%a2)
	jne .L1661
	tst.b 272(%a2)
	jeq .L1662
	pea 16.w
	pea 14.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1661:
	pea 4.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1663
.L1675:
	tst.w 294(%a2)
	jne .L1664
	tst.b 272(%a2)
	jeq .L1665
	pea 16.w
	pea 14.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1664:
	move.w #1,286(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,292(%a2)
	clr.w 294(%a2)
.L1663:
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
.L1659:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1660:
	cmp.w #1,%d0
	jne .L1659
	move.w 290(%a2),%d0
	jne .L1667
	tst.w 288(%a2)
	jeq .L1674
	tst.w 294(%a2)
	jne .L1669
.L1676:
	move.w 240(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1669
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
.L1669:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1670
	cmp.w #1,294(%a2)
	jne .L1670
	move.w #1,290(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra __Z7sfxThudP12SoundHandler
.L1662:
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
	jne .L1675
	jra .L1663
.L1670:
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
	jgt .L1659
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1667:
	cmp.w #1,%d0
	jne .L1659
	move.w #1,286(%a2)
	clr.w 288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L1659
	cmp.w #43,%d0
	jeq .L1671
	tst.b 273(%a2)
	jne .L1671
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1671:
	move.l 264(%a0),%a1
	move.l %a1,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1665:
	pea 16.w
	pea 15.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.w #1,286(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,292(%a2)
	clr.w 294(%a2)
	jra .L1663
.L1674:
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
	jne .L1669
	jra .L1676
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
	jne .L1682
	move.w raptor_ticks,%d0
	move.w %d0,%a1
	move.w 240(%a2),%a3
	lea (59,%a3),%a3
	cmp.l %a3,%a1
	jle .L1683
	move.w 288(%a2),%d1
	jeq .L1699
	tst.b 132(%a2)
	jeq .L1685
	cmp.w #1,%d1
	jeq .L1700
.L1685:
	pea 14.w
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1690
	move.w #1,286(%a2)
.L1690:
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
.L1681:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1682:
	cmp.w #1,%d0
	jeq .L1692
.L1683:
	move.w 294(%a2),%d0
.L1693:
	cmp.w #1,%d0
	jne .L1681
	move.w 240(%a2),%a3
	lea (59,%a3),%a3
	move.w raptor_ticks,%a1
	cmp.l %a3,%a1
	jle .L1681
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #67,%d0
	jeq .L1681
	cmp.w #43,%d0
	jeq .L1696
	tst.b 273(%a2)
	jne .L1696
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1696:
	move.l 268(%a0),%a1
	move.l %a1,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1692:
	move.w 294(%a2),%d0
	jne .L1693
	move.l 650(%a2),%a1
	move.l 434(%a1),%d1
	move.l 298(%a1),%a3
	move.w (%a3),%d0
	cmp.w #70,%d0
	jeq .L1694
	cmp.w #43,%d0
	jeq .L1695
	tst.b 273(%a1)
	jne .L1695
	move.l 92(%a1),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	moveq #-1,%d2
	move.l %d2,4(%a3,%d0.l)
.L1695:
	move.l 280(%a0),%a3
	move.l %a3,298(%a1)
	move.l %d1,-(%sp)
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a3),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1694:
	move.w #1,294(%a2)
	move.w raptor_ticks,240(%a2)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1699:
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
	jra .L1685
.L1700:
	move.w 290(%a2),%a0
	addq.l #1,%a0
	cmp.l %a1,%a0
	jge .L1685
	move.l 134(%a2),%d1
	move.w 254(%a2),%a0
	cmp.l %d1,%a0
	jlt .L1701
	jgt .L1702
	move.w %d0,290(%a2)
	jra .L1685
.L1702:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	move.l 134(%a2),%d0
	addq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jlt .L1697
	clr.b 132(%a2)
	move.w #1,292(%a2)
.L1697:
	move.w raptor_ticks,%d0
	move.w %d0,290(%a2)
	jra .L1685
.L1701:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	move.l 134(%a2),%d0
	subq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jgt .L1697
	clr.b 132(%a2)
	move.w #1,292(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,290(%a2)
	jra .L1685
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
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jne .L1712
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975488,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1712:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975488,8(%fp)
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
	jne .L1714
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1714
	cmp.w #2,14(%a3)
	jeq .L1723
.L1716:
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
	jeq .L1714
	tst.w 290(%a2)
	jeq .L1724
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1725
.L1718:
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
	jeq .L1719
	cmp.w #43,%d0
	jeq .L1720
	tst.b 273(%a0)
	jne .L1720
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1720:
	move.l 308(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1719:
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
	jeq .L1714
	cmp.w #43,%d0
	jeq .L1721
	tst.b 273(%a2)
	jne .L1721
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1721:
	move.l 268(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1725:
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
.L1714:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1723:
	tst.w 288(%a2)
	jne .L1716
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxScorpionSkullP12SoundHandler
	addq.l #4,%sp
	jra .L1716
.L1724:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	addq.l #4,%sp
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jne .L1718
	jra .L1725
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
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jne .L1735
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1735:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975056,8(%fp)
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
	jeq .L1743
	pea 7.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1744
.L1739:
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
.L1737:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1743:
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
	jeq .L1739
.L1744:
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1737
	cmp.w #43,%d0
	jeq .L1741
	tst.b 273(%a2)
	jne .L1741
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1741:
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
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	move.l #12838608,8(%a1)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jeq .L1765
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #-1,%d0
	move.l %d0,24(%a1)
.L1750:
	tst.b 272(%a2)
	jeq .L1763
	moveq #13,%d0
	moveq #9,%d2
.L1751:
	cmp.w #8,(%a0)
	jhi .L1752
	moveq #0,%d1
	move.w (%a0),%d1
	add.l %d1,%d1
	move.w .L1762(%pc,%d1.l),%d1
	jmp %pc@(2,%d1:w)
.L1762:
	.word .L1753-.L1762
	.word .L1754-.L1762
	.word .L1755-.L1762
	.word .L1756-.L1762
	.word .L1757-.L1762
	.word .L1758-.L1762
	.word .L1759-.L1762
	.word .L1760-.L1762
	.word .L1761-.L1762
.L1753:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975920,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1752:
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1763:
	moveq #9,%d0
	moveq #13,%d2
	jra .L1751
.L1765:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #1,%d0
	move.l %d0,24(%a1)
	jra .L1750
.L1760:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976304,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1761:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976208,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1754:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975968,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1755:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976016,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1756:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976064,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1757:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976160,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1758:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976112,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1759:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976256,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975056,8(%fp)
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
	jne .L1767
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1767
	cmp.w #2,14(%a5)
	jeq .L1776
.L1769:
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
	jgt .L1777
.L1767:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1777:
	pea 9.w
	move.l 434(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1778
	move.l sprite,%a0
	move.l 92(%a2),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a1
	moveq #-1,%d0
	cmp.l 4(%a1),%d0
	jeq .L1779
	move.l 650(%a2),%a1
	move.l 92(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1780
.L1774:
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
.L1781:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1776:
	tst.w 288(%a2)
	jne .L1769
	move.w #1,288(%a2)
	move.l 650(%a2),%a0
	move.w #1,294(%a0)
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	cmp.w #79,%d0
	jeq .L1769
	cmp.w #43,%d0
	jeq .L1770
	tst.b 273(%a0)
	jne .L1770
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1770:
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
	jle .L1767
	jra .L1777
.L1780:
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
	jra .L1781
.L1779:
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
	jne .L1774
	jra .L1780
.L1778:
	move.w #1,292(%a2)
	move.w #123,290(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1767
	cmp.w #43,%d0
	jeq .L1772
	tst.b 273(%a2)
	jne .L1772
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1772:
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
	jeq .L1789
	move.l 650(%a0),%a1
	move.w 254(%a1),%a1
	lea (-56,%a1),%a1
	move.w %a1,254(%a0)
	unlk %fp
	rts
.L1789:
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
	jne .L1792
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l 158(%a2),%d1
	addq.l #2,%d1
	cmp.l %a0,%d1
	jge .L1805
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
.L1794:
	cmp.w #5,%d1
	jle .L1795
	move.w #1,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 14(%a3)
	move.w %d0,292(%a2)
	clr.w 294(%a2)
.L1795:
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
.L1791:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1792:
	cmp.w #1,%d0
	jne .L1791
	move.w 290(%a2),%d0
	jne .L1797
	tst.w 288(%a2)
	jeq .L1806
	tst.w 294(%a2)
	jne .L1799
	move.w 240(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1807
.L1799:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1808
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
	jgt .L1791
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1805:
	move.w 290(%a2),%d1
	jra .L1794
.L1797:
	cmp.w #1,%d0
	jne .L1791
	move.w 246(%a2),%a0
	addq.w #6,%a0
	move.w %a0,%a0
	move.w 254(%a2),%d0
	cmp.w #-1,268(%a2)
	jeq .L1809
	moveq #-72,%d1
.L1801:
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
	jeq .L1791
	cmp.w #43,%d0
	jeq .L1802
	tst.b 273(%a2)
	jne .L1802
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1802:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1806:
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
	jra .L1799
.L1809:
	moveq #42,%d1
	jra .L1801
.L1807:
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
	jra .L1799
.L1808:
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
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jne .L1819
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975488,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1819:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975488,8(%fp)
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
	jne .L1821
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1821
	cmp.w #1,14(%a5)
	jeq .L1835
.L1823:
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
	jeq .L1821
	tst.w 290(%a2)
	jeq .L1836
	move.w 292(%a2),%d0
	cmp.w #15,%d0
	jgt .L1825
.L1839:
	move.w 296(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1825
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1837
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
.L1821:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1825:
	move.w 294(%a2),%d1
	jne .L1827
	cmp.w #15,%d0
	jle .L1821
	move.w 296(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1821
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
	jeq .L1838
	cmp.w #-1,%d0
	jne .L1821
	move.w 252(%a2),%a1
	move.l 650(%a2),%a0
	move.w 254(%a0),%a0
	lea (48,%a0),%a0
	cmp.l %a1,%a0
	jlt .L1821
.L1829:
	tst.w 294(%a2)
	jne .L1821
	move.l 264(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	move.w #1,294(%a2)
	move.l 438(%a2),%a0
	move.w #6,14(%a0)
	addq.l #4,%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1835:
	tst.w 288(%a2)
	jne .L1823
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z12sfxSonyaKissP12SoundHandler
	addq.l #4,%sp
	jra .L1823
.L1836:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z22sfxKanoCannonBallStartP12SoundHandler
	move.w raptor_ticks,296(%a2)
	addq.l #4,%sp
	move.w 292(%a2),%d0
	cmp.w #15,%d0
	jgt .L1825
	jra .L1839
.L1827:
	cmp.w #1,%d1
	jne .L1821
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
	jeq .L1840
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
	jeq .L1831
	cmp.w #43,%d0
	jeq .L1832
	tst.b 273(%a0)
	jne .L1832
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1832:
	move.l 308(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1831:
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1821
	cmp.w #43,%d0
	jeq .L1833
	tst.b 273(%a2)
	jne .L1833
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1833:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1837:
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
	jra .L1821
.L1840:
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
.L1838:
	move.l 650(%a2),%a0
	move.w 254(%a0),%d0
	cmp.w 252(%a2),%d0
	jle .L1829
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
	jle .L1845
	move.w 286(%a2),%d0
	jeq .L1857
	cmp.w #1,%d0
	jeq .L1858
.L1845:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1857:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1848
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1858:
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1845
	tst.w 290(%a2)
	jeq .L1859
.L1849:
	move.w 294(%a2),%d0
	jeq .L1860
	cmp.w #1,%d0
	jne .L1845
	cmp.w #1,296(%a2)
	jne .L1845
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1861
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
.L1848:
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
.L1859:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1849
.L1860:
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1851
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #82,%d0
	jeq .L1852
	cmp.w #43,%d0
	jeq .L1853
	tst.b 273(%a0)
	jne .L1853
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1853:
	move.l 328(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1852:
	clr.w 288(%a2)
	move.w #1,294(%a2)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1851:
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
.L1861:
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1845
	cmp.w #43,%d0
	jeq .L1855
	tst.b 273(%a2)
	jne .L1855
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1855:
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
	move.l #12838608,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12838608,44(%a3)
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
	jls .L1893
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1893:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1875(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1875:
	.word .L1867-.L1875
	.word .L1868-.L1875
	.word .L1869-.L1875
	.word .L1870-.L1875
	.word .L1871-.L1875
	.word .L1872-.L1875
	.word .L1873-.L1875
	.word .L1874-.L1875
.L1873:
	tst.b 272(%a2)
	jne .L1894
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976640,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1874:
	tst.b 272(%a2)
	jeq .L1891
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976688,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1867:
	tst.b 272(%a2)
	jne .L1895
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976352,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1868:
	tst.b 272(%a2)
	jne .L1896
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976400,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1869:
	tst.b 272(%a2)
	jne .L1897
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976448,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1870:
	tst.b 272(%a2)
	jne .L1898
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976496,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1871:
	tst.b 272(%a2)
	jne .L1899
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976592,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1872:
	tst.b 272(%a2)
	jne .L1900
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976544,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1891:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976688,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1894:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976640,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1900:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976544,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1899:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976592,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1898:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976496,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1897:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976448,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1896:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976400,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1895:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976352,8(%fp)
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
	jeq .L1927
.L1903:
	tst.w 14(%a3)
	jne .L1906
	tst.w 286(%a2)
	jne .L1906
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1906
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
.L1906:
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
	jle .L1928
	tst.w 290(%a2)
	jne .L1909
	move.w 288(%a2),%d2
	move.w %d2,%a1
	move.l %a1,%a4
	add.l #__ZL15UppercutOffsets,%a4
	move.w (%a4,%a1.l),%d0
	add.w 250(%a2),%d0
	move.w %d0,250(%a2)
	cmp.w #166,%d0
	jle .L1910
	move.w #166,250(%a2)
.L1910:
	addq.w #1,%d2
	move.w %d2,288(%a2)
	move.l 650(%a2),%a1
	cmp.w #23,%d2
	jle .L1924
	tst.w 296(%a1)
	jne .L1924
	move.w #1,296(%a1)
	move.l 434(%a1),%a1
	clr.w 14(%a1)
.L1914:
	move.w 294(%a2),%d0
.L1915:
	cmp.w #1,%d0
	jeq .L1917
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	move.w %a0,240(%a2)
.L1908:
	move.w %d0,%a0
	cmp.w #24,%d2
	jle .L1929
.L1922:
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
.L1902:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1928:
	move.w 288(%a2),%d2
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	move.w %d0,%a0
	cmp.w #24,%d2
	jgt .L1922
.L1929:
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
.L1909:
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
	jle .L1920
.L1921:
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
	jra .L1908
.L1927:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1903
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1902
	cmp.w #43,%d0
	jeq .L1905
	tst.b 273(%a2)
	jne .L1905
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1905:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1920:
	cmp.w #182,%d1
	jeq .L1921
	move.w %a0,240(%a2)
	jra .L1908
.L1924:
	move.l 434(%a1),%a1
	move.w 14(%a1),%d0
	cmp.w #1,%d0
	jne .L1914
	move.w 294(%a2),%d0
	jne .L1915
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
	jgt .L1919
.L1930:
	move.w raptor_ticks,%a0
	move.w 268(%a2),%d0
	move.w %a0,240(%a2)
	jra .L1908
.L1917:
	move.w 268(%a2),%d0
	neg.w %d0
	lsl.w #3,%d0
	add.w %d0,252(%a2)
	move.w 250(%a2),%d1
	cmp.w #165,%d1
	jle .L1930
.L1919:
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
	jra .L1908
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
	jge .L1936
	move.l 2(%a0),%d0
	move.l %d0,%d3
	add.l %d0,%d3
	add.l %d0,%d3
	lsl.l #6,%d3
	move.l sprite,%a1
	add.l %d3,%a1
	move.w 12(%a1),%d3
	cmp.w #1,%d3
	jle .L1937
	move.w 288(%a0),%d0
	jle .L1935
	move.w %d3,%a2
	sub.w %d0,%a2
	clr.w 288(%a0)
	cmp.w #0,%a2
	jle .L1942
	move.w %a2,12(%a1)
.L1935:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1936:
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
.L1937:
	move.w 288(%a0),%d3
	jle .L1935
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
.L1942:
	move.w #1,%a2
	move.w %a2,12(%a1)
	jra .L1935
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
	jne .L1949
	move.w 290(%a2),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1958
.L1949:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w 292(%a2),%d0
	cmp.l %a1,%a0
	jle .L1951
	tst.w %d0
	jeq .L1959
.L1951:
	cmp.w #1,%d0
	jeq .L1960
.L1947:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1959:
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
	jeq .L1961
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
.L1962:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1958:
	move.w #1,296(%a2)
	jsr __Z9musicStopv
	move.w raptor_ticks,%a0
	jra .L1949
.L1960:
	jsr __Z20cameraIsScrollingPitv
	tst.b %d0
	jne .L1947
	tst.w 294(%a2)
	jne .L1947
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
	jeq .L1954
	cmp.w #43,%d0
	jeq .L1955
	tst.b 273(%a0)
	jne .L1955
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1955:
	move.l 268(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1954:
	move.w #1,286(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1947
	cmp.w #43,%d0
	jeq .L1956
	tst.b 273(%a2)
	jne .L1956
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1956:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1961:
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
	jra .L1962
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
