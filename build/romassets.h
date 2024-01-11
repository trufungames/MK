#define BMP_DOTLAST 0x8022B0
#define BMP_TITLESCREEN 0x8022C0
#define BMP_TITLESCREEN_clut 0x80B7A0
#define BMP_CHOOSEFIGHTER 0x80B9A0
#define BMP_CHOOSEFIGHTER_clut 0x811E00
#define BMP_BATTLESCREEN 0x812000
#define BMP_BATTLESCREEN_clut 0x813CF0
#define BMP_P1_SELECTOR 0x813D10
#define BMP_P2_SELECTOR 0x818D10
#define BMP_BATTLE_THEPIT 0x81DD10
#define BMP_BATTLE_THEPIT_clut 0x81E2B0
#define BMPCAGE 0x81E2D0
#define BMPCAGE_clut 0x89E2D0
#define BMPKANG 0x89E2F0
#define BMPKANG_clut 0x91E2F0
#define BMPRAIDEN 0x91E310
#define BMPRAIDEN_clut 0x99E310
#define BMPSUBZERO 0x99E330
#define BMPSUBZERO_clut 0xA9E330
#define BMPSONYA 0xA9E350
#define BMPSONYA_clut 0xB1E350
#define BMPKANO 0xB1E370
#define BMPKANO_clut 0xB9E370
#define PAL_SCORPION 0xB9E390
#define PAL_SCORPION_clut 0xB9E3A0
#define PAL_REPTILE 0xB9E3C0
#define PAL_REPTILE_clut 0xB9E3D0
#define BMP_LIGHTNING 0xB9E3F0
#define BMP_LIGHTNING_clut 0xBC86F0
#define BMP_PT_CAGE 0xBC8710
#define BMP_PT_CAGE_clut 0xBC9110
#define BMP_PT_KANO 0xBC9130
#define BMP_PT_KANO_clut 0xBC9B30
#define BMP_PT_KANG 0xBC9B50
#define BMP_PT_KANG_clut 0xBCA550
#define BMP_PT_RAIDEN 0xBCA570
#define BMP_PT_RAIDEN_clut 0xBCAF70
#define BMP_PT_SCORPION 0xBCAF90
#define BMP_PT_SCORPION_clut 0xBCB990
#define BMP_PT_SONYA 0xBCB9B0
#define BMP_PT_SONYA_clut 0xBCC3B0
#define BMP_PT_SUBZERO 0xBCC3D0
#define BMP_PT_SUBZERO_clut 0xBCCDD0
#define BMP_PIT_BACKGROUND 0xBCCDF0
#define BMP_PIT_BACKGROUND_clut 0xBCECE0
#define BMP_PIT_SPIKES 0xBCEEE0
#define BMP_PIT_SPIKES_clut 0xBCF650
#define BMP_PIT_MOON 0xBCF670
#define BMP_PIT_MOON_clut 0xBD0910
#define BMP_PIT_CLOUDS1 0xBD0930
#define BMP_PIT_CLOUDS1_clut 0xBD1F30
#define BMP_PIT_CLOUDS2 0xBD1F50
#define BMP_PIT_CLOUDS2_clut 0xBD2E50
#define BMP_PIT_CLOUDS3 0xBD2E70
#define BMP_PIT_CLOUDS3_clut 0xBD38F0
#define BMP_HITBOX 0xBD3910
#define BMP_HITBOX_clut 0xBD4510
#define BMP_HITBOX_ATTACK 0xBD4530
#define BMP_HITBOX_ATTACK_clut 0xBD46B0
#define BMP_HITBOX_OFF 0xBD46D0
#define BMP_HITBOX_OFF_clut 0xBD52D0
#define BMP_HITBOX_ATTACK_OFF 0xBD52F0
#define BMP_HITBOX_ATTACK_OFF_clut 0xBD5470
#define BMP_ROUND1 0xBD5490
#define BMP_ROUND1_clut 0xBD5850
#define BMP_FIGHT 0xBD5870
#define BMP_FIGHT_clut 0xBD7670
#define BMP_BLOOD 0xBD7690
#define BMP_BLOOD_clut 0xBE1E90
#define BMP_HUD 0xBE1EB0
#define BMP_HUD_clut 0xBE32B0
#define BMP_HEALTHBAR 0xBE32D0
#define BMP_HEALTHBAR_clut 0xBE36D0
#define BMP_NAME_SHANGTSUNG 0xBE36F0
#define BMP_NAME_SHANGTSUNG_clut 0xBE3A70
#define BMP_NAME_GORO 0xBE3A90
#define BMP_NAME_GORO_clut 0xBE3D10
#define BMP_NAME_SONYA 0xBE3D30
#define BMP_NAME_SONYA_clut 0xBE3FB0
#define BMP_NAME_SUBZERO 0xBE3FD0
#define BMP_NAME_SUBZERO_clut 0xBE4250
#define BMP_NAME_SCORPION 0xBE4270
#define BMP_NAME_SCORPION_clut 0xBE44F0
#define BMP_NAME_LIUKANG 0xBE4510
#define BMP_NAME_LIUKANG_clut 0xBE4790
#define BMP_NAME_RAIDEN 0xBE47B0
#define BMP_NAME_RAIDEN_clut 0xBE4A30
#define BMP_NAME_KANO 0xBE4A50
#define BMP_NAME_KANO_clut 0xBE4CD0
#define BMP_NAME_CAGE 0xBE4CF0
#define BMP_NAME_CAGE_clut 0xBE4F70
#define BMP_NAME_REPTILE 0xBE4F90
#define BMP_NAME_REPTILE_clut 0xBE5210
#define BMP_NAME_KASUMI 0xBE5230
#define BMP_NAME_KASUMI_clut 0xBE54B0
extern void *fight_sam asm("fight_sam");
extern void *fight_sam_end asm("fight_sam_end");
extern void *johnnycage_sam asm("johnnycage_sam");
extern void *johnnycage_sam_end asm("johnnycage_sam_end");
extern void *kano_sam asm("kano_sam");
extern void *kano_sam_end asm("kano_sam_end");
extern void *raiden_sam asm("raiden_sam");
extern void *raiden_sam_end asm("raiden_sam_end");
extern void *liukang_sam asm("liukang_sam");
extern void *liukang_sam_end asm("liukang_sam_end");
extern void *scorpion_sam asm("scorpion_sam");
extern void *scorpion_sam_end asm("scorpion_sam_end");
extern void *subzero_sam asm("subzero_sam");
extern void *subzero_sam_end asm("subzero_sam_end");
extern void *sonya_sam asm("sonya_sam");
extern void *sonya_sam_end asm("sonya_sam_end");
extern void *p1cursor_sam asm("p1cursor_sam");
extern void *p1cursor_sam_end asm("p1cursor_sam_end");
extern void *p2cursor_sam asm("p2cursor_sam");
extern void *p2cursor_sam_end asm("p2cursor_sam_end");
extern void *gong_sam asm("gong_sam");
extern void *gong_sam_end asm("gong_sam_end");
extern void *intro_sam asm("intro_sam");
extern void *intro_sam_end asm("intro_sam_end");
extern void *hiya_female1_sam asm("hiya_female1_sam");
extern void *hiya_female1_sam_end asm("hiya_female1_sam_end");
extern void *hiya_female2_sam asm("hiya_female2_sam");
extern void *hiya_female2_sam_end asm("hiya_female2_sam_end");
extern void *hiya_male1_sam asm("hiya_male1_sam");
extern void *hiya_male1_sam_end asm("hiya_male1_sam_end");
extern void *hiya_male2_sam asm("hiya_male2_sam");
extern void *hiya_male2_sam_end asm("hiya_male2_sam_end");
extern void *hiya_kang1_sam asm("hiya_kang1_sam");
extern void *hiya_kang1_sam_end asm("hiya_kang1_sam_end");
extern void *hiya_kang2_sam asm("hiya_kang2_sam");
extern void *hiya_kang2_sam_end asm("hiya_kang2_sam_end");
extern void *hiya_ninja1_sam asm("hiya_ninja1_sam");
extern void *hiya_ninja1_sam_end asm("hiya_ninja1_sam_end");
extern void *hiya_ninja2_sam asm("hiya_ninja2_sam");
extern void *hiya_ninja2_sam_end asm("hiya_ninja2_sam_end");
extern void *block01_sam asm("block01_sam");
extern void *block01_sam_end asm("block01_sam_end");
extern void *block02_sam asm("block02_sam");
extern void *block02_sam_end asm("block02_sam_end");
extern void *groan_male01_sam asm("groan_male01_sam");
extern void *groan_male01_sam_end asm("groan_male01_sam_end");
extern void *groan_male02_sam asm("groan_male02_sam");
extern void *groan_male02_sam_end asm("groan_male02_sam_end");
extern void *groan_female01_sam asm("groan_female01_sam");
extern void *groan_female01_sam_end asm("groan_female01_sam_end");
extern void *groan_female02_sam asm("groan_female02_sam");
extern void *groan_female02_sam_end asm("groan_female02_sam_end");
extern void *hit_01_sam asm("hit_01_sam");
extern void *hit_01_sam_end asm("hit_01_sam_end");
extern void *hit_02_sam asm("hit_02_sam");
extern void *hit_02_sam_end asm("hit_02_sam_end");
extern void *hit_impact_sam asm("hit_impact_sam");
extern void *hit_impact_sam_end asm("hit_impact_sam_end");
extern void *swing_01_sam asm("swing_01_sam");
extern void *swing_01_sam_end asm("swing_01_sam_end");
extern void *swing_02_sam asm("swing_02_sam");
extern void *swing_02_sam_end asm("swing_02_sam_end");
extern void *blood01_sam asm("blood01_sam");
extern void *blood01_sam_end asm("blood01_sam_end");
extern void *blood02_sam asm("blood02_sam");
extern void *blood02_sam_end asm("blood02_sam_end");
extern void *yell_male01_sam asm("yell_male01_sam");
extern void *yell_male01_sam_end asm("yell_male01_sam_end");
extern void *yell_male02_sam asm("yell_male02_sam");
extern void *yell_male02_sam_end asm("yell_male02_sam_end");
extern void *yell_female_sam asm("yell_female_sam");
extern void *yell_female_sam_end asm("yell_female_sam_end");
extern void *yell_kang_sam asm("yell_kang_sam");
extern void *yell_kang_sam_end asm("yell_kang_sam_end");
extern void *jump_male_sam asm("jump_male_sam");
extern void *jump_male_sam_end asm("jump_male_sam_end");
extern void *jump_female_sam asm("jump_female_sam");
extern void *jump_female_sam_end asm("jump_female_sam_end");
extern void *jump_ninja_sam asm("jump_ninja_sam");
extern void *jump_ninja_sam_end asm("jump_ninja_sam_end");
extern void *jump_roll_sam asm("jump_roll_sam");
extern void *jump_roll_sam_end asm("jump_roll_sam_end");
extern void *thud_sam asm("thud_sam");
extern void *thud_sam_end asm("thud_sam_end");
extern void *crowd_aww_sam asm("crowd_aww_sam");
extern void *crowd_aww_sam_end asm("crowd_aww_sam_end");
extern void *announcer_excellent_sam asm("announcer_excellent_sam");
extern void *announcer_excellent_sam_end asm("announcer_excellent_sam_end");
extern void *announcer_laugh_sam asm("announcer_laugh_sam");
extern void *announcer_laugh_sam_end asm("announcer_laugh_sam_end");
