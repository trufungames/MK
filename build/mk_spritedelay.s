#NO_APP
	.text
	.even
	.globl	__Z15spriteDelayInitv
__Z15spriteDelayInitv:
	link.w %fp,#0
	clr.b _sprites+8
	clr.b _sprites+22
	clr.b _sprites+36
	clr.b _sprites+50
	clr.b _sprites+64
	clr.b _sprites+78
	clr.b _sprites+92
	clr.b _sprites+106
	clr.b _sprites+120
	clr.b _sprites+134
	unlk %fp
	rts
	.even
	.globl	__Z17spriteDelayUpdatev
__Z17spriteDelayUpdatev:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.w raptor_ticks,%a0
	move.l sprite,%a1
	tst.b _sprites+8
	jeq .L3
	cmp.l _sprites+4.l,%a0
	jcc .L14
.L3:
	tst.b _sprites+22
	jeq .L4
	cmp.l _sprites+18.l,%a0
	jcc .L15
.L4:
	tst.b _sprites+36
	jeq .L5
	cmp.l _sprites+32.l,%a0
	jcc .L16
.L5:
	tst.b _sprites+50
	jeq .L6
	cmp.l _sprites+46.l,%a0
	jcc .L17
.L6:
	tst.b _sprites+64
	jeq .L7
	cmp.l _sprites+60.l,%a0
	jcc .L18
.L7:
	tst.b _sprites+78
	jeq .L8
	cmp.l _sprites+74.l,%a0
	jcc .L19
.L8:
	tst.b _sprites+92
	jeq .L9
	cmp.l _sprites+88.l,%a0
	jcc .L20
.L9:
	tst.b _sprites+106
	jeq .L10
	cmp.l _sprites+102.l,%a0
	jcc .L21
.L10:
	tst.b _sprites+120
	jeq .L11
	cmp.l _sprites+116.l,%a0
	jcc .L22
.L11:
	tst.b _sprites+134
	jeq .L2
	cmp.l _sprites+130.l,%a0
	jcs .L2
	clr.b _sprites+134
	move.l _sprites+126,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+136,%a0
	clr.b (%a0)
.L2:
	move.l (%sp)+,%a2
	unlk %fp
	rts
.L22:
	clr.b _sprites+120
	move.l _sprites+112,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+122,%a2
	clr.b (%a2)
	jra .L11
.L21:
	clr.b _sprites+106
	move.l _sprites+98,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+108,%a2
	clr.b (%a2)
	jra .L10
.L20:
	clr.b _sprites+92
	move.l _sprites+84,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+94,%a2
	clr.b (%a2)
	jra .L9
.L19:
	clr.b _sprites+78
	move.l _sprites+70,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+80,%a2
	clr.b (%a2)
	jra .L8
.L18:
	clr.b _sprites+64
	move.l _sprites+56,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+66,%a2
	clr.b (%a2)
	jra .L7
.L17:
	clr.b _sprites+50
	move.l _sprites+42,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+52,%a2
	clr.b (%a2)
	jra .L6
.L16:
	clr.b _sprites+36
	move.l _sprites+28,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+38,%a2
	clr.b (%a2)
	jra .L5
.L15:
	clr.b _sprites+22
	move.l _sprites+14,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+24,%a2
	clr.b (%a2)
	jra .L4
.L14:
	clr.b _sprites+8
	move.l _sprites,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a1,%d0.l)
	move.l _sprites+10,%a2
	clr.b (%a2)
	jra .L3
	.even
	.globl	__Z22spriteDelaySetInactiveiiPb
__Z22spriteDelaySetInactiveiiPb:
	link.w %fp,#0
	tst.b _sprites+8
	jeq .L27
	tst.b _sprites+22
	jeq .L28
	tst.b _sprites+36
	jeq .L29
	tst.b _sprites+50
	jeq .L30
	tst.b _sprites+64
	jeq .L31
	tst.b _sprites+78
	jeq .L32
	tst.b _sprites+92
	jeq .L33
	tst.b _sprites+106
	jeq .L34
	tst.b _sprites+120
	jeq .L35
	tst.b _sprites+134
	jeq .L37
	unlk %fp
	rts
.L37:
	moveq #9,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
.L38:
	unlk %fp
	rts
.L27:
	moveq #0,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
.L28:
	moveq #1,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
.L29:
	moveq #2,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
.L30:
	moveq #3,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
.L31:
	moveq #4,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
.L32:
	moveq #5,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
.L33:
	moveq #6,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
.L34:
	moveq #7,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
.L35:
	moveq #8,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	move.l %d1,%d0
	lsl.l #3,%d0
	sub.l %d1,%d0
	lea _sprites,%a0
	move.l 8(%fp),(%a0,%d0.l)
	move.l %d0,%a0
	add.l #_sprites,%a0
	move.l 12(%fp),4(%a0)
	lea _sprites+8,%a1
	move.b #1,(%a1,%d0.l)
	move.l 16(%fp),10(%a0)
	jra .L38
	.even
	.globl	__Z20spriteDelayRemoveAllv
__Z20spriteDelayRemoveAllv:
	link.w %fp,#0
	move.l sprite,%a0
	tst.b _sprites+8
	jeq .L41
	clr.b _sprites+8
	move.l _sprites,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+10,%a1
	clr.b (%a1)
.L41:
	tst.b _sprites+22
	jeq .L42
	clr.b _sprites+22
	move.l _sprites+14,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+24,%a1
	clr.b (%a1)
.L42:
	tst.b _sprites+36
	jeq .L43
	clr.b _sprites+36
	move.l _sprites+28,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+38,%a1
	clr.b (%a1)
.L43:
	tst.b _sprites+50
	jeq .L44
	clr.b _sprites+50
	move.l _sprites+42,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+52,%a1
	clr.b (%a1)
.L44:
	tst.b _sprites+64
	jeq .L45
	clr.b _sprites+64
	move.l _sprites+56,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+66,%a1
	clr.b (%a1)
.L45:
	tst.b _sprites+78
	jeq .L46
	clr.b _sprites+78
	move.l _sprites+70,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+80,%a1
	clr.b (%a1)
.L46:
	tst.b _sprites+92
	jeq .L47
	clr.b _sprites+92
	move.l _sprites+84,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+94,%a1
	clr.b (%a1)
.L47:
	tst.b _sprites+106
	jeq .L48
	clr.b _sprites+106
	move.l _sprites+98,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+108,%a1
	clr.b (%a1)
.L48:
	tst.b _sprites+120
	jeq .L49
	clr.b _sprites+120
	move.l _sprites+112,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+122,%a1
	clr.b (%a1)
.L49:
	tst.b _sprites+134
	jeq .L40
	clr.b _sprites+134
	move.l _sprites+126,%d0
	move.l %d0,%d1
	add.l %d0,%d1
	add.l %d1,%d0
	lsl.l #6,%d0
	moveq #-1,%d1
	move.l %d1,4(%a0,%d0.l)
	move.l _sprites+136,%a0
	clr.b (%a0)
.L40:
	unlk %fp
	rts
	.globl	_sprites
	.bss
	.even
_sprites:
	.skip 140
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
