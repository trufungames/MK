;;
;; RAPTOR INIT FILE
;;
;;
;; Each object (or group of objects) needs to be defined here
;; RAPTOR init (in _RAPT68k) will configure raptor based on below automatically
;; and create a corresponding Object List for the OP to branch to
;;
;;

; MEMORY TRACK STUFF
;

; 15 chars  						'012345678901234'
RAPTOR_MT_app_name:			dc.b	'RAPTOR',0					; Name of Application
							.even
RAPTOR_MT_file_name:		dc.b	'OSSUM',0					; Name of filename to use
							.even

raptor_init_table:
	dc.b	'>RAPTOR<'	; table start flag
	
;	----------------------------------------------------------------------------------------------------------
;	dc.l	VALUE		; RAPTOR variable	; Comment
;	----------------------------------------------------------------------------------------------------------

	dc.b	'LIST'		; initiate list structure

; 320x240 BACKGROUND Object (used for Title Screen, Choose Your Fighter, etc.)
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	0,0								; sprite_x						; 16.16 x value to position at
	dc.w	0,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	320								; sprite_width					; width of sprite (in pixels)
	dc.l	240								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	320							; sprite_hbox					; width of collision box
	dc.l	240							; sprite_vbox					; height of collision box
	dc.l	0					; sprite_gfxbase				; start of bitmap data
	dc.l	8								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_opaque						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	320*240						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	320							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_wrap						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	0							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	320						; sprite_gwidth					; GFX width (of data)	

; P2 Selector Flash Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	189,0							; sprite_x						; 16.16 x value to position at
	dc.w	46,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	66								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	64/2							; sprite_hbox					; width of collision box
	dc.l	66/2							; sprite_vbox					; height of collision box
	dc.l	BMP_P2_SELECTOR_FLASH						; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*66/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_wrap						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	6							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	64/2							; sprite_gwidth					; GFX width (of data)

; P2 Selector Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	189,0							; sprite_x						; 16.16 x value to position at
	dc.w	42,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	80								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	64/2							; sprite_hbox					; width of collision box
	dc.l	80/2							; sprite_vbox					; height of collision box
	dc.l	BMP_P2_SELECTOR						; sprite_gfxbase				; start of bitmap data
	dc.l	16								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*80*2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64*2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	3								; sprite_animspd				; frame delay between animation changes
	dc.l	1								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_wrap						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	no_CLUT							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	64*2							; sprite_gwidth					; GFX width (of data)

; P1 Selector Flash Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	68,0							; sprite_x						; 16.16 x value to position at
	dc.w	46,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	66								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	64/2							; sprite_hbox					; width of collision box
	dc.l	66/2							; sprite_vbox					; height of collision box
	dc.l	BMP_P2_SELECTOR_FLASH						; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*66/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_wrap						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	6							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	64/2							; sprite_gwidth					; GFX width (of data)

; P1 Selector Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	68,0							; sprite_x						; 16.16 x value to position at
	dc.w	42,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	80								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	64/2							; sprite_hbox					; width of collision box
	dc.l	80/2							; sprite_vbox					; height of collision box
	dc.l	BMP_P1_SELECTOR						; sprite_gfxbase				; start of bitmap data
	dc.l	16								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*80*2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64*2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	3								; sprite_animspd				; frame delay between animation changes
	dc.l	1								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_wrap						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	no_CLUT							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	64*2							; sprite_gwidth					; GFX width (of data)

; Player 1 Shadow
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	50,0							; sprite_x						; 16.16 x value to position at
	dc.w	187,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	112								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	16/2							; sprite_hbox					; width of collision box
	dc.l	16/2							; sprite_vbox					; height of collision box
	dc.l	0				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*112/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00001000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	1024/2							; sprite_gwidth					; GFX width (of data)

; Player 1 Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	50,0							; sprite_x						; 16.16 x value to position at
	dc.w	106,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	112								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	16/2							; sprite_hbox					; width of collision box
	dc.l	16/2							; sprite_vbox					; height of collision box
	dc.l	0				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*112/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	14							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	1024/2							; sprite_gwidth					; GFX width (of data)

; Player 2 Shadow
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	150,0							; sprite_x						; 16.16 x value to position at
	dc.w	187,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	112								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	16/2							; sprite_hbox					; width of collision box
	dc.l	16/2							; sprite_vbox					; height of collision box
	dc.l	0				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*112/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00001000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	1024/2							; sprite_gwidth					; GFX width (of data)

; Player 2 Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	50,0							; sprite_x						; 16.16 x value to position at
	dc.w	106,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	112								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	16/2							; sprite_hbox					; width of collision box
	dc.l	16/2							; sprite_vbox					; height of collision box
	dc.l	0				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*112/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	15							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	1024/2							; sprite_gwidth					; GFX width (of data)

; Raiden Lightning Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	10,0							; sprite_x						; 16.16 x value to position at
	dc.w	108,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	112								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	640/2							; sprite_hbox					; width of collision box
	dc.l	640/2							; sprite_vbox					; height of collision box
	dc.l	BMP_LIGHTNING				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*112/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	13							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	640/2							; sprite_gwidth					; GFX width (of data)

; Raiden Lightning Object Player 1
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	244,0							; sprite_x						; 16.16 x value to position at
	dc.w	108,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	112								; sprite_height					; height of sprite (in pixels)
	dc.l	is_flipped						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	640/2							; sprite_hbox					; width of collision box
	dc.l	640/2							; sprite_vbox					; height of collision box
	dc.l	BMP_LIGHTNING				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*112/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	13							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	640/2							; sprite_gwidth					; GFX width (of data)

; Always Active dot
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	400,0							; sprite_x						; 16.16 x value to position at
	dc.w	260,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	8							; sprite_width					; width of sprite (in pixels)
	dc.l	8								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	8							; sprite_hbox					; width of collision box
	dc.l	8							; sprite_vbox					; height of collision boxg
	dc.l	BMP_DOTLAST						; sprite_gfxbase				; start of bitmap data
	dc.l	2								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	8						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	8							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	0							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	8							; sprite_gwidth					; GFX width (of data)

	dc.b	'STOP'							; end of the current LIST

	dc.b	'LIST'		; initiate list structure

; VS Battle Backdrop object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	0,0								; sprite_x						; 16.16 x value to position at
	dc.w	0,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	320								; sprite_width					; width of sprite (in pixels)
	dc.l	240								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	320							; sprite_hbox					; width of collision box
	dc.l	240							; sprite_vbox					; height of collision box
	dc.l	BMP_BATTLESCREEN					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_opaque						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	320*240/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	320/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	0							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	320/2						; sprite_gwidth					; GFX width (of data)	

; Text/Particle Layer
	dc.l	1																; (REPEAT COUNTER) 	; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active														; sprite_active		; sprite active flag
	dc.w	16,0															; sprite_x			; 16.16 x value to position at
	dc.w	0,0																; sprite_y			; 16.16 y value to position at
	dc.w	0,0																; sprite_xadd		; 16.16 x addition for sprite movement
	dc.w	0,0																; sprite_yadd		; 16.16 y addition for sprite movement
	dc.l	raptor_particle_buffer_width									; sprite_width		; width of sprite (in pixels)
	dc.l	raptor_particle_buffer_height									; sprite_height		; height of sprite (in pixels)
	dc.l	is_normal														; sprite_flip		; flag for mirroring data left<>right
	dc.l	0																; sprite_coffx		; x offset from center for collision box center
	dc.l	0																; sprite_coffy		; y offset from center for collision box center	
	dc.l	0																; sprite_hbox		; width of collision box
	dc.l	0																; sprite_vbox		; height of collision box
	dc.l	RAPTOR_particle_gfx												; sprite_gfxbase	; start of bitmap data
	dc.l	4																; (BIT DEPTH)		; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB															; (CRY/RGB)			; bitmap GFX type
	dc.l	is_trans														; (TRANSPARENCY)	; bitmap TRANS flag
	dc.l	(raptor_particle_buffer_width/2)*raptor_particle_buffer_height	; sprite_framesz	; size per frame in bytes of sprite data
	dc.l	raptor_particle_buffer_width/2									; sprite_bytewid	; width in bytes of one line of sprite data
	dc.l	0																; sprite_animspd	; frame delay between animation changes
	dc.l	0																; sprite_maxframe	; number of frames in animation chain
	dc.l	ani_rept														; sprite_animloop	; repeat or play once
	dc.l	edge_wrap														; sprite_wrap		; wrap on screen exit, or remove
	dc.l	spr_inf															; sprite_timer		; frames sprite is active for (or spr_inf)
	dc.l	spr_linear														; sprite_track		; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0																; sprite_tracktop	; pointer to loop point in track table (if used)
	dc.l	spr_unscale														; sprite_scaled		; flag for scaleable object
	dc.l	%00100000														; sprite_scale_x	; x scale factor (if scaled)
	dc.l	%00100000														; sprite_scale_y	; y scale factor (if scaled)
	dc.l	-1																; sprite_was_hit	; initially flagged as not hit
	dc.l	15																; sprite_CLUT		; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit														; sprite_colchk		; if sprite can collide with another
	dc.l	cd_remove														; sprite_remhit		; flag to remove (or keep) on collision
	dc.l	single															; sprite_bboxlink	; single for normal bounding box, else pointer to table
	dc.l	1																; sprite_hitpoint	; Hitpoints before death
	dc.l	2																; sprite_damage		; Hitpoints deducted from target
	dc.l	raptor_particle_buffer_width/2									; sprite_gwidth		; GFX width (of data)
	
; P1 Portrait object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	81,0								; sprite_x						; 16.16 x value to position at
	dc.w	65,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	80								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	64							; sprite_hbox					; width of collision box
	dc.l	80							; sprite_vbox					; height of collision box
	dc.l	BMP_PT_CAGE					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*80/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	4							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	64/2						; sprite_gwidth					; GFX width (of data)	

; P2 Portrait object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	183,0								; sprite_x						; 16.16 x value to position at
	dc.w	65,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	80								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	64							; sprite_hbox					; width of collision box
	dc.l	80							; sprite_vbox					; height of collision box
	dc.l	BMP_PT_CAGE					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*80/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	5							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	64/2						; sprite_gwidth					; GFX width (of data)	

; Stage Name object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	78,0								; sprite_x						; 16.16 x value to position at
	dc.w	202,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	160								; sprite_width					; width of sprite (in pixels)
	dc.l	18								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	160							; sprite_hbox					; width of collision box
	dc.l	18							; sprite_vbox					; height of collision box
	dc.l	0					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	160*18/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	160/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	1							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	160/2						; sprite_gwidth					; GFX width (of data)	

	dc.b	'STOP'							; end of the current LIST

	dc.b	'LIST'		; initiate list structure

; THE PIT MOON Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	96,0								; sprite_x						; 16.16 x value to position at
	dc.w	32,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	48								; sprite_width					; width of sprite (in pixels)
	dc.l	48								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	48							; sprite_hbox					; width of collision box
	dc.l	48							; sprite_vbox					; height of collision box
	dc.l	0					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	48*48/2					; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	48/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_wrap						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	4							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	48/2						; sprite_gwidth					; GFX width (of data)	

; THE PIT CLOUDS1 Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	0,0								; sprite_x						; 16.16 x value to position at
	dc.w	42,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	128								; sprite_width					; width of sprite (in pixels)
	dc.l	48								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	128							; sprite_hbox					; width of collision box
	dc.l	48							; sprite_vbox					; height of collision box
	dc.l	BMP_PIT_CLOUDS1					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	128*48/2					; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	128/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_wrap						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	5							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	128/2						; sprite_gwidth					; GFX width (of data)	

; THE PIT CLOUDS1 Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	280,0								; sprite_x						; 16.16 x value to position at
	dc.w	42,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	128								; sprite_width					; width of sprite (in pixels)
	dc.l	48								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	128							; sprite_hbox					; width of collision box
	dc.l	48							; sprite_vbox					; height of collision box
	dc.l	BMP_PIT_CLOUDS1					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	128*48/2					; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	128/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_wrap						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	5							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	128/2						; sprite_gwidth					; GFX width (of data)	

; THE PIT BACKGROUND Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	-8,0								; sprite_x						; 16.16 x value to position at
	dc.w	95,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	336								; sprite_width					; width of sprite (in pixels)
	dc.l	176								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	320							; sprite_hbox					; width of collision box
	dc.l	176							; sprite_vbox					; height of collision box
	dc.l	0					; sprite_gfxbase				; start of bitmap data
	dc.l	8								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	768*608					; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	768							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	0							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	768						; sprite_gwidth					; GFX width (of data)	

; Blood Pool Object
	dc.l	8								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	100,0							; sprite_x						; 16.16 x value to position at
	dc.w	100,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	48								; sprite_width					; width of sprite (in pixels)
	dc.l	48								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	48/2							; sprite_hbox					; width of collision box
	dc.l	48/2							; sprite_vbox					; height of collision box
	dc.l	BMP_BLOOD				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	48*48/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	48/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	384/2							; sprite_gwidth					; GFX width (of data)

; Player 1 Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	50,0							; sprite_x						; 16.16 x value to position at
	dc.w	90,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	96								; sprite_width					; width of sprite (in pixels)
	dc.l	144								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	96/2							; sprite_hbox					; width of collision box
	dc.l	144/2							; sprite_vbox					; height of collision box
	dc.l	0				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	80*160/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	80/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	14							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	can_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	1024/2							; sprite_gwidth					; GFX width (of data)

; Player 2 Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	200,0							; sprite_x						; 16.16 x value to position at
	dc.w	90,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	96								; sprite_width					; width of sprite (in pixels)
	dc.l	144								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	96/2							; sprite_hbox					; width of collision box
	dc.l	144/2							; sprite_vbox					; height of collision box
	dc.l	0				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	80*160/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	80/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	15							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	can_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	1024/2							; sprite_gwidth					; GFX width (of data)

; Player 1 Hitbox BODY Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	62,0							; sprite_x						; 16.16 x value to position at
	dc.w	100,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	48							; sprite_width					; width of sprite (in pixels)
	dc.l	128								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	48/2							; sprite_hbox					; width of collision box
	dc.l	128/2							; sprite_vbox					; height of collision box
	dc.l	BMP_HITBOX_OFF						; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	48*128/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	48/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	10							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	can_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	48/2							; sprite_gwidth					; GFX width (of data)	

; Player 1 Hitbox ATTACK Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	110,0							; sprite_x						; 16.16 x value to position at
	dc.w	128,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	48							; sprite_width					; width of sprite (in pixels)
	dc.l	16								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	48/2							; sprite_hbox					; width of collision box
	dc.l	16/2							; sprite_vbox					; height of collision box
	dc.l	BMP_HITBOX_ATTACK_OFF						; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	48*16/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	48/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	2							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	can_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	48/2							; sprite_gwidth					; GFX width (of data)	

; Player 2 Hitbox BODY Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	232,0							; sprite_x						; 16.16 x value to position at
	dc.w	100,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	48							; sprite_width					; width of sprite (in pixels)
	dc.l	128								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	48/2							; sprite_hbox					; width of collision box
	dc.l	128/2							; sprite_vbox					; height of collision box
	dc.l	BMP_HITBOX_OFF						; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	48*128/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	48/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	10							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	can_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	48/2							; sprite_gwidth					; GFX width (of data)	

; Player 2 Hitbox ATTACK Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	212,0							; sprite_x						; 16.16 x value to position at
	dc.w	122,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	48							; sprite_width					; width of sprite (in pixels)
	dc.l	16								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	48/2							; sprite_hbox					; width of collision box
	dc.l	16/2							; sprite_vbox					; height of collision box
	dc.l	BMP_HITBOX_ATTACK_OFF						; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	48*16/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	48/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	2							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	can_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	48/2							; sprite_gwidth					; GFX width (of data)	

; Blood Spray Object
	dc.l	2								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	100,0							; sprite_x						; 16.16 x value to position at
	dc.w	100,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	32								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	64/2							; sprite_hbox					; width of collision box
	dc.l	32/2							; sprite_vbox					; height of collision box
	dc.l	BMP_BLOOD				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*32/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	384/2							; sprite_gwidth					; GFX width (of data)

; Blood Glob Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	100,0							; sprite_x						; 16.16 x value to position at
	dc.w	100,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	64								; sprite_width					; width of sprite (in pixels)
	dc.l	32								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	64/2							; sprite_hbox					; width of collision box
	dc.l	32/2							; sprite_vbox					; height of collision box
	dc.l	BMP_BLOOD				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	64*32/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	64/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	384/2							; sprite_gwidth					; GFX width (of data)

; Blood Drop Object
	dc.l	8								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	100,0							; sprite_x						; 16.16 x value to position at
	dc.w	100,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	48								; sprite_width					; width of sprite (in pixels)
	dc.l	48								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	48/2							; sprite_hbox					; width of collision box
	dc.l	48/2							; sprite_vbox					; height of collision box
	dc.l	BMP_BLOOD				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	48*48/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	48/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	384/2							; sprite_gwidth					; GFX width (of data)

; Blood Squirt Object
	dc.l	4								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	100,0							; sprite_x						; 16.16 x value to position at
	dc.w	100,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	48								; sprite_width					; width of sprite (in pixels)
	dc.l	48								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	48/2							; sprite_hbox					; width of collision box
	dc.l	64/2							; sprite_vbox					; height of collision box
	dc.l	BMP_BLOOD				; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	48*64/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	48/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	1								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	384/2							; sprite_gwidth					; GFX width (of data)

; FIGHT! Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	160,0							; sprite_x						; 16.16 x value to position at
	dc.w	98,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	688							; sprite_width					; width of sprite (in pixels)
	dc.l	352								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	160							; sprite_hbox					; width of collision box
	dc.l	48							; sprite_vbox					; height of collision box
	dc.l	BMP_MATCH						; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	688*352/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	688/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	11							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	688/2							; sprite_gwidth					; GFX width (of data)	

; HUD Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	0,0							; sprite_x						; 16.16 x value to position at
	dc.w	8,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	320							; sprite_width					; width of sprite (in pixels)
	dc.l	32								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	320/2							; sprite_hbox					; width of collision box
	dc.l	32/2							; sprite_vbox					; height of collision box
	dc.l	BMP_HUD						; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	320*32/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	320/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_unscale						; sprite_scaled					; flag for scaleable object
	dc.l	%00100000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	320/2							; sprite_gwidth					; GFX width (of data)

; P1 Healthbar Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	8,0							; sprite_x						; 16.16 x value to position at
	dc.w	28,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	128							; sprite_width					; width of sprite (in pixels)
	dc.l	16								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	128/2							; sprite_hbox					; width of collision box
	dc.l	16/2							; sprite_vbox					; height of collision box
	dc.l	BMP_HEALTHBAR					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	128*16/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	128/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_scale						; sprite_scaled					; flag for scaleable object
	dc.l	%00000000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	128/2							; sprite_gwidth					; GFX width (of data)

; P2 Healthbar Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	172,0							; sprite_x						; 16.16 x value to position at
	dc.w	28,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	128							; sprite_width					; width of sprite (in pixels)
	dc.l	16								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	128/2							; sprite_hbox					; width of collision box
	dc.l	16/2							; sprite_vbox					; height of collision box
	dc.l	BMP_HEALTHBAR					; sprite_gfxbase				; start of bitmap data
	dc.l	4								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	128*16/2						; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	128/2							; sprite_bytewid				; width in bytes of one line of sprite data
	dc.l	0								; sprite_animspd				; frame delay between animation changes
	dc.l	0								; sprite_maxframe				; number of frames in animation chain
	dc.l	ani_rept						; sprite_animloop				; repeat or play once
	dc.l	edge_ignore						; sprite_wrap					; wrap on screen exit, or remove
	dc.l	spr_inf							; sprite_timer					; frames sprite is active for (or spr_inf)
	dc.l	spr_linear						; sprite_track					; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0								; sprite_tracktop				; pointer to loop point in track table (if used)
	dc.l	spr_scale						; sprite_scaled					; flag for scaleable object
	dc.l	%00000000						; sprite_scale_x				; x scale factor (if scaled)
	dc.l	%00100000						; sprite_scale_y				; y scale factor (if scaled)
	dc.l	-1								; sprite_was_hit				; initially flagged as not hit
	dc.l	12							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	128/2							; sprite_gwidth					; GFX width (of data)

; Text/Particle Layer
	dc.l	1																; (REPEAT COUNTER) 	; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active														; sprite_active		; sprite active flag
	dc.w	0,0															; sprite_x			; 16.16 x value to position at
	dc.w	0,0																; sprite_y			; 16.16 y value to position at
	dc.w	0,0																; sprite_xadd		; 16.16 x addition for sprite movement
	dc.w	0,0																; sprite_yadd		; 16.16 y addition for sprite movement
	dc.l	raptor_particle_buffer_width									; sprite_width		; width of sprite (in pixels)
	dc.l	raptor_particle_buffer_height									; sprite_height		; height of sprite (in pixels)
	dc.l	is_normal														; sprite_flip		; flag for mirroring data left<>right
	dc.l	0																; sprite_coffx		; x offset from center for collision box center
	dc.l	0																; sprite_coffy		; y offset from center for collision box center	
	dc.l	0																; sprite_hbox		; width of collision box
	dc.l	0																; sprite_vbox		; height of collision box
	dc.l	RAPTOR_particle_gfx												; sprite_gfxbase	; start of bitmap data
	dc.l	4																; (BIT DEPTH)		; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB															; (CRY/RGB)			; bitmap GFX type
	dc.l	is_trans														; (TRANSPARENCY)	; bitmap TRANS flag
	dc.l	(raptor_particle_buffer_width/2)*raptor_particle_buffer_height	; sprite_framesz	; size per frame in bytes of sprite data
	dc.l	raptor_particle_buffer_width/2									; sprite_bytewid	; width in bytes of one line of sprite data
	dc.l	0																; sprite_animspd	; frame delay between animation changes
	dc.l	0																; sprite_maxframe	; number of frames in animation chain
	dc.l	ani_rept														; sprite_animloop	; repeat or play once
	dc.l	edge_wrap														; sprite_wrap		; wrap on screen exit, or remove
	dc.l	spr_inf															; sprite_timer		; frames sprite is active for (or spr_inf)
	dc.l	spr_linear														; sprite_track		; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0																; sprite_tracktop	; pointer to loop point in track table (if used)
	dc.l	spr_unscale														; sprite_scaled		; flag for scaleable object
	dc.l	%00100000														; sprite_scale_x	; x scale factor (if scaled)
	dc.l	%00100000														; sprite_scale_y	; y scale factor (if scaled)
	dc.l	-1																; sprite_was_hit	; initially flagged as not hit
	dc.l	10																; sprite_CLUT		; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit														; sprite_colchk		; if sprite can collide with another
	dc.l	cd_remove														; sprite_remhit		; flag to remove (or keep) on collision
	dc.l	single															; sprite_bboxlink	; single for normal bounding box, else pointer to table
	dc.l	1																; sprite_hitpoint	; Hitpoints before death
	dc.l	2																; sprite_damage		; Hitpoints deducted from target
	dc.l	raptor_particle_buffer_width/2									; sprite_gwidth		; GFX width (of data)
	

	dc.b	'STOP'							; end of the current LIST

	dc.b	'<RAPTOR>'						; table termination flag

; END OF FILE.

	
	
	
