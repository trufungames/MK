#define BMP_DOTLAST 0x8022B0
#define BMP_TITLESCREEN 0x8022C0
#define BMP_TITLESCREEN_clut 0x80B7A0
#define BMP_CHOOSEFIGHTER 0x80B9A0
#define BMP_CHOOSEFIGHTER_clut 0x811E00
#define BMP_P1_SELECTOR 0x812000
#define BMP_P2_SELECTOR 0x817000
#define BMPCAGE 0x81C000
#define BMPCAGE_clut 0x89C000
#define BMPKANG 0x89C020
#define BMPKANG_clut 0x91C020
#define BMPRAIDEN 0x91C040
#define BMPRAIDEN_clut 0x99C040
#define BMPSUBZERO 0x99C060
#define BMPSUBZERO_clut 0xA9C060
#define BMPSONYA 0xA9C080
#define BMPSONYA_clut 0xB1C080
#define BMPKANO 0xB1C0A0
#define BMPKANO_clut 0xB9C0A0
#define PAL_SCORPION 0xB9C0C0
#define PAL_SCORPION_clut 0xB9C0D0
#define PAL_REPTILE 0xB9C0F0
#define PAL_REPTILE_clut 0xB9C100
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
