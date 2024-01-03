#define BMP_DOTLAST 0x8022B0
#define BMP_TITLESCREEN 0x8022C0
#define BMP_TITLESCREEN_clut 0x80B7A0
#define BMP_CHOOSEFIGHTER 0x80B9A0
#define BMP_CHOOSEFIGHTER_clut 0x811E00
#define BMP_BATTLESCREEN 0x812000
#define BMP_BATTLESCREEN_clut 0x813AE0
#define BMP_P1_SELECTOR 0x813B00
#define BMP_P2_SELECTOR 0x818B00
#define BMPCAGE 0x81DB00
#define BMPCAGE_clut 0x89DB00
#define BMPKANG 0x89DB20
#define BMPKANG_clut 0x91DB20
#define BMPRAIDEN 0x91DB40
#define BMPRAIDEN_clut 0x99DB40
#define BMPSUBZERO 0x99DB60
#define BMPSUBZERO_clut 0xA9DB60
#define BMPSONYA 0xA9DB80
#define BMPSONYA_clut 0xB1DB80
#define BMPKANO 0xB1DBA0
#define BMPKANO_clut 0xB9DBA0
#define PAL_SCORPION 0xB9DBC0
#define PAL_SCORPION_clut 0xB9DBD0
#define PAL_REPTILE 0xB9DBF0
#define PAL_REPTILE_clut 0xB9DC00
#define BMP_LIGHTNING 0xB9DC20
#define BMP_LIGHTNING_clut 0xBC7F20
#define BMP_PT_CAGE 0xBC7F40
#define BMP_PT_CAGE_clut 0xBC8940
#define BMP_PT_KANO 0xBC8960
#define BMP_PT_KANO_clut 0xBC9360
#define BMP_PT_KANG 0xBC9380
#define BMP_PT_KANG_clut 0xBC9D80
#define BMP_PT_RAIDEN 0xBC9DA0
#define BMP_PT_RAIDEN_clut 0xBCA7A0
#define BMP_PT_SCORPION 0xBCA7C0
#define BMP_PT_SCORPION_clut 0xBCB1C0
#define BMP_PT_SONYA 0xBCB1E0
#define BMP_PT_SONYA_clut 0xBCBBE0
#define BMP_PT_SUBZERO 0xBCBC00
#define BMP_PT_SUBZERO_clut 0xBCC600
#define BMP_PIT_BACKGROUND 0xBCC620
#define BMP_PIT_BACKGROUND_clut 0xBE8170
#define BMP_PIT_SPIKES 0xBE8370
#define BMP_PIT_SPIKES_clut 0xBE8AE0
#define BMP_PIT_MOON 0xBE8B00
#define BMP_PIT_MOON_clut 0xBE9DA0
#define BMP_PIT_CLOUDS1 0xBE9DC0
#define BMP_PIT_CLOUDS1_clut 0xBEADF0
#define BMP_PIT_CLOUDS2 0xBEAE10
#define BMP_PIT_CLOUDS2_clut 0xBEB700
#define BMP_PIT_CLOUDS3 0xBEB720
#define BMP_PIT_CLOUDS3_clut 0xBEBD10
#define BMP_HITBOX 0xBEBD30
#define BMP_HITBOX_ATTACK 0xBEC330
#define BMP_HITBOX_OFF 0xBEC4B0
#define BMP_HITBOX_ATTACK_OFF 0xBECAB0
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
extern void *thud_sam asm("thud_sam");
extern void *thud_sam_end asm("thud_sam_end");
extern void *crowd_aww_sam asm("crowd_aww_sam");
extern void *crowd_aww_sam_end asm("crowd_aww_sam_end");
extern void *announcer_excellent_sam asm("announcer_excellent_sam");
extern void *announcer_excellent_sam_end asm("announcer_excellent_sam_end");
extern void *announcer_laugh_sam asm("announcer_laugh_sam");
extern void *announcer_laugh_sam_end asm("announcer_laugh_sam_end");
