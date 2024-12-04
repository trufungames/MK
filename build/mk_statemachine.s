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
	jne .L112
.L60:
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L112:
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
	jeq .L67
	cmp.w #-1,268(%a2)
	jeq .L66
.L67:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L68
.L69:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L70
	tst.b 273(%a2)
	jne .L70
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L70:
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
.L68:
	move.l %d0,%d3
	and.l JAGPAD_UP,%d3
	jeq .L71
	move.w 268(%a2),%d4
	cmp.w #1,%d4
	jeq .L113
	cmp.w #-1,%d4
	jne .L71
	tst.l %d1
	jne .L73
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L106
.L107:
	moveq #0,%d4
.L79:
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jeq .L84
.L83:
	tst.b 101(%a2)
	jeq .L84
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #11,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L85
	tst.b 273(%a2)
	jne .L85
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L85:
	move.l 44(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L71:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jeq .L81
	cmp.w #1,268(%a2)
	jeq .L82
.L81:
	tst.l %d1
	jeq .L79
	cmp.w #-1,268(%a2)
	jne .L79
.L82:
	move.l %d0,%d5
	and.l JAGPAD_C,%d5
	jne .L83
	move.l %d0,%d5
	and.l JAGPAD_7,%d5
	jne .L83
.L84:
	tst.l %d4
	jeq .L86
	cmp.w #1,268(%a2)
	jeq .L87
.L86:
	tst.l %d1
	jeq .L88
	cmp.w #-1,268(%a2)
	jeq .L87
.L88:
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L90
.L89:
	tst.b 101(%a2)
	jeq .L90
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #14,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L91
	tst.b 273(%a2)
	jne .L91
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L91:
	move.l 56(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L66:
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L68
	and.l JAGPAD_A,%d0
	jeq .L69
	tst.b 101(%a2)
	jeq .L69
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 20.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L90:
	move.w 268(%a2),%d5
	cmp.w #1,%d5
	jeq .L114
	cmp.w #-1,%d5
	jeq .L115
.L95:
	tst.l %d3
	jne .L116
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L102
	tst.b 141(%a2)
	jeq .L103
	tst.b 101(%a2)
	jne .L117
.L102:
	and.l JAGPAD_A,%d0
	jeq .L60
	tst.b 101(%a2)
	jeq .L60
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #13,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L105
	tst.b 273(%a2)
	jne .L105
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L105:
	move.l 52(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L115:
	tst.l %d1
	jne .L93
	tst.l %d4
	jeq .L95
.L98:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #4,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L99
	tst.b 273(%a2)
	jne .L99
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L99:
	move.l 16(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L87:
	move.l %d0,%d5
	and.l JAGPAD_A,%d5
	jne .L89
	move.l %d0,%d5
	and.l JAGPAD_9,%d5
	jeq .L90
	jra .L89
.L113:
	move.l %d0,%d4
	and.l JAGPAD_RIGHT,%d4
	jne .L73
	tst.l %d1
	jeq .L107
.L106:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #7,%d0
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
	move.l 28(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L117:
	move.l %d2,-(%sp)
	move.l %a2,-(%sp)
	pea 40.w
	move.l %a3,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -24(%fp),#3132
	unlk %fp
	rts
.L114:
	tst.l %d4
	jne .L93
	tst.l %d1
	jeq .L95
	jra .L98
.L93:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #3,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L97
	tst.b 273(%a2)
	jne .L97
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L97:
	move.l 12(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L73:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #6,%d0
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
	move.l 24(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L103:
	tst.b 101(%a2)
	jeq .L102
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #9,%d0
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
	move.l 36(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#3132
	unlk %fp
	jmp (%a0)
.L116:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L60
	cmp.w #43,%d0
	jeq .L101
	tst.b 273(%a2)
	jne .L101
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L101:
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
	jeq .L125
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
	jeq .L126
.L120:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L126:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L120
	cmp.w #43,%d0
	jeq .L123
	tst.b 273(%a2)
	jne .L123
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L123:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L125:
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
	jne .L130
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jeq .L134
.L130:
	and.l JAGPAD_DOWN,%d0
	jne .L135
.L129:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L135:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #8,%d0
	jeq .L129
	cmp.w #43,%d0
	jeq .L132
	tst.b 273(%a0)
	jne .L132
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L132:
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
.L134:
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
	jeq .L138
	clr.w 14(%a1)
	clr.b 302(%a0)
	move.w raptor_ticks,240(%a0)
	unlk %fp
	rts
.L138:
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
	jeq .L147
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
	jeq .L148
.L142:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L148:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L142
	cmp.w #43,%d0
	jeq .L145
	tst.b 273(%a2)
	jne .L145
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L145:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L147:
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
	jeq .L164
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L154
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L154
	tst.b 101(%a0)
	jeq .L151
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L157
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L157
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L160
	and.l JAGPAD_9,%d0
	jeq .L151
.L160:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #17,%d0
	jeq .L151
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
.L164:
	move.b #1,302(%a0)
.L151:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L154:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #8,%d0
	jeq .L151
	cmp.w #43,%d0
	jeq .L156
	tst.b 273(%a0)
	jne .L156
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L156:
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
.L157:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #16,%d0
	jeq .L151
	cmp.w #43,%d0
	jeq .L159
	tst.b 273(%a0)
	jne .L159
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L159:
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
	jle .L168
	tst.b 139(%a2)
	jeq .L169
	move.w 268(%a2),%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,286(%a2)
	move.w raptor_ticks,240(%a2)
.L168:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 302(%a2)
	jeq .L167
	cmp.w #31,286(%a2)
	jgt .L174
.L167:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L169:
	move.w 268(%a2),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	addq.w #4,286(%a2)
	move.w raptor_ticks,240(%a2)
	jra .L168
.L174:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L167
	cmp.w #43,%d0
	jeq .L172
	tst.b 273(%a2)
	jne .L172
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L172:
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
	jeq .L204
	cmp.w #-1,%d0
	jeq .L205
.L179:
	move.b #1,302(%a0)
.L177:
	movem.l (%sp)+,#1052
	unlk %fp
	rts
.L205:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jeq .L179
.L180:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L206
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jeq .L184
	tst.b 139(%a0)
	jeq .L184
	tst.b 101(%a0)
	jne .L207
.L184:
	move.l %d0,%d3
	and.l JAGPAD_A,%d3
	jeq .L208
.L186:
	tst.b 139(%a0)
	jeq .L187
	tst.b 101(%a0)
	jne .L209
.L187:
	and.l JAGPAD_7,%d0
	jeq .L189
	tst.b 101(%a0)
	jne .L201
.L189:
	tst.l %d2
	jeq .L191
	tst.b 101(%a0)
	jne .L201
.L191:
	tst.l %d3
	jeq .L177
	tst.b 101(%a0)
	jeq .L177
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #14,%d0
	jeq .L177
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
	move.l 56(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L204:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jne .L180
	move.b #1,302(%a0)
	jra .L177
.L208:
	move.l %d0,%d4
	and.l JAGPAD_9,%d4
	jeq .L187
	jra .L186
.L206:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #6,%d0
	jeq .L177
	cmp.w #43,%d0
	jeq .L183
	tst.b 273(%a0)
	jne .L183
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L183:
	move.l 24(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L201:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #11,%d0
	jeq .L177
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
	move.l 44(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L209:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #39,%d0
	jeq .L177
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
	move.l 156(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1052
	unlk %fp
	jmp (%a0)
.L207:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #38,%d0
	jeq .L177
	cmp.w #43,%d0
	jeq .L185
	tst.b 273(%a0)
	jne .L185
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L185:
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
	jgt .L217
.L213:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	addq.l #4,%sp
	tst.b 302(%a2)
	jeq .L212
	cmp.w #27,286(%a2)
	jgt .L218
.L212:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L217:
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
	jra .L213
.L218:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L212
	cmp.w #43,%d0
	jeq .L215
	tst.b 273(%a2)
	jne .L215
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L215:
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
	jeq .L237
	cmp.w #-1,%d0
	jeq .L238
.L223:
	move.b #1,302(%a0)
.L221:
	movem.l (%sp)+,#1036
	unlk %fp
	rts
.L238:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_RIGHT,%d2
	jeq .L223
.L224:
	move.l %d0,%d2
	and.l JAGPAD_UP,%d2
	jne .L239
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jeq .L228
	move.l %d0,%d3
	and.l JAGPAD_DOWN,%d3
	jeq .L228
	tst.b 101(%a0)
	jne .L240
.L228:
	move.l %d0,%d3
	and.l JAGPAD_7,%d3
	jeq .L241
	tst.b 101(%a0)
	jne .L242
.L231:
	tst.l %d2
	jeq .L221
	tst.b 101(%a0)
	jeq .L221
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #15,%d0
	jeq .L221
	cmp.w #43,%d0
	jeq .L233
	tst.b 273(%a0)
	jne .L233
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L233:
	move.l 60(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L237:
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_LEFT,%d2
	jne .L224
	move.b #1,302(%a0)
	jra .L221
.L241:
	and.l JAGPAD_C,%d0
	jeq .L231
	tst.b 101(%a0)
	jeq .L231
	jra .L242
.L239:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #7,%d0
	jeq .L221
	cmp.w #43,%d0
	jeq .L227
	tst.b 273(%a0)
	jne .L227
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L227:
	move.l 28(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L242:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #11,%d0
	jeq .L221
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
	move.l 44(%a1),%a2
	move.l %a2,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a1,8(%fp)
	move.l 2(%a2),%a0
	movem.l (%sp)+,#1036
	unlk %fp
	jmp (%a0)
.L240:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #20,%d0
	jeq .L221
	cmp.w #43,%d0
	jeq .L229
	tst.b 273(%a0)
	jne .L229
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L229:
	move.l 80(%a1),%a2
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
	jls .L257
	cmp.w #18,%d0
	jeq .L258
	cmp.w #19,%d0
	jeq .L259
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
.L247:
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L255
	tst.b 176(%a2)
	jne .L255
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
	jgt .L260
.L245:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L255:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L245
.L260:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L245
	cmp.w #43,%d0
	jeq .L254
	tst.b 273(%a2)
	jne .L254
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L254:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L259:
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
	jra .L247
.L257:
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
	jra .L247
.L258:
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
	jra .L247
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
	jne .L264
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jeq .L265
.L264:
	tst.b 101(%a0)
	jne .L272
.L265:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jeq .L273
	tst.b 101(%a0)
	jne .L274
.L263:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L273:
	and.l JAGPAD_9,%d0
	jeq .L263
	tst.b 101(%a0)
	jeq .L263
.L274:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #19,%d0
	jeq .L263
	cmp.w #43,%d0
	jeq .L269
	tst.b 273(%a0)
	jne .L269
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L269:
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
.L272:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #18,%d0
	jeq .L263
	cmp.w #43,%d0
	jeq .L267
	tst.b 273(%a0)
	jne .L267
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d1
	move.l %d1,4(%a2,%d0.l)
.L267:
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
	jle .L283
	tst.b 176(%a2)
	jeq .L280
.L283:
	move.w 286(%a2),%d0
.L279:
	cmp.w #19,%d0
	jgt .L285
.L277:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L285:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L277
	cmp.w #43,%d0
	jeq .L282
	tst.b 273(%a2)
	jne .L282
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L282:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L280:
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
	jne .L279
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L277
	jra .L285
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
	jeq .L288
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L290
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L290
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L293
	and.l JAGPAD_7,%d0
	jeq .L288
.L293:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #23,%d0
	jeq .L288
	cmp.w #43,%d0
	jeq .L294
	tst.b 273(%a0)
	jne .L294
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L294:
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
.L288:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L290:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #21,%d0
	jeq .L288
	cmp.w #43,%d0
	jeq .L292
	tst.b 273(%a0)
	jne .L292
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L292:
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
	jle .L305
	tst.b 176(%a2)
	jeq .L302
.L305:
	move.w 286(%a2),%d0
.L301:
	cmp.w #19,%d0
	jgt .L307
.L299:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L307:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L299
	cmp.w #43,%d0
	jeq .L304
	tst.b 273(%a2)
	jne .L304
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L304:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L302:
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
	jne .L301
	move.l 264(%a2),-(%sp)
	jsr __Z11sfxJumpRollP12SoundHandler
	move.w 286(%a2),%d0
	addq.l #4,%sp
	cmp.w #19,%d0
	jle .L299
	jra .L307
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
	jeq .L310
	move.l 196(%a0),%d0
	move.l %d0,%d2
	and.l JAGPAD_A,%d2
	jne .L312
	move.l %d0,%d2
	and.l JAGPAD_9,%d2
	jne .L312
	move.l %d0,%d2
	and.l JAGPAD_C,%d2
	jne .L315
	and.l JAGPAD_7,%d0
	jeq .L310
.L315:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #24,%d0
	jeq .L310
	cmp.w #43,%d0
	jeq .L316
	tst.b 273(%a0)
	jne .L316
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L316:
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
.L310:
	move.l (%sp)+,%d2
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L312:
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #22,%d0
	jeq .L310
	cmp.w #43,%d0
	jeq .L314
	tst.b 273(%a0)
	jne .L314
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a2
	moveq #-1,%d2
	move.l %d2,4(%a2,%d0.l)
.L314:
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
	jeq .L332
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
	jne .L321
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L324
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L324
	and.l JAGPAD_DOWN,%d0
	jne .L333
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L321
	cmp.w #43,%d0
	jeq .L329
	tst.b 273(%a2)
	jne .L329
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L329:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L332:
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
.L321:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L324:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L321
	cmp.w #43,%d0
	jeq .L326
	tst.b 273(%a2)
	jne .L326
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L326:
	move.l 4(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L333:
	move.w #1,286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L321
	cmp.w #43,%d0
	jeq .L328
	tst.b 273(%a2)
	jne .L328
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L328:
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
	jeq .L337
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L336
	and.l JAGPAD_8,%d0
	jne .L336
.L337:
	move.b #1,302(%a0)
.L336:
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
	jeq .L350
.L343:
	tst.w 286(%a2)
	jle .L344
.L351:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #10,%d0
	jeq .L342
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
	move.l 40(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L350:
	tst.w 290(%a2)
	jne .L343
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
	jgt .L351
.L344:
	move.w 36(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L352
.L342:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L352:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L342
	cmp.w #43,%d0
	jeq .L347
	tst.b 273(%a2)
	jne .L347
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L347:
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
	jeq .L355
	move.l JAGPAD_C,%d0
	and.l 196(%a0),%d0
	jeq .L355
	addq.w #1,286(%a0)
.L355:
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
	jne .L361
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
	jeq .L367
.L362:
	tst.w 286(%a2)
	jle .L363
.L368:
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
.L360:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L361:
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
	jeq .L360
	cmp.w #43,%d0
	jeq .L365
	tst.b 273(%a2)
	jne .L365
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L365:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L363:
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L360
	move.b #1,302(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L367:
	tst.w 290(%a2)
	jne .L362
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
	jra .L363
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
	jeq .L371
	move.l JAGPAD_C,%d0
	and.l 196(%a0),%d0
	jeq .L371
	addq.w #1,286(%a0)
.L371:
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
	jeq .L384
.L377:
	tst.w 286(%a2)
	jle .L378
.L385:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #12,%d0
	jeq .L376
	cmp.w #43,%d0
	jeq .L380
	tst.b 273(%a2)
	jne .L380
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L380:
	move.l 48(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L384:
	tst.w 290(%a2)
	jne .L377
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
.L378:
	move.w 40(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L386
.L376:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L386:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L376
	cmp.w #43,%d0
	jeq .L381
	tst.b 273(%a2)
	jne .L381
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L381:
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
	jeq .L389
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L393
	addq.w #1,286(%a0)
.L389:
	unlk %fp
	rts
.L393:
	and.l JAGPAD_7,%d0
	jeq .L389
	addq.w #1,286(%a0)
	jra .L389
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
	jne .L397
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
	jeq .L403
.L398:
	tst.w 286(%a2)
	jle .L399
.L404:
	clr.w 286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 290(%a2)
.L396:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L397:
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
	jeq .L396
	cmp.w #43,%d0
	jeq .L401
	tst.b 273(%a2)
	jne .L401
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L401:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L399:
	move.w raptor_ticks,%d0
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L396
	move.b #1,302(%a2)
	move.w #3,14(%a3)
	move.w %d0,12(%a3)
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L403:
	tst.w 290(%a2)
	jne .L398
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
	jgt .L404
	jra .L399
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
	jeq .L407
	move.l 196(%a0),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jeq .L411
	addq.w #1,286(%a0)
.L407:
	unlk %fp
	rts
.L411:
	and.l JAGPAD_7,%d0
	jeq .L407
	addq.w #1,286(%a0)
	jra .L407
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
	jeq .L419
.L415:
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L420
.L414:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L420:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L414
	cmp.w #43,%d0
	jeq .L417
	tst.b 273(%a2)
	jne .L417
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L417:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L419:
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
	move.w 44(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L414
	jra .L420
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
	jeq .L430
.L426:
	move.w 46(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L431
.L425:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L431:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L425
	cmp.w #43,%d0
	jeq .L428
	tst.b 273(%a2)
	jne .L428
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L428:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L430:
	tst.w 290(%a2)
	jne .L426
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
	jeq .L425
	jra .L431
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
	jne .L440
.L436:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L440:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L436
	cmp.w #43,%d0
	jeq .L438
	tst.b 273(%a2)
	jne .L438
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L438:
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
	jne .L449
.L445:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L449:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L445
	cmp.w #43,%d0
	jeq .L447
	tst.b 273(%a2)
	jne .L447
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L447:
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
	jne .L458
.L454:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L458:
	move.w #1,286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #2,%d0
	jeq .L454
	cmp.w #43,%d0
	jeq .L456
	tst.b 273(%a2)
	jne .L456
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L456:
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
	jle .L469
	tst.b 176(%a2)
	jne .L469
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
	jgt .L471
.L463:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L469:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L463
.L471:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L463
	cmp.w #43,%d0
	jeq .L468
	tst.b 273(%a2)
	jne .L468
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L468:
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
	jle .L482
	tst.b 176(%a2)
	jne .L482
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
	jgt .L484
.L476:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L482:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jle .L476
.L484:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L476
	cmp.w #43,%d0
	jeq .L481
	tst.b 273(%a2)
	jne .L481
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L481:
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
	jne .L493
.L489:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L493:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L489
	cmp.w #43,%d0
	jeq .L491
	tst.b 273(%a2)
	jne .L491
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L491:
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
	jgt .L499
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L505
.L498:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L499:
	tst.w 288(%a2)
	jeq .L506
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L507:
	cmp.w #19,%d1
	jle .L498
.L505:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L498
	cmp.w #43,%d0
	jeq .L503
	tst.b 273(%a2)
	jne .L503
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L503:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L506:
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
	jra .L507
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
	jle .L518
	tst.b 176(%a2)
	jeq .L515
.L518:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L520
.L512:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L520:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L512
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
.L515:
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
	jle .L512
	jra .L520
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
	jgt .L526
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L532
.L525:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L526:
	tst.w 288(%a2)
	jeq .L533
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11FlipOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L534:
	cmp.w #19,%d1
	jle .L525
.L532:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L525
	cmp.w #43,%d0
	jeq .L530
	tst.b 273(%a2)
	jne .L530
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L530:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L533:
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
	jra .L534
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
	jle .L545
	tst.b 176(%a2)
	jeq .L542
.L545:
	move.w 286(%a2),%d0
	cmp.w #19,%d0
	jgt .L547
.L539:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L547:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L539
	cmp.w #43,%d0
	jeq .L544
	tst.b 273(%a2)
	jne .L544
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L544:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L542:
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
	jle .L539
	jra .L547
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
	jle .L556
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
.L556:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L551
	cmp.w #43,%d0
	jeq .L554
	tst.b 273(%a2)
	jne .L554
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L554:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L551:
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
	jne .L562
.L558:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L562:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L558
	cmp.w #43,%d0
	jeq .L560
	tst.b 273(%a2)
	jne .L560
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L560:
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
	jle .L571
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
.L571:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L566
	cmp.w #43,%d0
	jeq .L569
	tst.b 273(%a2)
	jne .L569
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L569:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L566:
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
	jne .L577
.L573:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L577:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L573
	cmp.w #43,%d0
	jeq .L575
	tst.b 273(%a2)
	jne .L575
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L575:
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
	jle .L586
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
.L586:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L581
	cmp.w #43,%d0
	jeq .L584
	tst.b 273(%a2)
	jne .L584
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L584:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L581:
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
	jne .L592
.L588:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L592:
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
	jeq .L588
	cmp.w #43,%d0
	jeq .L590
	tst.b 273(%a2)
	jne .L590
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L590:
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
	jne .L601
.L597:
	clr.w 14(%a3)
	move.w raptor_ticks,%d0
	move.w %d0,12(%a3)
	clr.b 302(%a2)
	move.w %d0,240(%a2)
	cmp.w #2,(%a2)
	jeq .L602
.L596:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L601:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L597
	cmp.w #43,%d0
	jeq .L598
	tst.b 273(%a2)
	jne .L598
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
.L598:
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
	jne .L596
.L602:
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
	jne .L608
.L604:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L608:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L604
	cmp.w #43,%d0
	jeq .L606
	tst.b 273(%a2)
	jne .L606
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L606:
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
	jle .L617
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
	jeq .L618
.L612:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L618:
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
.L617:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L612
	cmp.w #43,%d0
	jeq .L615
	tst.b 273(%a2)
	jne .L615
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L615:
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
	jeq .L626
.L621:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L627
.L622:
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
	jne .L628
.L620:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L628:
	clr.b 138(%a2)
	clr.b 106(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L620
	cmp.w #43,%d0
	jeq .L624
	tst.b 273(%a2)
	jne .L624
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L624:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L627:
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
	jeq .L620
	jra .L628
.L626:
	tst.w 286(%a2)
	jne .L621
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
	jle .L622
	jra .L627
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
	jle .L637
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
.L637:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #34,%d0
	jeq .L632
	cmp.w #43,%d0
	jeq .L635
	tst.b 273(%a2)
	jne .L635
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L635:
	move.l 136(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L632:
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
	jeq .L645
.L640:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L646
.L641:
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
	jne .L647
.L639:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L647:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L639
	cmp.w #43,%d0
	jeq .L643
	tst.b 273(%a2)
	jne .L643
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L643:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L646:
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
	jeq .L639
	jra .L647
.L645:
	tst.w 286(%a2)
	jne .L640
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
	jle .L641
	jra .L646
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
	jeq .L660
	cmp.w #8,%d0
	jeq .L661
.L654:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L662
.L652:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L662:
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
	jeq .L663
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
.L665:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L661:
	tst.w 290(%a2)
	jne .L654
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L652
	jra .L662
.L660:
	tst.w 288(%a2)
	jne .L654
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
	jle .L652
	jra .L662
.L663:
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
	jeq .L664
	cmp.w #43,%d0
	jeq .L658
	tst.b 273(%a2)
	jne .L658
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L658:
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
	jra .L665
.L664:
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
	jra .L665
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
	jne .L673
.L670:
	clr.b 302(%a2)
	move.w raptor_ticks,240(%a2)
	move.b #1,147(%a2)
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L673:
	clr.b 142(%a2)
	move.b #1,144(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L670
	cmp.w #43,%d0
	jeq .L671
	tst.b 273(%a2)
	jne .L671
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
.L671:
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
	jgt .L679
.L675:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L679:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #28,%d0
	jeq .L675
	cmp.w #43,%d0
	jeq .L677
	tst.b 273(%a2)
	jne .L677
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L677:
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
	jeq .L692
	cmp.w #3,%d0
	jeq .L693
.L686:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L694
.L684:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L694:
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
	jeq .L695
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
.L697:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L693:
	tst.w 290(%a2)
	jne .L686
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z27fighterPlayUppercutReactionP12SoundHandler
	addq.l #4,%sp
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L684
	jra .L694
.L692:
	tst.w 288(%a2)
	jne .L686
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
	jle .L684
	jra .L694
.L695:
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
	jeq .L696
	cmp.w #43,%d0
	jeq .L690
	tst.b 273(%a2)
	jne .L690
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L690:
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
	jra .L697
.L696:
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
	jra .L697
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
	jeq .L709
.L703:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L710
.L702:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L710:
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
	jeq .L711
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
.L713:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
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
	jle .L702
	jra .L710
.L711:
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
	jeq .L712
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
	jra .L713
.L712:
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
	jra .L713
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
	jgt .L722
.L719:
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
.L722:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L719
	cmp.w #43,%d0
	jeq .L720
	tst.b 273(%a2)
	jne .L720
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L720:
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
	jne .L731
.L728:
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
.L731:
	clr.b 138(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L728
	cmp.w #43,%d0
	jeq .L729
	tst.b 273(%a2)
	jne .L729
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L729:
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
	jgt .L741
.L737:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	cmp.l %a1,%a0
	jgt .L742
.L739:
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
.L742:
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
.L741:
	clr.b 138(%a2)
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	jeq .L737
	cmp.w #43,%d0
	jeq .L738
	tst.b 273(%a2)
	jne .L738
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L738:
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
	jle .L739
	jra .L742
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
	jne .L748
	cmp.w #2,14(%a3)
	jeq .L753
.L748:
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L754
.L747:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L754:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L747
	cmp.w #43,%d0
	jeq .L751
	tst.b 273(%a2)
	jne .L751
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L751:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L753:
	move.w #1,286(%a2)
	cmp.w #1,(%a2)
	jeq .L755
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L747
	jra .L754
.L755:
	move.l 264(%a2),-(%sp)
	jsr __Z15sfxKanoHeadbuttP12SoundHandler
	addq.l #4,%sp
	move.w 60(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L747
	jra .L754
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
	jne .L761
	cmp.w #2,14(%a3)
	jeq .L765
.L761:
	move.w 62(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L766
.L760:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L766:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L760
	cmp.w #43,%d0
	jeq .L763
	tst.b 273(%a2)
	jne .L763
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L763:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L765:
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
	jeq .L760
	jra .L766
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
	jge .L775
.L771:
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z12sfxThrowMaleP12SoundHandler
.L775:
	cmp.w #5,%d0
	jgt .L776
	move.l 264(%a0),8(%fp)
	unlk %fp
	jra __Z13sfxThrowNinjaP12SoundHandler
.L776:
	cmp.w #6,%d0
	jne .L771
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
	jne .L782
.L778:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L782:
	clr.b 141(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L778
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
	jne .L790
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
.L790:
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
	jle .L802
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L792
	move.w 286(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #21,%d0
	jle .L803
	cmp.w #22,%d0
	jeq .L804
	cmp.w #23,%d0
	jeq .L805
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
	jeq .L806
.L799:
	move.w raptor_ticks,240(%a2)
.L792:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L803:
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
	jne .L799
.L806:
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
	jle .L799
	clr.w 286(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #32,%d0
	jeq .L792
	cmp.w #43,%d0
	jeq .L800
	tst.b 273(%a2)
	jne .L800
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L800:
	move.l 128(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L802:
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
.L804:
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
	jne .L799
	jra .L806
.L805:
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
	jne .L799
	jra .L806
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
	jeq .L818
	tst.w 14(%a3)
	jle .L819
.L815:
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
.L811:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L818:
	move.w 20(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L820
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
.L821:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L820:
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
	jra .L821
.L819:
	clr.b 140(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L815
	cmp.w #43,%d0
	jeq .L816
	tst.b 273(%a2)
	jne .L816
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L816:
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
	jra .L811
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
	jne .L824
	move.w #1,286(%a2)
	move.w 268(%a2),%d0
	neg.w %d0
	move.w %d0,268(%a2)
	move.l sprite,%a0
	cmp.w #1,%d0
	jeq .L831
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
.L824:
	clr.b 138(%a2)
	clr.b 140(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L823
	cmp.w #43,%d0
	jeq .L828
	tst.b 273(%a2)
	jne .L828
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L828:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L831:
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
	jra .L824
.L823:
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
	jls .L855
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12839232,8(%a0)
	move.w %a1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12839232,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #6,%d1
	jls .L856
.L834:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L856:
	and.l #65535,%d1
	add.l %d1,%d1
	move.w .L842(%pc,%d1.l),%d0
	jmp %pc@(2,%d0:w)
.L842:
	.word .L837-.L842
	.word .L838-.L842
	.word .L839-.L842
	.word .L840-.L842
	.word .L834-.L842
	.word .L834-.L842
	.word .L841-.L842
.L855:
	subq.w #8,%d0
	move.w %d0,250(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12839232,8(%a0)
	move.w %a1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12839232,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	move.b #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	cmp.w #6,%d1
	jhi .L834
	jra .L856
.L838:
	tst.b 272(%a2)
	jne .L857
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975824,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z12sfxKanoKnifeP12SoundHandler
.L839:
	tst.b 272(%a2)
	jne .L858
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975872,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L840:
	tst.b 272(%a2)
	jne .L859
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975920,-(%sp)
.L853:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L841:
	tst.b 272(%a2)
	jeq .L852
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975968,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L837:
	tst.b 272(%a2)
	jne .L860
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975776,-(%sp)
.L861:
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L852:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975968,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z13sfxSonyaRingsP12SoundHandler
.L860:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975776,-(%sp)
	jra .L861
.L859:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975920,-(%sp)
	jra .L853
.L858:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975872,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z18sfxRaidenLightningP12SoundHandler
.L857:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975824,-(%sp)
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
	jne .L864
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	cmp.w #2,(%a2)
	jeq .L865
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L895
.L866:
	move.w (%a2),%d0
	cmp.w #1,%d0
	jeq .L896
	cmp.w #2,%d0
	jeq .L871
.L886:
	move.w 268(%a2),%d0
.L870:
	move.w raptor_ticks,%d1
	move.w 288(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jle .L873
	move.w %d0,%d4
	add.w %d0,%d4
	move.w %d4,%d3
	lsl.w #3,%d3
	sub.w %d4,%d3
	add.w %d3,252(%a2)
	move.w %d1,288(%a2)
.L873:
	cmp.w #1,%d0
	jeq .L897
	cmp.w #-1,%d0
	jne .L876
	tst.w 248(%a2)
	jlt .L893
.L876:
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
.L879:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L898
.L863:
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L864:
	tst.w 286(%a2)
	jne .L880
	move.w #1,286(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L880:
	move.w 90(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L893
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
	jne .L863
.L898:
	moveq #1,%d1
	move.l %d1,4(%a0)
	movem.l -24(%fp),#7196
	unlk %fp
	rts
.L897:
	cmp.w #320,248(%a2)
	jle .L876
.L893:
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
	jeq .L863
	cmp.w #43,%d0
	jeq .L882
	tst.b 273(%a2)
	jne .L882
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L882:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#7196
	unlk %fp
	jmp (%a0)
.L895:
	cmp.w #2,(%a2)
	jne .L867
.L865:
	pea 8.w
	move.l 438(%a2),-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jne .L866
.L867:
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
	jra .L879
.L871:
	tst.w 290(%a2)
	jne .L886
	move.w #1,290(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d1
	lsl.w #6,%d1
	add.w %d1,252(%a2)
	jra .L870
.L896:
	tst.w 290(%a2)
	jne .L886
	move.w #1,290(%a2)
	move.w 268(%a2),%d0
	move.w %d0,%d1
	lsl.w #4,%d1
	add.w %d1,252(%a2)
	jra .L870
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
	move.l #12839232,8(%a0)
	move.w %d1,240(%a2)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jeq .L909
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L909:
	tst.b 272(%a2)
	jeq .L906
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975728,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra __Z16sfxCageGreenboltP12SoundHandler
.L906:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12975728,-(%sp)
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
	jeq .L912
	move.w raptor_ticks,%d1
	move.w 286(%a2),%a1
	addq.l #4,%a1
	move.w %d1,%a0
	cmp.l %a1,%a0
	jgt .L929
	cmp.w #6,%d0
	jgt .L914
.L930:
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
.L911:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L929:
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.w %d1,286(%a2)
	cmp.w #6,%d0
	jle .L930
.L914:
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
	jeq .L911
	cmp.w #43,%d0
	jeq .L917
	tst.b 273(%a2)
	jne .L917
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L917:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L912:
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	lea (%a1,%d0.l),%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L931
	move.w raptor_ticks,%d0
	cmp.w #95,288(%a2)
	jgt .L932
.L919:
	move.w 286(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jle .L921
	tst.b 177(%a2)
	jeq .L933
.L920:
	move.w 268(%a2),%d1
	move.w %d1,%d2
	lsl.w #5,%d2
	add.w %d2,252(%a2)
	cmp.w #1,%d1
	jeq .L934
	cmp.w #-1,%d1
	jeq .L935
.L926:
	move.w #3,%a0
	move.w %d0,286(%a2)
.L936:
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
	jra .L911
.L932:
	move.w 286(%a2),%a5
	addq.l #1,%a5
	move.w %d0,%a4
	cmp.l %a5,%a4
	jgt .L920
.L921:
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
	jra .L911
.L931:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w raptor_ticks,%d0
	cmp.w #95,288(%a2)
	jle .L919
	jra .L932
.L935:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jle .L926
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,290(%a2)
	move.w #4,%a0
.L937:
	move.w %d0,286(%a2)
	jra .L936
.L933:
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
	jra .L911
.L934:
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	move.w 8(%a1,%d1.l),%d1
	cmp.w 8(%a0),%d1
	jge .L926
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.w #4,290(%a2)
	move.w #4,%a0
	jra .L937
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
	jeq .L943
	cmp.w #6,%d0
	jeq .L943
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
	jne .L958
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
.L942:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L943:
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
	jle .L942
	move.w 288(%a2),%d2
	move.w 286(%a2),%d1
	tst.w %d2
	jne .L946
	addq.w #1,%d1
	move.w %d1,286(%a2)
	cmp.w #4,%d1
	jne .L947
	move.w #3,286(%a2)
	move.w #1,288(%a2)
.L948:
	move.w %d0,240(%a2)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L946:
	subq.w #1,%d1
	move.w %d1,286(%a2)
.L947:
	tst.w %d1
	jne .L948
	cmp.w #1,%d2
	jne .L948
.L958:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L942
	cmp.w #43,%d0
	jeq .L951
	tst.b 273(%a2)
	jne .L951
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L951:
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
	jle .L965
	tst.w 288(%a2)
	jeq .L970
.L965:
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jgt .L971
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
.L964:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L971:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L964
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
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L970:
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
	jra .L965
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
	jgt .L977
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L987
	and.l JAGPAD_8,%d0
	jne .L987
.L977:
	move.w 288(%a2),%d0
	jeq .L989
	cmp.w #1,%d0
	jeq .L990
.L980:
	tst.b 176(%a2)
	jeq .L982
.L981:
	move.w raptor_ticks,%d1
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w %d1,%a0
	move.w 290(%a2),%d0
	cmp.l %a1,%a0
	jle .L984
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,290(%a2)
	move.w %d1,240(%a2)
.L984:
	cmp.w #19,%d0
	jgt .L991
.L982:
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
.L976:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L990:
	tst.b 176(%a2)
	jne .L981
	move.w 268(%a2),%a0
	lea (%a0,%a0.l),%a1
	lea (%a1,%a0.l),%a0
	add.l %a0,%a0
	pea (%a0,%a0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	addq.l #8,%sp
	tst.b 176(%a2)
	jne .L981
	jra .L982
.L987:
	move.w 288(%a2),%d0
	cmp.w #1,%d0
	jne .L980
	jra .L990
.L989:
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z17sfxKanoCannonBallP12SoundHandler
	move.w 288(%a2),%d0
	addq.l #4,%sp
	cmp.w #1,%d0
	jne .L980
	jra .L990
.L991:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L976
	cmp.w #43,%d0
	jeq .L986
	tst.b 273(%a2)
	jne .L986
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L986:
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
	jeq .L1011
	tst.w 286(%a2)
	jne .L1011
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
	jle .L1013
.L1000:
	tst.w 286(%a2)
	jne .L1003
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	clr.l (%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
.L1003:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1005
.L1017:
	move.w 288(%a2),%d0
	cmp.w #19,%d0
	jgt .L1007
.L1018:
	move.w 286(%a2),%d0
.L1004:
	tst.w %d0
	jne .L1010
	tst.b 176(%a2)
	jeq .L1014
.L1010:
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
.L996:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1011:
	move.w 290(%a2),%d0
	cmp.w #199,%d0
	jgt .L1000
.L1013:
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1015
	cmp.w #-1,%d0
	jeq .L1016
.L1002:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1004
.L1019:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1017
.L1005:
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
	jle .L1018
.L1007:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L996
	cmp.w #43,%d0
	jeq .L1009
	tst.b 273(%a2)
	jne .L1009
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1009:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1014:
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
.L1015:
	pea 64.w
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jne .L1000
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L1002
.L1016:
	pea 64.w
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jne .L1000
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1004
	jra .L1019
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
	jeq .L1030
	cmp.w #-1,%d0
	jeq .L1031
.L1028:
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
.L1030:
	clr.l -(%sp)
	move.l %a2,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jeq .L1026
	move.w 268(%a2),%d0
	cmp.w #-1,%d0
	jne .L1028
.L1031:
	clr.l -(%sp)
	move.l %a2,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	tst.b %d0
	jeq .L1026
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
.L1026:
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
	jne .L1037
	tst.w 286(%a2)
	jne .L1037
	move.w 268(%a2),%d0
	cmp.w #1,%d0
	jeq .L1051
	cmp.w #-1,%d0
	jeq .L1052
	move.w #1,286(%a2)
.L1042:
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
.L1049:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l 610(%a2),-(%sp)
	move.l %a3,-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	lea (32,%sp),%sp
.L1036:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1037:
	move.w 86(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1043
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jeq .L1053
	tst.w %d0
	jne .L1047
.L1054:
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
	jra .L1036
.L1043:
	move.w 286(%a2),%d0
	jeq .L1054
.L1047:
	move.w 268(%a2),%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	jra .L1049
.L1053:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1036
	cmp.w #43,%d0
	jeq .L1046
	tst.b 273(%a2)
	jne .L1046
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1046:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1052:
	clr.l -(%sp)
	move.l %a5,-(%sp)
	jsr __Z27cameraFighterIsAtBoundsLeftP7Fighteri
	addq.l #8,%sp
	move.w 254(%a5),%a5
	tst.b %d0
	jeq .L1055
	lea (68,%a5),%a5
	move.w %a5,254(%a2)
	move.w 268(%a2),%d0
	move.w #1,286(%a2)
	jra .L1042
.L1051:
	clr.l -(%sp)
	move.l %a5,-(%sp)
	jsr __Z28cameraFighterIsAtBoundsRightP7Fighteri
	addq.l #8,%sp
	move.w 254(%a5),%a5
	tst.b %d0
	jeq .L1056
	lea (-68,%a5),%a5
	move.w %a5,254(%a2)
	move.w 268(%a2),%d0
	move.w #1,286(%a2)
	jra .L1042
.L1056:
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
.L1057:
	move.w #1,286(%a2)
	jra .L1042
.L1055:
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
	jra .L1057
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
	jgt .L1063
	move.w 286(%a2),%d1
	cmp.w #19,%d1
	jgt .L1071
.L1067:
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
.L1062:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1063:
	tst.b 176(%a2)
	jeq .L1072
	move.w 286(%a2),%d1
	move.w %d1,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1073
.L1066:
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
.L1074:
	cmp.w #19,%d1
	jle .L1067
.L1071:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1062
	cmp.w #43,%d0
	jeq .L1069
	tst.b 273(%a2)
	jne .L1069
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1069:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1073:
	moveq #-4,%d3
	add.w %d3,246(%a2)
	addq.w #1,%d1
	move.w %d1,286(%a2)
	move.w %d0,240(%a2)
	jra .L1074
.L1072:
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
	jge .L1066
	jra .L1073
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
	jeq .L1086
	clr.w %d2
.L1079:
	add.w %d0,%d2
	move.w %d2,252(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	tst.b 272(%a2)
	jne .L1087
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976064,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,240(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1087:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976064,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	move.w raptor_ticks,240(%a2)
	addq.l #4,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1086:
	moveq #48,%d2
	jra .L1079
	.even
	.globl	__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_
__Z27StateScorpionHarpoon_UpdateP12StateMachineP7FighterP14SpriteAnimatorS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 177(%a2)
	jeq .L1115
	tst.b 129(%a2)
	jeq .L1089
	tst.w 288(%a2)
	jeq .L1098
	move.w #1,288(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L1098:
	cmp.w #-1,290(%a2)
	jeq .L1116
	tst.b 272(%a2)
	jeq .L1105
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8493168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1101:
	neg.w 290(%a2)
	move.w 130(%a2),%d0
	addq.w #1,%d0
	move.w %d0,130(%a2)
	cmp.w #8,%d0
	jgt .L1112
.L1089:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1115:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1091
	tst.w 286(%a2)
	jne .L1117
	move.w 268(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,%d1
	add.w %d1,252(%a2)
	cmp.w #1,%d0
	jeq .L1118
.L1093:
	cmp.w #-1,%d0
	jeq .L1119
.L1095:
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
.L1120:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1105:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #8493168,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1101
.L1118:
	cmp.w #320,248(%a2)
	jle .L1095
.L1112:
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
	jeq .L1089
	cmp.w #43,%d0
	jeq .L1103
	tst.b 273(%a2)
	jne .L1103
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1103:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1119:
	tst.w 248(%a2)
	jlt .L1112
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
	jra .L1120
.L1117:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z18sfxScorpionHarpoonP12SoundHandler
	addq.l #4,%sp
	move.w 268(%a2),%d0
	move.w %d0,%d1
	add.w %d0,%d1
	add.w %d0,%d1
	add.w %d1,%d1
	add.w %d1,252(%a2)
	cmp.w #1,%d0
	jne .L1093
	jra .L1118
.L1116:
	tst.b 272(%a2)
	jeq .L1104
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976064,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1121:
	neg.w 290(%a2)
	move.w 130(%a2),%d0
	addq.w #1,%d0
	move.w %d0,130(%a2)
	cmp.w #8,%d0
	jle .L1089
	jra .L1112
.L1104:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976064,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L1121
.L1091:
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
	jra .L1120
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
	jne .L1127
	move.w #1,286(%a2)
	move.w 268(%a2),%d1
	move.w 254(%a3),%d3
	cmp.w #-1,%d1
	jeq .L1151
	move.w %d3,%d0
	add.w #48,%d0
	sub.w 254(%a2),%d0
	move.w %d0,108(%a2)
	cmp.w #149,%d0
	jle .L1152
.L1130:
	clr.w 108(%a2)
	cmp.w #-1,%d1
	jeq .L1153
.L1132:
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
.L1127:
	tst.w 108(%a2)
	jle .L1134
	tst.b 132(%a2)
	jeq .L1134
	tst.w 290(%a2)
	jne .L1134
	move.l 134(%a2),%d0
	move.w 254(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1154
	jgt .L1155
.L1136:
	move.w raptor_ticks,288(%a2)
.L1137:
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
.L1126:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1134:
	move.w 288(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1137
	tst.w 290(%a2)
	jeq .L1156
.L1138:
	tst.b 132(%a2)
	jeq .L1137
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1137
	move.l 134(%a2),%d0
	move.w 254(%a2),%a0
	cmp.l %d0,%a0
	jlt .L1157
	jgt .L1158
	move.w raptor_ticks,240(%a2)
.L1160:
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
	jra .L1126
.L1151:
	move.w 254(%a2),%d0
	add.w #48,%d0
	sub.w %d3,%d0
	move.w %d0,108(%a2)
	cmp.w #149,%d0
	jgt .L1130
.L1152:
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
	jne .L1132
.L1153:
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
	jra .L1127
.L1156:
	move.w #1,290(%a2)
	move.w 110(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z23fighterSlideToPositionXP7Fighteri
	addq.l #8,%sp
	jra .L1138
.L1154:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jlt .L1136
	clr.b 132(%a2)
.L1159:
	move.w raptor_ticks,288(%a2)
	jra .L1137
.L1155:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jgt .L1136
	clr.b 132(%a2)
	jra .L1159
.L1158:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jgt .L1140
.L1143:
	clr.b 132(%a2)
.L1147:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #55,%d0
	jeq .L1126
	cmp.w #43,%d0
	jeq .L1146
	tst.b 273(%a2)
	jne .L1146
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1146:
	move.l 220(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1157:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	addq.l #8,%sp
	cmp.l 134(%a2),%a0
	jge .L1143
.L1140:
	move.b 132(%a2),%d0
	jeq .L1147
	move.w raptor_ticks,240(%a2)
	jra .L1160
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
	move.l #12839232,8(%a1)
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.l #12839232,44(%a1)
	moveq #104,%d0
	move.l %d0,144(%a1)
	moveq #16,%d1
	move.l %d1,40(%a1)
	move.l %d1,36(%a1)
	move.b #1,%d0
	move.l %d0,4(%a1)
	move.l %d0,84(%a1)
	tst.b 272(%a0)
	jne .L1168
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976064,8(%fp)
	unlk %fp
	jra jsfLoadClut
.L1168:
	move.b #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976064,8(%fp)
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
	jle .L1171
	move.w %d1,290(%a2)
.L1171:
	move.w 288(%a2),%d0
	cmp.w #7,%d0
	jgt .L1172
	move.w 240(%a2),%a1
	addq.l #1,%a1
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.l %a0,%a1
	jge .L1173
	move.w 122(%a2),%d2
	move.w %d2,%d3
	add.w %d2,%d3
	add.w %d3,118(%a2)
	neg.w %d2
	move.w %d2,122(%a2)
	addq.w #1,%d0
	move.w %d0,288(%a2)
	move.w %d1,240(%a2)
.L1173:
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1187
.L1178:
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	jeq .L1188
.L1179:
	move.w 244(%a2),%d2
	move.w %d2,%d0
	add.w #48,%d0
	sub.w 244(%a4),%d0
	move.w %d0,120(%a2)
	add.w #32,%d2
	move.w %d2,116(%a2)
	tst.w %d0
	jlt .L1189
.L1181:
	move.w %d0,%a1
	cmp.w #1,%d1
	jeq .L1190
.L1183:
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
	lea (32,%sp),%sp
.L1170:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1172:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	cmp.w #8,%d0
	jne .L1173
	tst.w 286(%a2)
	jeq .L1191
	move.l 298(%a4),%a0
	cmp.w #55,(%a0)
	jeq .L1192
.L1175:
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
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jne .L1178
.L1187:
	moveq #1,%d1
	move.l %d1,4(%a0)
	move.w 268(%a2),%d1
	cmp.w #-1,%d1
	jne .L1179
.L1188:
	move.w 244(%a2),%a1
	move.w 244(%a4),%d0
	add.w #48,%d0
	sub.w %a1,%d0
	move.w %d0,120(%a2)
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
	jpl .L1194
	addq.l #1,%d2
.L1194:
	asr.l #1,%d2
	sub.w %d2,%a1
	move.w %a1,116(%a2)
	tst.w %d0
	jge .L1181
.L1189:
	neg.w %d0
	move.w %d0,120(%a2)
	move.w %d0,%a1
	cmp.w #1,%d1
	jne .L1183
.L1190:
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
	lea (32,%sp),%sp
	jra .L1170
.L1191:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z22sfxScorpionGetOverHereP12SoundHandler
	addq.l #4,%sp
	move.l 298(%a4),%a0
	cmp.w #55,(%a0)
	jne .L1175
.L1192:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1170
	cmp.w #43,%d0
	jeq .L1177
	tst.b 273(%a2)
	jne .L1177
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1177:
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
	jgt .L1203
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
.L1198:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1203:
	move.l 298(%a0),%a1
	move.w (%a1),%d1
	jeq .L1198
	cmp.w #43,%d1
	jeq .L1201
	tst.b 273(%a0)
	jne .L1201
	move.l 92(%a0),%d1
	move.l %d1,%a1
	add.l %d1,%a1
	add.l %a1,%d1
	lsl.l #6,%d1
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d1.l)
.L1201:
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
	jeq .L1214
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
.L1210:
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
	move.l #12839232,8(%a0)
	move.l #12839232,44(%a3)
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
	jne .L1215
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976496,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1215:
	moveq #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976496,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#3084
	unlk %fp
	jra __Z19sfxScorpionTeleportP12SoundHandler
.L1214:
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
	jra .L1210
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
	jgt .L1218
	move.w 286(%a2),%d0
.L1219:
	cmp.w #14,%d0
	jgt .L1234
.L1224:
	tst.w 288(%a2)
	jne .L1232
.L1227:
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
	cmp.w #-1,%d0
	jeq .L1235
	cmp.w #1,%d0
	jeq .L1230
.L1228:
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
.L1217:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L1218:
	tst.b 176(%a2)
	jeq .L1236
	move.w 286(%a2),%d0
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d3
	cmp.w #-4,%d3
	jlt .L1237
.L1221:
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #6,%d0
	jeq .L1222
.L1238:
	cmp.w #10,%d0
	jeq .L1222
	cmp.w #8,%d0
	jne .L1219
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	tst.w 288(%a2)
	jeq .L1227
	jra .L1232
.L1230:
	cmp.w #309,%d1
	jle .L1228
	jsr __Z10cameraGetXv
	add.w #-37,%d0
	move.w %d0,254(%a2)
	move.b #1,140(%a3)
	move.w #1,288(%a2)
.L1232:
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
	jra .L1217
.L1237:
	moveq #-4,%d3
	add.w %d3,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
	move.w %d1,240(%a2)
	cmp.w #6,%d0
	jne .L1238
	jra .L1222
.L1234:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1217
	cmp.w #43,%d0
	jeq .L1226
	tst.b 273(%a2)
	jne .L1226
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d0.l)
.L1226:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L1222:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d3
	move.l %d3,4(%a0,%d1.l)
	cmp.w #14,%d0
	jle .L1224
	jra .L1234
.L1236:
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
	jge .L1221
	jra .L1237
.L1235:
	cmp.w #10,%d1
	jgt .L1228
	jsr __Z10cameraGetXv
	add.w #357,%d0
	move.w %d0,254(%a2)
	move.b #1,140(%a3)
	move.w #1,288(%a2)
	jra .L1232
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
	move.l #12839232,8(%a0)
	move.w %d1,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12839232,44(%a0)
	moveq #104,%d0
	move.l %d0,144(%a0)
	moveq #16,%d1
	move.l %d1,40(%a0)
	move.l %d1,36(%a0)
	tst.b 272(%a2)
	jne .L1246
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976016,-(%sp)
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
	moveq #1,%d1
	move.l %d1,4(%a0,%d0.l)
	addq.l #4,%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1246:
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976016,-(%sp)
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
	movem.l #12336,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l 16(%fp),%d2
	tst.b 177(%a2)
	jeq .L1260
	tst.w 286(%a2)
	jne .L1255
	move.w #1,286(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
.L1255:
	pea 5.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1261
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
.L1248:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1261:
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
	jeq .L1248
	cmp.w #43,%d0
	jeq .L1257
	tst.b 273(%a2)
	jne .L1257
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1257:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1260:
	pea 9.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1250
	move.w 268(%a2),%d0
	move.w %d0,%d3
	add.w %d0,%d3
	move.w %d3,%d1
	lsl.w #3,%d1
	sub.w %d3,%d1
	add.w %d1,252(%a2)
	cmp.w #1,%d0
	jeq .L1262
	cmp.w #-1,%d0
	jeq .L1263
.L1253:
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
	lea (32,%sp),%sp
.L1264:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1263:
	tst.w 248(%a2)
	jge .L1253
.L1252:
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
	jeq .L1248
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#3084
	unlk %fp
	jmp (%a0)
.L1262:
	cmp.w #320,248(%a2)
	jgt .L1252
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
	lea (32,%sp),%sp
	jra .L1264
.L1250:
	move.w 268(%a2),%d0
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
	lea (32,%sp),%sp
	jra .L1264
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
	jne .L1272
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
.L1272:
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
	jne .L1276
	move.l 158(%a2),%d0
	addq.l #2,%d0
	cmp.l %a0,%d0
	jge .L1282
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
.L1278:
	cmp.w #5,%d0
	jle .L1276
	move.w #1,286(%a2)
.L1276:
	move.w 240(%a2),%a1
	lea (180,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1283
.L1279:
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
.L1283:
	move.l %a2,-(%sp)
	jsr __Z15fighterUnfreezeP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1279
	cmp.w #43,%d0
	jeq .L1280
	tst.b 273(%a2)
	jne .L1280
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1280:
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
.L1282:
	move.w 290(%a2),%d0
	jra .L1278
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
	jle .L1290
	add.w #12,%d0
	move.w %d0,246(%a2)
	move.w %d1,240(%a2)
.L1290:
	cmp.w #89,%d0
	jgt .L1294
.L1288:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1294:
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1288
	cmp.w #43,%d0
	jeq .L1292
	tst.b 273(%a2)
	jne .L1292
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1292:
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
	jle .L1301
	tst.b %d0
	jeq .L1308
	add.w #14,286(%a2)
	move.w %d1,240(%a2)
.L1301:
	tst.b %d0
	jne .L1303
	cmp.w #269,286(%a2)
	jle .L1304
.L1303:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1299
	cmp.w #43,%d0
	jeq .L1306
	tst.b 273(%a2)
	jne .L1306
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1306:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1304:
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
.L1299:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1308:
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
	jra .L1301
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
	jne .L1314
	cmp.w #2,14(%a3)
	jeq .L1322
.L1314:
	tst.w 288(%a2)
	jeq .L1323
	tst.w 14(%a3)
	jeq .L1324
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
.L1313:
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L1324:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	jeq .L1313
	cmp.w #43,%d0
	jeq .L1319
	tst.b 273(%a2)
	jne .L1319
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1319:
	move.l (%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#7168
	unlk %fp
	jmp (%a0)
.L1323:
	move.w 84(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1316
	move.w #1,288(%a2)
.L1316:
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
	jra .L1313
.L1322:
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1314
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
	jeq .L1332
	cmp.w #1,%d0
	jeq .L1333
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
.L1333:
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
.L1332:
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
	jne .L1336
	move.w 240(%a2),%a1
	lea (29,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1337
	move.w #1,286(%a2)
.L1337:
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
.L1335:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1336:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1335
	tst.w 290(%a2)
	jne .L1339
	move.w 288(%a2),%d0
	move.w 268(%a2),%a1
	cmp.w #21,%d0
	jle .L1349
	cmp.w #22,%d0
	jeq .L1350
	cmp.w #23,%d0
	jeq .L1351
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
	jeq .L1352
.L1344:
	move.w raptor_ticks,240(%a2)
.L1354:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1339:
	cmp.w #23,288(%a2)
	jle .L1353
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
	jne .L1344
.L1355:
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
	jeq .L1344
	cmp.w #43,%d0
	jeq .L1347
	tst.b 273(%a2)
	jne .L1347
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1347:
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
	jra .L1354
.L1352:
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
	jra .L1354
.L1349:
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
	jne .L1344
	jra .L1352
.L1353:
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
	jne .L1344
	jra .L1355
.L1350:
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
	jne .L1344
	jra .L1352
.L1351:
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
	jne .L1344
	jra .L1352
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
	jle .L1360
	move.w 288(%a2),%d0
	jeq .L1376
	cmp.w #1,%d0
	jeq .L1377
	move.w 286(%a2),%d0
	cmp.w #18,%d0
	jeq .L1378
	cmp.w #19,%d0
	jeq .L1379
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
	jne .L1380
.L1373:
	addq.w #1,%d0
	move.w %d0,286(%a2)
	cmp.w #19,%d0
	jle .L1366
	move.l %a2,-(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l %a2,(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1366
	cmp.w #43,%d0
	jeq .L1374
	tst.b 273(%a2)
	jne .L1374
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1374:
	move.l 8(%fp),%a1
	move.l (%a1),%a0
	move.l %a0,298(%a2)
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %a1,-(%sp)
	move.l 2(%a0),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1366:
	move.w raptor_ticks,240(%a2)
.L1360:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1376:
	cmp.w #1,286(%a2)
	jls .L1381
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
	jeq .L1382
.L1365:
	move.w %d0,%a0
	move.l %a0,%a1
	add.l #__ZL11JumpOffsets,%a1
	move.w (%a1,%a0.l),%d1
	add.w %d1,246(%a2)
	addq.w #1,%d0
	move.w %d0,286(%a2)
.L1383:
	move.w raptor_ticks,240(%a2)
	jra .L1360
.L1380:
	move.w 268(%a2),%d0
	ext.l %d0
	neg.l %d0
	move.l %d0,%a0
	pea (%a0,%d0.l)
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 286(%a2),%d0
	addq.l #8,%sp
	jra .L1373
.L1379:
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
	jeq .L1373
	jra .L1380
.L1381:
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
	jne .L1365
.L1382:
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
	jra .L1383
.L1377:
	move.l 398(%a2),-(%sp)
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z17impactFrameUpdateP14SpriteAnimatorP7FighterP11ImpactFrame
	lea (12,%sp),%sp
	cmp.w #230,290(%a2)
	jgt .L1368
	tst.b 176(%a2)
	jeq .L1384
.L1368:
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
.L1385:
	move.w raptor_ticks,240(%a2)
	jra .L1360
.L1384:
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
	jra .L1385
.L1378:
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
	jeq .L1373
	jra .L1380
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
	jeq .L1401
	cmp.w #1,%d0
	jeq .L1398
.L1403:
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
.L1390:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1401:
	move.w 82(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1402
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
	move.l #12839232,8(%a0)
	move.w raptor_ticks,240(%a2)
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #12839232,44(%a0)
	moveq #104,%d1
	move.l %d1,144(%a0)
	moveq #16,%d0
	move.l %d0,40(%a0)
	move.l %d0,36(%a0)
	tst.b 272(%a2)
	jeq .L1399
	move.b #9,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976112,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
.L1406:
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
	jra .L1390
.L1402:
	move.w 286(%a2),%d0
	cmp.w #1,%d0
	jne .L1403
.L1398:
	move.w 88(%a2),%a0
	move.l %a0,-(%sp)
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1404
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1405
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
.L1407:
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
	jra .L1390
.L1399:
	moveq #13,%d0
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976112,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	move.l 264(%a2),(%sp)
	jsr __Z17sfxKasumiFireballP12SoundHandler
	addq.l #4,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a3
	jra .L1406
.L1405:
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
	jra .L1407
.L1404:
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
	jeq .L1390
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
	jne .L1413
	tst.b 176(%a2)
	jeq .L1433
.L1414:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1421
	move.w 288(%a2),%d0
.L1422:
	cmp.w #19,%d0
	jgt .L1423
	move.w 268(%a2),%d0
	move.w 244(%a2),%d1
.L1417:
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
.L1412:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1413:
	tst.b 176(%a2)
	jne .L1414
.L1423:
	move.l %a2,-(%sp)
	jsr __Z17fighterSetOnFloorP7Fighter
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	addq.l #4,%sp
	jeq .L1412
	cmp.w #43,%d0
	jeq .L1424
	tst.b 273(%a2)
	jne .L1424
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1424:
	move.l (%a3),%a0
	move.l %a0,298(%a2)
	move.l %d2,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1433:
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
	jeq .L1434
	cmp.w #1,%d0
	jne .L1417
	cmp.w #261,%d1
	jle .L1417
	move.w #1,286(%a2)
.L1435:
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
	jra .L1412
.L1421:
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
	jra .L1422
.L1434:
	cmp.w #10,%d1
	jgt .L1417
	move.w #1,286(%a2)
	jra .L1435
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
	cmp.w #1,288(%a0)
	jeq .L1442
	unlk %fp
	rts
.L1442:
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
	tst.w 286(%a2)
	jeq .L1449
	cmp.w #1,288(%a2)
	jeq .L1450
.L1444:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1450:
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
.L1449:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1451
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
.L1452:
	cmp.w #1,288(%a2)
	jne .L1444
	jra .L1450
.L1451:
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
	jra .L1452
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
	jeq .L1456
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1456:
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
	jeq .L1460
	tst.w 286(%a2)
	jne .L1462
	cmp.w #1,14(%a3)
	jeq .L1466
.L1462:
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
.L1460:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L1466:
	move.w #1,286(%a2)
	move.w (%a2),%d0
	jne .L1467
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
	jra .L1460
.L1467:
	cmp.w #1,%d0
	jne .L1462
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
	jra .L1460
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
	jeq .L1472
	tst.b 144(%a2)
	jne .L1475
.L1472:
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
.L1475:
	clr.b 142(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1472
	cmp.w #43,%d0
	jeq .L1473
	tst.b 273(%a2)
	jne .L1473
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1473:
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
	jeq .L1478
	tst.b 144(%a2)
	jne .L1482
.L1478:
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
.L1482:
	move.w 78(%a2),%a0
	move.l %a0,-(%sp)
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1483
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
.L1484:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L1483:
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
	jra .L1484
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
	jne .L1490
	move.w raptor_ticks,%a0
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	cmp.l %a1,%a0
	jle .L1489
	move.w 286(%a2),%d0
	jeq .L1499
	cmp.w #1,%d0
	jeq .L1500
.L1489:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1490:
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1489
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1489
	cmp.w #43,%d0
	jeq .L1497
	tst.b 273(%a2)
	jne .L1497
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1497:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1500:
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1489
	tst.w 290(%a2)
	jeq .L1501
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1495
.L1502:
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
	jeq .L1489
	cmp.w #43,%d0
	jeq .L1496
	tst.b 273(%a0)
	jne .L1496
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1496:
	move.l 280(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1499:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1493
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 14(%a4)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1495:
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
.L1501:
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
	jeq .L1495
	jra .L1502
.L1493:
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
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jls .L1534
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1534:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1516(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1516:
	.word .L1508-.L1516
	.word .L1509-.L1516
	.word .L1510-.L1516
	.word .L1511-.L1516
	.word .L1512-.L1516
	.word .L1513-.L1516
	.word .L1514-.L1516
	.word .L1515-.L1516
.L1514:
	tst.b 272(%a2)
	jne .L1535
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977264,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1515:
	tst.b 272(%a2)
	jeq .L1532
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977312,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1508:
	tst.b 272(%a2)
	jne .L1536
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976976,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1509:
	tst.b 272(%a2)
	jne .L1537
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977024,8(%fp)
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
	move.l #12977072,8(%fp)
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
	move.l #12977120,8(%fp)
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
	move.l #12977216,8(%fp)
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
	move.l #12977168,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1532:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977312,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1535:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977264,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1541:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977168,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1540:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977216,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1539:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977120,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1538:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977072,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1537:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977024,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1536:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976976,8(%fp)
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
	jeq .L1561
.L1544:
	tst.w 14(%a3)
	jne .L1547
	tst.w 286(%a2)
	jne .L1547
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1547
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
.L1547:
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
	jle .L1562
	tst.w 290(%a2)
	jne .L1550
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
	jle .L1551
.L1552:
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
.L1549:
	move.w 268(%a2),%a0
	cmp.w #24,%d2
	jle .L1563
.L1556:
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
.L1543:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1562:
	move.w 288(%a2),%d2
	move.w 250(%a2),%d0
	move.w 268(%a2),%a0
	cmp.w #24,%d2
	jgt .L1556
.L1563:
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
.L1550:
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
	jle .L1554
.L1555:
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
	jra .L1549
.L1561:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1544
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1543
	cmp.w #43,%d0
	jeq .L1546
	tst.b 273(%a2)
	jne .L1546
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1546:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1554:
	cmp.w #182,%d0
	jeq .L1555
	move.w %d1,240(%a2)
	jra .L1549
.L1551:
	cmp.w #166,%d0
	jeq .L1552
	move.w %d1,240(%a2)
	jra .L1549
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
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jne .L1573
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977360,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1573:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977360,8(%fp)
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
	jle .L1575
	move.w 14(%a3),%d1
	cmp.w #2,%d1
	jeq .L1593
	cmp.w #3,%d1
	jeq .L1580
.L1578:
	move.w 288(%a2),%d1
.L1581:
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a4
	cmp.w #1,%d1
	jeq .L1594
.L1582:
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
.L1575:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1593:
	tst.w 286(%a2)
	jne .L1578
	move.w #1,286(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #72,%d0
	jeq .L1575
	cmp.w #43,%d0
	jeq .L1579
	tst.b 273(%a0)
	jne .L1579
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1579:
	move.l 288(%a5),%a1
	move.l %a1,298(%a0)
	move.l %d1,16(%fp)
	move.l %a0,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a1),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1580:
	move.w 288(%a2),%d1
	jne .L1581
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
	jra .L1575
.L1594:
	pea 8.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1582
	move.w raptor_ticks,%d0
	move.w 290(%a2),%a1
	lea (29,%a1),%a1
	move.w %d0,%a0
	cmp.l %a1,%a0
	jle .L1584
	move.w %d0,290(%a2)
	addq.w #1,292(%a2)
	tst.w 294(%a2)
	jeq .L1595
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
.L1584:
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
	jle .L1582
	move.w #1,292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1575
	cmp.w #43,%d0
	jeq .L1588
	tst.b 273(%a2)
	jne .L1588
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1588:
	move.l 268(%a5),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a5,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1595:
	move.w #1,294(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxKanoHeartbeatP12SoundHandler
	move.w 246(%a2),%a0
	move.w 254(%a2),%d0
	addq.l #4,%sp
	cmp.w #-1,268(%a2)
	jeq .L1596
	clr.w %d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
.L1597:
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
	jra .L1584
.L1596:
	moveq #40,%d1
	clr.l -(%sp)
	move.l %a0,-(%sp)
	subq.w #4,%d0
	add.w %d1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	jsr __Z9bloodBallsss
	lea (12,%sp),%sp
	jra .L1597
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
	jeq .L1605
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
.L1605:
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
	jne .L1608
	move.w raptor_ticks,%d0
	move.w %d0,%a3
	move.w 240(%a2),%a1
	addq.l #2,%a1
	cmp.l %a3,%a1
	jlt .L1613
	cmp.w #5,290(%a2)
	jle .L1607
.L1614:
	move.w #1,286(%a2)
	clr.w 290(%a2)
	move.w raptor_ticks,240(%a2)
.L1607:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1608:
	cmp.w #1,292(%a2)
	jne .L1607
	tst.w 290(%a2)
	jne .L1607
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
	jeq .L1607
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
	move.l 264(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1613:
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
	jle .L1607
	jra .L1614
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
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jne .L1624
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975872,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1624:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975872,8(%fp)
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
	jne .L1627
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1638
.L1626:
	movem.l -24(%fp),#15372
	unlk %fp
	rts
.L1627:
	cmp.w #1,%d0
	jne .L1626
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1626
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1626
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
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -24(%fp),#15372
	unlk %fp
	jmp (%a0)
.L1638:
	pea 6.w
	move.l %d2,-(%sp)
	lea __Z19animationIsCompleteP14SpriteAnimators,%a4
	jsr (%a4)
	addq.l #8,%sp
	lea __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss,%a5
	tst.b %d0
	jeq .L1629
	tst.w 286(%a2)
	jne .L1629
	move.l 438(%a2),%a0
	cmp.w #3,14(%a0)
	jeq .L1639
.L1630:
	pea 8.w
	move.l %a0,-(%sp)
	jsr (%a4)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1633
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
.L1633:
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
.L1629:
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
.L1639:
	tst.w 294(%a2)
	jne .L1630
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxRaidenHeadZapP12SoundHandler
	move.w #1,294(%a2)
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #74,%d0
	jeq .L1640
	cmp.w #43,%d0
	jeq .L1632
	tst.b 273(%a0)
	jne .L1632
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d3
	move.l %d3,4(%a1,%d0.l)
.L1632:
	move.l 296(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	move.l 438(%a2),%a0
	lea (12,%sp),%sp
	jra .L1630
.L1640:
	move.l 438(%a2),%a0
	jra .L1630
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
	jne .L1646
	tst.w 294(%a2)
	jne .L1647
	tst.b 272(%a2)
	jeq .L1648
	pea 16.w
	pea 14.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1647:
	pea 4.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1649
.L1661:
	tst.w 294(%a2)
	jne .L1650
	tst.b 272(%a2)
	jeq .L1651
	pea 16.w
	pea 14.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1650:
	move.w #1,286(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,292(%a2)
	clr.w 294(%a2)
.L1649:
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
.L1645:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1646:
	cmp.w #1,%d0
	jne .L1645
	move.w 290(%a2),%d0
	jne .L1653
	tst.w 288(%a2)
	jeq .L1660
	tst.w 294(%a2)
	jne .L1655
.L1662:
	move.w 240(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1655
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
.L1655:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1656
	cmp.w #1,294(%a2)
	jne .L1656
	move.w #1,290(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	move.l 264(%a2),8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra __Z7sfxThudP12SoundHandler
.L1648:
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
	jne .L1661
	jra .L1649
.L1656:
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
	jgt .L1645
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1653:
	cmp.w #1,%d0
	jne .L1645
	move.w #1,286(%a2)
	clr.w 288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #66,%d0
	jeq .L1645
	cmp.w #43,%d0
	jeq .L1657
	tst.b 273(%a2)
	jne .L1657
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1657:
	move.l 264(%a0),%a1
	move.l %a1,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1651:
	pea 16.w
	pea 15.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.w #1,286(%a2)
	clr.w 14(%a3)
	move.w raptor_ticks,292(%a2)
	clr.w 294(%a2)
	jra .L1649
.L1660:
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
	jne .L1655
	jra .L1662
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
	jne .L1668
	move.w raptor_ticks,%d0
	move.w %d0,%a1
	move.w 240(%a2),%a3
	lea (59,%a3),%a3
	cmp.l %a3,%a1
	jle .L1669
	move.w 288(%a2),%d1
	jeq .L1685
	tst.b 132(%a2)
	jeq .L1671
	cmp.w #1,%d1
	jeq .L1686
.L1671:
	pea 14.w
	move.l %d2,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1676
	move.w #1,286(%a2)
.L1676:
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
.L1667:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1668:
	cmp.w #1,%d0
	jeq .L1678
.L1669:
	move.w 294(%a2),%d0
.L1679:
	cmp.w #1,%d0
	jne .L1667
	move.w 240(%a2),%a3
	lea (59,%a3),%a3
	move.w raptor_ticks,%a1
	cmp.l %a3,%a1
	jle .L1667
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a1
	move.w (%a1),%d0
	cmp.w #67,%d0
	jeq .L1667
	cmp.w #43,%d0
	jeq .L1682
	tst.b 273(%a2)
	jne .L1682
	move.l 92(%a2),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1682:
	move.l 268(%a0),%a1
	move.l %a1,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a0,8(%fp)
	move.l 2(%a1),%a0
	movem.l -12(%fp),#3076
	unlk %fp
	jmp (%a0)
.L1678:
	move.w 294(%a2),%d0
	jne .L1679
	move.l 650(%a2),%a1
	move.l 434(%a1),%d1
	move.l 298(%a1),%a3
	move.w (%a3),%d0
	cmp.w #70,%d0
	jeq .L1680
	cmp.w #43,%d0
	jeq .L1681
	tst.b 273(%a1)
	jne .L1681
	move.l 92(%a1),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	moveq #-1,%d2
	move.l %d2,4(%a3,%d0.l)
.L1681:
	move.l 280(%a0),%a3
	move.l %a3,298(%a1)
	move.l %d1,-(%sp)
	move.l %a1,-(%sp)
	move.l %a0,-(%sp)
	move.l 2(%a3),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1680:
	move.w #1,294(%a2)
	move.w raptor_ticks,240(%a2)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1685:
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
	jra .L1671
.L1686:
	move.w 290(%a2),%a0
	addq.l #1,%a0
	cmp.l %a1,%a0
	jge .L1671
	move.l 134(%a2),%d1
	move.w 254(%a2),%a0
	cmp.l %d1,%a0
	jlt .L1687
	jgt .L1688
	move.w %d0,290(%a2)
	jra .L1671
.L1688:
	pea -8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	move.l 134(%a2),%d0
	addq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jlt .L1683
	clr.b 132(%a2)
	move.w #1,292(%a2)
.L1683:
	move.w raptor_ticks,%d0
	move.w %d0,290(%a2)
	jra .L1671
.L1687:
	pea 8.w
	move.l %a2,-(%sp)
	jsr __Z19fighterPositionXAddP7Fighteri
	move.w 254(%a2),%a0
	move.l 134(%a2),%d0
	subq.l #7,%d0
	addq.l #8,%sp
	cmp.l %a0,%d0
	jgt .L1683
	clr.b 132(%a2)
	move.w #1,292(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,290(%a2)
	jra .L1671
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
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jne .L1698
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976112,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1698:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976112,8(%fp)
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
	jne .L1700
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1700
	cmp.w #2,14(%a3)
	jeq .L1709
.L1702:
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
	jeq .L1700
	tst.w 290(%a2)
	jeq .L1710
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jeq .L1711
.L1704:
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
	jeq .L1705
	cmp.w #43,%d0
	jeq .L1706
	tst.b 273(%a0)
	jne .L1706
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1706:
	move.l 308(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1705:
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
	jeq .L1700
	cmp.w #43,%d0
	jeq .L1707
	tst.b 273(%a2)
	jne .L1707
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1707:
	move.l 268(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1711:
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
.L1700:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1709:
	tst.w 288(%a2)
	jne .L1702
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z16sfxScorpionSkullP12SoundHandler
	addq.l #4,%sp
	jra .L1702
.L1710:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	addq.l #4,%sp
	pea 12.w
	move.l 438(%a2),-(%sp)
	jsr (%a5)
	addq.l #8,%sp
	tst.b %d0
	jne .L1704
	jra .L1711
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
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jne .L1721
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1721:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12975680,8(%fp)
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
	jeq .L1729
	pea 7.w
	move.l 438(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1730
.L1725:
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
.L1723:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1729:
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
	jeq .L1725
.L1730:
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.b #1,146(%a2)
	clr.b 142(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1723
	cmp.w #43,%d0
	jeq .L1727
	tst.b 273(%a2)
	jne .L1727
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1727:
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
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	move.l #12839232,8(%a1)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jeq .L1751
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #-1,%d0
	move.l %d0,24(%a1)
.L1736:
	tst.b 272(%a2)
	jeq .L1749
	moveq #13,%d0
	moveq #9,%d2
.L1737:
	cmp.w #8,(%a0)
	jhi .L1738
	moveq #0,%d1
	move.w (%a0),%d1
	add.l %d1,%d1
	move.w .L1748(%pc,%d1.l),%d1
	jmp %pc@(2,%d1:w)
.L1748:
	.word .L1739-.L1748
	.word .L1740-.L1748
	.word .L1741-.L1748
	.word .L1742-.L1748
	.word .L1743-.L1748
	.word .L1744-.L1748
	.word .L1745-.L1748
	.word .L1746-.L1748
	.word .L1747-.L1748
.L1739:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976544,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L1738:
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1749:
	moveq #9,%d0
	moveq #13,%d2
	jra .L1737
.L1751:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,24(%a3,%d0.l)
	moveq #1,%d0
	move.l %d0,24(%a1)
	jra .L1736
.L1746:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976928,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1747:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976832,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1740:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976592,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1741:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976640,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1742:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976688,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1743:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976784,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1744:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976736,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
	movem.l -16(%fp),#7172
	unlk %fp
	jra jsfLoadClut
.L1745:
	pea 16.w
	move.l %d0,-(%sp)
	move.l #12976880,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d2,12(%fp)
	move.l #12975680,8(%fp)
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
	jne .L1753
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1753
	cmp.w #2,14(%a5)
	jeq .L1762
.L1755:
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
	jgt .L1763
.L1753:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1763:
	pea 9.w
	move.l 434(%a2),-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1764
	move.l sprite,%a0
	move.l 92(%a2),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a0,%d1.l),%a1
	moveq #-1,%d0
	cmp.l 4(%a1),%d0
	jeq .L1765
	move.l 650(%a2),%a1
	move.l 92(%a1),%d1
	move.l %d1,%d0
	add.l %d1,%d0
	add.l %d1,%d0
	lsl.l #6,%d0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1766
.L1760:
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
.L1767:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1762:
	tst.w 288(%a2)
	jne .L1755
	move.w #1,288(%a2)
	move.l 650(%a2),%a0
	move.w #1,294(%a0)
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	cmp.w #79,%d0
	jeq .L1755
	cmp.w #43,%d0
	jeq .L1756
	tst.b 273(%a0)
	jne .L1756
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1756:
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
	jle .L1753
	jra .L1763
.L1766:
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
	jra .L1767
.L1765:
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
	jne .L1760
	jra .L1766
.L1764:
	move.w #1,292(%a2)
	move.w #123,290(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1753
	cmp.w #43,%d0
	jeq .L1758
	tst.b 273(%a2)
	jne .L1758
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1758:
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
	jeq .L1775
	move.l 650(%a0),%a1
	move.w 254(%a1),%a1
	lea (-56,%a1),%a1
	move.w %a1,254(%a0)
	unlk %fp
	rts
.L1775:
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
	jne .L1778
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l 158(%a2),%d1
	addq.l #2,%d1
	cmp.l %a0,%d1
	jge .L1791
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
.L1780:
	cmp.w #5,%d1
	jle .L1781
	move.w #1,286(%a2)
	clr.w 288(%a2)
	clr.w 290(%a2)
	clr.w 14(%a3)
	move.w %d0,292(%a2)
	clr.w 294(%a2)
.L1781:
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
.L1777:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1778:
	cmp.w #1,%d0
	jne .L1777
	move.w 290(%a2),%d0
	jne .L1783
	tst.w 288(%a2)
	jeq .L1792
	tst.w 294(%a2)
	jne .L1785
	move.w 240(%a2),%a1
	lea (69,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jgt .L1793
.L1785:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1794
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
	jgt .L1777
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1791:
	move.w 290(%a2),%d1
	jra .L1780
.L1783:
	cmp.w #1,%d0
	jne .L1777
	move.w 246(%a2),%a0
	addq.w #6,%a0
	move.w %a0,%a0
	move.w 254(%a2),%d0
	cmp.w #-1,268(%a2)
	jeq .L1795
	moveq #-72,%d1
.L1787:
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
	jeq .L1777
	cmp.w #43,%d0
	jeq .L1788
	tst.b 273(%a2)
	jne .L1788
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1788:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1792:
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
	jra .L1785
.L1795:
	moveq #42,%d1
	jra .L1787
.L1793:
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
	jra .L1785
.L1794:
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
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jne .L1805
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976112,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1805:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976112,8(%fp)
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
	jne .L1807
	move.w 240(%a2),%a1
	lea (59,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1807
	cmp.w #1,14(%a5)
	jeq .L1821
.L1809:
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
	jeq .L1807
	tst.w 290(%a2)
	jeq .L1822
	move.w 292(%a2),%d0
	cmp.w #15,%d0
	jgt .L1811
.L1825:
	move.w 296(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1811
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #-1,%d0
	cmp.l 4(%a0),%d0
	jeq .L1823
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
.L1807:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1811:
	move.w 294(%a2),%d1
	jne .L1813
	cmp.w #15,%d0
	jle .L1807
	move.w 296(%a2),%a1
	addq.l #2,%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1807
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
	jeq .L1824
	cmp.w #-1,%d0
	jne .L1807
	move.w 252(%a2),%a1
	move.l 650(%a2),%a0
	move.w 254(%a0),%a0
	lea (48,%a0),%a0
	cmp.l %a1,%a0
	jlt .L1807
.L1815:
	tst.w 294(%a2)
	jne .L1807
	move.l 264(%a2),-(%sp)
	jsr __Z21sfxScorpionSkullFlameP12SoundHandler
	move.w #1,294(%a2)
	move.l 438(%a2),%a0
	move.w #6,14(%a0)
	addq.l #4,%sp
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1821:
	tst.w 288(%a2)
	jne .L1809
	move.w #1,288(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z12sfxSonyaKissP12SoundHandler
	addq.l #4,%sp
	jra .L1809
.L1822:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z22sfxKanoCannonBallStartP12SoundHandler
	move.w raptor_ticks,296(%a2)
	addq.l #4,%sp
	move.w 292(%a2),%d0
	cmp.w #15,%d0
	jgt .L1811
	jra .L1825
.L1813:
	cmp.w #1,%d1
	jne .L1807
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
	jeq .L1826
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
	jeq .L1817
	cmp.w #43,%d0
	jeq .L1818
	tst.b 273(%a0)
	jne .L1818
	move.l 92(%a0),%d0
	move.l %d0,%d2
	add.l %d0,%d2
	add.l %d2,%d0
	lsl.l #6,%d0
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1818:
	move.l 308(%a3),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1817:
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1807
	cmp.w #43,%d0
	jeq .L1819
	tst.b 273(%a2)
	jne .L1819
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1819:
	move.l 268(%a3),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a3,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1823:
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
	jra .L1807
.L1826:
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
.L1824:
	move.l 650(%a2),%a0
	move.w 254(%a0),%d0
	cmp.w 252(%a2),%d0
	jle .L1815
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
	jle .L1831
	move.w 286(%a2),%d0
	jeq .L1843
	cmp.w #1,%d0
	jeq .L1844
.L1831:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1843:
	move.w 26(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1834
	move.w #1,286(%a2)
	move.w raptor_ticks,288(%a2)
	clr.w 14(%a3)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1844:
	move.w 288(%a2),%a1
	lea (29,%a1),%a1
	cmp.l %a0,%a1
	jge .L1831
	tst.w 290(%a2)
	jeq .L1845
.L1835:
	move.w 294(%a2),%d0
	jeq .L1846
	cmp.w #1,%d0
	jne .L1831
	cmp.w #1,296(%a2)
	jne .L1831
	move.w 58(%a2),%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jne .L1847
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
.L1834:
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
.L1845:
	move.w #1,290(%a2)
	move.l 264(%a2),-(%sp)
	jsr __Z8sfxSwingP12SoundHandler
	addq.l #4,%sp
	jra .L1835
.L1846:
	move.w 52(%a2),%d0
	subq.w #1,%d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1837
	move.l 264(%a2),-(%sp)
	jsr __Z9sfxImpactP12SoundHandler
	move.l 650(%a2),%a0
	move.l 434(%a0),%d1
	move.l 298(%a0),%a1
	move.w (%a1),%d0
	addq.l #4,%sp
	cmp.w #82,%d0
	jeq .L1838
	cmp.w #43,%d0
	jeq .L1839
	tst.b 273(%a0)
	jne .L1839
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1839:
	move.l 328(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1838:
	clr.w 288(%a2)
	move.w #1,294(%a2)
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1837:
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
.L1847:
	clr.w 292(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #67,%d0
	jeq .L1831
	cmp.w #43,%d0
	jeq .L1841
	tst.b 273(%a2)
	jne .L1841
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1841:
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
	move.l #12839232,8(%a0)
	move.l %d0,%a3
	add.l %d0,%a3
	add.l %a3,%d0
	lsl.l #6,%d0
	move.l sprite,%a3
	add.l %d0,%a3
	move.l #12839232,44(%a3)
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
	jls .L1879
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L1879:
	moveq #0,%d0
	move.w (%a2),%d0
	add.l %d0,%d0
	move.w .L1861(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L1861:
	.word .L1853-.L1861
	.word .L1854-.L1861
	.word .L1855-.L1861
	.word .L1856-.L1861
	.word .L1857-.L1861
	.word .L1858-.L1861
	.word .L1859-.L1861
	.word .L1860-.L1861
.L1859:
	tst.b 272(%a2)
	jne .L1880
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977264,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1860:
	tst.b 272(%a2)
	jeq .L1877
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977312,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1853:
	tst.b 272(%a2)
	jne .L1881
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976976,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1854:
	tst.b 272(%a2)
	jne .L1882
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977024,8(%fp)
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
	move.l #12977072,8(%fp)
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
	move.l #12977120,8(%fp)
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
	move.l #12977216,8(%fp)
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
	move.l #12977168,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1877:
	moveq #13,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977312,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1880:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977264,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1886:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977168,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1885:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977216,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1884:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977120,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1883:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977072,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1882:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12977024,8(%fp)
	movem.l -12(%fp),#3076
	unlk %fp
	jra jsfLoadClut
.L1881:
	moveq #9,%d0
	moveq #16,%d1
	move.l %d1,16(%fp)
	move.l %d0,12(%fp)
	move.l #12976976,8(%fp)
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
	jeq .L1913
.L1889:
	tst.w 14(%a3)
	jne .L1892
	tst.w 286(%a2)
	jne .L1892
	move.w 240(%a2),%a1
	lea (19,%a1),%a1
	move.w raptor_ticks,%a0
	cmp.l %a1,%a0
	jle .L1892
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
.L1892:
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
	jle .L1914
	tst.w 290(%a2)
	jne .L1895
	move.w 288(%a2),%d2
	move.w %d2,%a1
	move.l %a1,%a4
	add.l #__ZL15UppercutOffsets,%a4
	move.w (%a4,%a1.l),%d0
	add.w 250(%a2),%d0
	move.w %d0,250(%a2)
	cmp.w #166,%d0
	jle .L1896
	move.w #166,250(%a2)
.L1896:
	addq.w #1,%d2
	move.w %d2,288(%a2)
	move.l 650(%a2),%a1
	cmp.w #23,%d2
	jle .L1910
	tst.w 296(%a1)
	jne .L1910
	move.w #1,296(%a1)
	move.l 434(%a1),%a1
	clr.w 14(%a1)
.L1900:
	move.w 294(%a2),%d0
.L1901:
	cmp.w #1,%d0
	jeq .L1903
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	move.w %a0,240(%a2)
.L1894:
	move.w %d0,%a0
	cmp.w #24,%d2
	jle .L1915
.L1908:
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
.L1888:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L1914:
	move.w 288(%a2),%d2
	move.w 268(%a2),%d0
	move.w 250(%a2),%d1
	move.w %d0,%a0
	cmp.w #24,%d2
	jgt .L1908
.L1915:
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
.L1895:
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
	jle .L1906
.L1907:
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
	jra .L1894
.L1913:
	pea 7.w
	move.l %a3,-(%sp)
	jsr __Z19animationIsCompleteP14SpriteAnimators
	addq.l #8,%sp
	tst.b %d0
	jeq .L1889
	move.w #1,286(%a2)
	move.w #1,288(%a2)
	move.l 434(%a2),%d1
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1888
	cmp.w #43,%d0
	jeq .L1891
	tst.b 273(%a2)
	jne .L1891
	move.l 92(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d2
	move.l %d2,4(%a0,%d0.l)
.L1891:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %d1,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L1906:
	cmp.w #182,%d1
	jeq .L1907
	move.w %a0,240(%a2)
	jra .L1894
.L1910:
	move.l 434(%a1),%a1
	move.w 14(%a1),%d0
	cmp.w #1,%d0
	jne .L1900
	move.w 294(%a2),%d0
	jne .L1901
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
	jgt .L1905
.L1916:
	move.w raptor_ticks,%a0
	move.w 268(%a2),%d0
	move.w %a0,240(%a2)
	jra .L1894
.L1903:
	move.w 268(%a2),%d0
	neg.w %d0
	lsl.w #3,%d0
	add.w %d0,252(%a2)
	move.w 250(%a2),%d1
	cmp.w #165,%d1
	jle .L1916
.L1905:
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
	jra .L1894
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
	jge .L1922
	move.l 2(%a0),%d0
	move.l %d0,%d3
	add.l %d0,%d3
	add.l %d0,%d3
	lsl.l #6,%d3
	move.l sprite,%a1
	add.l %d3,%a1
	move.w 12(%a1),%d3
	cmp.w #1,%d3
	jle .L1923
	move.w 288(%a0),%d0
	jle .L1921
	move.w %d3,%a2
	sub.w %d0,%a2
	clr.w 288(%a0)
	cmp.w #0,%a2
	jle .L1928
	move.w %a2,12(%a1)
.L1921:
	movem.l -16(%fp),#3084
	unlk %fp
	rts
.L1922:
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
.L1923:
	move.w 288(%a0),%d3
	jle .L1921
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
.L1928:
	move.w #1,%a2
	move.w %a2,12(%a1)
	jra .L1921
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
	jne .L1935
	move.w 290(%a2),%a1
	lea (19,%a1),%a1
	cmp.l %a1,%a0
	jgt .L1944
.L1935:
	move.w 240(%a2),%a1
	addq.l #1,%a1
	move.w 292(%a2),%d0
	cmp.l %a1,%a0
	jle .L1937
	tst.w %d0
	jeq .L1945
.L1937:
	cmp.w #1,%d0
	jeq .L1946
.L1933:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1945:
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
	jeq .L1947
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
.L1948:
	movem.l -20(%fp),#15364
	unlk %fp
	rts
.L1944:
	move.w #1,296(%a2)
	jsr __Z9musicStopv
	move.w raptor_ticks,%a0
	jra .L1935
.L1946:
	jsr __Z20cameraIsScrollingPitv
	tst.b %d0
	jne .L1933
	tst.w 294(%a2)
	jne .L1933
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
	jeq .L1940
	cmp.w #43,%d0
	jeq .L1941
	tst.b 273(%a0)
	jne .L1941
	move.l 92(%a0),%d0
	move.l %d0,%a1
	add.l %d0,%a1
	add.l %a1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	moveq #-1,%d2
	move.l %d2,4(%a1,%d0.l)
.L1941:
	move.l 268(%a4),%a1
	move.l %a1,298(%a0)
	move.l %d1,-(%sp)
	move.l %a0,-(%sp)
	move.l %a4,-(%sp)
	move.l 2(%a1),%a0
	jsr (%a0)
	lea (12,%sp),%sp
.L1940:
	move.w #1,286(%a2)
	clr.w 288(%a2)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #66,%d0
	jeq .L1933
	cmp.w #43,%d0
	jeq .L1942
	tst.b 273(%a2)
	jne .L1942
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
.L1942:
	move.l 264(%a4),%a0
	move.l %a0,298(%a2)
	move.l %a3,16(%fp)
	move.l %a2,12(%fp)
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#15364
	unlk %fp
	jmp (%a0)
.L1947:
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
	jra .L1948
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
