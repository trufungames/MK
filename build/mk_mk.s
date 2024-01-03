#NO_APP
	.text
	.even
	.globl	__Z15initTitleScreenv
__Z15initTitleScreenv:
	link.w %fp,#0
	lea __ZL8BLACKPAL,%a0
.L2:
	clr.l (%a0)+
	cmp.l #__ZL8BLACKPAL+512,%a0
	jne .L2
	pea __ZL11imageBuffer
	move.l #8397504,-(%sp)
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL11imageBuffer,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	addq.l #8,%sp
	pea 256.w
	clr.l -(%sp)
	pea __ZL8BLACKPAL
	jsr jsfLoadClut
	clr.b _fadedIn
	clr.b _fadedOut
	move.w raptor_ticks,%a0
	move.l %a0,_gameStartTicks
	move.b #1,_onTitleScreen
	lea (12,%sp),%sp
	unlk %fp
	rts
	.even
	.globl	__Z14initGameAssetsv
__Z14initGameAssetsv:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l sprite,%a0
	move.l #11656096,620(%a0)
	move.l #10083168,812(%a0)
	moveq #1,%d0
	move.l %d0,580(%a0)
	move.l %d0,772(%a0)
	pea 16.w
	pea 14.w
	move.l #12180384,-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	addq.l #8,%sp
	moveq #16,%d0
	move.l %d0,(%sp)
	pea 15.w
	move.l #11131744,-(%sp)
	jsr (%a2)
	lea (12,%sp),%sp
	move.l -4(%fp),%a2
	unlk %fp
	rts
	.even
	.globl	__Z25switchScreenChooseFighterv
__Z25switchScreenChooseFighterv:
	link.w %fp,#0
	movem.l #56,-(%sp)
	pea __ZL11imageBuffer
	move.l #8436128,-(%sp)
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL11imageBuffer,44(%a0)
	moveq #1,%d0
	move.l %d0,4(%a0)
	move.l %d0,388(%a0)
	move.l %d0,196(%a0)
	clr.b _onTitleScreen
	move.b #1,_onScreenChooseFighter
	addq.l #8,%sp
	pea 256.w
	clr.l -(%sp)
	move.l #8461824,-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	addq.l #8,%sp
	moveq #3,%d1
	move.l %d1,(%sp)
	pea 13.w
	move.l #12353312,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	moveq #16,%d0
	move.l %d0,(%sp)
	pea 14.w
	move.l #12180384,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	moveq #1,%d1
	move.l %d1,(%sp)
	pea __ZL11fighterKano
	lea __Z21fighterMakeSelectableP7Fighterb,%a4
	jsr (%a4)
	addq.l #4,%sp
	move.l #__ZL11fighterKano,(%sp)
	lea __Z11fighterShowP7Fighter,%a3
	jsr (%a3)
	moveq #16,%d0
	move.l %d0,(%sp)
	pea 15.w
	move.l #11131744,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL15fighterSubzero2
	jsr (%a4)
	addq.l #4,%sp
	move.l #__ZL15fighterSubzero2,(%sp)
	jsr (%a3)
	clr.b _fadedIn
	clr.b _fadedOut
	move.w raptor_ticks,%a0
	move.l %a0,_gameStartTicks
	addq.l #4,%sp
	movem.l -12(%fp),#7168
	unlk %fp
	rts
	.even
	.globl	__Z20switchScreenVsBattleii
__Z20switchScreenVsBattleii:
	link.w %fp,#0
	movem.l #12320,-(%sp)
	move.l 8(%fp),%d3
	move.l 12(%fp),%d2
	pea __ZL11imageBuffer
	move.l #8462336,-(%sp)
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL11imageBuffer,1580(%a0)
	moveq #1,%d0
	move.l %d0,1540(%a0)
	addq.l #8,%sp
	pea 16.w
	clr.l -(%sp)
	move.l #8469216,-(%sp)
	lea jsfLoadClut,%a2
	jsr (%a2)
	move.l sprite,%a0
	moveq #-1,%d0
	move.l %d0,1732(%a0)
	move.l %d0,1924(%a0)
	move.l %d0,2692(%a0)
	move.l %d0,2308(%a0)
	move.l %d0,2116(%a0)
	move.l %d0,2884(%a0)
	move.l %d0,2500(%a0)
	move.l %d0,3076(%a0)
	move.l %d0,3268(%a0)
	move.l %d0,4036(%a0)
	move.l %d0,3652(%a0)
	move.l %d0,3460(%a0)
	move.l %d0,4228(%a0)
	move.l %d0,3844(%a0)
	lea (12,%sp),%sp
	moveq #6,%d0
	cmp.l %d3,%d0
	jcs .L9
	add.l %d3,%d3
	move.w .L17(%pc,%d3.l),%d0
	jmp %pc@(2,%d0:w)
.L17:
	.word .L10-.L17
	.word .L11-.L17
	.word .L12-.L17
	.word .L13-.L17
	.word .L14-.L17
	.word .L15-.L17
	.word .L16-.L17
.L16:
	pea 16.w
	pea 4.w
	move.l #12366272,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,2884(%a0)
	lea (12,%sp),%sp
.L9:
	moveq #6,%d0
	cmp.l %d2,%d0
	jcs .L18
	add.l %d2,%d2
	move.w .L26(%pc,%d2.l),%d0
	jmp %pc@(2,%d0:w)
.L26:
	.word .L19-.L26
	.word .L20-.L26
	.word .L21-.L26
	.word .L22-.L26
	.word .L23-.L26
	.word .L24-.L26
	.word .L25-.L26
.L25:
	pea 16.w
	pea 5.w
	move.l #12366272,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,4228(%a0)
	lea (12,%sp),%sp
.L18:
	clr.b _onScreenChooseFighter
	move.b #1,_onScreenVsBattle
	moveq #1,%d0
	move.l %d0,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra rapSetActiveList
.L24:
	pea 16.w
	pea 5.w
	move.l #12361088,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,4036(%a0)
	lea (12,%sp),%sp
	clr.b _onScreenChooseFighter
	move.b #1,_onScreenVsBattle
	moveq #1,%d0
	move.l %d0,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra rapSetActiveList
.L10:
	pea 16.w
	pea 4.w
	move.l #12355904,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,1732(%a0)
	lea (12,%sp),%sp
	jra .L9
.L11:
	pea 16.w
	pea 4.w
	move.l #12358496,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,1924(%a0)
	lea (12,%sp),%sp
	jra .L9
.L12:
	pea 16.w
	pea 4.w
	move.l #12371456,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,2116(%a0)
	lea (12,%sp),%sp
	jra .L9
.L13:
	pea 16.w
	pea 4.w
	move.l #12368864,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,2308(%a0)
	lea (12,%sp),%sp
	jra .L9
.L14:
	pea 16.w
	pea 4.w
	move.l #12363680,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,2500(%a0)
	lea (12,%sp),%sp
	jra .L9
.L15:
	pea 16.w
	pea 4.w
	move.l #12361088,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,2692(%a0)
	lea (12,%sp),%sp
	jra .L9
.L19:
	pea 16.w
	pea 5.w
	move.l #12355904,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,3076(%a0)
	lea (12,%sp),%sp
	clr.b _onScreenChooseFighter
	move.b #1,_onScreenVsBattle
	moveq #1,%d0
	move.l %d0,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra rapSetActiveList
.L20:
	pea 16.w
	pea 5.w
	move.l #12358496,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,3268(%a0)
	lea (12,%sp),%sp
	clr.b _onScreenChooseFighter
	move.b #1,_onScreenVsBattle
	moveq #1,%d0
	move.l %d0,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra rapSetActiveList
.L21:
	pea 16.w
	pea 5.w
	move.l #12371456,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,3460(%a0)
	lea (12,%sp),%sp
	clr.b _onScreenChooseFighter
	move.b #1,_onScreenVsBattle
	moveq #1,%d0
	move.l %d0,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra rapSetActiveList
.L22:
	pea 16.w
	pea 5.w
	move.l #12368864,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,3652(%a0)
	lea (12,%sp),%sp
	clr.b _onScreenChooseFighter
	move.b #1,_onScreenVsBattle
	moveq #1,%d0
	move.l %d0,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra rapSetActiveList
.L23:
	pea 16.w
	pea 5.w
	move.l #12363680,-(%sp)
	jsr (%a2)
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,3844(%a0)
	lea (12,%sp),%sp
	clr.b _onScreenChooseFighter
	move.b #1,_onScreenVsBattle
	moveq #1,%d0
	move.l %d0,8(%fp)
	movem.l -12(%fp),#1036
	unlk %fp
	jra rapSetActiveList
	.even
	.globl	__Z17switchScreenFightii
__Z17switchScreenFightii:
	link.w %fp,#0
	move.w #256,15728728
	pea __ZL11imageBuffer
	move.l #12371488,-(%sp)
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL11imageBuffer,4460(%a0)
	moveq #1,%d0
	move.l %d0,4420(%a0)
	addq.l #8,%sp
	pea 48.w
	clr.l -(%sp)
	move.l #12484976,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #2,%d1
	move.l %d1,(%sp)
	jsr rapSetActiveList
	clr.b _onScreenVsBattle
	move.b #1,_onScreenFight
	addq.l #4,%sp
	unlk %fp
	rts
	.even
	.globl	__Z17SetPlayerPalettesv
__Z17SetPlayerPalettesv:
	link.w %fp,#0
	move.l %a2,-(%sp)
	move.l %d2,-(%sp)
	move.l sprite,%a0
	moveq #-1,%d0
	move.l %d0,964(%a0)
	move.l %d0,1156(%a0)
	moveq #6,%d1
	cmp.l _p1Cursor.l,%d1
	jcs .L31
	move.l _p1Cursor,%d0
	add.l %d0,%d0
	move.w .L39(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L39:
	.word .L32-.L39
	.word .L33-.L39
	.word .L34-.L39
	.word .L35-.L39
	.word .L36-.L39
	.word .L37-.L39
	.word .L38-.L39
.L38:
	pea 16.w
	pea 14.w
	move.l #12180432,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d2
	move.l %d2,(%sp)
	pea __ZL15fighterScorpion
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL15fighterScorpion,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #189,392(%a0)
	move.w #116,396(%a0)
	addq.l #4,%sp
.L31:
	move.l _p2Cursor,%d0
	moveq #6,%d1
	cmp.l %d0,%d1
	jcs .L40
	add.l %d0,%d0
	move.w .L48(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L48:
	.word .L41-.L48
	.word .L42-.L48
	.word .L43-.L48
	.word .L44-.L48
	.word .L45-.L48
	.word .L46-.L48
	.word .L47-.L48
.L47:
	pea 16.w
	pea 15.w
	move.l #12180432,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL16fighterScorpion2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL16fighterScorpion2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #189,200(%a0)
	move.w #116,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
.L40:
	cmp.l _p1Cursor.l,%d0
	jeq .L54
.L30:
	move.l -8(%fp),%d2
	move.l -4(%fp),%a2
	unlk %fp
	rts
.L54:
	moveq #24,%d2
	lea rapFadeClut,%a2
.L50:
	pea __ZL8BLACKPAL
	pea 16.w
	pea 15.w
	jsr (%a2)
	subq.l #1,%d2
	lea (12,%sp),%sp
	jeq .L30
	pea __ZL8BLACKPAL
	pea 16.w
	pea 15.w
	jsr (%a2)
	subq.l #1,%d2
	lea (12,%sp),%sp
	jne .L50
	jra .L30
.L46:
	pea 16.w
	pea 15.w
	move.l #9558816,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL12fighterKang2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL12fighterKang2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #129,200(%a0)
	move.w #116,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L30
	jra .L54
.L32:
	pea 16.w
	pea 14.w
	move.l #9034496,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d2
	move.l %d2,(%sp)
	pea __ZL11fighterCage
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL11fighterCage,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #7,392(%a0)
	move.w #42,396(%a0)
	addq.l #4,%sp
	jra .L31
.L33:
	pea 16.w
	pea 14.w
	move.l #12180384,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d1
	move.l %d1,(%sp)
	pea __ZL11fighterKano
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL11fighterKano,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #68,392(%a0)
	move.w #42,396(%a0)
	addq.l #4,%sp
	jra .L31
.L34:
	pea 16.w
	pea 14.w
	move.l #11131744,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d0
	move.l %d0,(%sp)
	pea __ZL14fighterSubzero
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL14fighterSubzero,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #189,392(%a0)
	move.w #42,396(%a0)
	addq.l #4,%sp
	jra .L31
.L35:
	pea 16.w
	pea 14.w
	move.l #11656064,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d2
	move.l %d2,(%sp)
	pea __ZL12fighterSonya
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL12fighterSonya,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #250,392(%a0)
	move.w #42,396(%a0)
	addq.l #4,%sp
	jra .L31
.L36:
	pea 16.w
	pea 14.w
	move.l #10083136,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d1
	move.l %d1,(%sp)
	pea __ZL13fighterRaiden
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL13fighterRaiden,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #68,392(%a0)
	move.w #116,396(%a0)
	moveq #1,%d0
	move.l %d0,964(%a0)
	addq.l #4,%sp
	jra .L31
.L37:
	pea 16.w
	pea 14.w
	move.l #9558816,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #1,%d0
	move.l %d0,(%sp)
	pea __ZL11fighterKang
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL11fighterKang,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #129,392(%a0)
	move.w #116,396(%a0)
	addq.l #4,%sp
	jra .L31
.L41:
	pea 16.w
	pea 15.w
	move.l #9034496,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL12fighterCage2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL12fighterCage2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #7,200(%a0)
	move.w #42,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L30
	jra .L54
.L42:
	pea 16.w
	pea 15.w
	move.l #12180384,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL12fighterKano2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL12fighterKano2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #68,200(%a0)
	move.w #42,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L30
	jra .L54
.L43:
	pea 16.w
	pea 15.w
	move.l #11131744,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL15fighterSubzero2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL15fighterSubzero2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #189,200(%a0)
	move.w #42,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L30
	jra .L54
.L44:
	pea 16.w
	pea 15.w
	move.l #11656064,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL13fighterSonya2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL13fighterSonya2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	move.w #250,200(%a0)
	move.w #42,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L30
	jra .L54
.L45:
	pea 16.w
	pea 15.w
	move.l #10083136,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	clr.l (%sp)
	pea __ZL14fighterRaiden2
	jsr __Z21fighterMakeSelectableP7Fighterb
	addq.l #4,%sp
	move.l #__ZL14fighterRaiden2,(%sp)
	jsr __Z11fighterShowP7Fighter
	move.l sprite,%a0
	moveq #1,%d0
	move.l %d0,1156(%a0)
	move.w #68,200(%a0)
	move.w #116,204(%a0)
	move.l _p2Cursor,%d0
	addq.l #4,%sp
	cmp.l _p1Cursor.l,%d0
	jne .L30
	jra .L54
	.even
	.globl	__Z9basicmainv
__Z9basicmainv:
	link.w %fp,#-4
	movem.l #16188,-(%sp)
	clr.l __ZL4pad1
	clr.l __ZL4pad2
	move.w #256,15728728
	pea 20.w
	pea 5.w
	jsr rapDebugSetXY
	addq.l #8,%sp
	jsr __Z15initTitleScreenv
	clr.b %d7
	moveq #-1,%d4
	moveq #-1,%d3
	sub.l %a4,%a4
	lea rapFadeClut,%a3
	lea _jsfVsync,%a2
	lea jsfGetPadPressed,%a5
	move.l #___floatsisf,%d6
	move.l #__Z17fighterUpdateIdlefP7FighterP14SpriteAnimatorP14AnimationFrame,%d5
	move.l %a4,-4(%fp)
	move.w raptor_ticks,%a0
	move.l %a0,%a4
	sub.l _lastTicks,%a4
	move.l %a0,_lastTicks
	tst.b _onTitleScreen
	jeq .L57
.L140:
	tst.b _fadedIn
	jne .L58
	move.b #1,_fadedIn
	moveq #60,%d2
.L59:
	move.l #8435616,-(%sp)
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L59
	tst.b _fadedIn
	jne .L58
.L60:
	clr.l -(%sp)
	jsr (%a2)
	addq.l #4,%sp
.L142:
	move.w raptor_ticks,%a0
	move.l %a0,%a4
	sub.l _lastTicks,%a4
	move.l %a0,_lastTicks
	tst.b _onTitleScreen
	jne .L140
.L57:
	tst.b _onScreenChooseFighter
	jne .L141
	tst.b _onScreenVsBattle
	jeq .L60
	move.l -4(%fp),%a1
	lea (240,%a1),%a1
	cmp.l %a0,%a1
	jge .L60
	moveq #60,%d2
.L122:
	pea __ZL8BLACKPAL
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L122
	move.w raptor_ticks,%a0
	move.l %a0,-4(%fp)
	move.w #256,15728728
	pea __ZL11imageBuffer
	move.l #12371488,-(%sp)
	jsr rapUnpack
	move.l sprite,%a0
	move.l #__ZL11imageBuffer,4460(%a0)
	moveq #1,%d0
	move.l %d0,4420(%a0)
	addq.l #8,%sp
	pea 48.w
	clr.l -(%sp)
	move.l #12484976,-(%sp)
	jsr jsfLoadClut
	addq.l #8,%sp
	moveq #2,%d0
	move.l %d0,(%sp)
	jsr rapSetActiveList
	clr.b _onScreenVsBattle
	move.b #1,_onScreenFight
	addq.l #4,%sp
	clr.l -(%sp)
	jsr (%a2)
	addq.l #4,%sp
	jra .L142
.L58:
	tst.b _fadedOut
	jne .L60
	move.w raptor_ticks,%a0
	move.l _gameStartTicks,%d0
	add.l #240,%d0
	cmp.l %a0,%d0
	jge .L60
	moveq #90,%d2
.L61:
	pea __ZL8BLACKPAL
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L61
	move.b #1,_fadedOut
	jsr __Z25switchScreenChooseFighterv
	clr.l -(%sp)
	jsr (%a2)
	addq.l #4,%sp
	jra .L142
.L141:
	pea 1.w
	jsr (%a5)
	move.l %d0,__ZL4pad1
	moveq #2,%d1
	move.l %d1,(%sp)
	jsr (%a5)
	move.l %d0,__ZL4pad2
	addq.l #4,%sp
	moveq #-1,%d0
	cmp.l %d3,%d0
	jeq .L143
.L63:
	moveq #6,%d1
	cmp.l _p1Cursor.l,%d1
	jcs .L72
.L146:
	move.l _p1Cursor,%d0
	add.l %d0,%d0
	move.w .L80(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L80:
	.word .L73-.L80
	.word .L74-.L80
	.word .L75-.L80
	.word .L76-.L80
	.word .L77-.L80
	.word .L78-.L80
	.word .L79-.L80
.L143:
	move.l __ZL4pad1,%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L64
	move.l _p1Cursor,%d0
	subq.l #1,%d0
	move.l %d0,_p1Cursor
	moveq #3,%d1
	tst.l %d0
	jlt .L144
	cmp.l %d0,%d1
	jeq .L145
.L66:
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
.L157:
	moveq #6,%d1
	cmp.l _p1Cursor.l,%d1
	jcc .L146
.L72:
	moveq #-1,%d0
	cmp.l %d4,%d0
	jeq .L147
.L81:
	moveq #6,%d1
	cmp.l _p2Cursor.l,%d1
	jcs .L90
.L150:
	move.l _p2Cursor,%d0
	add.l %d0,%d0
	move.w .L98(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L98:
	.word .L91-.L98
	.word .L92-.L98
	.word .L93-.L98
	.word .L94-.L98
	.word .L95-.L98
	.word .L96-.L98
	.word .L97-.L98
.L78:
	pea __ZL14kangIdleFrames
	pea __ZL12kangAnimator
	pea __ZL11fighterKang
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
.L153:
	moveq #-1,%d0
	cmp.l %d4,%d0
	jne .L81
.L147:
	move.l __ZL4pad2,%d0
	move.l %d0,%d1
	and.l JAGPAD_LEFT,%d1
	jeq .L82
	move.l _p2Cursor,%d0
	subq.l #1,%d0
	move.l %d0,_p2Cursor
	moveq #3,%d1
	tst.l %d0
	jlt .L148
	cmp.l %d0,%d1
	jeq .L149
.L84:
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
.L156:
	moveq #6,%d1
	cmp.l _p2Cursor.l,%d1
	jcc .L150
.L90:
	move.l __ZL4pad1,%d1
	move.l JAGPAD_C,%d0
	move.l %d0,%d2
	and.l %d1,%d2
	jne .L99
.L151:
	move.l %d1,%d2
	and.l JAGPAD_B,%d2
	jne .L99
	and.l JAGPAD_A,%d1
	jne .L99
.L100:
	move.l __ZL4pad2,%d1
	and.l %d1,%d0
	jne .L109
	move.l %d1,%d0
	and.l JAGPAD_B,%d0
	jne .L109
	and.l JAGPAD_A,%d1
	jeq .L110
.L109:
	move.l _p2Cursor,%d4
	move.l sprite,%a0
	moveq #-1,%d0
	move.l %d0,196(%a0)
	moveq #6,%d1
	cmp.l %d4,%d1
	jcs .L110
	move.l %d4,%d0
	add.l %d4,%d0
	move.w .L118(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L118:
	.word .L111-.L118
	.word .L112-.L118
	.word .L113-.L118
	.word .L114-.L118
	.word .L115-.L118
	.word .L116-.L118
	.word .L117-.L118
.L96:
	pea __ZL14kangIdleFrames
	pea __ZL13kangAnimator2
	pea __ZL12fighterKang2
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
.L152:
	move.l __ZL4pad1,%d1
	move.l JAGPAD_C,%d0
	move.l %d0,%d2
	and.l %d1,%d2
	jeq .L151
.L99:
	move.l _p1Cursor,%d3
	move.l sprite,%a0
	moveq #-1,%d1
	move.l %d1,388(%a0)
	moveq #6,%d1
	cmp.l %d3,%d1
	jcs .L100
	move.l %d3,%d0
	add.l %d3,%d0
	move.w .L108(%pc,%d0.l),%d0
	jmp %pc@(2,%d0:w)
.L108:
	.word .L101-.L108
	.word .L102-.L108
	.word .L103-.L108
	.word .L104-.L108
	.word .L105-.L108
	.word .L106-.L108
	.word .L107-.L108
.L117:
	clr.l -(%sp)
	pea __ZL12soundHandler
	jsr __Z11sfxScorpionP12SoundHandlerb
	addq.l #8,%sp
.L110:
	tst.b %d7
	jeq .L119
.L154:
	move.w raptor_ticks,%a0
	move.w #120,%a1
	add.l -4(%fp),%a1
	cmp.l %a1,%a0
	jle .L124
.L155:
	moveq #60,%d2
.L121:
	pea __ZL8BLACKPAL
	pea 256.w
	clr.l -(%sp)
	jsr (%a3)
	addq.l #8,%sp
	clr.l (%sp)
	jsr (%a2)
	subq.l #1,%d2
	addq.l #4,%sp
	jne .L121
	move.l _p2Cursor,-(%sp)
	move.l _p1Cursor,-(%sp)
	jsr __Z20switchScreenVsBattleii
	addq.l #4,%sp
	move.l #__ZL12soundHandler,(%sp)
	jsr __Z8sfxIntroP12SoundHandler
	move.w raptor_ticks,%a0
	move.l %a0,-4(%fp)
	addq.l #4,%sp
	moveq #1,%d7
	clr.l -(%sp)
	jsr (%a2)
	addq.l #4,%sp
	jra .L142
.L95:
	pea __ZL16raidenIdleFrames
	pea __ZL15raidenAnimator2
	pea __ZL14fighterRaiden2
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	pea 1.w
	pea 1.w
	pea 30.w
	pea __ZL15lightningFrames
	pea __ZL18lightning2Animator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	jra .L90
.L94:
	pea __ZL15sonyaIdleFrames
	pea __ZL14sonyaAnimator2
	pea __ZL13fighterSonya2
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L152
.L93:
	pea __ZL17subzeroIdleFrames
	pea __ZL16subzeroAnimator2
	pea __ZL15fighterSubzero2
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L152
.L97:
	pea __ZL18scorpionIdleFrames
	pea __ZL17scorpionAnimator2
	pea __ZL16fighterScorpion2
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L152
.L92:
	pea __ZL14kanoIdleFrames
	pea __ZL13kanoAnimator2
	pea __ZL12fighterKano2
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L152
.L91:
	pea __ZL14cageIdleFrames
	pea __ZL13cageAnimator2
	pea __ZL12fighterCage2
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L152
.L77:
	pea __ZL16raidenIdleFrames
	pea __ZL14raidenAnimator
	pea __ZL13fighterRaiden
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	pea 1.w
	pea 1.w
	pea 30.w
	pea __ZL15lightningFrames
	pea __ZL17lightningAnimator
	jsr __Z20updateSpriteAnimatorP14SpriteAnimatorP14AnimationFrameibb
	lea (20,%sp),%sp
	moveq #-1,%d0
	cmp.l %d4,%d0
	jne .L81
	jra .L147
.L76:
	pea __ZL15sonyaIdleFrames
	pea __ZL13sonyaAnimator
	pea __ZL12fighterSonya
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L153
.L75:
	pea __ZL17subzeroIdleFrames
	pea __ZL15subzeroAnimator
	pea __ZL14fighterSubzero
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L153
.L74:
	pea __ZL14kanoIdleFrames
	pea __ZL12kanoAnimator
	pea __ZL11fighterKano
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L153
.L79:
	pea __ZL18scorpionIdleFrames
	pea __ZL16scorpionAnimator
	pea __ZL15fighterScorpion
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L153
.L73:
	pea __ZL14cageIdleFrames
	pea __ZL12cageAnimator
	pea __ZL11fighterCage
	move.l %a4,-(%sp)
	move.l %d6,%a0
	jsr (%a0)
	move.l %d0,(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (16,%sp),%sp
	jra .L153
.L116:
	clr.l -(%sp)
	pea __ZL12soundHandler
	jsr __Z10sfxLiuKangP12SoundHandlerb
	addq.l #8,%sp
	tst.b %d7
	jne .L154
.L119:
	tst.l %d3
	jlt .L60
	tst.l %d4
	jlt .L60
	move.w raptor_ticks,%a0
	move.l %a0,-4(%fp)
	move.w #120,%a1
	add.l -4(%fp),%a1
	cmp.l %a1,%a0
	jgt .L155
.L124:
	moveq #1,%d7
	clr.l -(%sp)
	jsr (%a2)
	addq.l #4,%sp
	jra .L142
.L115:
	clr.l -(%sp)
	pea __ZL12soundHandler
	jsr __Z9sfxRaidenP12SoundHandlerb
	addq.l #8,%sp
	jra .L110
.L114:
	clr.l -(%sp)
	pea __ZL12soundHandler
	jsr __Z8sfxSonyaP12SoundHandlerb
	addq.l #8,%sp
	jra .L110
.L113:
	clr.l -(%sp)
	pea __ZL12soundHandler
	jsr __Z10sfxSubzeroP12SoundHandlerb
	addq.l #8,%sp
	jra .L110
.L112:
	clr.l -(%sp)
	pea __ZL12soundHandler
	jsr __Z7sfxKanoP12SoundHandlerb
	addq.l #8,%sp
	jra .L110
.L111:
	clr.l -(%sp)
	pea __ZL12soundHandler
	jsr __Z13sfxJohnnyCageP12SoundHandlerb
	addq.l #8,%sp
	jra .L110
.L106:
	pea 1.w
	pea __ZL12soundHandler
	jsr __Z10sfxLiuKangP12SoundHandlerb
	move.l JAGPAD_C,%d0
	addq.l #8,%sp
	jra .L100
.L105:
	pea 1.w
	pea __ZL12soundHandler
	jsr __Z9sfxRaidenP12SoundHandlerb
	move.l JAGPAD_C,%d0
	addq.l #8,%sp
	jra .L100
.L104:
	pea 1.w
	pea __ZL12soundHandler
	jsr __Z8sfxSonyaP12SoundHandlerb
	move.l JAGPAD_C,%d0
	addq.l #8,%sp
	jra .L100
.L103:
	pea 1.w
	pea __ZL12soundHandler
	jsr __Z10sfxSubzeroP12SoundHandlerb
	move.l JAGPAD_C,%d0
	addq.l #8,%sp
	jra .L100
.L102:
	pea 1.w
	pea __ZL12soundHandler
	jsr __Z7sfxKanoP12SoundHandlerb
	move.l JAGPAD_C,%d0
	addq.l #8,%sp
	jra .L100
.L101:
	pea 1.w
	pea __ZL12soundHandler
	jsr __Z13sfxJohnnyCageP12SoundHandlerb
	move.l JAGPAD_C,%d0
	addq.l #8,%sp
	jra .L100
.L107:
	pea 1.w
	pea __ZL12soundHandler
	jsr __Z11sfxScorpionP12SoundHandlerb
	move.l JAGPAD_C,%d0
	addq.l #8,%sp
	jra .L100
.L148:
	move.l %d1,_p2Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L156
.L144:
	move.l %d1,_p1Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L157
.L145:
	moveq #6,%d0
	move.l %d0,_p1Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L157
.L149:
	moveq #6,%d0
	move.l %d0,_p2Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L156
.L82:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L85
	move.l _p2Cursor,%d0
	addq.l #1,%d0
	move.l %d0,_p2Cursor
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L158
	moveq #7,%d1
	cmp.l %d0,%d1
	jne .L84
.L134:
	moveq #4,%d0
	move.l %d0,_p2Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L156
.L64:
	move.l %d0,%d1
	and.l JAGPAD_RIGHT,%d1
	jeq .L67
	move.l _p1Cursor,%d0
	addq.l #1,%d0
	move.l %d0,_p1Cursor
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L159
	moveq #7,%d1
	cmp.l %d0,%d1
	jne .L66
.L132:
	moveq #4,%d0
	move.l %d0,_p1Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L157
.L67:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jeq .L69
	move.l _p1Cursor,%d0
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L160
	moveq #6,%d1
	cmp.l %d0,%d1
	jne .L66
	moveq #2,%d0
	move.l %d0,_p1Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L157
.L85:
	move.l %d0,%d1
	and.l JAGPAD_UP,%d1
	jeq .L87
	move.l _p2Cursor,%d0
	moveq #4,%d1
	cmp.l %d0,%d1
	jeq .L161
	moveq #6,%d1
	cmp.l %d0,%d1
	jne .L84
	moveq #2,%d0
	move.l %d0,_p2Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L156
.L87:
	and.l JAGPAD_DOWN,%d0
	jeq .L81
	move.l _p2Cursor,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L134
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L84
	jra .L149
.L69:
	and.l JAGPAD_DOWN,%d0
	jeq .L63
	move.l _p1Cursor,%d0
	moveq #1,%d1
	cmp.l %d0,%d1
	jeq .L132
	moveq #2,%d1
	cmp.l %d0,%d1
	jne .L66
	jra .L145
.L159:
	clr.l _p1Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L157
.L158:
	clr.l _p2Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L156
.L161:
	moveq #1,%d0
	move.l %d0,_p2Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L156
.L160:
	moveq #1,%d0
	move.l %d0,_p1Cursor
	pea __ZL12soundHandler
	jsr __Z11sfxP1CursorP12SoundHandler
	addq.l #4,%sp
	jsr __Z17SetPlayerPalettesv
	jra .L157
	.even
__GLOBAL__sub_I_sprite:
	link.w %fp,#0
	move.w raptor_ticks,%a0
	move.l %a0,_gameStartTicks
	unlk %fp
	rts
	.stabs	"___CTOR_LIST__",22,0,0,__GLOBAL__sub_I_sprite
	.globl	_kanoImpactFrameJumpKick
	.data
	.even
_kanoImpactFrameJumpKick:
	.long	1
	.long	56
	.long	46
	.globl	_kanoImpactFrameJumpPunch
	.even
_kanoImpactFrameJumpPunch:
	.long	1
	.long	46
	.long	60
	.globl	_kanoImpactFrameSweep
	.even
_kanoImpactFrameSweep:
	.long	4
	.long	96
	.long	50
	.globl	_kanoImpactFrameUppercut
	.even
_kanoImpactFrameUppercut:
	.long	3
	.long	50
	.long	30
	.globl	_kanoImpactFrameHighKick
	.even
_kanoImpactFrameHighKick:
	.long	3
	.long	62
	.long	10
	.globl	_kanoImpactFrameLowKick
	.even
_kanoImpactFrameLowKick:
	.long	3
	.long	62
	.long	30
	.globl	_kanoImpactFrameHighPunch
	.even
_kanoImpactFrameHighPunch:
	.long	2
	.long	62
	.long	10
	.globl	_kanoImpactFrameLowPunch
	.even
_kanoImpactFrameLowPunch:
	.long	2
	.long	62
	.long	30
	.globl	_sonyaImpactFrameJumpKick
	.even
_sonyaImpactFrameJumpKick:
	.long	1
	.long	56
	.long	46
	.globl	_sonyaImpactFrameJumpPunch
	.even
_sonyaImpactFrameJumpPunch:
	.long	1
	.long	80
	.long	60
	.globl	_sonyaImpactFrameSweep
	.even
_sonyaImpactFrameSweep:
	.long	4
	.long	86
	.long	60
	.globl	_sonyaImpactFrameUppercut
	.even
_sonyaImpactFrameUppercut:
	.long	3
	.long	46
	.long	30
	.globl	_sonyaImpactFrameHighKick
	.even
_sonyaImpactFrameHighKick:
	.long	3
	.long	50
	.long	10
	.globl	_sonyaImpactFrameLowKick
	.even
_sonyaImpactFrameLowKick:
	.long	3
	.long	62
	.long	30
	.globl	_sonyaImpactFrameHighPunch
	.even
_sonyaImpactFrameHighPunch:
	.long	2
	.long	50
	.long	10
	.globl	_sonyaImpactFrameLowPunch
	.even
_sonyaImpactFrameLowPunch:
	.long	2
	.long	62
	.long	30
	.globl	_subzeroImpactFrameJumpKick
	.even
_subzeroImpactFrameJumpKick:
	.long	1
	.long	56
	.long	46
	.globl	_subzeroImpactFrameJumpPunch
	.even
_subzeroImpactFrameJumpPunch:
	.long	1
	.long	85
	.long	60
	.globl	_subzeroImpactFrameSweep
	.even
_subzeroImpactFrameSweep:
	.long	4
	.long	96
	.long	40
	.globl	_subzeroImpactFrameUppercut
	.even
_subzeroImpactFrameUppercut:
	.long	3
	.long	46
	.long	30
	.globl	_subzeroImpactFrameHighKick
	.even
_subzeroImpactFrameHighKick:
	.long	3
	.long	62
	.long	10
	.globl	_subzeroImpactFrameLowKick
	.even
_subzeroImpactFrameLowKick:
	.long	2
	.long	62
	.long	30
	.globl	_subzeroImpactFrameHighPunch
	.even
_subzeroImpactFrameHighPunch:
	.long	2
	.long	62
	.long	10
	.globl	_subzeroImpactFrameLowPunch
	.even
_subzeroImpactFrameLowPunch:
	.long	2
	.long	62
	.long	30
	.globl	_raidenImpactFrameJumpKick
	.even
_raidenImpactFrameJumpKick:
	.long	1
	.long	70
	.long	46
	.globl	_raidenImpactFrameJumpPunch
	.even
_raidenImpactFrameJumpPunch:
	.long	1
	.long	46
	.long	50
	.globl	_raidenImpactFrameSweep
	.even
_raidenImpactFrameSweep:
	.long	4
	.long	96
	.long	40
	.globl	_raidenImpactFrameUppercut
	.even
_raidenImpactFrameUppercut:
	.long	3
	.long	50
	.long	30
	.globl	_raidenImpactFrameHighKick
	.even
_raidenImpactFrameHighKick:
	.long	2
	.long	62
	.long	10
	.globl	_raidenImpactFrameLowKick
	.even
_raidenImpactFrameLowKick:
	.long	2
	.long	62
	.long	30
	.globl	_raidenImpactFrameHighPunch
	.even
_raidenImpactFrameHighPunch:
	.long	2
	.long	62
	.long	10
	.globl	_raidenImpactFrameLowPunch
	.even
_raidenImpactFrameLowPunch:
	.long	2
	.long	62
	.long	30
	.globl	_kangImpactFrameJumpKick
	.even
_kangImpactFrameJumpKick:
	.long	1
	.long	56
	.long	46
	.globl	_kangImpactFrameJumpPunch
	.even
_kangImpactFrameJumpPunch:
	.long	1
	.long	80
	.long	60
	.globl	_kangImpactFrameSweep
	.even
_kangImpactFrameSweep:
	.long	4
	.long	96
	.long	40
	.globl	_kangImpactFrameUppercut
	.even
_kangImpactFrameUppercut:
	.long	3
	.long	60
	.long	30
	.globl	_kangImpactFrameHighKick
	.even
_kangImpactFrameHighKick:
	.long	3
	.long	48
	.long	10
	.globl	_kangImpactFrameLowKick
	.even
_kangImpactFrameLowKick:
	.long	2
	.long	62
	.long	30
	.globl	_kangImpactFrameHighPunch
	.even
_kangImpactFrameHighPunch:
	.long	2
	.long	62
	.long	10
	.globl	_kangImpactFrameLowPunch
	.even
_kangImpactFrameLowPunch:
	.long	2
	.long	62
	.long	30
	.globl	_cageImpactFrameJumpKick
	.even
_cageImpactFrameJumpKick:
	.long	1
	.long	56
	.long	46
	.globl	_cageImpactFrameJumpPunch
	.even
_cageImpactFrameJumpPunch:
	.long	1
	.long	46
	.long	60
	.globl	_cageImpactFrameSweep
	.even
_cageImpactFrameSweep:
	.long	4
	.long	96
	.long	60
	.globl	_cageImpactFrameUppercut
	.even
_cageImpactFrameUppercut:
	.long	3
	.long	32
	.long	30
	.globl	_cageImpactFrameHighKick
	.even
_cageImpactFrameHighKick:
	.long	3
	.long	58
	.long	10
	.globl	_cageImpactFrameLowKick
	.even
_cageImpactFrameLowKick:
	.long	2
	.long	62
	.long	30
	.globl	_cageImpactFrameHighPunch
	.even
_cageImpactFrameHighPunch:
	.long	2
	.long	46
	.long	10
	.globl	_cageImpactFrameLowPunch
	.even
_cageImpactFrameLowPunch:
	.long	2
	.long	52
	.long	30
	.globl	_lastTicks
	.bss
	.even
_lastTicks:
	.skip 4
	.globl	_ticksPerSec
	.data
	.even
_ticksPerSec:
	.long	60
	.globl	_gameStartTicks
	.bss
	.even
_gameStartTicks:
	.skip 4
	.globl	_fadedOut
_fadedOut:
	.skip 1
	.globl	_fadedIn
_fadedIn:
	.skip 1
	.globl	_onScreenFight
_onScreenFight:
	.skip 1
	.globl	_onScreenVsBattle
_onScreenVsBattle:
	.skip 1
	.globl	_onScreenChooseFighter
_onScreenChooseFighter:
	.skip 1
	.globl	_onTitleScreen
	.data
_onTitleScreen:
	.byte	1
	.globl	_p2Cursor
	.even
_p2Cursor:
	.long	2
	.globl	_p1Cursor
	.even
_p1Cursor:
	.long	1
	.globl	colliders
	.even
colliders:
	.long	raptor_collisionlist
	.globl	sprite
	.even
sprite:
	.long	RAPTOR_sprite_table
.lcomm __ZL4pad1,4
.lcomm __ZL4pad2,4
.lcomm __ZL8BLACKPAL,512
	.even
__ZL12soundHandler:
	.byte	1
	.byte	0
	.long	1
	.long	1
	.even
__ZL11fighterCage:
	.long	1
	.long	3
	.long	8510208
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	6
	.long	6
	.long	6
	.skip 252
	.even
__ZL12cageAnimator:
	.long	3
	.long	1056964608
	.long	8510208
	.long	0
	.long	0
	.long	96
	.even
__ZL14cageIdleFrames:
	.long	96
	.long	144
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	96
	.long	144
	.long	96
	.long	0
	.long	0
	.long	0
	.long	6
	.long	96
	.long	144
	.long	192
	.long	0
	.long	0
	.long	0
	.long	6
	.long	96
	.long	144
	.long	288
	.long	0
	.long	0
	.long	0
	.long	6
	.long	96
	.long	144
	.long	384
	.long	0
	.long	0
	.long	0
	.long	6
	.long	96
	.long	144
	.long	480
	.long	0
	.long	0
	.long	0
	.long	6
	.long	96
	.long	144
	.long	576
	.long	0
	.long	0
	.long	0
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.even
__ZL11fighterKano:
	.long	2
	.long	3
	.long	11656096
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL12kanoAnimator:
	.long	3
	.long	1056964608
	.long	11656096
	.long	0
	.long	0
	.long	80
	.even
__ZL14kanoIdleFrames:
	.long	80
	.long	144
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	80
	.long	144
	.long	80
	.long	0
	.long	0
	.long	0
	.long	5
	.long	80
	.long	144
	.long	160
	.long	0
	.long	0
	.long	0
	.long	5
	.long	80
	.long	144
	.long	240
	.long	0
	.long	0
	.long	0
	.long	5
	.long	80
	.long	144
	.long	320
	.long	0
	.long	0
	.long	0
	.long	5
	.long	80
	.long	144
	.long	400
	.long	0
	.long	0
	.long	0
	.long	5
	.long	80
	.long	144
	.long	480
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.even
__ZL14fighterSubzero:
	.long	6
	.long	3
	.long	10083168
	.long	12
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL15subzeroAnimator:
	.long	3
	.long	1056964608
	.long	10083168
	.long	0
	.long	0
	.long	80
	.even
__ZL17subzeroIdleFrames:
	.long	80
	.long	144
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	80
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	160
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	240
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	320
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	400
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	480
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	560
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	640
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	720
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	800
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	880
	.long	0
	.long	0
	.long	0
	.long	6
	.even
__ZL12fighterSonya:
	.long	7
	.long	3
	.long	11131776
	.long	7
	.long	7
	.long	4
	.long	7
	.long	2
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	7
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL13sonyaAnimator:
	.long	3
	.long	1056964608
	.long	11131776
	.long	0
	.long	0
	.long	80
	.even
__ZL15sonyaIdleFrames:
	.long	80
	.long	144
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	80
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	160
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	240
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	320
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	400
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	480
	.long	0
	.long	0
	.long	0
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.even
__ZL13fighterRaiden:
	.long	3
	.long	3
	.long	9558848
	.long	10
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL14raidenAnimator:
	.long	3
	.long	1056964608
	.long	9558848
	.long	0
	.long	0
	.long	80
	.even
__ZL16raidenIdleFrames:
	.long	80
	.long	144
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	80
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	160
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	240
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	320
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	400
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	480
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	560
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	640
	.long	0
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	720
	.long	0
	.long	0
	.long	0
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.even
__ZL17lightningAnimator:
	.long	5
	.long	1056964608
	.long	12180512
	.long	0
	.long	0
	.skip 4
	.even
__ZL15lightningFrames:
	.long	80
	.long	144
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	80
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	160
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	240
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	320
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	400
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	480
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	560
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	640
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	720
	.long	0
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	0
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	80
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	160
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	240
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	320
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	400
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	480
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	560
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	640
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	720
	.long	144
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	0
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	80
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	160
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	240
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	320
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	400
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	480
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	560
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	640
	.long	288
	.long	0
	.long	0
	.long	4
	.long	80
	.long	144
	.long	720
	.long	288
	.long	0
	.long	0
	.long	4
	.even
__ZL11fighterKang:
	.long	4
	.long	3
	.long	9034528
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL12kangAnimator:
	.long	3
	.long	1056964608
	.long	9034528
	.long	0
	.long	0
	.long	80
	.even
__ZL14kangIdleFrames:
	.long	80
	.long	144
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	80
	.long	144
	.long	80
	.long	0
	.long	0
	.long	0
	.long	7
	.long	80
	.long	144
	.long	160
	.long	0
	.long	0
	.long	0
	.long	7
	.long	80
	.long	144
	.long	240
	.long	0
	.long	0
	.long	0
	.long	7
	.long	80
	.long	144
	.long	320
	.long	0
	.long	0
	.long	0
	.long	7
	.long	80
	.long	144
	.long	400
	.long	0
	.long	0
	.long	0
	.long	7
	.long	80
	.long	144
	.long	480
	.long	0
	.long	0
	.long	0
	.long	7
	.long	80
	.long	144
	.long	560
	.long	0
	.long	0
	.long	0
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.even
__ZL15fighterScorpion:
	.long	5
	.long	3
	.long	10083168
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL16scorpionAnimator:
	.long	3
	.long	1056964608
	.long	10083168
	.long	0
	.long	0
	.long	80
	.even
__ZL18scorpionIdleFrames:
	.long	80
	.long	144
	.long	0
	.long	1024
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	80
	.long	1024
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	160
	.long	1024
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	240
	.long	1024
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	320
	.long	1024
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	400
	.long	1024
	.long	0
	.long	0
	.long	6
	.long	80
	.long	144
	.long	480
	.long	1024
	.long	0
	.long	0
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.even
__ZL12fighterCage2:
	.long	1
	.long	4
	.long	8510208
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	6
	.long	6
	.long	6
	.skip 252
	.even
__ZL13cageAnimator2:
	.long	4
	.long	1056964608
	.long	8510208
	.long	0
	.long	0
	.long	96
	.even
__ZL12fighterKano2:
	.long	2
	.long	4
	.long	11656096
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL13kanoAnimator2:
	.long	4
	.long	1056964608
	.long	11656096
	.long	0
	.long	0
	.long	80
	.even
__ZL15fighterSubzero2:
	.long	6
	.long	4
	.long	10083168
	.long	12
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL16subzeroAnimator2:
	.long	4
	.long	1056964608
	.long	10083168
	.long	0
	.long	0
	.long	80
	.even
__ZL13fighterSonya2:
	.long	7
	.long	4
	.long	11131776
	.long	7
	.long	7
	.long	4
	.long	7
	.long	2
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	7
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL14sonyaAnimator2:
	.long	4
	.long	1056964608
	.long	11131776
	.long	0
	.long	0
	.long	80
	.even
__ZL14fighterRaiden2:
	.long	3
	.long	4
	.long	9558848
	.long	10
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	7
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL15raidenAnimator2:
	.long	4
	.long	1056964608
	.long	9558848
	.long	0
	.long	0
	.long	80
	.even
__ZL18lightning2Animator:
	.long	6
	.long	1056964608
	.long	12180512
	.long	0
	.long	0
	.skip 4
	.even
__ZL12fighterKang2:
	.long	4
	.long	4
	.long	9034528
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL13kangAnimator2:
	.long	4
	.long	1056964608
	.long	9034528
	.long	0
	.long	0
	.long	80
	.even
__ZL16fighterScorpion2:
	.long	5
	.long	4
	.long	10083168
	.long	7
	.long	9
	.long	4
	.long	7
	.long	3
	.long	3
	.long	6
	.long	2
	.long	6
	.long	5
	.long	5
	.long	5
	.long	7
	.long	3
	.long	3
	.long	6
	.long	5
	.long	9
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.skip 252
	.even
__ZL17scorpionAnimator2:
	.long	4
	.long	1056964608
	.long	10083168
	.long	0
	.long	0
	.long	80
.lcomm __ZL11imageBuffer,1017856
