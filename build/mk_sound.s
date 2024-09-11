#NO_APP
	.text
	.even
	.globl	__Z8sfxFightP12SoundHandler
__Z8sfxFightP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L1
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L5
	moveq #4,%d0
	pea 8000.w
	pea 10.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L6
.L8:
	moveq #5,%d0
	pea 8000.w
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L1:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L5:
	moveq #6,%d0
	pea 8000.w
	pea 10.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L8
.L6:
	moveq #7,%d0
	pea 8000.w
	pea 10.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L1
	.even
	.globl	__Z13sfxJohnnyCageP12SoundHandler
__Z13sfxJohnnyCageP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L10
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L14
	moveq #4,%d0
	pea 8000.w
	pea 3.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L15
.L17:
	moveq #5,%d0
	pea 8000.w
	pea 3.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L10:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L14:
	moveq #6,%d0
	pea 8000.w
	pea 3.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L17
.L15:
	moveq #7,%d0
	pea 8000.w
	pea 3.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L10
	.even
	.globl	__Z7sfxKanoP12SoundHandler
__Z7sfxKanoP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L19
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L23
	moveq #4,%d0
	pea 8000.w
	pea 4.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L24
.L26:
	moveq #5,%d0
	pea 8000.w
	pea 4.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L19:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L23:
	moveq #6,%d0
	pea 8000.w
	pea 4.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L26
.L24:
	moveq #7,%d0
	pea 8000.w
	pea 4.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L19
	.even
	.globl	__Z9sfxRaidenP12SoundHandler
__Z9sfxRaidenP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L28
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L32
	moveq #4,%d0
	pea 8000.w
	pea 5.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L33
.L35:
	moveq #5,%d0
	pea 8000.w
	pea 5.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L28:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L32:
	moveq #6,%d0
	pea 8000.w
	pea 5.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L35
.L33:
	moveq #7,%d0
	pea 8000.w
	pea 5.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L28
	.even
	.globl	__Z10sfxLiuKangP12SoundHandler
__Z10sfxLiuKangP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L37
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L41
	moveq #4,%d0
	pea 8000.w
	pea 6.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L42
.L44:
	moveq #5,%d0
	pea 8000.w
	pea 6.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L37:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L41:
	moveq #6,%d0
	pea 8000.w
	pea 6.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L44
.L42:
	moveq #7,%d0
	pea 8000.w
	pea 6.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L37
	.even
	.globl	__Z11sfxScorpionP12SoundHandler
__Z11sfxScorpionP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L46
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L50
	moveq #4,%d0
	pea 8000.w
	pea 7.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L51
.L53:
	moveq #5,%d0
	pea 8000.w
	pea 7.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L46:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L50:
	moveq #6,%d0
	pea 8000.w
	pea 7.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L53
.L51:
	moveq #7,%d0
	pea 8000.w
	pea 7.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L46
	.even
	.globl	__Z10sfxSubzeroP12SoundHandler
__Z10sfxSubzeroP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L55
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L59
	moveq #4,%d0
	pea 8000.w
	pea 8.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L60
.L62:
	moveq #5,%d0
	pea 8000.w
	pea 8.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L55:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L59:
	moveq #6,%d0
	pea 8000.w
	pea 8.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L62
.L60:
	moveq #7,%d0
	pea 8000.w
	pea 8.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L55
	.even
	.globl	__Z8sfxSonyaP12SoundHandler
__Z8sfxSonyaP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L64
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L68
	moveq #4,%d0
	pea 8000.w
	pea 9.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L69
.L71:
	moveq #5,%d0
	pea 8000.w
	pea 9.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L64:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L68:
	moveq #6,%d0
	pea 8000.w
	pea 9.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L71
.L69:
	moveq #7,%d0
	pea 8000.w
	pea 9.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L64
	.even
	.globl	__Z9sfxKasumiP12SoundHandler
__Z9sfxKasumiP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L73
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L77
	moveq #4,%d0
	pea 8000.w
	pea 80.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L78
.L80:
	moveq #5,%d0
	pea 8000.w
	pea 80.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L73:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L77:
	moveq #6,%d0
	pea 8000.w
	pea 80.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L80
.L78:
	moveq #7,%d0
	pea 8000.w
	pea 80.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L73
	.even
	.globl	__Z11sfxP1CursorP12SoundHandler
__Z11sfxP1CursorP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L82
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L86
	moveq #4,%d0
	pea 8000.w
	clr.l -(%sp)
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L87
.L89:
	moveq #5,%d0
	pea 8000.w
	clr.l -(%sp)
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L82:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L86:
	moveq #6,%d0
	pea 8000.w
	clr.l -(%sp)
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L89
.L87:
	moveq #7,%d0
	pea 8000.w
	clr.l -(%sp)
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L82
	.even
	.globl	__Z11sfxP2CursorP12SoundHandler
__Z11sfxP2CursorP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L91
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L95
	moveq #4,%d0
	pea 8000.w
	pea 1.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L96
.L98:
	moveq #5,%d0
	pea 8000.w
	pea 1.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L91:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L95:
	moveq #6,%d0
	pea 8000.w
	pea 1.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L98
.L96:
	moveq #7,%d0
	pea 8000.w
	pea 1.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L91
	.even
	.globl	__Z7sfxGongP12SoundHandler
__Z7sfxGongP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L100
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L104
	moveq #4,%d0
	pea 8000.w
	pea 11.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L105
.L107:
	moveq #5,%d0
	pea 8000.w
	pea 11.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L100:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L104:
	moveq #6,%d0
	pea 8000.w
	pea 11.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L107
.L105:
	moveq #7,%d0
	pea 8000.w
	pea 11.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L100
	.even
	.globl	__Z8sfxIntroP12SoundHandler
__Z8sfxIntroP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L109
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L113
	moveq #4,%d0
	pea 8000.w
	pea 12.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L114
.L116:
	moveq #5,%d0
	pea 8000.w
	pea 12.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L109:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L113:
	moveq #6,%d0
	pea 8000.w
	pea 12.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L116
.L114:
	moveq #7,%d0
	pea 8000.w
	pea 12.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L109
	.even
	.globl	__Z11sfxHiyaMaleP12SoundHandler
__Z11sfxHiyaMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L130
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L130:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L120
	tst.b 6(%a2)
	jeq .L125
	moveq #4,%d0
.L121:
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L131
	moveq #7,%d0
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L133:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L120:
	tst.b 6(%a2)
	jeq .L127
	moveq #4,%d0
.L123:
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L128
	moveq #5,%d0
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L132:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L128:
	moveq #7,%d0
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L132
.L127:
	moveq #6,%d0
	jra .L123
.L125:
	moveq #6,%d0
	jra .L121
.L131:
	moveq #5,%d0
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L133
	.even
	.globl	__Z13sfxHiyaFemaleP12SoundHandler
__Z13sfxHiyaFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L147
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L147:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L137
	tst.b 6(%a2)
	jeq .L142
	moveq #4,%d0
.L138:
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L148
	moveq #7,%d0
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L150:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L137:
	tst.b 6(%a2)
	jeq .L144
	moveq #4,%d0
.L140:
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L145
	moveq #5,%d0
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L149:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L145:
	moveq #7,%d0
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L149
.L144:
	moveq #6,%d0
	jra .L140
.L142:
	moveq #6,%d0
	jra .L138
.L148:
	moveq #5,%d0
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L150
	.even
	.globl	__Z11sfxHiyaKangP12SoundHandler
__Z11sfxHiyaKangP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L164
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L164:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L154
	tst.b 6(%a2)
	jeq .L159
	moveq #4,%d0
.L155:
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L165
	moveq #7,%d0
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L167:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L154:
	tst.b 6(%a2)
	jeq .L161
	moveq #4,%d0
.L157:
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L162
	moveq #5,%d0
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L166:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L162:
	moveq #7,%d0
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L166
.L161:
	moveq #6,%d0
	jra .L157
.L159:
	moveq #6,%d0
	jra .L155
.L165:
	moveq #5,%d0
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L167
	.even
	.globl	__Z12sfxHiyaNinjaP12SoundHandler
__Z12sfxHiyaNinjaP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L181
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L181:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L171
	tst.b 6(%a2)
	jeq .L176
	moveq #4,%d0
.L172:
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L182
	moveq #7,%d0
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L184:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L171:
	tst.b 6(%a2)
	jeq .L178
	moveq #4,%d0
.L174:
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L179
	moveq #5,%d0
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L183:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L179:
	moveq #7,%d0
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L183
.L178:
	moveq #6,%d0
	jra .L174
.L176:
	moveq #6,%d0
	jra .L172
.L182:
	moveq #5,%d0
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L184
	.even
	.globl	__Z8sfxBlockP12SoundHandler
__Z8sfxBlockP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L198
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L198:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L188
	tst.b 6(%a2)
	jeq .L193
	moveq #4,%d0
.L189:
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L199
	moveq #7,%d0
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L201:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L188:
	tst.b 6(%a2)
	jeq .L195
	moveq #4,%d0
.L191:
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L196
	moveq #5,%d0
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L200:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L196:
	moveq #7,%d0
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L200
.L195:
	moveq #6,%d0
	jra .L191
.L193:
	moveq #6,%d0
	jra .L189
.L199:
	moveq #5,%d0
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L201
	.even
	.globl	__Z12sfxGroanMaleP12SoundHandler
__Z12sfxGroanMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L215
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L215:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L205
	tst.b 6(%a2)
	jeq .L210
	moveq #4,%d0
.L206:
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L216
	moveq #7,%d0
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L218:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L205:
	tst.b 6(%a2)
	jeq .L212
	moveq #4,%d0
.L208:
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L213
	moveq #5,%d0
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L217:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L213:
	moveq #7,%d0
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L217
.L212:
	moveq #6,%d0
	jra .L208
.L210:
	moveq #6,%d0
	jra .L206
.L216:
	moveq #5,%d0
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L218
	.even
	.globl	__Z14sfxGroanFemaleP12SoundHandler
__Z14sfxGroanFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L232
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L232:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L222
	tst.b 6(%a2)
	jeq .L227
	moveq #4,%d0
.L223:
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L233
	moveq #7,%d0
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L235:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L222:
	tst.b 6(%a2)
	jeq .L229
	moveq #4,%d0
.L225:
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L230
	moveq #5,%d0
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L234:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L230:
	moveq #7,%d0
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L234
.L229:
	moveq #6,%d0
	jra .L225
.L227:
	moveq #6,%d0
	jra .L223
.L233:
	moveq #5,%d0
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L235
	.even
	.globl	__Z6sfxHitP12SoundHandler
__Z6sfxHitP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L249
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L249:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L239
	tst.b 6(%a2)
	jeq .L244
	moveq #4,%d0
.L240:
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L250
	moveq #7,%d0
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L252:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L239:
	tst.b 6(%a2)
	jeq .L246
	moveq #4,%d0
.L242:
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L247
	moveq #5,%d0
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L251:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L247:
	moveq #7,%d0
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L251
.L246:
	moveq #6,%d0
	jra .L242
.L244:
	moveq #6,%d0
	jra .L240
.L250:
	moveq #5,%d0
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L252
	.even
	.globl	__Z9sfxImpactP12SoundHandler
__Z9sfxImpactP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L254
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L258
	moveq #4,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L259
.L261:
	moveq #5,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L254:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L258:
	moveq #6,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L261
.L259:
	moveq #7,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L254
	.even
	.globl	__Z8sfxBloodP12SoundHandler
__Z8sfxBloodP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L275
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L275:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L265
	tst.b 6(%a2)
	jeq .L270
	moveq #4,%d0
.L266:
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L276
	moveq #7,%d0
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L278:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L265:
	tst.b 6(%a2)
	jeq .L272
	moveq #4,%d0
.L268:
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L273
	moveq #5,%d0
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L277:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L273:
	moveq #7,%d0
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L277
.L272:
	moveq #6,%d0
	jra .L268
.L270:
	moveq #6,%d0
	jra .L266
.L276:
	moveq #5,%d0
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L278
	.even
	.globl	__Z8sfxSwingP12SoundHandler
__Z8sfxSwingP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L292
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L292:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L282
	tst.b 6(%a2)
	jeq .L287
	moveq #4,%d0
.L283:
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L293
	moveq #7,%d0
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L295:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L282:
	tst.b 6(%a2)
	jeq .L289
	moveq #4,%d0
.L285:
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L290
	moveq #5,%d0
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L294:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L290:
	moveq #7,%d0
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L294
.L289:
	moveq #6,%d0
	jra .L285
.L287:
	moveq #6,%d0
	jra .L283
.L293:
	moveq #5,%d0
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L295
	.even
	.globl	__Z7sfxThudP12SoundHandler
__Z7sfxThudP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L297
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L301
	moveq #4,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L302
.L304:
	moveq #5,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L297:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L301:
	moveq #6,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L304
.L302:
	moveq #7,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L297
	.even
	.globl	__Z9sfxTruFunP12SoundHandler
__Z9sfxTruFunP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L306
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L310
	moveq #4,%d0
	pea 8000.w
	pea 57.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L311
.L313:
	moveq #5,%d0
	pea 8000.w
	pea 57.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L306:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L310:
	moveq #6,%d0
	pea 8000.w
	pea 57.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L313
.L311:
	moveq #7,%d0
	pea 8000.w
	pea 57.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L306
	.even
	.globl	__Z12sfxTitleRiseP12SoundHandler
__Z12sfxTitleRiseP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L315
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L319
	moveq #4,%d0
	pea 8000.w
	pea 58.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L320
.L322:
	moveq #5,%d0
	pea 8000.w
	pea 58.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L315:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L319:
	moveq #6,%d0
	pea 8000.w
	pea 58.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L322
.L320:
	moveq #7,%d0
	pea 8000.w
	pea 58.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L315
	.even
	.globl	__Z12sfxTitleThudP12SoundHandler
__Z12sfxTitleThudP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L324
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L328
	moveq #4,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L329
.L331:
	moveq #5,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L324:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L328:
	moveq #6,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L331
.L329:
	moveq #7,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L324
	.even
	.globl	__Z13sfxTitleStartP12SoundHandler
__Z13sfxTitleStartP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L333
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L337
	moveq #4,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L338
.L340:
	moveq #5,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L333:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L337:
	moveq #6,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L340
.L338:
	moveq #7,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L333
	.even
	.globl	__Z11sfxYellMaleP12SoundHandler
__Z11sfxYellMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L354
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L354:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L344
	tst.b 6(%a2)
	jeq .L349
	moveq #4,%d0
.L345:
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L355
	moveq #7,%d0
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L357:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L344:
	tst.b 6(%a2)
	jeq .L351
	moveq #4,%d0
.L347:
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L352
	moveq #5,%d0
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L356:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L352:
	moveq #7,%d0
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L356
.L351:
	moveq #6,%d0
	jra .L347
.L349:
	moveq #6,%d0
	jra .L345
.L355:
	moveq #5,%d0
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L357
	.even
	.globl	__Z13sfxYellFemaleP12SoundHandler
__Z13sfxYellFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L359
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L363
	moveq #4,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L364
.L366:
	moveq #5,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L359:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L363:
	moveq #6,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L366
.L364:
	moveq #7,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L359
	.even
	.globl	__Z11sfxYellKangP12SoundHandler
__Z11sfxYellKangP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L368
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L372
	moveq #4,%d0
	pea 8000.w
	pea 37.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L373
.L375:
	moveq #5,%d0
	pea 8000.w
	pea 37.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L368:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L372:
	moveq #6,%d0
	pea 8000.w
	pea 37.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L375
.L373:
	moveq #7,%d0
	pea 8000.w
	pea 37.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L368
	.even
	.globl	__Z11sfxJumpMaleP12SoundHandler
__Z11sfxJumpMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L377
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L381
	moveq #4,%d0
	pea 8000.w
	pea 38.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L382
.L384:
	moveq #5,%d0
	pea 8000.w
	pea 38.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L377:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L381:
	moveq #6,%d0
	pea 8000.w
	pea 38.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L384
.L382:
	moveq #7,%d0
	pea 8000.w
	pea 38.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L377
	.even
	.globl	__Z13sfxJumpFemaleP12SoundHandler
__Z13sfxJumpFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L386
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L390
	moveq #4,%d0
	pea 8000.w
	pea 39.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L391
.L393:
	moveq #5,%d0
	pea 8000.w
	pea 39.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L386:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L390:
	moveq #6,%d0
	pea 8000.w
	pea 39.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L393
.L391:
	moveq #7,%d0
	pea 8000.w
	pea 39.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L386
	.even
	.globl	__Z12sfxJumpNinjaP12SoundHandler
__Z12sfxJumpNinjaP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L395
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L399
	moveq #4,%d0
	pea 8000.w
	pea 40.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L400
.L402:
	moveq #5,%d0
	pea 8000.w
	pea 40.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L395:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L399:
	moveq #6,%d0
	pea 8000.w
	pea 40.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L402
.L400:
	moveq #7,%d0
	pea 8000.w
	pea 40.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L395
	.even
	.globl	__Z12sfxThrowMaleP12SoundHandler
__Z12sfxThrowMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L404
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L408
	moveq #4,%d0
	pea 8000.w
	pea 54.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L409
.L411:
	moveq #5,%d0
	pea 8000.w
	pea 54.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L404:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L408:
	moveq #6,%d0
	pea 8000.w
	pea 54.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L411
.L409:
	moveq #7,%d0
	pea 8000.w
	pea 54.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L404
	.even
	.globl	__Z14sfxThrowFemaleP12SoundHandler
__Z14sfxThrowFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L413
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L417
	moveq #4,%d0
	pea 8000.w
	pea 55.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L418
.L420:
	moveq #5,%d0
	pea 8000.w
	pea 55.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L413:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L417:
	moveq #6,%d0
	pea 8000.w
	pea 55.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L420
.L418:
	moveq #7,%d0
	pea 8000.w
	pea 55.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L413
	.even
	.globl	__Z13sfxThrowNinjaP12SoundHandler
__Z13sfxThrowNinjaP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L422
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L426
	moveq #4,%d0
	pea 8000.w
	pea 56.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L427
.L429:
	moveq #5,%d0
	pea 8000.w
	pea 56.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L422:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L426:
	moveq #6,%d0
	pea 8000.w
	pea 56.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L429
.L427:
	moveq #7,%d0
	pea 8000.w
	pea 56.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L422
	.even
	.globl	__Z11sfxJumpRollP12SoundHandler
__Z11sfxJumpRollP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L431
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L435
	moveq #4,%d0
	pea 8000.w
	pea 41.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L436
.L438:
	moveq #5,%d0
	pea 8000.w
	pea 41.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L431:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L435:
	moveq #6,%d0
	pea 8000.w
	pea 41.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L438
.L436:
	moveq #7,%d0
	pea 8000.w
	pea 41.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L431
	.even
	.globl	__Z11sfxCageYeahP12SoundHandler
__Z11sfxCageYeahP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L440
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L444
	moveq #4,%d0
	pea 8000.w
	pea 51.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L445
.L447:
	moveq #5,%d0
	pea 8000.w
	pea 51.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L440:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L444:
	moveq #6,%d0
	pea 8000.w
	pea 51.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L447
.L445:
	moveq #7,%d0
	pea 8000.w
	pea 51.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L440
	.even
	.globl	__Z16sfxCageGreenboltP12SoundHandler
__Z16sfxCageGreenboltP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L449
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L453
	moveq #4,%d0
	pea 8000.w
	pea 61.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L454
.L456:
	moveq #5,%d0
	pea 8000.w
	pea 61.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L449:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L453:
	moveq #6,%d0
	pea 8000.w
	pea 61.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L456
.L454:
	moveq #7,%d0
	pea 8000.w
	pea 61.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L449
	.even
	.globl	__Z11sfxKanoYellP12SoundHandler
__Z11sfxKanoYellP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L458
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L462
	moveq #4,%d0
	pea 8000.w
	pea 52.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L463
.L465:
	moveq #5,%d0
	pea 8000.w
	pea 52.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L458:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L462:
	moveq #6,%d0
	pea 8000.w
	pea 52.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L465
.L463:
	moveq #7,%d0
	pea 8000.w
	pea 52.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L458
	.even
	.globl	__Z12sfxKanoKnifeP12SoundHandler
__Z12sfxKanoKnifeP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L467
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L471
	moveq #4,%d0
	pea 8000.w
	pea 62.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L472
.L474:
	moveq #5,%d0
	pea 8000.w
	pea 62.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L467:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L471:
	moveq #6,%d0
	pea 8000.w
	pea 62.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L474
.L472:
	moveq #7,%d0
	pea 8000.w
	pea 62.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L467
	.even
	.globl	__Z22sfxKanoCannonBallStartP12SoundHandler
__Z22sfxKanoCannonBallStartP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L476
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L480
	moveq #4,%d0
	pea 8000.w
	pea 72.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L481
.L483:
	moveq #5,%d0
	pea 8000.w
	pea 72.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L476:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L480:
	moveq #6,%d0
	pea 8000.w
	pea 72.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L483
.L481:
	moveq #7,%d0
	pea 8000.w
	pea 72.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L476
	.even
	.globl	__Z17sfxKanoCannonBallP12SoundHandler
__Z17sfxKanoCannonBallP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L485
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L489
	moveq #4,%d0
	pea 8000.w
	pea 73.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L490
.L492:
	moveq #5,%d0
	pea 8000.w
	pea 73.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L485:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L489:
	moveq #6,%d0
	pea 8000.w
	pea 73.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L492
.L490:
	moveq #7,%d0
	pea 8000.w
	pea 73.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L485
	.even
	.globl	__Z13sfxSonyaRingsP12SoundHandler
__Z13sfxSonyaRingsP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L494
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L498
	moveq #4,%d0
	pea 8000.w
	pea 65.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L499
.L501:
	moveq #5,%d0
	pea 8000.w
	pea 65.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L494:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L498:
	moveq #6,%d0
	pea 8000.w
	pea 65.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L501
.L499:
	moveq #7,%d0
	pea 8000.w
	pea 65.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L494
	.even
	.globl	__Z16sfxSubzeroFreezeP12SoundHandler
__Z16sfxSubzeroFreezeP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L503
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L507
	moveq #4,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L508
.L510:
	moveq #5,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L503:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L507:
	moveq #6,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L510
.L508:
	moveq #7,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L503
	.even
	.globl	__Z19sfxSubzeroFreezeEndP12SoundHandler
__Z19sfxSubzeroFreezeEndP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L512
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L516
	moveq #4,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L517
.L519:
	moveq #5,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L512:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L516:
	moveq #6,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L519
.L517:
	moveq #7,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L512
	.even
	.globl	__Z15sfxSubzeroSlideP12SoundHandler
__Z15sfxSubzeroSlideP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L521
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L525
	moveq #4,%d0
	pea 8000.w
	pea 79.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L526
.L528:
	moveq #5,%d0
	pea 8000.w
	pea 79.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L521:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L525:
	moveq #6,%d0
	pea 8000.w
	pea 79.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L528
.L526:
	moveq #7,%d0
	pea 8000.w
	pea 79.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L521
	.even
	.globl	__Z18sfxScorpionHarpoonP12SoundHandler
__Z18sfxScorpionHarpoonP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L530
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L534
	moveq #4,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L535
.L537:
	moveq #5,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L530:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L534:
	moveq #6,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L537
.L535:
	moveq #7,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L530
	.even
	.globl	__Z19sfxScorpionTeleportP12SoundHandler
__Z19sfxScorpionTeleportP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L539
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L543
	moveq #4,%d0
	pea 8000.w
	pea 78.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L544
.L546:
	moveq #5,%d0
	pea 8000.w
	pea 78.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L539:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L543:
	moveq #6,%d0
	pea 8000.w
	pea 78.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L546
.L544:
	moveq #7,%d0
	pea 8000.w
	pea 78.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L539
	.even
	.globl	__Z22sfxScorpionGetOverHereP12SoundHandler
__Z22sfxScorpionGetOverHereP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L560
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L560:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L550
	tst.b 6(%a2)
	jeq .L555
	moveq #4,%d0
.L551:
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L561
	moveq #7,%d0
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L563:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L550:
	tst.b 6(%a2)
	jeq .L557
	moveq #4,%d0
.L553:
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L558
	moveq #5,%d0
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L562:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L558:
	moveq #7,%d0
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L562
.L557:
	moveq #6,%d0
	jra .L553
.L555:
	moveq #6,%d0
	jra .L551
.L561:
	moveq #5,%d0
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L563
	.even
	.globl	__Z18sfxRaidenLightningP12SoundHandler
__Z18sfxRaidenLightningP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L565
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L569
	moveq #4,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L570
.L572:
	moveq #5,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L565:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L569:
	moveq #6,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L572
.L570:
	moveq #7,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L565
	.even
	.globl	__Z21sfxRaidenLightningEndP12SoundHandler
__Z21sfxRaidenLightningEndP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L574
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L578
	moveq #4,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L579
.L581:
	moveq #5,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L574:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L578:
	moveq #6,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L581
.L579:
	moveq #7,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L574
	.even
	.globl	__Z17sfxRaidenTeleportP12SoundHandler
__Z17sfxRaidenTeleportP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L583
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L587
	moveq #4,%d0
	pea 8000.w
	pea 74.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L588
.L590:
	moveq #5,%d0
	pea 8000.w
	pea 74.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L583:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L587:
	moveq #6,%d0
	pea 8000.w
	pea 74.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L590
.L588:
	moveq #7,%d0
	pea 8000.w
	pea 74.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L583
	.even
	.globl	__Z16sfxRaidenTorpedoP12SoundHandler
__Z16sfxRaidenTorpedoP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L592
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L596
	moveq #4,%d0
	pea 8000.w
	pea 75.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L597
.L599:
	moveq #5,%d0
	pea 8000.w
	pea 75.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L592:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L596:
	moveq #6,%d0
	pea 8000.w
	pea 75.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L599
.L597:
	moveq #7,%d0
	pea 8000.w
	pea 75.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L592
	.even
	.globl	__Z16sfxRaidenIdleZapP12SoundHandler
__Z16sfxRaidenIdleZapP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L601
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L605
	moveq #4,%d0
	pea 8000.w
	pea 76.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L606
.L608:
	moveq #5,%d0
	pea 8000.w
	pea 76.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L601:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L605:
	moveq #6,%d0
	pea 8000.w
	pea 76.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L608
.L606:
	moveq #7,%d0
	pea 8000.w
	pea 76.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L601
	.even
	.globl	__Z17sfxKangFlyingKickP12SoundHandler
__Z17sfxKangFlyingKickP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L610
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L614
	moveq #4,%d0
	pea 8000.w
	pea 77.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L615
.L617:
	moveq #5,%d0
	pea 8000.w
	pea 77.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L610:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L614:
	moveq #6,%d0
	pea 8000.w
	pea 77.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L617
.L615:
	moveq #7,%d0
	pea 8000.w
	pea 77.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L610
	.even
	.globl	__Z15sfxKanoHeadbuttP12SoundHandler
__Z15sfxKanoHeadbuttP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L619
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L623
	moveq #4,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L624
.L626:
	moveq #5,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L619:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L623:
	moveq #6,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L626
.L624:
	moveq #7,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L619
	.even
	.globl	__Z11sfxCrowdAwwP12SoundHandler
__Z11sfxCrowdAwwP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L628
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L632
	moveq #4,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L633
.L635:
	moveq #5,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L628:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L632:
	moveq #6,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L635
.L633:
	moveq #7,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L628
	.even
	.globl	__Z12sfxCrowdClapP12SoundHandler
__Z12sfxCrowdClapP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L637
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L641
	moveq #4,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L642
.L644:
	moveq #5,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L637:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L641:
	moveq #6,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L644
.L642:
	moveq #7,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L637
	.even
	.globl	__Z21sfxAnnouncerExcellentP12SoundHandler
__Z21sfxAnnouncerExcellentP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L646
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L650
	moveq #4,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L651
.L653:
	moveq #5,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L646:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L650:
	moveq #6,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L653
.L651:
	moveq #7,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L646
	.even
	.globl	__Z17sfxAnnouncerLaughP12SoundHandler
__Z17sfxAnnouncerLaughP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L655
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L659
	moveq #4,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L660
.L662:
	moveq #5,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L655:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L659:
	moveq #6,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L662
.L660:
	moveq #7,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L655
	.even
	.globl	__Z23sfxAnnouncerShowNoMercyP12SoundHandler
__Z23sfxAnnouncerShowNoMercyP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L664
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L668
	moveq #4,%d0
	pea 8000.w
	pea 81.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L669
.L671:
	moveq #5,%d0
	pea 8000.w
	pea 81.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L664:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L668:
	moveq #6,%d0
	pea 8000.w
	pea 81.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L671
.L669:
	moveq #7,%d0
	pea 8000.w
	pea 81.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L664
	.even
	.globl	__Z12sfxFinishHerP12SoundHandler
__Z12sfxFinishHerP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L673
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L677
	moveq #4,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L678
.L680:
	moveq #5,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L673:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L677:
	moveq #6,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L680
.L678:
	moveq #7,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L673
	.even
	.globl	__Z12sfxFinishHimP12SoundHandler
__Z12sfxFinishHimP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L682
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L686
	moveq #4,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L687
.L689:
	moveq #5,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L682:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L686:
	moveq #6,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L689
.L687:
	moveq #7,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L682
	.even
	.globl	__Z7sfxWinsP12SoundHandler
__Z7sfxWinsP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L691
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L695
	moveq #4,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L696
.L698:
	moveq #5,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L691:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L695:
	moveq #6,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L698
.L696:
	moveq #7,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L691
	.even
	.globl	__Z11sfxFlawlessP12SoundHandler
__Z11sfxFlawlessP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L700
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L704
	moveq #4,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L705
.L707:
	moveq #5,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L700:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L704:
	moveq #6,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L707
.L705:
	moveq #7,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L700
	.even
	.globl	__Z11sfxFatalityP12SoundHandler
__Z11sfxFatalityP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L709
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L713
	moveq #4,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L714
.L716:
	moveq #5,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L709:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L713:
	moveq #6,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L716
.L714:
	moveq #7,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L709
	.even
	.globl	__Z10musicTitleP12SoundHandler
__Z10musicTitleP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L722
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L722:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13707664,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.w 4(%a2),%d0
	jlt .L723
	asr.w #2,%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
.L723:
	addq.w #3,%d0
	asr.w #2,%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z15musicStageGatesP12SoundHandler
__Z15musicStageGatesP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L728
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L728:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13797600,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.w 4(%a2),%a2
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z13musicStagePitP12SoundHandler
__Z13musicStagePitP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 1(%a0)
	jne .L733
	unlk %fp
	rts
.L733:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13854816,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	moveq #60,%d0
	move.l %d0,8(%fp)
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z17musicStageWarriorP12SoundHandler
__Z17musicStageWarriorP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L738
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L738:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13913568,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.w 4(%a2),%a2
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z14musicStageGoroP12SoundHandler
__Z14musicStageGoroP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L743
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L743:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13958784,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.w 4(%a2),%a2
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z16musicStageThroneP12SoundHandler
__Z16musicStageThroneP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L748
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L748:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #14001792,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.w 4(%a2),%a2
	move.l %a2,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z9musicStopv
__Z9musicStopv:
	link.w %fp,#0
	jsr __Z14u235StopModulev
	unlk %fp
	jra __Z11u235Silencev
	.even
	.globl	__Z16soundNextChannelP12SoundHandler
__Z16soundNextChannelP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	eor.b #1,6(%a0)
	unlk %fp
	rts
	.even
	.globl	__Z15soundGetChannelP12SoundHandler
__Z15soundGetChannelP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 6(%a0)
	jne .L756
	moveq #6,%d0
	unlk %fp
	rts
.L756:
	moveq #4,%d0
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
