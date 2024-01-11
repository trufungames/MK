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
	clr.l -(%sp)
	pea 6.w
	move.l #fight_sam_end,%d0
	sub.l #fight_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea fight_sam
	pea 3.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z13sfxJohnnyCageP12SoundHandlerb
__Z13sfxJohnnyCageP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L6
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #johnnycage_sam_end,%d1
	sub.l #johnnycage_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea johnnycage_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L6:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z7sfxKanoP12SoundHandlerb
__Z7sfxKanoP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L12
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #kano_sam_end,%d1
	sub.l #kano_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea kano_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L12:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z9sfxRaidenP12SoundHandlerb
__Z9sfxRaidenP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L18
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #raiden_sam_end,%d1
	sub.l #raiden_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea raiden_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L18:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z10sfxLiuKangP12SoundHandlerb
__Z10sfxLiuKangP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L24
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #liukang_sam_end,%d1
	sub.l #liukang_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea liukang_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L24:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxScorpionP12SoundHandlerb
__Z11sfxScorpionP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L30
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #scorpion_sam_end,%d1
	sub.l #scorpion_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea scorpion_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L30:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z10sfxSubzeroP12SoundHandlerb
__Z10sfxSubzeroP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L36
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #subzero_sam_end,%d1
	sub.l #subzero_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea subzero_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L36:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z8sfxSonyaP12SoundHandlerb
__Z8sfxSonyaP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L42
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #sonya_sam_end,%d1
	sub.l #sonya_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea sonya_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L42:
	move.l -4(%fp),%d2
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
	clr.l -(%sp)
	pea 6.w
	move.l #p1cursor_sam_end,%d0
	sub.l #p1cursor_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea p1cursor_sam
	pea 1.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
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
	clr.l -(%sp)
	pea 6.w
	move.l #p2cursor_sam_end,%d0
	sub.l #p2cursor_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea p2cursor_sam
	pea 2.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z7sfxGongP12SoundHandler
__Z7sfxGongP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L61
	unlk %fp
	rts
.L61:
	clr.l -(%sp)
	pea 6.w
	move.l #gong_sam_end,%d0
	sub.l #gong_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea gong_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z8sfxIntroP12SoundHandler
__Z8sfxIntroP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L66
	unlk %fp
	rts
.L66:
	clr.l -(%sp)
	pea 6.w
	move.l #intro_sam_end,%d0
	sub.l #intro_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea intro_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
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
	jne .L77
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L77:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L70
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #hiya_male1_sam_end,%d1
	sub.l #hiya_male1_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea hiya_male1_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L78:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L70:
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #hiya_male2_sam_end,%d1
	sub.l #hiya_male2_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea hiya_male2_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
	jra .L78
	.even
	.globl	__Z13sfxHiyaFemaleP12SoundHandlerb
__Z13sfxHiyaFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L89
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L89:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L82
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #hiya_female1_sam_end,%d1
	sub.l #hiya_female1_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea hiya_female1_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L90:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L82:
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #hiya_female2_sam_end,%d1
	sub.l #hiya_female2_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea hiya_female2_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
	jra .L90
	.even
	.globl	__Z11sfxHiyaKangP12SoundHandlerb
__Z11sfxHiyaKangP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L101
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L101:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L94
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #hiya_kang1_sam_end,%d1
	sub.l #hiya_kang1_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea hiya_kang1_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L102:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L94:
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #hiya_kang2_sam_end,%d1
	sub.l #hiya_kang2_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea hiya_kang2_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
	jra .L102
	.even
	.globl	__Z12sfxHiyaNinjaP12SoundHandlerb
__Z12sfxHiyaNinjaP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L113
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L113:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L106
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #hiya_ninja1_sam_end,%d1
	sub.l #hiya_ninja1_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea hiya_ninja1_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L114:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L106:
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #hiya_ninja2_sam_end,%d1
	sub.l #hiya_ninja2_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea hiya_ninja2_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
	jra .L114
	.even
	.globl	__Z8sfxBlockP12SoundHandlerb
__Z8sfxBlockP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L125
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L125:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L118
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #block01_sam_end,%d1
	sub.l #block01_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea block01_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L126:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L118:
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #block02_sam_end,%d1
	sub.l #block02_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea block02_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
	jra .L126
	.even
	.globl	__Z12sfxGroanMaleP12SoundHandlerb
__Z12sfxGroanMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L137
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L137:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L130
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #groan_male01_sam_end,%d1
	sub.l #groan_male01_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea groan_male01_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L138:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L130:
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #groan_male02_sam_end,%d1
	sub.l #groan_male02_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea groan_male02_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
	jra .L138
	.even
	.globl	__Z14sfxGroanFemaleP12SoundHandlerb
__Z14sfxGroanFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d2
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L149
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L149:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L142
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #groan_female01_sam_end,%d1
	sub.l #groan_female01_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea groan_female01_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L150:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L142:
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #groan_female02_sam_end,%d1
	sub.l #groan_female02_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea groan_female02_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
	jra .L150
	.even
	.globl	__Z6sfxHitP12SoundHandler
__Z6sfxHitP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L156
	unlk %fp
	rts
.L156:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L157
	clr.l -(%sp)
	pea 6.w
	move.l #hit_02_sam_end,%d0
	sub.l #hit_02_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea hit_02_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
.L157:
	clr.l -(%sp)
	pea 6.w
	move.l #hit_01_sam_end,%d0
	sub.l #hit_01_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea hit_01_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z9sfxImpactP12SoundHandler
__Z9sfxImpactP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L162
	unlk %fp
	rts
.L162:
	clr.l -(%sp)
	pea 6.w
	move.l #hit_impact_sam_end,%d0
	sub.l #hit_impact_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea hit_impact_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z8sfxBloodP12SoundHandler
__Z8sfxBloodP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L168
	unlk %fp
	rts
.L168:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L169
	clr.l -(%sp)
	pea 6.w
	move.l #blood02_sam_end,%d0
	sub.l #blood02_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea blood02_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
.L169:
	clr.l -(%sp)
	pea 6.w
	move.l #blood01_sam_end,%d0
	sub.l #blood01_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea blood01_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z8sfxSwingP12SoundHandler
__Z8sfxSwingP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L175
	unlk %fp
	rts
.L175:
	jsr RAPTOR_random
	btst #0,%d0
	jne .L176
	clr.l -(%sp)
	pea 6.w
	move.l #swing_02_sam_end,%d0
	sub.l #swing_02_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea swing_02_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
.L176:
	clr.l -(%sp)
	pea 6.w
	move.l #swing_01_sam_end,%d0
	sub.l #swing_01_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea swing_01_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z7sfxThudP12SoundHandler
__Z7sfxThudP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L181
	unlk %fp
	rts
.L181:
	clr.l -(%sp)
	pea 6.w
	move.l #thud_sam_end,%d0
	sub.l #thud_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea thud_sam
	pea 4.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
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
	jne .L192
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L192:
	jsr RAPTOR_random
	btst #0,%d0
	jeq .L185
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #yell_male01_sam_end,%d1
	sub.l #yell_male01_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea yell_male01_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L193:
	move.l -4(%fp),%d2
	unlk %fp
	rts
.L185:
	tst.b %d2
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #yell_male02_sam_end,%d1
	sub.l #yell_male02_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea yell_male02_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
	jra .L193
	.even
	.globl	__Z13sfxYellFemaleP12SoundHandlerb
__Z13sfxYellFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L195
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #yell_female_sam_end,%d1
	sub.l #yell_female_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea yell_female_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L195:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxYellKangP12SoundHandlerb
__Z11sfxYellKangP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L201
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #yell_kang_sam_end,%d1
	sub.l #yell_kang_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea yell_kang_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L201:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxJumpMaleP12SoundHandlerb
__Z11sfxJumpMaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L207
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #jump_male_sam_end,%d1
	sub.l #jump_male_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea jump_male_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L207:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z13sfxJumpFemaleP12SoundHandlerb
__Z13sfxJumpFemaleP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L213
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #jump_female_sam_end,%d1
	sub.l #jump_female_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea jump_female_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L213:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z12sfxJumpNinjaP12SoundHandlerb
__Z12sfxJumpNinjaP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L219
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #jump_ninja_sam_end,%d1
	sub.l #jump_ninja_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea jump_ninja_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L219:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxJumpRollP12SoundHandlerb
__Z11sfxJumpRollP12SoundHandlerb:
	link.w %fp,#0
	move.l %d2,-(%sp)
	move.b 15(%fp),%d0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jeq .L225
	tst.b %d0
	seq %d0
	ext.w %d0
	clr.l -(%sp)
	pea 6.w
	move.l #jump_roll_sam_end,%d1
	sub.l #jump_roll_sam-3,%d1
	moveq #-4,%d2
	and.l %d1,%d2
	move.l %d2,-(%sp)
	pea jump_roll_sam
	move.w #1,%a0
	sub.w %d0,%a0
	move.l %a0,-(%sp)
	jsr zeroPlaySample
	lea (20,%sp),%sp
.L225:
	move.l -4(%fp),%d2
	unlk %fp
	rts
	.even
	.globl	__Z11sfxCrowdAwwP12SoundHandler
__Z11sfxCrowdAwwP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L234
	unlk %fp
	rts
.L234:
	clr.l -(%sp)
	pea 6.w
	move.l #crowd_aww_sam_end,%d0
	sub.l #crowd_aww_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea crowd_aww_sam
	pea 3.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z21sfxAnnouncerExcellentP12SoundHandler
__Z21sfxAnnouncerExcellentP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L239
	unlk %fp
	rts
.L239:
	clr.l -(%sp)
	pea 6.w
	move.l #announcer_excellent_sam_end,%d0
	sub.l #announcer_excellent_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea announcer_excellent_sam
	pea 3.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z17sfxAnnouncerLaughP12SoundHandler
__Z17sfxAnnouncerLaughP12SoundHandler:
	link.w %fp,#0
	move.l 8(%fp),%a0
	tst.b (%a0)
	jne .L244
	unlk %fp
	rts
.L244:
	clr.l -(%sp)
	pea 6.w
	move.l #announcer_laugh_sam_end,%d0
	sub.l #announcer_laugh_sam-3,%d0
	moveq #-4,%d1
	and.l %d0,%d1
	move.l %d1,-(%sp)
	pea announcer_laugh_sam
	pea 3.w
	jsr zeroPlaySample
	lea (20,%sp),%sp
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
