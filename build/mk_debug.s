#NO_APP
	.text
	.even
	.globl	__Z11showMessagePc
__Z11showMessagePc:
	link.w %fp,#0
	move.l 8(%fp),_js_r_textbuffer
	unlk %fp
	jra _jsfDebugMessage
.LC0:
	.ascii "%s: %d\0"
	.even
	.globl	__Z14showMessageIntPci
__Z14showMessageIntPci:
	link.w %fp,#0
	move.l 12(%fp),-(%sp)
	move.l 8(%fp),-(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	lea (12,%sp),%sp
	unlk %fp
	jra _jsfDebugMessage
	.even
	.globl	__Z15showMessageBoolPcb
__Z15showMessageBoolPcb:
	link.w %fp,#0
	moveq #0,%d0
	move.b 15(%fp),%d0
	move.l %d0,-(%sp)
	move.l 8(%fp),-(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	lea (12,%sp),%sp
	unlk %fp
	jra _jsfDebugMessage
	.even
	.globl	__Z15printMessageIntPciii
__Z15printMessageIntPciii:
	link.w %fp,#0
	movem.l #15360,-(%sp)
	move.l 8(%fp),%d2
	move.l 12(%fp),%d3
	move.l 16(%fp),%d4
	move.l 20(%fp),%d5
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	move.l %d5,(%sp)
	move.l %d4,-(%sp)
	jsr rapLocate
	addq.l #4,%sp
	move.l %d3,(%sp)
	move.l %d2,-(%sp)
	pea .LC0
	jsr ee_printf
	move.l %d0,_js_r_textbuffer
	lea (12,%sp),%sp
	movem.l -16(%fp),#60
	unlk %fp
	jra _rapPrint
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
