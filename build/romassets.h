#define BMP_DOTLAST 0x8022B0
#define BMP_TITLESCREEN 0x8022C0
#define BMP_TITLESCREEN_clut 0x80B7A0
#define BMP_CHOOSEFIGHTER 0x80B9A0
#define BMP_CHOOSEFIGHTER_clut 0x811E00
#define BMP_BATTLESCREEN 0x812000
#define BMP_BATTLESCREEN_clut 0x813CF0
#define BMP_P1_SELECTOR 0x813D10
#define BMP_P2_SELECTOR 0x818D10
#define BMP_P2_SELECTOR_FLASH 0x81DD10
#define BMP_P2_SELECTOR_FLASH_clut 0x81E550
#define BMP_BATTLE_THEPIT 0x81E570
#define BMP_BATTLE_THEPIT_clut 0x81EB10
#define BMPCAGE 0x81EB30
#define BMPCAGE_clut 0x89EB30
#define BMPKANG 0x89EB50
#define BMPKANG_clut 0x91EB50
#define BMPRAIDEN 0x91EB70
#define BMPRAIDEN_clut 0xA1EB70
#define BMPSUBZERO 0xA1EB90
#define BMPSUBZERO_clut 0xAC2B90
#define BMPSONYA 0xAC2BB0
#define BMPSONYA_clut 0xB42BB0
#define BMPKANO 0xB42BD0
#define BMPKANO_clut 0xBC2BD0
#define PAL_SCORPION 0xBC2BF0
#define PAL_SCORPION_clut 0xBC2C00
#define PAL_REPTILE 0xBC2C20
#define PAL_REPTILE_clut 0xBC2C30
#define BMP_LIGHTNING 0xBC2C50
#define BMP_LIGHTNING_clut 0xBECF50
#define BMP_PT_CAGE 0xBECF70
#define BMP_PT_CAGE_clut 0xBED970
#define BMP_PT_KANO 0xBED990
#define BMP_PT_KANO_clut 0xBEE390
#define BMP_PT_KANG 0xBEE3B0
#define BMP_PT_KANG_clut 0xBEEDB0
#define BMP_PT_RAIDEN 0xBEEDD0
#define BMP_PT_RAIDEN_clut 0xBEF7D0
#define BMP_PT_SCORPION 0xBEF7F0
#define BMP_PT_SCORPION_clut 0xBF01F0
#define BMP_PT_SONYA 0xBF0210
#define BMP_PT_SONYA_clut 0xBF0C10
#define BMP_PT_SUBZERO 0xBF0C30
#define BMP_PT_SUBZERO_clut 0xBF1630
#define BMP_PIT_BACKGROUND 0xBF1650
#define BMP_PIT_BACKGROUND_clut 0xC0C690
#define BMP_PIT_SPIKES 0xC0C890
#define BMP_PIT_SPIKES_clut 0xC0D000
#define BMP_PIT_MOON 0xC0D020
#define BMP_PIT_MOON_clut 0xC0E2C0
#define BMP_PIT_CLOUDS1 0xC0E2E0
#define BMP_PIT_CLOUDS1_clut 0xC0F8E0
#define BMP_PIT_CLOUDS2 0xC0F900
#define BMP_PIT_CLOUDS2_clut 0xC10800
#define BMP_PIT_CLOUDS3 0xC10820
#define BMP_PIT_CLOUDS3_clut 0xC112A0
#define BMP_HITBOX 0xC112C0
#define BMP_HITBOX_clut 0xC11EC0
#define BMP_HITBOX_ATTACK 0xC11EE0
#define BMP_HITBOX_ATTACK_clut 0xC12060
#define BMP_HITBOX_OFF 0xC12080
#define BMP_HITBOX_OFF_clut 0xC12C80
#define BMP_HITBOX_ATTACK_OFF 0xC12CA0
#define BMP_HITBOX_ATTACK_OFF_clut 0xC12E20
#define BMP_ROUND1 0xC12E40
#define BMP_ROUND1_clut 0xC13200
#define BMP_FIGHT 0xC13220
#define BMP_FIGHT_clut 0xC15020
#define BMP_BLOOD 0xC15040
#define BMP_BLOOD_clut 0xC1F840
#define BMP_HUD 0xC1F860
#define BMP_HUD_clut 0xC20C60
#define BMP_HEALTHBAR 0xC20C80
#define BMP_HEALTHBAR_clut 0xC21080
#define BMP_NAME_SHANGTSUNG 0xC210A0
#define BMP_NAME_SHANGTSUNG_clut 0xC21420
#define BMP_NAME_GORO 0xC21440
#define BMP_NAME_GORO_clut 0xC216C0
#define BMP_NAME_SONYA 0xC216E0
#define BMP_NAME_SONYA_clut 0xC21960
#define BMP_NAME_SUBZERO 0xC21980
#define BMP_NAME_SUBZERO_clut 0xC21C00
#define BMP_NAME_SCORPION 0xC21C20
#define BMP_NAME_SCORPION_clut 0xC21EA0
#define BMP_NAME_LIUKANG 0xC21EC0
#define BMP_NAME_LIUKANG_clut 0xC22140
#define BMP_NAME_RAIDEN 0xC22160
#define BMP_NAME_RAIDEN_clut 0xC223E0
#define BMP_NAME_KANO 0xC22400
#define BMP_NAME_KANO_clut 0xC22680
#define BMP_NAME_CAGE 0xC226A0
#define BMP_NAME_CAGE_clut 0xC22920
#define BMP_NAME_REPTILE 0xC22940
#define BMP_NAME_REPTILE_clut 0xC22BC0
#define BMP_NAME_KASUMI 0xC22BE0
#define BMP_NAME_KASUMI_clut 0xC22E60
extern void *p1cursor_sam asm("p1cursor_sam");
extern void *p1cursor_sam_end asm("p1cursor_sam_end");
extern void *p2cursor_sam asm("p2cursor_sam");
extern void *p2cursor_sam_end asm("p2cursor_sam_end");
extern void *p2selected_sam asm("p2selected_sam");
extern void *p2selected_sam_end asm("p2selected_sam_end");
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
extern void *fight_sam asm("fight_sam");
extern void *fight_sam_end asm("fight_sam_end");
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
extern void *MOD_TITLE asm("MOD_TITLE");
extern void *MOD_TITLE_end asm("MOD_TITLE_end");
extern void *MOD_STAGE asm("MOD_STAGE");
extern void *MOD_STAGE_end asm("MOD_STAGE_end");
