
#include "jstudio.h"
#include "romassets.h"

#define BACKGROUND 1
#define BACKGROUND16 BACKGROUND + 1
#define CHOOSE_KASUMI BACKGROUND16 + 1
#define FMV CHOOSE_KASUMI + 1
#define TITLE_FIGHTERS FMV + 1
#define TITLE_STONE TITLE_FIGHTERS + 4
#define P2_FLASH TITLE_STONE + 1
#define P2_CURSOR P2_FLASH + 1
#define P1_FLASH P2_CURSOR + 1
#define P1_CURSOR P1_FLASH + 1
#define P1_FIGHTER_SHADOW P1_CURSOR + 1
#define P1_FIGHTER P1_FIGHTER_SHADOW + 1
#define P2_FIGHTER_SHADOW P1_FIGHTER + 1
#define P2_FIGHTER P2_FIGHTER_SHADOW + 1
#define LIGHTNING P2_FIGHTER + 1
#define LIGHTNING2 LIGHTNING + 1
#define BATTLE_SCREEN LIGHTNING2 + 2
#define TEXT_PARTICLES BATTLE_SCREEN + 1
#define P1_PT_PORTRAIT TEXT_PARTICLES + 1
#define P2_PT_PORTRAIT P1_PT_PORTRAIT + 1
#define BATTLE_NAME P2_PT_PORTRAIT + 1

#define STAGE_PIT_MOON BATTLE_NAME + 2
#define STAGE_GATES_MOUNTAIN STAGE_PIT_MOON + 1
#define STAGE_PIT_CLOUDS1 STAGE_GATES_MOUNTAIN + 1
#define STAGE_GATES_TEMPLE STAGE_PIT_CLOUDS1 + 8
#define STAGE_WARRIOR_BUSH STAGE_GATES_TEMPLE + 1
#define STAGE_SECONDARY_BACKGROUND STAGE_WARRIOR_BUSH + 4
#define STAGE_GORO_EYES STAGE_SECONDARY_BACKGROUND + 1
#define STAGE_PRIMARY_BACKGROUND STAGE_GORO_EYES + 2
#define STAGE_GATES_FLAME STAGE_PRIMARY_BACKGROUND + 1
#define THRONE_SHANG_TSUNG STAGE_GATES_FLAME + 2
#define BLOOD_POOL THRONE_SHANG_TSUNG + 1
#define BRANCH_FIGHTERS BLOOD_POOL + 8
#define P1_FIGHTER_SHADOW_PIT BRANCH_FIGHTERS + 1
#define P1_FIGHTER_PIT P1_FIGHTER_SHADOW_PIT + 1
#define P1_PROJECTILE P1_FIGHTER_PIT + 1
#define P2_FIGHTER_SHADOW_PIT P1_PROJECTILE + 1
#define P2_FIGHTER_PIT P2_FIGHTER_SHADOW_PIT + 1
#define P2_PROJECTILE P2_FIGHTER_PIT + 1
#define P1_HB_ATTACK P2_PROJECTILE + 1
#define P2_HB_ATTACK P1_HB_ATTACK + 1
#define FOREGROUND_PILLAR P2_HB_ATTACK + 1
#define FOREGROUND_SPIKES FOREGROUND_PILLAR + 2  //1 of 2
#define BLOOD_SPRAY FOREGROUND_SPIKES + 1
#define BLOOD_GLOB BLOOD_SPRAY + 2
#define BLOOD_DROP BLOOD_GLOB + 1  //1 of 8
#define BLOOD_SQUIRT BLOOD_DROP + 8 //1 of 4
#define BLOOD_BALL BLOOD_SQUIRT + 4
#define FIGHT BLOOD_BALL + 4
//#define HUD FIGHT + 1
//#define P1_HEALTHBAR HUD + 2
//#define P2_HEALTHBAR P1_HEALTHBAR + 1
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
#define SOUND_TITLE_RISE 58
#define SOUND_TITLE_THUD 59
#define SOUND_TITLE_START 60
#define SOUND_CAGE_GREENBOLT 61
#define SOUND_KANO_KNIFE 62
#define SOUND_RAIDEN_LIGHTNING 63
#define SOUND_RAIDEN_LIGHTNING_END 64
#define SOUND_SONYA_RINGS 65
#define SOUND_SUBZERO_FREEZE 66
#define SOUND_SUBZERO_FREEZE_END 67
#define SOUND_SCORPION_HARPOON 68
#define SOUND_SCORPION_COMEHERE 69
#define SOUND_SCORPION_GETOVERHERE 70
#define SOUND_CROWD_CLAP 71
#define SOUND_KANO_CANNONBALL_START 72
#define SOUND_KANO_CANNONBALL 73
#define SOUND_RAIDEN_TELEPORT 74
#define SOUND_RAIDEN_TORPEDO 75
#define SOUND_RAIDEN_IDLE_ZAP 76
#define SOUND_KANG_FLYINGKICK 77
#define SOUND_SCORPION_TELEPORT 78
#define SOUND_SUBZERO_SLIDE 79
#define SOUND_KASUMI 80
#define SOUND_SHOWNOMERCY 81
#define SOUND_KASUMI_FIREBALL 82

//-----------------------------------------------------------------------------------------------------
// POINTS_TIME_BONUS = SECONDS LEFT * 10
// POINTS_STRENGTH_BONUS = HEALTHBAR PERCENTAGE (INT) * 10
#define POINTS_PUNCH 5
#define POINTS_KICK 20
#define POINTS_JUMP_PUNCH 10
#define POINTS_JUMP_KICK 20
#define POINTS_THROW 50
#define POINTS_DUCK_KICK 5
#define POINTS_UPPERCUT 20
#define POINTS_ROUNDHOUSE 20
#define POINTS_SWEEP 10
#define POINTS_BODY_TO_BODY_PUNCH 20
#define POINTS_BODY_TO_BODY_KICK 50
#define POINTS_FLAWLESS_VICTORY 2000
#define POINTS_FLAWLESS_DOUBLE 5000
#define POINTS_FATALITY 1000
#define POINTS_PROJECTILE 20
#define POINTS_SPECIAL 50

//-----------------------------------------------------------------------------------------------------
#define MAX_HEALTH 120
#define DMG_LP 8
#define DMG_HP 8
#define DMG_LK 20
#define DMG_HK 20
#define DMG_SWEEP 16
#define DMG_UPPERCUT 32
#define DMG_ROUNDHOUSE 24
#define DMG_JUMPPUNCH 20
#define DMG_JUMPKICK 16
#define DMG_DROPKICK 24
#define DMG_BLOCKED 4
#define DMG_DUCK_KICK 8
#define DMG_BODY_PUNCH 16
#define DMG_BODY_KICK 16
#define DMG_THROW 32
#define DMG_GREENBOLT 20
#define DMG_KNIFE 20
#define DMG_LIGHTNING 20
#define DMG_FIREBALL 20
#define DMG_RINGS 20
#define DMG_FREEZE 0
#define DMG_HARPOON 8
#define DMG_SPECIAL_MOVE 20

//-----------------------------------------------------------------------------------------------------
#define STAGE_GATES 0
#define STAGE_WARRIOR 1
#define STAGE_PIT 2
#define STAGE_PIT_BOTTOM 3
#define STAGE_THRONE 4
#define STAGE_GORO 5

//-----------------------------------------------------------------------------------------------------
#define CAMERA_BOUND_LEFT 10
#define CAMERA_BOUND_RIGHT 310
#define FIGHTER_WIDTH 48
#define FLOOR_LOCATION_Y 166
#define FLOOR_LOCATION_Y_FIGHTER 90
#define HITBOX_WIDTH 32
#define PLAYER_INPUT_STACK_SIZE 6
#define PLAYER_INPUT_TIMEOUT 30
#define HARPOON_MINIMUM_DISTANCE 150

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
#define INPUT_BACK 1
#define INPUT_FORWARD 2
#define INPUT_UP 3
#define INPUT_DOWN 4
#define INPUT_HP 5
#define INPUT_LP 6
#define INPUT_BLK 7
#define INPUT_HK 8
#define INPUT_LK 9
#define INPUT_HASH 10
#define INPUT_ZERO 11
#define INPUT_STAR 12

//-----------------------------------------------------------------------------------------------------
#define CHOOSE_FIGHTER_TIME_TOTAL 30*60
#define MATCH_TIME_TOTAL 99*60
#define MATCH_TIME_WINS 6*60
#define MATCH_TIME_FINISH 3*60

//-----------------------------------------------------------------------------------------------------
#define SOUND_CHANNEL_PRIMARY_L 4
#define SOUND_CHANNEL_PRIMARY_R 5
#define SOUND_CHANNEL_SECONDARY_L 6
#define SOUND_CHANNEL_SECONDARY_R 7

//-----------------------------------------------------------------------------------------------------
#define BLOOD_STAY_DELAY 120
#define FIGHTER_WALK_SPEED_FORWARD 4
#define FIGHTER_WALK_SPEED_BACKWARD 4
#define FIGHTER_WALK_PUSH_SPEED 2
#define FIGHTER_WALK_MIN_FORWARD 32
#define FIGHTER_WALK_MIN_BACKWARD 28
#define FIGHTER_JUMP_X_SPEED 7.5f
#define FIGHTER_KNOCKBACK_SPEED 2
#define FIGHTER_UPPERCUT_X_SPEED 4
#define FIGHTER_BLOOD_TICKS 3
#define FIGHTER_BLOOD_DROP_MOMENTUM_Y -10
#define FIGHTER_BLOOD_SPEED_X 4
#define FIGHTER_FALL_Y_SPEED 12
#define FIGHTER_DROPKICK_X_SPEED 5
#define FIGHTER_HITAIR_X_SPEED 3
#define FIGHTER_BLOCKING_KNOCKBACK_X_SPEED 2
#define FIGHTER_THROWN_X_SPEED 10
#define FIGHTER_PROJECTILE_X_SPEED 12
#define FIGHTER_KANO_CANNONBALL_X_SPEED 12
#define FIGHTER_CAGE_SHADOW_KICK_X_SPEED 16
#define FIGHTER_CAGE_SHADOW_KICK_TOTAL_DISTANCE 96
#define FIGHTER_CAGE_SHADOW_KICK_ZIPBACK_X_SPEED 32
#define FIGHTER_RAIDEN_TORPEDO_X_SPEED 6
#define FIGHTER_RAIDEN_TORPEDO_MAX_DISTANCE 200
#define FIGHTER_RAIDEN_TORPEDO_DONE_X_SPEED 3
#define FIGHTER_RAIDEN_TELEPORT_DISTANCE 20
#define FIGHTER_KANG_FLYING_KICK_X_SPEED 14
#define FIGHTER_SCORPION_TELEPORT_X_SPEED 10
#define FIGHTER_SUBZERO_SLIDE_X_SPEED 14
#define FIGHTER_SUBZERO_SLIDE_TOTAL_DISTANCE 270
#define FIGHTER_HIT_LEG_GRAB_X_SPEED 10
#define FIGHTER_HIT_LEG_GRAB_BOUNCE_X_SPEED 3
#define FIGHTER_SONYA_SQUARE_FLIGHT_TOTAL_DISTANCE 230
#define FIGHTER_SONYA_SQUARE_FLIGHT_X_SPEED 14
#define FIGHTER_KASUMI_ROLL_X_SPEED 8
#define FIGHTER_KASUMI_ROLL_BLOCKED_X_SPEED 3
#define FIGHTER_MAX_DISTANCE_FROM_OPPONENT 280
#define FIGHTER_MIN_WORLD_POSITION_X 16
#define FIGHTER_MAX_WORLD_POSITION_X 716

//-----------------------------------------------------------------------------------------------------
#define STAGE_PALACEGATES_FLAME1_X 138
#define STAGE_PALACEGATES_FLAME2_X 662
#define STAGE_PALACEGATES_PILLAR_X 10

//-----------------------------------------------------------------------------------------------------
#define STATE_TOTAL_COUNT 69
#define STATE_IDLE 0
#define STATE_BLOCKING 1
#define STATE_DUCKING 2
#define STATE_WALKING_FORWARD 3
#define STATE_WALKING_BACKWARD 4
#define STATE_JUMPING 5
#define STATE_JUMPING_FORWARD 6
#define STATE_JUMPING_BACKWARD 7
#define STATE_DUCK_BLOCKING 8
#define STATE_LOW_PUNCHING 9
#define STATE_LOW_REPEAT_PUNCHING 10
#define STATE_HIGH_PUNCHING 11
#define STATE_HIGH_REPEAT_PUNCHING 12
#define STATE_LOW_KICKING 13
#define STATE_HIGH_KICKING 14
#define STATE_ROUNDHOUSE_KICKING 15
#define STATE_UPPERCUTTING 16
#define STATE_DUCK_KICKING 17
#define STATE_JUMP_PUNCHING 18
#define STATE_JUMP_KICKING 19
#define STATE_SWEEPING 20
#define STATE_JUMPING_KICKING_FORWARD 21
#define STATE_JUMPING_KICKING_BACKWARD 22
#define STATE_JUMPING_PUNCHING_FORWARD 23
#define STATE_JUMPING_PUNCHING_BACKWARD 24
//-DAMAGE STATES-
#define STATE_HIT_LOW 25
#define STATE_HIT_HIGH 26
#define STATE_HIT_SWEEP 27
#define STATE_GETUP 28
#define STATE_HIT_BACK 29
#define STATE_HIT_BACK_LOW 30
#define STATE_HIT_UPPERCUT 31
#define STATE_LAYDOWN 32
#define STATE_HIT_DROPKICK 33
#define STATE_HIT_AIR 34
#define STATE_HIT_BLOCKING 35
#define STATE_HIT_DUCKING_BLOCKING 36
#define STATE_HIT_BLOCKING_KNOCKBACK 37
#define STATE_BODY_PUNCHING 38
#define STATE_BODY_KICKING 39
#define STATE_THROWING 40
#define STATE_BEING_THROWN 41
#define STATE_TURNING_AROUND 42
#define STATE_THROWING_PROJECTILE 43
#define STATE_CAGE_SHADOW_KICK 44
#define STATE_CAGE_NUTPUNCH 45
#define STATE_HIT_NUTS 46
#define STATE_KANO_CANNONBALL 47
#define STATE_RAIDEN_TORPEDO 48
#define STATE_HIT_TORPEDO 49
#define STATE_RAIDEN_TELEPORT 50
#define STATE_KANG_FLYING_KICK 51
#define STATE_SCORPION_HARPOON 52
#define STATE_HIT_HARPOON 53
#define STATE_SCORPION_REELING_IN 54
#define STATE_STUNNED 55
#define STATE_SCORPION_TELEPORT 56
#define STATE_SUBZERO_FREEZE 57
#define STATE_HIT_FREEZE 58
#define STATE_IDLE_FALL 59
#define STATE_SUBZERO_SLIDE 60
#define STATE_SONYA_LEG_GRAB 61
#define STATE_HIT_LEG_GRAB 62
#define STATE_SONYA_SQUARE_FLIGHT 63
#define STATE_KASUMI_FIREBALL 64
#define STATE_KASUMI_ROLL 65
#define STATE_IS_LOSER 66
#define STATE_IS_WINNER 67
#define STATE_FINISH_HIM 68

//-----------------------------------------------------------------------------------------------------
#define SCORPION_IDLE_FRAME_COUNT 7
#define SCORPION_WALK_FRAME_COUNT 9
#define SCORPION_SPECIAL_FRAME_COUNT 6
#define SCORPION_SPECIAL_1_FRAME_COUNT 4
#define SCORPION_SPECIAL_2_FRAME_COUNT 7
#define SCORPION_SPECIAL_3_FRAME_COUNT 0
#define SCORPION_PROJECTILE_FRAME_COUNT 19
#define SCORPION_PROJECTILE_END_FRAME_COUNT 5

#define KANO_IDLE_FRAME_COUNT 7
#define KANO_DIZZY_FRAME_COUNT 7
#define KANO_WINS_FRAME_COUNT 5
#define KANO_SPECIAL_FRAME_COUNT 8
#define KANO_WALK_FRAME_COUNT 9
#define KANO_TURN_FRAME_COUNT 2
#define KANO_JUMP_FRAME_COUNT 4
#define KANO_JUMP_ROLL_FRAME_COUNT 20
#define KANO_DUCK_FRAME_COUNT 3
#define KANO_BLOCK_FRAME_COUNT 3
#define KANO_BLOCK_HIT_FRAME_COUNT 6
#define KANO_BLOCK_DUCK_FRAME_COUNT 2
#define KANO_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define KANO_LOW_PUNCH_FRAME_COUNT 5
#define KANO_LOW_PUNCH_REPEAT_FRAME_COUNT 6
#define KANO_HIGH_PUNCH_FRAME_COUNT 5
#define KANO_HIGH_PUNCH_REPEAT_FRAME_COUNT 6
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
#define KANO_HIT_UPPERCUT_FRAME_COUNT 26
#define KANO_HIT_FALL_FRAME_COUNT 7
#define KANO_HIT_SWEEP_FRAME_COUNT 6
#define KANO_SPECIAL_1_FRAME_COUNT 6
#define KANO_SPECIAL_2_FRAME_COUNT 7
#define KANO_SPECIAL_3_FRAME_COUNT 0
#define KANO_PROJECTILE_FRAME_COUNT 28
#define KANO_PROJECTILE_END_FRAME_COUNT 5

#define CAGE_IDLE_FRAME_COUNT 7
#define CAGE_DIZZY_FRAME_COUNT 7
#define CAGE_WINS_FRAME_COUNT 11
#define CAGE_SPECIAL_FRAME_COUNT 6
#define CAGE_WALK_FRAME_COUNT 9
#define CAGE_TURN_FRAME_COUNT 2
#define CAGE_JUMP_FRAME_COUNT 4
#define CAGE_JUMP_ROLL_FRAME_COUNT 20
#define CAGE_DUCK_FRAME_COUNT 3
#define CAGE_BLOCK_FRAME_COUNT 3
#define CAGE_BLOCK_HIT_FRAME_COUNT 6
#define CAGE_BLOCK_DUCK_FRAME_COUNT 2
#define CAGE_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define CAGE_LOW_PUNCH_FRAME_COUNT 5
#define CAGE_LOW_PUNCH_REPEAT_FRAME_COUNT 6
#define CAGE_HIGH_PUNCH_FRAME_COUNT 5
#define CAGE_HIGH_PUNCH_REPEAT_FRAME_COUNT 6
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
#define CAGE_HIT_UPPERCUT_FRAME_COUNT 26
#define CAGE_HIT_FALL_FRAME_COUNT 7
#define CAGE_HIT_SWEEP_FRAME_COUNT 6
#define CAGE_SPECIAL_1_FRAME_COUNT 6
#define CAGE_SPECIAL_2_FRAME_COUNT 6
#define CAGE_SPECIAL_3_FRAME_COUNT 11
#define CAGE_PROJECTILE_FRAME_COUNT 8
#define CAGE_PROJECTILE_END_FRAME_COUNT 5

#define KANG_IDLE_FRAME_COUNT 7
#define KANG_DIZZY_FRAME_COUNT 7
#define KANG_WINS_FRAME_COUNT 15
#define KANG_SPECIAL_FRAME_COUNT 14
#define KANG_WALK_FRAME_COUNT 9
#define KANG_TURN_FRAME_COUNT 2
#define KANG_JUMP_FRAME_COUNT 4
#define KANG_JUMP_ROLL_FRAME_COUNT 20
#define KANG_DUCK_FRAME_COUNT 3
#define KANG_BLOCK_FRAME_COUNT 3
#define KANG_BLOCK_HIT_FRAME_COUNT 6
#define KANG_BLOCK_DUCK_FRAME_COUNT 2
#define KANG_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define KANG_LOW_PUNCH_FRAME_COUNT 5
#define KANG_LOW_PUNCH_REPEAT_FRAME_COUNT 6
#define KANG_HIGH_PUNCH_FRAME_COUNT 5
#define KANG_HIGH_PUNCH_REPEAT_FRAME_COUNT 6
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
#define KANG_HIT_UPPERCUT_FRAME_COUNT 26
#define KANG_HIT_FALL_FRAME_COUNT 7
#define KANG_HIT_SWEEP_FRAME_COUNT 6
#define KANG_SPECIAL_1_FRAME_COUNT 6
#define KANG_SPECIAL_2_FRAME_COUNT 0
#define KANG_SPECIAL_3_FRAME_COUNT 0
#define KANG_PROJECTILE_FRAME_COUNT 9
#define KANG_PROJECTILE_END_FRAME_COUNT 5

#define RAIDEN_IDLE_FRAME_COUNT 10
#define RAIDEN_DIZZY_FRAME_COUNT 7
#define RAIDEN_WINS_FRAME_COUNT 5
#define RAIDEN_SPECIAL_FRAME_COUNT 5
#define RAIDEN_WALK_FRAME_COUNT 9
#define RAIDEN_TURN_FRAME_COUNT 2
#define RAIDEN_JUMP_FRAME_COUNT 4
#define RAIDEN_JUMP_ROLL_FRAME_COUNT 20
#define RAIDEN_DUCK_FRAME_COUNT 3
#define RAIDEN_BLOCK_FRAME_COUNT 3
#define RAIDEN_BLOCK_HIT_FRAME_COUNT 6
#define RAIDEN_BLOCK_DUCK_FRAME_COUNT 2
#define RAIDEN_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define RAIDEN_LOW_PUNCH_FRAME_COUNT 5
#define RAIDEN_LOW_PUNCH_REPEAT_FRAME_COUNT 6
#define RAIDEN_HIGH_PUNCH_FRAME_COUNT 5
#define RAIDEN_HIGH_PUNCH_REPEAT_FRAME_COUNT 6
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
#define RAIDEN_HIT_UPPERCUT_FRAME_COUNT 26
#define RAIDEN_HIT_FALL_FRAME_COUNT 7
#define RAIDEN_HIT_SWEEP_FRAME_COUNT 6
#define RAIDEN_SPECIAL_1_FRAME_COUNT 5
#define RAIDEN_SPECIAL_2_FRAME_COUNT 5
#define RAIDEN_SPECIAL_3_FRAME_COUNT 5
#define RAIDEN_PROJECTILE_FRAME_COUNT 20
#define RAIDEN_PROJECTILE_END_FRAME_COUNT 5

#define KASUMI_SPECIAL_FRAME_COUNT 4
#define KASUMI_SPECIAL_1_FRAME_COUNT 6
#define KASUMI_SPECIAL_2_FRAME_COUNT 7
#define KASUMI_SPECIAL_3_FRAME_COUNT 0
#define KASUMI_PROJECTILE_FRAME_COUNT 7
#define KASUMI_PROJECTILE_END_FRAME_COUNT 0

#define SUBZERO_IDLE_FRAME_COUNT 12
#define SUBZERO_DIZZY_FRAME_COUNT 7
#define SUBZERO_WINS_FRAME_COUNT 3
#define SUBZERO_SPECIAL_FRAME_COUNT 3
#define SUBZERO_WALK_FRAME_COUNT 9
#define SUBZERO_TURN_FRAME_COUNT 2
#define SUBZERO_JUMP_FRAME_COUNT 4
#define SUBZERO_JUMP_ROLL_FRAME_COUNT 20
#define SUBZERO_DUCK_FRAME_COUNT 3
#define SUBZERO_BLOCK_FRAME_COUNT 3
#define SUBZERO_BLOCK_HIT_FRAME_COUNT 6
#define SUBZERO_BLOCK_DUCK_FRAME_COUNT 2
#define SUBZERO_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define SUBZERO_LOW_PUNCH_FRAME_COUNT 5
#define SUBZERO_LOW_PUNCH_REPEAT_FRAME_COUNT 6
#define SUBZERO_HIGH_PUNCH_FRAME_COUNT 5
#define SUBZERO_HIGH_PUNCH_REPEAT_FRAME_COUNT 6
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
#define SUBZERO_HIT_UPPERCUT_FRAME_COUNT 26
#define SUBZERO_HIT_FALL_FRAME_COUNT 7
#define SUBZERO_HIT_SWEEP_FRAME_COUNT 6

#define SONYA_IDLE_FRAME_COUNT 7
#define SONYA_DIZZY_FRAME_COUNT 7
#define SONYA_WINS_FRAME_COUNT 8
#define SONYA_SPECIAL_FRAME_COUNT 8
#define SONYA_WALK_FRAME_COUNT 7
#define SONYA_TURN_FRAME_COUNT 2
#define SONYA_JUMP_FRAME_COUNT 4
#define SONYA_JUMP_ROLL_FRAME_COUNT 20
#define SONYA_DUCK_FRAME_COUNT 2
#define SONYA_BLOCK_FRAME_COUNT 3
#define SONYA_BLOCK_HIT_FRAME_COUNT 6
#define SONYA_BLOCK_DUCK_FRAME_COUNT 2
#define SONYA_BLOCK_DUCK_HIT_FRAME_COUNT 6
#define SONYA_LOW_PUNCH_FRAME_COUNT 5
#define SONYA_LOW_PUNCH_REPEAT_FRAME_COUNT 6
#define SONYA_HIGH_PUNCH_FRAME_COUNT 5
#define SONYA_HIGH_PUNCH_REPEAT_FRAME_COUNT 6
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
#define SONYA_HIT_UPPERCUT_FRAME_COUNT 26
#define SONYA_HIT_FALL_FRAME_COUNT 7
#define SONYA_HIT_SWEEP_FRAME_COUNT 6
#define SONYA_SPECIAL_1_FRAME_COUNT 4
#define SONYA_SPECIAL_2_FRAME_COUNT 7
#define SONYA_SPECIAL_3_FRAME_COUNT 4
#define SONYA_PROJECTILE_FRAME_COUNT 8
#define SONYA_PROJECTILE_END_FRAME_COUNT 5

#define TOTAL_BLOOD_COUNT 8
#define TOTAL_BLOOD_SQUIRT_COUNT 4