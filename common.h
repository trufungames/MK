
#include "jstudio.h"
#include "romassets.h"

#define BACKGROUND 0
#define P2_FLASH 1
#define P2_CURSOR 2
#define P1_FLASH 3
#define P1_CURSOR 4
#define P1_FIGHTER_SHADOW 5
#define P1_FIGHTER 6
#define P2_FIGHTER_SHADOW 7
#define P2_FIGHTER 8
#define LIGHTNING 9
#define LIGHTNING2 10

#define BATTLE_SCREEN 12
#define TEXT_PARTICLES BATTLE_SCREEN + 1
#define P1_PT_PORTRAIT TEXT_PARTICLES + 1
#define P2_PT_PORTRAIT P1_PT_PORTRAIT + 1
#define BATTLE_NAME P2_PT_PORTRAIT + 1

#define STAGE_PIT_MOON BATTLE_NAME + 1
#define STAGE_PIT_CLOUDS1 STAGE_PIT_MOON + 1
#define STAGE_PIT_BACKGROUND STAGE_PIT_CLOUDS1 + 8
#define BLOOD_POOL STAGE_PIT_BACKGROUND + 1
#define P1_FIGHTER_SHADOW_PIT BLOOD_POOL + 8
#define P1_FIGHTER_PIT P1_FIGHTER_SHADOW_PIT + 1
#define P1_PROJECTILE P1_FIGHTER_PIT + 1
#define P2_FIGHTER_SHADOW P1_PROJECTILE + 1
#define P2_FIGHTER_PIT P2_FIGHTER_SHADOW + 1
#define P2_PROJECTILE P2_FIGHTER_PIT + 1
#define P1_HB_ATTACK P2_PROJECTILE + 1
#define P2_HB_ATTACK P1_HB_ATTACK + 1
#define BLOOD_SPRAY P2_HB_ATTACK + 1  //1 of 2
#define BLOOD_GLOB BLOOD_SPRAY + 2
#define BLOOD_DROP BLOOD_GLOB + 1  //1 of 8
#define BLOOD_SQUIRT BLOOD_DROP + 8 //1 of 4
#define FIGHT BLOOD_SQUIRT + 4
#define HUD FIGHT + 1
#define P1_HEALTHBAR HUD + 1
#define P2_HEALTHBAR P1_HEALTHBAR + 1
//-----------------------------------------------------------------------------------------------------
#define SOUND_P1CURSOR 0
#define SOUND_P2CURSOR 1
#define SOUND_SELECTED 2
#define SOUND_CAGE 3
#define SOUND_KANO 4
#define SOUND_RAIDEN 5
#define SOUND_KANG 6
#define SOUND_SCORPION 7
#define SOUND_SUBZERO 8
#define SOUND_SONYA 9
#define SOUND_FIGHT 10
#define SOUND_GONG 11
#define SOUND_INTRO 12
#define SOUND_HIYA_FEMALE1 13
#define SOUND_HIYA_FEMALE2 14
#define SOUND_HIYA_MALE1 15
#define SOUND_HIYA_MALE2 16
#define SOUND_HIYA_KANG1 17
#define SOUND_HIYA_KANG2 18
#define SOUND_HIYA_NINJA1 19
#define SOUND_HIYA_NINJA2 20
#define SOUND_BLOCK01 21
#define SOUND_BLOCK02 22
#define SOUND_GROAN_MALE01 23
#define SOUND_GROAN_MALE02 24
#define SOUND_GROAN_FEMALE01 25
#define SOUND_GROAN_FEMALE02 26
#define SOUND_HIT_01 27
#define SOUND_HIT_02 28
#define SOUND_HIT_IMPACT 29
#define SOUND_SWING_01 30
#define SOUND_SWING_02 31
#define SOUND_BLOOD01 32
#define SOUND_BLOOD02 33
#define SOUND_YELL_MALE01 34
#define SOUND_YELL_MALE02 35
#define SOUND_YELL_FEMALE 36
#define SOUND_YELL_KANG 37
#define SOUND_JUMP_MALE 38
#define SOUND_JUMP_FEMALE 39
#define SOUND_JUMP_NINJA 40
#define SOUND_JUMP_ROLL 41
#define SOUND_THUD 42
#define SOUND_CROWD_AWW 43
#define SOUND_ANNOUNCER_EXCELLENT 44
#define SOUND_ANNOUNCER_LAUGH 45
#define SOUND_FINISH_HER 46
#define SOUND_FINISH_HIM 47
#define SOUND_WINS 48
#define SOUND_FLAWLESS 49
#define SOUND_FATALITY 50
#define SOUND_CAGE_YEAH 51
#define SOUND_KANO_YELL 52
#define SOUND_KANO_HEADBUTT 53
#define SOUND_THROW_MALE 54
#define SOUND_THROW_FEMALE 55
#define SOUND_THROW_NINJA 56
#define SOUND_TRUFUN 57

//-----------------------------------------------------------------------------------------------------
#define MAX_HEALTH 34
#define DMG_LP 2
#define DMG_HP 2
#define DMG_LK 5
#define DMG_HK 5
#define DMG_SWEEP 4
#define DMG_UPPERCUT 8
#define DMG_ROUNDHOUSE 6
#define DMG_JUMPPUNCH 5
#define DMG_JUMPKICK 4
#define DMG_DROPKICK 6
#define DMG_BLOCKED 1
#define DMG_DUCK_KICK 2
#define DMG_BODY_PUNCH 4
#define DMG_BODY_KICK 4
#define DMG_THROW 8
//-----------------------------------------------------------------------------------------------------
#define CAMERA_BOUND_LEFT 10
#define CAMERA_BOUND_RIGHT 329
#define FIGHTER_WIDTH 48
#define FLOOR_LOCATION_Y 166
#define FLOOR_LOCATION_Y_FIGHTER 90
#define HITBOX_WIDTH 32

//-----------------------------------------------------------------------------------------------------
#define CAGE 1
#define KANO 2
#define RAIDEN 3
#define KANG 4
#define SCORPION 5
#define SUBZERO 6
#define SONYA 7
#define REPTILE 8
#define KASUMI 9
#define GORO 10
#define SHANG 11

//-----------------------------------------------------------------------------------------------------
#define CHOOSE_FIGHTER_TIME_TOTAL 30*60
#define MATCH_TIME_TOTAL 99*60
#define MATCH_TIME_WINS 6*60
#define MATCH_TIME_FINISH 3*60

//-----------------------------------------------------------------------------------------------------
#define SOUND_CHANNEL_PLAYER_L 4
#define SOUND_CHANNEL_PLAYER_R 5
#define SOUND_CHANNEL_MISC_L 6
#define SOUND_CHANNEL_MISC_R 7

//-----------------------------------------------------------------------------------------------------
#define SCORPION_IDLE_FRAME_COUNT 7
#define SCORPION_WALK_FRAME_COUNT 9

#define KANO_IDLE_FRAME_COUNT 7
#define KANO_DIZZY_FRAME_COUNT 7
#define KANO_WINS_FRAME_COUNT 5
#define KANO_WALK_FRAME_COUNT 9
#define KANO_TURN_FRAME_COUNT 2
#define KANO_JUMP_FRAME_COUNT 4
#define KANO_JUMP_ROLL_FRAME_COUNT 7
#define KANO_DUCK_FRAME_COUNT 3
#define KANO_BLOCK_FRAME_COUNT 3
#define KANO_BLOCK_HIT_FRAME_COUNT 6
#define KANO_BLOCK_DUCK_FRAME_COUNT 2
#define KANO_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define KANO_LOW_PUNCH_FRAME_COUNT 5
#define KANO_HIGH_PUNCH_FRAME_COUNT 5
#define KANO_LOW_KICK_FRAME_COUNT 7
#define KANO_HIGH_KICK_FRAME_COUNT 8
#define KANO_JUMP_PUNCH_FRAME_COUNT 3
#define KANO_JUMP_KICK_FRAME_COUNT 3
#define KANO_UPPERCUT_FRAME_COUNT 6
#define KANO_KIPUP_FRAME_COUNT 5
#define KANO_SWEEP_FRAME_COUNT 9
#define KANO_ROUNDHOUSE_FRAME_COUNT 8
#define KANO_BODY_PUNCH_FRAME_COUNT 5
#define KANO_BODY_KICK_FRAME_COUNT 5
#define KANO_DUCK_KICK_FRAME_COUNT 5
#define KANO_THROW_FRAME_COUNT 7
#define KANO_BEING_THROWN_FRAME_COUNT 6

#define KANO_HIT_BACK_FRAME_COUNT 7
#define KANO_HIT_LOW_FRAME_COUNT 4
#define KANO_HIT_HIGH_FRAME_COUNT 4
#define KANO_HIT_FALL_FRAME_COUNT 7
#define KANO_HIT_SWEEP_FRAME_COUNT 6

#define CAGE_IDLE_FRAME_COUNT 7
#define CAGE_DIZZY_FRAME_COUNT 7
#define CAGE_WINS_FRAME_COUNT 11
#define CAGE_WALK_FRAME_COUNT 9
#define CAGE_TURN_FRAME_COUNT 2
#define CAGE_JUMP_FRAME_COUNT 4
#define CAGE_JUMP_ROLL_FRAME_COUNT 7
#define CAGE_DUCK_FRAME_COUNT 3
#define CAGE_BLOCK_FRAME_COUNT 3
#define CAGE_BLOCK_HIT_FRAME_COUNT 6
#define CAGE_BLOCK_DUCK_FRAME_COUNT 2
#define CAGE_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define CAGE_LOW_PUNCH_FRAME_COUNT 5
#define CAGE_HIGH_PUNCH_FRAME_COUNT 5
#define CAGE_LOW_KICK_FRAME_COUNT 7
#define CAGE_HIGH_KICK_FRAME_COUNT 8
#define CAGE_JUMP_PUNCH_FRAME_COUNT 3
#define CAGE_JUMP_KICK_FRAME_COUNT 3
#define CAGE_UPPERCUT_FRAME_COUNT 6
#define CAGE_KIPUP_FRAME_COUNT 5
#define CAGE_SWEEP_FRAME_COUNT 9
#define CAGE_ROUNDHOUSE_FRAME_COUNT 7
#define CAGE_BODY_PUNCH_FRAME_COUNT 5
#define CAGE_BODY_KICK_FRAME_COUNT 5
#define CAGE_DUCK_KICK_FRAME_COUNT 5
#define CAGE_THROW_FRAME_COUNT 8
#define CAGE_BEING_THROWN_FRAME_COUNT 6

#define CAGE_HIT_LOW_FRAME_COUNT 4
#define CAGE_HIT_HIGH_FRAME_COUNT 4
#define CAGE_HIT_BACK_FRAME_COUNT 7
#define CAGE_HIT_FALL_FRAME_COUNT 7
#define CAGE_HIT_SWEEP_FRAME_COUNT 6

#define KANG_IDLE_FRAME_COUNT 7
#define KANG_DIZZY_FRAME_COUNT 7
#define KANG_WINS_FRAME_COUNT 15
#define KANG_WALK_FRAME_COUNT 9
#define KANG_TURN_FRAME_COUNT 2
#define KANG_JUMP_FRAME_COUNT 4
#define KANG_JUMP_ROLL_FRAME_COUNT 7
#define KANG_DUCK_FRAME_COUNT 3
#define KANG_BLOCK_FRAME_COUNT 3
#define KANG_BLOCK_HIT_FRAME_COUNT 6
#define KANG_BLOCK_DUCK_FRAME_COUNT 2
#define KANG_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define KANG_LOW_PUNCH_FRAME_COUNT 5
#define KANG_HIGH_PUNCH_FRAME_COUNT 5
#define KANG_LOW_KICK_FRAME_COUNT 7
#define KANG_HIGH_KICK_FRAME_COUNT 8
#define KANG_JUMP_PUNCH_FRAME_COUNT 3
#define KANG_JUMP_KICK_FRAME_COUNT 3
#define KANG_UPPERCUT_FRAME_COUNT 6
#define KANG_KIPUP_FRAME_COUNT 5
#define KANG_SWEEP_FRAME_COUNT 9
#define KANG_ROUNDHOUSE_FRAME_COUNT 7
#define KANG_BODY_PUNCH_FRAME_COUNT 5
#define KANG_BODY_KICK_FRAME_COUNT 5
#define KANG_DUCK_KICK_FRAME_COUNT 5
#define KANG_THROW_FRAME_COUNT 8
#define KANG_BEING_THROWN_FRAME_COUNT 6

#define KANG_HIT_LOW_FRAME_COUNT 4
#define KANG_HIT_HIGH_FRAME_COUNT 4
#define KANG_HIT_BACK_FRAME_COUNT 7
#define KANG_HIT_FALL_FRAME_COUNT 7
#define KANG_HIT_SWEEP_FRAME_COUNT 6

#define RAIDEN_IDLE_FRAME_COUNT 10
#define RAIDEN_DIZZY_FRAME_COUNT 7
#define RAIDEN_WINS_FRAME_COUNT 5
#define RAIDEN_WALK_FRAME_COUNT 9
#define RAIDEN_TURN_FRAME_COUNT 2
#define RAIDEN_JUMP_FRAME_COUNT 4
#define RAIDEN_JUMP_ROLL_FRAME_COUNT 8
#define RAIDEN_DUCK_FRAME_COUNT 3
#define RAIDEN_BLOCK_FRAME_COUNT 3
#define RAIDEN_BLOCK_HIT_FRAME_COUNT 6
#define RAIDEN_BLOCK_DUCK_FRAME_COUNT 2
#define RAIDEN_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define RAIDEN_LOW_PUNCH_FRAME_COUNT 5
#define RAIDEN_HIGH_PUNCH_FRAME_COUNT 5
#define RAIDEN_LOW_KICK_FRAME_COUNT 7
#define RAIDEN_HIGH_KICK_FRAME_COUNT 8
#define RAIDEN_JUMP_PUNCH_FRAME_COUNT 3
#define RAIDEN_JUMP_KICK_FRAME_COUNT 3
#define RAIDEN_UPPERCUT_FRAME_COUNT 6
#define RAIDEN_KIPUP_FRAME_COUNT 5
#define RAIDEN_SWEEP_FRAME_COUNT 9
#define RAIDEN_ROUNDHOUSE_FRAME_COUNT 6
#define RAIDEN_BODY_PUNCH_FRAME_COUNT 5
#define RAIDEN_BODY_KICK_FRAME_COUNT 5
#define RAIDEN_DUCK_KICK_FRAME_COUNT 5
#define RAIDEN_THROW_FRAME_COUNT 8
#define RAIDEN_BEING_THROWN_FRAME_COUNT 6

#define RAIDEN_HIT_LOW_FRAME_COUNT 4
#define RAIDEN_HIT_HIGH_FRAME_COUNT 5
#define RAIDEN_HIT_BACK_FRAME_COUNT 7
#define RAIDEN_HIT_FALL_FRAME_COUNT 7
#define RAIDEN_HIT_SWEEP_FRAME_COUNT 6

#define SUBZERO_IDLE_FRAME_COUNT 12
#define SUBZERO_DIZZY_FRAME_COUNT 7
#define SUBZERO_WINS_FRAME_COUNT 3
#define SUBZERO_WALK_FRAME_COUNT 9
#define SUBZERO_TURN_FRAME_COUNT 2
#define SUBZERO_JUMP_FRAME_COUNT 4
#define SUBZERO_JUMP_ROLL_FRAME_COUNT 7
#define SUBZERO_DUCK_FRAME_COUNT 3
#define SUBZERO_BLOCK_FRAME_COUNT 3
#define SUBZERO_BLOCK_HIT_FRAME_COUNT 6
#define SUBZERO_BLOCK_DUCK_FRAME_COUNT 2
#define SUBZERO_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define SUBZERO_LOW_PUNCH_FRAME_COUNT 5
#define SUBZERO_HIGH_PUNCH_FRAME_COUNT 5
#define SUBZERO_LOW_KICK_FRAME_COUNT 7
#define SUBZERO_HIGH_KICK_FRAME_COUNT 8
#define SUBZERO_JUMP_PUNCH_FRAME_COUNT 3
#define SUBZERO_JUMP_KICK_FRAME_COUNT 3
#define SUBZERO_UPPERCUT_FRAME_COUNT 6
#define SUBZERO_KIPUP_FRAME_COUNT 5
#define SUBZERO_SWEEP_FRAME_COUNT 9
#define SUBZERO_ROUNDHOUSE_FRAME_COUNT 7
#define SUBZERO_BODY_PUNCH_FRAME_COUNT 5
#define SUBZERO_BODY_KICK_FRAME_COUNT 5
#define SUBZERO_DUCK_KICK_FRAME_COUNT 5
#define SUBZERO_THROW_FRAME_COUNT 7
#define SUBZERO_BEING_THROWN_FRAME_COUNT 6

#define SUBZERO_HIT_LOW_FRAME_COUNT 4
#define SUBZERO_HIT_HIGH_FRAME_COUNT 4
#define SUBZERO_HIT_BACK_FRAME_COUNT 6
#define SUBZERO_HIT_FALL_FRAME_COUNT 7
#define SUBZERO_HIT_SWEEP_FRAME_COUNT 6

#define SONYA_IDLE_FRAME_COUNT 7
#define SONYA_DIZZY_FRAME_COUNT 7
#define SONYA_WINS_FRAME_COUNT 8
#define SONYA_WALK_FRAME_COUNT 7
#define SONYA_TURN_FRAME_COUNT 2
#define SONYA_JUMP_FRAME_COUNT 4
#define SONYA_JUMP_ROLL_FRAME_COUNT 7
#define SONYA_DUCK_FRAME_COUNT 2
#define SONYA_BLOCK_FRAME_COUNT 3
#define SONYA_BLOCK_HIT_FRAME_COUNT 6
#define SONYA_BLOCK_DUCK_FRAME_COUNT 2
#define SONYA_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define SONYA_LOW_PUNCH_FRAME_COUNT 5
#define SONYA_HIGH_PUNCH_FRAME_COUNT 5
#define SONYA_LOW_KICK_FRAME_COUNT 7
#define SONYA_HIGH_KICK_FRAME_COUNT 8
#define SONYA_JUMP_PUNCH_FRAME_COUNT 3
#define SONYA_JUMP_KICK_FRAME_COUNT 3
#define SONYA_UPPERCUT_FRAME_COUNT 6
#define SONYA_KIPUP_FRAME_COUNT 5
#define SONYA_SWEEP_FRAME_COUNT 7
#define SONYA_ROUNDHOUSE_FRAME_COUNT 7
#define SONYA_BODY_PUNCH_FRAME_COUNT 5
#define SONYA_BODY_KICK_FRAME_COUNT 5
#define SONYA_DUCK_KICK_FRAME_COUNT 5
#define SONYA_THROW_FRAME_COUNT 7
#define SONYA_BEING_THROWN_FRAME_COUNT 6

#define SONYA_HIT_LOW_FRAME_COUNT 4
#define SONYA_HIT_HIGH_FRAME_COUNT 4
#define SONYA_HIT_BACK_FRAME_COUNT 6
#define SONYA_HIT_FALL_FRAME_COUNT 7
#define SONYA_HIT_SWEEP_FRAME_COUNT 6

#define TOTAL_BLOOD_COUNT 8
#define TOTAL_BLOOD_SQUIRT_COUNT 4