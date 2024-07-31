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
	.globl	__Z11sfxP1CursorP12SoundHandler
__Z11sfxP1CursorP12SoundHandler:
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
	clr.l -(%sp)
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L78
.L80:
	moveq #5,%d0
	pea 8000.w
	clr.l -(%sp)
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
	clr.l -(%sp)
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L80
.L78:
	moveq #7,%d0
	pea 8000.w
	clr.l -(%sp)
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L73
	.even
	.globl	__Z11sfxP2CursorP12SoundHandler
__Z11sfxP2CursorP12SoundHandler:
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
	pea 1.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L87
.L89:
	moveq #5,%d0
	pea 8000.w
	pea 1.w
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
	pea 1.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L89
.L87:
	moveq #7,%d0
	pea 8000.w
	pea 1.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L82
	.even
	.globl	__Z7sfxGongP12SoundHandler
__Z7sfxGongP12SoundHandler:
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
	pea 11.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L96
.L98:
	moveq #5,%d0
	pea 8000.w
	pea 11.w
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
	pea 11.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L98
.L96:
	moveq #7,%d0
	pea 8000.w
	pea 11.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L91
	.even
	.globl	__Z8sfxIntroP12SoundHandler
__Z8sfxIntroP12SoundHandler:
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
	pea 12.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L105
.L107:
	moveq #5,%d0
	pea 8000.w
	pea 12.w
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
	pea 12.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L107
.L105:
	moveq #7,%d0
	pea 8000.w
	pea 12.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L100
	.even
	.globl	__Z11sfxHiyaMaleP12SoundHandler
__Z11sfxHiyaMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L121
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L121:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L111
	tst.b 6(%a2)
	jeq .L116
	moveq #4,%d0
.L112:
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L122
	moveq #7,%d0
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L124:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L111:
	tst.b 6(%a2)
	jeq .L118
	moveq #4,%d0
.L114:
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L119
	moveq #5,%d0
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L123:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L119:
	moveq #7,%d0
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L123
.L118:
	moveq #6,%d0
	jra .L114
.L116:
	moveq #6,%d0
	jra .L112
.L122:
	moveq #5,%d0
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L124
	.even
	.globl	__Z13sfxHiyaFemaleP12SoundHandler
__Z13sfxHiyaFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L138
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L138:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L128
	tst.b 6(%a2)
	jeq .L133
	moveq #4,%d0
.L129:
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L139
	moveq #7,%d0
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L141:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L128:
	tst.b 6(%a2)
	jeq .L135
	moveq #4,%d0
.L131:
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L136
	moveq #5,%d0
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L140:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L136:
	moveq #7,%d0
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L140
.L135:
	moveq #6,%d0
	jra .L131
.L133:
	moveq #6,%d0
	jra .L129
.L139:
	moveq #5,%d0
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L141
	.even
	.globl	__Z11sfxHiyaKangP12SoundHandler
__Z11sfxHiyaKangP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L155
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L155:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L145
	tst.b 6(%a2)
	jeq .L150
	moveq #4,%d0
.L146:
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L156
	moveq #7,%d0
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L158:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L145:
	tst.b 6(%a2)
	jeq .L152
	moveq #4,%d0
.L148:
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L153
	moveq #5,%d0
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L157:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L153:
	moveq #7,%d0
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L157
.L152:
	moveq #6,%d0
	jra .L148
.L150:
	moveq #6,%d0
	jra .L146
.L156:
	moveq #5,%d0
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L158
	.even
	.globl	__Z12sfxHiyaNinjaP12SoundHandler
__Z12sfxHiyaNinjaP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L172
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L172:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L162
	tst.b 6(%a2)
	jeq .L167
	moveq #4,%d0
.L163:
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L173
	moveq #7,%d0
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L175:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L162:
	tst.b 6(%a2)
	jeq .L169
	moveq #4,%d0
.L165:
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L170
	moveq #5,%d0
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L174:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L170:
	moveq #7,%d0
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L174
.L169:
	moveq #6,%d0
	jra .L165
.L167:
	moveq #6,%d0
	jra .L163
.L173:
	moveq #5,%d0
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L175
	.even
	.globl	__Z8sfxBlockP12SoundHandler
__Z8sfxBlockP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L189
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L189:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L179
	tst.b 6(%a2)
	jeq .L184
	moveq #4,%d0
.L180:
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L190
	moveq #7,%d0
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L192:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L179:
	tst.b 6(%a2)
	jeq .L186
	moveq #4,%d0
.L182:
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L187
	moveq #5,%d0
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L191:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L187:
	moveq #7,%d0
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L191
.L186:
	moveq #6,%d0
	jra .L182
.L184:
	moveq #6,%d0
	jra .L180
.L190:
	moveq #5,%d0
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L192
	.even
	.globl	__Z12sfxGroanMaleP12SoundHandler
__Z12sfxGroanMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L206
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L206:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L196
	tst.b 6(%a2)
	jeq .L201
	moveq #4,%d0
.L197:
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L207
	moveq #7,%d0
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L209:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L196:
	tst.b 6(%a2)
	jeq .L203
	moveq #4,%d0
.L199:
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L204
	moveq #5,%d0
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L208:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L204:
	moveq #7,%d0
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L208
.L203:
	moveq #6,%d0
	jra .L199
.L201:
	moveq #6,%d0
	jra .L197
.L207:
	moveq #5,%d0
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L209
	.even
	.globl	__Z14sfxGroanFemaleP12SoundHandler
__Z14sfxGroanFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L223
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L223:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L213
	tst.b 6(%a2)
	jeq .L218
	moveq #4,%d0
.L214:
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L224
	moveq #7,%d0
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L226:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L213:
	tst.b 6(%a2)
	jeq .L220
	moveq #4,%d0
.L216:
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L221
	moveq #5,%d0
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L225:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L221:
	moveq #7,%d0
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L225
.L220:
	moveq #6,%d0
	jra .L216
.L218:
	moveq #6,%d0
	jra .L214
.L224:
	moveq #5,%d0
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L226
	.even
	.globl	__Z6sfxHitP12SoundHandler
__Z6sfxHitP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L240
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L240:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L230
	tst.b 6(%a2)
	jeq .L235
	moveq #4,%d0
.L231:
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L241
	moveq #7,%d0
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L243:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L230:
	tst.b 6(%a2)
	jeq .L237
	moveq #4,%d0
.L233:
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L238
	moveq #5,%d0
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L242:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L238:
	moveq #7,%d0
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L242
.L237:
	moveq #6,%d0
	jra .L233
.L235:
	moveq #6,%d0
	jra .L231
.L241:
	moveq #5,%d0
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L243
	.even
	.globl	__Z9sfxImpactP12SoundHandler
__Z9sfxImpactP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L245
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L249
	moveq #4,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L250
.L252:
	moveq #5,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L245:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L249:
	moveq #6,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L252
.L250:
	moveq #7,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L245
	.even
	.globl	__Z8sfxBloodP12SoundHandler
__Z8sfxBloodP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L266
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L266:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L256
	tst.b 6(%a2)
	jeq .L261
	moveq #4,%d0
.L257:
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L267
	moveq #7,%d0
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L269:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L256:
	tst.b 6(%a2)
	jeq .L263
	moveq #4,%d0
.L259:
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L264
	moveq #5,%d0
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L268:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L264:
	moveq #7,%d0
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L268
.L263:
	moveq #6,%d0
	jra .L259
.L261:
	moveq #6,%d0
	jra .L257
.L267:
	moveq #5,%d0
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L269
	.even
	.globl	__Z8sfxSwingP12SoundHandler
__Z8sfxSwingP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L283
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L283:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L273
	tst.b 6(%a2)
	jeq .L278
	moveq #4,%d0
.L274:
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L284
	moveq #7,%d0
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L286:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L273:
	tst.b 6(%a2)
	jeq .L280
	moveq #4,%d0
.L276:
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L281
	moveq #5,%d0
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L285:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L281:
	moveq #7,%d0
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L285
.L280:
	moveq #6,%d0
	jra .L276
.L278:
	moveq #6,%d0
	jra .L274
.L284:
	moveq #5,%d0
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L286
	.even
	.globl	__Z7sfxThudP12SoundHandler
__Z7sfxThudP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L288
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L292
	moveq #4,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L293
.L295:
	moveq #5,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L288:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L292:
	moveq #6,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L295
.L293:
	moveq #7,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L288
	.even
	.globl	__Z9sfxTruFunP12SoundHandler
__Z9sfxTruFunP12SoundHandler:
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
	pea 57.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L302
.L304:
	moveq #5,%d0
	pea 8000.w
	pea 57.w
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
	pea 57.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L304
.L302:
	moveq #7,%d0
	pea 8000.w
	pea 57.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L297
	.even
	.globl	__Z12sfxTitleRiseP12SoundHandler
__Z12sfxTitleRiseP12SoundHandler:
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
	pea 58.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L311
.L313:
	moveq #5,%d0
	pea 8000.w
	pea 58.w
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
	pea 58.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L313
.L311:
	moveq #7,%d0
	pea 8000.w
	pea 58.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L306
	.even
	.globl	__Z12sfxTitleThudP12SoundHandler
__Z12sfxTitleThudP12SoundHandler:
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
	pea 59.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L320
.L322:
	moveq #5,%d0
	pea 8000.w
	pea 59.w
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
	pea 59.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L322
.L320:
	moveq #7,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L315
	.even
	.globl	__Z13sfxTitleStartP12SoundHandler
__Z13sfxTitleStartP12SoundHandler:
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
	pea 60.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L329
.L331:
	moveq #5,%d0
	pea 8000.w
	pea 60.w
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
	pea 60.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L331
.L329:
	moveq #7,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L324
	.even
	.globl	__Z11sfxYellMaleP12SoundHandler
__Z11sfxYellMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L345
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L345:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L335
	tst.b 6(%a2)
	jeq .L340
	moveq #4,%d0
.L336:
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L346
	moveq #7,%d0
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L348:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L335:
	tst.b 6(%a2)
	jeq .L342
	moveq #4,%d0
.L338:
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L343
	moveq #5,%d0
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L347:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L343:
	moveq #7,%d0
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L347
.L342:
	moveq #6,%d0
	jra .L338
.L340:
	moveq #6,%d0
	jra .L336
.L346:
	moveq #5,%d0
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L348
	.even
	.globl	__Z13sfxYellFemaleP12SoundHandler
__Z13sfxYellFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L350
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L354
	moveq #4,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L355
.L357:
	moveq #5,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L350:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L354:
	moveq #6,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L357
.L355:
	moveq #7,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L350
	.even
	.globl	__Z11sfxYellKangP12SoundHandler
__Z11sfxYellKangP12SoundHandler:
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
	pea 37.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L364
.L366:
	moveq #5,%d0
	pea 8000.w
	pea 37.w
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
	pea 37.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L366
.L364:
	moveq #7,%d0
	pea 8000.w
	pea 37.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L359
	.even
	.globl	__Z11sfxJumpMaleP12SoundHandler
__Z11sfxJumpMaleP12SoundHandler:
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
	pea 38.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L373
.L375:
	moveq #5,%d0
	pea 8000.w
	pea 38.w
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
	pea 38.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L375
.L373:
	moveq #7,%d0
	pea 8000.w
	pea 38.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L368
	.even
	.globl	__Z13sfxJumpFemaleP12SoundHandler
__Z13sfxJumpFemaleP12SoundHandler:
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
	pea 39.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L382
.L384:
	moveq #5,%d0
	pea 8000.w
	pea 39.w
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
	pea 39.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L384
.L382:
	moveq #7,%d0
	pea 8000.w
	pea 39.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L377
	.even
	.globl	__Z12sfxJumpNinjaP12SoundHandler
__Z12sfxJumpNinjaP12SoundHandler:
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
	pea 40.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L391
.L393:
	moveq #5,%d0
	pea 8000.w
	pea 40.w
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
	pea 40.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L393
.L391:
	moveq #7,%d0
	pea 8000.w
	pea 40.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L386
	.even
	.globl	__Z12sfxThrowMaleP12SoundHandler
__Z12sfxThrowMaleP12SoundHandler:
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
	pea 54.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L400
.L402:
	moveq #5,%d0
	pea 8000.w
	pea 54.w
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
	pea 54.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L402
.L400:
	moveq #7,%d0
	pea 8000.w
	pea 54.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L395
	.even
	.globl	__Z14sfxThrowFemaleP12SoundHandler
__Z14sfxThrowFemaleP12SoundHandler:
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
	pea 55.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L409
.L411:
	moveq #5,%d0
	pea 8000.w
	pea 55.w
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
	pea 55.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L411
.L409:
	moveq #7,%d0
	pea 8000.w
	pea 55.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L404
	.even
	.globl	__Z13sfxThrowNinjaP12SoundHandler
__Z13sfxThrowNinjaP12SoundHandler:
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
	pea 56.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L418
.L420:
	moveq #5,%d0
	pea 8000.w
	pea 56.w
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
	pea 56.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L420
.L418:
	moveq #7,%d0
	pea 8000.w
	pea 56.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L413
	.even
	.globl	__Z11sfxJumpRollP12SoundHandler
__Z11sfxJumpRollP12SoundHandler:
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
	pea 41.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L427
.L429:
	moveq #5,%d0
	pea 8000.w
	pea 41.w
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
	pea 41.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L429
.L427:
	moveq #7,%d0
	pea 8000.w
	pea 41.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L422
	.even
	.globl	__Z11sfxCageYeahP12SoundHandler
__Z11sfxCageYeahP12SoundHandler:
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
	pea 51.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L436
.L438:
	moveq #5,%d0
	pea 8000.w
	pea 51.w
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
	pea 51.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L438
.L436:
	moveq #7,%d0
	pea 8000.w
	pea 51.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L431
	.even
	.globl	__Z16sfxCageGreenboltP12SoundHandler
__Z16sfxCageGreenboltP12SoundHandler:
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
	pea 61.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L445
.L447:
	moveq #5,%d0
	pea 8000.w
	pea 61.w
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
	pea 61.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L447
.L445:
	moveq #7,%d0
	pea 8000.w
	pea 61.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L440
	.even
	.globl	__Z11sfxKanoYellP12SoundHandler
__Z11sfxKanoYellP12SoundHandler:
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
	pea 52.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L454
.L456:
	moveq #5,%d0
	pea 8000.w
	pea 52.w
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
	pea 52.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L456
.L454:
	moveq #7,%d0
	pea 8000.w
	pea 52.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L449
	.even
	.globl	__Z12sfxKanoKnifeP12SoundHandler
__Z12sfxKanoKnifeP12SoundHandler:
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
	pea 62.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L463
.L465:
	moveq #5,%d0
	pea 8000.w
	pea 62.w
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
	pea 62.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L465
.L463:
	moveq #7,%d0
	pea 8000.w
	pea 62.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L458
	.even
	.globl	__Z13sfxSonyaRingsP12SoundHandler
__Z13sfxSonyaRingsP12SoundHandler:
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
	pea 65.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L472
.L474:
	moveq #5,%d0
	pea 8000.w
	pea 65.w
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
	pea 65.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L474
.L472:
	moveq #7,%d0
	pea 8000.w
	pea 65.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L467
	.even
	.globl	__Z16sfxSubzeroFreezeP12SoundHandler
__Z16sfxSubzeroFreezeP12SoundHandler:
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
	pea 66.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L481
.L483:
	moveq #5,%d0
	pea 8000.w
	pea 66.w
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
	pea 66.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L483
.L481:
	moveq #7,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L476
	.even
	.globl	__Z19sfxSubzeroFreezeEndP12SoundHandler
__Z19sfxSubzeroFreezeEndP12SoundHandler:
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
	pea 67.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L490
.L492:
	moveq #5,%d0
	pea 8000.w
	pea 67.w
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
	pea 67.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L492
.L490:
	moveq #7,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L485
	.even
	.globl	__Z18sfxScorpionHarpoonP12SoundHandler
__Z18sfxScorpionHarpoonP12SoundHandler:
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
	pea 68.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L499
.L501:
	moveq #5,%d0
	pea 8000.w
	pea 68.w
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
	pea 68.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L501
.L499:
	moveq #7,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L494
	.even
	.globl	__Z22sfxScorpionGetOverHereP12SoundHandler
__Z22sfxScorpionGetOverHereP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L515
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L515:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L505
	tst.b 6(%a2)
	jeq .L510
	moveq #4,%d0
.L506:
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L516
	moveq #7,%d0
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L518:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L505:
	tst.b 6(%a2)
	jeq .L512
	moveq #4,%d0
.L508:
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L513
	moveq #5,%d0
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L517:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L513:
	moveq #7,%d0
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L517
.L512:
	moveq #6,%d0
	jra .L508
.L510:
	moveq #6,%d0
	jra .L506
.L516:
	moveq #5,%d0
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L518
	.even
	.globl	__Z18sfxRaidenLightningP12SoundHandler
__Z18sfxRaidenLightningP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L520
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L524
	moveq #4,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L525
.L527:
	moveq #5,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L520:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L524:
	moveq #6,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L527
.L525:
	moveq #7,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L520
	.even
	.globl	__Z21sfxRaidenLightningEndP12SoundHandler
__Z21sfxRaidenLightningEndP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L529
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L533
	moveq #4,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L534
.L536:
	moveq #5,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L529:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L533:
	moveq #6,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L536
.L534:
	moveq #7,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L529
	.even
	.globl	__Z15sfxKanoHeadbuttP12SoundHandler
__Z15sfxKanoHeadbuttP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L538
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L542
	moveq #4,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L543
.L545:
	moveq #5,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L538:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L542:
	moveq #6,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L545
.L543:
	moveq #7,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L538
	.even
	.globl	__Z11sfxCrowdAwwP12SoundHandler
__Z11sfxCrowdAwwP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L547
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L551
	moveq #4,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L552
.L554:
	moveq #5,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L547:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L551:
	moveq #6,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L554
.L552:
	moveq #7,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L547
	.even
	.globl	__Z12sfxCrowdClapP12SoundHandler
__Z12sfxCrowdClapP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L556
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L560
	moveq #4,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L561
.L563:
	moveq #5,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L556:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L560:
	moveq #6,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L563
.L561:
	moveq #7,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L556
	.even
	.globl	__Z21sfxAnnouncerExcellentP12SoundHandler
__Z21sfxAnnouncerExcellentP12SoundHandler:
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
	pea 44.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L570
.L572:
	moveq #5,%d0
	pea 8000.w
	pea 44.w
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
	pea 44.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L572
.L570:
	moveq #7,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L565
	.even
	.globl	__Z17sfxAnnouncerLaughP12SoundHandler
__Z17sfxAnnouncerLaughP12SoundHandler:
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
	pea 45.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L579
.L581:
	moveq #5,%d0
	pea 8000.w
	pea 45.w
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
	pea 45.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L581
.L579:
	moveq #7,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L574
	.even
	.globl	__Z12sfxFinishHerP12SoundHandler
__Z12sfxFinishHerP12SoundHandler:
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
	pea 46.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L588
.L590:
	moveq #5,%d0
	pea 8000.w
	pea 46.w
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
	pea 46.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L590
.L588:
	moveq #7,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L583
	.even
	.globl	__Z12sfxFinishHimP12SoundHandler
__Z12sfxFinishHimP12SoundHandler:
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
	pea 47.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L597
.L599:
	moveq #5,%d0
	pea 8000.w
	pea 47.w
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
	pea 47.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L599
.L597:
	moveq #7,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L592
	.even
	.globl	__Z7sfxWinsP12SoundHandler
__Z7sfxWinsP12SoundHandler:
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
	pea 48.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L606
.L608:
	moveq #5,%d0
	pea 8000.w
	pea 48.w
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
	pea 48.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L608
.L606:
	moveq #7,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L601
	.even
	.globl	__Z11sfxFlawlessP12SoundHandler
__Z11sfxFlawlessP12SoundHandler:
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
	pea 49.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L615
.L617:
	moveq #5,%d0
	pea 8000.w
	pea 49.w
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
	pea 49.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L617
.L615:
	moveq #7,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L610
	.even
	.globl	__Z11sfxFatalityP12SoundHandler
__Z11sfxFatalityP12SoundHandler:
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
	pea 50.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L624
.L626:
	moveq #5,%d0
	pea 8000.w
	pea 50.w
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
	pea 50.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L626
.L624:
	moveq #7,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L619
	.even
	.globl	__Z10musicTitleP12SoundHandler
__Z10musicTitleP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L632
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L632:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13604512,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.w 4(%a2),%d0
	jlt .L633
	asr.w #2,%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
.L633:
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
	jne .L638
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L638:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13694448,-(%sp)
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
	jne .L643
	unlk %fp
	rts
.L643:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13751664,-(%sp)
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
	jne .L648
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L648:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13810416,-(%sp)
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
	jne .L653
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L653:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13855632,-(%sp)
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
	jne .L658
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L658:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13898640,-(%sp)
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
	jne .L666
	moveq #6,%d0
	unlk %fp
	rts
.L666:
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
