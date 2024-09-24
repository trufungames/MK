#NO_APP
	.text
.LC0:
	.ascii "abcdbcdbcdbcdbe\0"
	.even
	.globl	__Z12hudGetStringbi
__Z12hudGetStringbi:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.l 12(%fp),%d0
	move.l %d0,%d1
	subq.l #2,%d1
	move.l #.LC0,%d0
	moveq #118,%d2
	tst.b 11(%fp)
	jeq .L2
	cmp.l %d1,%d2
	jcc .L7
.L3:
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L2:
	cmp.l %d1,%d2
	jcs .L3
	move.l %d1,%a0
	add.l %d1,%a0
	move.l %a0,%a1
	add.l #_CSWTCH.4,%a1
	move.l (%a1,%a0.l),%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
.L7:
	move.l %d1,%a0
	add.l %d1,%a0
	move.l %a0,%a1
	add.l #_CSWTCH.2,%a1
	move.l (%a1,%a0.l),%d0
	move.l (%sp)+,%d2
	unlk %fp
	rts
	.even
	.globl	__Z18hudUpdateHealthbarbi
__Z18hudUpdateHealthbarbi:
	link.w %fp,#0
	move.l %d3,-(%sp)
	move.l %d2,-(%sp)
	move.l 12(%fp),%d2
	move.b 11(%fp),%d3
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b %d3
	jeq .L10
	pea 20.w
	pea 26.w
	jsr rapLocate
	subq.l #2,%d2
	addq.l #8,%sp
	moveq #118,%d0
	cmp.l %d2,%d0
	jcc .L11
.L14:
	move.l #.LC0,%d0
	move.l %d0,_js_r_textbuffer
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	jra _rapPrint
.L10:
	pea 20.w
	pea 180.w
	jsr rapLocate
	subq.l #2,%d2
	addq.l #8,%sp
	moveq #118,%d0
	cmp.l %d2,%d0
	jcs .L14
	move.l %d2,%a0
	add.l %d2,%a0
	move.l %a0,%a1
	add.l #_CSWTCH.4,%a1
	move.l (%a1,%a0.l),%d0
	move.l %d0,_js_r_textbuffer
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	jra _rapPrint
.L11:
	move.l %d2,%a0
	add.l %d2,%a0
	move.l %a0,%a1
	add.l #_CSWTCH.2,%a1
	move.l (%a1,%a0.l),%d0
	move.l %d0,_js_r_textbuffer
	move.l -8(%fp),%d2
	move.l -4(%fp),%d3
	unlk %fp
	jra _rapPrint
.LC1:
	.ascii "fgggggggggggggh\0"
	.even
	.globl	__Z7hudInitv
__Z7hudInitv:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	pea 10.w
	lea rapUse8x8fontPalette,%a3
	jsr (%a3)
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	moveq #20,%d0
	move.l %d0,(%sp)
	pea 26.w
	lea rapLocate,%a2
	jsr (%a2)
	move.l #.LC1,_js_r_textbuffer
	addq.l #8,%sp
	jsr _rapPrint
	pea 10.w
	jsr (%a3)
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	moveq #20,%d1
	move.l %d1,(%sp)
	pea 180.w
	jsr (%a2)
	move.l #.LC1,_js_r_textbuffer
	addq.l #8,%sp
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	jra _rapPrint
	.even
	.globl	__Z16hudUpdateFighterP7Fighter
__Z16hudUpdateFighterP7Fighter:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l 8(%fp),%a0
	move.w 256(%a0),%a2
	move.b 270(%a0),%d2
	pea 10.w
	jsr rapUse8x8fontPalette
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b %d2
	jeq .L19
	pea 20.w
	pea 26.w
	jsr rapLocate
	subq.l #2,%a2
	addq.l #8,%sp
	moveq #118,%d0
	cmp.l %a2,%d0
	jcc .L20
.L23:
	move.l #.LC0,%d0
	move.l %d0,_js_r_textbuffer
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra _rapPrint
.L19:
	pea 20.w
	pea 180.w
	jsr rapLocate
	subq.l #2,%a2
	addq.l #8,%sp
	moveq #118,%d0
	cmp.l %a2,%d0
	jcs .L23
	add.l %a2,%a2
	move.l %a2,%a0
	add.l #_CSWTCH.4,%a0
	move.l (%a0,%a2.l),%d0
	move.l %d0,_js_r_textbuffer
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra _rapPrint
.L20:
	add.l %a2,%a2
	move.l %a2,%a0
	add.l #_CSWTCH.2,%a0
	move.l (%a0,%a2.l),%d0
	move.l %d0,_js_r_textbuffer
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	jra _rapPrint
	.even
	.globl	__Z9hudUpdateP7FighterS0_
__Z9hudUpdateP7FighterS0_:
	link.w %fp,#0
	movem.l #8252,-(%sp)
	move.l 8(%fp),%a0
	move.l 12(%fp),%a4
	move.w 256(%a0),%a5
	move.b 270(%a0),%d2
	pea 10.w
	lea rapUse8x8fontPalette,%a3
	jsr (%a3)
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b %d2
	jeq .L27
	pea 20.w
	pea 26.w
	lea rapLocate,%a2
	jsr (%a2)
	subq.l #2,%a5
	addq.l #8,%sp
	moveq #118,%d0
	cmp.l %a5,%d0
	jcc .L28
.L35:
	move.l #.LC0,%d0
.L29:
	move.l %d0,_js_r_textbuffer
	jsr _rapPrint
	move.w 256(%a4),%a5
	move.b 270(%a4),%d2
	pea 10.w
	jsr (%a3)
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b %d2
	jeq .L31
.L38:
	pea 20.w
	pea 26.w
	jsr (%a2)
	subq.l #2,%a5
	addq.l #8,%sp
	moveq #118,%d0
	cmp.l %a5,%d0
	jcs .L36
	add.l %a5,%a5
	move.l %a5,%a0
	add.l #_CSWTCH.2,%a0
	move.l (%a0,%a5.l),%d0
	move.l %d0,_js_r_textbuffer
	movem.l -20(%fp),#15364
	unlk %fp
	jra _rapPrint
.L27:
	pea 20.w
	pea 180.w
	lea rapLocate,%a2
	jsr (%a2)
	subq.l #2,%a5
	addq.l #8,%sp
	moveq #118,%d0
	cmp.l %a5,%d0
	jcs .L35
	add.l %a5,%a5
	move.l %a5,%a0
	add.l #_CSWTCH.4,%a0
	move.l (%a0,%a5.l),%d0
	move.l %d0,_js_r_textbuffer
	jsr _rapPrint
	move.w 256(%a4),%a5
	move.b 270(%a4),%d2
	pea 10.w
	jsr (%a3)
	clr.l _jsfFontSize
	moveq #1,%d0
	move.l %d0,_jsfFontIndx
	addq.l #4,%sp
	tst.b %d2
	jne .L38
.L31:
	pea 20.w
	pea 180.w
	jsr (%a2)
	subq.l #2,%a5
	addq.l #8,%sp
	moveq #118,%d0
	cmp.l %a5,%d0
	jcs .L36
	add.l %a5,%a5
	move.l %a5,%a0
	add.l #_CSWTCH.4,%a0
	move.l (%a0,%a5.l),%d0
	move.l %d0,_js_r_textbuffer
	movem.l -20(%fp),#15364
	unlk %fp
	jra _rapPrint
.L28:
	add.l %a5,%a5
	move.l %a5,%a0
	add.l #_CSWTCH.2,%a0
	move.l (%a0,%a5.l),%d0
	jra .L29
.L36:
	move.l #.LC0,%d0
	move.l %d0,_js_r_textbuffer
	movem.l -20(%fp),#15364
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
	.text
.LC2:
	.ascii "obcdbcdbcdbcdbe\0"
.LC3:
	.ascii "pbcdbcdbcdbcdbe\0"
.LC4:
	.ascii "qbcdbcdbcdbcdbe\0"
.LC5:
	.ascii "fbcdbcdbcdbcdbe\0"
.LC6:
	.ascii "ficdbcdbcdbcdbe\0"
.LC7:
	.ascii "fjcdbcdbcdbcdbe\0"
.LC8:
	.ascii "fkcdbcdbcdbcdbe\0"
.LC9:
	.ascii "fgcdbcdbcdbcdbe\0"
.LC10:
	.ascii "fgidbcdbcdbcdbe\0"
.LC11:
	.ascii "fgjdbcdbcdbcdbe\0"
.LC12:
	.ascii "fgkdbcdbcdbcdbe\0"
.LC13:
	.ascii "fggdbcdbcdbcdbe\0"
.LC14:
	.ascii "fggibcdbcdbcdbe\0"
.LC15:
	.ascii "fggjbcdbcdbcdbe\0"
.LC16:
	.ascii "fggkbcdbcdbcdbe\0"
.LC17:
	.ascii "fgggbcdbcdbcdbe\0"
.LC18:
	.ascii "fgggicdbcdbcdbe\0"
.LC19:
	.ascii "fgggjcdbcdbcdbe\0"
.LC20:
	.ascii "fgggkcdbcdbcdbe\0"
.LC21:
	.ascii "fggggcdbcdbcdbe\0"
.LC22:
	.ascii "fggggidbcdbcdbe\0"
.LC23:
	.ascii "fggggjdbcdbcdbe\0"
.LC24:
	.ascii "fggggkdbcdbcdbe\0"
.LC25:
	.ascii "fgggggdbcdbcdbe\0"
.LC26:
	.ascii "fgggggibcdbcdbe\0"
.LC27:
	.ascii "fgggggjbcdbcdbe\0"
.LC28:
	.ascii "fgggggkbcdbcdbe\0"
.LC29:
	.ascii "fggggggbcdbcdbe\0"
.LC30:
	.ascii "fggggggicdbcdbe\0"
.LC31:
	.ascii "fggggggjcdbcdbe\0"
.LC32:
	.ascii "fggggggkcdbcdbe\0"
.LC33:
	.ascii "fgggggggcdbcdbe\0"
.LC34:
	.ascii "fgggggggidbcdbe\0"
.LC35:
	.ascii "fgggggggjdbcdbe\0"
.LC36:
	.ascii "fgggggggkdbcdbe\0"
.LC37:
	.ascii "fggggggggdbcdbe\0"
.LC38:
	.ascii "fggggggggibcdbe\0"
.LC39:
	.ascii "fggggggggjbcdbe\0"
.LC40:
	.ascii "fggggggggkbcdbe\0"
.LC41:
	.ascii "fgggggggggbcdbe\0"
.LC42:
	.ascii "fgggggggggicdbe\0"
.LC43:
	.ascii "fgggggggggjcdbe\0"
.LC44:
	.ascii "fgggggggggkcdbe\0"
.LC45:
	.ascii "fggggggggggcdbe\0"
.LC46:
	.ascii "fggggggggggidbe\0"
.LC47:
	.ascii "fggggggggggjdbe\0"
.LC48:
	.ascii "fggggggggggkdbe\0"
.LC49:
	.ascii "fgggggggggggdbe\0"
.LC50:
	.ascii "fgggggggggggibe\0"
.LC51:
	.ascii "fgggggggggggjbe\0"
.LC52:
	.ascii "fgggggggggggkbe\0"
.LC53:
	.ascii "fggggggggggggbe\0"
.LC54:
	.ascii "fggggggggggggie\0"
.LC55:
	.ascii "fggggggggggggje\0"
.LC56:
	.ascii "fggggggggggggke\0"
.LC57:
	.ascii "fggggggggggggge\0"
.LC58:
	.ascii "fgggggggggggggu\0"
.LC59:
	.ascii "fgggggggggggggv\0"
.LC60:
	.ascii "fgggggggggggggw\0"
	.even
_CSWTCH.2:
	.long	.LC2
	.long	.LC0
	.long	.LC3
	.long	.LC0
	.long	.LC4
	.long	.LC0
	.long	.LC5
	.long	.LC0
	.long	.LC6
	.long	.LC0
	.long	.LC7
	.long	.LC0
	.long	.LC8
	.long	.LC0
	.long	.LC9
	.long	.LC0
	.long	.LC10
	.long	.LC0
	.long	.LC11
	.long	.LC0
	.long	.LC12
	.long	.LC0
	.long	.LC13
	.long	.LC0
	.long	.LC14
	.long	.LC0
	.long	.LC15
	.long	.LC0
	.long	.LC16
	.long	.LC0
	.long	.LC17
	.long	.LC0
	.long	.LC18
	.long	.LC0
	.long	.LC19
	.long	.LC0
	.long	.LC20
	.long	.LC0
	.long	.LC21
	.long	.LC0
	.long	.LC22
	.long	.LC0
	.long	.LC23
	.long	.LC0
	.long	.LC24
	.long	.LC0
	.long	.LC25
	.long	.LC0
	.long	.LC26
	.long	.LC0
	.long	.LC27
	.long	.LC0
	.long	.LC28
	.long	.LC0
	.long	.LC29
	.long	.LC0
	.long	.LC30
	.long	.LC0
	.long	.LC31
	.long	.LC0
	.long	.LC32
	.long	.LC0
	.long	.LC33
	.long	.LC0
	.long	.LC34
	.long	.LC0
	.long	.LC35
	.long	.LC0
	.long	.LC36
	.long	.LC0
	.long	.LC37
	.long	.LC0
	.long	.LC38
	.long	.LC0
	.long	.LC39
	.long	.LC0
	.long	.LC40
	.long	.LC0
	.long	.LC41
	.long	.LC0
	.long	.LC42
	.long	.LC0
	.long	.LC43
	.long	.LC0
	.long	.LC44
	.long	.LC0
	.long	.LC45
	.long	.LC0
	.long	.LC46
	.long	.LC0
	.long	.LC47
	.long	.LC0
	.long	.LC48
	.long	.LC0
	.long	.LC49
	.long	.LC0
	.long	.LC50
	.long	.LC0
	.long	.LC51
	.long	.LC0
	.long	.LC52
	.long	.LC0
	.long	.LC53
	.long	.LC0
	.long	.LC54
	.long	.LC0
	.long	.LC55
	.long	.LC0
	.long	.LC56
	.long	.LC0
	.long	.LC57
	.long	.LC0
	.long	.LC58
	.long	.LC0
	.long	.LC59
	.long	.LC0
	.long	.LC60
	.long	.LC0
	.long	.LC1
.LC61:
	.ascii "abcdbcdbcdbcdbr\0"
.LC62:
	.ascii "abcdbcdbcdbcdbs\0"
.LC63:
	.ascii "abcdbcdbcdbcdbt\0"
.LC64:
	.ascii "abcdbcdbcdbcdbh\0"
.LC65:
	.ascii "abcdbcdbcdbcdlh\0"
.LC66:
	.ascii "abcdbcdbcdbcdmh\0"
.LC67:
	.ascii "abcdbcdbcdbcdnh\0"
.LC68:
	.ascii "abcdbcdbcdbcdgh\0"
.LC69:
	.ascii "abcdbcdbcdbclgh\0"
.LC70:
	.ascii "abcdbcdbcdbcmgh\0"
.LC71:
	.ascii "abcdbcdbcdbcngh\0"
.LC72:
	.ascii "abcdbcdbcdbcggh\0"
.LC73:
	.ascii "abcdbcdbcdblggh\0"
.LC74:
	.ascii "abcdbcdbcdbmggh\0"
.LC75:
	.ascii "abcdbcdbcdbnggh\0"
.LC76:
	.ascii "abcdbcdbcdbgggh\0"
.LC77:
	.ascii "abcdbcdbcdlgggh\0"
.LC78:
	.ascii "abcdbcdbcdmgggh\0"
.LC79:
	.ascii "abcdbcdbcdngggh\0"
.LC80:
	.ascii "abcdbcdbcdggggh\0"
.LC81:
	.ascii "abcdbcdbclggggh\0"
.LC82:
	.ascii "abcdbcdbcmggggh\0"
.LC83:
	.ascii "abcdbcdbcnggggh\0"
.LC84:
	.ascii "abcdbcdbcgggggh\0"
.LC85:
	.ascii "abcdbcdblgggggh\0"
.LC86:
	.ascii "abcdbcdbmgggggh\0"
.LC87:
	.ascii "abcdbcdbngggggh\0"
.LC88:
	.ascii "abcdbcdbggggggh\0"
.LC89:
	.ascii "abcdbcdlggggggh\0"
.LC90:
	.ascii "abcdbcdmggggggh\0"
.LC91:
	.ascii "abcdbcdnggggggh\0"
.LC92:
	.ascii "abcdbcdgggggggh\0"
.LC93:
	.ascii "abcdbclgggggggh\0"
.LC94:
	.ascii "abcdbcmgggggggh\0"
.LC95:
	.ascii "abcdbcngggggggh\0"
.LC96:
	.ascii "abcdbcggggggggh\0"
.LC97:
	.ascii "abcdblggggggggh\0"
.LC98:
	.ascii "abcdbmggggggggh\0"
.LC99:
	.ascii "abcdbnggggggggh\0"
.LC100:
	.ascii "abcdbgggggggggh\0"
.LC101:
	.ascii "abcdlgggggggggh\0"
.LC102:
	.ascii "abcdmgggggggggh\0"
.LC103:
	.ascii "abcdngggggggggh\0"
.LC104:
	.ascii "abcdggggggggggh\0"
.LC105:
	.ascii "abclggggggggggh\0"
.LC106:
	.ascii "abcmggggggggggh\0"
.LC107:
	.ascii "abcnggggggggggh\0"
.LC108:
	.ascii "abcgggggggggggh\0"
.LC109:
	.ascii "ablgggggggggggh\0"
.LC110:
	.ascii "abmgggggggggggh\0"
.LC111:
	.ascii "abngggggggggggh\0"
.LC112:
	.ascii "abggggggggggggh\0"
.LC113:
	.ascii "alggggggggggggh\0"
.LC114:
	.ascii "amggggggggggggh\0"
.LC115:
	.ascii "anggggggggggggh\0"
.LC116:
	.ascii "agggggggggggggh\0"
.LC117:
	.ascii "xgggggggggggggh\0"
.LC118:
	.ascii "ygggggggggggggh\0"
.LC119:
	.ascii "zgggggggggggggh\0"
	.even
_CSWTCH.4:
	.long	.LC61
	.long	.LC0
	.long	.LC62
	.long	.LC0
	.long	.LC63
	.long	.LC0
	.long	.LC64
	.long	.LC0
	.long	.LC65
	.long	.LC0
	.long	.LC66
	.long	.LC0
	.long	.LC67
	.long	.LC0
	.long	.LC68
	.long	.LC0
	.long	.LC69
	.long	.LC0
	.long	.LC70
	.long	.LC0
	.long	.LC71
	.long	.LC0
	.long	.LC72
	.long	.LC0
	.long	.LC73
	.long	.LC0
	.long	.LC74
	.long	.LC0
	.long	.LC75
	.long	.LC0
	.long	.LC76
	.long	.LC0
	.long	.LC77
	.long	.LC0
	.long	.LC78
	.long	.LC0
	.long	.LC79
	.long	.LC0
	.long	.LC80
	.long	.LC0
	.long	.LC81
	.long	.LC0
	.long	.LC82
	.long	.LC0
	.long	.LC83
	.long	.LC0
	.long	.LC84
	.long	.LC0
	.long	.LC85
	.long	.LC0
	.long	.LC86
	.long	.LC0
	.long	.LC87
	.long	.LC0
	.long	.LC88
	.long	.LC0
	.long	.LC89
	.long	.LC0
	.long	.LC90
	.long	.LC0
	.long	.LC91
	.long	.LC0
	.long	.LC92
	.long	.LC0
	.long	.LC93
	.long	.LC0
	.long	.LC94
	.long	.LC0
	.long	.LC95
	.long	.LC0
	.long	.LC96
	.long	.LC0
	.long	.LC97
	.long	.LC0
	.long	.LC98
	.long	.LC0
	.long	.LC99
	.long	.LC0
	.long	.LC100
	.long	.LC0
	.long	.LC101
	.long	.LC0
	.long	.LC102
	.long	.LC0
	.long	.LC103
	.long	.LC0
	.long	.LC104
	.long	.LC0
	.long	.LC105
	.long	.LC0
	.long	.LC106
	.long	.LC0
	.long	.LC107
	.long	.LC0
	.long	.LC108
	.long	.LC0
	.long	.LC109
	.long	.LC0
	.long	.LC110
	.long	.LC0
	.long	.LC111
	.long	.LC0
	.long	.LC112
	.long	.LC0
	.long	.LC113
	.long	.LC0
	.long	.LC114
	.long	.LC0
	.long	.LC115
	.long	.LC0
	.long	.LC116
	.long	.LC0
	.long	.LC117
	.long	.LC0
	.long	.LC118
	.long	.LC0
	.long	.LC119
	.long	.LC0
	.long	.LC1
