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
	.globl	__Z10sfxPitFallP12SoundHandler
__Z10sfxPitFallP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L118
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L122
	moveq #4,%d0
	pea 8000.w
	pea 96.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L123
.L125:
	moveq #5,%d0
	pea 8000.w
	pea 96.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L118:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L122:
	moveq #6,%d0
	pea 8000.w
	pea 96.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L125
.L123:
	moveq #7,%d0
	pea 8000.w
	pea 96.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L118
	.even
	.globl	__Z10sfxPitLandP12SoundHandler
__Z10sfxPitLandP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L127
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L131
	moveq #4,%d0
	pea 8000.w
	pea 97.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L132
.L134:
	moveq #5,%d0
	pea 8000.w
	pea 97.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L127:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L131:
	moveq #6,%d0
	pea 8000.w
	pea 97.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L134
.L132:
	moveq #7,%d0
	pea 8000.w
	pea 97.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L127
	.even
	.globl	__Z11sfxHiyaMaleP12SoundHandler
__Z11sfxHiyaMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L148
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L148:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L138
	tst.b 6(%a2)
	jeq .L143
	moveq #4,%d0
.L139:
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L149
	moveq #7,%d0
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L151:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L138:
	tst.b 6(%a2)
	jeq .L145
	moveq #4,%d0
.L141:
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L146
	moveq #5,%d0
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L150:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L146:
	moveq #7,%d0
	pea 8000.w
	pea 16.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L150
.L145:
	moveq #6,%d0
	jra .L141
.L143:
	moveq #6,%d0
	jra .L139
.L149:
	moveq #5,%d0
	pea 8000.w
	pea 15.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L151
	.even
	.globl	__Z13sfxHiyaFemaleP12SoundHandler
__Z13sfxHiyaFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L165
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L165:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L155
	tst.b 6(%a2)
	jeq .L160
	moveq #4,%d0
.L156:
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L166
	moveq #7,%d0
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L168:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L155:
	tst.b 6(%a2)
	jeq .L162
	moveq #4,%d0
.L158:
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L163
	moveq #5,%d0
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L167:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L163:
	moveq #7,%d0
	pea 8000.w
	pea 14.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L167
.L162:
	moveq #6,%d0
	jra .L158
.L160:
	moveq #6,%d0
	jra .L156
.L166:
	moveq #5,%d0
	pea 8000.w
	pea 13.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L168
	.even
	.globl	__Z11sfxHiyaKangP12SoundHandler
__Z11sfxHiyaKangP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L182
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L182:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L172
	tst.b 6(%a2)
	jeq .L177
	moveq #4,%d0
.L173:
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L183
	moveq #7,%d0
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L185:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L172:
	tst.b 6(%a2)
	jeq .L179
	moveq #4,%d0
.L175:
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L180
	moveq #5,%d0
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L184:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L180:
	moveq #7,%d0
	pea 8000.w
	pea 18.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L184
.L179:
	moveq #6,%d0
	jra .L175
.L177:
	moveq #6,%d0
	jra .L173
.L183:
	moveq #5,%d0
	pea 8000.w
	pea 17.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L185
	.even
	.globl	__Z12sfxHiyaNinjaP12SoundHandler
__Z12sfxHiyaNinjaP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L199
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L199:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L189
	tst.b 6(%a2)
	jeq .L194
	moveq #4,%d0
.L190:
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L200
	moveq #7,%d0
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L202:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L189:
	tst.b 6(%a2)
	jeq .L196
	moveq #4,%d0
.L192:
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L197
	moveq #5,%d0
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L201:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L197:
	moveq #7,%d0
	pea 8000.w
	pea 20.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L201
.L196:
	moveq #6,%d0
	jra .L192
.L194:
	moveq #6,%d0
	jra .L190
.L200:
	moveq #5,%d0
	pea 8000.w
	pea 19.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L202
	.even
	.globl	__Z8sfxBlockP12SoundHandler
__Z8sfxBlockP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L216
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L216:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L206
	tst.b 6(%a2)
	jeq .L211
	moveq #4,%d0
.L207:
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L217
	moveq #7,%d0
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L219:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L206:
	tst.b 6(%a2)
	jeq .L213
	moveq #4,%d0
.L209:
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L214
	moveq #5,%d0
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L218:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L214:
	moveq #7,%d0
	pea 8000.w
	pea 22.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L218
.L213:
	moveq #6,%d0
	jra .L209
.L211:
	moveq #6,%d0
	jra .L207
.L217:
	moveq #5,%d0
	pea 8000.w
	pea 21.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L219
	.even
	.globl	__Z12sfxGroanMaleP12SoundHandler
__Z12sfxGroanMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L233
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L233:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L223
	tst.b 6(%a2)
	jeq .L228
	moveq #4,%d0
.L224:
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L234
	moveq #7,%d0
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L236:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L223:
	tst.b 6(%a2)
	jeq .L230
	moveq #4,%d0
.L226:
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L231
	moveq #5,%d0
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L235:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L231:
	moveq #7,%d0
	pea 8000.w
	pea 24.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L235
.L230:
	moveq #6,%d0
	jra .L226
.L228:
	moveq #6,%d0
	jra .L224
.L234:
	moveq #5,%d0
	pea 8000.w
	pea 23.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L236
	.even
	.globl	__Z14sfxGroanFemaleP12SoundHandler
__Z14sfxGroanFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L250
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L250:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L240
	tst.b 6(%a2)
	jeq .L245
	moveq #4,%d0
.L241:
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L251
	moveq #7,%d0
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L253:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L240:
	tst.b 6(%a2)
	jeq .L247
	moveq #4,%d0
.L243:
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L248
	moveq #5,%d0
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L252:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L248:
	moveq #7,%d0
	pea 8000.w
	pea 26.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L252
.L247:
	moveq #6,%d0
	jra .L243
.L245:
	moveq #6,%d0
	jra .L241
.L251:
	moveq #5,%d0
	pea 8000.w
	pea 25.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L253
	.even
	.globl	__Z6sfxHitP12SoundHandler
__Z6sfxHitP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L267
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L267:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L257
	tst.b 6(%a2)
	jeq .L262
	moveq #4,%d0
.L258:
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L268
	moveq #7,%d0
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L270:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L257:
	tst.b 6(%a2)
	jeq .L264
	moveq #4,%d0
.L260:
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L265
	moveq #5,%d0
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L269:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L265:
	moveq #7,%d0
	pea 8000.w
	pea 28.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L269
.L264:
	moveq #6,%d0
	jra .L260
.L262:
	moveq #6,%d0
	jra .L258
.L268:
	moveq #5,%d0
	pea 8000.w
	pea 27.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L270
	.even
	.globl	__Z9sfxImpactP12SoundHandler
__Z9sfxImpactP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L272
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L276
	moveq #4,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L277
.L279:
	moveq #5,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L272:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L276:
	moveq #6,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L279
.L277:
	moveq #7,%d0
	pea 8000.w
	pea 29.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L272
	.even
	.globl	__Z8sfxBloodP12SoundHandler
__Z8sfxBloodP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L293
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L293:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L283
	tst.b 6(%a2)
	jeq .L288
	moveq #4,%d0
.L284:
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L294
	moveq #7,%d0
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L296:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L283:
	tst.b 6(%a2)
	jeq .L290
	moveq #4,%d0
.L286:
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L291
	moveq #5,%d0
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L295:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L291:
	moveq #7,%d0
	pea 8000.w
	pea 33.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L295
.L290:
	moveq #6,%d0
	jra .L286
.L288:
	moveq #6,%d0
	jra .L284
.L294:
	moveq #5,%d0
	pea 8000.w
	pea 32.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L296
	.even
	.globl	__Z8sfxSwingP12SoundHandler
__Z8sfxSwingP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L310
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L310:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L300
	tst.b 6(%a2)
	jeq .L305
	moveq #4,%d0
.L301:
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L311
	moveq #7,%d0
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L313:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L300:
	tst.b 6(%a2)
	jeq .L307
	moveq #4,%d0
.L303:
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L308
	moveq #5,%d0
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L312:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L308:
	moveq #7,%d0
	pea 8000.w
	pea 31.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L312
.L307:
	moveq #6,%d0
	jra .L303
.L305:
	moveq #6,%d0
	jra .L301
.L311:
	moveq #5,%d0
	pea 8000.w
	pea 30.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L313
	.even
	.globl	__Z7sfxThudP12SoundHandler
__Z7sfxThudP12SoundHandler:
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
	pea 42.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L320
.L322:
	moveq #5,%d0
	pea 8000.w
	pea 42.w
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
	pea 42.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L322
.L320:
	moveq #7,%d0
	pea 8000.w
	pea 42.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L315
	.even
	.globl	__Z9sfxTruFunP12SoundHandler
__Z9sfxTruFunP12SoundHandler:
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
	pea 57.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L329
.L331:
	moveq #5,%d0
	pea 8000.w
	pea 57.w
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
	pea 57.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L331
.L329:
	moveq #7,%d0
	pea 8000.w
	pea 57.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L324
	.even
	.globl	__Z12sfxTitleRiseP12SoundHandler
__Z12sfxTitleRiseP12SoundHandler:
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
	pea 58.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L338
.L340:
	moveq #5,%d0
	pea 8000.w
	pea 58.w
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
	pea 58.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L340
.L338:
	moveq #7,%d0
	pea 8000.w
	pea 58.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L333
	.even
	.globl	__Z12sfxTitleThudP12SoundHandler
__Z12sfxTitleThudP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L342
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L346
	moveq #4,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L347
.L349:
	moveq #5,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L342:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L346:
	moveq #6,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L349
.L347:
	moveq #7,%d0
	pea 8000.w
	pea 59.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L342
	.even
	.globl	__Z13sfxTitleStartP12SoundHandler
__Z13sfxTitleStartP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L351
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L355
	moveq #4,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L356
.L358:
	moveq #5,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L351:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L355:
	moveq #6,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L358
.L356:
	moveq #7,%d0
	pea 8000.w
	pea 60.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L351
	.even
	.globl	__Z11sfxYellMaleP12SoundHandler
__Z11sfxYellMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L372
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L372:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L362
	tst.b 6(%a2)
	jeq .L367
	moveq #4,%d0
.L363:
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L373
	moveq #7,%d0
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L375:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L362:
	tst.b 6(%a2)
	jeq .L369
	moveq #4,%d0
.L365:
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L370
	moveq #5,%d0
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L374:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L370:
	moveq #7,%d0
	pea 8000.w
	pea 35.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L374
.L369:
	moveq #6,%d0
	jra .L365
.L367:
	moveq #6,%d0
	jra .L363
.L373:
	moveq #5,%d0
	pea 8000.w
	pea 34.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L375
	.even
	.globl	__Z13sfxYellFemaleP12SoundHandler
__Z13sfxYellFemaleP12SoundHandler:
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
	pea 36.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L382
.L384:
	moveq #5,%d0
	pea 8000.w
	pea 36.w
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
	pea 36.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L384
.L382:
	moveq #7,%d0
	pea 8000.w
	pea 36.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L377
	.even
	.globl	__Z11sfxYellKangP12SoundHandler
__Z11sfxYellKangP12SoundHandler:
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
	pea 37.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L391
.L393:
	moveq #5,%d0
	pea 8000.w
	pea 37.w
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
	pea 37.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L393
.L391:
	moveq #7,%d0
	pea 8000.w
	pea 37.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L386
	.even
	.globl	__Z11sfxJumpMaleP12SoundHandler
__Z11sfxJumpMaleP12SoundHandler:
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
	pea 38.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L400
.L402:
	moveq #5,%d0
	pea 8000.w
	pea 38.w
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
	pea 38.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L402
.L400:
	moveq #7,%d0
	pea 8000.w
	pea 38.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L395
	.even
	.globl	__Z13sfxJumpFemaleP12SoundHandler
__Z13sfxJumpFemaleP12SoundHandler:
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
	pea 39.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L409
.L411:
	moveq #5,%d0
	pea 8000.w
	pea 39.w
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
	pea 39.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L411
.L409:
	moveq #7,%d0
	pea 8000.w
	pea 39.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L404
	.even
	.globl	__Z12sfxJumpNinjaP12SoundHandler
__Z12sfxJumpNinjaP12SoundHandler:
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
	pea 40.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L418
.L420:
	moveq #5,%d0
	pea 8000.w
	pea 40.w
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
	pea 40.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L420
.L418:
	moveq #7,%d0
	pea 8000.w
	pea 40.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L413
	.even
	.globl	__Z12sfxThrowMaleP12SoundHandler
__Z12sfxThrowMaleP12SoundHandler:
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
	pea 54.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L427
.L429:
	moveq #5,%d0
	pea 8000.w
	pea 54.w
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
	pea 54.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L429
.L427:
	moveq #7,%d0
	pea 8000.w
	pea 54.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L422
	.even
	.globl	__Z14sfxThrowFemaleP12SoundHandler
__Z14sfxThrowFemaleP12SoundHandler:
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
	pea 55.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L436
.L438:
	moveq #5,%d0
	pea 8000.w
	pea 55.w
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
	pea 55.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L438
.L436:
	moveq #7,%d0
	pea 8000.w
	pea 55.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L431
	.even
	.globl	__Z13sfxThrowNinjaP12SoundHandler
__Z13sfxThrowNinjaP12SoundHandler:
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
	pea 56.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L445
.L447:
	moveq #5,%d0
	pea 8000.w
	pea 56.w
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
	pea 56.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L447
.L445:
	moveq #7,%d0
	pea 8000.w
	pea 56.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L440
	.even
	.globl	__Z11sfxJumpRollP12SoundHandler
__Z11sfxJumpRollP12SoundHandler:
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
	pea 41.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L454
.L456:
	moveq #5,%d0
	pea 8000.w
	pea 41.w
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
	pea 41.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L456
.L454:
	moveq #7,%d0
	pea 8000.w
	pea 41.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L449
	.even
	.globl	__Z11sfxCageYeahP12SoundHandler
__Z11sfxCageYeahP12SoundHandler:
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
	pea 51.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L463
.L465:
	moveq #5,%d0
	pea 8000.w
	pea 51.w
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
	pea 51.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L465
.L463:
	moveq #7,%d0
	pea 8000.w
	pea 51.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L458
	.even
	.globl	__Z16sfxCageGreenboltP12SoundHandler
__Z16sfxCageGreenboltP12SoundHandler:
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
	pea 61.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L472
.L474:
	moveq #5,%d0
	pea 8000.w
	pea 61.w
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
	pea 61.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L474
.L472:
	moveq #7,%d0
	pea 8000.w
	pea 61.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L467
	.even
	.globl	__Z11sfxKanoYellP12SoundHandler
__Z11sfxKanoYellP12SoundHandler:
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
	pea 52.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L481
.L483:
	moveq #5,%d0
	pea 8000.w
	pea 52.w
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
	pea 52.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L483
.L481:
	moveq #7,%d0
	pea 8000.w
	pea 52.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L476
	.even
	.globl	__Z12sfxKanoKnifeP12SoundHandler
__Z12sfxKanoKnifeP12SoundHandler:
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
	pea 62.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L490
.L492:
	moveq #5,%d0
	pea 8000.w
	pea 62.w
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
	pea 62.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L492
.L490:
	moveq #7,%d0
	pea 8000.w
	pea 62.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L485
	.even
	.globl	__Z16sfxKanoHeartbeatP12SoundHandler
__Z16sfxKanoHeartbeatP12SoundHandler:
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
	pea 86.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L499
.L501:
	moveq #5,%d0
	pea 8000.w
	pea 86.w
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
	pea 86.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L501
.L499:
	moveq #7,%d0
	pea 8000.w
	pea 86.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L494
	.even
	.globl	__Z15sfxKanoHeartripP12SoundHandler
__Z15sfxKanoHeartripP12SoundHandler:
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
	pea 87.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L508
.L510:
	moveq #5,%d0
	pea 8000.w
	pea 87.w
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
	pea 87.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L510
.L508:
	moveq #7,%d0
	pea 8000.w
	pea 87.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L503
	.even
	.globl	__Z22sfxKanoCannonBallStartP12SoundHandler
__Z22sfxKanoCannonBallStartP12SoundHandler:
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
	pea 72.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L517
.L519:
	moveq #5,%d0
	pea 8000.w
	pea 72.w
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
	pea 72.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L519
.L517:
	moveq #7,%d0
	pea 8000.w
	pea 72.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L512
	.even
	.globl	__Z17sfxKanoCannonBallP12SoundHandler
__Z17sfxKanoCannonBallP12SoundHandler:
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
	pea 73.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L526
.L528:
	moveq #5,%d0
	pea 8000.w
	pea 73.w
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
	pea 73.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L528
.L526:
	moveq #7,%d0
	pea 8000.w
	pea 73.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L521
	.even
	.globl	__Z13sfxSonyaRingsP12SoundHandler
__Z13sfxSonyaRingsP12SoundHandler:
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
	pea 65.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L535
.L537:
	moveq #5,%d0
	pea 8000.w
	pea 65.w
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
	pea 65.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L537
.L535:
	moveq #7,%d0
	pea 8000.w
	pea 65.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L530
	.even
	.globl	__Z12sfxSonyaKissP12SoundHandler
__Z12sfxSonyaKissP12SoundHandler:
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
	pea 95.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L544
.L546:
	moveq #5,%d0
	pea 8000.w
	pea 95.w
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
	pea 95.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L546
.L544:
	moveq #7,%d0
	pea 8000.w
	pea 95.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L539
	.even
	.globl	__Z16sfxSubzeroFreezeP12SoundHandler
__Z16sfxSubzeroFreezeP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L548
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L552
	moveq #4,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L553
.L555:
	moveq #5,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L548:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L552:
	moveq #6,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L555
.L553:
	moveq #7,%d0
	pea 8000.w
	pea 66.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L548
	.even
	.globl	__Z19sfxSubzeroFreezeEndP12SoundHandler
__Z19sfxSubzeroFreezeEndP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L557
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L561
	moveq #4,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L562
.L564:
	moveq #5,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L557:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L561:
	moveq #6,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L564
.L562:
	moveq #7,%d0
	pea 8000.w
	pea 67.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L557
	.even
	.globl	__Z15sfxSubzeroSlideP12SoundHandler
__Z15sfxSubzeroSlideP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L566
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L570
	moveq #4,%d0
	pea 8000.w
	pea 79.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L571
.L573:
	moveq #5,%d0
	pea 8000.w
	pea 79.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L566:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L570:
	moveq #6,%d0
	pea 8000.w
	pea 79.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L573
.L571:
	moveq #7,%d0
	pea 8000.w
	pea 79.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L566
	.even
	.globl	__Z16sfxScorpionSkullP12SoundHandler
__Z16sfxScorpionSkullP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L575
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L579
	moveq #4,%d0
	pea 8000.w
	pea 91.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L580
.L582:
	moveq #5,%d0
	pea 8000.w
	pea 91.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L575:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L579:
	moveq #6,%d0
	pea 8000.w
	pea 91.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L582
.L580:
	moveq #7,%d0
	pea 8000.w
	pea 91.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L575
	.even
	.globl	__Z21sfxScorpionSkullFlameP12SoundHandler
__Z21sfxScorpionSkullFlameP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L584
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L588
	moveq #4,%d0
	pea 8000.w
	pea 92.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L589
.L591:
	moveq #5,%d0
	pea 8000.w
	pea 92.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L584:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L588:
	moveq #6,%d0
	pea 8000.w
	pea 92.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L591
.L589:
	moveq #7,%d0
	pea 8000.w
	pea 92.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L584
	.even
	.globl	__Z18sfxScorpionHarpoonP12SoundHandler
__Z18sfxScorpionHarpoonP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L593
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L597
	moveq #4,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L598
.L600:
	moveq #5,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L593:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L597:
	moveq #6,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L600
.L598:
	moveq #7,%d0
	pea 8000.w
	pea 68.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L593
	.even
	.globl	__Z19sfxScorpionTeleportP12SoundHandler
__Z19sfxScorpionTeleportP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L602
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L606
	moveq #4,%d0
	pea 8000.w
	pea 78.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L607
.L609:
	moveq #5,%d0
	pea 8000.w
	pea 78.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L602:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L606:
	moveq #6,%d0
	pea 8000.w
	pea 78.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L609
.L607:
	moveq #7,%d0
	pea 8000.w
	pea 78.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L602
	.even
	.globl	__Z22sfxScorpionGetOverHereP12SoundHandler
__Z22sfxScorpionGetOverHereP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jne .L623
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L623:
	eor.b #1,6(%a2)
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L613
	tst.b 6(%a2)
	jeq .L618
	moveq #4,%d0
.L614:
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L624
	moveq #7,%d0
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L626:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L613:
	tst.b 6(%a2)
	jeq .L620
	moveq #4,%d0
.L616:
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L621
	moveq #5,%d0
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L625:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L621:
	moveq #7,%d0
	pea 8000.w
	pea 70.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L625
.L620:
	moveq #6,%d0
	jra .L616
.L618:
	moveq #6,%d0
	jra .L614
.L624:
	moveq #5,%d0
	pea 8000.w
	pea 69.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L626
	.even
	.globl	__Z18sfxRaidenLightningP12SoundHandler
__Z18sfxRaidenLightningP12SoundHandler:
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
	pea 63.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L633
.L635:
	moveq #5,%d0
	pea 8000.w
	pea 63.w
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
	pea 63.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L635
.L633:
	moveq #7,%d0
	pea 8000.w
	pea 63.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L628
	.even
	.globl	__Z21sfxRaidenLightningEndP12SoundHandler
__Z21sfxRaidenLightningEndP12SoundHandler:
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
	pea 64.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L642
.L644:
	moveq #5,%d0
	pea 8000.w
	pea 64.w
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
	pea 64.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L644
.L642:
	moveq #7,%d0
	pea 8000.w
	pea 64.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L637
	.even
	.globl	__Z17sfxRaidenTeleportP12SoundHandler
__Z17sfxRaidenTeleportP12SoundHandler:
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
	pea 74.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L651
.L653:
	moveq #5,%d0
	pea 8000.w
	pea 74.w
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
	pea 74.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L653
.L651:
	moveq #7,%d0
	pea 8000.w
	pea 74.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L646
	.even
	.globl	__Z16sfxRaidenTorpedoP12SoundHandler
__Z16sfxRaidenTorpedoP12SoundHandler:
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
	pea 75.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L660
.L662:
	moveq #5,%d0
	pea 8000.w
	pea 75.w
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
	pea 75.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L662
.L660:
	moveq #7,%d0
	pea 8000.w
	pea 75.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L655
	.even
	.globl	__Z16sfxRaidenHeadZapP12SoundHandler
__Z16sfxRaidenHeadZapP12SoundHandler:
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
	pea 88.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L669
.L671:
	moveq #5,%d0
	pea 8000.w
	pea 88.w
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
	pea 88.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L671
.L669:
	moveq #7,%d0
	pea 8000.w
	pea 88.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L664
	.even
	.globl	__Z16sfxRaidenIdleZapP12SoundHandler
__Z16sfxRaidenIdleZapP12SoundHandler:
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
	pea 76.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L678
.L680:
	moveq #5,%d0
	pea 8000.w
	pea 76.w
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
	pea 76.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L680
.L678:
	moveq #7,%d0
	pea 8000.w
	pea 76.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L673
	.even
	.globl	__Z17sfxKangFlyingKickP12SoundHandler
__Z17sfxKangFlyingKickP12SoundHandler:
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
	pea 77.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L687
.L689:
	moveq #5,%d0
	pea 8000.w
	pea 77.w
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
	pea 77.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L689
.L687:
	moveq #7,%d0
	pea 8000.w
	pea 77.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L682
	.even
	.globl	__Z15sfxKanoHeadbuttP12SoundHandler
__Z15sfxKanoHeadbuttP12SoundHandler:
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
	pea 53.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L696
.L698:
	moveq #5,%d0
	pea 8000.w
	pea 53.w
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
	pea 53.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L698
.L696:
	moveq #7,%d0
	pea 8000.w
	pea 53.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L691
	.even
	.globl	__Z17sfxKasumiFireballP12SoundHandler
__Z17sfxKasumiFireballP12SoundHandler:
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
	pea 82.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L705
.L707:
	moveq #5,%d0
	pea 8000.w
	pea 82.w
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
	pea 82.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L707
.L705:
	moveq #7,%d0
	pea 8000.w
	pea 82.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L700
	.even
	.globl	__Z15sfxKangFatalityP12SoundHandler
__Z15sfxKangFatalityP12SoundHandler:
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
	pea 90.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L714
.L716:
	moveq #5,%d0
	pea 8000.w
	pea 90.w
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
	pea 90.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L716
.L714:
	moveq #7,%d0
	pea 8000.w
	pea 90.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L709
	.even
	.globl	__Z11sfxCrowdAwwP12SoundHandler
__Z11sfxCrowdAwwP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L718
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L722
	moveq #4,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L723
.L725:
	moveq #5,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L718:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L722:
	moveq #6,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L725
.L723:
	moveq #7,%d0
	pea 8000.w
	pea 43.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L718
	.even
	.globl	__Z12sfxCrowdClapP12SoundHandler
__Z12sfxCrowdClapP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L727
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L731
	moveq #4,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L732
.L734:
	moveq #5,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L727:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L731:
	moveq #6,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L734
.L732:
	moveq #7,%d0
	pea 8000.w
	pea 71.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L727
	.even
	.globl	__Z15sfxFatalityGongP12SoundHandler
__Z15sfxFatalityGongP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L736
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L740
	moveq #4,%d0
	pea 8000.w
	pea 83.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L741
.L743:
	moveq #5,%d0
	pea 8000.w
	pea 83.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L736:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L740:
	moveq #6,%d0
	pea 8000.w
	pea 83.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L743
.L741:
	moveq #7,%d0
	pea 8000.w
	pea 83.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L736
	.even
	.globl	__Z21sfxFatalityScreamMaleP12SoundHandler
__Z21sfxFatalityScreamMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L745
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L749
	moveq #4,%d0
	pea 8000.w
	pea 93.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L750
.L752:
	moveq #5,%d0
	pea 8000.w
	pea 93.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L745:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L749:
	moveq #6,%d0
	pea 8000.w
	pea 93.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L752
.L750:
	moveq #7,%d0
	pea 8000.w
	pea 93.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L745
	.even
	.globl	__Z23sfxFatalityScreamFemaleP12SoundHandler
__Z23sfxFatalityScreamFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L754
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L758
	moveq #4,%d0
	pea 8000.w
	pea 94.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L759
.L761:
	moveq #5,%d0
	pea 8000.w
	pea 94.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L754:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L758:
	moveq #6,%d0
	pea 8000.w
	pea 94.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L761
.L759:
	moveq #7,%d0
	pea 8000.w
	pea 94.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L754
	.even
	.globl	__Z20sfxFatalityGroanMaleP12SoundHandler
__Z20sfxFatalityGroanMaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L763
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L767
	moveq #4,%d0
	pea 8000.w
	pea 84.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L768
.L770:
	moveq #5,%d0
	pea 8000.w
	pea 84.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L763:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L767:
	moveq #6,%d0
	pea 8000.w
	pea 84.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L770
.L768:
	moveq #7,%d0
	pea 8000.w
	pea 84.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L763
	.even
	.globl	__Z22sfxFatalityGroanFemaleP12SoundHandler
__Z22sfxFatalityGroanFemaleP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L772
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L776
	moveq #4,%d0
	pea 8000.w
	pea 85.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L777
.L779:
	moveq #5,%d0
	pea 8000.w
	pea 85.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L772:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L776:
	moveq #6,%d0
	pea 8000.w
	pea 85.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L779
.L777:
	moveq #7,%d0
	pea 8000.w
	pea 85.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L772
	.even
	.globl	__Z20sfxFatalityGroanKangP12SoundHandler
__Z20sfxFatalityGroanKangP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L781
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L785
	moveq #4,%d0
	pea 8000.w
	pea 89.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L786
.L788:
	moveq #5,%d0
	pea 8000.w
	pea 89.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L781:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L785:
	moveq #6,%d0
	pea 8000.w
	pea 89.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L788
.L786:
	moveq #7,%d0
	pea 8000.w
	pea 89.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L781
	.even
	.globl	__Z21sfxAnnouncerExcellentP12SoundHandler
__Z21sfxAnnouncerExcellentP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L790
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L794
	moveq #4,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L795
.L797:
	moveq #5,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L790:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L794:
	moveq #6,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L797
.L795:
	moveq #7,%d0
	pea 8000.w
	pea 44.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L790
	.even
	.globl	__Z17sfxAnnouncerLaughP12SoundHandler
__Z17sfxAnnouncerLaughP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L799
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L803
	moveq #4,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L804
.L806:
	moveq #5,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L799:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L803:
	moveq #6,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L806
.L804:
	moveq #7,%d0
	pea 8000.w
	pea 45.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L799
	.even
	.globl	__Z23sfxAnnouncerShowNoMercyP12SoundHandler
__Z23sfxAnnouncerShowNoMercyP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L808
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L812
	moveq #4,%d0
	pea 8000.w
	pea 81.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L813
.L815:
	moveq #5,%d0
	pea 8000.w
	pea 81.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L808:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L812:
	moveq #6,%d0
	pea 8000.w
	pea 81.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L815
.L813:
	moveq #7,%d0
	pea 8000.w
	pea 81.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L808
	.even
	.globl	__Z12sfxFinishHerP12SoundHandler
__Z12sfxFinishHerP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L817
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L821
	moveq #4,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L822
.L824:
	moveq #5,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L817:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L821:
	moveq #6,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L824
.L822:
	moveq #7,%d0
	pea 8000.w
	pea 46.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L817
	.even
	.globl	__Z12sfxFinishHimP12SoundHandler
__Z12sfxFinishHimP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L826
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L830
	moveq #4,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L831
.L833:
	moveq #5,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L826:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L830:
	moveq #6,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L833
.L831:
	moveq #7,%d0
	pea 8000.w
	pea 47.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L826
	.even
	.globl	__Z7sfxWinsP12SoundHandler
__Z7sfxWinsP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L835
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L839
	moveq #4,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L840
.L842:
	moveq #5,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L835:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L839:
	moveq #6,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L842
.L840:
	moveq #7,%d0
	pea 8000.w
	pea 48.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L835
	.even
	.globl	__Z11sfxFlawlessP12SoundHandler
__Z11sfxFlawlessP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L844
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L848
	moveq #4,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L849
.L851:
	moveq #5,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L844:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L848:
	moveq #6,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L851
.L849:
	moveq #7,%d0
	pea 8000.w
	pea 49.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L844
	.even
	.globl	__Z11sfxFatalityP12SoundHandler
__Z11sfxFatalityP12SoundHandler:
	link.w %fp,#0
	move.l %a3,-(%sp)
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b (%a2)
	jeq .L853
	move.b 6(%a2),%d0
	eor.b #1,%d0
	move.b %d0,6(%a2)
	jeq .L857
	moveq #4,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jeq .L858
.L860:
	moveq #5,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
.L853:
	move.l -8(%fp),%a2
	move.l -4(%fp),%a3
	unlk %fp
	rts
.L857:
	moveq #6,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	lea u235PlaySampleFreq,%a3
	jsr (%a3)
	lea (12,%sp),%sp
	tst.b 6(%a2)
	jne .L860
.L858:
	moveq #7,%d0
	pea 8000.w
	pea 50.w
	move.l %d0,-(%sp)
	jsr (%a3)
	lea (12,%sp),%sp
	jra .L853
	.even
	.globl	__Z10musicTitleP12SoundHandler
__Z10musicTitleP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L866
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L866:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #14181936,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.w 4(%a2),%d0
	jlt .L867
	asr.w #2,%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
.L867:
	addq.w #3,%d0
	asr.w #2,%d0
	move.w %d0,%a0
	move.l %a0,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z19musicStageCourtyardP12SoundHandler
__Z19musicStageCourtyardP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L872
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L872:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #14271872,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.w 4(%a2),%a2
	move.l %a2,8(%fp)
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
	jne .L877
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L877:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #14319136,-(%sp)
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
	jne .L882
	unlk %fp
	rts
.L882:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #14376352,-(%sp)
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
	jne .L887
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L887:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #14435104,-(%sp)
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
	jne .L892
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L892:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #14480320,-(%sp)
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
	jne .L897
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L897:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #14523328,-(%sp)
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
	jne .L905
	moveq #6,%d0
	unlk %fp
	rts
.L905:
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
