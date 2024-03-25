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
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
