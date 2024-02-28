#NO_APP
	.text
	.even
	.globl	__Z8sfxFightP12SoundHandler
__Z8sfxFightP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L4
	unlk %fp
	rts
.L4:
	pea 8000.w
	pea 10.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z13sfxJohnnyCageP12SoundHandlerb
__Z13sfxJohnnyCageP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L6
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 3.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L6:
	unlk %fp
	rts
	.even
	.globl	__Z7sfxKanoP12SoundHandlerb
__Z7sfxKanoP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L12
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 4.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L12:
	unlk %fp
	rts
	.even
	.globl	__Z9sfxRaidenP12SoundHandlerb
__Z9sfxRaidenP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L18
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 5.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L18:
	unlk %fp
	rts
	.even
	.globl	__Z10sfxLiuKangP12SoundHandlerb
__Z10sfxLiuKangP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L24
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 6.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L24:
	unlk %fp
	rts
	.even
	.globl	__Z11sfxScorpionP12SoundHandlerb
__Z11sfxScorpionP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L30
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 7.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L30:
	unlk %fp
	rts
	.even
	.globl	__Z10sfxSubzeroP12SoundHandlerb
__Z10sfxSubzeroP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L36
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 8.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L36:
	unlk %fp
	rts
	.even
	.globl	__Z8sfxSonyaP12SoundHandlerb
__Z8sfxSonyaP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L42
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 9.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L42:
	unlk %fp
	rts
	.even
	.globl	__Z11sfxP1CursorP12SoundHandler
__Z11sfxP1CursorP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L51
	unlk %fp
	rts
.L51:
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
	jne .L56
	unlk %fp
	rts
.L56:
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
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L61
	unlk %fp
	rts
.L61:
	pea 8000.w
	pea 2.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z7sfxGongP12SoundHandler
__Z7sfxGongP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L66
	unlk %fp
	rts
.L66:
	pea 8000.w
	pea 11.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z8sfxIntroP12SoundHandler
__Z8sfxIntroP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L71
	unlk %fp
	rts
.L71:
	pea 8000.w
	pea 12.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z11sfxHiyaMaleP12SoundHandlerb
__Z11sfxHiyaMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L82
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L82:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L75
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 15.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L83:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L75:
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 16.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	jra .L83
	.even
	.globl	__Z13sfxHiyaFemaleP12SoundHandlerb
__Z13sfxHiyaFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L94
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L94:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L87
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 13.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L95:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L87:
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 14.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	jra .L95
	.even
	.globl	__Z11sfxHiyaKangP12SoundHandlerb
__Z11sfxHiyaKangP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L106
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L106:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L99
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 17.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L107:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L99:
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 18.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	jra .L107
	.even
	.globl	__Z12sfxHiyaNinjaP12SoundHandlerb
__Z12sfxHiyaNinjaP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L118
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L118:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L111
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 19.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L119:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L111:
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 20.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	jra .L119
	.even
	.globl	__Z8sfxBlockP12SoundHandlerb
__Z8sfxBlockP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L130
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L130:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L123
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 21.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L131:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L123:
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 22.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	jra .L131
	.even
	.globl	__Z12sfxGroanMaleP12SoundHandlerb
__Z12sfxGroanMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L142
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L142:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L135
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 23.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L143:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L135:
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 24.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	jra .L143
	.even
	.globl	__Z14sfxGroanFemaleP12SoundHandlerb
__Z14sfxGroanFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L154
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L154:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L147
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 25.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L155:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L147:
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 26.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	jra .L155
	.even
	.globl	__Z6sfxHitP12SoundHandler
__Z6sfxHitP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L161
	unlk %fp
	rts
.L161:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L162
	pea 8000.w
	pea 28.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
.L162:
	pea 8000.w
	pea 27.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z9sfxImpactP12SoundHandler
__Z9sfxImpactP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L167
	unlk %fp
	rts
.L167:
	pea 8000.w
	pea 29.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z8sfxBloodP12SoundHandler
__Z8sfxBloodP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L173
	unlk %fp
	rts
.L173:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L174
	pea 8000.w
	pea 33.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
.L174:
	pea 8000.w
	pea 32.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z8sfxSwingP12SoundHandler
__Z8sfxSwingP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L180
	unlk %fp
	rts
.L180:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L181
	pea 8000.w
	pea 31.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
.L181:
	pea 8000.w
	pea 30.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z7sfxThudP12SoundHandler
__Z7sfxThudP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L186
	unlk %fp
	rts
.L186:
	pea 8000.w
	pea 42.w
	pea 7.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z11sfxYellMaleP12SoundHandlerb
__Z11sfxYellMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L197
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L197:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L190
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 34.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L198:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L190:
	tst.b %d2
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 35.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	jra .L198
	.even
	.globl	__Z13sfxYellFemaleP12SoundHandlerb
__Z13sfxYellFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L200
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 36.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L200:
	unlk %fp
	rts
	.even
	.globl	__Z11sfxYellKangP12SoundHandlerb
__Z11sfxYellKangP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L206
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 37.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L206:
	unlk %fp
	rts
	.even
	.globl	__Z11sfxJumpMaleP12SoundHandlerb
__Z11sfxJumpMaleP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L212
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 38.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L212:
	unlk %fp
	rts
	.even
	.globl	__Z13sfxJumpFemaleP12SoundHandlerb
__Z13sfxJumpFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L218
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 39.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L218:
	unlk %fp
	rts
	.even
	.globl	__Z12sfxJumpNinjaP12SoundHandlerb
__Z12sfxJumpNinjaP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L224
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 40.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L224:
	unlk %fp
	rts
	.even
	.globl	__Z11sfxJumpRollP12SoundHandlerb
__Z11sfxJumpRollP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L230
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 41.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L230:
	unlk %fp
	rts
	.even
	.globl	__Z11sfxCageYeahP12SoundHandlerb
__Z11sfxCageYeahP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L236
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 51.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L236:
	unlk %fp
	rts
	.even
	.globl	__Z11sfxKanoYellP12SoundHandlerb
__Z11sfxKanoYellP12SoundHandlerb:
	link.w %fp,#0
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L242
	tst.b %d0
	seq %d0
	ext.w %d0
	pea 8000.w
	pea 52.w
	move.w #4,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
.L242:
	unlk %fp
	rts
	.even
	.globl	__Z11sfxCrowdAwwP12SoundHandler
__Z11sfxCrowdAwwP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L251
	unlk %fp
	rts
.L251:
	pea 8000.w
	pea 43.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z21sfxAnnouncerExcellentP12SoundHandler
__Z21sfxAnnouncerExcellentP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L256
	unlk %fp
	rts
.L256:
	pea 8000.w
	pea 44.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z17sfxAnnouncerLaughP12SoundHandler
__Z17sfxAnnouncerLaughP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L261
	unlk %fp
	rts
.L261:
	pea 8000.w
	pea 45.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z12sfxFinishHerP12SoundHandler
__Z12sfxFinishHerP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L266
	unlk %fp
	rts
.L266:
	pea 8000.w
	pea 46.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z12sfxFinishHimP12SoundHandler
__Z12sfxFinishHimP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L271
	unlk %fp
	rts
.L271:
	pea 8000.w
	pea 47.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z7sfxWinsP12SoundHandler
__Z7sfxWinsP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L276
	unlk %fp
	rts
.L276:
	pea 8000.w
	pea 48.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z11sfxFlawlessP12SoundHandler
__Z11sfxFlawlessP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L281
	unlk %fp
	rts
.L281:
	pea 8000.w
	pea 49.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z11sfxFatalityP12SoundHandler
__Z11sfxFatalityP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L286
	unlk %fp
	rts
.L286:
	pea 8000.w
	pea 50.w
	pea 6.w
	jsr u235PlaySampleFreq
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z10musicTitleP12SoundHandler
__Z10musicTitleP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L291
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L291:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #12723952,-(%sp)
	jsr __Z14u235PlayModuleis
	addq.l #8,%sp
	move.l 6(%a2),8(%fp)
	move.l -4(%fp),%a2
	unlk %fp
	jra _u235ModuleVol
	.even
	.globl	__Z10musicStageP12SoundHandler
__Z10musicStageP12SoundHandler:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l 8(%fp),%a2
	tst.b 1(%a2)
	jne .L296
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L296:
	jsr __Z14u235StopModulev
	jsr __Z11u235Silencev
	pea 1.w
	move.l #12813888,-(%sp)
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
