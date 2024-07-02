#NO_APP
	.text
	.even
	.globl	__Z8sfxFightP12SoundHandler
__Z8sfxFightP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L4
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L4:
	pea 8000.w
	pea 10.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 10.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z13sfxJohnnyCageP12SoundHandlerb
__Z13sfxJohnnyCageP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L9
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L9:
	pea 8000.w
	pea 3.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 3.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z7sfxKanoP12SoundHandlerb
__Z7sfxKanoP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L14
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L14:
	pea 8000.w
	pea 4.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 4.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z9sfxRaidenP12SoundHandlerb
__Z9sfxRaidenP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L19
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L19:
	pea 8000.w
	pea 5.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 5.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z10sfxLiuKangP12SoundHandlerb
__Z10sfxLiuKangP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L24
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L24:
	pea 8000.w
	pea 6.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 6.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxScorpionP12SoundHandlerb
__Z11sfxScorpionP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L29
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L29:
	pea 8000.w
	pea 7.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 7.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z10sfxSubzeroP12SoundHandlerb
__Z10sfxSubzeroP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L34
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L34:
	pea 8000.w
	pea 8.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 8.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z8sfxSonyaP12SoundHandlerb
__Z8sfxSonyaP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L39
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L39:
	pea 8000.w
	pea 9.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 9.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxP1CursorP12SoundHandler
__Z11sfxP1CursorP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L44
	unlk %fp
	rts
.L44:
	pea 8000.w
	clr.l -(%sp)
	pea 4.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z11sfxP2CursorP12SoundHandler
__Z11sfxP2CursorP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L49
	unlk %fp
	rts
.L49:
	pea 8000.w
	pea 1.w
	pea 5.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z11sfxSelectedP12SoundHandler
__Z11sfxSelectedP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L54
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L54:
	pea 8000.w
	pea 2.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 2.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z7sfxGongP12SoundHandler
__Z7sfxGongP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L59
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L59:
	pea 8000.w
	pea 11.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 11.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z8sfxIntroP12SoundHandler
__Z8sfxIntroP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L64
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L64:
	pea 8000.w
	pea 12.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 12.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxHiyaMaleP12SoundHandlerb
__Z11sfxHiyaMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L70
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L70:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L71
	pea 8000.w
	pea 16.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 16.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L71:
	pea 8000.w
	pea 15.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 15.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z13sfxHiyaFemaleP12SoundHandlerb
__Z13sfxHiyaFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L77
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L77:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L78
	pea 8000.w
	pea 14.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 14.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L78:
	pea 8000.w
	pea 13.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 13.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxHiyaKangP12SoundHandlerb
__Z11sfxHiyaKangP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L84
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L84:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L85
	pea 8000.w
	pea 18.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 18.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L85:
	pea 8000.w
	pea 17.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 17.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxHiyaNinjaP12SoundHandlerb
__Z12sfxHiyaNinjaP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L91
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L91:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L92
	pea 8000.w
	pea 20.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 20.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L92:
	pea 8000.w
	pea 19.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 19.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z8sfxBlockP12SoundHandlerb
__Z8sfxBlockP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L98
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L98:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L99
	pea 8000.w
	pea 22.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 22.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L99:
	pea 8000.w
	pea 21.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 21.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxGroanMaleP12SoundHandlerb
__Z12sfxGroanMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L105
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L105:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L106
	pea 8000.w
	pea 24.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 24.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L106:
	pea 8000.w
	pea 23.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 23.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z14sfxGroanFemaleP12SoundHandlerb
__Z14sfxGroanFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L112
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L112:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L113
	pea 8000.w
	pea 26.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 26.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L113:
	pea 8000.w
	pea 25.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 25.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z6sfxHitP12SoundHandler
__Z6sfxHitP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L119
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L119:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L120
	pea 8000.w
	pea 28.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 28.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L120:
	pea 8000.w
	pea 27.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 27.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z9sfxImpactP12SoundHandler
__Z9sfxImpactP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L125
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L125:
	pea 8000.w
	pea 29.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 29.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z8sfxBloodP12SoundHandler
__Z8sfxBloodP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L131
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L131:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L132
	pea 8000.w
	pea 33.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 33.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L132:
	pea 8000.w
	pea 32.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 32.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z8sfxSwingP12SoundHandler
__Z8sfxSwingP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L138
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L138:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L139
	pea 8000.w
	pea 31.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 31.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L139:
	pea 8000.w
	pea 30.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 30.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z7sfxThudP12SoundHandler
__Z7sfxThudP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L144
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L144:
	pea 8000.w
	pea 42.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 42.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z9sfxTruFunP12SoundHandler
__Z9sfxTruFunP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L149
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L149:
	pea 8000.w
	pea 57.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 57.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxTitleRiseP12SoundHandler
__Z12sfxTitleRiseP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L154
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L154:
	pea 8000.w
	pea 58.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 58.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxTitleThudP12SoundHandler
__Z12sfxTitleThudP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L159
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L159:
	pea 8000.w
	pea 59.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 59.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z13sfxTitleStartP12SoundHandler
__Z13sfxTitleStartP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L164
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L164:
	pea 8000.w
	pea 60.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 60.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxYellMaleP12SoundHandlerb
__Z11sfxYellMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L170
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L170:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L171
	pea 8000.w
	pea 35.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 35.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L171:
	pea 8000.w
	pea 34.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 34.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z13sfxYellFemaleP12SoundHandlerb
__Z13sfxYellFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L176
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L176:
	pea 8000.w
	pea 36.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 36.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxYellKangP12SoundHandlerb
__Z11sfxYellKangP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L181
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L181:
	pea 8000.w
	pea 37.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 37.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxJumpMaleP12SoundHandlerb
__Z11sfxJumpMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L186
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L186:
	pea 8000.w
	pea 38.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 38.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z13sfxJumpFemaleP12SoundHandlerb
__Z13sfxJumpFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L191
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L191:
	pea 8000.w
	pea 39.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 39.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxJumpNinjaP12SoundHandlerb
__Z12sfxJumpNinjaP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L196
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L196:
	pea 8000.w
	pea 40.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 40.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxThrowMaleP12SoundHandlerb
__Z12sfxThrowMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L201
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L201:
	pea 8000.w
	pea 54.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 54.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z14sfxThrowFemaleP12SoundHandlerb
__Z14sfxThrowFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L206
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L206:
	pea 8000.w
	pea 55.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 55.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z13sfxThrowNinjaP12SoundHandlerb
__Z13sfxThrowNinjaP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L211
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L211:
	pea 8000.w
	pea 56.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 56.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxJumpRollP12SoundHandlerb
__Z11sfxJumpRollP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L216
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L216:
	pea 8000.w
	pea 41.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 41.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxCageYeahP12SoundHandlerb
__Z11sfxCageYeahP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L221
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L221:
	pea 8000.w
	pea 51.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 51.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z16sfxCageGreenboltP12SoundHandlerb
__Z16sfxCageGreenboltP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L226
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L226:
	pea 8000.w
	pea 61.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 61.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxKanoYellP12SoundHandlerb
__Z11sfxKanoYellP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L231
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L231:
	pea 8000.w
	pea 52.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 52.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxKanoKnifeP12SoundHandlerb
__Z12sfxKanoKnifeP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L236
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L236:
	pea 8000.w
	pea 62.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 62.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z13sfxSonyaRingsP12SoundHandlerb
__Z13sfxSonyaRingsP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L241
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L241:
	pea 8000.w
	pea 65.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 65.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z16sfxSubzeroFreezeP12SoundHandlerb
__Z16sfxSubzeroFreezeP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L246
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L246:
	pea 8000.w
	pea 66.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 66.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z19sfxSubzeroFreezeEndP12SoundHandlerb
__Z19sfxSubzeroFreezeEndP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L251
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L251:
	pea 8000.w
	pea 67.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 67.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z18sfxScorpionHarpoonP12SoundHandlerb
__Z18sfxScorpionHarpoonP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L256
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L256:
	pea 8000.w
	pea 68.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 68.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z22sfxScorpionGetOverHereP12SoundHandlerb
__Z22sfxScorpionGetOverHereP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L262
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L262:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L263
	pea 8000.w
	pea 70.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 70.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L263:
	pea 8000.w
	pea 69.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 69.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z18sfxRaidenLightningP12SoundHandlerb
__Z18sfxRaidenLightningP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L268
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L268:
	pea 8000.w
	pea 63.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 63.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z21sfxRaidenLightningEndP12SoundHandlerb
__Z21sfxRaidenLightningEndP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L273
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L273:
	pea 8000.w
	pea 64.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 64.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z15sfxKanoHeadbuttP12SoundHandlerb
__Z15sfxKanoHeadbuttP12SoundHandlerb:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L278
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L278:
	pea 8000.w
	pea 53.w
	pea 4.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 53.w
	pea 5.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxCrowdAwwP12SoundHandler
__Z11sfxCrowdAwwP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L283
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L283:
	pea 8000.w
	pea 43.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 43.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxCrowdClapP12SoundHandler
__Z12sfxCrowdClapP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L288
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L288:
	pea 8000.w
	pea 71.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 71.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z21sfxAnnouncerExcellentP12SoundHandler
__Z21sfxAnnouncerExcellentP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L293
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L293:
	pea 8000.w
	pea 44.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 44.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z17sfxAnnouncerLaughP12SoundHandler
__Z17sfxAnnouncerLaughP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L298
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L298:
	pea 8000.w
	pea 45.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 45.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxFinishHerP12SoundHandler
__Z12sfxFinishHerP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L303
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L303:
	pea 8000.w
	pea 46.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 46.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxFinishHimP12SoundHandler
__Z12sfxFinishHimP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L308
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L308:
	pea 8000.w
	pea 47.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 47.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z7sfxWinsP12SoundHandler
__Z7sfxWinsP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L313
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L313:
	pea 8000.w
	pea 48.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 48.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxFlawlessP12SoundHandler
__Z11sfxFlawlessP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L318
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L318:
	pea 8000.w
	pea 49.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 49.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxFatalityP12SoundHandler
__Z11sfxFatalityP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L323
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L323:
	pea 8000.w
	pea 50.w
	pea 6.w
	lea u235PlaySampleFreq,%a2
	jsr (%a2)
	lea (12,%sp),%sp
	pea 8000.w
	pea 50.w
	pea 7.w
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z10musicTitleP12SoundHandler
__Z10musicTitleP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L329
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L329:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13638256,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.l 6(%a2),%d0
	jlt .L330
	asr.l #2,%d0
	move.l %d0,8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
.L330:
	addq.l #3,%d0
	asr.l #2,%d0
	move.l %d0,8(%fp)
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
	jne .L335
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L335:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13728192,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.l 6(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z13musicStagePitP12SoundHandler
__Z13musicStagePitP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b 1(%a0)
	jne .L340
	unlk %fp
	rts
.L340:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13785408,-(%sp)
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
	jne .L345
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L345:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13844160,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.l 6(%a2),8(%fp)
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
	jne .L350
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L350:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13889376,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.l 6(%a2),8(%fp)
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
	jne .L355
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L355:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #13932384,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.l 6(%a2),8(%fp)
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
	.globl	colliders
	.data
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
