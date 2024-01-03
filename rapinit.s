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
	dc.l	1024/2							; sprite_hbox					; width of collision box
	dc.l	2048/2							; sprite_vbox					; height of collision box
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
	dc.w	90,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	96								; sprite_width					; width of sprite (in pixels)
	dc.l	144								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	1024/2							; sprite_hbox					; width of collision box
	dc.l	2048/2							; sprite_vbox					; height of collision box
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
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	1024/2							; sprite_gwidth					; GFX width (of data)

; Raiden Lightning Object
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	4,0							; sprite_x						; 16.16 x value to position at
	dc.w	90,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	80								; sprite_width					; width of sprite (in pixels)
	dc.l	144								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	800/2							; sprite_hbox					; width of collision box
	dc.l	800/2							; sprite_vbox					; height of collision box
	dc.l	BMP_LIGHTNING				; sprite_gfxbase				; start of bitmap data
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
	dc.l	13							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	800/2							; sprite_gwidth					; GFX width (of data)

; Raiden Lightning Object Player 1
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_inactive						; sprite_active					; sprite active flag
	dc.w	230,0							; sprite_x						; 16.16 x value to position at
	dc.w	90,0							; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	80								; sprite_width					; width of sprite (in pixels)
	dc.l	144								; sprite_height					; height of sprite (in pixels)
	dc.l	is_flipped						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	800/2							; sprite_hbox					; width of collision box
	dc.l	800/2							; sprite_vbox					; height of collision box
	dc.l	BMP_LIGHTNING				; sprite_gfxbase				; start of bitmap data
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
	dc.l	13							; sprite_CLUT					; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit						; sprite_colchk					; if sprite can collide with another
	dc.l	cd_keep							; sprite_remhit					; flag to remove (or keep) on collision
	dc.l	single							; sprite_bboxlink				; single for normal bounding box, else pointer to table
	dc.l	1								; sprite_hitpoint				; Hitpoints before death
	dc.l	2								; sprite_damage					; Hitpoints deducted from target
	dc.l	800/2							; sprite_gwidth					; GFX width (of data)

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

; P1 Johnny Cage object
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


; P1 Kano object
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
	dc.l	BMP_PT_KANO					; sprite_gfxbase				; start of bitmap data
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

; P1 Subzero object
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
	dc.l	BMP_PT_SUBZERO					; sprite_gfxbase				; start of bitmap data
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

	
; P1 Sonya object
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
	dc.l	BMP_PT_SONYA					; sprite_gfxbase				; start of bitmap data
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

; P1 Raiden object
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
	dc.l	BMP_PT_RAIDEN					; sprite_gfxbase				; start of bitmap data
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

; P1 Liu Kang object
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
	dc.l	BMP_PT_KANG					; sprite_gfxbase				; start of bitmap data
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

; P1 Scorpion object
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
	dc.l	BMP_PT_SCORPION					; sprite_gfxbase				; start of bitmap data
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

; P2 Johnny Cage object
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

; P2 Kano object
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
	dc.l	BMP_PT_KANO					; sprite_gfxbase				; start of bitmap data
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

; P2 Subzero object
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
	dc.l	BMP_PT_SUBZERO					; sprite_gfxbase				; start of bitmap data
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

	
; P2 Sonya object
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
	dc.l	BMP_PT_SONYA					; sprite_gfxbase				; start of bitmap data
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

; P2 Raiden object
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
	dc.l	BMP_PT_RAIDEN					; sprite_gfxbase				; start of bitmap data
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

; P2 Liu Kang object
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
	dc.l	BMP_PT_KANG					; sprite_gfxbase				; start of bitmap data
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

; P2 Scorpion object
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
	dc.l	BMP_PT_SCORPION					; sprite_gfxbase				; start of bitmap data
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

	dc.b	'STOP'							; end of the current LIST

	dc.b	'LIST'		; initiate list structure

; THE PIT BACKGROUND Object (used for Title Screen, Choose Your Fighter, etc.)
	dc.l	1								; (REPEAT COUNTER) 				; Create this many objects of this type (or 1 for a single object)
	dc.l	is_active						; sprite_active					; sprite active flag
	dc.w	0,0								; sprite_x						; 16.16 x value to position at
	dc.w	0,0								; sprite_y						; 16.16 y value to position at
	dc.w	0,0								; sprite_xadd					; 16.16 x addition for sprite movement
	dc.w	0,0								; sprite_yadd					; 16.16 y addition for sprite movement
	dc.l	1136								; sprite_width					; width of sprite (in pixels)
	dc.l	896								; sprite_height					; height of sprite (in pixels)
	dc.l	is_normal						; sprite_flip					; flag for mirroring data left<>right
	dc.l	0								; sprite_coffx					; x offset from center for collision box center
	dc.l	0								; sprite_coffy					; y offset from center for collision box center	
	dc.l	1136							; sprite_hbox					; width of collision box
	dc.l	896							; sprite_vbox					; height of collision box
	dc.l	0					; sprite_gfxbase				; start of bitmap data
	dc.l	8								; (BIT DEPTH)					; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB							; (CRY/RGB)						; bitmap GFX type
	dc.l	is_trans						; (TRANSPARENCY)				; bitmap TRANS flag
	dc.l	1136*896					; sprite_framesz				; size per frame in bytes of sprite data
	dc.l	1136							; sprite_bytewid				; width in bytes of one line of sprite data
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
	dc.l	1136						; sprite_gwidth					; GFX width (of data)	

	dc.b	'STOP'							; end of the current LIST

	dc.b	'<RAPTOR>'						; table termination flag

; END OF FILE.

	
	
	
