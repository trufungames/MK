#NO_APP
	.text
	.even
	.globl	__Z14fighterStartUpv
__Z14fighterStartUpv:
	link.w %fp,#0
	move.l sprite,%a0
	move.w 2700(%a0),%a0
	move.l %a0,_shadowY
	unlk %fp
	rts
	.even
	.globl	__Z11fighterHideP7Fighter
__Z11fighterHideP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	unlk %fp
	rts
	.even
	.globl	__Z11fighterShowP7Fighter
__Z11fighterShowP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #6,(%a0)
	jls .L15
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L15:
	moveq #0,%d0
	move.w (%a0),%d0
	add.l %d0,%d0
	move.w .L12(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L12:
	.word .L5-.L12
	.word .L6-.L12
	.word .L7-.L12
	.word .L8-.L12
	.word .L10-.L12
	.word .L10-.L12
	.word .L11-.L12
.L10:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #10230640,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L8:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #9091888,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L11:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #10877840,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L5:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #8502032,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L6:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11369392,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
.L7:
	move.l 2(%a0),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #9657168,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z21fighterMakeSelectableP7Fighterb
__Z21fighterMakeSelectableP7Fighterb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	clr.l 200(%a0)
	move.b #1,204(%a0)
	move.l sprite,%a2
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a2,%d1.l),%a1
	tst.b 15(%fp)
	jne .L21
	move.w #256,8(%a1)
	moveq #-1,%d1
	move.l %d1,24(%a1)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,24(%a2,%d0.l)
	move.w #-1,268(%a0)
	move.w #256,%d0
	move.w #106,12(%a1)
	move.w %d0,244(%a0)
	move.w #106,246(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L21:
	move.w #14,8(%a1)
	moveq #1,%d1
	move.l %d1,24(%a1)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #1,%d1
	move.l %d1,24(%a2,%d0.l)
	move.w #1,268(%a0)
	moveq #14,%d0
	move.w #106,12(%a1)
	move.w %d0,244(%a0)
	move.w #106,246(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_
__Z17fighterInitializeP7FighterbP12SoundHandlerP11ImpactFrameS4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d1
	clr.b 106(%a2)
	clr.b 107(%a2)
	clr.b 168(%a2)
	clr.b 169(%a2)
	move.l 16(%fp),264(%a2)
	move.l 20(%fp),378(%a2)
	move.l 24(%fp),382(%a2)
	move.l 28(%fp),386(%a2)
	move.l 32(%fp),390(%a2)
	move.l 36(%fp),402(%a2)
	move.l 40(%fp),406(%a2)
	move.l 44(%fp),394(%a2)
	move.l 48(%fp),398(%a2)
	move.l 52(%fp),410(%a2)
	move.l 56(%fp),414(%a2)
	move.l 60(%fp),418(%a2)
	move.l 64(%fp),422(%a2)
	move.l 68(%fp),426(%a2)
	clr.l 196(%a2)
	clr.w 242(%a2)
	clr.w 108(%a2)
	move.b #1,142(%a2)
	clr.b 98(%a2)
	clr.b 140(%a2)
	move.b #1,101(%a2)
	move.b #1,99(%a2)
	move.b #1,100(%a2)
	clr.l 102(%a2)
	move.b #1,174(%a2)
	clr.b 238(%a2)
	clr.b 141(%a2)
	clr.b 127(%a2)
	clr.b 128(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 273(%a2)
	clr.b 143(%a2)
	clr.b 144(%a2)
	clr.b 145(%a2)
	clr.b 146(%a2)
	clr.b 148(%a2)
	clr.b 162(%a2)
	clr.b 147(%a2)
	clr.b 163(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 306(%a2)
	clr.w 170(%a2)
	clr.w 172(%a2)
	clr.b 175(%a2)
	clr.b 176(%a2)
	clr.b 186(%a2)
	clr.b 187(%a2)
	clr.l 188(%a2)
	moveq #50,%d0
	move.l %d0,178(%a2)
	moveq #20,%d2
	move.l %d2,182(%a2)
	move.b %d1,272(%a2)
	move.w #120,258(%a2)
	clr.w 260(%a2)
	clr.b 262(%a2)
	clr.b 270(%a2)
	clr.b 271(%a2)
	move.b #1,276(%a2)
	move.l 2(%a2),%d0
	move.l %d0,%a0
	add.l %d0,%a0
	add.l %a0,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #1,%d3
	move.l %d3,4(%a0,%d0.l)
	tst.b %d1
	jne .L29
	moveq #71,%d2
	move.l %d2,192(%a2)
	moveq #69,%d3
	move.l %d3,92(%a2)
	moveq #2,%d0
	move.l %d0,206(%a2)
	jsr __Z14stageGetStartXv
	add.w #220,%d0
	move.w %d0,254(%a2)
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a0
	moveq #-1,%d1
	move.l %d1,24(%a0)
	move.l 2(%a2),%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d1,%d2
	lsl.l #6,%d2
	moveq #-1,%d3
	move.l %d3,24(%a1,%d2.l)
	subq.l #1,%d1
	move.l %d1,%d2
	add.l %d1,%d2
	add.l %d2,%d1
	lsl.l #6,%d1
	add.l %d1,%a1
	move.l %d3,24(%a1)
	move.w #-1,268(%a2)
	moveq #1,%d1
	move.l %d1,4(%a1)
	move.l 438(%a2),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #11967584,8(%a1)
	move.l #11967584,44(%a0)
	move.l #320,144(%a0)
	tst.b 272(%a2)
	jne .L30
.L27:
	moveq #13,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr jsfLoadClut
	move.w #90,246(%a2)
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,169(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z15playerinputInitP7Fighter
.L29:
	moveq #70,%d0
	move.l %d0,192(%a2)
	moveq #68,%d1
	move.l %d1,92(%a2)
	move.l %d3,206(%a2)
	jsr __Z14stageGetStartXv
	add.w #70,%d0
	move.w %d0,254(%a2)
	move.l sprite,%a1
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	lea (%a1,%d1.l),%a0
	move.l %d3,24(%a0)
	move.l 2(%a2),%d2
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l %d3,24(%a1,%d1.l)
	subq.l #1,%d2
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d1,%d2
	lsl.l #6,%d2
	add.l %d2,%a1
	move.l %d3,24(%a1)
	move.w #1,268(%a2)
	moveq #1,%d1
	move.l %d1,4(%a1)
	move.l 438(%a2),%a1
	clr.w 14(%a1)
	move.l %d0,(%a1)
	move.l #11967584,8(%a1)
	move.l #11967584,44(%a0)
	move.l #320,144(%a0)
	tst.b 272(%a2)
	jeq .L27
.L30:
	moveq #9,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr jsfLoadClut
	move.w #90,246(%a2)
	addq.l #8,%sp
	move.l %a2,(%sp)
	jsr __Z16impactFrameResetP7Fighter
	move.b #1,169(%a2)
	addq.l #4,%sp
	move.l %a2,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra __Z15playerinputInitP7Fighter
	.even
	.globl	__Z19fighterRestartMatchP7Fighter
__Z19fighterRestartMatchP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.w 274(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
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
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 2(%a2),%d0
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (32,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateVictoryPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
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
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 2(%a2),%d0
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (32,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame
__Z24fighterUpdateSpecialPosefP7FighterP14SpriteAnimatorP14AnimationFrame:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a2
	move.w 268(%a2),%a0
	move.l %a0,-(%sp)
	move.w 246(%a2),%a0
	move.l %a0,-(%sp)
	move.w 244(%a2),%a0
	move.l %a0,-(%sp)
	clr.l -(%sp)
	pea 1.w
	move.w 16(%a2),%a0
	move.l %a0,-(%sp)
	move.l 20(%fp),-(%sp)
	move.l 16(%fp),-(%sp)
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFramesbbsss
	move.l 2(%a2),%d0
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (32,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z13fighterUpdateP12StateMachineP7FighterP14SpriteAnimator
__Z13fighterUpdateP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb
__Z19fighterHandleDamagefP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z24fighterCaptureDpadInputsP7Fighter
__Z24fighterCaptureDpadInputsP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 196(%a2),%d0
	move.l JAGPAD_LEFT,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L39
	cmp.l 102(%a2),%d1
	jeq .L48
	clr.b 99(%a2)
	move.l %d1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 196(%a2),%d0
	addq.l #8,%sp
.L39:
	move.l JAGPAD_RIGHT,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L41
	cmp.l 102(%a2),%d1
	jeq .L49
	clr.b 99(%a2)
	move.l %d1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 196(%a2),%d0
	addq.l #8,%sp
.L41:
	move.l JAGPAD_DOWN,%d1
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L43
	cmp.l 102(%a2),%d1
	jeq .L50
	clr.b 99(%a2)
	move.l %d1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 196(%a2),%d0
	addq.l #8,%sp
.L43:
	move.l JAGPAD_UP,%d1
	and.l %d1,%d0
	jeq .L38
	cmp.l 102(%a2),%d1
	jeq .L51
	clr.b 99(%a2)
	move.l %d1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L38:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L51:
	tst.b 99(%a2)
	jeq .L38
	clr.b 99(%a2)
	move.l %d1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	jra .L38
.L48:
	tst.b 99(%a2)
	jeq .L39
	clr.b 99(%a2)
	move.l %d1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 196(%a2),%d0
	addq.l #8,%sp
	jra .L39
.L49:
	tst.b 99(%a2)
	jeq .L41
	clr.b 99(%a2)
	move.l %d1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 196(%a2),%d0
	addq.l #8,%sp
	jra .L41
.L50:
	tst.b 99(%a2)
	jeq .L43
	clr.b 99(%a2)
	move.l %d1,102(%a2)
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 196(%a2),%d0
	addq.l #8,%sp
	jra .L43
	.even
	.globl	__Z21fighterHandleFatalityP12StateMachineP7FighterP14SpriteAnimator
__Z21fighterHandleFatalityP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 12(%fp),%a2
	move.l 650(%a2),%a0
	move.l 298(%a0),%a1
	cmp.w #68,(%a1)
	jeq .L70
.L67:
	clr.b %d0
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L70:
	cmp.w #1,268(%a2)
	jeq .L71
	move.w 254(%a2),%d2
	add.w #-48,%d2
	sub.w 254(%a0),%d2
	move.l 196(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L57
.L76:
	tst.b 101(%a2)
	jeq .L57
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 196(%a2),%d0
	addq.l #8,%sp
.L57:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L58
	tst.b 101(%a2)
	jeq .L58
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L58:
	cmp.w #4,(%a2)
	jeq .L59
	move.l 196(%a2),%d0
	move.l JAGPAD_B,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L72
	tst.b 101(%a2)
	jne .L73
.L59:
	move.w 354(%a2),%a0
	move.l %a0,-(%sp)
	move.l 344(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L67
.L75:
	tst.b 356(%a2)
	jne .L74
	cmp.w #39,%d2
	jle .L67
	cmp.w #100,%d2
	jgt .L67
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 374(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jsr __Z15matchResetTicksv
	moveq #1,%d0
.L77:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L72:
	and.l JAGPAD_8,%d0
	jeq .L59
	tst.b 101(%a2)
	jeq .L59
.L73:
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
	move.w 354(%a2),%a0
	move.l %a0,-(%sp)
	move.l 344(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr __Z19playerinputContainsP7FighterPii
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L67
	jra .L75
.L71:
	move.w 254(%a0),%d2
	add.w #-48,%d2
	sub.w 254(%a2),%d2
	move.l 196(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d3
	and.l %d0,%d3
	jeq .L57
	jra .L76
.L74:
	cmp.w #-32,%d2
	jlt .L67
	cmp.w #32,%d2
	jgt .L67
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 374(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jsr __Z15matchResetTicksv
	moveq #1,%d0
	jra .L77
.LC0:
	.ascii "move 1\0"
	.even
	.globl	__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator
__Z25fighterHandleSpecialMovesP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 12(%fp),%a2
	tst.b 138(%a2)
	jne .L87
	tst.b 148(%a2)
	jne .L87
	move.l 196(%a2),%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jeq .L81
	tst.b 101(%a2)
	jeq .L81
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	move.l 196(%a2),%d0
	addq.l #8,%sp
.L81:
	move.l JAGPAD_A,%d1
	and.l %d1,%d0
	jeq .L82
	tst.b 101(%a2)
	jeq .L82
	move.l %d1,-(%sp)
	move.l %a2,-(%sp)
	jsr __Z15playerinputPushP7Fighteri
	addq.l #8,%sp
.L82:
	move.w 348(%a2),%a0
	move.l %a0,-(%sp)
	move.l 332(%a2),-(%sp)
	move.l %a2,-(%sp)
	lea __Z19playerinputContainsP7FighterPii,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L89
	move.w 350(%a2),%a0
	move.l %a0,-(%sp)
	move.l 336(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jne .L90
	move.w 352(%a2),%a0
	move.l %a0,-(%sp)
	move.l 340(%a2),-(%sp)
	move.l %a2,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	tst.l %d0
	jeq .L87
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 366(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L87:
	clr.b %d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L90:
	move.l 16(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 362(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L89:
	pea .LC0
	jsr __Z11showMessagePc
	move.l 16(%fp),(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),-(%sp)
	move.l 358(%a2),%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #1,%d0
	movem.l -12(%fp),#3076
	unlk %fp
	rts
	.even
	.globl	__Z18fighterHandleInputP12StateMachineP7FighterP14SpriteAnimator
__Z18fighterHandleInputP12StateMachineP7FighterP14SpriteAnimator:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z18fighterButtonCheckP7Fighter
__Z18fighterButtonCheckP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_C,%d1
	jne .L94
	move.l %d0,%d1
	and.l JAGPAD_9,%d1
	jeq .L98
.L94:
	move.l %a2,-(%sp)
	jsr __Z24fighterCaptureDpadInputsP7Fighter
	move.l 196(%a2),%d0
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	addq.l #4,%sp
	jne .L93
	move.l %d0,%d1
	and.l JAGPAD_DOWN,%d1
	jne .L96
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jne .L96
	and.l JAGPAD_RIGHT,%d0
	jne .L96
	move.b #1,99(%a2)
.L96:
	move.b #1,100(%a2)
.L93:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L98:
	move.l %d0,%d1
	and.l JAGPAD_A,%d1
	jne .L94
	move.l %d0,%d1
	and.l JAGPAD_B,%d1
	jne .L94
	move.l %d0,%d1
	and.l JAGPAD_8,%d1
	jne .L94
	move.l %d0,%d1
	and.l JAGPAD_7,%d1
	jne .L94
	move.l %d0,%d1
	and.l JAGPAD_0,%d1
	jne .L94
	move.l %d0,%d1
	and.l JAGPAD_HASH,%d1
	jne .L94
	and.l JAGPAD_STAR,%d0
	jne .L94
	move.b #1,101(%a2)
	jra .L94
	.even
	.globl	__Z15fighterPlayHiyaiP12SoundHandlerb
__Z15fighterPlayHiyaiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #5,%d2
	cmp.l %d0,%d2
	jeq .L103
	move.b #6,%d2
	cmp.l %d0,%d2
	jeq .L104
	move.b #3,%d2
	cmp.l %d0,%d2
	jeq .L107
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaMaleP12SoundHandler
.L107:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxHiyaKangP12SoundHandler
.L104:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxHiyaFemaleP12SoundHandler
.L103:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxHiyaNinjaP12SoundHandler
	.even
	.globl	__Z16fighterPlayGroaniP12SoundHandlerb
__Z16fighterPlayGroaniP12SoundHandlerb:
	link.w %fp,#0
	move.l 12(%fp),%d0
	moveq #6,%d1
	cmp.l 8(%fp),%d1
	jeq .L114
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z12sfxGroanMaleP12SoundHandler
.L114:
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z14sfxGroanFemaleP12SoundHandler
	.even
	.globl	__Z15fighterPlayYelliP12SoundHandlerb
__Z15fighterPlayYelliP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #3,%d2
	cmp.l %d0,%d2
	jeq .L118
	move.b #6,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L122
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellMaleP12SoundHandler
.L118:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxYellKangP12SoundHandler
.L122:
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxYellFemaleP12SoundHandler
	.even
	.globl	__Z18fighterPlayPitFalliP12SoundHandlerb
__Z18fighterPlayPitFalliP12SoundHandlerb:
	link.w %fp,#0
	move.l 12(%fp),%d0
	moveq #6,%d1
	cmp.l 8(%fp),%d1
	jeq .L129
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z10sfxPitFallP12SoundHandler
.L129:
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z23sfxFatalityScreamFemaleP12SoundHandler
	.even
	.globl	__Z18fighterPlayPitLandiP12SoundHandlerb
__Z18fighterPlayPitLandiP12SoundHandlerb:
	link.w %fp,#0
	move.l 12(%fp),%d0
	moveq #6,%d1
	cmp.l 8(%fp),%d1
	jeq .L136
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z10sfxPitLandP12SoundHandler
.L136:
	move.l %d0,8(%fp)
	unlk %fp
	jra __Z22sfxFatalityGroanFemaleP12SoundHandler
	.even
	.globl	__Z15fighterPlayJumpiP12SoundHandlerb
__Z15fighterPlayJumpiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #4,%d2
	cmp.l %d0,%d2
	jle .L143
.L139:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z11sfxJumpMaleP12SoundHandler
.L143:
	move.b #5,%d2
	cmp.l %d0,%d2
	jlt .L144
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z12sfxJumpNinjaP12SoundHandler
.L144:
	move.b #6,%d2
	cmp.l %d0,%d2
	jne .L139
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z13sfxJumpFemaleP12SoundHandler
	.even
	.globl	__Z24fighterPlayFatalityGroaniP12SoundHandlerb
__Z24fighterPlayFatalityGroaniP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #3,%d2
	cmp.l %d0,%d2
	jeq .L148
	move.b #6,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L152
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanMaleP12SoundHandler
.L148:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanKangP12SoundHandler
.L152:
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z22sfxFatalityGroanFemaleP12SoundHandler
	.even
	.globl	__Z25fighterPlayFatalityScreamiP12SoundHandlerb
__Z25fighterPlayFatalityScreamiP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%d0
	move.l 12(%fp),%d1
	moveq #3,%d2
	cmp.l %d0,%d2
	jeq .L156
	move.b #6,%d2
	move.l %d1,8(%fp)
	cmp.l %d0,%d2
	jeq .L160
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z21sfxFatalityScreamMaleP12SoundHandler
.L156:
	move.l %d1,8(%fp)
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z20sfxFatalityGroanKangP12SoundHandler
.L160:
	move.l (%sp)+,%d2
	unlk %fp
	jra __Z23sfxFatalityScreamFemaleP12SoundHandler
	.even
	.globl	__Z27fighterPlayUppercutReactionP12SoundHandler
__Z27fighterPlayUppercutReactionP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%d2
	lea RAPTOR_random,%a2
	jsr (%a2)
	btst #0,%d0
	jne .L166
	jsr (%a2)
	move.l %d2,8(%fp)
	btst #0,%d0
	jne .L167
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z17sfxAnnouncerLaughP12SoundHandler
.L167:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z21sfxAnnouncerExcellentP12SoundHandler
.L166:
	move.l %d2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z11sfxCrowdAwwP12SoundHandler
	.even
	.globl	__Z16fighterMakeDizzyP7Fighter
__Z16fighterMakeDizzyP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 192(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a1,%d0.l)
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a1,%d0.l)
	clr.b 98(%a0)
	clr.b 140(%a0)
	clr.b 126(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
	clr.b 146(%a0)
	clr.b 144(%a0)
	clr.b 273(%a0)
	clr.b 148(%a0)
	clr.b 162(%a0)
	clr.b 147(%a0)
	clr.b 145(%a0)
	clr.b 163(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 175(%a0)
	clr.b 262(%a0)
	clr.b 270(%a0)
	clr.b 271(%a0)
	move.b #1,276(%a0)
	clr.b 306(%a0)
	move.b #1,143(%a0)
	clr.w 260(%a0)
	move.w raptor_ticks,240(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterResetFlagsAllP7FighterS0_
__Z20fighterResetFlagsAllP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	move.l sprite,%a0
	move.l 92(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 192(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	clr.b 98(%a3)
	clr.b 140(%a3)
	clr.b 126(%a3)
	clr.b 138(%a3)
	clr.b 139(%a3)
	clr.b 146(%a3)
	clr.b 144(%a3)
	clr.b 273(%a3)
	clr.b 148(%a3)
	clr.b 162(%a3)
	clr.b 147(%a3)
	clr.b 145(%a3)
	clr.b 163(%a3)
	clr.b 166(%a3)
	clr.b 167(%a3)
	clr.b 175(%a3)
	clr.b 262(%a3)
	clr.b 270(%a3)
	clr.b 271(%a3)
	move.b #1,276(%a3)
	clr.b 306(%a3)
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l 192(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
	clr.b 98(%a2)
	clr.b 140(%a2)
	clr.b 126(%a2)
	clr.b 138(%a2)
	clr.b 139(%a2)
	clr.b 146(%a2)
	clr.b 144(%a2)
	clr.b 273(%a2)
	clr.b 148(%a2)
	clr.b 162(%a2)
	clr.b 147(%a2)
	clr.b 145(%a2)
	clr.b 163(%a2)
	clr.b 166(%a2)
	clr.b 167(%a2)
	clr.b 175(%a2)
	clr.b 262(%a2)
	clr.b 270(%a2)
	clr.b 271(%a2)
	move.b #1,276(%a2)
	clr.b 306(%a2)
	move.l %a3,-(%sp)
	lea __Z16impactFrameResetP7Fighter,%a4
	jsr (%a4)
	move.l %a2,(%sp)
	jsr (%a4)
	move.l 438(%a3),%a0
	clr.w 14(%a0)
	move.l 92(%a3),%d0
	move.l %d0,(%a0)
	move.l #11967584,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11967584,44(%a0)
	move.l #320,144(%a0)
	addq.l #4,%sp
	tst.b 272(%a3)
	jne .L176
	moveq #13,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	lea jsfLoadClut,%a3
	jsr (%a3)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #11967584,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11967584,44(%a0)
	move.l #320,144(%a0)
	lea (12,%sp),%sp
	tst.b 272(%a2)
	jne .L177
.L174:
	moveq #13,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L176:
	moveq #9,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	lea jsfLoadClut,%a3
	jsr (%a3)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #11967584,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11967584,44(%a0)
	move.l #320,144(%a0)
	lea (12,%sp),%sp
	tst.b 272(%a2)
	jeq .L174
.L177:
	moveq #9,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetFlagsP7Fighter
__Z17fighterResetFlagsP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l sprite,%a1
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l 192(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a1,%d0.l)
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,112(%a1,%d0.l)
	clr.b 98(%a0)
	clr.b 140(%a0)
	clr.b 126(%a0)
	clr.b 138(%a0)
	clr.b 139(%a0)
	clr.b 146(%a0)
	clr.b 144(%a0)
	clr.b 273(%a0)
	clr.b 148(%a0)
	clr.b 162(%a0)
	clr.b 147(%a0)
	clr.b 145(%a0)
	clr.b 163(%a0)
	clr.b 166(%a0)
	clr.b 167(%a0)
	clr.b 175(%a0)
	clr.b 262(%a0)
	clr.b 270(%a0)
	clr.b 271(%a0)
	move.b #1,276(%a0)
	clr.b 306(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z23fighterHandleProjectileP12StateMachineP7FighterS2_
__Z23fighterHandleProjectileP12StateMachineP7FighterS2_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a3
	move.l 16(%fp),%a2
	move.w (%a3),%d0
	jeq .L223
	cmp.w #1,%d0
	jeq .L227
	cmp.w #2,%d0
	jeq .L223
	cmp.w #3,%d0
	jeq .L223
	cmp.w #4,%d0
	jeq .L228
	cmp.w #5,%d0
	jeq .L229
	cmp.w #6,%d0
	jeq .L223
	cmp.w #7,%d0
	jeq .L230
.L180:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L223:
	move.b #1,177(%a3)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L204
	cmp.w #8,%d0
	jeq .L204
	cmp.w #35,%d0
	jeq .L204
	move.b #1,106(%a2)
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L231:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L204:
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 35.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L227:
	move.b #1,177(%a3)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L204
	cmp.w #8,%d0
	jeq .L204
	cmp.w #35,%d0
	jeq .L204
	move.b #1,168(%a2)
	move.b #1,106(%a2)
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L231
.L228:
	move.b #1,177(%a3)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L195
	cmp.w #8,%d0
	jeq .L195
	move.w #-1,122(%a3)
	move.w #32,118(%a3)
	clr.w 124(%a3)
	move.w #8,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 53.w
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 434(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 54.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L230:
	move.b #1,177(%a3)
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L180
	cmp.w #19,%d0
	jeq .L180
	cmp.w #18,%d0
	jeq .L180
	cmp.w #7,%d0
	jeq .L180
	cmp.w #6,%d0
	jeq .L180
	cmp.w #22,%d0
	jeq .L180
	cmp.w #21,%d0
	jeq .L180
	cmp.w #24,%d0
	jeq .L180
	cmp.w #23,%d0
	jeq .L180
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L195:
	move.b #1,129(%a3)
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L229:
	tst.b 177(%a3)
	jne .L180
	move.b #1,177(%a3)
	tst.b 148(%a2)
	jne .L232
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L204
	cmp.w #8,%d0
	jeq .L204
	clr.w 260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L232:
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	clr.b 148(%a2)
	move.b #1,174(%a2)
	lea (16,%sp),%sp
	tst.b 272(%a2)
	jne .L233
	pea 16.w
	pea 15.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 434(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
.L234:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L233:
	pea 16.w
	pea 14.w
	move.l 278(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 434(%a2),-(%sp)
	move.l %a2,-(%sp)
	clr.l -(%sp)
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	move.l 434(%a3),(%sp)
	move.l %a3,-(%sp)
	pea 58.w
	move.l %d2,-(%sp)
	jsr (%a2)
	lea (16,%sp),%sp
	jra .L234
	.even
	.globl	__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #14384,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%a3
	move.l 16(%fp),%d4
	move.l 20(%fp),%a2
	move.l 24(%fp),%d3
	move.l 298(%a2),%a0
	move.w (%a0),%d1
	cmp.w #1,%d1
	jeq .L237
	cmp.w #8,%d1
	jeq .L307
	tst.b 138(%a2)
	jne .L236
	move.l 298(%a3),%a0
	move.w (%a0),%d0
	cmp.w #9,%d0
	jeq .L288
	cmp.w #10,%d0
	jeq .L288
	cmp.w #13,%d0
	jeq .L308
	cmp.w #11,%d0
	jeq .L290
	cmp.w #12,%d0
	jeq .L290
	cmp.w #15,%d0
	jeq .L309
	cmp.w #14,%d0
	jeq .L310
	cmp.w #17,%d0
	jeq .L311
	cmp.w #16,%d0
	jeq .L312
	cmp.w #21,%d0
	jeq .L313
	cmp.w #22,%d0
	jeq .L314
	cmp.w #23,%d0
	jeq .L299
	cmp.w #24,%d0
	jeq .L315
	cmp.w #18,%d0
	jeq .L299
	cmp.w #19,%d0
	jeq .L316
	cmp.w #38,%d0
	jeq .L317
	cmp.w #39,%d0
	jeq .L318
	cmp.w #40,%d0
	jeq .L319
	cmp.w #44,%d0
	jeq .L304
	cmp.w #45,%d0
	jeq .L320
	cmp.w #47,%d0
	jeq .L304
	cmp.w #48,%d0
	jeq .L321
	cmp.w #51,%d0
	jeq .L304
	cmp.w #56,%d0
	jeq .L322
	cmp.w #20,%d0
	jeq .L323
	cmp.w #60,%d0
	jeq .L300
	cmp.w #61,%d0
	jeq .L324
	cmp.w #63,%d0
	jeq .L300
	cmp.w #65,%d0
	jne .L241
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.b #1,128(%a2)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L241:
	tst.b 148(%a2)
	jeq .L236
	clr.b 148(%a2)
	move.b #1,174(%a2)
	moveq #16,%d1
	tst.b 272(%a2)
	jne .L325
	move.l %d1,16(%fp)
	moveq #15,%d0
	move.l %d0,12(%fp)
	move.l 278(%a2),8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra jsfLoadClut
.L236:
	movem.l -20(%fp),#3100
	unlk %fp
	rts
.L237:
	move.l 298(%a3),%a0
	move.w (%a0),%d0
	cmp.w #20,%d0
	jeq .L326
	cmp.w #65,%d0
	jeq .L327
	move.w #4,260(%a2)
	clr.b 262(%a2)
	move.b #1,204(%a3)
	cmp.w #21,%d0
	jeq .L274
	cmp.w #23,%d0
	jeq .L274
	cmp.w #48,%d0
	jeq .L274
	cmp.w #56,%d0
	jeq .L274
	cmp.w #60,%d0
	jeq .L274
	cmp.w #61,%d0
	jeq .L274
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #35,%d1
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L274:
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #37,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L288:
	move.w #8,260(%a2)
	clr.b 262(%a2)
	addq.l #5,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L307:
	move.w #4,260(%a2)
	clr.b 262(%a2)
	move.b #1,204(%a3)
	move.l 298(%a3),%a0
	move.w (%a0),%d0
	cmp.w #48,%d0
	jeq .L282
	cmp.w #65,%d0
	jeq .L282
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d1
.L328:
	move.l %d1,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L290:
	move.w #8,260(%a2)
	clr.b 262(%a2)
	addq.l #5,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 26.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L325:
	move.l %d1,16(%fp)
	moveq #14,%d0
	move.l %d0,12(%fp)
	move.l 278(%a2),8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra jsfLoadClut
.L308:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 25.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L310:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
.L293:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L282:
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #36,%d1
	jra .L328
.L326:
	move.w #16,260(%a2)
	clr.b 262(%a2)
	moveq #10,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #27,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L317:
	move.w #16,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
.L329:
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 29.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L309:
	move.w #24,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	jra .L293
.L311:
	move.w #8,260(%a2)
	clr.b 262(%a2)
	addq.l #5,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 30.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L299:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #10,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L329
.L312:
	jsr __Z8stageGetv
	moveq #3,%d1
	move.l 298(%a2),%a0
	cmp.l %d0,%d1
	jeq .L330
	move.w (%a0),%d0
.L251:
	cmp.w #84,%d0
	jeq .L241
	move.w #32,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 50.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 31.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L304:
	cmp.w #2,%d1
	jeq .L241
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
.L292:
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L313:
	move.w #24,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L314:
	move.w #24,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L327:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.b #1,128(%a2)
	move.l %d3,20(%fp)
	move.l %a2,16(%fp)
	moveq #41,%d0
	move.l %d0,12(%fp)
	move.l %d2,8(%fp)
	movem.l -20(%fp),#3100
	unlk %fp
	jra __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
.L315:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #10,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L329
.L316:
	move.w #16,260(%a2)
	clr.b 262(%a2)
	moveq #20,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L329
.L318:
	move.w #16,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	jra .L292
.L330:
	move.w (%a0),%d0
	cmp.w #68,%d0
	jne .L251
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 83.w
	move.l %d2,-(%sp)
	lea __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 84.w
	move.l %d2,-(%sp)
	jsr (%a3)
	lea (16,%sp),%sp
	jra .L241
.L319:
	move.w #32,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 41.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L320:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 46.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L322:
	cmp.w #2,%d1
	jeq .L241
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d4,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L329
.L321:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a2,-(%sp)
	pea 49.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L300:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d1
	add.l %d1,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 33.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L323:
	move.w #16,260(%a2)
	clr.b 262(%a2)
	moveq #10,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a3,-(%sp)
	pea 1.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 27.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
.L324:
	move.w #20,260(%a2)
	clr.b 262(%a2)
	moveq #50,%d0
	add.l %d0,200(%a3)
	move.b #1,204(%a3)
	move.l %d3,-(%sp)
	move.l %a3,-(%sp)
	pea 8.w
	move.l %d2,-(%sp)
	jsr __Z17stateMachineSleepP12StateMachinesP7FighterP14SpriteAnimator
	lea (12,%sp),%sp
	move.l %d3,(%sp)
	move.l %a2,-(%sp)
	pea 62.w
	move.l %d2,-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	jra .L241
	.even
	.globl	__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_
__Z18fighterImpactCheckP12StateMachineP7FighterP14SpriteAnimatorS2_S4_:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	move.l 8(%fp),%d4
	move.l 12(%fp),%a3
	move.l 20(%fp),%a2
	tst.b 139(%a3)
	jeq .L333
	move.l 2(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	cmp.l 112(%a0,%d0.l),%d1
	jeq .L365
.L333:
	tst.b 139(%a2)
	jeq .L334
	move.l 2(%a3),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d6
	cmp.l 112(%a0,%d0.l),%d6
	jeq .L366
.L334:
	lea __Z26stageGetFighterHitboxIndexv,%a4
	jsr (%a4)
	move.l %d0,%d3
	jsr (%a4)
	move.l %d0,%d2
	jsr (%a4)
	move.l %d0,%a5
	jsr (%a4)
	move.l %d3,%a0
	pea 12(%a0)
	move.l %d2,-(%sp)
	pea 12(%a5)
	move.l %d0,-(%sp)
	jsr rapCollide
	move.l %d0,_collision
	lea (16,%sp),%sp
	jlt .L332
	move.l colliders,%d0
	sub.l %a4,%a4
	move.l #__Z23fighterHandleProjectileP12StateMachineP7FighterS2_,%d5
	lea __Z19fighterHandleImpactP12StateMachineP7FighterP14SpriteAnimatorS2_S4_,%a5
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jlt .L337
.L370:
	cmp.w #0,%a0
	jlt .L332
	move.l 188(%a1),%d2
	move.l 188(%a0),%d3
	move.l 92(%a3),%d0
	cmp.l %d2,%d0
	jeq .L338
	cmp.l 92(%a2),%d2
	jeq .L338
	move.l %d2,%d1
	add.l %d2,%d1
	add.l %d2,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	moveq #-1,%d6
	move.l %d6,112(%a0,%d1.l)
.L338:
	cmp.l %d0,%d3
	jeq .L339
	cmp.l 92(%a2),%d3
	jeq .L339
	move.l %d3,%d0
	add.l %d3,%d0
	add.l %d3,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,112(%a0,%d0.l)
.L339:
	moveq #70,%d6
	cmp.l %d2,%d6
	jeq .L367
	moveq #65,%d1
	cmp.l %d2,%d1
	jeq .L368
	moveq #71,%d0
	cmp.l %d2,%d0
	jne .L341
	moveq #65,%d1
	cmp.l %d3,%d1
	jeq .L357
.L341:
	move.l 298(%a3),%a0
	move.w (%a0),%d0
.L356:
	cmp.w #43,%d0
	jeq .L358
	cmp.w #52,%d0
	jeq .L358
	cmp.w #57,%d0
	jeq .L358
	cmp.w #64,%d0
	jeq .L358
.L359:
	move.l 298(%a2),%a0
	move.w (%a0),%d0
	cmp.w #43,%d0
	jeq .L360
	cmp.w #52,%d0
	jeq .L360
	cmp.w #57,%d0
	jeq .L360
	cmp.w #64,%d0
	jeq .L360
.L361:
	moveq #67,%d0
	cmp.l %d2,%d0
	jeq .L369
.L362:
	move.l colliders,%d0
.L363:
	addq.l #8,%a4
	lea (%a4,%d0.l),%a0
	move.l 4(%a0),%a1
	move.l (%a0),%a0
	cmp.w #0,%a1
	jge .L370
.L337:
	cmp.w #0,%a0
	jge .L363
.L332:
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L369:
	moveq #65,%d1
	cmp.l %d3,%d1
	jne .L362
	move.l 298(%a2),%a0
	cmp.w #3,(%a0)
	jne .L362
	move.b #1,139(%a2)
	move.b #1,162(%a3)
	move.w raptor_ticks,242(%a3)
	move.l colliders,%d0
	jra .L363
.L360:
	cmp.l 92(%a2),%d2
	jne .L361
	moveq #65,%d0
	cmp.l %d3,%d0
	jne .L361
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	moveq #67,%d0
	cmp.l %d2,%d0
	jne .L362
	jra .L369
.L358:
	cmp.l 92(%a3),%d2
	jne .L359
	moveq #67,%d6
	cmp.l %d3,%d6
	jne .L359
	move.l %a2,-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (12,%sp),%sp
	jra .L359
.L368:
	moveq #67,%d6
	move.l 298(%a3),%a0
	move.w (%a0),%d0
	cmp.l %d3,%d6
	jne .L356
	cmp.w #3,%d0
	jeq .L371
	cmp.w #41,%d0
	jeq .L356
	move.l 298(%a2),%a0
	move.w (%a0),%d1
	cmp.w #41,%d1
	jeq .L356
	cmp.w #61,%d0
	jeq .L356
	cmp.w #61,%d1
	jeq .L356
	tst.b 273(%a3)
	jne .L356
	tst.b 273(%a2)
	jne .L356
	move.w 268(%a3),%a1
	move.w %a1,%d1
	ext.l %d1
	neg.l %d1
	add.l %d1,%d1
	move.l %d1,%d6
	add.l %d1,%d6
	moveq #1,%d1
	cmp.w %a1,%d1
	jeq .L372
	moveq #-1,%d1
	cmp.w %a1,%d1
	jeq .L349
	move.w 254(%a3),%d1
.L347:
	add.w %d6,%d1
	move.w %d1,254(%a3)
	cmp.w #15,%d1
	jle .L373
	cmp.w #716,%d1
	jle .L348
	move.w #716,254(%a3)
.L348:
	move.w 268(%a2),%a1
	move.w %a1,%d1
	ext.l %d1
	neg.l %d1
	add.l %d1,%d1
	move.l %d1,%d6
	add.l %d1,%d6
	moveq #1,%d1
	cmp.w %a1,%d1
	jeq .L374
	moveq #-1,%d1
	cmp.w %a1,%d1
	jeq .L353
	move.w 254(%a2),%d1
.L352:
	add.w %d6,%d1
	move.w %d1,254(%a2)
	cmp.w #15,%d1
	jle .L375
	cmp.w #716,%d1
	jle .L356
	move.w #716,254(%a2)
	jra .L356
.L367:
	moveq #67,%d0
	cmp.l %d3,%d0
	jne .L341
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	lea (20,%sp),%sp
	move.l 298(%a3),%a0
	move.w (%a0),%d0
	jra .L356
.L357:
	move.l 16(%fp),-(%sp)
	move.l %a3,-(%sp)
	move.l 24(%fp),-(%sp)
	move.l %a2,-(%sp)
	move.l %d4,-(%sp)
	jsr (%a5)
	move.l 298(%a3),%a0
	move.w (%a0),%d0
	lea (20,%sp),%sp
	jra .L356
.L366:
	clr.b 139(%a2)
	jra .L334
.L365:
	clr.b 139(%a3)
	jra .L333
.L371:
	move.b #1,139(%a3)
	move.b #1,162(%a2)
	move.w raptor_ticks,242(%a2)
	jra .L359
.L373:
	move.w #16,254(%a3)
	jra .L348
.L375:
	move.w #16,254(%a2)
	jra .L356
.L353:
	move.w 254(%a2),%d1
	move.w %d1,%a1
	move.l 650(%a2),%a0
	sub.w 254(%a0),%a1
	cmp.w #259,%a1
	jle .L352
	tst.l %d6
	jgt .L356
	jra .L352
.L374:
	move.w 254(%a2),%d1
	move.l 650(%a2),%a1
	move.w 254(%a1),%a1
	sub.w %d1,%a1
	cmp.w #259,%a1
	jle .L352
	tst.l %d6
	jge .L352
	jra .L356
.L349:
	move.w 254(%a3),%d1
	move.w %d1,%a1
	move.l 650(%a3),%a0
	sub.w 254(%a0),%a1
	cmp.w #259,%a1
	jle .L347
	tst.l %d6
	jgt .L348
	jra .L347
.L372:
	move.w 254(%a3),%d1
	move.l 650(%a3),%a1
	move.w 254(%a1),%a1
	sub.w %d1,%a1
	cmp.w #259,%a1
	jle .L347
	tst.l %d6
	jge .L347
	jra .L348
	.even
	.globl	__Z16fighterTurnCheckP7FighterS0_
__Z16fighterTurnCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	move.w 268(%a1),%d0
	cmp.w #1,%d0
	jeq .L435
	cmp.w #-1,%d0
	jeq .L436
.L380:
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L437
.L381:
	cmp.w #-1,%d0
	jne .L377
	move.w 254(%a0),%a3
	add.l _turnOffset,%a3
	move.w 254(%a1),%a2
	cmp.l %a3,%a2
	jle .L377
.L432:
	tst.b 140(%a0)
	jne .L377
	tst.b 148(%a0)
	jne .L377
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L377
	cmp.w #56,%d0
	jeq .L377
	move.l 298(%a1),%a1
	move.w (%a1),%d1
	cmp.w #56,%d1
	jeq .L377
	cmp.w #61,%d1
	jeq .L377
	cmp.w #61,%d0
	jeq .L377
	cmp.w #62,%d1
	jeq .L377
	cmp.w #62,%d0
	jeq .L377
	cmp.w #63,%d0
	jeq .L377
	cmp.w #65,%d0
	jeq .L377
	cmp.w #41,%d0
	jeq .L377
	move.b #1,140(%a0)
.L377:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L436:
	move.w 254(%a1),%a3
	add.l _turnOffset,%a3
	move.w 254(%a0),%a2
	cmp.l %a3,%a2
	jle .L380
	tst.b 140(%a1)
	jne .L380
.L438:
	tst.b 148(%a1)
	jne .L380
	move.l 298(%a1),%a2
	move.w (%a2),%d0
	cmp.w #51,%d0
	jeq .L380
	cmp.w #56,%d0
	jeq .L380
	move.l 298(%a0),%a2
	move.w (%a2),%d1
	cmp.w #56,%d1
	jeq .L380
	cmp.w #61,%d0
	jeq .L380
	cmp.w #61,%d1
	jeq .L380
	cmp.w #62,%d0
	jeq .L380
	cmp.w #62,%d1
	jeq .L380
	cmp.w #63,%d0
	jeq .L380
	cmp.w #65,%d0
	jeq .L380
	cmp.w #41,%d0
	jeq .L380
	move.b #1,140(%a1)
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jne .L381
.L437:
	move.w 254(%a0),%a3
	move.w 254(%a1),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jlt .L432
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L435:
	move.w 254(%a1),%a3
	move.w 254(%a0),%a2
	add.l _turnOffset,%a2
	cmp.l %a3,%a2
	jge .L380
	tst.b 140(%a1)
	jne .L380
	jra .L438
	.even
	.globl	__Z17fighterCloseCheckP7FighterS0_
__Z17fighterCloseCheckP7FighterS0_:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.l 298(%a0),%a2
	move.w (%a2),%d0
	cmp.w #40,%d0
	jeq .L445
	move.l 298(%a1),%a2
	move.w (%a2),%d1
	cmp.w #40,%d1
	jeq .L445
	cmp.w #1,%d0
	jeq .L445
	cmp.w #1,%d1
	jeq .L445
	cmp.w #8,%d0
	jeq .L445
	cmp.w #8,%d1
	jeq .L445
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L448
	cmp.w #-1,%d0
	jne .L445
	move.w 244(%a1),%a3
	move.w 244(%a0),%a2
	lea (-72,%a2),%a2
	cmp.l %a3,%a2
	jle .L446
.L445:
	clr.b 141(%a0)
	clr.b 141(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L448:
	move.w 244(%a1),%a3
	move.w 244(%a0),%a2
	lea (72,%a2),%a2
	cmp.l %a3,%a2
	jlt .L445
.L446:
	move.b #1,141(%a0)
	move.b #1,141(%a1)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.even
	.globl	__Z23fighterUpdateHealthbarsP7FighterS0_
__Z23fighterUpdateHealthbarsP7FighterS0_:
	link.w %fp,#0
	unlk %fp
	jra __Z9hudUpdateP7FighterS0_
	.even
	.globl	__Z23fighterAddPendingDamageP7FighteribS0_i
__Z23fighterAddPendingDamageP7FighteribS0_i:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 20(%fp),%a0
	move.w 14(%fp),260(%a1)
	move.b 19(%fp),262(%a1)
	move.l 24(%fp),%d0
	add.l %d0,200(%a0)
	move.b #1,204(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterTakeDamageP7Fighteri
__Z17fighterTakeDamageP7Fighteri:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%d2
	tst.b 143(%a2)
	jne .L452
	tst.b 262(%a2)
	jne .L456
	sub.w %d2,258(%a2)
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
.L452:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L456:
	clr.b 262(%a2)
	clr.l -(%sp)
	jsr __Z7bgShakeb
	addq.l #4,%sp
	sub.w %d2,258(%a2)
	move.l %a2,8(%fp)
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z16hudUpdateFighterP7Fighter
	.even
	.globl	__Z17fighterShiftRightP7Fighter
__Z17fighterShiftRightP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	cmp.w #-1,268(%a0)
	jeq .L459
	move.w 254(%a0),%d0
.L460:
	addq.w #2,%d0
	move.w %d0,254(%a0)
	cmp.w #15,%d0
	jle .L465
	cmp.w #716,%d0
	jle .L458
	move.w #716,254(%a0)
.L458:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L465:
	move.w #16,254(%a0)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L459:
	move.w 254(%a0),%d0
	move.w %d0,%a1
	move.l 650(%a0),%a2
	sub.w 254(%a2),%a1
	cmp.w #259,%a1
	jle .L460
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z16fighterShiftLeftP7Fighter
__Z16fighterShiftLeftP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	cmp.w #1,268(%a0)
	jeq .L468
	move.w 254(%a0),%d0
.L469:
	subq.w #2,%d0
	move.w %d0,254(%a0)
	cmp.w #15,%d0
	jle .L474
	cmp.w #716,%d0
	jle .L467
	move.w #716,254(%a0)
.L467:
	unlk %fp
	rts
.L474:
	move.w #16,254(%a0)
	unlk %fp
	rts
.L468:
	move.w 254(%a0),%d0
	move.l 650(%a0),%a1
	move.w 254(%a1),%a1
	sub.w %d0,%a1
	cmp.w #259,%a1
	jle .L469
	unlk %fp
	rts
	.even
	.globl	__Z21fighterLockBoundariesP7Fighter
__Z21fighterLockBoundariesP7Fighter:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z27fighterAlignSpriteAndHitboxP7Fighter
__Z27fighterAlignSpriteAndHitboxP7Fighter:
	link.w %fp,#0
	unlk %fp
	rts
	.even
	.globl	__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb
__Z23fighterResetSpriteIndexP7FighterP14SpriteAnimatorb:
	link.w %fp,#0
	move.l 8(%fp),%a1
	move.l 12(%fp),%a0
	tst.b 19(%fp)
	jne .L482
	moveq #17,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
.L482:
	moveq #15,%d0
	move.l %d0,2(%a1)
	move.l %d0,(%a0)
	move.w raptor_ticks,12(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z17fighterSetOnFloorP7Fighter
__Z17fighterSetOnFloorP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w #90,246(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z20fighterHasRoomToMoveP7FighterS0_
__Z20fighterHasRoomToMoveP7FighterS0_:
	link.w %fp,#0
	movem.l #56,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
	move.w 244(%a2),%d0
	cmp.w #11,%d0
	jle .L498
.L486:
	cmp.w #261,%d0
	jgt .L490
.L495:
	moveq #1,%d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L498:
	lea __Z18cameraIsAtLeftWallv,%a4
	jsr (%a4)
	tst.b %d0
	jne .L494
	move.w 244(%a2),%d0
	cmp.w #11,%d0
	jgt .L486
	cmp.w #261,244(%a3)
	jgt .L494
	jsr (%a4)
	tst.b %d0
	jne .L494
	move.w 244(%a2),%d0
	cmp.w #261,%d0
	jle .L495
.L490:
	jsr __Z19cameraIsAtRightWallv
	tst.b %d0
	jeq .L499
.L494:
	clr.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
.L499:
	cmp.w #309,244(%a2)
	jle .L495
	cmp.w #10,244(%a3)
	sgt %d0
	neg.b %d0
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z19fighterPositionXAddP7Fighteri
__Z19fighterPositionXAddP7Fighteri:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w 268(%a0),%d1
	move.w 254(%a0),%d0
	cmp.w #1,%d1
	jeq .L509
	cmp.w #-1,%d1
	jeq .L505
.L503:
	add.w %a1,%d0
	move.w %d0,254(%a0)
	cmp.w #15,%d0
	jle .L510
	cmp.w #716,%d0
	jle .L501
	move.w #716,254(%a0)
.L501:
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L505:
	move.w %d0,%a2
	move.l 650(%a0),%a3
	sub.w 254(%a3),%a2
	cmp.w #259,%a2
	jle .L503
	cmp.w #0,%a1
	jle .L503
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L510:
	move.w #16,254(%a0)
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
.L509:
	move.l 650(%a0),%a2
	move.w 254(%a2),%a2
	sub.w %d0,%a2
	cmp.w #259,%a2
	jle .L503
	cmp.w #0,%a1
	jge .L503
	move.l (%sp)+,%a2
	move.l (%sp)+,%a3
	unlk %fp
	rts
	.even
	.globl	__Z17fighterCastShadowP7Fighterb
__Z17fighterCastShadowP7Fighterb:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 2(%a0),%d0
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	unlk %fp
	rts
	.even
	.globl	__Z25fighterShadowHeightLookupi
__Z25fighterShadowHeightLookupi:
	link.w %fp,#0
	move.l 8(%fp),%d0
	moveq #64,%d1
	cmp.l %d0,%d1
	jeq .L518
	jge .L525
	moveq #96,%d1
	cmp.l %d0,%d1
	jeq .L520
	cmp.l #128,%d0
	jeq .L521
	move.b #80,%d1
	cmp.l %d0,%d1
	jeq .L526
.L514:
	moveq #21,%d0
	unlk %fp
	rts
.L525:
	move.b #32,%d1
	cmp.l %d0,%d1
	jeq .L523
	move.b #48,%d1
	cmp.l %d0,%d1
	jeq .L517
	move.b #16,%d1
	cmp.l %d0,%d1
	jne .L514
	moveq #3,%d0
	unlk %fp
	rts
.L517:
	moveq #9,%d0
	unlk %fp
	rts
.L521:
	moveq #24,%d0
	unlk %fp
	rts
.L526:
	moveq #15,%d0
	unlk %fp
	rts
.L520:
	moveq #18,%d0
	unlk %fp
	rts
.L523:
	moveq #6,%d0
	unlk %fp
	rts
.L518:
	moveq #12,%d0
	unlk %fp
	rts
	.even
	.globl	__Z20fighterIsMaxDistanceP7FighterS0_
__Z20fighterIsMaxDistanceP7FighterS0_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	cmp.w #1,268(%a0)
	jeq .L534
	move.w 244(%a0),%a2
	sub.w 244(%a1),%a2
	cmp.w #259,%a2
	jgt .L532
.L530:
	clr.b 277(%a0)
	clr.b 277(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L534:
	move.w 244(%a1),%a2
	sub.w 244(%a0),%a2
	cmp.w #259,%a2
	jle .L530
.L532:
	move.b #1,277(%a0)
	move.b #1,277(%a1)
	move.l (%sp)+,%a2
	unlk %fp
	rts
	.even
	.globl	__Z19fighterTorpedoCheckP12StateMachineP7FighterS2_
__Z19fighterTorpedoCheckP12StateMachineP7FighterS2_:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	cmp.w #2,(%a1)
	jeq .L537
.L540:
	cmp.w #2,(%a0)
	jeq .L543
.L536:
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L543:
	move.l 298(%a0),%a2
	cmp.w #48,(%a2)
	jne .L536
	cmp.w #1,286(%a0)
	jne .L536
	move.l 298(%a1),%a0
	cmp.w #49,(%a0)
	jne .L536
	move.l 434(%a1),-(%sp)
	move.l %a1,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L537:
	move.l 298(%a1),%a2
	cmp.w #48,(%a2)
	jne .L540
	cmp.w #1,286(%a1)
	jne .L540
	move.l 298(%a0),%a2
	cmp.w #49,(%a2)
	jne .L540
	move.l 434(%a0),-(%sp)
	move.l %a0,-(%sp)
	pea 33.w
	move.l 8(%fp),-(%sp)
	jsr __Z16stateMachineGotoP12StateMachinesP7FighterP14SpriteAnimator
	lea (16,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z17fighterResetTicksP7Fighter
__Z17fighterResetTicksP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.b #1,169(%a0)
	unlk %fp
	rts
.LC1:
	.ascii "%02ld00\0"
	.even
	.globl	__Z17fighterDrawScoresP7FighterS0_
__Z17fighterDrawScoresP7FighterS0_:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a3
	move.l 12(%fp),%a2
	tst.b 204(%a3)
	jne .L547
	tst.b 204(%a2)
	jeq .L546
.L547:
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b 204(%a3)
	jne .L556
	tst.b 204(%a2)
	jeq .L546
.L557:
	clr.b 204(%a2)
	move.l 200(%a2),%d0
	move.l %d0,_tempScore
	jne .L553
	move.b #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 200(%a2),(%sp)
	pea .LC1
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L546:
	movem.l -12(%fp),#3076
	unlk %fp
	rts
.L556:
	pea 10.w
	pea 26.w
	jsr rapLocate
	addq.l #4,%sp
	move.l 200(%a3),(%sp)
	pea .LC1
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	tst.b 204(%a2)
	jne .L557
	jra .L546
.L553:
	moveq #2,%d2
	lea ___udivsi3,%a3
.L550:
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	addq.l #1,%d2
	tst.l %d0
	jne .L550
	clr.l _tempScore
	move.l %d2,_scoreLength
	move.b #3,%d0
	cmp.l %d2,%d0
	jge .L552
	lsl.l #3,%d2
	move.w #302,%d0
	sub.l %d2,%d0
	move.l %d0,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 200(%a2),(%sp)
	pea .LC1
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
.L552:
	moveq #4,%d0
	move.l %d0,_scoreLength
	move.l #270,%d2
	pea 10.w
	move.l %d2,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l 200(%a2),(%sp)
	pea .LC1
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	addq.l #8,%sp
	movem.l -12(%fp),#3076
	unlk %fp
	jra _rapPrint
	.even
	.globl	__Z14fighterLaydownP7FighterP14SpriteAnimator
__Z14fighterLaydownP7FighterP14SpriteAnimator:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	move.l 12(%fp),%a3
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
	jle .L559
	move.b #1,174(%a2)
	clr.w 14(%a3)
	move.w #90,246(%a2)
.L559:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
	.even
	.globl	__Z27fighterResetRaidenLightningP7Fighter
__Z27fighterResetRaidenLightningP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 438(%a0),%a1
	clr.w 14(%a1)
	move.l 92(%a0),%d0
	move.l %d0,(%a1)
	move.l #11967584,8(%a1)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	add.l %d0,%a1
	move.l #11967584,44(%a1)
	move.l #320,144(%a1)
	tst.b 272(%a0)
	jne .L567
	moveq #13,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L567:
	moveq #9,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z13fighterFreezeP7Fighter
__Z13fighterFreezeP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 148(%a2)
	jne .L569
	move.b #1,148(%a2)
	clr.b 174(%a2)
	clr.b 149(%a2)
	moveq #-1,%d0
	move.l %d0,150(%a2)
	clr.l 154(%a2)
	move.w raptor_ticks,%d0
	move.w %d0,%a0
	move.l %a0,158(%a2)
	move.w %d0,240(%a2)
	move.b #1,107(%a2)
	tst.b 272(%a2)
	jeq .L571
	pea 16.w
	pea 14.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L571:
	pea 16.w
	pea 15.w
	move.l 282(%a2),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	move.l 264(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra __Z19sfxSubzeroFreezeEndP12SoundHandler
.L569:
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z15fighterUnfreezeP7Fighter
__Z15fighterUnfreezeP7Fighter:
	link.w %fp,#0
	move.l 8(%fp),%a0
	clr.b 148(%a0)
	move.b #1,174(%a0)
	tst.b 272(%a0)
	jne .L579
	pea 16.w
	pea 15.w
	move.l 278(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
.L579:
	pea 16.w
	pea 14.w
	move.l 278(%a0),-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z14fighterHarpoonP7FighterS0_
__Z14fighterHarpoonP7FighterS0_:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	tst.b 127(%a0)
	jne .L581
	move.b #1,127(%a0)
	clr.b 112(%a0)
	move.w 268(%a0),%d1
	cmp.w #-1,%d1
	jeq .L592
	move.w 244(%a1),%d2
	move.w 244(%a0),%a2
	move.w %d2,%d0
	add.w #48,%d0
	sub.w %a2,%d0
	move.w %d0,108(%a0)
.L584:
	cmp.w #149,%d0
	jgt .L585
	move.w #150,%d3
	sub.w %d0,%d3
	move.w %d3,%d0
	move.w %d3,108(%a0)
	tst.b 132(%a0)
	jeq .L593
.L586:
	cmp.w #-1,%d1
	jeq .L594
.L587:
	add.w #-48,%d2
	move.w %d2,110(%a0)
	move.w raptor_ticks,240(%a0)
	move.l 92(%a1),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 438(%a1),%a2
	clr.w 14(%a2)
	move.l %d0,(%a2)
	move.l #11967584,8(%a2)
	move.l #11967584,44(%a0)
	move.l #320,144(%a0)
	tst.b 272(%a1)
	jne .L595
.L590:
	moveq #13,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
.L581:
	movem.l -12(%fp),#1036
	unlk %fp
	rts
.L585:
	clr.w 108(%a0)
	cmp.w #-1,%d1
	jne .L587
.L594:
	add.w #48,%d2
	move.w %d2,110(%a0)
	move.w raptor_ticks,240(%a0)
	move.l 92(%a1),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	add.l %d1,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0)
	move.l 438(%a1),%a2
	clr.w 14(%a2)
	move.l %d0,(%a2)
	move.l #11967584,8(%a2)
	move.l #11967584,44(%a0)
	move.l #320,144(%a0)
	tst.b 272(%a1)
	jeq .L590
.L595:
	moveq #9,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr jsfLoadClut
	lea (12,%sp),%sp
	jra .L581
.L592:
	move.w 244(%a0),%a2
	move.w 244(%a1),%d2
	move.w %a2,%d0
	add.w #48,%d0
	sub.w %d2,%d0
	move.w %d0,108(%a0)
	jra .L584
.L593:
	move.b #1,132(%a0)
	move.w %a2,%a2
	muls.w %d1,%d0
	sub.l %d0,%a2
	move.l %a2,134(%a0)
	jra .L586
	.even
	.globl	__Z23fighterSlideToPositionXP7Fighteri
__Z23fighterSlideToPositionXP7Fighteri:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 132(%a0)
	jne .L597
	move.b #1,132(%a0)
	move.l 12(%fp),134(%a0)
.L597:
	unlk %fp
	rts
	.even
	.globl	__Z19fighterHarpoonCheckP7FighterS0_
__Z19fighterHarpoonCheckP7FighterS0_:
	link.w %fp,#0
	movem.l #14368,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a2
	move.b 114(%a2),%d2
	jeq .L602
	tst.b 132(%a0)
	jeq .L611
.L603:
	cmp.w #-1,268(%a0)
	jeq .L612
.L606:
	move.w 244(%a0),%d3
	move.w 244(%a2),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,120(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L617
	addq.l #1,%d1
.L617:
	asr.l #1,%d1
	add.w %d1,%d0
	move.w %d0,116(%a2)
	tst.b %d2
	jne .L613
.L608:
	move.l 92(%a2),%d1
	move.l %d1,%a0
	add.l %d1,%a0
	add.l %a0,%d1
	lsl.l #6,%d1
	move.l sprite,%a0
	lea (-96,%a1),%a1
	move.l %a1,88(%a0,%d1.l)
	move.w 268(%a2),%d1
	lsl.w #5,%d1
	add.w %d1,%d0
	move.w %d0,116(%a2)
.L601:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L613:
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a1
	move.l %a0,88(%a1,%d0.l)
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L611:
	tst.b 112(%a0)
	jeq .L603
	clr.b 114(%a2)
	move.l 438(%a2),%a0
	clr.w 14(%a0)
	move.l 92(%a2),%d0
	move.l %d0,(%a0)
	move.l #11967584,8(%a0)
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	add.l %d0,%a0
	move.l #11967584,44(%a0)
	move.l #320,144(%a0)
	tst.b 272(%a2)
	jne .L614
	moveq #13,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr jsfLoadClut
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (12,%sp),%sp
.L615:
	movem.l -16(%fp),#1052
	unlk %fp
	rts
.L602:
	tst.b 113(%a2)
	jeq .L601
	cmp.w #-1,268(%a0)
	jne .L606
.L612:
	move.w 244(%a2),%d3
	move.w 244(%a0),%d1
	add.w #48,%d1
	sub.w %d3,%d1
	move.w %d1,120(%a2)
	move.w %d1,%a1
	lea (-64,%a1),%a0
	move.w %d1,%d0
	moveq #15,%d4
	lsr.w %d4,%d0
	add.w %d1,%d0
	asr.w #1,%d0
	add.w %d3,%d0
	move.l %a0,%d1
	jpl .L618
	addq.l #1,%d1
.L618:
	asr.l #1,%d1
	sub.w %d1,%d0
	move.w %d0,116(%a2)
	tst.b %d2
	jeq .L608
	jra .L613
.L614:
	moveq #9,%d0
	pea 3.w
	move.l %d0,-(%sp)
	move.l #12075104,-(%sp)
	jsr jsfLoadClut
	move.l 92(%a2),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	lea (12,%sp),%sp
	jra .L615
	.even
	.globl	__Z20fighterCanTakeDamageP12StateMachineP7Fighter
__Z20fighterCanTakeDamageP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.b 138(%a0),%d0
	eor.b #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z17fighterIsBlockingP12StateMachineP7Fighter
__Z17fighterIsBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 298(%a0),%a0
	move.w (%a0),%d0
	cmp.w #1,%d0
	jeq .L622
	cmp.w #8,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L622:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z21fighterIsDuckBlockingP12StateMachineP7Fighter
__Z21fighterIsDuckBlockingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 298(%a0),%a0
	cmp.w #8,(%a0)
	seq %d0
	neg.b %d0
	unlk %fp
	rts
	.even
	.globl	__Z16fighterIsJumpingP12StateMachineP7Fighter
__Z16fighterIsJumpingP12StateMachineP7Fighter:
	link.w %fp,#0
	move.l 12(%fp),%a0
	move.l 298(%a0),%a0
	move.w (%a0),%d0
	cmp.w #5,%d0
	jeq .L635
	cmp.w #19,%d0
	jeq .L635
	cmp.w #18,%d0
	jeq .L635
	cmp.w #7,%d0
	jeq .L635
	cmp.w #6,%d0
	jeq .L635
	cmp.w #22,%d0
	jeq .L635
	cmp.w #21,%d0
	jeq .L635
	cmp.w #24,%d0
	jeq .L635
	cmp.w #23,%d0
	seq %d0
	neg.b %d0
	unlk %fp
	rts
.L635:
	moveq #1,%d0
	unlk %fp
	rts
	.even
	.globl	__Z19fighterFaceOpponentP7Fighter
__Z19fighterFaceOpponentP7Fighter:
	link.w %fp,#0
	movem.l #8240,-(%sp)
	move.l 8(%fp),%a0
	move.w 268(%a0),%d0
	cmp.w #1,%d0
	jeq .L643
	cmp.w #-1,%d0
	jeq .L644
.L638:
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L644:
	move.w 244(%a0),%a2
	move.l 650(%a0),%a1
	add.l _turnOffset,%a2
	move.w 244(%a1),%a1
	cmp.l %a2,%a1
	jle .L638
.L645:
	move.w #1,268(%a0)
	move.l sprite,%a1
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #1,%d2
	move.l %d2,24(%a1,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	movem.l (%sp)+,#3076
	unlk %fp
	rts
.L643:
	move.w 244(%a0),%a2
	move.l 650(%a0),%a1
	move.w 244(%a1),%a3
	add.l _turnOffset,%a3
	cmp.l %a2,%a3
	jge .L638
	move.w #-1,268(%a0)
	move.l sprite,%a3
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d2
	move.l %d2,24(%a3,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a3,%d0.l)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a3,%d0.l)
	add.l _turnOffset,%a2
	move.w 244(%a1),%a1
	cmp.l %a2,%a1
	jle .L638
	jra .L645
	.even
	.globl	__Z20fighterTurnInstantlyP7Fighter
__Z20fighterTurnInstantlyP7Fighter:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.w 268(%a0),%d0
	neg.w %d0
	move.w %d0,268(%a0)
	move.l sprite,%a1
	cmp.w #1,%d0
	jeq .L652
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #-1,%d2
	move.l %d2,24(%a1,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L652:
	move.l 2(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d0,%d1
	lsl.l #6,%d1
	moveq #1,%d2
	move.l %d2,24(%a1,%d1.l)
	subq.l #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l 92(%a0),%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	move.l %d2,24(%a1,%d0.l)
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.globl	_scoreLength
	.data
	.even
_scoreLength:
	.long	4
	.globl	_tempScore
	.bss
	.even
_tempScore:
	.skip 4
	.globl	_shadowY
	.even
_shadowY:
	.skip 4
	.globl	_walkForward
_walkForward:
	.skip 1
	.globl	_turnOffset
	.data
	.even
_turnOffset:
	.long	32
	.globl	_collision
	.bss
	.even
_collision:
	.skip 4
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
