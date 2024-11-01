#NO_APP
	.text
	.even
	.globl	__Z16screenMachineAddP13ScreenMachinesP6Screen
__Z16screenMachineAddP13ScreenMachinesP6Screen:
	link.w %fp,#0
	move.l 12(%fp),%a1
	move.l 16(%fp),%a0
	move.w %a1,(%a0)
	move.w %a1,%a1
	addq.l #3,%a1
	move.l %a1,%d0
	add.l %a1,%d0
	add.l %d0,%d0
	move.l 8(%fp),%a1
	move.l %a0,(%a1,%d0.l)
	unlk %fp
	rts
	.even
	.globl	__Z17screenMachineInitP13ScreenMachines
__Z17screenMachineInitP13ScreenMachines:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%a1
	move.w %a1,(%a0)
	move.w %a1,%a1
	addq.l #3,%a1
	move.l %a1,%d0
	add.l %a1,%d0
	add.l %d0,%d0
	move.l (%a0,%d0.l),%a1
	move.l 2(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z19screenMachineUpdateP13ScreenMachineP12SoundHandler
__Z19screenMachineUpdateP13ScreenMachineP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w (%a0),%a1
	addq.l #3,%a1
	move.l %a1,%d0
	add.l %a1,%d0
	add.l %d0,%d0
	move.l (%a0,%d0.l),%a1
	move.l 6(%a1),%a0
	unlk %fp
	jmp (%a0)
	.even
	.globl	__Z17screenMachineGotoP13ScreenMachines
__Z17screenMachineGotoP13ScreenMachines:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.l 12(%fp),%d1
	cmp.w (%a0),%d1
	jeq .L4
	move.w %d1,(%a0)
	move.w %d1,%a1
	addq.l #3,%a1
	move.l %a1,%d0
	add.l %a1,%d0
	add.l %d0,%d0
	move.l (%a0,%d0.l),%a1
	move.l 2(%a1),%a0
	unlk %fp
	jmp (%a0)
.L4:
	unlk %fp
	rts
	.even
	.globl	__Z20ScreenPrealpha_EnterP13ScreenMachine
__Z20ScreenPrealpha_EnterP13ScreenMachine:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w raptor_ticks,2(%a0)
	clr.w 4(%a0)
	clr.w 6(%a0)
	jsr RAPTOR_particle_clear
	pea __ZL18imageBuffer320x240
	move.l #8434864,-(%sp)
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL18imageBuffer320x240,428(%a0)
	moveq #1,%d0
	move.l %d0,388(%a0)
	moveq #-1,%d0
	move.l %d0,196(%a0)
	addq.l #8,%sp
	unlk %fp
	rts
.LC0:
	.ascii "MORTAL KOMBAT\0"
.LC1:
	.ascii "ALPHA V0.5.0\0"
.LC2:
	.ascii "BUGS         FEEDBACK\0"
.LC3:
	.ascii "PATREON SUPPORTERS, THIS PRE-ALPHA\0"
.LC4:
	.ascii "BUILD INCLUDES THE 7 ORIGINAL FIGHTERS\0"
.LC5:
	.ascii "AND A BASIC MOVESET - NO SPECIAL MOVES\0"
.LC6:
	.ascii "OR FATALITIES. YES, THERE ARE BUGS AND\0"
.LC7:
	.ascii "SOME THINGS ARE A LITTLE ROUGH AROUND\0"
.LC8:
	.ascii "THE EDGES. PLEASE USE THE LINKS ABOVE\0"
.LC9:
	.ascii "TO REPORT BUGS AND PROVIDE FEEDBACK.\0"
.LC10:
	.ascii "THANKS FOR PLAYING!!\0"
	.even
	.globl	__Z21ScreenPrealpha_UpdateP13ScreenMachineP12SoundHandler
__Z21ScreenPrealpha_UpdateP13ScreenMachineP12SoundHandler:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%d3
	pea 1.w
	lea jsfGetPadPressed,%a2
	jsr (%a2)
	move.l %d0,__ZL4pad1
	moveq #2,%d2
	move.l %d2,(%sp)
	jsr (%a2)
	move.l %d0,__ZL4pad2
	addq.l #4,%sp
	tst.w 4(%a4)
	jne .L10
	move.w #1,4(%a4)
	moveq #80,%d2
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
.L11:
	move.l #8444432,-(%sp)
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L11
	move.l %d3,-(%sp)
	jsr __Z21sfxAnnouncerExcellentP12SoundHandler
	moveq #15,%d0
	move.l %d0,(%sp)
	jsr rapUse8x16fontPalette
	moveq #1,%d0
	move.l %d0,_jsfFontSize
	move.l %d0,_jsfFontIndx
	moveq #8,%d1
	move.l %d1,(%sp)
	pea 108.w
	lea rapLocate,%a3
	jsr (%a3)
	move.l #.LC0,_js_r_textbuffer
	addq.l #8,%sp
	lea _rapPrint,%a2
	jsr (%a2)
	clr.l _jsfFontIndx
	pea 24.w
	pea 94.w
	jsr (%a3)
	move.l #.LC1,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	moveq #1,%d1
	move.l %d1,_jsfFontIndx
	pea 110.w
	pea 88.w
	jsr (%a3)
	move.l #.LC2,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	pea 15.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	clr.l _jsfFontIndx
	move.l #128,(%sp)
	pea 10.w
	jsr (%a3)
	move.l #.LC3,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	pea 138.w
	pea 10.w
	jsr (%a3)
	move.l #.LC4,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	pea 148.w
	pea 10.w
	jsr (%a3)
	move.l #.LC5,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	pea 158.w
	pea 10.w
	jsr (%a3)
	move.l #.LC6,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	pea 168.w
	pea 10.w
	jsr (%a3)
	move.l #.LC7,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	pea 178.w
	pea 10.w
	jsr (%a3)
	move.l #.LC8,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	pea 188.w
	pea 10.w
	jsr (%a3)
	move.l #.LC9,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
	pea 198.w
	pea 10.w
	jsr (%a3)
	move.l #.LC10,_js_r_textbuffer
	addq.l #8,%sp
	jsr (%a2)
.L10:
	cmp.l #65536,4(%a4)
	jeq .L25
.L9:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L25:
	move.w raptor_ticks,%a0
	move.w 2(%a4),%a1
	lea (240,%a1),%a2
	cmp.l %a0,%a2
	jge .L13
	move.l __ZL4pad1,%d0
	move.l JAGPAD_C,%d1
	move.l %d1,%d2
	and.l %d0,%d2
	jne .L20
	move.l JAGPAD_B,%d2
	move.l %d2,%d3
	and.l %d0,%d3
	jne .L20
	move.l JAGPAD_A,%a3
	move.l %a3,%d3
	and.l %d0,%d3
	jne .L20
	move.l JAGPAD_OPTION,%a2
	move.l %a2,%d3
	and.l %d3,%d0
	jne .L20
	move.l __ZL4pad2,%d3
	or.l %d2,%d1
	and.l %d3,%d1
	jne .L20
	move.l %a3,%d0
	move.l %a2,%d1
	or.l %d1,%d0
	and.l %d3,%d0
	jeq .L13
.L20:
	moveq #90,%d2
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
.L21:
	pea __ZL8BLACKPAL
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L21
	move.w #1,6(%a4)
	cmp.w #1,(%a4)
	jeq .L9
	move.w #1,(%a4)
	move.l 16(%a4),%a0
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
.L13:
	lea (1200,%a1),%a1
	cmp.l %a0,%a1
	jge .L9
	moveq #90,%d2
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
	jra .L21
	.even
	.globl	__Z18ScreenTrufun_EnterP13ScreenMachine
__Z18ScreenTrufun_EnterP13ScreenMachine:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w raptor_ticks,2(%a0)
	clr.w 4(%a0)
	clr.w 6(%a0)
	jsr RAPTOR_particle_clear
	pea __ZL18imageBuffer320x240
	move.l #8444464,-(%sp)
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL18imageBuffer320x240,236(%a0)
	moveq #1,%d0
	move.l %d0,196(%a0)
	moveq #-1,%d0
	move.l %d0,388(%a0)
	addq.l #8,%sp
	unlk %fp
	rts
	.even
	.globl	__Z19ScreenTrufun_UpdateP13ScreenMachineP12SoundHandler
__Z19ScreenTrufun_UpdateP13ScreenMachineP12SoundHandler:
	link.w %fp,#0
	movem.l #8248,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%d0
	tst.w 4(%a4)
	jeq .L37
.L29:
	cmp.l #65536,4(%a4)
	jeq .L38
.L28:
	movem.l -16(%fp),#7172
	unlk %fp
	rts
.L38:
	move.w raptor_ticks,%a1
	move.w 2(%a4),%a0
	lea (300,%a0),%a0
	cmp.l %a1,%a0
	jge .L28
	moveq #90,%d2
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
.L32:
	pea __ZL8BLACKPAL
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L32
	move.w #1,6(%a4)
	cmp.w #2,(%a4)
	jeq .L28
	move.w #2,(%a4)
	move.l 20(%a4),%a0
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -16(%fp),#7172
	unlk %fp
	jmp (%a0)
.L37:
	move.w #1,4(%a4)
	move.l %d0,-(%sp)
	jsr __Z9sfxTruFunP12SoundHandler
	addq.l #4,%sp
	moveq #80,%d2
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
.L30:
	move.l #8448208,-(%sp)
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jeq .L29
	move.l #8448208,-(%sp)
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L30
	jra .L29
	.even
	.globl	__Z23ScreenTitleScreen_EnterP13ScreenMachine
__Z23ScreenTitleScreen_EnterP13ScreenMachine:
	link.w %fp,#0
	move.l 8(%fp),%a0
	move.w raptor_ticks,2(%a0)
	clr.w 4(%a0)
	clr.w 6(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z24ScreenTitleScreen_UpdateP13ScreenMachineP12SoundHandler
__Z24ScreenTitleScreen_UpdateP13ScreenMachineP12SoundHandler:
	link.w %fp,#0
	movem.l #12344,-(%sp)
	move.l 8(%fp),%a4
	move.l 12(%fp),%d3
	tst.w 4(%a4)
	jne .L42
	move.w #1,4(%a4)
	moveq #80,%d2
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
.L43:
	move.l #8434352,-(%sp)
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L43
	move.l %d3,-(%sp)
	jsr __Z8sfxIntroP12SoundHandler
	addq.l #4,%sp
.L42:
	cmp.l #65536,4(%a4)
	jeq .L49
.L41:
	movem.l -20(%fp),#7180
	unlk %fp
	rts
.L49:
	move.w raptor_ticks,%a1
	move.w 2(%a4),%a0
	lea (240,%a0),%a0
	cmp.l %a1,%a0
	jge .L41
	moveq #90,%d2
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
.L45:
	pea __ZL8BLACKPAL
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L45
	move.w #1,6(%a4)
	cmp.w #3,(%a4)
	jeq .L41
	move.w #3,(%a4)
	move.l 24(%a4),%a0
	move.l %a4,8(%fp)
	move.l 2(%a0),%a0
	movem.l -20(%fp),#7180
	unlk %fp
	jmp (%a0)
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
.lcomm __ZL18imageBuffer320x240,71680
.lcomm __ZL4pad1,4
.lcomm __ZL4pad2,4
.lcomm __ZL8BLACKPAL,512
