#include "common.h"
#include "spritemovements.h"
#include "spriteanimator.h"
#include "fighter.h"
#include "match.h"
#include "camera.h"
#include "sound.h"
#include "impactFrame.h"
#include "blood.h"
#include "spritedelay.h"
#include "sleep.h"
#include "stage.h"
#include "debug.h"
#include "leaderboard.h"
#include "playerinput.h"
#include "hud.h"
#include "statemachine.h"

// -----------------------------------------------------------------------
// Global Variables
// -----------------------------------------------------------------------
static int pad1;
static int pad2;
static int imageBuffer[768*640/4];
static int imageBuffer320x240[320*224/4];
static int imageBufferFMV[80*1408/4];
static int BLACKPALx16[8];
static int WHITEPALx16[8];
static int BLACKPAL[128];
short p1Cursor = 1;
short p2Cursor = 2;
short p1Selected = -1;
short p2Selected = -1;
bool chooseFighterDone = false;
bool onAlphaScreen = true;
bool onTruFunScreen = false;
bool onTitleScreen = false;
bool onMenuScreen = false;
bool inAttractMode = false;
bool onScreenChooseFighter = false;
bool onScreenVsBattle = false;
bool onScreenFight = false;
bool fadedIn = false;
bool fadedOut = false;
int gameStartTicks = rapTicks;
int ticksPerSec = 60;
int lastTicks = 0;
short p1FlashCount = 0;
short p2FlashCount = 0;
int chooseTicks = 0;
int attractModeTicks = 0;
int menuTicks = 0;
int menuIndex = 0;
bool menuChanged = false;
bool menuSelected = false;
short attractModeIndex = 0;
bool goroProfileShown = false;
//0 = Leaderboard
//1 = FMV profile
//2 = GORO LIVES!
//3 = GORO PROFILE
//4 = Winners don't use drugs!
int fmvIndex = 6;
int attractSlideIndex = 0;

static SoundHandler soundHandler = {
	false,  //music on/off
	false,  //sound on/off
	163,  //sound volume
	120   //music volume
};

static StateMachine fighter1StateMachine = {};
static StateMachine fighter2StateMachine = {};

static State stateIdle = {
	STATE_IDLE
};
static State stateBlocking = {
	STATE_BLOCKING
};
static State stateDucking = {
	STATE_DUCKING
};
static State stateWalkingForward = {
	STATE_WALKING_FORWARD
};
static State stateWalkingBackward = {
	STATE_WALKING_BACKWARD
};
static State stateJumping = {
	STATE_JUMPING
};
static State stateJumpingForward = {
	STATE_JUMPING_FORWARD
};
static State stateJumpingBackward = {
	STATE_JUMPING_BACKWARD
};
static State stateDuckBlocking = {
	STATE_DUCK_BLOCKING
};
static State stateLowPunching = {
	STATE_LOW_PUNCHING
};
static State stateLowRepeatPunching = {
	STATE_LOW_REPEAT_PUNCHING
};
static State stateHighPunching = {
	STATE_HIGH_PUNCHING
};
static State stateHighRepeatPunching = {
	STATE_HIGH_REPEAT_PUNCHING
};
static State stateLowKicking = {
	STATE_LOW_KICKING
};
static State stateHighKicking = {
	STATE_HIGH_KICKING
};
static State stateRoundhouseKicking = {
	STATE_ROUNDHOUSE_KICKING
};
static State stateUppercutting = {
	STATE_UPPERCUTTING
};
static State stateDuckKicking = {
	STATE_DUCK_KICKING
};
static State stateJumpPunching = {
	STATE_JUMP_PUNCHING
};
static State stateJumpKicking = {
	STATE_JUMP_KICKING
};
static State stateSweeping = {
	STATE_SWEEPING
};
static State stateJumpingKickingForward = {
	STATE_JUMPING_KICKING_FORWARD
};
static State stateJumpingKickingBackward = {
	STATE_JUMPING_KICKING_BACKWARD
};
static State stateJumpingPunchingForward = {
	STATE_JUMPING_PUNCHING_FORWARD
};
static State stateJumpingPunchingBackward = {
	STATE_JUMPING_PUNCHING_BACKWARD
};
static State stateBodyPunching = {
	STATE_BODY_PUNCHING
};
////////////////////////////////////////////////////////////////////
// DAMAGE STATES
////////////////////////////////////////////////////////////////////

static State stateHitLow = {
	STATE_HIT_LOW
};
static State stateHitHigh = {
	STATE_HIT_HIGH
};
static State stateHitSweep = {
	STATE_HIT_SWEEP
};
static State stateGetUp = {
	STATE_GETUP
};
static State stateHitBack = {
	STATE_HIT_BACK
};
static State stateHitBackLow = {
	STATE_HIT_BACK_LOW
};
static State stateHitUppercut = {
	STATE_HIT_UPPERCUT
};
static State stateLaydown = {
	STATE_LAYDOWN
};
static State stateHitDropKick = {
	STATE_HIT_DROPKICK
};
static State stateHitAir = {
	STATE_HIT_AIR
};
static State stateHitBlocking = {
	STATE_HIT_BLOCKING
};
static State stateHitDuckingBlocking = {
	STATE_HIT_DUCKING_BLOCKING
};
static State stateHitBlockingKnockback = {
	STATE_HIT_BLOCKING_KNOCKBACK
};

////////////////////////////////////////////////////////////////////
static SpriteAnimator shangTsungAnimator = {
	THRONE_SHANG_TSUNG, 0.5f, BMP_THRONE_SHANG, 0, 0, 48
};

static AnimationFrame shangTsungSitFrames[] = {
	{ 64, 48, 0, 0, 0, 0, 6},
	{ 64, 48, 0, 48, 0, 0, 6},
	{ 64, 48, 0, 96, 0, 0, 6},
	{ 64, 48, 0, 144, 0, 0, 6},
	{ 64, 48, 0, 192, 0, 0, 6}
};

static AnimationFrame shangTsungClapFrames[] = {
	{ 64, 48, 0, 240, 0, 0, 4},
	{ 64, 48, 0, 288, 0, 0, 4},
	{ 64, 48, 0, 336, 0, 0, 4},
	{ 64, 48, 0, 384, 0, 0, 4},
	{ 64, 48, 0, 336, 0, 0, 4},
    { 64, 48, 0, 288, 0, 0, 4}
};

static SpriteAnimator cageAnimator = {
	P1_FIGHTER, 0.5f, BMPCAGE, 0, 0, 48
};

static SpriteAnimator cageAnimator2 = {
	P2_FIGHTER, 0.5f, BMPCAGE, 0, 0, 48
};

struct ImpactFrame cageImpactFrameLowPunch = {
	2, 38, 30
};
struct ImpactFrame cageImpactFrameLowRepeatPunch = {
	2, 38, 30
};
struct ImpactFrame cageImpactFrameHighPunch = {
	2, 38, 10
};
struct ImpactFrame cageImpactFrameHighRepeatPunch = {
	2, 38, 10
};
struct ImpactFrame cageImpactFrameLowKick = {
	3, 52, 30
};
struct ImpactFrame cageImpactFrameHighKick = {
	4, 42, 10
};
struct ImpactFrame cageImpactFrameUppercut = {
	3, 20, 30
};
struct ImpactFrame cageImpactFrameSweep = {
	4, 56, 50
};
struct ImpactFrame cageImpactFrameRoundhouse = {
	2, 28, 20
};
struct ImpactFrame cageImpactFrameJumpPunch = {
	1, 26, 60, true
};
struct ImpactFrame cageImpactFrameJumpKick = {
	1, 36, 46, true
};

struct ImpactFrame cageImpactFrameBodyPunch = {
	2, 10, 30
};

struct ImpactFrame cageImpactFrameBodyKick = {
	2, 20, 30
};

struct ImpactFrame cageImpactFrameDuckKick = {
	2, 48, 20
};

struct ImpactFrame cageImpactFrameThrow = {
	1, 30, 30
};

static AnimationFrame cageGreenBoltFrames[] = {
	{ 64, 96, 320, 752, 0, 16, 4 },
	{ 64, 96, 384, 768, 0, 16, 4 },
	{ 64, 96, 448, 752, 0, 16, 4 },
	{ 80, 96, 512, 704, 0, 16, 4 },
	{ 96, 96, 592, 720, 0, 16, 4 },
	{ 96, 96, 592, 720, 0, 16, 4 }
};

static AnimationFrame kanoKnifeFrames[] = {
	{ 64, 80, 0, 912, 0, 32, 4 },
	{ 80, 112, 64, 912, -19, 0, 4 },
	{ 80, 112, 144, 912, -14, 0, 4 },
	{ 48, 112, 240, 864, 1, 0, 4 },
	{ 80, 96, 304, 832, -1, 16, 4 },
	{ 80, 96, 304, 832, -1, 16, 4 }
};

static AnimationFrame raidenLightningFrames[] = {
	{ 64, 112, 512, 944, 0, 0, 4 },
	{ 64, 112, 576, 944, 0, 0, 4 },
	{ 64, 96, 640, 976, 0, 16, 4 },
	{ 64, 96, 704, 992, 0, 16, 4 },
	{ 64, 96, 704, 992, 0, 16, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame kangFireballFrames[] = {
	{ 64, 96, 848, 864, 0, 16, 4 },
	{ 64, 80, 0, 880, 0, 32, 4 },
	{ 64, 96, 64, 880, 0, 16, 4 },
	{ 48, 112, 128, 864, 0, 0, 4 },
	{ 48, 112, 176, 880, 0, 0, 4 },	
	{ 48, 112, 176, 880, 0, 0, 4 }
};

static AnimationFrame sonyaRingsFrames[] = {
	{ 64, 96, 112, 736, 0, 16, 4 },
	{ 80, 96, 176, 768, 0, 16, 4 },
	{ 80, 96, 256, 800, 0, 16, 4 },
	{ 80, 96, 256, 800, 0, 16, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame subzeroFreezeFrames[] = {
	{ 64, 112, 320, 1024, 0, 0, 4 },
	{ 64, 96, 384, 1024, 0, 16, 4 },
	{ 80, 96, 448, 1008, 0, 16, 4 },	
	{ 80, 96, 448, 1008, 0, 16, 4 },
	{ 80, 96, 448, 1008, 0, 16, 4 },
	{ 80, 96, 448, 1008, 0, 16, 4 }
};

static AnimationFrame scorpionHarpoonFrames[] = {
	{ 80, 112, 736, 912, -16, 0, 5 },
	{ 64, 96, 816, 912, 0, 16, 5 },
	{ 96, 112, 880, 928, 0, 0, 5 },
	{ 96, 112, 880, 928, 0, 0, 5 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame scorpionHarpoonEndFrames[] = {
	{ 96, 112, 0, 1024, 0, 0, 5 },
	{ 96, 112, 96, 1024, 0, 0, 5 },
	{ 64, 112, 192, 1024, 0, 0, 5 },
	{ 64, 112, 256, 1008, 0, 0, 5 },
	{ 64, 112, 256, 1008, 0, 0, 5 },
	{ 64, 112, 256, 1008, 0, 0, 5 }
};

static AnimationFrame projectileGreenBoltFrames[] = {
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 32, 32, 0, 0, 0, 44, 4},
	{ 48, 32, 32, 0, 18, 42, 4},
	{ 64, 32, 80, 0, 29, 25, 4},
	{ 80, 16, 0, 32, 17, 25, 4},
	{ 48, 16, 80, 32, 52, 24, 4},
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame projectileKnifeFrames[] = {
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 48, 32, 48, 48, 38, 21, 2 },
	{ 32, 32, 32, 80, 36, 16, 2 },
	{ 32, 32, 64, 80, 36, 16, 2 },
	{ 32, 32, 96, 80, 22, 22, 2 },
	{ 32, 32, 160, 48, 18, 24, 2 },
	{ 32, 32, 0, 48, 16, 9, 2 },
	{ 32, 32, 96, 48, 23, 4, 2 },
	{ 32, 32, 128, 64, 32, 4, 2 },
	{ 32, 32, 32, 80, 36, 16, 2 },
	{ 32, 32, 64, 80, 36, 16, 2 },
	{ 32, 32, 96, 80, 22, 22, 2 },
	{ 32, 32, 160, 48, 18, 24, 2 },
	{ 32, 32, 0, 48, 16, 9, 2 },
	{ 32, 32, 96, 48, 23, 4, 2 },
	{ 32, 32, 128, 64, 32, 4, 2 }
};

static AnimationFrame projectileLightningFrames[] = {
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 48, 48, 0, 592, 22, 22, 4 },
	{ 48, 32, 160, 576, 16, 26, 4 },
	{ 32, 32, 160, 608, 32, 16, 4 },
	{ 32, 32, 160, 640, 32, 18, 4 },
	{ 64, 48, 0, 672, 56, 8, 4 },
	{ 96, 48, 64, 688, 56, 8, 4 },
	{ 80, 16, 0, 112, 0, 24, 2 },
	{ 48, 16, 64, 128, 0, 24, 2 },
	{ 64, 16, 0, 128, 0, 24, 2 },
	{ 64, 32, 0, 144, 0, 24, 2 },
	{ 32, 32, 64, 144, 0, 24, 2 },
	{ 80, 16, 0, 112, 0, 24, 2 },
	{ 48, 16, 64, 128, 0, 24, 2 },
	{ 64, 16, 0, 128, 0, 24, 2 },
	{ 64, 32, 0, 144, 0, 24, 2 },
	{ 32, 32, 64, 144, 0, 24, 2 },
	{ 80, 16, 0, 112, 0, 24, 2 },
	{ 48, 16, 64, 128, 0, 24, 2 },
	{ 64, 16, 0, 128, 0, 24, 2 }
};

static AnimationFrame projectileFireballFrames[] = {
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 16, 32, 192, 64, 32, 16, 4 },
	{ 32, 32, 176, 112, 42, 16, 4 },
	{ 48, 16, 112, 176, 16, 16, 4 },
	{ 80, 16, 128, 144, 0, 24, 4 },
	{ 48, 16, 160, 176, 16, 32, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame projectileRingsFrames[] = {
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 48, 64, 0, 528, 40, 12, 4},
	{ 48, 32, 48, 544, 40, 16, 4},
	{ 48, 32, 48, 544, 40, 16, 4},
	{ 48, 32, 48, 544, 40, 16, 4},
	{ 48, 32, 48, 544, 40, 16, 4},
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame projectileFreezeFrames[] = {
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 16, 16, 64, 352, 64, 34, 4},
	{ 16, 32, 80, 336, 64, 28, 4},
	{ 48, 32, 0, 368, 64, 28, 4},
	{ 64, 32, 48, 368, 64, 28, 4},
	{ 48, 16, 0, 496, 64, 34, 4},
	{ 48, 16, 0, 496, 64, 34, 4},
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame projectileHarpoonFrames[] = {
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 208, 32, 0, 400, -112, 16, 4},	
	{ 208, 32, 0, 432, -112, 16, 4},
	{ 208, 32, 0, 464, -112, 16, 4},
	{ 208, 32, 0, 400, -112, 16, 4},	
	{ 208, 32, 0, 432, -112, 16, 4},
	{ 208, 32, 0, 464, -112, 16, 4},
	{ 208, 32, 0, 400, -112, 16, 4},	
	{ 208, 32, 0, 432, -112, 16, 4},
	{ 208, 32, 0, 464, -112, 16, 4},
	{ 208, 32, 0, 400, -112, 16, 4},	
	{ 208, 32, 0, 432, -112, 16, 4},
	{ 208, 32, 0, 464, -112, 16, 4},
	{ 208, 32, 0, 400, -112, 16, 4},	
	{ 208, 32, 0, 432, -112, 16, 4},
	{ 208, 32, 0, 464, -112, 16, 4},
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame projectileGreenBoltEndFrames[] = {
	{ 32, 32, 128, 32, 80, 20, 5 },
	{ 16, 48, 160, 0, 96, 13, 5 },
	{ 16, 48, 176, 0, 102, 8, 5 },
	{ 16, 64, 192, 0, 102, 0, 5 },
	{ 16, 64, 192, 0, 102, 0, 5 }
};

static AnimationFrame projectileKnifeEndFrames[] = {
	{ 32, 32, 160, 80, 50, 12, 5 },
	{ 16, 32, 32, 48, 66, 12, 5 },
	{ 16, 32, 32, 48, 66, 12, 5 },
	{ 0, 0, 0, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 4 }
};

static AnimationFrame projectileLightningEndFrames[] = {
	{ 48, 64, 0, 176, 0, 0, 5 },
	{ 64, 80, 48, 176, 0, -8, 5 },
	{ 80, 96, 112, 192, 0, -16, 5 },
	{ 80, 96, 0, 256, 0, -16, 4 },
	{ 80, 96, 0, 256, 0, -16, 4 }
};

static AnimationFrame projectileFireballEndFrames[] = {
	{ 32, 48, 80, 288, 32, 0, 6 },
	{ 32, 48, 112, 288, 32, 0, 6 },
	{ 48, 48, 144, 288, 32, 0, 6 },
	{ 48, 64, 112, 336, 32, 0, 6 },
	{ 48, 64, 160, 336, 32, 0, 6 }
};

static AnimationFrame projectileRingsEndFrames[] = {
	{ 48, 112, 112, 576, 48, -16, 6 },
	{ 32, 112, 48, 576, 64, -16, 6 },
	{ 16, 112, 80, 576, 80, -16, 6 },
	{ 16, 128, 96, 560, 80, -24, 6 },
	{ 16, 128, 96, 560, 80, -24, 6 }
};

static AnimationFrame projectileFreezeEndFrames[] = {
	{ 48, 48, 48, 496, 68, 16, 6 },
	{ 32, 64, 96, 496, 84, 8, 6 },
	{ 32, 80, 128, 496, 84, 8, 6 },
	{ 16, 80, 160, 496, 100, 8, 6 },
	{ 16, 80, 160, 496, 100, 2, 6 }
};

static AnimationFrame projectileHarpoonEndFrames[] = {
	{ 32, 16, 32, 352, 0, 0, 4},
	{ 32, 16, 32, 352, 0, 0, 4},
	{ 32, 16, 32, 352, 0, 0, 4},
	{ 32, 16, 32, 352, 0, 0, 4},
	{ 32, 16, 32, 352, 0, 0, 4}
};

static AnimationFrame cageThrowFrames[] = {
	{ 80, 112, 752, 640, 0, 0, 6},
	{ 80, 80, 832, 624, 0, 32, 6},
	{ 64, 96, 912, 656, 0, 16, 6},
	{ 64, 112, 0, 736, 0, 0, 6},
	{ 96, 96, 64, 752, -28, 16, 6},
	{ 80, 80, 160, 736, -13, 32, 6},
	{ 80, 96, 240, 736, -14, 16, 6},
	{ 80, 96, 240, 736, -14, 16, 6}
};

static AnimationFrame cageBeingThrownFrames[] = {
	{ 64, 80, 320, 672, -40, -10, 8},
	{ 64, 64, 384, 704, 10, -10, 8},
	{ 64, 48, 448, 704, 0, -10, 32},
	{ 80, 80, 816, 448, 0, 32, 6},
	{ 96, 48, 656, 1072, 0, 64, 6},
	{ 96, 48, 656, 1072, 0, 74, 6}
};

static AnimationFrame cageBeingThrownLowFrames[] = {
	{ 64, 80, 320, 672, -30, 20, 8},
	{ 64, 64, 384, 704, 10, 20, 8},
	{ 64, 48, 448, 704, 0, 20, 32},
	{ 80, 80, 816, 448, 0, 32, 6},
	{ 96, 48, 656, 1072, 0, 64, 6},
	{ 96, 48, 656, 1072, 0, 74, 6}
};

static AnimationFrame cageBodyPunchFrames[] = {
	{ 64, 96, 0, 528, 0, 16, 5},
	{ 64, 112, 64, 528, 0, 0, 5},
	{ 64, 112, 128, 512, 12, 0, 32},
	{ 64, 112, 64, 528, 0, 0, 5},
	{ 64, 96, 0, 528, 0, 16, 5}
};

static AnimationFrame cageBodyKickFrames[] = {
	{ 64, 112, 960, 352, 0, 0, 5},
	{ 48, 112, 896, 464, 20, -1, 5},
	{ 64, 112, 944, 464, 20, -1, 32},
	{ 48, 112, 896, 464, 20, -1, 5},
	{ 64, 112, 960, 352, 0, 0, 5}
};

static AnimationFrame cageDuckKickFrames[] = {
	{ 64, 48, 320, 1024, 0, 64, 6},
	{ 80, 48, 320, 1072, 0, 64, 6},
	{ 96, 48, 400, 1072, 0, 64, 10},
	{ 80, 48, 320, 1072, 0, 64, 6},
	{ 64, 48, 320, 1024, 0, 64, 6}
};

static AnimationFrame cageHitLowFrames[] = {
	{ 64, 112, 768, 176, 0, 0, 6 },
	{ 64, 112, 832, 176, -4, 0, 6 },
	{ 64, 112, 896, 176, 0, 0, 6 },
	{ 64, 112, 960, 176, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame cageHitHighFrames[] = {
	{ 64, 112, 496, 224, 0, 0, 6 },
	{ 80, 112, 560, 192, -3, 0, 6 },
	{ 64, 112, 640, 192, -11, 0, 6 },
	{ 64, 112, 704, 160, -2, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame cageHitBackFrames[] = {
	{ 64, 112, 496, 224, 16, 0, 6 },
	{ 48, 112, 512, 496, 0, 0, 6 },
	{ 64, 112, 560, 496, -3, 0, 6 },
	{ 48, 112, 624, 496, 5, 0, 6 },
	{ 48, 112, 672, 496, 1, 0, 6 },
	{ 48, 112, 720, 496, -1, 0, 6 },
	{ 64, 112, 768, 528, 0, 0, 6 },
};
static AnimationFrame cageHitUppercutFrames[] = {
	{ 64, 96, 592, 368, 0, 16, 6 },
	{ 64, 96, 592, 368, 0, 16, 6 },
	{ 64, 96, 592, 368, 0, 16, 6 },
	{ 64, 96, 592, 368, 0, 16, 6 },
	{ 64, 96, 592, 368, 0, 16, 6 },
	{ 64, 96, 592, 368, 0, 16, 6 },
	{ 64, 96, 592, 368, 0, 16, 6 }, /////Initial impact 7 frames
	{ 80, 112, 656, 384, 0, 0, 6 },
	{ 80, 112, 656, 384, 0, 0, 6 },
	{ 80, 112, 656, 384, 0, 0, 6 },
	{ 80, 112, 656, 384, 0, 0, 6 },
	{ 80, 112, 656, 384, 0, 0, 6 }, //////Arms up 5 frames
	{ 80, 80, 736, 384, 0, 32, 6 },
	{ 80, 80, 736, 384, 0, 32, 6 }, //////Turn Start 2 frames
	{ 80, 64, 816, 384, 0, 32, 6 },
	{ 80, 64, 816, 384, 0, 32, 6 }, //////Turn End 2 frames
	{ 64, 80, 896, 384, 0, 48, 6 },
	{ 64, 80, 896, 384, 0, 48, 6 },
	{ 64, 80, 896, 384, 0, 48, 6 },
	{ 64, 80, 896, 384, 0, 48, 6 },
	{ 64, 80, 896, 384, 0, 48, 6 },
	{ 64, 80, 896, 384, 0, 48, 6 },
	{ 64, 80, 896, 384, 0, 48, 6 },
	{ 64, 80, 896, 384, 0, 48, 6 }, /////////Free fall 8 frames
	{ 80, 80, 816, 448, 0, 32, 6 }, /////////landed 1 frame
	{ 96, 48, 656, 1072, 0, 72, 6 }  ////////laying down 1 frame
};

static AnimationFrame cageHitFallFrames[] = {
	{ 64, 96, 592, 368, 0, 16, 6 },
	{ 80, 112, 656, 384, 0, 0, 6 },
	{ 80, 80, 736, 384, 0, 32, 6 },
	{ 80, 64, 816, 384, 0, 32, 6 },
	{ 64, 80, 896, 384, 0, 48, 6 },
	{ 80, 80, 816, 448, 0, 32, 6 },
	{ 96, 48, 656, 1072, 0, 72, 6 }
};

static AnimationFrame cageHitSweepFrames[] = {
	{ 80, 96, 192, 480, -16, 16, 5 },
	{ 80, 64, 272, 480, -16, 12, 5 },	
	{ 80, 64, 272, 544, -16, 26, 5 },
	{ 80, 64, 352, 544, -16, 48, 5 },
	{ 80, 48, 432, 544, -16, 64, 5 },
	{ 80, 48, 752, 1072, -16, 53, 5 }
};
static AnimationFrame cageIdleFrames[] = {
	{ 80, 112, 0, 0, 0, 0, 6 },
	{ 80, 112, 80, 0, 0, 1, 6 },
	{ 80, 112, 160, 0, 0, 1, 6 },
	{ 80, 112, 240, 0, 0, 0, 6 },
	{ 80, 112, 320, 0, 0, 0, 6 },
	{ 80, 112, 400, 0, 0, 0, 6 },
	{ 80, 112, 480, 0, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame cageDizzyFrames[] = {
	{ 64, 112, 0, 912, 0, 0, 12 },
	{ 64, 112, 64, 912, 0, 0, 12 },
	{ 64, 112, 128, 912, 0, 0, 12 },
	{ 64, 112, 192, 912, 0, 0, 12 },
	{ 64, 112, 256, 912, 0, 0, 12 },
	{ 64, 112, 320, 912, 0, 1, 12 },
	{ 64, 96, 384, 976, 0, 16, 12 }
};
static AnimationFrame cageWinsFrames[] = {
	{ 64, 112, 384, 864, 0, 0, 6 },
	{ 64, 112, 448, 848, 0, 0, 6 },
	{ 64, 112, 384, 864, 0, 0, 6 },
	{ 64, 112, 512, 800, 0, 0, 6 },
	{ 64, 112, 576, 816, 0, 0, 6 },
	{ 64, 112, 640, 848, 0, 0, 6 },
	{ 64, 112, 704, 848, 0, 0, 6 },
	{ 64, 112, 768, 848, 0, 0, 6},
	{ 64, 112, 832, 832, 0, 0, 6},
	{ 64, 112, 896, 832, 0, 0, 6},
	{ 64, 112, 960, 832, 0, 0, 6},
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame cageSpecialFrames[] = {
	{ 96, 96, 688, 752, -16, 16, 6 },
	{ 112, 80, 784, 752, -28, 32, 6 },
	{ 128, 80, 896, 752, -29, 32, 6 },
	{ 128, 64, 0, 848, -31, 48, 6 },
	{ 128, 64, 128, 848, -29, 48, 6 },
	{ 128, 64, 256, 848, -29, 48, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame cageWalkFrames[] = {
	{ 80, 112, 720, 960, -16, 0, 6 },
	{ 64, 112, 800, 960, 0, 0, 6 },
	{ 64, 112, 864, 944, 0, 0, 6 },
	{ 64, 112, 928, 944, 0, 0, 6 },
	{ 64, 112, 0, 1024, 0, 0, 6 },
	{ 64, 112, 64, 1024, 0, 0, 6 },
	{ 64, 112, 128, 1024, 0, 0, 6 },
	{ 64, 112, 192, 1024, 0, 0, 6 },
	{ 64, 112, 256, 1024, 0, 0, 6 }
};
static AnimationFrame cageTurnFrames[] = {
	{ 64, 112, 560, 0, 0, 0, 4 },
	{ 64, 112, 624, 0, 0, 0, 4 }
};
static AnimationFrame cageJumpFrames[] = {
	{ 64, 96, 896, 0, 0, 17, 3 },
	{ 48, 96, 960, 0, 2, 12, 3 },
	{ 64, 96, 896, 0, 0, 17, 3 },
	{ 80, 96, 816, 0, 0, 16, 3 }
};
static AnimationFrame cageJumpRollFrames[] = {
	{ 48, 96, 0, 112, 0, 16, 3 },
	{ 48, 80, 48, 112, 0, 0, 3 },
	{ 48, 64, 96, 112, 0, 0, 3 },
	{ 64, 48, 144, 112, 0, 0, 3 },
	{ 64, 48, 208, 112, 0, 0, 3 },
	{ 48, 48, 272, 112, 0, 0, 3 },
	{ 48, 48, 320, 112, 0, 0, 3 },
	{ 48, 48, 368, 112, 0, 0, 3 },
	{ 48, 48, 416, 112, 0, 0, 3 },
	{ 48, 64, 96, 112, 0, 0, 3 },
	{ 64, 48, 144, 112, 0, 0, 3 },
	{ 64, 48, 208, 112, 0, 0, 3 },
	{ 48, 48, 272, 112, 0, 0, 3 },
	{ 48, 48, 320, 112, 0, 0, 3 },
	{ 48, 48, 368, 112, 0, 0, 3 },
	{ 48, 48, 416, 112, 0, 0, 3 },
	{ 48, 64, 96, 112, 0, 0, 3 },
	{ 64, 48, 144, 112, 0, 0, 3 },
	{ 48, 80, 48, 112, 0, 0, 3 },
	{ 48, 96, 0, 112, 0, 16, 3 }
};
static AnimationFrame cageDuckFrames[] = {
	{ 80, 96, 816, 0, 0, 16, 3 },
	{ 64, 80, 688, 0, 0, 32, 3 },
	{ 64, 64, 752, 0, 0, 48, 3 }
};
static AnimationFrame cageBlockFrames[] = {
	{ 64, 112, 0, 624, 0, 0, 3 },
	{ 64, 112, 64, 640, 0, 0, 3 },
	{ 64, 112, 128, 624, 0, 0, 3 }
};
static AnimationFrame cageBlockHitFrames[] = {
	{ 64, 112, 64, 640, 0, 0, 1 },
	{ 64, 112, 128, 624, 0, 0, 1 },
	{ 64, 112, 64, 640, 0, 0, 1 },
	{ 64, 112, 128, 624, 0, 0, 1 },
	{ 64, 112, 64, 640, 0, 0, 1 },
	{ 64, 112, 128, 624, 0, 0, 1 }
};
static AnimationFrame cageBlockDuckFrames[] = {
	{ 64, 80, 192, 576, 0, 32, 3 },
	{ 64, 80, 192, 656, 0, 32, 3 }
};
static AnimationFrame cageBlockDuckHitFrames[] = {
	{ 64, 80, 192, 576, 0, 32, 1 },
	{ 64, 80, 192, 656, 0, 32, 1 },
	{ 64, 80, 192, 576, 0, 32, 1 },
	{ 64, 80, 192, 656, 0, 32, 1 },
	{ 64, 80, 192, 576, 0, 32, 1 },
	{ 64, 80, 192, 656, 0, 32, 1 }
};
static AnimationFrame cagePunchLowFrames[] = {
	{ 80, 112, 0, 208, 0, 0, 4 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 352, 432, 0, 0, 10 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 0, 208, 0, 0, 4 },
};
static AnimationFrame cagePunchLowRepeatFrames[] = {
	{ 80, 112, 0, 208, 0, 0, 4 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 352, 432, 0, 0, 10 },
	{ 80, 112, 432, 432, 0, 0, 4 },
	{ 64, 112, 432, 224, 0, 0, 4 },
	{ 80, 112, 512, 384, 0, 0, 10 }
};
static AnimationFrame cagePunchHighFrames[] = {
	{ 80, 112, 0, 208, 0, 0, 4 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 144, 160, 0, 0, 8 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 0, 208, 0, 0, 4 },
};
static AnimationFrame cagePunchHighRepeatFrames[] = {
	{ 80, 112, 0, 208, 0, 0, 4 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 144, 160, 0, 0, 10 },
	{ 64, 112, 224, 160, 0, 0, 4 },
	{ 64, 112, 432, 224, 0, 0, 4 },
	{ 80, 112, 288, 160, 0, 0, 10 }
};
static AnimationFrame cageKickLowFrames[] = {
	{ 64, 112, 0, 320, 0, 0, 4 },
	{ 48, 112, 64, 320, 14, 0, 4 },
	{ 64, 96, 880, 288, 15, 16, 4 },
	{ 96, 96, 0, 432, 13, 16, 8 }, 
	{ 64, 96, 880, 288, 15, 16, 4 },
	{ 48, 112, 64, 320, 14, 0, 4 },
	{ 64, 112, 0, 320, 0, 0, 4 },
};
static AnimationFrame cageKickHighFrames[] = {
	{ 64, 112, 0, 320, 0, 0, 4 },
	{ 48, 112, 64, 320, 14, 0, 4 },
	{ 48, 112, 112, 304, 12, 0, 4 },  
	{ 64, 96, 880, 288, 15, 16, 4 },
	{ 80, 96, 304, 272, 14, 16, 4 },
	{ 80, 80, 224, 272, 14, 32, 4 },
	{ 64, 96, 160, 272, 15, 16, 4 },
	{ 48, 112, 64, 320, 14, 0, 4 }
};
static AnimationFrame cageJumpPunchFrames[] = {
	{ 48, 80, 912, 96, 0, 0, 18 },
	{ 64, 80, 960, 96, 2, 0, 4 },
	{ 64, 80, 960, 96, 2, 0, 4 }
};
static AnimationFrame cageJumpKickFrames[] = {
	{ 80, 64, 528, 112, 0, 0, 18 },
	{ 80, 80, 608, 112, 0, 0, 4 },
	{ 80, 80, 608, 112, 0, 0, 4 }
};
static AnimationFrame cageJumpDropKickFrames[] = {
	{ 48, 64, 688, 80, 0, 0, 6 },
	{ 80, 80, 736, 80, 0, 0, 4 },
	{ 96, 80, 816, 96, 0, 0, 4 }
};
static AnimationFrame cageUppercutFrames[] = {
	{ 80, 64, 944, 288, 0, 48, 4 },
	{ 80, 96, 96, 416, 0, 16, 4 },
	{ 64, 112, 176, 368, 15, 2, 4 },
	{ 48, 128, 240, 352, 21, -14, 12 },
	{ 64, 112, 288, 368, 4, 0, 4 },
	{ 64, 112, 288, 368, 4, 0, 4 }
};
static AnimationFrame cageKipUpFrames[] = {
	{ 32, 64, 768, 464, 3, 48, 5 },
	{ 48, 80, 832, 528, 0, 26, 5 },
	{ 48, 48, 880, 576, -2, 59, 5 },
	{ 80, 80, 928, 576, -20, 30, 5 },
	{ 64, 96, 896, 0, 0, 16, 5 }
};
static AnimationFrame cageSweepFrames[] = {
	{ 64, 112, 0, 320, 0, 0, 5 },
	{ 64, 96, 384, 336, 0, 16, 5 },
	{ 64, 64, 448, 336, 2, 50, 5 },
	{ 64, 48, 512, 336, 0, 62, 5 },
	{ 96, 64, 576, 304, 6, 47, 5 },
	{ 48, 80, 672, 304, 8, 46, 5 },
	{ 80, 80, 720, 288, -10, 32, 5 },
	{ 80, 96, 800, 288, 7, 16, 5 },
	{ 80, 96, 800, 288, 7, 16, 5 }
};
static AnimationFrame cageRoundhouseFrames[] = {
	{ 48, 96, 384, 608, -16, 16, 5 },
	{ 64, 96, 432, 592, -21, 16, 5 },
	{ 80, 96, 496, 608, -4, 16, 10 },
	{ 48, 96, 576, 608, 5, 16, 5 },
	{ 32, 112, 624, 608, 11, 0, 5 },
	{ 32, 112, 656, 608, 3, 0, 5 },
	{ 64, 112, 688, 608, -3, 0, 5 }
};

//Liu Kang animation frames
struct ImpactFrame kangImpactFrameLowPunch = {
	2, 52, 30
};
struct ImpactFrame kangImpactFrameHighPunch = {
	2, 52, 10
};
struct ImpactFrame kangImpactFrameLowKick = {
	3, 46, 30
};
struct ImpactFrame kangImpactFrameHighKick = {
	4, 40, 10
};
struct ImpactFrame kangImpactFrameUppercut = {
	3, 20, 30
};
struct ImpactFrame kangImpactFrameSweep = {
	4, 50, 20
};
struct ImpactFrame kangImpactFrameRoundhouse = {
	3, 38, 10
};
struct ImpactFrame kangImpactFrameJumpPunch = {
	1, 70, 60, true
};
struct ImpactFrame kangImpactFrameJumpKick = {
	1, 46, 46, true
};
struct ImpactFrame kangImpactFrameBodyPunch = {
	2, 0, 30
};

struct ImpactFrame kangImpactFrameBodyKick = {
	2, 20, 30
};

struct ImpactFrame kangImpactFrameDuckKick = {
	2, 35, 30
};

static SpriteAnimator kangAnimator = {
	P1_FIGHTER, 0.5f, BMPKANG, 0, 0, 48
};

static SpriteAnimator kangAnimator2 = {
	P2_FIGHTER, 0.5f, BMPKANG, 0, 0, 48
};

struct ImpactFrame kangImpactFrameThrow = {
	1, 30, 30
};

static AnimationFrame kangThrowFrames[] = {
	{ 80, 96, 704, 688, 0, 16, 3},
	{ 80, 80, 784, 688, 0, 32, 3},
	{ 80, 96, 864, 688, 0, 16, 3},
	{ 64, 112, 944, 688, 0, 0, 3},
	{ 64, 128, 0, 752, 0, -16, 3},
	{ 64, 112, 64, 768, -5, 0, 6},
	{ 80, 96, 128, 768, -15, 16, 6},
	{ 80, 96, 128, 768, -15, 16, 6}
};

static AnimationFrame kangBeingThrownFrames[] = {
	{ 64, 80, 208, 800, -40, -10, 8},
	{ 80, 64, 272, 832, -20, -10, 8},
	{ 64, 80, 352, 848, 0, -10, 32},
	{ 64, 80, 416, 848, 0, -10, 6},
	{ 96, 32, 272, 1040, 0, 80, 6},
	{ 96, 32, 272, 1040, 0, 90, 6}
};

static AnimationFrame kangBeingThrownLowFrames[] = {
	{ 64, 80, 208, 800, -40, 20, 8},
	{ 80, 64, 272, 832, -20, 20, 8},
	{ 64, 80, 352, 848, 0, 20, 32},
	{ 64, 80, 416, 848, 0, 0, 6},
	{ 96, 32, 272, 1040, 0, 80, 6},
	{ 96, 32, 272, 1040, 0, 90, 6}
};

static AnimationFrame kangBodyPunchFrames[] = {
	{ 64, 112, 832, 368, 0, 0, 5},
	{ 64, 112, 896, 432, 3, -2, 5},
	{ 80, 112, 0, 480, 8, -2, 32},
	{ 64, 112, 896, 432, 3, -2, 5},
	{ 64, 112, 832, 368, 0, 0, 5}
};

static AnimationFrame kangBodyKickFrames[] = {
	{ 64, 112, 656, 416, 0, 0, 5},
	{ 48, 112, 720, 400, 22, -1, 5},
	{ 64, 112, 768, 368, 22, -1, 32},
	{ 48, 112, 720, 400, 22, -1, 5},
	{ 64, 112, 656, 416, 0, 0, 5}
};

static AnimationFrame kangDuckKickFrames[] = {
	{ 48, 64, 80, 512, 0, 48, 6},
	{ 64, 64, 128, 528, 2, 47, 6},
	{ 80, 80, 288, 512, 1, 31, 10},
	{ 64, 64, 128, 528, 2, 47, 6},
	{ 48, 64, 80, 512, 0, 48, 6}
};

static AnimationFrame kangHitLowFrames[] = {
	{ 64, 112, 544, 224, 0, 0, 6 },
	{ 64, 112, 608, 224, 0, 0, 6 },
	{ 64, 112, 672, 224, 0, 0, 6 },
	{ 64, 112, 608, 224, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangHitHighFrames[] = {
	{ 64, 112, 352, 224, 0, 0, 6 },
	{ 64, 112, 480, 224, 0, 0, 6 },
	{ 64, 96, 416, 224, 0, 16, 6 },
	{ 64, 112, 480, 224, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangHitBackFrames[] = {
	{ 64, 112, 608, 224, 0, 0, 6 },
	{ 48, 112, 784, 112, -9, 0, 6 },
	{ 48, 112, 832, 112, -6, 0, 6 },
	{ 64, 112, 880, 112, 0, 0, 6 },
	{ 64, 112, 944, 112, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame kangHitUppercutFrames[] = {
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 96, 368, 336, -5, 16, 6 },
	{ 96, 96, 368, 336, -5, 16, 6 },
	{ 96, 96, 368, 336, -5, 16, 6 },
	{ 96, 96, 368, 336, -5, 16, 6 },
	{ 96, 96, 368, 336, -5, 16, 6 },
	{ 80, 64, 464, 336, 0, 48, 6 },
	{ 80, 64, 464, 336, 0, 48, 6 },
	{ 80, 64, 464, 336, 0, 48, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 64, 672, 336, 0, 52, 6 },
	{ 96, 48, 736, 320, 0, 75, 6 },
	{ 96, 32, 272, 1040, 0, 90, 6 }
};

static AnimationFrame kangHitFallFrames[] = {
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 96, 368, 336, -5, 16, 6 },
	{ 80, 64, 464, 336, 0, 48, 6 },
	{ 64, 80, 608, 336, 0, 36, 6 },
	{ 64, 64, 672, 336, 0, 52, 6 },
	{ 96, 48, 736, 320, 0, 75, 6 },
	{ 96, 32, 272, 1040, 0, 90, 6 }
};

static AnimationFrame kangHitSweepFrames[] = {
	{ 64, 112, 224, 448, 0, 0, 5 },
	{ 96, 64, 288, 448, -16, 16, 5 },
	{ 80, 64, 384, 432, -8, 28, 5 },
	{ 96, 48, 464, 400, -18, 62, 5 },
	{ 96, 32, 560, 416, -17, 80, 5 },
	{ 80, 32, 272, 1008, -5, 88, 5 }
};
static AnimationFrame kangIdleFrames[] = {
	{ 64, 112, 0, 0, 0, 0, 7 },
	{ 64, 112, 64, 0, 0, 0, 7 },
	{ 64, 112, 128, 0, 0, 0, 7 },
	{ 64, 112, 192, 0, 0, 0, 7 },
	{ 64, 112, 256, 0, 0, 0, 7 },
	{ 64, 112, 192, 0, 0, 0, 7 },
	{ 64, 112, 128, 0, 0, 0, 7 },
	{ 64, 112, 64, 0, 0, 0, 7 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangDizzyFrames[] = {
	{ 64, 96, 256, 704, 0, 16, 12 },
	{ 64, 96, 320, 736, 0, 16, 12 },
	{ 64, 112, 384, 736, 0, 0, 12 },
	{ 64, 112, 448, 720, 0, 0, 12 },
	{ 64, 112, 512, 688, 0, 0, 12 },
	{ 64, 112, 576, 688, 0, 0, 12 },
	{ 64, 96, 640, 688, 0, 16, 12 }
};
static AnimationFrame kangWinsFrames[] = {
	{ 48, 112, 0, 960, 0, 0, 8 },
	{ 96, 112, 48, 976, -25, 0, 8 },
	{ 64, 112, 144, 992, -4, 0, 8 },
	{ 48, 112, 224, 960, 0, 0, 8 },
	{ 48, 112, 480, 976, 0, 0, 22 },
	{ 48, 112, 480, 976, -1, 1, 4 },
	{ 48, 112, 480, 976, 1, -1, 4 },
	{ 48, 112, 0, 960, 0, 0, 8 },
	{ 96, 112, 48, 976, -25, 0, 8 },
	{ 80, 112, 672, 992, -18, 0, 8 },
	{ 48, 128, 976, 928, 0, -16, 8 },
	{ 48, 128, 752, 976, 0, -16, 8 },
	{ 48, 112, 528, 976, 0, 0, 8 },
	{ 48, 112, 800, 976, 0, 0, 8 },
	{ 48, 112, 800, 976, 0, 0, 8 }
};
static AnimationFrame kangSpecialFrames[] = {
	{ 64, 64, 244, 896, 1, 48, 4 },
	{ 112, 80, 288, 928, -20, 32, 4 },
	{ 80, 96, 400, 928, -5, 16, 4 },
	{ 112, 64, 480, 912, -8, 16, 4 },
	{ 80, 112, 592, 912, -14, 0, 4 },
	{ 80, 80, 672, 912, 0, 32, 4 },	
	{ 80, 80, 752, 896, -8, 32, 4 },
	{ 64, 96, 848, 864, -4, 16, 4 },
	{ 64, 96, 736, 224, 0, 16, 4 },	
	{ 64, 80, 800, 224, 0, 32, 4 },
	{ 64, 96, 0, 224, 0, 16, 4 },
	{ 80, 112, 64, 224, 4, 0, 4 },
	{ 80, 112, 144, 224, 7, 2, 4 },
	{ 48, 128, 224, 224, 16, -14, 4 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangWalkFrames[] = {
	{ 64, 112, 448, 0, -6, 0, 6 },
	{ 48, 112, 512, 0, 10, 0, 6 },
	{ 48, 112, 560, 0, 10, 0, 6 },
	{ 48, 112, 608, 0, 10, 0, 6 },
	{ 48, 112, 656, 0, 10, 0, 6 },
	{ 48, 112, 704, 0, 10, 0, 6 },
	{ 48, 112, 752, 0, 10, 0, 6 },
	{ 48, 112, 800, 0, 10, 0, 6 },
	{ 48, 112, 848, 0, 10, 0, 6 }
};
static AnimationFrame kangTurnFrames[] = {
	{ 64, 112, 320, 0, 0, 0, 4 },
	{ 64, 112, 384, 0, 0, 1, 4 }
};
static AnimationFrame kangJumpFrames[] = {
	{ 64, 112, 64, 592, 0, 0, 3 },
	{ 64, 80, 128, 592, 0, 0, 3 },
	{ 64, 112, 64, 592, 0, 0, 3 },
	{ 64, 96, 0, 592, 0, 16, 3 }
};
static AnimationFrame kangJumpRollFrames[] = {
	{ 64, 112, 432, 608, 0, 0, 3 },
	{ 48, 80, 496, 560, 0, 0, 3 },
	{ 48, 64, 544, 560, -3, 0, 3 },
	{ 48, 48, 496, 640, -13, -6, 3 },
	{ 64, 32, 544, 640, -12, 0, 3 },
	{ 48, 48, 608, 640, -2, 0, 3 },
	{ 48, 48, 656, 640, -6, 0, 3 },
	{ 48, 48, 704, 640, 0, 0, 3 },
	{ 48, 48, 768, 576, 0, -4, 3 },
	{ 48, 64, 544, 560, -3, 0, 3 },
	{ 48, 48, 496, 640, -13, -6, 3 },
	{ 64, 32, 544, 640, -12, 0, 3 },
	{ 48, 48, 608, 640, -2, 0, 3 },
	{ 48, 48, 656, 640, -6, 0, 3 },
	{ 48, 48, 704, 640, 0, 0, 3 },
	{ 48, 48, 768, 576, 0, -4, 3 },
	{ 48, 64, 544, 560, -3, 0, 3 },
	{ 48, 48, 496, 640, -13, -6, 3 },
	{ 48, 80, 496, 560, 0, 0, 3 },
	{ 64, 112, 432, 608, 0, 0, 3 }
};
static AnimationFrame kangDuckFrames[] = {
	{ 64, 96, 736, 224, 0, 16, 3 },
	{ 64, 80, 800, 224, 0, 32, 3 },
	{ 64, 64, 864, 224, 0, 48, 3 }
};
static AnimationFrame kangBlockFrames[] = {
	{ 64, 112, 592, 112, 0, 0, 3 },
	{ 64, 112, 656, 112, 0, 0, 3 },
	{ 64, 112, 720, 112, 0, 0, 3 }
};
static AnimationFrame kangBlockHitFrames[] = {
	{ 64, 112, 656, 112, 0, 0, 3 },
	{ 64, 112, 720, 112, 0, 0, 3 },
	{ 64, 112, 656, 112, 0, 0, 3 },
	{ 64, 112, 720, 112, 0, 0, 3 },
	{ 64, 112, 656, 112, 0, 0, 3 },
	{ 64, 112, 720, 112, 0, 0, 3 }
};
static AnimationFrame kangBlockDuckFrames[] = {
	{ 64, 80, 928, 224, 8, 32, 3 },
	{ 64, 80, 0, 320, 8, 32, 3 }
};
static AnimationFrame kangBlockDuckHitFrames[] = {
	{ 64, 80, 928, 224, 8, 32, 3 },
	{ 64, 80, 0, 320, 8, 32, 3 },
	{ 64, 80, 928, 224, 8, 32, 3 },
	{ 64, 80, 0, 320, 8, 32, 3 },
	{ 64, 80, 928, 224, 8, 32, 3 },
	{ 64, 80, 0, 320, 8, 32, 3 }
};
static AnimationFrame kangPunchLowFrames[] = {
	{ 64, 112, 896, 0, 0, 0, 4 },
	{ 64, 112, 960, 0, 2, 0, 4 },
	{ 96, 112, 400, 112, 2, -2, 8 },
	{ 64, 112, 960, 0, 2, 0, 4 },
	{ 64, 112, 896, 0, 0, 0, 4 }
};
static AnimationFrame kangPunchLowRepeatFrames[] = {
	{ 64, 112, 896, 0, 0, 0, 4 },
	{ 64, 112, 960, 0, 2, 0, 4 },
	{ 96, 112, 400, 112, 2, -2, 10 },
	{ 80, 112, 96, 112, 2, 0, 4 },
	{ 64, 112, 176, 112, 0, 4 },
	{ 96, 112, 496, 112, 0, 0, 10 }
};
static AnimationFrame kangPunchHighFrames[] = {
	{ 64, 112, 896, 0, 0, 0, 4 },
	{ 64, 112, 960, 0, 2, 0, 4 },
	{ 96, 112, 0, 112, 8, 0, 8 },
	{ 64, 112, 960, 0, 2, 0, 4 },
	{ 64, 112, 896, 0, 0, 0, 4 }
};
static AnimationFrame kangPunchHighRepeatFrames[] = {
	{ 64, 112, 896, 0, 0, 0, 4 },
	{ 64, 112, 960, 0, 2, 0, 4 },
	{ 96, 112, 0, 112, 8, 0, 10 },
	{ 80, 112, 96, 112, 2, 0, 4 },
	{ 64, 112, 176, 112, 0, 4 },
	{ 96, 112, 240, 112, 0, 0, 10 }
};
static AnimationFrame kangKickLowFrames[] = {
	{ 64, 112, 368, 512, 0, 0, 4 },
	{ 48, 112, 432, 496, 16, 0, 4 },
	{ 48, 112, 480, 448, -2, -1, 4 },
	{ 96, 112, 672, 528, -4, 0, 8 },
	{ 48, 112, 480, 448, -2, -1, 4 },
	{ 48, 112, 432, 496, 16, 0, 4 },
	{ 64, 112, 368, 512, 0, 0, 4 }
};
static AnimationFrame kangKickHighFrames[] = {
	{ 64, 112, 368, 512, 0, 0, 4 },
	{ 48, 112, 432, 496, 16, 0, 4 },
	{ 48, 112, 480, 448, -2, -1, 4 },	
	{ 64, 112, 528, 448, -2, -1, 4 },
	{ 80, 112, 592, 528, -5, -1, 8 },
	{ 64, 112, 528, 448, -2, -1, 4 },
	{ 48, 112, 480, 448, -2, -1, 4 },
	{ 48, 112, 432, 496, 16, 0, 4 }
};
static AnimationFrame kangJumpPunchFrames[] = {
	{ 80, 64, 64, 704, 0, 0, 18 },
	{ 112, 64, 144, 704, -23, 1, 4 },
	{ 112, 64, 144, 704, -23, 1, 4 }
};
static AnimationFrame kangJumpKickFrames[] = {
	{ 80, 112, 240, 592, 0, 0, 18 },
	{ 80, 112, 320, 624, 1, 1, 4 },
	{ 80, 112, 320, 624, 1, 1, 4 }
};
static AnimationFrame kangJumpDropKickFrames[] = {
	{ 64, 64, 768, 624, 0, 0, 6 },
	{ 80, 64, 832, 592, 0, 0, 4 },
	{ 96, 64, 912, 624, 0, -5, 4 }
};
static AnimationFrame kangUppercutFrames[] = {
	{ 64, 96, 0, 224, 0, 16, 4 },
	{ 80, 112, 64, 224, 4, 0, 4 },
	{ 80, 112, 144, 224, 8, 2, 4 },
	{ 48, 128, 224, 224, 18, -13, 12 },
	{ 64, 112, 272, 224, 0, 0, 4 },
	{ 64, 112, 272, 224, 0, 0, 4 }
};
static AnimationFrame kangKipUpFrames[] = {
	{ 64, 64, 912, 304, -10, 50, 5 },
	{ 96, 64, 928, 368, -10, 48, 5 },
	{ 80, 64, 0, 416, -8, 44, 5 },
	{ 32, 80, 80, 416, 28, 26, 5 },
	{ 48, 96, 112, 416, 22, 14, 5 }
};
static AnimationFrame kangSweepFrames[] = {
	{ 64, 112, 368, 512, 0, 0, 5 },
	{ 64, 64, 592, 464, -8, 47, 5 },
	{ 64, 48, 768, 480, -3, 61, 5 },
	{ 80, 48, 768, 528, 0, 68, 5 },
	{ 96, 48, 848, 544, 6, 67, 5 },
	{ 48, 80, 960, 432, 3, 57, 5 },
	{ 80, 80, 944, 544, -1, 31, 5 },
	{ 64, 112, 368, 512, 0, 0, 5 },
	{ 64, 112, 368, 512, 0, 0, 5 }
};
static AnimationFrame kangRoundhouseFrames[] = {
	{ 80, 112, 544, 800, -14, -1, 5 },
	{ 64, 112, 624, 800, 0, 0, 5 },
	{ 48, 96, 688, 784, 19, 15, 5 },
	{ 80, 112, 736, 784, 21, -1, 10 },
	{ 48, 96, 816, 768, 25, 15, 5 },
	{ 48, 80, 864, 784, 14, 31, 5 },
	{ 64, 112, 912, 800, 7, -1, 5 }
};
//Raiden animation frames
struct ImpactFrame raidenImpactFrameLowPunch = {
	2, 52, 30
};
struct ImpactFrame raidenImpactFrameHighPunch = {
	2, 58, 10
};
struct ImpactFrame raidenImpactFrameLowKick = {
	3, 48, 30
};
struct ImpactFrame raidenImpactFrameHighKick = {
	3, 48, 10
};
struct ImpactFrame raidenImpactFrameUppercut = {
	3, 20, 30
};
struct ImpactFrame raidenImpactFrameSweep = {
	4, 52, 30
};
struct ImpactFrame raidenImpactFrameRoundhouse = {
	2, 42, 10
};
struct ImpactFrame raidenImpactFrameBodyPunch = {
	2, 10, 30
};
struct ImpactFrame raidenImpactFrameBodyKick = {
	2, 20, 30
};
struct ImpactFrame raidenImpactFrameDuckKick = {
	2, 40, 30
};
struct ImpactFrame raidenImpactFrameJumpPunch = {
	1, 36, 50, true
};
struct ImpactFrame raidenImpactFrameJumpKick = {
	1, 60, 46, true
};
static SpriteAnimator raidenAnimator = {
	P1_FIGHTER, 0.5f, BMPRAIDEN, 0, 0, 48
};

static SpriteAnimator raidenAnimator2 = {
	P2_FIGHTER, 0.5f, BMPRAIDEN, 0, 0, 48
};

struct ImpactFrame raidenImpactFrameThrow = {
	1, 30, 30
};

static AnimationFrame raidenThrowFrames[] = {
	{ 64, 112, 384, 240, 0, 0, 6},
	{ 96, 96, 448, 240, 0, 16, 6},
	{ 96, 112, 544, 240, 0, 0, 6},
	{ 80, 112, 640, 224, 0, 0, 6},
	{ 96, 96, 720, 304, -18, 16, 6},
	{ 112, 80, 816, 304, -29, 32, 6},
	{ 96, 96, 720, 304, -18, 16, 6},
	{ 96, 96, 720, 304, -18, 16, 6}
};

static AnimationFrame raidenBeingThrownFrames[] = {
	{ 64, 80, 928, 288, -40, -10, 8},
	{ 80, 80, 928, 368, -20, -10, 8},
	{ 80, 80, 0, 400, 0, -10, 32},
	{ 80, 64, 496, 880, 0, 48, 6},
	{ 96, 32, 832, 1008, 0, 80, 6},
	{ 96, 32, 832, 1008, 0, 90, 6}
};

static AnimationFrame raidenBeingThrownLowFrames[] = {
	{ 64, 80, 928, 288, -40, 20, 8},
	{ 80, 80, 928, 368, -20, 20, 8},
	{ 80, 80, 0, 400, 0, 20, 32},
	{ 80, 64, 496, 880, 0, 48, 6},
	{ 96, 32, 832, 1008, 0, 80, 6},
	{ 96, 32, 832, 1008, 0, 90, 6}
};

static AnimationFrame raidenBodyPunchFrames[] = {
	{ 64, 112, 928, 704, 0, 0, 5},
	{ 64, 112, 0, 784, 1, 0, 5},
	{ 80, 112, 64, 784, 5, 0, 32},
	{ 64, 112, 0, 784, 1, 0, 5},
	{ 64, 112, 928, 704, 0, 0, 5}
};

static AnimationFrame raidenBodyKickFrames[] = {
	{ 48, 112, 144, 784, 0, 0, 5},	
	{ 48, 112, 192, 784, 9, 0, 5},
	{ 64, 112, 240, 784, 8, 0, 32},
	{ 48, 112, 192, 784, 9, 0, 5},
	{ 48, 112, 144, 784, 0, 0, 5}
};

static AnimationFrame raidenDuckKickFrames[] = {
	{ 48, 64, 624, 816, 0, 48, 6},
	{ 80, 64, 672, 832, 0, 48, 6},
	{ 80, 80, 752, 832, 0, 32, 10},
	{ 80, 64, 672, 832, 0, 48, 6},
	{ 48, 64, 624, 816, 0, 48, 6}
};

static AnimationFrame raidenHitLowFrames[] = {
	{ 64, 112, 720, 720, 0, 0, 6 },
	{ 64, 112, 784, 720, -3, 0, 6 },
	{ 80, 96, 848, 720, -11, 16, 6 },
	{ 64, 112, 784, 720, -3, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenHitHighFrames[] = {
	{ 64, 112, 448, 688, 0, 0, 6 },
	{ 64, 112, 512, 688, -1, 0, 6 },
	{ 64, 96, 576, 688, -7, 16, 6 },
	{ 80, 96, 640, 720, -13, 16, 6 },
	{ 64, 112, 512, 688, -1, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenHitBackFrames[] = {
	{ 64, 112, 832, 832, -5, 0, 6 },
	{ 80, 112, 896, 816, -9, 0, 6 },
	{ 64, 112, 0, 896, -9, 0, 6 },
	{ 64, 112, 64, 896, -3, 0, 6 },
	{ 80, 112, 128, 896, -14, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame raidenHitUppercutFrames[] = {
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 96, 80, 288, 912, 0, 20, 6 },
	{ 96, 80, 288, 912, 0, 20, 6 },
	{ 96, 80, 288, 912, 0, 20, 6 },
	{ 96, 80, 288, 912, 0, 20, 6 },
	{ 96, 80, 288, 912, 0, 20, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 32, 832, 1008, 0, 91, 6 }
};

static AnimationFrame raidenHitFallFrames[] = {
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 96, 80, 288, 912, 0, 20, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 32, 832, 1008, 0, 91, 6 }
};

static AnimationFrame raidenHitSweepFrames[] = {
	{ 64, 80, 672, 896, -4, 32, 5 },
	{ 48, 80, 736, 912, 6, 30, 5 },
	{ 48, 64, 784, 912, 3, 22, 5 },
	{ 64, 64, 832, 944, -4, 40, 5 },
	{ 96, 64, 896, 928, -14, 48, 5 },
	{ 96, 48, 832, 1040, -12, 85, 5 }
};
static AnimationFrame raidenIdleFrames[] = {
	{ 64, 112, 0, 0, 0, 0, 6 },
	{ 64, 112, 64, 0, 0, -1, 6 },
	{ 64, 112, 128, 0, 0, -1, 6 },
	{ 64, 112, 192, 0, 0, 0, 6 },
	{ 64, 112, 256, 0, 0, 0, 6 },
	{ 64, 112, 320, 0, 0, 0, 6 },
	{ 64, 112, 256, 0, 0, 0, 6 },
	{ 64, 112, 192, 0, 0, 0, 6 },
	{ 64, 112, 128, 0, 0, -1, 6 },
	{ 64, 112, 64, 0, 0, -1, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenDizzyFrames[] = {
	{ 64, 112, 0, 1008, -11, 0, 12 },
	{ 64, 112, 64, 1008, -12, 0, 12 },
	{ 48, 112, 128, 1008, 0, 0, 12 },
	{ 48, 112, 176, 1008, 0, 0, 12 },
	{ 48, 112, 224, 992, 0, 0, 12 },
	{ 48, 112, 272, 992, 0, 0, 12 },
	{ 48, 112, 320, 992, 0, 0, 12 }
};
static AnimationFrame raidenWinsFrames[] = {
	{ 64, 112, 320, 384, 0, 0, 6 },
	{ 64, 96, 384, 352, 0, 16, 6 },
	{ 96, 96, 448, 368, -15, 16, 6 },
	{ 96, 112, 544, 352, -19, 0, 6 },
	{ 64, 128, 768, 992, 0, -16, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenSpecialFrames[] = {
	{ 64, 112, 0, 480, 0, 0, 6 },
	{ 64, 96, 64, 512, 0, 16, 6 },
	{ 64, 96, 128, 512, 0, 16, 6 },
	{ 80, 96, 192, 496, 0, 16, 6 },
	{ 80, 96, 272, 496, 0, 16, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenWalkFrames[] = {
	{ 64, 112, 496, 464, 0, 0, 6 },
	{ 48, 112, 560, 464, 8, 0, 6 },
	{ 48, 112, 608, 464, 6, 0, 6 },
	{ 48, 112, 656, 432, 6, 0, 6 },
	{ 64, 112, 704, 497, 3, 0, 6 },
	{ 64, 112, 768, 497, 0, 0, 6 },
	{ 48, 112, 832, 496, 8, 0, 6 },
	{ 48, 112, 880, 480, 8, 0, 6 },
	{ 48, 112, 928, 480, 6, 0, 6 }
};
static AnimationFrame raidenTurnFrames[] = {
	{ 64, 112, 384, 960, 0, 0, 4 },
	{ 64, 112, 448, 960, 0, 0, 4 }
};
static AnimationFrame raidenJumpFrames[] = {
	{ 64, 112, 64, 224, 0, 0, 3 },
	{ 64, 96, 128, 224, 0, 0, 3 },	
	{ 64, 96, 0, 208, 0, 16, 3 },
	{ 64, 96, 0, 208, 0, 16, 3 }
};
static AnimationFrame raidenJumpRollFrames[] = {
	{ 64, 112, 256, 208, 0, 0, 3 },
	{ 64, 96, 256, 208, 0, 0, 3 },
	{ 48, 64, 320, 208, 0, 0, 3 },
	{ 64, 64, 368, 176, 0, 0, 3 },
	{ 64, 48, 432, 176, -13, 0, 3 },
	{ 64, 64, 496, 176, -12, 0, 3 },
	{ 48, 64, 560, 144, 0, 0, 3 },
	{ 48, 64, 608, 160, -6, 0, 3 },
	{ 64, 48, 656, 176, 0, 0, 3 },
	{ 48, 64, 320, 208, 0, 0, 3 },
	{ 64, 64, 368, 176, 0, 0, 3 },
	{ 64, 48, 432, 176, -13, 0, 3 },
	{ 64, 64, 496, 176, -12, 0, 3 },
	{ 48, 64, 560, 144, 0, 0, 3 },
	{ 48, 64, 608, 160, -6, 0, 3 },
	{ 64, 48, 656, 176, 0, 0, 3 },
	{ 48, 64, 320, 208, 0, 0, 3 },
	{ 64, 64, 368, 176, 0, 0, 3 },
	{ 64, 96, 256, 208, 0, 0, 3 },
	{ 64, 112, 256, 208, 0, 0, 3 }
};
static AnimationFrame raidenDuckFrames[] = {
	{ 64, 96, 0, 592, 0, 16, 3 },
	{ 64, 80, 64, 608, 0, 32, 3 },
	{ 64, 64, 128, 608, 0, 48, 3 }
};
static AnimationFrame raidenBlockFrames[] = {
	{ 64, 112, 304, 800, 0, 0, 3 },
	{ 64, 112, 368, 800, 0, 0, 3 },
	{ 64, 112, 432, 800, 0, 0, 3 }
};
static AnimationFrame raidenBlockHitFrames[] = {
	{ 64, 112, 368, 800, 0, 0, 1 },
	{ 64, 112, 432, 800, 0, 0, 1 },
	{ 64, 112, 368, 800, 0, 0, 1 },
	{ 64, 112, 432, 800, 0, 0, 1 },
	{ 64, 112, 368, 800, 0, 0, 1 },
	{ 64, 112, 432, 800, 0, 0, 1 }
};
static AnimationFrame raidenBlockDuckFrames[] = {
	{ 64, 80, 496, 800, 0, 32, 3 },
	{ 64, 80, 560, 800, 0, 32, 3 }
};
static AnimationFrame raidenBlockDuckHitFrames[] = {
	{ 64, 80, 496, 800, 0, 32, 1 },
	{ 64, 80, 560, 800, 0, 32, 1 },
	{ 64, 80, 496, 800, 0, 32, 1 },
	{ 64, 80, 560, 800, 0, 32, 1 },
	{ 64, 80, 496, 800, 0, 32, 1 },
	{ 64, 80, 560, 800, 0, 32, 1 }
};
static AnimationFrame raidenPunchLowFrames[] = {
	{ 64, 112, 512, 576, 0, 0, 4 },
	{ 64, 112, 576, 576, 0, 0, 4 },
	{ 96, 112, 912, 592, 1, 0, 8 },
	{ 64, 112, 576, 576, 0, 0, 4 },
	{ 64, 112, 512, 576, 0, 0, 4 }
};
static AnimationFrame raidenPunchLowRepeatFrames[] = {
	{ 64, 112, 512, 576, 0, 0, 4 },
	{ 64, 112, 576, 576, 0, 0, 4 },
	{ 96, 112, 912, 592, 1, 0, 10 },
	{ 80, 96, 0, 688, 0, 16, 4 },
	{ 80, 96, 80, 688, 0, 16, 4 },
	{ 96, 112, 160, 672, 0, 0, 10 }
};
static AnimationFrame raidenPunchHighFrames[] = {
	{ 64, 112, 512, 576, 0, 0, 4 },
	{ 64, 112, 576, 576, 0, 0, 4 },
	{ 96, 112, 640, 608, 0, 0, 8 },
	{ 64, 112, 576, 576, 0, 0, 4 },
	{ 64, 112, 512, 576, 0, 0, 4 }
};
static AnimationFrame raidenPunchHighRepeatFrames[] = {
	{ 64, 112, 512, 576, 0, 0, 4 },
	{ 64, 112, 576, 576, 0, 0, 4 },
	{ 96, 112, 640, 608, 0, 0, 10 },
	{ 80, 96, 0, 688, 0, 16, 4 },
	{ 80, 96, 80, 688, 0, 16, 4 },
	{ 96, 112, 816, 608, 0, 0, 10 }
};
static AnimationFrame raidenKickLowFrames[] = {
	{ 64, 112, 896, 0, 0, 0, 4 },
	{ 64, 112, 960, 0, 17, 0, 4 },
	{ 80, 96, 0, 112, 13, 16, 8 },
	{ 96, 96, 176, 112, 12, 16, 4 },
	{ 80, 96, 0, 112, 13, 16, 8 },
	{ 64, 112, 960, 0, 17, 0, 4 },
	{ 64, 112, 896, 0, 0, 0, 4 }
};
static AnimationFrame raidenKickHighFrames[] = {
	{ 64, 112, 896, 0, 0, 0, 4 },
	{ 64, 112, 960, 0, 17, 0, 4 },
	{ 80, 96, 0, 112, 13, 16, 8 },
	{ 96, 112, 80, 112, 9, 0, 4 },
	{ 80, 96, 0, 112, 13, 16, 8 },
	{ 64, 112, 960, 0, 17, 0, 4 },
	{ 64, 112, 896, 0, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenJumpPunchFrames[] = {
	{ 64, 80, 0, 304, 0, 0, 18 },
	{ 64, 64, 64, 336, 7, -2, 4 },
	{ 64, 64, 64, 336, 7, -2, 4 }
};
static AnimationFrame raidenJumpKickFrames[] = {
	{ 96, 96, 128, 320, 0, 0, 18 },
	{ 96, 96, 224, 320, -4, -10, 4 },
	{ 96, 96, 224, 320, -4, -10, 4 }
};
static AnimationFrame raidenJumpDropKickFrames[] = {
	{ 64, 80, 720, 224, 0, 0, 6 },
	{ 80, 80, 784, 224, 0, 0, 4 },
	{ 112, 64, 864, 224, -6, 10, 4 }	
};
static AnimationFrame raidenUppercutFrames[] = {
	{ 64, 80, 192, 592, 0, 32, 4 },
	{ 64, 96, 256, 592, 1, 16, 4 },
	{ 80, 112, 320, 608, 1, 0, 4 },
	{ 48, 112, 400, 576, 18, 0, 12 },
	{ 64, 96, 448, 592, 8, 16, 4 },
	{ 64, 96, 448, 592, 8, 16, 4 }
};
static AnimationFrame raidenKipUpFrames[] = {
	{ 64, 64, 576, 0, 0, 56, 5 },
	{ 64, 80, 640, 0, 0, 32, 5 },
	{ 64, 96, 704, 0, 0, 16, 5 },
	{ 64, 112, 768, 0, 0, 0, 5 },
	{ 64, 112, 832, 0, 0, 0, 5 }
};
static AnimationFrame raidenSweepFrames[] = {
	{ 64, 112, 896, 0, 0, 0, 5 },
	{ 64, 96, 272, 112, -9, 16, 5 },
	{ 80, 64, 336, 112, -8, 48, 5 },
	{ 64, 48, 416, 80, 4, 64, 5 },
	{ 96, 48, 416, 128, 7, 65, 5 },
	{ 48, 80, 512, 64, 19, 55, 5 },
	{ 80, 80, 560, 64, -10, 32, 5 },
	{ 64, 112, 896, 0, 0, 0, 5 },
	{ 64, 112, 896, 0, 0, 0, 5 }
};
static AnimationFrame raidenRoundhouseFrames[] = {
	{ 64, 80, 640, 80, -4, 32, 5 },
	{ 64, 80, 704, 96, 4, 32, 5 },
	{ 80, 112, 768, 112, 2, 0, 10 },
	{ 64, 80, 848, 112, 2, 32, 5 },
	{ 48, 96, 912, 112, 11, 16, 5 },
	{ 64, 112, 960, 112, -3, 0, 5 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
//Subzero animation frames
struct ImpactFrame subzeroImpactFrameLowPunch = {
	2, 46, 30
};
struct ImpactFrame subzeroImpactFrameHighPunch = {
	2, 46, 10
};
struct ImpactFrame subzeroImpactFrameLowKick = {
	3, 48, 30
};
struct ImpactFrame subzeroImpactFrameHighKick = {
	4, 48, 10
};
struct ImpactFrame subzeroImpactFrameUppercut = {
	3, 34, 30
};
struct ImpactFrame subzeroImpactFrameSweep = {
	4, 54, 20
};
struct ImpactFrame subzeroImpactFrameRoundhouse = {
	2, 52, 10
};
struct ImpactFrame subzeroImpactFrameBodyPunch = {
	2, 20, 30
};
struct ImpactFrame subzeroImpactFrameBodyKick = {
	2, 20, 30
};
struct ImpactFrame subzeroImpactFrameDuckKick = {
	2, 48, 20
};
struct ImpactFrame subzeroImpactFrameJumpPunch = {
	1, 70, 60, true
};
struct ImpactFrame subzeroImpactFrameJumpKick = {
	1, 42, 46, true
};
static SpriteAnimator subzeroAnimator = {
	P1_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 48
};

static SpriteAnimator subzeroAnimator2 = {
	P2_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 48
};

struct ImpactFrame subzeroImpactFrameThrow = {
	1, 30, 30
};

static AnimationFrame subzeroThrowFrames[] = {
	{ 64, 112, 240, 688, 0, 0, 3},
	{ 96, 112, 304, 688, 0, 0, 3},
	{ 64, 80, 400, 704, 22, 32, 3},
	{ 64, 48, 656, 672, 5, 64, 3},
	{ 80, 64, 480, 688, -14, 48, 6},
	{ 96, 80, 560, 688, -34, 32, 6},
	{ 96, 80, 560, 688, -34, 32, 6},
	{ 0, 0, 0, 0, 0, 0, 0}
};

static AnimationFrame subzeroBeingThrownFrames[] = {
	{ 64, 80, 656, 720, -40, -10, 8},
	{ 64, 80, 720, 720, -20, -10, 8},
	{ 80, 48, 784, 720, 0, -10, 32},
	{ 64, 80, 864, 720, 0, -10, 6},
	{ 112, 32, 176, 1136, 0, 80, 6},
	{ 112, 32, 176, 1136, 0, 90, 6}
};

static AnimationFrame subzeroBeingThrownLowFrames[] = {
	{ 64, 80, 656, 720, -40, 20, 8},
	{ 64, 80, 720, 720, -20, 20, 8},
	{ 80, 48, 784, 720, 0, 20, 32},
	{ 64, 80, 864, 720, 0, 0, 6},
	{ 112, 32, 176, 1136, 0, 80, 6},
	{ 112, 32, 176, 1136, 0, 90, 6}
};

static AnimationFrame subzeroBodyPunchFrames[] = {
	{ 64, 112, 736, 240, -2, 0, 5},
	{ 64, 112, 800, 240, 0, 0, 5},
	{ 64, 112, 864, 224, 0, 0, 32},
	{ 64, 112, 800, 240, 0, 0, 5},
	{ 64, 112, 736, 240, -2, 0, 5}
};

static AnimationFrame subzeroBodyKickFrames[] = {
	{ 48, 112, 560, 240, 0, 0, 5},
	{ 64, 112, 608, 224, 13, -1, 5},
	{ 64, 96, 672, 240, 11, 15, 32},
	{ 64, 112, 608, 224, 13, -1, 5},
	{ 48, 112, 560, 240, 0, 0, 5}
};

static AnimationFrame subzeroDuckKickFrames[] = {
	{ 64, 48, 352, 560, 0, 64, 6},
	{ 80, 48, 480, 560, 0, 64, 6},
	{ 96, 80, 480, 608, 0, 32, 10},
	{ 80, 48, 480, 560, 0, 64, 6},
	{ 64, 48, 352, 560, 0, 64, 6}
};

static AnimationFrame subzeroHitLowFrames[] = {
	{ 64, 112, 128, 320, -7, 0, 8 },
	{ 64, 112, 192, 304, -5, 0, 6 },
	{ 64, 112, 256, 336, -6, 0, 6 },
	{ 64, 112, 320, 336, -8, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame subzeroHitHighFrames[] = {
	{ 64, 112, 928, 224, -6, 0, 6 },
	{ 64, 112, 0, 336, -9, 0, 6 },
	{ 64, 112, 64, 320, -13, 0, 6 },
	{ 64, 112, 0, 336, -9, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame subzeroHitBackFrames[] = {
	{ 64, 112, 192, 304, -5, 0, 6 },
	{ 48, 112, 976, 112, -3, 0, 6 },
	{ 32, 112, 560, 336, 0, 0, 6 },
	{ 48, 112, 592, 336, -9, 0, 6 },
	{ 48, 112, 640, 336, -9, 0, 8 },
	{ 64, 112, 688, 352, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame subzeroHitUppercutFrames[] = {
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 96, 80, 752, 640, 0, 32, 6 },
	{ 96, 80, 752, 640, 0, 32, 6 },
	{ 96, 80, 752, 640, 0, 32, 6 },
	{ 96, 80, 752, 640, 0, 32, 6 },
	{ 96, 80, 752, 640, 0, 32, 6 },
	{ 80, 96, 944, 480, 0, 16, 6 },
	{ 80, 96, 944, 480, 0, 16, 6 },
	{ 80, 96, 944, 480, 0, 16, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 112, 32, 176, 1136, 0, 86, 6 }
};

static AnimationFrame subzeroHitFallFrames[] = {
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 96, 80, 752, 640, 0, 32, 6 },
	{ 80, 96, 944, 480, 0, 16, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 64, 80, 848, 640, 0, 32, 6 },
	{ 112, 32, 176, 1136, 0, 86, 6 }
};

static AnimationFrame subzeroHitSweepFrames[] = {
	{ 80, 96, 912, 640, -15, 11, 5 },
	{ 80, 48, 256, 640, -12, 27, 5 },
	{ 64, 80, 416, 624, -14, 20, 5 },
	{ 64, 64, 752, 576, -7, 42, 5 },
	{ 80, 48, 176, 1168, -15, 80, 5 },
	{ 80, 48, 176, 1168, -15, 80, 5 }
};
static AnimationFrame subzeroJumpPunchFrames[] = {
	{ 64, 80, 144, 432, 0, 0, 18 },
	{ 112, 64, 208, 448, -20, -2, 4 },
	{ 112, 64, 208, 448, -20, -2, 4 }
};
static AnimationFrame subzeroJumpKickFrames[] = {
	{ 64, 96, 320, 448, 0, 0, 18 },
	{ 96, 80, 384, 400, 0, 0, 4 },
	{ 96, 80, 384, 400, 0, 0, 4 }
};
static AnimationFrame subzeroJumpDropKickFrames[] = {
	{ 48, 64, 928, 336, 0, 0, 6 },
	{ 80, 80, 928, 400, 0, 0, 4 },
	{ 96, 80, 0, 448, -4, 0, 4 }	
};
static AnimationFrame subzeroUppercutFrames[] = {
	{ 64, 112, 528, 112, 0, 0, 4 },
	{ 80, 112, 592, 112, 5, 0, 4 },	
	{ 48, 128, 672, 112, 6, -16, 4 },
	{ 48, 128, 784, 112, 2, -16, 12 },
	{ 64, 112, 720, 112, 0, 0, 4 },
	{ 64, 112, 720, 112, 0, 0, 4 }
};
static AnimationFrame subzeroKipUpFrames[] = {
	{ 48, 48, 976, 352, 0, 64, 5 },
	{ 48, 80, 0, 736, 4, 31, 5 },
	{ 48, 48, 48, 736, 0, 62, 5 },
	{ 80, 64, 96, 736, -10, 48, 5 },
	{ 64, 80, 176, 704, -2, 32, 5 }
};
static AnimationFrame subzeroSweepFrames[] = {
	{ 64, 80, 128, 112, 0, 32, 5 },
	{ 64, 48, 352, 560, -6, 64, 5 },
	{ 64, 64, 416, 560, -2, 52, 5 },
	{ 96, 48, 480, 512, -3, 68, 5 },
	{ 96, 48, 576, 496, 0, 68, 5 },
	{ 64, 64, 672, 512, 0, 61, 5 },
	{ 80, 64, 736, 512, -5, 56, 5 },
	{ 64, 96, 64, 112, 0, 16, 5 },
	{ 64, 96, 64, 112, 0, 16, 5 }
};
static AnimationFrame subzeroRoundhouseFrames[] = {
	{ 64, 112, 816, 528, 0, 0, 5 },
	{ 64, 96, 880, 528, 7, 16, 5 },
	{ 96, 96, 576, 544, 3, 16, 10 },
	{ 64, 96, 0, 640, 5, 16, 5 },
	{ 64, 96, 64, 640, -1, 16, 5 },
	{ 64, 96, 128, 608, -5, 16, 5 },
	{ 64, 112, 0, 528, -3, 0, 5 }
};
static AnimationFrame subzeroIdleFrames[] = {
	{ 48, 112, 448, 0, 0, 0, 6 },
	{ 48, 112, 496, 0, 1, 0, 6 },
	{ 48, 112, 544, 0, 2, 0, 6 },
	{ 48, 112, 592, 0, 2, -1, 6 },
	{ 48, 112, 640, 0, 2, -1, 6 },
	{ 48, 112, 688, 0, 2, -1, 6 },
	{ 48, 112, 736, 0, 3, 0, 6 },
	{ 48, 112, 688, 0, 2, -1, 6 },
	{ 48, 112, 640, 0, 2, -1, 6 },
	{ 48, 112, 592, 0, 2, -1, 6 },
	{ 48, 112, 544, 0, 2, 0, 6 },
	{ 48, 112, 496, 0, 1, 0, 6 }
};
static AnimationFrame subzeroDizzyFrames[] = {
	{ 64, 112, 96, 800, -10, 0, 12 },	
	{ 48, 112, 160, 800, -9, 0, 12 },
	{ 48, 96, 208, 800, 0, 16, 12 },
	{ 64, 96, 256, 800, 0, 16, 12 },
	{ 48, 112, 320, 800, 0, 0, 12 },
	{ 48, 112, 368, 800, 0, 0, 12 },
	{ 48, 112, 416, 784, 0, 0, 12 }
};
static AnimationFrame subzeroWinsFrames[] = {
	{ 48, 112, 528, 1072, 0, 0, 8 },
	{ 48, 112, 976, 1072, 0, 0, 8 },
	{ 48, 128, 64, 1136, 0, -16, 8 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame subzeroSpecialFrames[] = {
	{ 64, 112, 736, 240, 0, 0, 8 },
	{ 64, 112, 800, 240, 0, 0, 8 },
	{ 64, 112, 864, 224, 0, 0, 8 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame scorpionSpecialFrames[] = {
	{ 48, 112, 528, 960, -2, 0, 8 },
	{ 48, 128, 576, 1024, 0, -16, 8 },
	{ 48, 112, 624, 1024, 0, 0, 22 },
	{ 48, 96, 672, 1024, 0, 16, 8 },
	{ 48, 112, 720, 1024, 1, 0, 8 },
	{ 64, 112, 768, 1024, -7, 0, 8 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame subzeroWalkFrames[] = {
	{ 64, 112, 256, 896, 0, -1, 6 },
	{ 48, 112, 320, 912, 9, -1, 6 },
	{ 48, 112, 368, 912, 10, -1, 6 },
	{ 48, 112, 416, 896, 9, -1, 6 },
	{ 48, 112, 464, 848, 10, -1, 6 },
	{ 48, 112, 512, 848, 10, -1, 6 },
	{ 48, 112, 560, 832, 9, -1, 6 },
	{ 64, 112, 608, 912, 9, -1, 6 },
	{ 64, 112, 672, 912, 10, -1, 6 }
};
static AnimationFrame subzeroTurnFrames[] = {
	{ 64, 112, 784, 0, 0, 0, 3 },
	{ 64, 112, 848, 0, 0, 0, 3 }
};
static AnimationFrame subzeroJumpFrames[] = {
	{ 64, 112, 800, 352, 0, 0, 3 },
	{ 64, 80, 864, 336, 0, 0, 3 },
	{ 64, 112, 800, 352, 0, 0, 3 },
	{ 48, 96, 752, 352, 0, 16, 3 }
};
static AnimationFrame subzeroJumpRollFrames[] = {
	{ 48, 112, 480, 400, 0, -2, 3 },
	{ 48, 48, 528, 448, 0, 0, 3 },
	{ 48, 48, 576, 448, 0, 0, 3 },
	{ 48, 48, 624, 448, 0, 0, 3 },
	{ 48, 48, 672, 464, 0, 0, 3 },
	{ 48, 48, 720, 464, 0, 0, 3 },
	{ 48, 48, 768, 464, 0, 0, 3 },
	{ 48, 48, 816, 464, 0, 0, 3 },
	{ 48, 48, 528, 448, 0, 0, 3 },
	{ 48, 48, 576, 448, 0, 0, 3 },
	{ 48, 48, 624, 448, 0, 0, 3 },
	{ 48, 48, 672, 464, 0, 0, 3 },
	{ 48, 48, 720, 464, 0, 0, 3 },
	{ 48, 48, 768, 464, 0, 0, 3 },
	{ 48, 48, 816, 464, 0, 0, 3 },
	{ 48, 48, 528, 448, 0, 0, 3 },
	{ 48, 48, 576, 448, 0, 0, 3 },
	{ 48, 48, 624, 448, 0, 0, 3 },
	{ 48, 48, 672, 464, 0, 0, 3 },
	{ 48, 112, 480, 400, 0, -2, 3 }
};
static AnimationFrame subzeroDuckFrames[] = {
	{ 64, 96, 64, 112, 0, 16, 3 },
	{ 64, 80, 128, 112, 0, 32, 3 },
	{ 64, 64, 192, 112, 0, 48, 3 }
};
static AnimationFrame subzeroBlockFrames[] = {
	{ 64, 112, 352, 112, 2, 0, 3 },
	{ 48, 112, 416, 112, 2, 0, 3 },
	{ 48, 112, 976, 0, 2, 0, 3 }
};
static AnimationFrame subzeroBlockHitFrames[] = {
	{ 48, 112, 416, 112, 2, 0, 3 },
	{ 48, 112, 976, 0, 2, 0, 3 },
	{ 48, 112, 416, 112, 2, 0, 3 },
	{ 48, 112, 976, 0, 2, 0, 3 },
	{ 48, 112, 416, 112, 2, 0, 3 },
	{ 48, 112, 976, 0, 2, 0, 3 }
};
static AnimationFrame subzeroBlockDuckFrames[] = {
	{ 48, 80, 256, 112, 0, 32, 3 },
	{ 48, 80, 304, 112, 0, 32, 3 }
};
static AnimationFrame subzeroBlockDuckHitFrames[] = {
	{ 48, 80, 256, 112, 0, 32, 3 },
	{ 48, 80, 304, 112, 0, 32, 3 },
	{ 48, 80, 256, 112, 0, 32, 3 },
	{ 48, 80, 304, 112, 0, 32, 3 },
	{ 48, 80, 256, 112, 0, 32, 3 },
	{ 48, 80, 304, 112, 0, 32, 3 }
};
static AnimationFrame subzeroPunchLowFrames[] = {
	{ 64, 112, 912, 112, 0, 0, 4 },
	{ 80, 112, 832, 112, 4, 0, 4 },
	{ 96, 112, 368, 224, 5, 0, 8 },
	{ 80, 112, 832, 112, 4, 0, 4 },
	{ 64, 112, 912, 112, 0, 0, 4 }
};
static AnimationFrame subzeroPunchLowRepeatFrames[] = {
	{ 64, 112, 912, 112, 0, 0, 4 },
	{ 80, 112, 832, 112, 4, 0, 4 },
	{ 96, 112, 368, 224, 5, 0, 10 },
	{ 48, 112, 160, 192, 4, 0, 4 },
	{ 64, 112, 208, 192, 0, 0, 4 },
	{ 96, 112, 464, 224, 0, 0, 10 }
};
static AnimationFrame subzeroPunchHighFrames[] = {
	{ 64, 112, 912, 112, 0, 0, 4 },
	{ 64, 112, 0, 224, 5, 0, 4 },
	{ 96, 112, 64, 208, 6, 0, 8 },
	{ 80, 112, 832, 112, 5, 0, 4 },
	{ 64, 112, 912, 112, 0, 0, 4 }
};
static AnimationFrame subzeroPunchHighRepeatFrames[] = {
	{ 64, 112, 912, 112, 0, 0, 4 },
	{ 64, 112, 0, 224, 5, 0, 4 },
	{ 96, 112, 64, 208, 6, 0, 10 },
	{ 48, 112, 160, 192, 4, 0, 4 },
	{ 64, 112, 208, 192, 0, 0, 4 },
	{ 96, 112, 272, 224, 0, 0, 10 }
};
static AnimationFrame subzeroKickLowFrames[] = {
	{ 64, 112, 864, 416, -7, 0, 4 },
	{ 64, 112, 0, 528, -3, 0, 4 },
	{ 64, 96, 112, 512, 5, 15, 4 },
	{ 96, 80, 384, 480, 4, 31, 8 },
	{ 64, 96, 112, 512, 5, 15, 4 },
	{ 64, 112, 0, 528, -3, 0, 4 },
	{ 64, 112, 864, 416, -7, 0, 4 }
};
static AnimationFrame subzeroKickHighFrames[] = {
	{ 64, 112, 864, 416, -7, 0, 4 },
	{ 64, 112, 0, 528, -3, 0, 4 },	
	{ 48, 112, 64, 528, 14, 0, 4 },
	{ 64, 96, 112, 512, 5, 15, 4 },
	{ 96, 96, 256, 544, 1, 16, 8 },
	{ 80, 80, 176, 512, 5, 32, 4 },
	{ 48, 112, 64, 528, 14, 0, 4 },
	{ 64, 112, 0, 528, -3, 0, 4 }
};

//Sonya animation frames
struct ImpactFrame sonyaImpactFrameLowPunch = {
	2, 48, 30
};
struct ImpactFrame sonyaImpactFrameHighPunch = {
	2, 42, 10
};
struct ImpactFrame sonyaImpactFrameLowKick = {
	3, 52, 30
};
struct ImpactFrame sonyaImpactFrameHighKick = {
	3, 40, 10
};
struct ImpactFrame sonyaImpactFrameUppercut = {
	3, 30, 30
};
struct ImpactFrame sonyaImpactFrameSweep = {
	4, 66, 50
};
struct ImpactFrame sonyaImpactFrameRoundhouse = {
	2, 50, 10
};
struct ImpactFrame sonyaImpactFrameBodyPunch = {
	2, 20, 30
};
struct ImpactFrame sonyaImpactFrameBodyKick = {
	2, 20, 30
};
struct ImpactFrame sonyaImpactFrameDuckKick = {
	2, 41, 10
};
struct ImpactFrame sonyaImpactFrameJumpPunch = {
	1, 80, 60, true
};
struct ImpactFrame sonyaImpactFrameJumpKick = {
	1, 42, 46, true
};
static SpriteAnimator sonyaAnimator = {
	P1_FIGHTER, 0.5f, BMPSONYA, 0, 0, 48
};

static SpriteAnimator sonyaAnimator2 = {
	P2_FIGHTER, 0.5f, BMPSONYA, 0, 0, 48
};

struct ImpactFrame sonyaImpactFrameThrow = {
	1, 30, 30
};

static AnimationFrame sonyaThrowFrames[] = {
	{ 64, 112, 928, 608, 0, 0, 3},
	{ 80, 80, 0, 608, -6, 32, 3},
	{ 48, 48, 80, 624, -3, 64, 6},
	{ 64, 64, 128, 656, -16, 48, 6},
	{ 48, 64, 80, 672, -20, 48, 6},
	{ 64, 80, 192, 688, -40, 32, 6},
	{ 64, 80, 192, 688, -40, 32, 6},
	{ 0, 0, 0, 0, 0, 0, 0}
};

static AnimationFrame sonyaBeingThrownFrames[] = {
	{ 48, 96, 304, 704, -40, -10, 8},
	{ 64, 64, 352, 704, -20, -10, 8},
	{ 80, 80, 496, 640, 0, -10, 6},
	{ 80, 80, 496, 640, 0, -10, 6},
	{ 96, 32, 0, 928, 0, 80, 6},
	{ 96, 32, 0, 928, 0, 90, 6}
};

static AnimationFrame sonyaBeingThrownLowFrames[] = {
	{ 48, 96, 304, 704, -40, 20, 8},
	{ 64, 64, 352, 704, -20, 20, 8},
	{ 80, 80, 496, 640, 0, 20, 6},
	{ 80, 80, 496, 640, 0, 0, 6},
	{ 96, 32, 0, 928, 0, 80, 6},
	{ 96, 32, 0, 928, 0, 90, 6}
};

static AnimationFrame sonyaBodyPunchFrames[] = {
	{ 48, 112, 960, 384, 0, 0, 5},
	{ 64, 112, 288, 368, 0, 0, 5},
	{ 64, 112, 352, 368, 1, 0, 32},
	{ 64, 112, 288, 368, 0, 0, 5},
	{ 48, 112, 960, 384, 0, 0, 5}
};

static AnimationFrame sonyaBodyKickFrames[] = {
	{ 48, 112, 496, 352, 0, 0, 5},
	{ 48, 112, 544, 352, 10, 0, 5},
	{ 64, 112, 640, 352, 15, 0, 32},
	{ 48, 112, 544, 352, 10, 0, 5},
	{ 48, 112, 496, 352, 0, 0, 5}
};

static AnimationFrame sonyaDuckKickFrames[] = {
	{ 64, 48, 464, 112, 0, 64, 5},
	{ 80, 48, 528, 112, -1, 64, 5},
	{ 96, 64, 608, 112, 1, 48, 10},
	{ 80, 48, 528, 112, -1, 64, 5},
	{ 64, 48, 464, 112, 0, 64, 5}
};

static AnimationFrame sonyaHitLowFrames[] = {
	{ 48, 112, 720, 176, -4, 0, 6 },
	{ 64, 112, 768, 224, -14, 0, 6 },
	{ 48, 112, 720, 176, -4, 0, 6 },
	{ 48, 112, 672, 176, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaHitHighFrames[] = {
	{ 48, 96, 624, 176, -4, 16, 6 },
	{ 48, 112, 576, 176, -2, 1, 6 },
	{ 48, 112, 528, 160, 0, 0, 6 },
	{ 48, 112, 576, 176, -2, 1, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaHitBackFrames[] = {
	{ 48, 112, 720, 176, -4, 0, 6 },
	{ 48, 112, 832, 224, -13, 0, 6 },
	{ 48, 112, 880, 224, 0, 0, 6 },
	{ 64, 112, 928, 224, 0, 0, 6 },
	{ 64, 112, 0, 304, 0, 0, 6 },
	{ 64, 112, 64, 304, -2, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame sonyaHitUppercutFrames[] = {
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 96, 64, 496, 576, 0, 48, 6 },
	{ 96, 64, 496, 576, 0, 48, 6 },
	{ 96, 64, 496, 576, 0, 48, 6 },
	{ 96, 64, 496, 576, 0, 48, 6 },
	{ 96, 64, 496, 576, 0, 48, 6 },
	{ 96, 64, 592, 576, 0, 48, 6 },
	{ 96, 64, 592, 576, 0, 48, 6 },
	{ 96, 64, 592, 576, 0, 48, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 96, 48, 832, 576, 0, 68, 6 },
	{ 96, 32, 0, 928, 0, 96, 6}
};
static AnimationFrame sonyaHitFallFrames[] = {
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 96, 64, 496, 576, 0, 48, 6 },
	{ 96, 64, 592, 576, 0, 48, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 96, 48, 832, 576, 0, 68, 6 },
	{ 96, 32, 0, 928, 0, 96, 6}
};
static AnimationFrame sonyaHitSweepFrames[] = {
	{ 80, 80, 576, 640, -14, 24, 5 },
	{ 64, 64, 656, 640, -7, 30, 5 },
	{ 64, 64, 720, 640, -11, 20, 5 },
	{ 64, 64, 784, 624, -8, 38, 5 },
	{ 80, 48, 256, 896, -15, 90, 5 },
	{ 80, 48, 256, 896, -15, 90, 5 }
};
static AnimationFrame sonyaJumpPunchFrames[] = {
	{ 80, 64, 560, 288, 0, 0, 18 },
	{ 128, 64, 640, 288, -22, 0, 4 },
	{ 128, 64, 640, 288, -22, 0, 4 }
};
static AnimationFrame sonyaJumpKickFrames[] = {
	{ 48, 112, 448, 288, 0, 0, 18 },
	{ 64, 80, 496, 272, 0, 0, 4 },
	{ 64, 80, 496, 272, 0, 0, 4 }
};
static AnimationFrame sonyaJumpDropKickFrames[] = {
	{ 48, 48, 768, 176, 0, 0, 6 },
	{ 64, 64, 304, 304, 0, 0, 4 },
	{ 80, 64, 368, 304, 0, -3, 4 }
};
static AnimationFrame sonyaUppercutFrames[] = {
	{ 48, 80, 0, 112, 0, 32, 4 },
	{ 80, 80, 48, 112, 0, 32, 4 },
	{ 80, 112, 128, 112, 0, 0, 4 },
	{ 48, 128, 208, 112, 6, -16, 12 },
	{ 48, 112, 256, 112, 0, 0, 4 },
	{ 48, 112, 256, 112, 0, 0, 4 }
};
static AnimationFrame sonyaKipUpFrames[] = {
	{ 48, 64, 880, 672, 0, 47, 5 },
	{ 48, 48, 0, 688, 2, 63, 5 },
	{ 48, 48, 0, 736, -3, 63, 5},	
	{ 32, 64, 48, 688, 6, 48, 5 },
	{ 32, 80, 80, 736, 5, 32, 5 }
};
static AnimationFrame sonyaSweepFrames[] = {
	{ 64, 80, 656, 480, 0, 32, 5 },
	{ 64, 64, 896, 432, 0, 52, 5 },
	{ 64, 64, 416, 400, -9, 53, 5 },
	{ 96, 64, 720, 480, 2, 52, 5 },
	{ 96, 64, 816, 496, 1, 52, 5 },
	{ 48, 80, 912, 496, 2, 49, 5 },
	{ 80, 80, 0, 528, -2, 32, 5 },
	{ 80, 80, 0, 528, -2, 32, 5 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaRoundhouseFrames[] = {
	{ 48, 96, 256, 480, 0, 16, 5 },
	{ 64, 112, 304, 480, -14, 0, 5 },
	{ 64, 112, 368, 480, -5, 0, 5 },
	{ 80, 112, 432, 464, 2, 0, 10 },
	{ 80, 112, 512, 464, 6, 0, 5 },
	{ 64, 112, 592, 464, 6, 0, 5 },
	{ 64, 128, 704, 352, 0, -16, 5 }
};
static AnimationFrame sonyaIdleFrames[] = {
	{ 48, 112, 0, 0, 0, 0, 6 },
	{ 48, 112, 48, 0, 0, 0, 6 },
	{ 48, 112, 96, 0, 0, 0, 6 },
	{ 48, 112, 144, 0, 0, 0, 6 },
	{ 48, 112, 192, 0, 0, 0, 6 },
	{ 48, 112, 240, 0, 0, 0, 6 },
	{ 48, 112, 288, 0, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaDizzyFrames[] = {
	{ 48, 96, 80, 528, -6, 16, 12 },
	{ 48, 96, 128, 560, 0, 16, 12 },
	{ 48, 96, 176, 560, 0, 16, 12 },
	{ 48, 112, 224, 576, 0, 0, 12 },
	{ 48, 112, 272, 592, -2, 0, 12 },
	{ 48, 112, 320, 592, -4, 0, 12 },
	{ 48, 112, 368, 592, -10, 0, 12 }
};
static AnimationFrame sonyaWinsFrames[] = {
	{ 48, 96, 144, 864, 0, 16, 6 },
	{ 64, 96, 192, 864, 0, 16, 6 },
	{ 64, 96, 336, 864, 0, 16, 6 },
	{ 64, 80, 416, 800, 0, 32, 32 },
	{ 64, 80, 400, 880, 0, 32, 6 },	
	{ 64, 112, 480, 848, 12, 0, 6 },
	{ 64, 112, 544, 848, 6, 0, 6 },
	{ 96, 128, 688, 816, -6, -16, 6},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaSpecialFrames[] = {
	{ 48, 112, 768, 704, 0, 0, 6 },
	{ 48, 112, 816, 688, 0, 0, 6 },
	{ 48, 112, 864, 736, 0, 0, 6 },
	{ 48, 112, 912, 736, 0, 0, 6 },
	{ 48, 112, 960, 720, -5, 0, 6 },
	{ 48, 112, 0, 784, -6, 0, 6 },
	{ 48, 112, 48, 816, -5, 0, 6 },
	{ 48, 96, 96, 832, -4, 16, 6},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaWalkFrames[] = {
	{ 64, 112, 432, 0, 0, 0, 6 },
	{ 48, 112, 496, 0, 18, 0, 6 },
	{ 48, 112, 544, 0, 19, 0, 6 },
	{ 48, 112, 592, 0, 17, 0, 6 },
	{ 48, 112, 640, 0, 17, 0, 6 },
	{ 48, 112, 688, 0, 12, 0, 6 },
	{ 48, 112, 736, 0, 16, 0, 6 },
	{ 48, 112, 784, 0, 15, 0, 6 },
	{ 48, 112, 832, 0, 9, 0, 6 }
};
static AnimationFrame sonyaTurnFrames[] = {
	{ 48, 112, 336, 0, 0, 0, 3 },
	{ 48, 112, 384, 0, 0, 0, 3 }
};
static AnimationFrame sonyaJumpFrames[] = {
	{ 64, 96, 176, 352, 0, 16, 3 },
	{ 48, 96, 240, 352, 0, 0, 3 },
	{ 64, 96, 176, 352, 0, 16, 3 },
	{ 48, 80, 128, 336, 0, 32, 3 }
};
static AnimationFrame sonyaJumpRollFrames[] = {
	{ 32, 96, 768, 336, 0, 16, 3 },
	{ 48, 64, 800, 336, 0, 0, 3 },
	{ 48, 64, 848, 336, -7, 0, 3 },
	{ 64, 48, 896, 336, -15, 0, 3 },
	{ 64, 48, 960, 336, -18, 0, 3 },
	{ 48, 64, 800, 400, -5, -16, 3 },
	{ 48, 64, 848, 400, -7, -15, 3 },
	{ 64, 48, 896, 384, -9, 0, 3 },
	{ 48, 64, 800, 336, 0, 0, 3 },
	{ 48, 64, 848, 336, -7, 0, 3 },
	{ 64, 48, 896, 336, -15, 0, 3 },
	{ 64, 48, 960, 336, -18, 0, 3 },
	{ 48, 64, 800, 400, -5, -16, 3 },
	{ 48, 64, 848, 400, -7, -15, 3 },
	{ 64, 48, 896, 384, -9, 0, 3 },
	{ 48, 64, 800, 336, 0, 0, 3 },
	{ 48, 64, 848, 336, -7, 0, 3 },
	{ 64, 48, 896, 336, -15, 0, 3 },
	{ 64, 48, 960, 336, -18, 0, 3 },
	{ 32, 96, 768, 336, 0, 16, 3 }
};
static AnimationFrame sonyaDuckFrames[] = {
	{ 48, 80, 880, 0, 0, 32, 3 },
	{ 48, 64, 928, 0, 0, 48, 3 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaBlockFrames[] = {
	{ 48, 112, 384, 192, 0, 0, 3 },
	{ 48, 112, 432, 176, 0, 0, 3 },
	{ 48, 112, 480, 160, 0, 0, 3 }
};
static AnimationFrame sonyaBlockHitFrames[] = {
	{ 48, 112, 432, 176, 0, 0, 3 },
	{ 48, 112, 480, 160, 0, 0, 3 },
	{ 48, 112, 432, 176, 0, 0, 3 },
	{ 48, 112, 480, 160, 0, 0, 3 },
	{ 48, 112, 432, 176, 0, 0, 3 },
	{ 48, 112, 480, 160, 0, 0, 3 }
};
static AnimationFrame sonyaBlockDuckFrames[] = {
	{ 48, 80, 304, 112, 0, 32, 3 },
	{ 48, 80, 352, 112, 0, 32, 3 }
};
static AnimationFrame sonyaBlockDuckHitFrames[] = {
	{ 48, 80, 304, 112, 0, 32, 3 },
	{ 48, 80, 352, 112, 0, 32, 3 },
	{ 48, 80, 304, 112, 0, 32, 3 },
	{ 48, 80, 352, 112, 0, 32, 3 },
	{ 48, 80, 304, 112, 0, 32, 3 },
	{ 48, 80, 352, 112, 0, 32, 3 }
};
static AnimationFrame sonyaPunchLowFrames[] = {
	{ 64, 112, 816, 112, 0, 0, 4 },
	{ 64, 112, 880, 112, 0, 0, 4 },
	{ 96, 112, 208, 240, 0, 0, 8 },
	{ 64, 112, 880, 112, 0, 0, 4 },
	{ 64, 112, 816, 112, 0, 0, 4 }
};
static AnimationFrame sonyaPunchLowRepeatFrames[] = {
	{ 64, 112, 816, 112, 0, 0, 4 },
	{ 64, 112, 880, 112, 0, 0, 4 },
	{ 96, 112, 208, 240, 0, 0, 10 },
	{ 64, 112, 0, 192, 0, 0, 4 },	
	{ 64, 112, 64, 192, 0, 0, 4 },
	{ 80, 112, 304, 192, 0, 0, 10 }
};
static AnimationFrame sonyaPunchHighFrames[] = {
	{ 64, 112, 816, 112, 0, 0, 4 },
	{ 64, 112, 880, 112, 0, 0, 4 },
	{ 80, 112, 944, 112, 0, 0, 8 },
	{ 64, 112, 880, 112, 0, 0, 4 },
	{ 64, 112, 816, 112, 0, 0, 4 }
};
static AnimationFrame sonyaPunchHighRepeatFrames[] = {
	{ 64, 112, 816, 112, 0, 0, 4 },
	{ 64, 112, 880, 112, 0, 0, 4 },
	{ 80, 112, 944, 112, 0, 0, 10 },
	{ 64, 112, 0, 192, 0, 0, 4 },	
	{ 64, 112, 64, 192, 0, 0, 4 },
	{ 80, 112, 128, 224, 0, 0, 10 }
};
static AnimationFrame sonyaKickLowFrames[] = {
	{ 48, 112, 496, 352, 0, 0, 4 },
	{ 48, 112, 592, 352, 16, 0, 4 },
	{ 80, 112, 0, 416, 14, 0, 4 },
	{ 96, 112, 160, 448, 10, 0, 8 },
	{ 64, 112, 640, 352, 16, 0, 4 },
	{ 48, 112, 592, 352, 16, 0, 4 },
	{ 48, 112, 496, 352, 0, 0, 4 }
};
static AnimationFrame sonyaKickHighFrames[] = {
	{ 48, 112, 496, 352, 0, 0, 4 },
	{ 48, 112, 592, 352, 16, 0, 4 },
	{ 80, 112, 0, 416, 14, 0, 4 },
	{ 80, 112, 80, 416, 13, 0, 8 },
	{ 80, 112, 0, 416, 14, 0, 4 },
	{ 64, 112, 640, 352, 16, 0, 4 },
	{ 48, 112, 592, 352, 16, 0, 4 },
	{ 48, 112, 496, 352, 0, 0, 4 }
};

//Scorpion animation frames
static SpriteAnimator scorpionAnimator = {
	P1_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 48
};

static SpriteAnimator scorpionAnimator2 = {
	P2_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 48
};

static AnimationFrame scorpionIdleFrames[] = {
	{ 64, 112, 0, 0, 0, 0, 6 },
	{ 64, 112, 64, 0, 0, 0, 6 },
	{ 64, 112, 128, 0, 0, 0, 6 },
	{ 64, 112, 192, 0, 0, 0, 6 },
	{ 64, 112, 256, 0, 0, 0, 6 },
	{ 64, 112, 320, 0, 0, 0, 6 },
	{ 64, 112, 384, 0, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame scorpionWalkFrames[] = {
	{ 64, 112, 656, 800, 0, 0, 6 },
	{ 64, 112, 720, 800, 0, 0, 6 },
	{ 64, 112, 784, 768, 0, 0, 6 },
	{ 64, 112, 848, 800, 0, 0, 6 },
	{ 64, 112, 912, 816, 0, 0, 6 },
	{ 64, 112, 0, 896, 0, 0, 6 },
	{ 64, 112, 64, 912, 0, 0, 6 },
	{ 64, 112, 128, 912, 0, 0, 6 },
	{ 64, 112, 192, 912, 0, 0, 6 }
};

//Kano animation frames
static SpriteAnimator kanoAnimator = {
	P1_FIGHTER, 0.5f, BMPKANO, 0, 0, 48
};

static SpriteAnimator kanoAnimator2 = {
	P2_FIGHTER, 0.5f, BMPKANO, 0, 0, 48
};

struct ImpactFrame kanoImpactFrameLowPunch = {
	2, 52, 30
};
struct ImpactFrame kanoImpactFrameHighPunch = {
	2, 36, 10
};
struct ImpactFrame kanoImpactFrameLowKick = {
	3, 50, 30
};
struct ImpactFrame kanoImpactFrameHighKick = {
	3, 50, 10
};
struct ImpactFrame kanoImpactFrameUppercut = {
	3, 20, 30
};
struct ImpactFrame kanoImpactFrameSweep = {
	4, 54, 35
};
struct ImpactFrame kanoImpactFrameRoundhouse = {
	2, 52, 10
};

struct ImpactFrame kanoImpactFrameBodyPunch = {
	2, 10, 30
};

struct ImpactFrame kanoImpactFrameBodyKick = {
	2, 30, 30
};

struct ImpactFrame kanoImpactFrameDuckKick = {
	2, 40, 30
};

struct ImpactFrame kanoImpactFrameJumpPunch = {
	1, 42, 60, true
};
struct ImpactFrame kanoImpactFrameJumpKick = {
	1, 52, 46, true
};

struct ImpactFrame kanoImpactFrameThrow = {
	1, 30, 30
};

static AnimationFrame kanoThrowFrames[] = {
	{ 64, 112, 688, 736, 0, 0, 6},
	{ 112, 96, 752, 736, 0, 16, 6},
	{ 80, 112, 864, 704, 0, 0, 6},
	{ 80, 128, 944, 736, 0, -16, 6},	
	{ 96, 80, 0, 832, -28, 32, 6},
	{ 80, 64, 96, 848, -17, 48, 6},
	{ 80, 64, 96, 848, -17, 48, 6},
	{ 0, 0, 0, 0, 0, 0, 0}
};

static AnimationFrame kanoBeingThrownFrames[] = {
	{ 80, 80, 0, 752, -40, 0, 8},
	{ 80, 64, 80, 768, -20, 0, 8},
	{ 48, 80, 160, 768, 0, 0, 32},
	{ 80, 80, 208, 720, 0, 32, 6},
	{ 96, 32, 752, 1072, 0, 80, 6},
	{ 96, 32, 752, 1072, 0, 90, 6}
};

static AnimationFrame kanoBeingThrownLowFrames[] = {
	{ 80, 80, 0, 752, -40, 20, 8},
	{ 80, 64, 80, 768, -20, 20, 8},
	{ 48, 80, 160, 768, 0, 20, 32},
	{ 80, 80, 208, 720, 0, 32, 6},
	{ 96, 32, 752, 1072, 0, 80, 6},
	{ 96, 32, 752, 1072, 0, 90, 6}
};

static AnimationFrame kanoBodyPunchFrames[] = {
	{ 64, 112, 720, 512, 0, 0, 5},	
	{ 64, 112, 384, 816, 0, 0, 5},
	{ 80, 96, 448, 864, 0, 16, 32},
	{ 64, 112, 384, 816, 0, 0, 5},
	{ 64, 112, 720, 512, 0, 0, 5}
};

static AnimationFrame kanoBodyKickFrames[] = {
	{ 64, 112, 512, 480, -14, 0, 5},	
	{ 64, 112, 576, 480, -1, -2, 5},
	{ 80, 112, 640, 496, 0, -1, 32},
	{ 64, 112, 576, 480, -1, -2, 5},
	{ 64, 112, 512, 480, -14, 0, 5}
};

static AnimationFrame kanoDuckKickFrames[] = {
	{ 64, 64, 128, 320, 0, 48, 6},
	{ 64, 64, 208, 288, 0, 49, 6},
	{ 96, 80, 272, 272, 0, 33, 10},
	{ 64, 64, 208, 288, 0, 49, 6},
	{ 64, 64, 128, 320, 0, 48, 6}
};

static AnimationFrame kanoHitLowFrames[] = {
	{ 64, 112, 0, 608, -3, 0, 12 },
	{ 64, 112, 64, 640, -5, 0, 6 },
	{ 64, 112, 128, 608, -8, 0, 6 },
	{ 64, 112, 192, 608, -3, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoHitHighFrames[] = {
	{ 64, 112, 720, 512, 0, 0, 6 },
	{ 64, 112, 784, 512, -5, 0, 6 },
	{ 64, 112, 848, 512, -11, 0, 6 },
	{ 64, 112, 912, 512, -9, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoHitBackFrames[] = {
	{ 64, 112, 784, 512, -5, 0, 6 },
	{ 64, 112, 848, 512, -11, 0, 6 },
	{ 64, 112, 256, 512, -7, 0, 6 },
	{ 48, 112, 320, 512, -14, 0, 6 },
	{ 64, 112, 368, 544, 0, 0, 6 },
	{ 80, 112, 432, 528, 0, 0, 6 },
	{ 64, 112, 512, 592, 0, 0, 6}
};
static AnimationFrame kanoHitUppercutFrames[] = {
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 80, 112, 704, 624, 0, 0, 6 },
	{ 80, 112, 704, 624, 0, 0, 6 },
	{ 80, 112, 704, 624, 0, 0, 6 },
	{ 80, 112, 704, 624, 0, 0, 6 },
	{ 80, 112, 704, 624, 0, 0, 6 },
	{ 96, 80, 784, 624, 0, 32, 6 },
	{ 96, 80, 784, 624, 0, 32, 6 },
	{ 96, 80, 784, 624, 0, 32, 6 },
	{ 96, 80, 784, 624, 0, 32, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 48, 128, 720, 0, 64, 6 },
	{ 96, 32, 752, 1072, -7, 95, 6}
};

static AnimationFrame kanoHitFallFrames[] = {
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 80, 112, 704, 624, 0, 0, 6 },
	{ 96, 80, 784, 624, 0, 32, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 48, 128, 720, 0, 64, 6 },
	{ 96, 32, 752, 1072, -7, 95, 6}
};

static AnimationFrame kanoHitSweepFrames[] = {
	{ 80, 96, 288, 672, 0, 16, 5 },
	{ 80, 48, 368, 656, -4, 30, 5 },
	{ 64, 80, 448, 640, -1, 22, 5 },
	{ 48, 64, 512, 704, 7, 46, 5 },
	{ 80, 32, 560, 704, -12, 78, 5 },
	{ 80, 32, 752, 1104, -5, 90, 5 }
};
static AnimationFrame kanoIdleFrames[] = {
	{ 64, 112, 0, 0, 0, -1, 5 },
	{ 64, 112, 64, 0, 0, 0, 5 },
	{ 64, 112, 128, 0, 0, 1, 5 },
	{ 64, 112, 192, 0, 0, 0, 5 },
	{ 64, 112, 256, 0, 0, 0, 5 },
	{ 64, 112, 320, 0, 0, 0, 5 },
	{ 64, 112, 384, 0, 0, 0, 5 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoDizzyFrames[] = {
	{ 64, 96, 368, 704, 0, 16, 6 },
	{ 64, 96, 432, 720, 0, 16, 6 },
	{ 64, 96, 496, 768, 0, 16, 6 },
	{ 64, 96, 560, 736, 0, 16, 6 },
	{ 64, 96, 624, 784, 0, 16, 6 },
	{ 64, 96, 688, 848, 0, 16, 6 },
	{ 64, 112, 752, 832, 0, 0, 6 }
};
static AnimationFrame kanoWinsFrames[] = {
	{ 64, 112, 0, 992, 0, 0, 6 },
	{ 64, 128, 64, 1024, 0, -16, 6 },
	{ 64, 128, 128, 1024, -3, -16, 60 },
	{ 96, 112, 192, 1024, -17, 0, 6 },
	{ 64, 112, 896, 1056, 0, 1, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoSpecialFrames[] = {
	{ 64, 112, 288, 1024, 0, 0, 6 },
	{ 64, 112, 352, 1024, 0, 0, 6 },
	{ 112, 96, 416, 1024, 0, 16, 30 },
	{ 64, 112, 528, 1008, 0, 0, 6 },
	{ 64, 112, 592, 1008, 0, 0, 6 },
	{ 64, 112, 656, 944, 0, 0, 6 },
	{ 64, 112, 720, 944, 0, 0, 6 },
	{ 64, 128, 784, 944, 0, -16, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoWalkFrames[] = {
	{ 64, 112, 448, 0, 0, 0, 6 },
	{ 64, 112, 512, 0, 0, 0, 6 },
	{ 64, 112, 576, 0, 0, 0, 6 },
	{ 64, 112, 640, 0, 0, 0, 6 },
	{ 64, 112, 704, 0, 0, 0, 6 },
	{ 64, 112, 768, 0, 0, 0, 6 },
	{ 64, 112, 832, 0, 0, 0, 6 },
	{ 64, 112, 896, 0, 0, 0, 6 },
	{ 64, 112, 960, 0, 0, 0, 6 }
};
static AnimationFrame kanoTurnFrames[] = {
	{ 48, 112, 192, 112, 0, 0, 4 },
	{ 48, 112, 240, 112, 0, 0, 4 }
};
static AnimationFrame kanoJumpFrames[] = {
	{ 64, 112, 64, 416, 0, 0, 3 },
	{ 48, 112, 128, 384, 0, 0, 3 },
	{ 64, 112, 64, 416, 0, 0, 3 },
	{ 64, 96, 0, 448, 0, 16, 3 }
};
static AnimationFrame kanoJumpRollFrames[] = {
	{ 64, 112, 176, 384, 0, 0, 3 },
	{ 48, 80, 240, 352, 0, 0, 3 },
	{ 48, 64, 288, 352, 0, 0, 3 },
	{ 48, 64, 336, 368, 0, 0, 3 },
	{ 64, 48, 384, 384, -12, 4, 3 },
	{ 64, 48, 448, 384, -12, 4, 3 },
	{ 48, 64, 512, 416, 0, -18, 3 },
	{ 48, 64, 560, 416, 0, -18, 3 },
	{ 64, 48, 608, 416, 0, 0, 3 },
	{ 48, 64, 288, 352, 0, 0, 3 },
	{ 48, 64, 336, 368, 0, 0, 3 },
	{ 64, 48, 384, 384, -12, 4, 3 },
	{ 64, 48, 448, 384, -12, 4, 3 },
	{ 48, 64, 512, 416, 0, -18, 3 },
	{ 48, 64, 560, 416, 0, -18, 3 },
	{ 64, 48, 608, 416, 0, 0, 3 },
	{ 48, 64, 288, 352, 0, 0, 3 },
	{ 48, 64, 336, 368, 0, 0, 3 },
	{ 48, 80, 240, 352, 0, 0, 3 },
	{ 64, 112, 176, 384, 0, 0, 3 }
};
static AnimationFrame kanoDuckFrames[] = {
	{ 64, 96, 0, 112, 0, 16, 3 },
	{ 64, 80, 64, 112, 0, 32, 3 },
	{ 64, 48, 128, 112, 0, 64, 3 }
};
static AnimationFrame kanoBlockFrames[] = {
	{ 64, 112, 64, 528, 0, 0, 3 },
	{ 64, 112, 128, 496, 0, 0, 3 },
	{ 64, 112, 192, 496, 0, 0, 3 }
};
static AnimationFrame kanoBlockHitFrames[] = {
	{ 64, 112, 128, 496, 0, 0, 1 },
	{ 64, 112, 192, 496, 0, 0, 1 },
	{ 64, 112, 128, 496, 0, 0, 1 },
	{ 64, 112, 192, 496, 0, 0, 1 },
	{ 64, 112, 128, 496, 0, 0, 1 },
	{ 64, 112, 192, 496, 0, 0, 1 }
};
static AnimationFrame kanoBlockDuckFrames[] = {
	{ 64, 64, 240, 432, 0, 48, 3 },
	{ 64, 80, 304, 432, 0, 32, 3 }
};
static AnimationFrame kanoBlockDuckHitFrames[] = {
	{ 64, 64, 240, 432, 0, 48, 1 },
	{ 64, 80, 304, 432, 0, 32, 1 },
	{ 64, 64, 240, 432, 0, 48, 1 },
	{ 64, 80, 304, 432, 0, 32, 1 },
	{ 64, 64, 240, 432, 0, 48, 1 },
	{ 64, 80, 304, 432, 0, 32, 1 }
};
static AnimationFrame kanoPunchLowFrames[] = {
	{ 64, 112, 640, 112, -2, 0, 4 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 96, 112, 288, 112, -4, 0, 8 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 64, 112, 640, 112, -2, 0, 4 }
};
static AnimationFrame kanoPunchLowRepeatFrames[] = {
	{ 64, 112, 640, 112, -2, 0, 4 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 96, 112, 288, 112, -4, 0, 10 },
	{ 80, 96, 384, 112, 0, 15, 4 },
	{ 64, 112, 704, 112, 13, 0, 4 },
	{ 96, 96, 464, 112, 6, 15, 10 }
};
static AnimationFrame kanoPunchHighFrames[] = {
	{ 64, 112, 640, 112, -2, 0, 4 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 80, 112, 768, 112, 10, -1, 8 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 64, 112, 640, 112, -2, 0, 4 }
};
static AnimationFrame kanoPunchHighRepeatFrames[] = {
	{ 64, 112, 640, 112, -2, 0, 4 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 80, 112, 768, 112, 10, -1, 10 },
	{ 80, 112, 848, 112, 8, 0, 4 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 96, 112, 928, 112, 8, 0, 10 }
};
static AnimationFrame kanoKickLowFrames[] = {
	{ 64, 112, 368, 256, -6, -2, 4 },
	{ 48, 112, 496, 272, 1, -1, 4 },
	{ 64, 112, 544, 308, -2, -1, 4 },
	{ 96, 96, 688, 320, -7, 15, 8 },
	{ 80, 96, 608, 320, -6, 15, 4 },
	{ 64, 112, 544, 308, -2, -1, 4 },
	{ 64, 112, 368, 256, 1, -1, 4 }
};
static AnimationFrame kanoKickHighFrames[] = {
	{ 64, 112, 368, 256, -6, -2, 4 },
	{ 48, 112, 496, 272, 1, -1, 4 },
	{ 64, 112, 544, 308, -2, -1, 4 },
	{ 96, 112, 880, 336, -6, -1, 8 },
	{ 80, 96, 608, 320, -6, 15, 4 },
	{ 64, 112, 544, 308, -2, -1, 4 },
	{ 64, 112, 368, 256, 1, -1, 4 },
	{ 64, 112, 368, 256, -6, -2, 4 }
};
static AnimationFrame kanoJumpPunchFrames[] = {
	{ 48, 64, 912, 448, 0, 0, 18 },
	{ 64, 64, 0, 544, 0, 0, 4 },
	{ 64, 64, 0, 544, 0, 0, 4 }
};
static AnimationFrame kanoJumpKickFrames[] = {
	{ 48, 112, 368, 432, 0, 0, 18 },
	{ 96, 96, 416, 432, 0, 0, 4 },
	{ 96, 96, 416, 432, 0, 0, 4 }
};
static AnimationFrame kanoJumpDropKickFrames[] = {
	{ 48, 80, 672, 416, 0, 0, 6 },
	{ 96, 80, 720, 432, 0, 0, 4 },
	{ 96, 64, 816, 448, 0, 0, 4 }	
};
static AnimationFrame kanoUppercutFrames[] = {
	{ 64, 112, 800, 224, -9, 0, 4 },
	{ 48, 112, 864, 224, 3, 1, 4 },
	{ 80, 112, 912, 224, 6, 3, 4 },
	{ 64, 128, 0, 320, 12, -14, 12 },
	{ 64, 112, 64, 304, -9, 0, 4 },
	{ 64, 112, 64, 304, -9, 0, 4 }
};
static AnimationFrame kanoKipUpFrames[] = {
	{ 48, 64, 640, 720, 0, 48, 5 },
	{ 32, 80, 992, 224, 8, 31, 5 },
	{ 48, 48, 976, 336, 0, 64, 5 },
	{ 48, 80, 848, 1056, 0, 33, 5 },
	{ 64, 112, 960, 624, 0, 0, 5 }
};
static AnimationFrame kanoSweepFrames[] = {
	{ 64, 96, 144, 224, -6, 15, 5 },
	{ 80, 64, 208, 224, -5, 47, 5 },
	{ 64, 48, 288, 224, -3, 63, 5 },
	{ 96, 48, 560, 1120, -3, 63, 5 },
	{ 96, 64, 448, 208, -3, 63, 5 },
	{ 80, 80, 544, 224, -18, 34, 5 },
	{ 96, 96, 624, 224, -8, 14, 5 },
	{ 64, 112, 368, 256, 0, 0, 5 }, 
	{ 64, 112, 368, 256, 0, 0, 5 },
};

static AnimationFrame kanoRoundhouseFrames[] = {
	{ 64, 112, 528, 896, -1, -2, 5 },
	{ 64, 112, 592, 896, -7, -2, 5 },
	{ 96, 96, 288, 928, 0, 14, 10 },
	{ 64, 96, 384, 928, 12, 14, 5 },	
	{ 48, 112, 976, 864, 7, -2, 5 },
	{ 48, 96, 912, 928, -5, 15, 5 },
	{ 64, 96, 960, 976, -7, 15, 5 }
};

static SpriteAnimator lightningAnimator = {
	LIGHTNING, 0.5f, BMP_LIGHTNING, 0, 0
};

static SpriteAnimator lightning2Animator = {
	LIGHTNING2, 0.5f, BMP_LIGHTNING, 0, 0
};

static AnimationFrame lightningFrames[] = {
	{ 64, 112, 0, 0, 0, 0, 4 },
	{ 64, 112, 64, 0, 0, 0, 4 },
	{ 64, 112, 128, 0, 0, 0, 4 },
	{ 64, 112, 192, 0, 0, 0, 4 },
	{ 64, 112, 256, 0, 0, 0, 4 },
	{ 64, 112, 320, 0, 0, 0, 4 },
	{ 64, 112, 384, 0, 0, 0, 4 },
	{ 64, 112, 448, 0, 0, 0, 4 },
	{ 64, 112, 512, 0, 0, 0, 4 },
	{ 64, 112, 576, 0, 0, 0, 4 },
	{ 64, 112, 0, 112, 0, 0, 4 },
	{ 64, 112, 64, 112, 0, 0, 4 },
	{ 64, 112, 128, 112, 0, 0, 4 },
	{ 64, 112, 192, 112, 0, 0, 4 },
	{ 64, 112, 256, 112, 0, 0, 4 },
	{ 64, 112, 320, 112, 0, 0, 4 },
	{ 64, 112, 384, 112, 0, 0, 4 },
	{ 64, 112, 448, 112, 0, 0, 4 },
	{ 64, 112, 512, 112, 0, 0, 4 },
	{ 64, 112, 576, 112, 0, 0, 4 },
	{ 64, 112, 0, 224, 0, 0, 4 },
	{ 64, 112, 64, 224, 0, 0, 4 },
	{ 64, 112, 128, 224, 0, 0, 4 },
	{ 64, 112, 192, 224, 0, 0, 4 },
	{ 64, 112, 256, 224, 0, 0, 4 },
	{ 64, 112, 320, 224, 0, 0, 4 },
	{ 64, 112, 384, 224, 0, 0, 4 },
	{ 64, 112, 448, 224, 0, 0, 4 },
	{ 64, 112, 512, 224, 0, 0, 4 },
	{ 64, 112, 576, 224, 0, 0, 4 }
};

static int specials_Cage_GreenBolt_Inputs[] = { INPUT_LP, INPUT_FORWARD, INPUT_BACK, 0, 0, 0 };
static int specials_Cage_ShadowKick_Inputs[] = { INPUT_BACK, INPUT_FORWARD, INPUT_LK, 0, 0, 0 };
static int specials_Cage_NutPunch_Inputs[] = { INPUT_LP, 0, 0, 0, 0, INPUT_BLK };
static int specials_Kano_Knife_Inputs[] = { INPUT_FORWARD, INPUT_BACK, 0, 0, 0, INPUT_BLK }; //if IsBlocking
static int specials_Kano_CannonBall_Inputs[] = { INPUT_UP, INPUT_BACK, INPUT_DOWN, INPUT_FORWARD, 0, INPUT_BLK }; //if IsBlocking
static int specials_FIGHTER_NONE_Inputs[] = { 0, 0, 0, 0, 0, 0 };
static int specials_Raiden_Lightning_Inputs[] = { INPUT_LP, INPUT_FORWARD, INPUT_DOWN, 0, 0, 0 };
static int specials_Raiden_Torpedo_Inputs[] = { INPUT_FORWARD, INPUT_BACK, INPUT_BACK, 0, 0, 0 };
static int specials_Raiden_Teleport_Inputs[] = { INPUT_UP, INPUT_DOWN, 0, 0, 0, 0 };
static int specials_Kang_Fireball_Inputs[] = { INPUT_LP, INPUT_FORWARD, INPUT_FORWARD, 0, 0, 0 };
static int specials_Kang_FlyingKick_Inputs[] = { INPUT_LK, INPUT_FORWARD, INPUT_FORWARD, 0, 0, 0 };
static int specials_Sonya_Rings_Inputs[] = { INPUT_LP, INPUT_BACK, INPUT_BACK, 0, 0, 0 };
static int specials_Sonya_LegGrab_Inputs[] = { 0, 0, INPUT_LK, INPUT_LP, INPUT_DOWN, INPUT_BLK };
static int specials_Sonya_SquareFlight_Inputs[] = { INPUT_LP, INPUT_BACK, INPUT_FORWARD, 0, 0, 0 };
static int specials_Subzero_Freeze_Inputs[] = { INPUT_LP, INPUT_FORWARD, INPUT_DOWN, 0, 0, 0 };
static int specials_Subzero_Slide_Inputs[] = { 0, 0, INPUT_LK, INPUT_LP, INPUT_BACK, INPUT_BLK };
static int specials_Scorpion_Harpoon_Inputs[] = { INPUT_LP, INPUT_BACK, INPUT_BACK, 0, 0, 0 };
static int specials_Scorpion_Teleport_Inputs[] = { INPUT_LP, INPUT_BACK, INPUT_DOWN, 0, 0, 0 };

static SpriteAnimator fmvAnimator = {
	FMV, 0.5f, (int)imageBufferFMV, 0, 0
};

static AnimationFrame fmvCageFrames[] = {
	{ 160, 64, 0, 0, 0, 0, 8 },
	{ 160, 64, 0, 64, 0, 0, 8 },
	{ 160, 64, 0, 128, 0, 0, 8 },
	{ 160, 64, 0, 192, 0, 0, 8 },
	{ 160, 64, 0, 256, 0, 0, 8 },
	{ 160, 64, 0, 320, 0, 0, 8 },
	{ 160, 64, 0, 384, 0, 0, 8 },
	{ 160, 64, 0, 448, 0, 0, 8 },
	{ 160, 64, 0, 512, 0, 0, 8 },
	{ 160, 64, 0, 576, 0, 0, 8 },
	{ 160, 64, 0, 640, 0, 0, 8 },
	{ 160, 64, 0, 704, 0, 0, 8 },
	{ 160, 64, 0, 768, 0, 0, 8 },
	{ 160, 64, 0, 832, 0, 0, 8 },
	{ 160, 64, 0, 896, 0, 0, 8 },
	{ 160, 64, 0, 960, 0, 0, 8 },
	{ 160, 64, 0, 1024, 0, 0, 8 },
	{ 160, 64, 0, 1088, 0, 0, 8 }
};

static AnimationFrame fmvKanoFrames[] = {
	{ 160, 64, 0, 0, 0, 0, 8 },
	{ 160, 64, 0, 64, 0, 0, 8 },
	{ 160, 64, 0, 128, 0, 0, 8 },
	{ 160, 64, 0, 192, 0, 0, 8 },
	{ 160, 64, 0, 256, 0, 0, 8 },
	{ 160, 64, 0, 320, 0, 0, 8 },
	{ 160, 64, 0, 384, 0, 0, 8 },
	{ 160, 64, 0, 448, 0, 0, 8 },
	{ 160, 64, 0, 512, 0, 0, 8 },
	{ 160, 64, 0, 576, 0, 0, 8 },
	{ 160, 64, 0, 640, 0, 0, 8 },
	{ 160, 64, 0, 704, 0, 0, 8 },
	{ 160, 64, 0, 768, 0, 0, 8 },
	{ 160, 64, 0, 832, 0, 0, 8 },
	{ 160, 64, 0, 896, 0, 0, 8 },
	{ 160, 64, 0, 960, 0, 0, 8 },
	{ 160, 64, 0, 1024, 0, 0, 8 },
	{ 160, 64, 0, 1152, 0, 0, 8 },
	{ 160, 64, 0, 1216, 0, 0, 8 },
	{ 160, 64, 0, 1280, 0, 0, 8 },
	{ 160, 64, 0, 1344, 0, 0, 8 }
};

static AnimationFrame fmvRaidenFrames[] = {
	{ 160, 64, 0, 0, 0, 0, 8 },
	{ 160, 64, 0, 64, 0, 0, 8 },
	{ 160, 64, 0, 128, 0, 0, 8 },
	{ 160, 64, 0, 192, 0, 0, 8 },
	{ 160, 64, 0, 256, 0, 0, 8 },
	{ 160, 64, 0, 320, 0, 0, 8 },
	{ 160, 64, 0, 384, 0, 0, 8 },
	{ 160, 64, 0, 448, 0, 0, 8 },
	{ 160, 64, 0, 512, 0, 0, 8 },
	{ 160, 64, 0, 576, 0, 0, 8 },
	{ 160, 64, 0, 640, 0, 0, 8 },
	{ 160, 64, 0, 704, 0, 0, 8 },
	{ 160, 64, 0, 768, 0, 0, 8 },
	{ 160, 64, 0, 832, 0, 0, 8 },
	{ 160, 64, 0, 896, 0, 0, 8 },
	{ 160, 64, 0, 960, 0, 0, 8 },
	{ 160, 64, 0, 1024, 0, 0, 8 },
	{ 160, 64, 0, 1152, 0, 0, 8 },
	{ 160, 64, 0, 1216, 0, 0, 8 },
	{ 160, 64, 0, 1280, 0, 0, 8 }
};

static AnimationFrame fmvKangFrames[] = {
	{ 160, 64, 0, 0, 0, 0, 8 },
	{ 160, 64, 0, 64, 0, 0, 8 },
	{ 160, 64, 0, 128, 0, 0, 8 },
	{ 160, 64, 0, 192, 0, 0, 8 },
	{ 160, 64, 0, 256, 0, 0, 8 },
	{ 160, 64, 0, 320, 0, 0, 8 },
	{ 160, 64, 0, 384, 0, 0, 8 },
	{ 160, 64, 0, 448, 0, 0, 8 },
	{ 160, 64, 0, 512, 0, 0, 8 },
	{ 160, 64, 0, 576, 0, 0, 8 },
	{ 160, 64, 0, 640, 0, 0, 8 },
	{ 160, 64, 0, 704, 0, 0, 8 },
	{ 160, 64, 0, 768, 0, 0, 8 },
	{ 160, 64, 0, 832, 0, 0, 8 },
	{ 160, 64, 0, 896, 0, 0, 8 },
	{ 160, 64, 0, 960, 0, 0, 8 },
	{ 160, 64, 0, 1024, 0, 0, 8 },
	{ 160, 64, 0, 1152, 0, 0, 8 }
};

static AnimationFrame fmvScorpionFrames[] = {
	{ 160, 64, 0, 0, 0, 0, 8 },
	{ 160, 64, 0, 64, 0, 0, 8 },
	{ 160, 64, 0, 128, 0, 0, 8 },
	{ 160, 64, 0, 192, 0, 0, 8 },
	{ 160, 64, 0, 256, 0, 0, 8 },
	{ 160, 64, 0, 320, 0, 0, 8 },
	{ 160, 64, 0, 384, 0, 0, 8 },
	{ 160, 64, 0, 448, 0, 0, 8 },
	{ 160, 64, 0, 512, 0, 0, 8 },
	{ 160, 64, 0, 576, 0, 0, 8 },
	{ 160, 64, 0, 640, 0, 0, 8 },
	{ 160, 64, 0, 704, 0, 0, 8 },
	{ 160, 64, 0, 768, 0, 0, 8 },
	{ 160, 64, 0, 832, 0, 0, 8 },
	{ 160, 64, 0, 896, 0, 0, 8 },
	{ 160, 64, 0, 960, 0, 0, 8 },
	{ 160, 64, 0, 1024, 0, 0, 8 },
	{ 160, 64, 0, 1152, 0, 0, 8 },
	{ 160, 64, 0, 1216, 0, 0, 8 }
};

static AnimationFrame fmvSubzeroFrames[] = {
	{ 160, 64, 0, 0, 0, 0, 8 },
	{ 160, 64, 0, 64, 0, 0, 8 },
	{ 160, 64, 0, 128, 0, 0, 8 },
	{ 160, 64, 0, 192, 0, 0, 8 },
	{ 160, 64, 0, 256, 0, 0, 8 },
	{ 160, 64, 0, 320, 0, 0, 8 },
	{ 160, 64, 0, 384, 0, 0, 8 },
	{ 160, 64, 0, 448, 0, 0, 8 },
	{ 160, 64, 0, 512, 0, 0, 8 },
	{ 160, 64, 0, 576, 0, 0, 8 },
	{ 160, 64, 0, 640, 0, 0, 8 },
	{ 160, 64, 0, 704, 0, 0, 8 },
	{ 160, 64, 0, 768, 0, 0, 8 },
	{ 160, 64, 0, 832, 0, 0, 8 },
	{ 160, 64, 0, 896, 0, 0, 8 },
	{ 160, 64, 0, 960, 0, 0, 8 }
};

static AnimationFrame fmvSonyaFrames[] = {
	{ 160, 64, 0, 0, 0, 0, 8 },
	{ 160, 64, 0, 64, 0, 0, 8 },
	{ 160, 64, 0, 128, 0, 0, 8 },
	{ 160, 64, 0, 192, 0, 0, 8 },
	{ 160, 64, 0, 256, 0, 0, 8 },
	{ 160, 64, 0, 320, 0, 0, 8 },
	{ 160, 64, 0, 384, 0, 0, 8 },
	{ 160, 64, 0, 448, 0, 0, 8 },
	{ 160, 64, 0, 512, 0, 0, 8 },
	{ 160, 64, 0, 576, 0, 0, 8 },
	{ 160, 64, 0, 640, 0, 0, 8 },
	{ 160, 64, 0, 704, 0, 0, 8 },
	{ 160, 64, 0, 768, 0, 0, 8 }
};

// *************************************************
//               User Prototypes
// *************************************************
void initBlackPalettes();
void initAlphaScreen();
void initTruFunScreen();
void initTitleScreen();
void initMenuScreen();
void initAttractMode();
void switchAttractFMV();
void initLeaderboard();
void initGoroLives();
void initGoroProfile();
void initWinners();
void initGameAssets();
void switchScreenChooseFighter();
void switchScreenVsBattle(int p1Cursor, int p2Cursor);
void switchScreenFight(int p1Cursor, int p2Cursor, bool unpackBackground);
void SetPlayerPalettes();
void setFighterAlternatePalette(int fighter1Index, int fighter2Index);
void setPlayer1Name(char* name);
void setPlayer2Name(char* name, int length);
void displayWinnerMedals();
void doSpecial_Cage_GreenBolt(struct Fighter* fighter, struct SpriteAnimator* animator);
void doSpecial_Kano_Knife(struct Fighter* fighter, struct SpriteAnimator* animator);
void doSpecial_Raiden_Lightning(struct Fighter* fighter, struct SpriteAnimator* animator);
void doSpecial_Kang_Fireball(struct Fighter* fighter, struct SpriteAnimator* animator);
void doSpecial_Sonya_Rings(struct Fighter* fighter, struct SpriteAnimator* animator);
void doSpecial_Subzero_Freeze(struct Fighter* fighter, struct SpriteAnimator* animator);
void doSpecial_Scorpion_Harpoon(struct Fighter* fighter, struct SpriteAnimator* animator);

///////////////////////////////
// Player 1 Fighters
///////////////////////////////
static Fighter fighterScorpion = {
	SCORPION, P1_FIGHTER, BMPSUBZERO,
	SCORPION_IDLE_FRAME_COUNT,
	SUBZERO_DIZZY_FRAME_COUNT,
	SUBZERO_WINS_FRAME_COUNT,
	SCORPION_SPECIAL_FRAME_COUNT,
	SCORPION_WALK_FRAME_COUNT,
	SUBZERO_TURN_FRAME_COUNT,
	SUBZERO_JUMP_FRAME_COUNT,
	SUBZERO_JUMP_ROLL_FRAME_COUNT,
	SUBZERO_DUCK_FRAME_COUNT,
	SUBZERO_BLOCK_FRAME_COUNT,
	SUBZERO_BLOCK_HIT_FRAME_COUNT,
	SUBZERO_BLOCK_DUCK_FRAME_COUNT,
	SUBZERO_BLOCK_DUCK_HIT_FRAME_COUNT,
	SUBZERO_LOW_PUNCH_FRAME_COUNT,
	SUBZERO_LOW_PUNCH_REPEAT_FRAME_COUNT,
	SUBZERO_HIGH_PUNCH_FRAME_COUNT,
	SUBZERO_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	SUBZERO_LOW_KICK_FRAME_COUNT,
	SUBZERO_HIGH_KICK_FRAME_COUNT,
	SUBZERO_JUMP_PUNCH_FRAME_COUNT,
	SUBZERO_JUMP_KICK_FRAME_COUNT,
	SUBZERO_UPPERCUT_FRAME_COUNT,
	SUBZERO_KIPUP_FRAME_COUNT,
	SUBZERO_SWEEP_FRAME_COUNT,
	SUBZERO_ROUNDHOUSE_FRAME_COUNT,
	SUBZERO_BODY_PUNCH_FRAME_COUNT,
	SUBZERO_BODY_KICK_FRAME_COUNT,
	SUBZERO_DUCK_KICK_FRAME_COUNT,
	SUBZERO_THROW_FRAME_COUNT,
	SUBZERO_BEING_THROWN_FRAME_COUNT,
	SUBZERO_HIT_LOW_FRAME_COUNT,
	SUBZERO_HIT_HIGH_FRAME_COUNT,
	SUBZERO_HIT_BACK_FRAME_COUNT,
	SUBZERO_HIT_UPPERCUT_FRAME_COUNT,
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKano = {
	KANO, P1_FIGHTER, BMPKANO,
	KANO_IDLE_FRAME_COUNT,
	KANO_DIZZY_FRAME_COUNT,
	KANO_WINS_FRAME_COUNT,
	KANO_SPECIAL_FRAME_COUNT,
	KANO_WALK_FRAME_COUNT,
	KANO_TURN_FRAME_COUNT,
	KANO_JUMP_FRAME_COUNT,
	KANO_JUMP_ROLL_FRAME_COUNT,
	KANO_DUCK_FRAME_COUNT,
	KANO_BLOCK_FRAME_COUNT,
	KANO_BLOCK_HIT_FRAME_COUNT,
	KANO_BLOCK_DUCK_FRAME_COUNT,
	KANO_BLOCK_DUCK_HIT_FRAME_COUNT,
	KANO_LOW_PUNCH_FRAME_COUNT,
	KANO_LOW_PUNCH_REPEAT_FRAME_COUNT,
	KANO_HIGH_PUNCH_FRAME_COUNT,
	KANO_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	KANO_LOW_KICK_FRAME_COUNT,
	KANO_HIGH_KICK_FRAME_COUNT,
	KANO_JUMP_PUNCH_FRAME_COUNT,
	KANO_JUMP_KICK_FRAME_COUNT,
	KANO_UPPERCUT_FRAME_COUNT,
	KANO_KIPUP_FRAME_COUNT,
	KANO_SWEEP_FRAME_COUNT,
	KANO_ROUNDHOUSE_FRAME_COUNT,
	KANO_BODY_PUNCH_FRAME_COUNT,
	KANO_BODY_KICK_FRAME_COUNT,
	KANO_DUCK_KICK_FRAME_COUNT,
	KANO_THROW_FRAME_COUNT,
	KANO_BEING_THROWN_FRAME_COUNT,
	KANO_HIT_LOW_FRAME_COUNT,
	KANO_HIT_HIGH_FRAME_COUNT,
	KANO_HIT_BACK_FRAME_COUNT,
	KANO_HIT_UPPERCUT_FRAME_COUNT,
	KANO_HIT_FALL_FRAME_COUNT,
	KANO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterCage = {
	CAGE, P1_FIGHTER, BMPCAGE,
	CAGE_IDLE_FRAME_COUNT,
	CAGE_DIZZY_FRAME_COUNT,
	CAGE_WINS_FRAME_COUNT,
	CAGE_SPECIAL_FRAME_COUNT,
	CAGE_WALK_FRAME_COUNT,
	CAGE_TURN_FRAME_COUNT,
	CAGE_JUMP_FRAME_COUNT,
	CAGE_JUMP_ROLL_FRAME_COUNT,
	CAGE_DUCK_FRAME_COUNT,
	CAGE_BLOCK_FRAME_COUNT,
	CAGE_BLOCK_HIT_FRAME_COUNT,
	CAGE_BLOCK_DUCK_FRAME_COUNT,
	CAGE_BLOCK_DUCK_HIT_FRAME_COUNT,
	CAGE_LOW_PUNCH_FRAME_COUNT,
	CAGE_LOW_PUNCH_REPEAT_FRAME_COUNT,
	CAGE_HIGH_PUNCH_FRAME_COUNT,
	CAGE_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	CAGE_LOW_KICK_FRAME_COUNT,
	CAGE_HIGH_KICK_FRAME_COUNT,
	CAGE_JUMP_PUNCH_FRAME_COUNT,
	CAGE_JUMP_KICK_FRAME_COUNT,
	CAGE_UPPERCUT_FRAME_COUNT,
	CAGE_KIPUP_FRAME_COUNT,
	CAGE_SWEEP_FRAME_COUNT,
	CAGE_ROUNDHOUSE_FRAME_COUNT,
	CAGE_BODY_PUNCH_FRAME_COUNT,
	CAGE_BODY_KICK_FRAME_COUNT,
	CAGE_DUCK_KICK_FRAME_COUNT,
	CAGE_THROW_FRAME_COUNT,
	CAGE_BEING_THROWN_FRAME_COUNT,
	CAGE_HIT_LOW_FRAME_COUNT,
	CAGE_HIT_HIGH_FRAME_COUNT,
	CAGE_HIT_BACK_FRAME_COUNT,
	CAGE_HIT_UPPERCUT_FRAME_COUNT,
	CAGE_HIT_FALL_FRAME_COUNT,
	CAGE_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKang = {
	KANG, P1_FIGHTER, BMPKANG,
	KANG_IDLE_FRAME_COUNT,
	KANG_DIZZY_FRAME_COUNT,
	KANG_WINS_FRAME_COUNT,
	KANG_SPECIAL_FRAME_COUNT,
	KANG_WALK_FRAME_COUNT,
	KANG_TURN_FRAME_COUNT,
	KANG_JUMP_FRAME_COUNT,
	KANG_JUMP_ROLL_FRAME_COUNT,
	KANG_DUCK_FRAME_COUNT,
	KANG_BLOCK_FRAME_COUNT,
	KANG_BLOCK_HIT_FRAME_COUNT,
	KANG_BLOCK_DUCK_FRAME_COUNT,
	KANG_BLOCK_DUCK_HIT_FRAME_COUNT,
	KANG_LOW_PUNCH_FRAME_COUNT,
	KANG_LOW_PUNCH_REPEAT_FRAME_COUNT,
	KANG_HIGH_PUNCH_FRAME_COUNT,
	KANG_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	KANG_LOW_KICK_FRAME_COUNT,
	KANG_HIGH_KICK_FRAME_COUNT,
	KANG_JUMP_PUNCH_FRAME_COUNT,
	KANG_JUMP_KICK_FRAME_COUNT,
	KANG_UPPERCUT_FRAME_COUNT,
	KANG_KIPUP_FRAME_COUNT,
	KANG_SWEEP_FRAME_COUNT,
	KANG_ROUNDHOUSE_FRAME_COUNT,
	KANG_BODY_PUNCH_FRAME_COUNT,
	KANG_BODY_KICK_FRAME_COUNT,
	KANG_DUCK_KICK_FRAME_COUNT,
	KANG_THROW_FRAME_COUNT,
	KANG_BEING_THROWN_FRAME_COUNT,
	KANG_HIT_LOW_FRAME_COUNT,
	KANG_HIT_HIGH_FRAME_COUNT,
	KANG_HIT_BACK_FRAME_COUNT,
	KANG_HIT_UPPERCUT_FRAME_COUNT,
	KANG_HIT_FALL_FRAME_COUNT,
	KANG_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterRaiden = {
	RAIDEN, P1_FIGHTER, BMPRAIDEN,
	RAIDEN_IDLE_FRAME_COUNT,
	RAIDEN_DIZZY_FRAME_COUNT,
	RAIDEN_WINS_FRAME_COUNT,
	RAIDEN_SPECIAL_FRAME_COUNT,
	RAIDEN_WALK_FRAME_COUNT,
	RAIDEN_TURN_FRAME_COUNT,
	RAIDEN_JUMP_FRAME_COUNT,
	RAIDEN_JUMP_ROLL_FRAME_COUNT,
	RAIDEN_DUCK_FRAME_COUNT,
	RAIDEN_BLOCK_FRAME_COUNT,
	RAIDEN_BLOCK_HIT_FRAME_COUNT,
	RAIDEN_BLOCK_DUCK_FRAME_COUNT,
	RAIDEN_BLOCK_DUCK_HIT_FRAME_COUNT,
	RAIDEN_LOW_PUNCH_FRAME_COUNT,
	RAIDEN_LOW_PUNCH_REPEAT_FRAME_COUNT,
	RAIDEN_HIGH_PUNCH_FRAME_COUNT,
	RAIDEN_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	RAIDEN_LOW_KICK_FRAME_COUNT,
	RAIDEN_HIGH_KICK_FRAME_COUNT,
	RAIDEN_JUMP_PUNCH_FRAME_COUNT,
	RAIDEN_JUMP_KICK_FRAME_COUNT,
	RAIDEN_UPPERCUT_FRAME_COUNT,
	RAIDEN_KIPUP_FRAME_COUNT,
	RAIDEN_SWEEP_FRAME_COUNT,
	RAIDEN_ROUNDHOUSE_FRAME_COUNT,
	RAIDEN_BODY_PUNCH_FRAME_COUNT,
	RAIDEN_BODY_KICK_FRAME_COUNT,
	RAIDEN_DUCK_KICK_FRAME_COUNT,
	RAIDEN_THROW_FRAME_COUNT,
	RAIDEN_BEING_THROWN_FRAME_COUNT,
	RAIDEN_HIT_LOW_FRAME_COUNT,
	RAIDEN_HIT_HIGH_FRAME_COUNT,
	RAIDEN_HIT_BACK_FRAME_COUNT,
	RAIDEN_HIT_UPPERCUT_FRAME_COUNT,
	RAIDEN_HIT_FALL_FRAME_COUNT,
	RAIDEN_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSubzero = {
	SUBZERO, P1_FIGHTER, BMPSUBZERO,
	SUBZERO_IDLE_FRAME_COUNT,
	SUBZERO_DIZZY_FRAME_COUNT,
	SUBZERO_WINS_FRAME_COUNT,
	SUBZERO_SPECIAL_FRAME_COUNT,
	SUBZERO_WALK_FRAME_COUNT,
	SUBZERO_TURN_FRAME_COUNT,
	SUBZERO_JUMP_FRAME_COUNT,
	SUBZERO_JUMP_ROLL_FRAME_COUNT,
	SUBZERO_DUCK_FRAME_COUNT,
	SUBZERO_BLOCK_FRAME_COUNT,
	SUBZERO_BLOCK_HIT_FRAME_COUNT,
	SUBZERO_BLOCK_DUCK_FRAME_COUNT,
	SUBZERO_BLOCK_DUCK_HIT_FRAME_COUNT,
	SUBZERO_LOW_PUNCH_FRAME_COUNT,
	SUBZERO_LOW_PUNCH_REPEAT_FRAME_COUNT,
	SUBZERO_HIGH_PUNCH_FRAME_COUNT,
	SUBZERO_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	SUBZERO_LOW_KICK_FRAME_COUNT,
	SUBZERO_HIGH_KICK_FRAME_COUNT,
	SUBZERO_JUMP_PUNCH_FRAME_COUNT,
	SUBZERO_JUMP_KICK_FRAME_COUNT,
	SUBZERO_UPPERCUT_FRAME_COUNT,
	SUBZERO_KIPUP_FRAME_COUNT,
	SUBZERO_SWEEP_FRAME_COUNT,
	SUBZERO_ROUNDHOUSE_FRAME_COUNT,
	SUBZERO_BODY_PUNCH_FRAME_COUNT,
	SUBZERO_BODY_KICK_FRAME_COUNT,
	SUBZERO_DUCK_KICK_FRAME_COUNT,
	SUBZERO_THROW_FRAME_COUNT,
	SUBZERO_BEING_THROWN_FRAME_COUNT,
	SUBZERO_HIT_LOW_FRAME_COUNT,
	SUBZERO_HIT_HIGH_FRAME_COUNT,
	SUBZERO_HIT_BACK_FRAME_COUNT,
	SUBZERO_HIT_UPPERCUT_FRAME_COUNT,
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSonya = {
	SONYA, P1_FIGHTER, BMPSONYA,
	SONYA_IDLE_FRAME_COUNT,
	SONYA_DIZZY_FRAME_COUNT,
	SONYA_WINS_FRAME_COUNT,
	SONYA_SPECIAL_FRAME_COUNT,
	SONYA_WALK_FRAME_COUNT,	
	SONYA_TURN_FRAME_COUNT,
	SONYA_JUMP_FRAME_COUNT,
	SONYA_JUMP_ROLL_FRAME_COUNT,
	SONYA_DUCK_FRAME_COUNT,
	SONYA_BLOCK_FRAME_COUNT,
	SONYA_BLOCK_HIT_FRAME_COUNT,
	SONYA_BLOCK_DUCK_FRAME_COUNT,
	SONYA_BLOCK_DUCK_HIT_FRAME_COUNT,
	SONYA_LOW_PUNCH_FRAME_COUNT,
	SONYA_LOW_PUNCH_REPEAT_FRAME_COUNT,
	SONYA_HIGH_PUNCH_FRAME_COUNT,
	SONYA_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	SONYA_LOW_KICK_FRAME_COUNT,
	SONYA_HIGH_KICK_FRAME_COUNT,
	SONYA_JUMP_PUNCH_FRAME_COUNT,
	SONYA_JUMP_KICK_FRAME_COUNT,
	SONYA_UPPERCUT_FRAME_COUNT,
	SONYA_KIPUP_FRAME_COUNT,
	SONYA_SWEEP_FRAME_COUNT,
	SONYA_ROUNDHOUSE_FRAME_COUNT,
	SONYA_BODY_PUNCH_FRAME_COUNT,
	SONYA_BODY_KICK_FRAME_COUNT,
	SONYA_DUCK_KICK_FRAME_COUNT,
	SONYA_THROW_FRAME_COUNT,
	SONYA_BEING_THROWN_FRAME_COUNT,
	SONYA_HIT_LOW_FRAME_COUNT,
	SONYA_HIT_HIGH_FRAME_COUNT,
	SONYA_HIT_BACK_FRAME_COUNT,
	SONYA_HIT_UPPERCUT_FRAME_COUNT,
	SONYA_HIT_FALL_FRAME_COUNT,
	SONYA_HIT_SWEEP_FRAME_COUNT
};

///////////////////////////////
// Player 2 Fighters
///////////////////////////////
static Fighter fighterScorpion2 = {
	SCORPION, P2_FIGHTER, BMPSUBZERO,
	SCORPION_IDLE_FRAME_COUNT,
	SUBZERO_DIZZY_FRAME_COUNT,
	SUBZERO_WINS_FRAME_COUNT,
	SCORPION_SPECIAL_FRAME_COUNT,
	SCORPION_WALK_FRAME_COUNT,
	SCORPION_SPECIAL_FRAME_COUNT,
	SUBZERO_TURN_FRAME_COUNT,
	SUBZERO_JUMP_FRAME_COUNT,
	SUBZERO_JUMP_ROLL_FRAME_COUNT,
	SUBZERO_DUCK_FRAME_COUNT,
	SUBZERO_BLOCK_FRAME_COUNT,
	SUBZERO_BLOCK_HIT_FRAME_COUNT,
	SUBZERO_BLOCK_DUCK_FRAME_COUNT,
	SUBZERO_BLOCK_DUCK_HIT_FRAME_COUNT,
	SUBZERO_LOW_PUNCH_FRAME_COUNT,
	SUBZERO_LOW_PUNCH_REPEAT_FRAME_COUNT,
	SUBZERO_HIGH_PUNCH_FRAME_COUNT,
	SUBZERO_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	SUBZERO_LOW_KICK_FRAME_COUNT,
	SUBZERO_HIGH_KICK_FRAME_COUNT,
	SUBZERO_JUMP_PUNCH_FRAME_COUNT,
	SUBZERO_JUMP_KICK_FRAME_COUNT,
	SUBZERO_UPPERCUT_FRAME_COUNT,
	SUBZERO_KIPUP_FRAME_COUNT,
	SUBZERO_SWEEP_FRAME_COUNT,
	SUBZERO_ROUNDHOUSE_FRAME_COUNT,
	SUBZERO_BODY_PUNCH_FRAME_COUNT,
	SUBZERO_BODY_KICK_FRAME_COUNT,
	SUBZERO_DUCK_KICK_FRAME_COUNT,
	SUBZERO_THROW_FRAME_COUNT,
	SUBZERO_BEING_THROWN_FRAME_COUNT,
	SUBZERO_HIT_LOW_FRAME_COUNT,
	SUBZERO_HIT_HIGH_FRAME_COUNT,
	SUBZERO_HIT_BACK_FRAME_COUNT,
	SUBZERO_HIT_UPPERCUT_FRAME_COUNT,
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKano2 = {
	KANO, P2_FIGHTER, BMPKANO,
	KANO_IDLE_FRAME_COUNT,
	KANO_DIZZY_FRAME_COUNT,
	KANO_WINS_FRAME_COUNT,
	KANO_SPECIAL_FRAME_COUNT,
	KANO_WALK_FRAME_COUNT,
	KANO_TURN_FRAME_COUNT,
	KANO_JUMP_FRAME_COUNT,
	KANO_JUMP_ROLL_FRAME_COUNT,
	KANO_DUCK_FRAME_COUNT,
	KANO_BLOCK_FRAME_COUNT,
	KANO_BLOCK_HIT_FRAME_COUNT,
	KANO_BLOCK_DUCK_FRAME_COUNT,
	KANO_BLOCK_DUCK_HIT_FRAME_COUNT,
	KANO_LOW_PUNCH_FRAME_COUNT,
	KANO_LOW_PUNCH_REPEAT_FRAME_COUNT,
	KANO_HIGH_PUNCH_FRAME_COUNT,
	KANO_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	KANO_LOW_KICK_FRAME_COUNT,
	KANO_HIGH_KICK_FRAME_COUNT,
	KANO_JUMP_PUNCH_FRAME_COUNT,
	KANO_JUMP_KICK_FRAME_COUNT,
	KANO_UPPERCUT_FRAME_COUNT,
	KANO_KIPUP_FRAME_COUNT,
	KANO_SWEEP_FRAME_COUNT,
	KANO_ROUNDHOUSE_FRAME_COUNT,
	KANO_BODY_PUNCH_FRAME_COUNT,
	KANO_BODY_KICK_FRAME_COUNT,
	KANO_DUCK_KICK_FRAME_COUNT,
	KANO_THROW_FRAME_COUNT,
	KANO_BEING_THROWN_FRAME_COUNT,
	KANO_HIT_LOW_FRAME_COUNT,
	KANO_HIT_HIGH_FRAME_COUNT,
	KANO_HIT_BACK_FRAME_COUNT,
	KANO_HIT_UPPERCUT_FRAME_COUNT,
	KANO_HIT_FALL_FRAME_COUNT,
	KANO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterCage2 = {
	CAGE, P2_FIGHTER, BMPCAGE,
	CAGE_IDLE_FRAME_COUNT,
	CAGE_DIZZY_FRAME_COUNT,
	CAGE_WINS_FRAME_COUNT,
	CAGE_SPECIAL_FRAME_COUNT,
	CAGE_WALK_FRAME_COUNT,
	CAGE_TURN_FRAME_COUNT,
	CAGE_JUMP_FRAME_COUNT,
	CAGE_JUMP_ROLL_FRAME_COUNT,
	CAGE_DUCK_FRAME_COUNT,
	CAGE_BLOCK_FRAME_COUNT,
	CAGE_BLOCK_HIT_FRAME_COUNT,
	CAGE_BLOCK_DUCK_FRAME_COUNT,
	CAGE_BLOCK_DUCK_HIT_FRAME_COUNT,
	CAGE_LOW_PUNCH_FRAME_COUNT,
	CAGE_LOW_PUNCH_REPEAT_FRAME_COUNT,
	CAGE_HIGH_PUNCH_FRAME_COUNT,
	CAGE_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	CAGE_LOW_KICK_FRAME_COUNT,
	CAGE_HIGH_KICK_FRAME_COUNT,
	CAGE_JUMP_PUNCH_FRAME_COUNT,
	CAGE_JUMP_KICK_FRAME_COUNT,
	CAGE_UPPERCUT_FRAME_COUNT,
	CAGE_KIPUP_FRAME_COUNT,
	CAGE_SWEEP_FRAME_COUNT,
	CAGE_ROUNDHOUSE_FRAME_COUNT,
	CAGE_BODY_PUNCH_FRAME_COUNT,
	CAGE_BODY_KICK_FRAME_COUNT,
	CAGE_DUCK_KICK_FRAME_COUNT,
	CAGE_THROW_FRAME_COUNT,
	CAGE_BEING_THROWN_FRAME_COUNT,
	CAGE_HIT_LOW_FRAME_COUNT,
	CAGE_HIT_HIGH_FRAME_COUNT,
	CAGE_HIT_BACK_FRAME_COUNT,
	CAGE_HIT_UPPERCUT_FRAME_COUNT,
	CAGE_HIT_FALL_FRAME_COUNT,
	CAGE_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKang2 = {
	KANG, P2_FIGHTER, BMPKANG,
	KANG_IDLE_FRAME_COUNT,
	KANG_DIZZY_FRAME_COUNT,
	KANG_WINS_FRAME_COUNT,
	KANG_SPECIAL_FRAME_COUNT,
	KANG_WALK_FRAME_COUNT,
	KANG_TURN_FRAME_COUNT,
	KANG_JUMP_FRAME_COUNT,
	KANG_JUMP_ROLL_FRAME_COUNT,
	KANG_DUCK_FRAME_COUNT,
	KANG_BLOCK_FRAME_COUNT,
	KANG_BLOCK_HIT_FRAME_COUNT,
	KANG_BLOCK_DUCK_FRAME_COUNT,
	KANG_BLOCK_DUCK_HIT_FRAME_COUNT,
	KANG_LOW_PUNCH_FRAME_COUNT,
	KANG_LOW_PUNCH_REPEAT_FRAME_COUNT,
	KANG_HIGH_PUNCH_FRAME_COUNT,
	KANG_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	KANG_LOW_KICK_FRAME_COUNT,
	KANG_HIGH_KICK_FRAME_COUNT,
	KANG_JUMP_PUNCH_FRAME_COUNT,
	KANG_JUMP_KICK_FRAME_COUNT,
	KANG_UPPERCUT_FRAME_COUNT,
	KANG_KIPUP_FRAME_COUNT,
	KANG_SWEEP_FRAME_COUNT,
	KANG_ROUNDHOUSE_FRAME_COUNT,
	KANG_BODY_PUNCH_FRAME_COUNT,
	KANG_BODY_KICK_FRAME_COUNT,
	KANG_DUCK_KICK_FRAME_COUNT,
	KANG_THROW_FRAME_COUNT,
	KANG_BEING_THROWN_FRAME_COUNT,
	KANG_HIT_LOW_FRAME_COUNT,
	KANG_HIT_HIGH_FRAME_COUNT,
	KANG_HIT_BACK_FRAME_COUNT,
	KANG_HIT_UPPERCUT_FRAME_COUNT,
	KANG_HIT_FALL_FRAME_COUNT,
	KANG_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterRaiden2 = {
	RAIDEN, P2_FIGHTER, BMPRAIDEN,
	RAIDEN_IDLE_FRAME_COUNT,
	RAIDEN_DIZZY_FRAME_COUNT,
	RAIDEN_WINS_FRAME_COUNT,
	RAIDEN_SPECIAL_FRAME_COUNT,
	RAIDEN_WALK_FRAME_COUNT,
	RAIDEN_TURN_FRAME_COUNT,
	RAIDEN_JUMP_FRAME_COUNT,
	RAIDEN_JUMP_ROLL_FRAME_COUNT,
	RAIDEN_DUCK_FRAME_COUNT,
	RAIDEN_BLOCK_FRAME_COUNT,
	RAIDEN_BLOCK_HIT_FRAME_COUNT,
	RAIDEN_BLOCK_DUCK_FRAME_COUNT,
	RAIDEN_BLOCK_DUCK_HIT_FRAME_COUNT,
	RAIDEN_LOW_PUNCH_FRAME_COUNT,
	RAIDEN_LOW_PUNCH_REPEAT_FRAME_COUNT,
	RAIDEN_HIGH_PUNCH_FRAME_COUNT,
	RAIDEN_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	RAIDEN_LOW_KICK_FRAME_COUNT,
	RAIDEN_HIGH_KICK_FRAME_COUNT,
	RAIDEN_JUMP_PUNCH_FRAME_COUNT,
	RAIDEN_JUMP_KICK_FRAME_COUNT,
	RAIDEN_UPPERCUT_FRAME_COUNT,
	RAIDEN_KIPUP_FRAME_COUNT,
	RAIDEN_SWEEP_FRAME_COUNT,
	RAIDEN_ROUNDHOUSE_FRAME_COUNT,
	RAIDEN_BODY_PUNCH_FRAME_COUNT,
	RAIDEN_BODY_KICK_FRAME_COUNT,
	RAIDEN_DUCK_KICK_FRAME_COUNT,
	RAIDEN_THROW_FRAME_COUNT,
	RAIDEN_BEING_THROWN_FRAME_COUNT,
	RAIDEN_HIT_LOW_FRAME_COUNT,
	RAIDEN_HIT_HIGH_FRAME_COUNT,
	RAIDEN_HIT_BACK_FRAME_COUNT,
	RAIDEN_HIT_UPPERCUT_FRAME_COUNT,
	RAIDEN_HIT_FALL_FRAME_COUNT,
	RAIDEN_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSubzero2 = {
	SUBZERO, P2_FIGHTER, BMPSUBZERO,
	SUBZERO_IDLE_FRAME_COUNT,
	SUBZERO_DIZZY_FRAME_COUNT,
	SUBZERO_WINS_FRAME_COUNT,
	SUBZERO_SPECIAL_FRAME_COUNT,
	SUBZERO_WALK_FRAME_COUNT,
	SUBZERO_TURN_FRAME_COUNT,
	SUBZERO_JUMP_FRAME_COUNT,
	SUBZERO_JUMP_ROLL_FRAME_COUNT,
	SUBZERO_DUCK_FRAME_COUNT,
	SUBZERO_BLOCK_FRAME_COUNT,
	SUBZERO_BLOCK_HIT_FRAME_COUNT,
	SUBZERO_BLOCK_DUCK_FRAME_COUNT,
	SUBZERO_BLOCK_DUCK_HIT_FRAME_COUNT,
	SUBZERO_LOW_PUNCH_FRAME_COUNT,
	SUBZERO_LOW_PUNCH_REPEAT_FRAME_COUNT,
	SUBZERO_HIGH_PUNCH_FRAME_COUNT,
	SUBZERO_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	SUBZERO_LOW_KICK_FRAME_COUNT,
	SUBZERO_HIGH_KICK_FRAME_COUNT,
	SUBZERO_JUMP_PUNCH_FRAME_COUNT,
	SUBZERO_JUMP_KICK_FRAME_COUNT,
	SUBZERO_UPPERCUT_FRAME_COUNT,
	SUBZERO_KIPUP_FRAME_COUNT,
	SUBZERO_SWEEP_FRAME_COUNT,
	SUBZERO_ROUNDHOUSE_FRAME_COUNT,
	SUBZERO_BODY_PUNCH_FRAME_COUNT,
	SUBZERO_BODY_KICK_FRAME_COUNT,
	SUBZERO_DUCK_KICK_FRAME_COUNT,
	SUBZERO_THROW_FRAME_COUNT,
	SUBZERO_BEING_THROWN_FRAME_COUNT,
	SUBZERO_HIT_LOW_FRAME_COUNT,
	SUBZERO_HIT_HIGH_FRAME_COUNT,
	SUBZERO_HIT_BACK_FRAME_COUNT,
	SUBZERO_HIT_UPPERCUT_FRAME_COUNT,
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSonya2 = {
	SONYA, P2_FIGHTER, BMPSONYA,
	SONYA_IDLE_FRAME_COUNT,
	SONYA_DIZZY_FRAME_COUNT,
	SONYA_WINS_FRAME_COUNT,
	SONYA_SPECIAL_FRAME_COUNT,
	SONYA_WALK_FRAME_COUNT,
	SONYA_TURN_FRAME_COUNT,
	SONYA_JUMP_FRAME_COUNT,
	SONYA_JUMP_ROLL_FRAME_COUNT,
	SONYA_DUCK_FRAME_COUNT,
	SONYA_BLOCK_FRAME_COUNT,
	SONYA_BLOCK_HIT_FRAME_COUNT,
	SONYA_BLOCK_DUCK_FRAME_COUNT,
	SONYA_BLOCK_DUCK_HIT_FRAME_COUNT,
	SONYA_LOW_PUNCH_FRAME_COUNT,
	SONYA_LOW_PUNCH_REPEAT_FRAME_COUNT,
	SONYA_HIGH_PUNCH_FRAME_COUNT,
	SONYA_HIGH_PUNCH_REPEAT_FRAME_COUNT,
	SONYA_LOW_KICK_FRAME_COUNT,
	SONYA_HIGH_KICK_FRAME_COUNT,
	SONYA_JUMP_PUNCH_FRAME_COUNT,
	SONYA_JUMP_KICK_FRAME_COUNT,
	SONYA_UPPERCUT_FRAME_COUNT,
	SONYA_KIPUP_FRAME_COUNT,
	SONYA_SWEEP_FRAME_COUNT,
	SONYA_ROUNDHOUSE_FRAME_COUNT,
	SONYA_BODY_PUNCH_FRAME_COUNT,
	SONYA_BODY_KICK_FRAME_COUNT,
	SONYA_DUCK_KICK_FRAME_COUNT,
	SONYA_THROW_FRAME_COUNT,
	SONYA_BEING_THROWN_FRAME_COUNT,
	SONYA_HIT_LOW_FRAME_COUNT,
	SONYA_HIT_HIGH_FRAME_COUNT,
	SONYA_HIT_BACK_FRAME_COUNT,
	SONYA_HIT_UPPERCUT_FRAME_COUNT,
	SONYA_HIT_FALL_FRAME_COUNT,
	SONYA_HIT_SWEEP_FRAME_COUNT
};

static LeaderboardEntry leaderboard[] = {
	{ "GAV", 16, 3356790 },
	{ "GNT", 10, 2023570 },
	{ "PKE", 9, 1257480 },
	{ "BOB", 9, 1098740 },
	{ "MJJ", 8, 949840 },
	{ "GUR", 8, 908470 },
	{ "C.N", 8, 901480 },
	{ "DEN", 7, 879800 },
	{ "JPG", 7, 824870 },
	{ "YES", 7, 748490 },
	{ "ARS", 6, 735840 },
	{ "NAJ", 6, 698070 },
	{ "WIT", 6, 679870 },
	{ "HOU", 5, 587800 },
	{ "RYU", 5, 578890 }
};

void basicmain()
{
	if (false)// (rapGDDetect != 1)
	{
		jsfSetFontSize(0);
		jsfSetFontIndx(0);
		rapLocate(20, 20);
		js_r_textbuffer = "GD Cart not detected!";
		rapPrint();
	}
	else
	{
		bool debugMode = false;
		pad1 = 0;
		pad2 = 0;
		int myTicks = 0;
		p1Cursor = 1;
		p2Cursor = 2;
		p1Selected = -1;
		p2Selected = -1;
		chooseFighterDone = false;
		bool roundFightSequenceComplete = false;
		short fightScale = 0;
		short barScale = 0;
		short barDirection = 1;
		p1FlashCount = 0;
		p2FlashCount = 0;
		struct Fighter* fighter1Ptr;
		struct Fighter* fighter2Ptr;
		struct SpriteAnimator* spriteAnimator1Ptr;
		struct SpriteAnimator* spriteAnimator2Ptr;
		short fighters1OffsetY = -134;
		short fighters2OffsetY = 134;		
		bool p1SelectedSpecial = false;
		bool p2SelectedSpecial = false;
		fmvIndex = 6;
		goroProfileShown = false;
		attractSlideIndex = 0;

		stateIdle.enter = &StateIdle_Enter;
		stateIdle.exit = &StateIdle_Exit;
		stateIdle.update = &StateIdle_Update;
		stateIdle.sleep = &StateIdle_Sleep;
		stateIdle.handleInput = &StateIdle_HandleInput;
		stateBlocking.enter = &StateBlocking_Enter;
		stateBlocking.exit = &StateBlocking_Exit;
		stateBlocking.update = &StateBlocking_Update;
		stateBlocking.sleep = &StateBlocking_Sleep;
		stateBlocking.handleInput = &StateBlocking_HandleInput;
		stateDucking.enter = &StateDucking_Enter;
		stateDucking.exit = &StateDucking_Exit;
		stateDucking.update = &StateDucking_Update;
		stateDucking.sleep = &StateDucking_Sleep;
		stateDucking.handleInput = &StateDucking_HandleInput;
		stateWalkingForward.enter = &StateWalkingForward_Enter;
		stateWalkingForward.exit = &StateWalkingForward_Exit;
		stateWalkingForward.update = &StateWalkingForward_Update;
		stateWalkingForward.sleep = &StateWalkingForward_Sleep;
		stateWalkingForward.handleInput = &StateWalkingForward_HandleInput;
		stateWalkingBackward.enter = &StateWalkingBackward_Enter;
		stateWalkingBackward.exit = &StateWalkingBackward_Exit;
		stateWalkingBackward.update = &StateWalkingBackward_Update;
		stateWalkingBackward.sleep = &StateWalkingBackward_Sleep;
		stateWalkingBackward.handleInput = &StateWalkingBackward_HandleInput;
		stateJumping.enter = &StateJumping_Enter;
		stateJumping.exit = &StateJumping_Exit;
		stateJumping.update = &StateJumping_Update;
		stateJumping.sleep = &StateJumping_Sleep;
		stateJumping.handleInput = &StateJumping_HandleInput;
		stateJumpingForward.enter = &StateJumpingForward_Enter;
		stateJumpingForward.exit = &StateJumpingForward_Exit;
		stateJumpingForward.update = &StateJumpingForward_Update;
		stateJumpingForward.sleep = &StateJumpingForward_Sleep;
		stateJumpingForward.handleInput = &StateJumpingForward_HandleInput;
		stateJumpingBackward.enter = &StateJumpingBackward_Enter;
		stateJumpingBackward.exit = &StateJumpingBackward_Exit;
		stateJumpingBackward.update = &StateJumpingBackward_Update;
		stateJumpingBackward.sleep = &StateJumpingBackward_Sleep;
		stateJumpingBackward.handleInput = &StateJumpingBackward_HandleInput;
		stateDuckBlocking.enter = &StateDuckBlocking_Enter;
		stateDuckBlocking.exit = &StateDuckBlocking_Exit;
		stateDuckBlocking.update = &StateDuckBlocking_Update;
		stateDuckBlocking.sleep = &StateDuckBlocking_Sleep;
		stateDuckBlocking.handleInput = &StateDuckBlocking_HandleInput;
		stateLowPunching.enter = &StateLowPunching_Enter;
		stateLowPunching.exit = &StateLowPunching_Exit;
		stateLowPunching.update = &StateLowPunching_Update;
		stateLowPunching.sleep = &StateLowPunching_Sleep;
		stateLowPunching.handleInput = &StateLowPunching_HandleInput;
		stateLowRepeatPunching.enter = &StateLowRepeatPunching_Enter;
		stateLowRepeatPunching.exit = &StateLowRepeatPunching_Exit;
		stateLowRepeatPunching.update = &StateLowRepeatPunching_Update;
		stateLowRepeatPunching.sleep = &StateLowRepeatPunching_Sleep;
		stateLowRepeatPunching.handleInput = &StateLowRepeatPunching_HandleInput;
		stateHighPunching.enter = &StateHighPunching_Enter;
		stateHighPunching.exit = &StateHighPunching_Exit;
		stateHighPunching.update = &StateHighPunching_Update;
		stateHighPunching.sleep = &StateHighPunching_Sleep;
		stateHighPunching.handleInput = &StateHighPunching_HandleInput;
		stateHighRepeatPunching.enter = &StateHighRepeatPunching_Enter;
		stateHighRepeatPunching.exit = &StateHighRepeatPunching_Exit;
		stateHighRepeatPunching.update = &StateHighRepeatPunching_Update;
		stateHighRepeatPunching.sleep = &StateHighRepeatPunching_Sleep;
		stateHighRepeatPunching.handleInput = &StateHighRepeatPunching_HandleInput;
		stateLowKicking.enter = &StateLowKicking_Enter;
		stateLowKicking.exit = &StateLowKicking_Exit;
		stateLowKicking.update = &StateLowKicking_Update;
		stateLowKicking.sleep = &StateLowKicking_Sleep;
		stateLowKicking.handleInput = &StateLowKicking_HandleInput;
		stateHighKicking.enter = &StateHighKicking_Enter;
		stateHighKicking.exit = &StateHighKicking_Exit;
		stateHighKicking.update = &StateHighKicking_Update;
		stateHighKicking.sleep = &StateHighKicking_Sleep;
		stateHighKicking.handleInput = &StateHighKicking_HandleInput;
		stateRoundhouseKicking.enter = &StateRoundhouseKicking_Enter;
		stateRoundhouseKicking.exit = &StateRoundhouseKicking_Exit;
		stateRoundhouseKicking.update = &StateRoundhouseKicking_Update;
		stateRoundhouseKicking.sleep = &StateRoundhouseKicking_Sleep;
		stateRoundhouseKicking.handleInput = &StateRoundhouseKicking_HandleInput;
		stateUppercutting.enter = &StateUppercutting_Enter;
		stateUppercutting.exit = &StateUppercutting_Exit;
		stateUppercutting.update = &StateUppercutting_Update;
		stateUppercutting.sleep = &StateUppercutting_Sleep;
		stateUppercutting.handleInput = &StateUppercutting_HandleInput;
		stateDuckKicking.enter = &StateDuckKicking_Enter;
		stateDuckKicking.exit = &StateDuckKicking_Exit;
		stateDuckKicking.update = &StateDuckKicking_Update;
		stateDuckKicking.sleep = &StateDuckKicking_Sleep;
		stateDuckKicking.handleInput = &StateDuckKicking_HandleInput;
		stateJumpPunching.enter = &StateJumpPunching_Enter;
		stateJumpPunching.exit = &StateJumpPunching_Exit;
		stateJumpPunching.update = &StateJumpPunching_Update;
		stateJumpPunching.sleep = &StateJumpPunching_Sleep;
		stateJumpPunching.handleInput = &StateJumpPunching_HandleInput;
		stateJumpKicking.enter = &StateJumpKicking_Enter;
		stateJumpKicking.exit = &StateJumpKicking_Exit;
		stateJumpKicking.update = &StateJumpKicking_Update;
		stateJumpKicking.sleep = &StateJumpKicking_Sleep;
		stateJumpKicking.handleInput = &StateJumpKicking_HandleInput;
		stateSweeping.enter = &StateSweeping_Enter;
		stateSweeping.exit = &StateSweeping_Exit;
		stateSweeping.update = &StateSweeping_Update;
		stateSweeping.sleep = &StateSweeping_Sleep;
		stateSweeping.handleInput = &StateSweeping_HandleInput;
		stateJumpingKickingForward.enter = &StateJumpingKickingForward_Enter;
		stateJumpingKickingForward.exit = &StateJumpingKickingForward_Exit;
		stateJumpingKickingForward.update = &StateJumpingKickingForward_Update;
		stateJumpingKickingForward.sleep = &StateJumpingKickingForward_Sleep;
		stateJumpingKickingForward.handleInput = &StateJumpingKickingForward_HandleInput;
		stateJumpingKickingBackward.enter = &StateJumpingKickingBackward_Enter;
		stateJumpingKickingBackward.exit = &StateJumpingKickingBackward_Exit;
		stateJumpingKickingBackward.update = &StateJumpingKickingBackward_Update;
		stateJumpingKickingBackward.sleep = &StateJumpingKickingBackward_Sleep;
		stateJumpingKickingBackward.handleInput = &StateJumpingKickingBackward_HandleInput;
		stateJumpingPunchingForward.enter = &StateJumpingPunchingForward_Enter;
		stateJumpingPunchingForward.exit = &StateJumpingPunchingForward_Exit;
		stateJumpingPunchingForward.update = &StateJumpingPunchingForward_Update;
		stateJumpingPunchingForward.sleep = &StateJumpingPunchingForward_Sleep;
		stateJumpingPunchingForward.handleInput = &StateJumpingPunchingForward_HandleInput;
		stateJumpingPunchingBackward.enter = &StateJumpingPunchingBackward_Enter;
		stateJumpingPunchingBackward.exit = &StateJumpingPunchingBackward_Exit;
		stateJumpingPunchingBackward.update = &StateJumpingPunchingBackward_Update;
		stateJumpingPunchingBackward.sleep = &StateJumpingPunchingBackward_Sleep;
		stateJumpingPunchingBackward.handleInput = &StateJumpingPunchingBackward_HandleInput;
		stateBodyPunching.enter = &StateBodyPunching_Enter;
		stateBodyPunching.exit = &StateBodyPunching_Exit;
		stateBodyPunching.update = &StateBodyPunching_Update;
		stateBodyPunching.sleep = &StateBodyPunching_Sleep;
		stateBodyPunching.handleInput = &StateBodyPunching_HandleInput;

		/////////////////////////////
		// DMG STATES
		stateHitLow.enter = &StateHitLow_Enter;
		stateHitLow.exit = &StateHitLow_Exit;
		stateHitLow.update = &StateHitLow_Update;
		stateHitLow.sleep = &StateHitLow_Sleep;
		stateHitLow.handleInput = &StateHitLow_HandleInput;
		stateHitHigh.enter = &StateHitHigh_Enter;
		stateHitHigh.exit = &StateHitHigh_Exit;
		stateHitHigh.update = &StateHitHigh_Update;
		stateHitHigh.sleep = &StateHitHigh_Sleep;
		stateHitHigh.handleInput = &StateHitHigh_HandleInput;
		stateHitSweep.enter = &StateHitSweep_Enter;
		stateHitSweep.exit = &StateHitSweep_Exit;
		stateHitSweep.update = &StateHitSweep_Update;
		stateHitSweep.sleep = &StateHitSweep_Sleep;
		stateHitSweep.handleInput = &StateHitSweep_HandleInput;
		stateGetUp.enter = &StateGetUp_Enter;
		stateGetUp.exit = &StateGetUp_Exit;
		stateGetUp.update = &StateGetUp_Update;
		stateGetUp.sleep = &StateGetUp_Sleep;
		stateGetUp.handleInput = &StateGetUp_HandleInput;
		stateHitBack.enter = &StateHitBack_Enter;
		stateHitBack.exit = &StateHitBack_Exit;
		stateHitBack.update = &StateHitBack_Update;
		stateHitBack.sleep = &StateHitBack_Sleep;
		stateHitBack.handleInput = &StateHitBack_HandleInput;
		stateHitBackLow.enter = &StateHitBackLow_Enter;
		stateHitBackLow.exit = &StateHitBackLow_Exit;
		stateHitBackLow.update = &StateHitBackLow_Update;
		stateHitBackLow.sleep = &StateHitBackLow_Sleep;
		stateHitBackLow.handleInput = &StateHitBackLow_HandleInput;
		stateHitUppercut.enter = &StateHitUppercut_Enter;
		stateHitUppercut.exit = &StateHitUppercut_Exit;
		stateHitUppercut.update = &StateHitUppercut_Update;
		stateHitUppercut.sleep = &StateHitUppercut_Sleep;
		stateHitUppercut.handleInput = &StateHitUppercut_HandleInput;
		stateLaydown.enter = &StateLaydown_Enter;
		stateLaydown.exit = &StateLaydown_Exit;
		stateLaydown.update = &StateLaydown_Update;
		stateLaydown.sleep = &StateLaydown_Sleep;
		stateLaydown.handleInput = &StateLaydown_HandleInput;
		stateHitDropKick.enter = &StateHitDropKick_Enter;
		stateHitDropKick.exit = &StateHitDropKick_Exit;
		stateHitDropKick.update = &StateHitDropKick_Update;
		stateHitDropKick.sleep = &StateHitDropKick_Sleep;
		stateHitDropKick.handleInput = &StateHitDropKick_HandleInput;
		stateHitAir.enter = &StateHitAir_Enter;
		stateHitAir.exit = &StateHitAir_Exit;
		stateHitAir.update = &StateHitAir_Update;
		stateHitAir.sleep = &StateHitAir_Sleep;
		stateHitAir.handleInput = &StateHitAir_HandleInput;
		stateHitBlocking.enter = &StateHitBlocking_Enter;
		stateHitBlocking.exit = &StateHitBlocking_Exit;
		stateHitBlocking.update = &StateHitBlocking_Update;
		stateHitBlocking.sleep = &StateHitBlocking_Sleep;
		stateHitBlocking.handleInput = &StateHitBlocking_HandleInput;
		stateHitDuckingBlocking.enter = &StateHitDuckingBlocking_Enter;
		stateHitDuckingBlocking.exit = &StateHitDuckingBlocking_Exit;
		stateHitDuckingBlocking.update = &StateHitDuckingBlocking_Update;
		stateHitDuckingBlocking.sleep = &StateHitDuckingBlocking_Sleep;
		stateHitDuckingBlocking.handleInput = &StateHitDuckingBlocking_HandleInput;
		stateHitBlockingKnockback.enter = &StateHitBlockingKnockback_Enter;
		stateHitBlockingKnockback.exit = &StateHitBlockingKnockback_Exit;
		stateHitBlockingKnockback.update = &StateHitBlockingKnockback_Update;
		stateHitBlockingKnockback.sleep = &StateHitBlockingKnockback_Sleep;
		stateHitBlockingKnockback.handleInput = &StateHitBlockingKnockback_HandleInput;
				
		stateMachineAdd(&fighter1StateMachine, STATE_IDLE, &stateIdle);
		stateMachineAdd(&fighter1StateMachine, STATE_BLOCKING, &stateBlocking);
		stateMachineAdd(&fighter1StateMachine, STATE_DUCKING, &stateDucking);
		stateMachineAdd(&fighter1StateMachine, STATE_WALKING_FORWARD, &stateWalkingForward);
		stateMachineAdd(&fighter1StateMachine, STATE_WALKING_BACKWARD, &stateWalkingBackward);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMPING, &stateJumping);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMPING_FORWARD, &stateJumpingForward);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMPING_BACKWARD, &stateJumpingBackward);
		stateMachineAdd(&fighter1StateMachine, STATE_DUCK_BLOCKING, &stateDuckBlocking);
		stateMachineAdd(&fighter1StateMachine, STATE_LOW_PUNCHING, &stateLowPunching);
		stateMachineAdd(&fighter1StateMachine, STATE_LOW_REPEAT_PUNCHING, &stateLowRepeatPunching);
		stateMachineAdd(&fighter1StateMachine, STATE_HIGH_PUNCHING, &stateHighPunching);
		stateMachineAdd(&fighter1StateMachine, STATE_HIGH_REPEAT_PUNCHING, &stateHighRepeatPunching);
		stateMachineAdd(&fighter1StateMachine, STATE_LOW_KICKING, &stateLowKicking);
		stateMachineAdd(&fighter1StateMachine, STATE_HIGH_KICKING, &stateHighKicking);
		stateMachineAdd(&fighter1StateMachine, STATE_ROUNDHOUSE_KICKING, &stateRoundhouseKicking);
		stateMachineAdd(&fighter1StateMachine, STATE_UPPERCUTTING, &stateUppercutting);
		stateMachineAdd(&fighter1StateMachine, STATE_DUCK_KICKING, &stateDuckKicking);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMP_PUNCHING, &stateJumpPunching);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMP_KICKING, &stateJumpKicking);
		stateMachineAdd(&fighter1StateMachine, STATE_SWEEPING, &stateSweeping);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMPING_KICKING_FORWARD, &stateJumpingKickingForward);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMPING_KICKING_BACKWARD, &stateJumpingKickingBackward);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMPING_PUNCHING_FORWARD, &stateJumpingPunchingForward);
		stateMachineAdd(&fighter1StateMachine, STATE_JUMPING_PUNCHING_BACKWARD, &stateJumpingPunchingBackward);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_LOW, &stateHitLow);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_HIGH, &stateHitHigh);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_SWEEP, &stateHitSweep);
		stateMachineAdd(&fighter1StateMachine, STATE_GETUP, &stateGetUp);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_BACK, &stateHitBack);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_BACK_LOW, &stateHitBackLow);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_UPPERCUT, &stateHitUppercut);
		stateMachineAdd(&fighter1StateMachine, STATE_LAYDOWN, &stateLaydown);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_DROPKICK, &stateHitDropKick);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_AIR, &stateHitAir);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_BLOCKING, &stateHitBlocking);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_DUCKING_BLOCKING, &stateHitDuckingBlocking);
		stateMachineAdd(&fighter1StateMachine, STATE_HIT_BLOCKING_KNOCKBACK, &stateHitBlockingKnockback);
		stateMachineAdd(&fighter1StateMachine, STATE_BODY_PUNCHING, &stateBodyPunching);

		stateMachineAdd(&fighter2StateMachine, STATE_IDLE, &stateIdle);
		stateMachineAdd(&fighter2StateMachine, STATE_BLOCKING, &stateBlocking);
		stateMachineAdd(&fighter2StateMachine, STATE_DUCKING, &stateDucking);
		stateMachineAdd(&fighter2StateMachine, STATE_WALKING_FORWARD, &stateWalkingForward);
		stateMachineAdd(&fighter2StateMachine, STATE_WALKING_BACKWARD, &stateWalkingBackward);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMPING, &stateJumping);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMPING_FORWARD, &stateJumpingForward);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMPING_BACKWARD, &stateJumpingBackward);
		stateMachineAdd(&fighter2StateMachine, STATE_DUCK_BLOCKING, &stateDuckBlocking);
		stateMachineAdd(&fighter2StateMachine, STATE_LOW_PUNCHING, &stateLowPunching);
		stateMachineAdd(&fighter2StateMachine, STATE_LOW_REPEAT_PUNCHING, &stateLowRepeatPunching);
		stateMachineAdd(&fighter2StateMachine, STATE_HIGH_PUNCHING, &stateHighPunching);
		stateMachineAdd(&fighter2StateMachine, STATE_HIGH_REPEAT_PUNCHING, &stateHighRepeatPunching);
		stateMachineAdd(&fighter2StateMachine, STATE_LOW_KICKING, &stateLowKicking);
		stateMachineAdd(&fighter2StateMachine, STATE_HIGH_KICKING, &stateHighKicking);
		stateMachineAdd(&fighter2StateMachine, STATE_ROUNDHOUSE_KICKING, &stateRoundhouseKicking);
		stateMachineAdd(&fighter2StateMachine, STATE_UPPERCUTTING, &stateUppercutting);
		stateMachineAdd(&fighter2StateMachine, STATE_DUCK_KICKING, &stateDuckKicking);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMP_PUNCHING, &stateJumpPunching);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMP_KICKING, &stateJumpKicking);
		stateMachineAdd(&fighter2StateMachine, STATE_SWEEPING, &stateSweeping);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMPING_KICKING_FORWARD, &stateJumpingKickingForward);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMPING_KICKING_BACKWARD, &stateJumpingKickingBackward);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMPING_PUNCHING_FORWARD, &stateJumpingPunchingForward);
		stateMachineAdd(&fighter2StateMachine, STATE_JUMPING_PUNCHING_BACKWARD, &stateJumpingPunchingBackward);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_LOW, &stateHitLow);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_HIGH, &stateHitHigh);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_SWEEP, &stateHitSweep);
		stateMachineAdd(&fighter2StateMachine, STATE_GETUP, &stateGetUp);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_BACK, &stateHitBack);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_BACK_LOW, &stateHitBackLow);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_UPPERCUT, &stateHitUppercut);
		stateMachineAdd(&fighter2StateMachine, STATE_LAYDOWN, &stateLaydown);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_DROPKICK, &stateHitDropKick);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_AIR, &stateHitAir);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_BLOCKING, &stateHitBlocking);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_DUCKING_BLOCKING, &stateHitDuckingBlocking);
		stateMachineAdd(&fighter2StateMachine, STATE_HIT_BLOCKING_KNOCKBACK, &stateHitBlockingKnockback);
		stateMachineAdd(&fighter2StateMachine, STATE_BODY_PUNCHING, &stateBodyPunching);

		fighterCage.spriteAnimator = &cageAnimator;
		fighterCage.impactFrameLowRepeatPunch = &cageImpactFrameLowRepeatPunch;
		fighterCage.impactFrameHighRepeatPunch = &cageImpactFrameHighRepeatPunch;
		fighterCage.projectileAnimator = &lightningAnimator;
		fighterCage.projectileFrames = &projectileGreenBoltFrames;
		fighterCage.projectileEndFrames = &projectileGreenBoltEndFrames;
		fighterCage.special1Inputs = &specials_Cage_GreenBolt_Inputs;
		fighterCage.special2Inputs = &specials_Cage_ShadowKick_Inputs;
		fighterCage.special3Inputs = &specials_Cage_NutPunch_Inputs;
		fighterCage.special1InputCount = 3;
		fighterCage.special2InputCount = 3;
		fighterCage.special3InputCount = 1;
		fighterCage.special1Frames = &cageGreenBoltFrames;
		fighterCage.doSpecialMove1 = &doSpecial_Cage_GreenBolt;
		fighterCage.idleFrames = &cageIdleFrames;
		fighterCage.dizzyFrames = &cageDizzyFrames;
		fighterCage.winsFrames = &cageWinsFrames;
		fighterCage.specialFrames = &cageSpecialFrames;
		fighterCage.walkFrames = &cageWalkFrames;
		fighterCage.turnFrames = &cageTurnFrames;
		fighterCage.jumpFrames = &cageJumpFrames;
		fighterCage.jumpRollFrames = &cageJumpRollFrames;
		fighterCage.duckFrames = &cageDuckFrames;
		fighterCage.blockFrames = &cageBlockFrames;
		fighterCage.blockHitFrames = &cageBlockHitFrames;
		fighterCage.blockDuckFrames = &cageBlockDuckFrames;
		fighterCage.blockDuckHitFrames = &cageBlockDuckHitFrames;
		fighterCage.punchLowFrames = &cagePunchLowFrames;
		fighterCage.punchLowRepeatFrames = &cagePunchLowRepeatFrames;
		fighterCage.punchHighFrames = &cagePunchHighFrames;
		fighterCage.punchHighRepeatFrames = &cagePunchHighRepeatFrames;
		fighterCage.kickLowFrames = &cageKickLowFrames;
		fighterCage.kickHighFrames = &cageKickHighFrames;
		fighterCage.jumpPunchFrames = &cageJumpPunchFrames;
		fighterCage.jumpKickFrames = &cageJumpKickFrames;
		fighterCage.jumpDropKickFrames = &cageJumpDropKickFrames;
		fighterCage.uppercutFrames = &cageUppercutFrames;
		fighterCage.hitLowFrames = &cageHitLowFrames;
		fighterCage.hitHighFrames = &cageHitHighFrames;
		fighterCage.hitBackFrames = &cageHitBackFrames;
		fighterCage.hitUppercutFrames = &cageHitUppercutFrames;
		fighterCage.hitFallFrames = &cageHitFallFrames;
		fighterCage.hitSweepFrames = &cageHitSweepFrames;
		fighterCage.kipUpFrames = &cageKipUpFrames;
		fighterCage.sweepFrames = &cageSweepFrames;
		fighterCage.roundhouseFrames = &cageRoundhouseFrames;
		fighterCage.bodyPunchFrames = &cageBodyPunchFrames;
		fighterCage.bodyKickFrames = &cageBodyKickFrames;
		fighterCage.duckKickFrames = &cageDuckKickFrames;
		fighterCage.throwFrames = &cageThrowFrames;
		fighterCage.beingThrownFrames = &cageBeingThrownFrames;
		fighterCage.beingThrownLowFrames = &cageBeingThrownLowFrames;
		fighterCage2.spriteAnimator = &cageAnimator2;
		fighterCage2.impactFrameLowRepeatPunch = &cageImpactFrameLowRepeatPunch;
		fighterCage2.impactFrameHighRepeatPunch = &cageImpactFrameHighRepeatPunch;
		fighterCage2.projectileAnimator = &lightningAnimator;
		fighterCage2.projectileFrames = &projectileGreenBoltFrames;
		fighterCage2.projectileEndFrames = &projectileGreenBoltEndFrames;
		fighterCage2.special1Inputs = &specials_Cage_GreenBolt_Inputs;
		fighterCage2.special2Inputs = &specials_Cage_ShadowKick_Inputs;
		fighterCage2.special3Inputs = &specials_Cage_NutPunch_Inputs;
		fighterCage2.special1InputCount = 3;
		fighterCage2.special2InputCount = 3;
		fighterCage2.special3InputCount = 1;
		fighterCage2.special1Frames = &cageGreenBoltFrames;
		fighterCage2.doSpecialMove1 = &doSpecial_Cage_GreenBolt;
		fighterCage2.idleFrames = &cageIdleFrames;
		fighterCage2.dizzyFrames = &cageDizzyFrames;
		fighterCage2.winsFrames = &cageWinsFrames;
		fighterCage2.specialFrames = &cageSpecialFrames;
		fighterCage2.walkFrames = &cageWalkFrames;
		fighterCage2.turnFrames = &cageTurnFrames;
		fighterCage2.jumpFrames = &cageJumpFrames;
		fighterCage2.jumpRollFrames = &cageJumpRollFrames;
		fighterCage2.duckFrames = &cageDuckFrames;
		fighterCage2.blockFrames = &cageBlockFrames;
		fighterCage2.blockHitFrames = &cageBlockHitFrames;
		fighterCage2.blockDuckFrames = &cageBlockDuckFrames;
		fighterCage2.blockDuckHitFrames = &cageBlockDuckHitFrames;
		fighterCage2.punchLowFrames = &cagePunchLowFrames;
		fighterCage2.punchLowRepeatFrames = &cagePunchLowRepeatFrames;
		fighterCage2.punchHighFrames = &cagePunchHighFrames;
		fighterCage2.punchHighRepeatFrames = &cagePunchHighRepeatFrames;
		fighterCage2.kickLowFrames = &cageKickLowFrames;
		fighterCage2.kickHighFrames = &cageKickHighFrames;
		fighterCage2.jumpPunchFrames = &cageJumpPunchFrames;
		fighterCage2.jumpKickFrames = &cageJumpKickFrames;
		fighterCage2.jumpDropKickFrames = &cageJumpDropKickFrames;
		fighterCage2.uppercutFrames = &cageUppercutFrames;
		fighterCage2.hitLowFrames = &cageHitLowFrames;
		fighterCage2.hitHighFrames = &cageHitHighFrames;
		fighterCage2.hitBackFrames = &cageHitBackFrames;
		fighterCage2.hitUppercutFrames = &cageHitUppercutFrames;
		fighterCage2.hitFallFrames = &cageHitFallFrames;
		fighterCage2.hitSweepFrames = &cageHitSweepFrames;
		fighterCage2.kipUpFrames = &cageKipUpFrames;
		fighterCage2.sweepFrames = &cageSweepFrames;
		fighterCage2.roundhouseFrames = &cageRoundhouseFrames;
		fighterCage2.bodyPunchFrames = &cageBodyPunchFrames;
		fighterCage2.bodyKickFrames = &cageBodyKickFrames;
		fighterCage2.duckKickFrames = &cageDuckKickFrames;
		fighterCage2.throwFrames = &cageThrowFrames;
		fighterCage2.beingThrownFrames = &cageBeingThrownFrames;
		fighterCage2.beingThrownLowFrames = &cageBeingThrownLowFrames;
		//Kano
		fighterKano.spriteAnimator = &kanoAnimator;
		fighterKano.projectileAnimator = &lightningAnimator;
		fighterKano.projectileFrames = &projectileKnifeFrames;
		fighterKano.projectileEndFrames = &projectileKnifeEndFrames;
		fighterKano.special1Inputs = &specials_Kano_Knife_Inputs;
		fighterKano.special2Inputs = &specials_Kano_CannonBall_Inputs;
		fighterKano.special1InputCount = 2;
		fighterKano.special2InputCount = 4;
		fighterKano.special3InputCount = 1;
		fighterKano.special1Frames = &kanoKnifeFrames;
		fighterKano.doSpecialMove1 = &doSpecial_Kano_Knife;
		fighterKano.idleFrames = &kanoIdleFrames;
		fighterKano.dizzyFrames = &kanoDizzyFrames;
		fighterKano.winsFrames = &kanoWinsFrames;
		fighterKano.specialFrames = &kanoSpecialFrames;
		fighterKano.walkFrames = &kanoWalkFrames;
		fighterKano.turnFrames = &kanoTurnFrames;
		fighterKano.jumpFrames = &kanoJumpFrames;
		fighterKano.jumpRollFrames = &kanoJumpRollFrames;
		fighterKano.duckFrames = &kanoDuckFrames;
		fighterKano.blockFrames = &kanoBlockFrames;
		fighterKano.blockHitFrames = &kanoBlockHitFrames;
		fighterKano.blockDuckFrames = &kanoBlockDuckFrames;
		fighterKano.blockDuckHitFrames = &kanoBlockDuckHitFrames;
		fighterKano.punchLowFrames = &kanoPunchLowFrames;
		fighterKano.punchLowRepeatFrames = &kanoPunchLowRepeatFrames;
		fighterKano.punchHighFrames = &kanoPunchHighFrames;
		fighterKano.punchHighRepeatFrames = &kanoPunchHighRepeatFrames;
		fighterKano.kickLowFrames = &kanoKickLowFrames;
		fighterKano.kickHighFrames = &kanoKickHighFrames;
		fighterKano.jumpPunchFrames = &kanoJumpPunchFrames;
		fighterKano.jumpKickFrames = &kanoJumpKickFrames;
		fighterKano.jumpDropKickFrames = &kanoJumpDropKickFrames;
		fighterKano.uppercutFrames = &kanoUppercutFrames;
		fighterKano.sweepFrames = &kanoSweepFrames;
		fighterKano.roundhouseFrames = &kanoRoundhouseFrames;
		fighterKano.bodyPunchFrames = &kanoBodyPunchFrames;
		fighterKano.bodyKickFrames = &kanoBodyKickFrames;
		fighterKano.duckKickFrames = &kanoDuckKickFrames;
		fighterKano.throwFrames = &kanoThrowFrames;
		fighterKano.beingThrownFrames = &kanoBeingThrownFrames;
		fighterKano.beingThrownLowFrames = &kanoBeingThrownLowFrames;
		fighterKano.hitLowFrames = &kanoHitLowFrames;
		fighterKano.hitHighFrames = &kanoHitHighFrames;
		fighterKano.hitBackFrames = &kanoHitBackFrames;
		fighterKano.hitUppercutFrames = &kanoHitUppercutFrames;
		fighterKano.hitFallFrames = &kanoHitFallFrames;
		fighterKano.hitSweepFrames = &kanoHitSweepFrames;
		fighterKano.kipUpFrames = &kanoKipUpFrames;
		fighterKano2.spriteAnimator = &kanoAnimator2;
		fighterKano2.projectileAnimator = &lightningAnimator;
		fighterKano2.projectileFrames = &projectileKnifeFrames;
		fighterKano2.projectileEndFrames = &projectileKnifeEndFrames;
		fighterKano2.special1Inputs = &specials_Kano_Knife_Inputs;
		fighterKano2.special2Inputs = &specials_Kano_CannonBall_Inputs;
		fighterKano2.special1InputCount = 2;
		fighterKano2.special2InputCount = 4;
		fighterKano2.special3InputCount = 1;
		fighterKano2.special1Frames = &kanoKnifeFrames;
		fighterKano2.doSpecialMove1 = &doSpecial_Kano_Knife;
		fighterKano2.idleFrames = &kanoIdleFrames;
		fighterKano2.dizzyFrames = &kanoDizzyFrames;
		fighterKano2.winsFrames = &kanoWinsFrames;
		fighterKano2.specialFrames = &kanoSpecialFrames;
		fighterKano2.walkFrames = &kanoWalkFrames;
		fighterKano2.turnFrames = &kanoTurnFrames;
		fighterKano2.jumpFrames = &kanoJumpFrames;
		fighterKano2.jumpRollFrames = &kanoJumpRollFrames;
		fighterKano2.duckFrames = &kanoDuckFrames;
		fighterKano2.blockFrames = &kanoBlockFrames;
		fighterKano2.blockHitFrames = &kanoBlockHitFrames;
		fighterKano2.blockDuckFrames = &kanoBlockDuckFrames;
		fighterKano2.blockDuckHitFrames = &kanoBlockDuckHitFrames;
		fighterKano2.punchLowFrames = &kanoPunchLowFrames;
		fighterKano2.punchLowRepeatFrames = &kanoPunchLowRepeatFrames;
		fighterKano2.punchHighFrames = &kanoPunchHighFrames;
		fighterKano2.punchHighRepeatFrames = &kanoPunchHighRepeatFrames;
		fighterKano2.kickLowFrames = &kanoKickLowFrames;
		fighterKano2.kickHighFrames = &kanoKickHighFrames;
		fighterKano2.jumpPunchFrames = &kanoJumpPunchFrames;
		fighterKano2.jumpKickFrames = &kanoJumpKickFrames;
		fighterKano2.jumpDropKickFrames = &kanoJumpDropKickFrames;
		fighterKano2.uppercutFrames = &kanoUppercutFrames;
		fighterKano2.sweepFrames = &kanoSweepFrames;
		fighterKano2.roundhouseFrames = &kanoRoundhouseFrames;
		fighterKano2.bodyPunchFrames = &kanoBodyPunchFrames;
		fighterKano2.bodyKickFrames = &kanoBodyKickFrames;
		fighterKano2.duckKickFrames = &kanoDuckKickFrames;
		fighterKano2.throwFrames = &kanoThrowFrames;
		fighterKano2.beingThrownFrames = &kanoBeingThrownFrames;
		fighterKano2.beingThrownLowFrames = &kanoBeingThrownLowFrames;
		fighterKano2.hitLowFrames = &kanoHitLowFrames;
		fighterKano2.hitHighFrames = &kanoHitHighFrames;
		fighterKano2.hitBackFrames = &kanoHitBackFrames;
		fighterKano2.hitUppercutFrames = &kanoHitUppercutFrames;
		fighterKano2.hitFallFrames = &kanoHitFallFrames;
		fighterKano2.hitSweepFrames = &kanoHitSweepFrames;
		fighterKano2.kipUpFrames = &kanoKipUpFrames;
		//Raide
		fighterRaiden.spriteAnimator = &raidenAnimator;
		fighterRaiden.projectileAnimator = &lightningAnimator;
		fighterRaiden.projectileFrames = &projectileLightningFrames;
		fighterRaiden.projectileEndFrames = &projectileLightningEndFrames;
		fighterRaiden.special1Inputs = &specials_Raiden_Lightning_Inputs;
		fighterRaiden.special2Inputs = &specials_Raiden_Torpedo_Inputs;
		fighterRaiden.special1InputCount = 3;
		fighterRaiden.special2InputCount = 3;
		fighterRaiden.special3InputCount = 1;
		fighterRaiden.special1Frames = &raidenLightningFrames;
		fighterRaiden.doSpecialMove1 = &doSpecial_Raiden_Lightning;
		fighterRaiden.idleFrames = &raidenIdleFrames;
		fighterRaiden.dizzyFrames = &raidenDizzyFrames;
		fighterRaiden.winsFrames = &raidenWinsFrames;
		fighterRaiden.specialFrames = &raidenSpecialFrames;
		fighterRaiden.walkFrames = &raidenWalkFrames;
		fighterRaiden.turnFrames = &raidenTurnFrames;
		fighterRaiden.jumpFrames = &raidenJumpFrames;
		fighterRaiden.jumpRollFrames = &raidenJumpRollFrames;
		fighterRaiden.duckFrames = &raidenDuckFrames;
		fighterRaiden.blockFrames = &raidenBlockFrames;
		fighterRaiden.blockHitFrames = &raidenBlockHitFrames;
		fighterRaiden.blockDuckFrames = &raidenBlockDuckFrames;
		fighterRaiden.blockDuckHitFrames = &raidenBlockDuckHitFrames;
		fighterRaiden.punchLowFrames = &raidenPunchLowFrames;
		fighterRaiden.punchLowRepeatFrames = &raidenPunchLowRepeatFrames;
		fighterRaiden.punchHighFrames = &raidenPunchHighFrames;
		fighterRaiden.punchHighRepeatFrames = &raidenPunchHighRepeatFrames;
		fighterRaiden.kickLowFrames = &raidenKickLowFrames;
		fighterRaiden.kickHighFrames = &raidenKickHighFrames;
		fighterRaiden.jumpPunchFrames = &raidenJumpPunchFrames;
		fighterRaiden.jumpKickFrames = &raidenJumpKickFrames;
		fighterRaiden.jumpDropKickFrames = &raidenJumpDropKickFrames;
		fighterRaiden.uppercutFrames = &raidenUppercutFrames;
		fighterRaiden.sweepFrames = &raidenSweepFrames;
		fighterRaiden.roundhouseFrames = &raidenRoundhouseFrames;
		fighterRaiden.bodyPunchFrames = &raidenBodyPunchFrames;
		fighterRaiden.bodyKickFrames = &raidenBodyKickFrames;
		fighterRaiden.duckKickFrames = &raidenDuckKickFrames;
		fighterRaiden.throwFrames = &raidenThrowFrames;
		fighterRaiden.beingThrownFrames = &raidenBeingThrownFrames;
		fighterRaiden.beingThrownLowFrames = &raidenBeingThrownLowFrames;
		fighterRaiden.kipUpFrames = &raidenKipUpFrames;
		fighterRaiden.hitLowFrames = &raidenHitLowFrames;
		fighterRaiden.hitHighFrames = &raidenHitHighFrames;
		fighterRaiden.hitBackFrames = &raidenHitBackFrames;
		fighterRaiden.hitUppercutFrames = &raidenHitUppercutFrames;
		fighterRaiden.hitFallFrames = &raidenHitFallFrames;
		fighterRaiden.hitSweepFrames = &raidenHitSweepFrames;
		fighterRaiden2.spriteAnimator = &raidenAnimator2;
		fighterRaiden2.projectileAnimator = &lightningAnimator;
		fighterRaiden2.projectileFrames = &projectileLightningFrames;
		fighterRaiden2.projectileEndFrames = &projectileLightningEndFrames;
		fighterRaiden2.special1Inputs = &specials_Raiden_Lightning_Inputs;
		fighterRaiden2.special2Inputs = &specials_Raiden_Torpedo_Inputs;
		fighterRaiden2.special1InputCount = 3;
		fighterRaiden2.special2InputCount = 3;
		fighterRaiden2.special3InputCount = 1;
		fighterRaiden2.special1Frames = &raidenLightningFrames;
		fighterRaiden2.doSpecialMove1 = &doSpecial_Raiden_Lightning;
		fighterRaiden2.idleFrames = &raidenIdleFrames;
		fighterRaiden2.dizzyFrames = &raidenDizzyFrames;
		fighterRaiden2.winsFrames = &raidenWinsFrames;
		fighterRaiden2.specialFrames = &raidenSpecialFrames;
		fighterRaiden2.walkFrames = &raidenWalkFrames;
		fighterRaiden2.turnFrames = &raidenTurnFrames;
		fighterRaiden2.jumpFrames = &raidenJumpFrames;
		fighterRaiden2.jumpRollFrames = &raidenJumpRollFrames;
		fighterRaiden2.duckFrames = &raidenDuckFrames;
		fighterRaiden2.blockFrames = &raidenBlockFrames;
		fighterRaiden2.blockHitFrames = &raidenBlockHitFrames;
		fighterRaiden2.blockDuckFrames = &raidenBlockDuckFrames;
		fighterRaiden2.blockDuckHitFrames = &raidenBlockDuckHitFrames;
		fighterRaiden2.punchLowFrames = &raidenPunchLowFrames;
		fighterRaiden2.punchLowRepeatFrames = &raidenPunchLowRepeatFrames;
		fighterRaiden2.punchHighFrames = &raidenPunchHighFrames;
		fighterRaiden2.punchHighRepeatFrames = &raidenPunchHighRepeatFrames;
		fighterRaiden2.kickLowFrames = &raidenKickLowFrames;
		fighterRaiden2.kickHighFrames = &raidenKickHighFrames;
		fighterRaiden2.jumpPunchFrames = &raidenJumpPunchFrames;
		fighterRaiden2.jumpKickFrames = &raidenJumpKickFrames;
		fighterRaiden2.jumpDropKickFrames = &raidenJumpDropKickFrames;
		fighterRaiden2.uppercutFrames = &raidenUppercutFrames;
		fighterRaiden2.sweepFrames = &raidenSweepFrames;
		fighterRaiden2.roundhouseFrames = &raidenRoundhouseFrames;
		fighterRaiden2.bodyPunchFrames = &raidenBodyPunchFrames;
		fighterRaiden2.bodyKickFrames = &raidenBodyKickFrames;
		fighterRaiden2.duckKickFrames = &raidenDuckKickFrames;
		fighterRaiden2.throwFrames = &raidenThrowFrames;
		fighterRaiden2.beingThrownFrames = &raidenBeingThrownFrames;
		fighterRaiden2.beingThrownLowFrames = &raidenBeingThrownLowFrames;
		fighterRaiden2.kipUpFrames = &raidenKipUpFrames;
		fighterRaiden2.hitLowFrames = &raidenHitLowFrames;
		fighterRaiden2.hitHighFrames = &raidenHitHighFrames;
		fighterRaiden2.hitBackFrames = &raidenHitBackFrames;
		fighterRaiden2.hitUppercutFrames = &raidenHitUppercutFrames;
		fighterRaiden2.hitFallFrames = &raidenHitFallFrames;
		fighterRaiden2.hitSweepFrames = &raidenHitSweepFrames;
		//Liu Kang
		fighterKang.spriteAnimator = &kangAnimator;
		fighterKang.projectileAnimator = &lightningAnimator;
		fighterKang.projectileFrames = &projectileFireballFrames;
		fighterKang.projectileEndFrames = &projectileFireballEndFrames;
		fighterKang.special1Inputs = &specials_Kang_Fireball_Inputs;
		fighterKang.special2Inputs = &specials_Kang_FlyingKick_Inputs;
		fighterKang.special3Inputs = &specials_FIGHTER_NONE_Inputs;
		fighterKang.special1InputCount = 3;
		fighterKang.special2InputCount = 3;
		fighterKang.special3InputCount = 1;
		fighterKang.special1Frames = &kangFireballFrames;
		fighterKang.doSpecialMove1 = &doSpecial_Kang_Fireball;
		fighterKang.idleFrames = &kangIdleFrames;
		fighterKang.dizzyFrames = &kangDizzyFrames;
		fighterKang.winsFrames = &kangWinsFrames;
		fighterKang.specialFrames = &kangSpecialFrames;
		fighterKang.walkFrames = &kangWalkFrames;
		fighterKang.turnFrames = &kangTurnFrames;
		fighterKang.jumpFrames = &kangJumpFrames;
		fighterKang.jumpRollFrames = &kangJumpRollFrames;
		fighterKang.duckFrames = &kangDuckFrames;
		fighterKang.blockFrames = &kangBlockFrames;
		fighterKang.blockHitFrames = &kangBlockHitFrames;
		fighterKang.blockDuckFrames = &kangBlockDuckFrames;
		fighterKang.blockDuckHitFrames = &kangBlockDuckHitFrames;
		fighterKang.punchLowFrames = &kangPunchLowFrames;
		fighterKang.punchLowRepeatFrames = &kangPunchLowRepeatFrames;
		fighterKang.punchHighFrames = &kangPunchHighFrames;
		fighterKang.punchHighRepeatFrames = &kangPunchHighRepeatFrames;
		fighterKang.kickLowFrames = &kangKickLowFrames;
		fighterKang.kickHighFrames = &kangKickHighFrames;
		fighterKang.jumpPunchFrames = &kangJumpPunchFrames;
		fighterKang.jumpKickFrames = &kangJumpKickFrames;
		fighterKang.jumpDropKickFrames = &kangJumpDropKickFrames;
		fighterKang.uppercutFrames = &kangUppercutFrames;
		fighterKang.kipUpFrames = &kangKipUpFrames;
		fighterKang.sweepFrames = &kangSweepFrames;
		fighterKang.roundhouseFrames = &kangRoundhouseFrames;
		fighterKang.bodyPunchFrames = &kangBodyPunchFrames;
		fighterKang.bodyKickFrames = &kangBodyKickFrames;
		fighterKang.duckKickFrames = &kangDuckKickFrames;
		fighterKang.throwFrames = &kangThrowFrames;
		fighterKang.beingThrownFrames = &kangBeingThrownFrames;
		fighterKang.beingThrownLowFrames = &kangBeingThrownLowFrames;
		fighterKang.hitLowFrames = &kangHitLowFrames;
		fighterKang.hitHighFrames = &kangHitHighFrames;
		fighterKang.hitBackFrames = &kangHitBackFrames;
		fighterKang.hitUppercutFrames = &kangHitUppercutFrames;
		fighterKang.hitFallFrames = &kangHitFallFrames;
		fighterKang.hitSweepFrames = &kangHitSweepFrames;
		fighterKang2.spriteAnimator = &kangAnimator2;
		fighterKang2.projectileAnimator = &lightningAnimator;
		fighterKang2.projectileFrames = &projectileFireballFrames;
		fighterKang2.projectileEndFrames = &projectileFireballEndFrames;
		fighterKang2.special1Inputs = &specials_Kang_Fireball_Inputs;
		fighterKang2.special2Inputs = &specials_Kang_FlyingKick_Inputs;
		fighterKang2.special3Inputs = &specials_FIGHTER_NONE_Inputs;
		fighterKang2.special1InputCount = 3;
		fighterKang2.special2InputCount = 3;
		fighterKang2.special3InputCount = 1;
		fighterKang2.special1Frames = &kangFireballFrames;
		fighterKang2.doSpecialMove1 = &doSpecial_Kang_Fireball;
		fighterKang2.idleFrames = &kangIdleFrames;
		fighterKang2.dizzyFrames = &kangDizzyFrames;
		fighterKang2.winsFrames = &kangWinsFrames;
		fighterKang2.specialFrames = &kangSpecialFrames;
		fighterKang2.walkFrames = &kangWalkFrames;
		fighterKang2.turnFrames = &kangTurnFrames;
		fighterKang2.jumpFrames = &kangJumpFrames;
		fighterKang2.jumpRollFrames = &kangJumpRollFrames;
		fighterKang2.duckFrames = &kangDuckFrames;
		fighterKang2.blockFrames = &kangBlockFrames;
		fighterKang2.blockHitFrames = &kangBlockHitFrames;
		fighterKang2.blockDuckFrames = &kangBlockDuckFrames;
		fighterKang2.blockDuckHitFrames = &kangBlockDuckHitFrames;
		fighterKang2.punchLowFrames = &kangPunchLowFrames;
		fighterKang2.punchLowRepeatFrames = &kangPunchLowRepeatFrames;
		fighterKang2.punchHighFrames = &kangPunchHighFrames;
		fighterKang2.punchHighRepeatFrames = &kangPunchHighRepeatFrames;
		fighterKang2.kickLowFrames = &kangKickLowFrames;
		fighterKang2.kickHighFrames = &kangKickHighFrames;
		fighterKang2.jumpKickFrames = &kangJumpKickFrames;
		fighterKang2.jumpDropKickFrames = &kangJumpDropKickFrames;
		fighterKang2.uppercutFrames = &kangUppercutFrames;
		fighterKang2.uppercutFrames = &kangUppercutFrames;
		fighterKang2.kipUpFrames = &kangKipUpFrames;
		fighterKang2.sweepFrames = &kangSweepFrames;
		fighterKang2.roundhouseFrames = &kangRoundhouseFrames;
		fighterKang2.bodyPunchFrames = &kangBodyPunchFrames;
		fighterKang2.bodyKickFrames = &kangBodyKickFrames;
		fighterKang2.duckKickFrames = &kangDuckKickFrames;
		fighterKang2.throwFrames = &kangThrowFrames;
		fighterKang2.beingThrownFrames = &kangBeingThrownFrames;
		fighterKang2.beingThrownLowFrames = &kangBeingThrownLowFrames;
		fighterKang2.hitLowFrames = &kangHitLowFrames;
		fighterKang2.hitHighFrames = &kangHitHighFrames;
		fighterKang2.hitBackFrames = &kangHitBackFrames;
		fighterKang2.hitUppercutFrames = &kangHitUppercutFrames;
		fighterKang2.hitFallFrames = &kangHitFallFrames;
		fighterKang2.hitSweepFrames = &kangHitSweepFrames;
		//Scorpion
		fighterScorpion.spriteAnimator = &scorpionAnimator;
		fighterScorpion.projectileAnimator = &lightningAnimator;
		fighterScorpion.projectileFrames = &projectileHarpoonFrames;
		fighterScorpion.projectileEndFrames = &projectileHarpoonEndFrames;
		fighterScorpion.special1Inputs = &specials_Scorpion_Harpoon_Inputs;
		fighterScorpion.special2Inputs = &specials_Scorpion_Teleport_Inputs;
		fighterScorpion.special3Inputs = &specials_FIGHTER_NONE_Inputs;
		fighterScorpion.special1InputCount = 3;
		fighterScorpion.special2InputCount = 3;
		fighterScorpion.special3InputCount = 1;
		fighterScorpion.special1Frames = &scorpionHarpoonFrames;
		fighterScorpion.special1EndFrames = &scorpionHarpoonEndFrames;
		fighterScorpion.doSpecialMove1 = &doSpecial_Scorpion_Harpoon;
		fighterScorpion.idleFrames = &scorpionIdleFrames;
		fighterScorpion.dizzyFrames = &subzeroDizzyFrames;
		fighterScorpion.winsFrames = &subzeroWinsFrames;
		fighterScorpion.specialFrames = &scorpionSpecialFrames;
		fighterScorpion.walkFrames = &scorpionWalkFrames;
		fighterScorpion.turnFrames = &subzeroTurnFrames;
		fighterScorpion.jumpFrames = &subzeroJumpFrames;
		fighterScorpion.jumpRollFrames = &subzeroJumpRollFrames;
		fighterScorpion.duckFrames = &subzeroDuckFrames;
		fighterScorpion.blockFrames = &subzeroBlockFrames;
		fighterScorpion.blockHitFrames = &subzeroBlockHitFrames;
		fighterScorpion.blockDuckFrames = &subzeroBlockDuckFrames;
		fighterScorpion.blockDuckHitFrames = &subzeroBlockDuckHitFrames;
		fighterScorpion.punchLowFrames = &subzeroPunchLowFrames;
		fighterScorpion.punchLowRepeatFrames = &subzeroPunchLowRepeatFrames;
		fighterScorpion.punchHighFrames = &subzeroPunchHighFrames;
		fighterScorpion.punchHighRepeatFrames = &subzeroPunchHighRepeatFrames;
		fighterScorpion.kickLowFrames = &subzeroKickLowFrames;
		fighterScorpion.kickHighFrames = &subzeroKickHighFrames;
		fighterScorpion.jumpPunchFrames = &subzeroJumpPunchFrames;
		fighterScorpion.jumpKickFrames = &subzeroJumpKickFrames;
		fighterScorpion.jumpDropKickFrames = &subzeroJumpDropKickFrames;
		fighterScorpion.uppercutFrames = &subzeroUppercutFrames;
		fighterScorpion.kipUpFrames = &subzeroKipUpFrames;
		fighterScorpion.sweepFrames = &subzeroSweepFrames;
		fighterScorpion.roundhouseFrames = &subzeroRoundhouseFrames;
		fighterScorpion.bodyPunchFrames = &subzeroBodyPunchFrames;
		fighterScorpion.bodyKickFrames = &subzeroBodyKickFrames;
		fighterScorpion.duckKickFrames = &subzeroDuckKickFrames;
		fighterScorpion.throwFrames = &subzeroThrowFrames;
		fighterScorpion.beingThrownFrames = &subzeroBeingThrownFrames;
		fighterScorpion.beingThrownLowFrames = &subzeroBeingThrownLowFrames;
		fighterScorpion.hitLowFrames = &subzeroHitLowFrames;
		fighterScorpion.hitHighFrames = &subzeroHitHighFrames;
		fighterScorpion.hitBackFrames = &subzeroHitBackFrames;
		fighterScorpion.hitUppercutFrames = &subzeroHitUppercutFrames;
		fighterScorpion.hitFallFrames = &subzeroHitFallFrames;
		fighterScorpion.hitSweepFrames = &subzeroHitSweepFrames;
		fighterScorpion2.spriteAnimator = &scorpionAnimator2;
		fighterScorpion2.projectileAnimator = &lightningAnimator;
		fighterScorpion2.projectileFrames = &projectileHarpoonFrames;
		fighterScorpion2.projectileEndFrames = &projectileHarpoonEndFrames;
		fighterScorpion2.special1Inputs = &specials_Scorpion_Harpoon_Inputs;
		fighterScorpion2.special2Inputs = &specials_Scorpion_Teleport_Inputs;
		fighterScorpion2.special3Inputs = &specials_FIGHTER_NONE_Inputs;
		fighterScorpion2.special1InputCount = 3;
		fighterScorpion2.special2InputCount = 3;
		fighterScorpion2.special3InputCount = 1;
		fighterScorpion2.special1Frames = &scorpionHarpoonFrames;
		fighterScorpion2.special1EndFrames = &scorpionHarpoonEndFrames;
		fighterScorpion2.doSpecialMove1 = &doSpecial_Scorpion_Harpoon;
		fighterScorpion2.idleFrames = &scorpionIdleFrames;
		fighterScorpion2.dizzyFrames = &subzeroDizzyFrames;
		fighterScorpion2.winsFrames = &subzeroWinsFrames;
		fighterScorpion2.specialFrames = &scorpionSpecialFrames;
		fighterScorpion2.walkFrames = &scorpionWalkFrames;
		fighterScorpion2.turnFrames = &subzeroTurnFrames;
		fighterScorpion2.jumpFrames = &subzeroJumpFrames;
		fighterScorpion2.jumpRollFrames = &subzeroJumpRollFrames;
		fighterScorpion2.duckFrames = &subzeroDuckFrames;
		fighterScorpion2.blockFrames = &subzeroBlockFrames;
		fighterScorpion2.blockHitFrames = &subzeroBlockHitFrames;
		fighterScorpion2.blockDuckFrames = &subzeroBlockDuckFrames;
		fighterScorpion2.blockDuckHitFrames = &subzeroBlockDuckHitFrames;
		fighterScorpion2.punchLowFrames = &subzeroPunchLowFrames;
		fighterScorpion2.punchLowRepeatFrames = &subzeroPunchLowRepeatFrames;
		fighterScorpion2.punchHighFrames = &subzeroPunchHighFrames;
		fighterScorpion2.punchHighRepeatFrames = &subzeroPunchHighRepeatFrames;
		fighterScorpion2.kickLowFrames = &subzeroKickLowFrames;
		fighterScorpion2.kickHighFrames = &subzeroKickHighFrames;
		fighterScorpion2.jumpPunchFrames = &subzeroJumpPunchFrames;
		fighterScorpion2.jumpKickFrames = &subzeroJumpKickFrames;
		fighterScorpion2.jumpDropKickFrames = &subzeroJumpDropKickFrames;
		fighterScorpion2.uppercutFrames = &subzeroUppercutFrames;
		fighterScorpion2.kipUpFrames = &subzeroKipUpFrames;
		fighterScorpion2.sweepFrames = &subzeroSweepFrames;
		fighterScorpion2.roundhouseFrames = &subzeroRoundhouseFrames;
		fighterScorpion2.bodyPunchFrames = &subzeroBodyPunchFrames;
		fighterScorpion2.bodyKickFrames = &subzeroBodyKickFrames;
		fighterScorpion2.duckKickFrames = &subzeroDuckKickFrames;
		fighterScorpion2.throwFrames = &subzeroThrowFrames;
		fighterScorpion2.beingThrownFrames = &subzeroBeingThrownFrames;
		fighterScorpion2.beingThrownLowFrames = &subzeroBeingThrownLowFrames;
		fighterScorpion2.hitLowFrames = &subzeroHitLowFrames;
		fighterScorpion2.hitHighFrames = &subzeroHitHighFrames;
		fighterScorpion2.hitBackFrames = &subzeroHitBackFrames;
		fighterScorpion2.hitUppercutFrames = &subzeroHitUppercutFrames;
		fighterScorpion2.hitFallFrames = &subzeroHitFallFrames;
		fighterScorpion2.hitSweepFrames = &subzeroHitSweepFrames;
		//Sub-Zero
		fighterSubzero.spriteAnimator = &subzeroAnimator;
		fighterSubzero.projectileAnimator = &lightningAnimator;
		fighterSubzero.projectileFrames = &projectileFreezeFrames;
		fighterSubzero.projectileEndFrames = &projectileFreezeEndFrames;
		fighterSubzero.special1Inputs = &specials_Subzero_Freeze_Inputs;
		fighterSubzero.special2Inputs = &specials_Subzero_Slide_Inputs;
		fighterSubzero.special3Inputs = &specials_FIGHTER_NONE_Inputs;
		fighterSubzero.special1InputCount = 3;
		fighterSubzero.special2InputCount = 3;
		fighterSubzero.special3InputCount = 1;
		fighterSubzero.special1Frames = &subzeroFreezeFrames;
		fighterSubzero.doSpecialMove1 = &doSpecial_Subzero_Freeze;
		fighterSubzero.idleFrames = &subzeroIdleFrames;
		fighterSubzero.dizzyFrames = &subzeroDizzyFrames;
		fighterSubzero.winsFrames = &subzeroWinsFrames;
		fighterSubzero.specialFrames = &subzeroSpecialFrames;
		fighterSubzero.walkFrames = &subzeroWalkFrames;
		fighterSubzero.turnFrames = &subzeroTurnFrames;
		fighterSubzero.jumpFrames = &subzeroJumpFrames;
		fighterSubzero.jumpRollFrames = &subzeroJumpRollFrames;
		fighterSubzero.duckFrames = &subzeroDuckFrames;
		fighterSubzero.blockFrames = &subzeroBlockFrames;
		fighterSubzero.blockHitFrames = &subzeroBlockHitFrames;
		fighterSubzero.blockDuckFrames = &subzeroBlockDuckFrames;
		fighterSubzero.blockDuckHitFrames = &subzeroBlockDuckHitFrames;
		fighterSubzero.punchLowFrames = &subzeroPunchLowFrames;
		fighterSubzero.punchLowRepeatFrames = &subzeroPunchLowRepeatFrames;
		fighterSubzero.punchHighFrames = &subzeroPunchHighFrames;
		fighterSubzero.punchHighRepeatFrames = &subzeroPunchHighRepeatFrames;
		fighterSubzero.kickLowFrames = &subzeroKickLowFrames;
		fighterSubzero.kickHighFrames = &subzeroKickHighFrames;
		fighterSubzero.jumpPunchFrames = &subzeroJumpPunchFrames;
		fighterSubzero.jumpKickFrames = &subzeroJumpKickFrames;
		fighterSubzero.jumpDropKickFrames = &subzeroJumpDropKickFrames;
		fighterSubzero.uppercutFrames = &subzeroUppercutFrames;
		fighterSubzero.kipUpFrames = &subzeroKipUpFrames;
		fighterSubzero.sweepFrames = &subzeroSweepFrames;
		fighterSubzero.roundhouseFrames = &subzeroRoundhouseFrames;
		fighterSubzero.bodyPunchFrames = &subzeroBodyPunchFrames;
		fighterSubzero.bodyKickFrames = &subzeroBodyKickFrames;
		fighterSubzero.duckKickFrames = &subzeroDuckKickFrames;
		fighterSubzero.throwFrames = &subzeroThrowFrames;
		fighterSubzero.beingThrownFrames = &subzeroBeingThrownFrames;
		fighterSubzero.beingThrownLowFrames = &subzeroBeingThrownLowFrames;
		fighterSubzero.hitLowFrames = &subzeroHitLowFrames;
		fighterSubzero.hitHighFrames = &subzeroHitHighFrames;
		fighterSubzero.hitBackFrames = &subzeroHitBackFrames;
		fighterSubzero.hitUppercutFrames = &subzeroHitUppercutFrames;
		fighterSubzero.hitFallFrames = &subzeroHitFallFrames;
		fighterSubzero.hitSweepFrames = &subzeroHitSweepFrames;
		fighterSubzero2.spriteAnimator = &subzeroAnimator2;
		fighterSubzero2.projectileAnimator = &lightningAnimator;
		fighterSubzero2.projectileFrames = &projectileFreezeFrames;
		fighterSubzero2.projectileEndFrames = &projectileFreezeEndFrames;
		fighterSubzero2.special1Inputs = &specials_Subzero_Freeze_Inputs;
		fighterSubzero2.special2Inputs = &specials_Subzero_Slide_Inputs;
		fighterSubzero2.special3Inputs = &specials_FIGHTER_NONE_Inputs;
		fighterSubzero2.special1InputCount = 3;
		fighterSubzero2.special2InputCount = 3;
		fighterSubzero2.special3InputCount = 1;
		fighterSubzero2.special1Frames = &subzeroFreezeFrames;
		fighterSubzero2.doSpecialMove1 = &doSpecial_Subzero_Freeze;
		fighterSubzero2.idleFrames = &subzeroIdleFrames;
		fighterSubzero2.dizzyFrames = &subzeroDizzyFrames;
		fighterSubzero2.winsFrames = &subzeroWinsFrames;
		fighterSubzero2.specialFrames = &subzeroSpecialFrames;
		fighterSubzero2.turnFrames = &subzeroTurnFrames;
		fighterSubzero2.walkFrames = &subzeroWalkFrames;
		fighterSubzero2.jumpFrames = &subzeroJumpFrames;
		fighterSubzero2.jumpRollFrames = &subzeroJumpRollFrames;
		fighterSubzero2.duckFrames = &subzeroDuckFrames;
		fighterSubzero2.blockFrames = &subzeroBlockFrames;
		fighterSubzero2.blockHitFrames = &subzeroBlockHitFrames;
		fighterSubzero2.blockDuckFrames = &subzeroBlockDuckFrames;
		fighterSubzero2.blockDuckHitFrames = &subzeroBlockDuckHitFrames;
		fighterSubzero2.punchLowFrames = &subzeroPunchLowFrames;
		fighterSubzero2.punchLowRepeatFrames = &subzeroPunchLowRepeatFrames;
		fighterSubzero2.punchHighFrames = &subzeroPunchHighFrames;
		fighterSubzero2.punchHighRepeatFrames = &subzeroPunchHighRepeatFrames;
		fighterSubzero2.kickLowFrames = &subzeroKickLowFrames;
		fighterSubzero2.kickHighFrames = &subzeroKickHighFrames;
		fighterSubzero2.jumpPunchFrames = &subzeroJumpPunchFrames;
		fighterSubzero2.jumpKickFrames = &subzeroJumpKickFrames;
		fighterSubzero2.jumpDropKickFrames = &subzeroJumpDropKickFrames;
		fighterSubzero2.uppercutFrames = &subzeroUppercutFrames;
		fighterSubzero2.kipUpFrames = &subzeroKipUpFrames;
		fighterSubzero2.sweepFrames = &subzeroSweepFrames;
		fighterSubzero2.roundhouseFrames = &subzeroRoundhouseFrames;
		fighterSubzero2.bodyPunchFrames = &subzeroBodyPunchFrames;
		fighterSubzero2.bodyKickFrames = &subzeroBodyKickFrames;
		fighterSubzero2.duckKickFrames = &subzeroDuckKickFrames;
		fighterSubzero2.throwFrames = &subzeroThrowFrames;
		fighterSubzero2.beingThrownFrames = &subzeroBeingThrownFrames;
		fighterSubzero2.beingThrownLowFrames = &subzeroBeingThrownLowFrames;
		fighterSubzero2.hitLowFrames = &subzeroHitLowFrames;
		fighterSubzero2.hitHighFrames = &subzeroHitHighFrames;
		fighterSubzero2.hitBackFrames = &subzeroHitBackFrames;
		fighterSubzero2.hitUppercutFrames = &subzeroHitUppercutFrames;
		fighterSubzero2.hitFallFrames = &subzeroHitFallFrames;
		fighterSubzero2.hitSweepFrames = &subzeroHitSweepFrames;
		//Sonya
		fighterSonya.spriteAnimator = &sonyaAnimator;
		fighterSonya.projectileAnimator = &lightningAnimator;
		fighterSonya.projectileFrames = &projectileRingsFrames;
		fighterSonya.projectileEndFrames = &projectileRingsEndFrames;
		fighterSonya.special1Inputs = &specials_Sonya_Rings_Inputs;
		fighterSonya.special2Inputs = &specials_Sonya_LegGrab_Inputs;
		fighterSonya.special3Inputs = &specials_Sonya_SquareFlight_Inputs;
		fighterSonya.special1InputCount = 3;
		fighterSonya.special2InputCount = 3;
		fighterSonya.special3InputCount = 1;
		fighterSonya.special1Frames = &sonyaRingsFrames;
		fighterSonya.doSpecialMove1 = &doSpecial_Sonya_Rings;
		fighterSonya.idleFrames = &sonyaIdleFrames;
		fighterSonya.dizzyFrames = &sonyaDizzyFrames;
		fighterSonya.winsFrames = &sonyaWinsFrames;
		fighterSonya.specialFrames = &sonyaSpecialFrames;
		fighterSonya.walkFrames = &sonyaWalkFrames;
		fighterSonya.turnFrames = &sonyaTurnFrames;
		fighterSonya.jumpFrames = &sonyaJumpFrames;
		fighterSonya.jumpRollFrames = &sonyaJumpRollFrames;
		fighterSonya.duckFrames = &sonyaDuckFrames;
		fighterSonya.blockFrames = &sonyaBlockFrames;
		fighterSonya.blockHitFrames = &sonyaBlockHitFrames;
		fighterSonya.blockDuckFrames = &sonyaBlockDuckFrames;
		fighterSonya.blockDuckHitFrames = &sonyaBlockDuckHitFrames;
		fighterSonya.punchLowFrames = &sonyaPunchLowFrames;
		fighterSonya.punchLowRepeatFrames = &sonyaPunchLowRepeatFrames;
		fighterSonya.punchHighFrames = &sonyaPunchHighFrames;
		fighterSonya.punchHighRepeatFrames = &sonyaPunchHighRepeatFrames;
		fighterSonya.kickLowFrames = &sonyaKickLowFrames;
		fighterSonya.kickHighFrames = &sonyaKickHighFrames;
		fighterSonya.jumpPunchFrames = &sonyaJumpPunchFrames;
		fighterSonya.jumpKickFrames = &sonyaJumpKickFrames;
		fighterSonya.jumpDropKickFrames = &sonyaJumpDropKickFrames;
		fighterSonya.uppercutFrames = &sonyaUppercutFrames;
		fighterSonya.kipUpFrames = &sonyaKipUpFrames;
		fighterSonya.sweepFrames = &sonyaSweepFrames;
		fighterSonya.roundhouseFrames = &sonyaRoundhouseFrames;
		fighterSonya.bodyPunchFrames = &sonyaBodyPunchFrames;
		fighterSonya.bodyKickFrames = &sonyaBodyKickFrames;
		fighterSonya.duckKickFrames = &sonyaDuckKickFrames;
		fighterSonya.throwFrames = &sonyaThrowFrames;
		fighterSonya.beingThrownFrames = &sonyaBeingThrownFrames;
		fighterSonya.beingThrownLowFrames = &sonyaBeingThrownLowFrames;
		fighterSonya.hitLowFrames = &sonyaHitLowFrames;
		fighterSonya.hitHighFrames = &sonyaHitHighFrames;
		fighterSonya.hitBackFrames = &sonyaHitBackFrames;
		fighterSonya.hitUppercutFrames = &sonyaHitUppercutFrames;
		fighterSonya.hitFallFrames = &sonyaHitFallFrames;
		fighterSonya.hitSweepFrames = &sonyaHitSweepFrames;
		fighterSonya2.spriteAnimator = &sonyaAnimator2;
		fighterSonya2.projectileAnimator = &lightningAnimator;
		fighterSonya2.projectileFrames = &projectileRingsFrames;
		fighterSonya2.projectileEndFrames = &projectileRingsEndFrames;
		fighterSonya2.special1Inputs = &specials_Sonya_Rings_Inputs;
		fighterSonya2.special2Inputs = &specials_Sonya_LegGrab_Inputs;
		fighterSonya2.special3Inputs = &specials_Sonya_SquareFlight_Inputs;
		fighterSonya2.special1InputCount = 3;
		fighterSonya2.special2InputCount = 3;
		fighterSonya2.special3InputCount = 1;
		fighterSonya2.special1Frames = &sonyaRingsFrames;
		fighterSonya2.doSpecialMove1 = &doSpecial_Sonya_Rings;
		fighterSonya2.idleFrames = &sonyaIdleFrames;
		fighterSonya2.dizzyFrames = &sonyaDizzyFrames;
		fighterSonya2.winsFrames = &sonyaWinsFrames;
		fighterSonya2.specialFrames = &sonyaSpecialFrames;
		fighterSonya2.walkFrames = &sonyaWalkFrames;
		fighterSonya2.turnFrames = &sonyaTurnFrames;
		fighterSonya2.jumpFrames = &sonyaJumpFrames;
		fighterSonya2.jumpRollFrames = &sonyaJumpRollFrames;
		fighterSonya2.duckFrames = &sonyaDuckFrames;
		fighterSonya2.blockFrames = &sonyaBlockFrames;
		fighterSonya2.blockHitFrames = &sonyaBlockHitFrames;
		fighterSonya2.blockDuckFrames = &sonyaBlockDuckFrames;
		fighterSonya2.blockDuckHitFrames = &sonyaBlockDuckHitFrames;
		fighterSonya2.punchLowFrames = &sonyaPunchLowFrames;
		fighterSonya2.punchLowRepeatFrames = &sonyaPunchLowRepeatFrames;
		fighterSonya2.punchHighFrames = &sonyaPunchHighFrames;
		fighterSonya2.punchHighRepeatFrames = &sonyaPunchHighRepeatFrames;
		fighterSonya2.kickLowFrames = &sonyaKickLowFrames;
		fighterSonya2.kickHighFrames = &sonyaKickHighFrames;
		fighterSonya2.jumpPunchFrames = &sonyaJumpPunchFrames;
		fighterSonya2.jumpKickFrames = &sonyaJumpKickFrames;
		fighterSonya2.jumpDropKickFrames = &sonyaJumpDropKickFrames;
		fighterSonya2.uppercutFrames = &sonyaUppercutFrames;
		fighterSonya2.kipUpFrames = &sonyaKipUpFrames;
		fighterSonya2.sweepFrames = &sonyaSweepFrames;
		fighterSonya2.roundhouseFrames = &sonyaRoundhouseFrames;
		fighterSonya2.bodyPunchFrames = &sonyaBodyPunchFrames;
		fighterSonya2.bodyKickFrames = &sonyaBodyKickFrames;
		fighterSonya2.duckKickFrames = &sonyaDuckKickFrames;
		fighterSonya2.throwFrames = &sonyaThrowFrames;
		fighterSonya2.beingThrownFrames = &sonyaBeingThrownFrames;
		fighterSonya2.beingThrownLowFrames = &sonyaBeingThrownLowFrames;
		fighterSonya2.hitLowFrames = &sonyaHitLowFrames;
		fighterSonya2.hitHighFrames = &sonyaHitHighFrames;
		fighterSonya2.hitBackFrames = &sonyaHitBackFrames;
		fighterSonya2.hitUppercutFrames = &sonyaHitUppercutFrames;
		fighterSonya2.hitFallFrames = &sonyaHitFallFrames;
		fighterSonya2.hitSweepFrames = &sonyaHitSweepFrames;

		unsigned short bg_color = (0 << 11) + (0 << 5) + 0;  //(red << 11) + (blue << 5) + green
		*(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.
		rapDebugSetXY(5,20);
		initBlackPalettes();
		initAlphaScreen();
		
		//Main game loop
		while(1)
		{
			int delta = rapTicks - lastTicks;
			lastTicks = rapTicks;

			if (onAlphaScreen)
			{
				pad1 = jsfGetPadPressed(LEFT_PAD);
				pad2 = jsfGetPadPressed(RIGHT_PAD);

				if (!fadedIn)
				{
					fadedIn = true;

					for (int i = 0; i < 80; i++)
					{
						rapFadeClut(0,256,(int *)(int)(void *)(BMP_PREALPHA_clut));
						jsfVsync(0); 
					}

					sfxAnnouncerExcellent(&soundHandler);
					
					rapUse8x16fontPalette(15);
					jsfSetFontSize(1);
					jsfSetFontIndx(1);
					rapLocate(108,8);
					js_r_textbuffer="MORTAL KOMBAT";
					rapPrint();
					jsfSetFontIndx(0);
					rapLocate(94,24);
					js_r_textbuffer="PRE-ALPHA V0.1.0";
					rapPrint();
					jsfSetFontIndx(1);
					rapLocate(88, 110);
					js_r_textbuffer="BUGS         FEEDBACK";
					rapPrint();

					rapUse8x8fontPalette(15);
					jsfSetFontSize(0);
					jsfSetFontIndx(0);
					rapLocate(10, 128);
					js_r_textbuffer="PATREON SUPPORTERS, THIS PRE-ALPHA";
					rapPrint();
					rapLocate(10, 138);
					js_r_textbuffer="BUILD INCLUDES THE 7 ORIGINAL FIGHTERS";
					rapPrint();
					rapLocate(10, 148);
					js_r_textbuffer="AND A BASIC MOVESET - NO SPECIAL MOVES";
					rapPrint();
					rapLocate(10, 158);
					js_r_textbuffer="OR FATALITIES. YES, THERE ARE BUGS AND";
					rapPrint();
					rapLocate(10, 168);
					js_r_textbuffer="SOME THINGS ARE A LITTLE ROUGH AROUND";
					rapPrint();
					rapLocate(10, 178);
					js_r_textbuffer="THE EDGES. PLEASE USE THE LINKS ABOVE";
					rapPrint();
					rapLocate(10, 188);
					js_r_textbuffer="TO REPORT BUGS AND PROVIDE FEEDBACK.";
					rapPrint();
					rapLocate(10, 198);
					js_r_textbuffer="THANKS FOR PLAYING!!";
					rapPrint();
				}

				if (fadedIn && !fadedOut)
				{
					if (rapTicks > gameStartTicks + (60*4) && ((pad1 & JAGPAD_C) || (pad1 & JAGPAD_B) || (pad1 & JAGPAD_A) || (pad1 & JAGPAD_OPTION) || (pad2 & JAGPAD_C) || (pad2 & JAGPAD_B) || (pad2 & JAGPAD_A) || (pad2 & JAGPAD_OPTION))
						|| rapTicks > gameStartTicks + (60*20))
					{
						for (int i = 0; i < 90; i++)
						{
							rapFadeClut(0,256,BLACKPAL);
							jsfVsync(0);
						}

						fadedOut = true;
						onAlphaScreen = false;		
						initTruFunScreen();
					}
				}
			}
			else if (onTruFunScreen)
			{
				if (!fadedIn)
				{
					fadedIn = true;

					sfxTruFun(&soundHandler);

					for (int i = 0; i < 80; i++)
					{
						rapFadeClut(0,256,(int *)(int)(void *)(BMP_TRUFUN_clut));
						jsfVsync(0); 
					}
				}

				if (fadedIn && !fadedOut)
				{
					if (rapTicks > gameStartTicks + (60*5))
					{
						for (int i = 0; i < 90; i++)
						{
							rapFadeClut(0,256,BLACKPAL);
							jsfVsync(0);
						}

						fadedOut = true;
						onTruFunScreen = false;		
						initTitleScreen();
					}
				}
			}
			else if (onTitleScreen)
			{
				if (!fadedIn)
				{
					fadedIn = true;
					for (int i = 0; i < 80; i++)
					{
						rapFadeClut(0,256,(int *)(int)(void *)(BMP_TITLESCREEN_clut));
						jsfVsync(0); 
					}
					
					sfxIntro(&soundHandler);
				}

				if (fadedIn && !fadedOut)
				{
					if (rapTicks > gameStartTicks + 240)
					{
						for (int i = 0; i < 90; i++)
						{
							rapFadeClut(0,256,BLACKPAL);
							jsfVsync(0);
						}

						fadedOut = true;		
						onTitleScreen = false;
						initMenuScreen();
					}
				}
			}
			else if (onMenuScreen)
			{
				if (rapTicks >= menuTicks + 1)
				{
					menuTicks = rapTicks;

					fighters1OffsetY += 1;
					fighters2OffsetY += 1;

					if (fighters1OffsetY > 268)
					{
						fighters1OffsetY = -268;
					}

					if (fighters2OffsetY > 268)
					{
						fighters2OffsetY = -268;
					}

					sprite[TITLE_FIGHTERS].y_ = fighters1OffsetY;
					sprite[TITLE_FIGHTERS+1].y_ = fighters2OffsetY;
					sprite[TITLE_FIGHTERS+2].y_ = fighters1OffsetY;
					sprite[TITLE_FIGHTERS+3].y_ = fighters2OffsetY;
				}

				pad1 = jsfGetPadPressed(LEFT_PAD);

				if (pad1 & JAGPAD_LEFT && !menuChanged && !menuSelected)
				{
					menuIndex--;

					if (menuIndex < 0)
					{
						menuIndex = 2;
					}

					menuChanged = true;
					sfxP2Cursor(&soundHandler);
				}
				else if (pad1 & JAGPAD_RIGHT && !menuChanged && !menuSelected)
				{
					menuIndex++;

					if (menuIndex > 2)
					{
						menuIndex = 0;
					}

					menuChanged = true;
					sfxP1Cursor(&soundHandler);
				}
				else if (pad1 & (JAGPAD_A | JAGPAD_B | JAGPAD_C) && menuIndex == 0 && !menuSelected)
				{
					menuSelected = true;
					sfxTitleStart(&soundHandler);
					sprite[TITLE_FIGHTERS].active = R_is_inactive;
					sprite[TITLE_FIGHTERS+1].active = R_is_inactive;
					sprite[TITLE_FIGHTERS+2].active = R_is_inactive;
					sprite[TITLE_FIGHTERS+3].active = R_is_inactive;
					sprite[TITLE_STONE].active = R_is_inactive;

					for (int i = 0; i < 90; i++)
					{
						rapFadeClut(0,256,BLACKPAL);
						jsfVsync(0);
					}

					fadedOut = true;		
					fighterStartUp();
				 	switchScreenChooseFighter();
				 	musicTitle(&soundHandler);
				}

				if (menuChanged)
				{
					attractModeTicks = rapTicks;
					menuChanged = false;
					switch(menuIndex)
					{
						case 0:
							sprite[TITLE_STONE].gfxbase = BMP_TS_MENU1;
							break;
						case 1:
							sprite[TITLE_STONE].gfxbase = BMP_TS_MENU2;
							break;
						case 2:
							sprite[TITLE_STONE].gfxbase = BMP_TS_MENU3;
							break;
						default:
							break;
					}
				}

				if (rapTicks > attractModeTicks + 600)
				{
					onMenuScreen = false;
					sprite[TITLE_FIGHTERS].active = R_is_inactive;
					sprite[TITLE_FIGHTERS+1].active = R_is_inactive;
					sprite[TITLE_FIGHTERS+2].active = R_is_inactive;
					sprite[TITLE_FIGHTERS+3].active = R_is_inactive;
					sprite[TITLE_STONE].active = R_is_inactive;

					for (int i = 0; i < 90; i++)
					{
						rapFadeClut(0,256,BLACKPAL);
						jsfVsync(0);
					}
					initAttractMode();
					initLeaderboard();
				}
			}
			else if (inAttractMode)
			{
				pad1 = jsfGetPadPressed(LEFT_PAD);

				if (pad1 & (JAGPAD_A | JAGPAD_B | JAGPAD_C))
				{
					inAttractMode = false;
					initMenuScreen();
				}

				if (rapTicks > attractModeTicks + 400)
				{
					attractModeTicks = rapTicks;
					attractModeIndex++;

					if (attractModeIndex > 4)
					{
						attractModeIndex = 0;
					}

					//fade out
					for (int i = 0; i < 90; i++)
					{
						rapFadeClut(0,256,BLACKPAL);
						jsfVsync(0);
					}
					//swap screens
					//0 = Leaderboard
					//1 = FMV profile
					//2 = GORO LIVES!
					//3 = GORO PROFILE
					//4 = Winners don't use drugs!
					switch (attractModeIndex)
					{
						case 0:
							initLeaderboard();
							break;
						case 1:
							switchAttractFMV();
							break;
						case 2:
							initGoroLives();
							break;
						case 3:
							initGoroProfile();
							break;
						case 4:
							initWinners();
							break;
						default:
							break;
					}
				}

				switch (attractModeIndex)
				{
					case 1:
						switch (fmvIndex)
						{
							case 0:
								updateSpriteAnimator(&fmvAnimator, fmvCageFrames, 18, true, false, 120, 43, 1);
								break;
							case 1:
								updateSpriteAnimator(&fmvAnimator, fmvKanoFrames, 21, true, false, 120, 43, 1);
								break;
							case 2:
								updateSpriteAnimator(&fmvAnimator, fmvRaidenFrames, 20, true, false, 120, 43, 1);
								break;
							case 3:
								updateSpriteAnimator(&fmvAnimator, fmvKangFrames, 18, true, false, 120, 43, 1);
								break;
							case 4:
								updateSpriteAnimator(&fmvAnimator, fmvScorpionFrames, 19, true, false, 120, 43, 1);
								break;
							case 5:
								updateSpriteAnimator(&fmvAnimator, fmvSubzeroFrames, 16, true, false, 120, 43, 1);
								break;
							case 6:
								updateSpriteAnimator(&fmvAnimator, fmvSonyaFrames, 13, true, false, 120, 43, 1);
								break;
						}
						break;
					case 3:
						if (!goroProfileShown && rapTicks > gameStartTicks + 120)
						{
							goroProfileShown = true;
							
							for (int j = 0; j < 24; j++)
							{
								rapFadeClut(0,240,BLACKPAL);
								jsfVsync(0);
							}
							rapUse8x16fontPalette(15);
							jsfSetFontSize(1);
							jsfSetFontIndx(0);
							rapLocate(26,28);
							js_r_textbuffer="A 2,000 YEAR OLD HALF HUMAN DRAGON";
							rapPrint();
							rapLocate(18,48);
							js_r_textbuffer="GORO REMAINS UNDEFEATED FOR THE PAST";
							rapPrint();
							rapLocate(18,68);
							js_r_textbuffer="500 YEARS. HE WON THE TITLE OF GRAND";
							rapPrint();
							rapLocate(30,88);
							js_r_textbuffer="CHAMPION BY DEFEATING KUNG LAO, A";
							rapPrint();
							rapLocate(18,108);
							js_r_textbuffer="SHAOLIN FIGHTING MONK. IT WAS DURING";
							rapPrint();
							rapLocate(18,128);
							js_r_textbuffer="THIS PERIOD THAT THE TOURNAMENT FELL";
							rapPrint();
							rapLocate(34,148);
							js_r_textbuffer="INTO SHANG TSUNG'S HANDS AND WAS";
							rapPrint();
							rapLocate(122,168);
							js_r_textbuffer="CORRUPTED.";
							rapPrint();
						}
						break;
					default:
						break;
				}
				
			}
			else if (onScreenChooseFighter)
			{
				pad1 = jsfGetPadPressed(LEFT_PAD);
				pad2 = jsfGetPadPressed(RIGHT_PAD);

				bool p1CursorChanged = false;

				if (p1Selected == -1)
				{
					if (pad1 & JAGPAD_LEFT)
					{
						p1CursorChanged = true;
						p1Cursor--;

						if (p1Cursor < 0)
							p1Cursor = 3;
						else if (p1Cursor == 3)
							p1Cursor = 6;
					}
					else if (pad1 & JAGPAD_RIGHT)
					{
						p1CursorChanged = true;
						p1Cursor++;

						if (p1Cursor == 4)
							p1Cursor = 0;
						else if (p1Cursor == 7)
							p1Cursor = 4;
					}
					else if (pad1 & JAGPAD_UP)
					{
						p1CursorChanged = true;
						if (p1Cursor == 4)
							p1Cursor = 1;
						else if (p1Cursor == 6)
							p1Cursor = 2;
					}
					else if (pad1 & JAGPAD_DOWN)
					{
						p1CursorChanged = true;
						if (p1Cursor == 1)
							p1Cursor = 4;
						else if (p1Cursor == 2)
							p1Cursor = 6;
					}
				}

				if (p1CursorChanged)
				{
					sfxP1Cursor(&soundHandler);
					SetPlayerPalettes();
				}

				switch (p1Cursor)
				{
					case 0:
						//Johnny Cage
						if (p1Selected > -1)
						{
							if (p1SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterCage, &cageAnimator, cageSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterCage, &cageAnimator, cageWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterCage, &cageAnimator, cageIdleFrames);
						}
						
						break;
					case 1:
						//Kano
						if (p1Selected > -1)
						{
							if (p1SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterKano, &kanoAnimator, kanoSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterKano, &kanoAnimator, kanoWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterKano, &kanoAnimator, kanoIdleFrames);
						}
						break;
					case 2:
						//Sub-Zero
						if (p1Selected > -1)
						{
							if (p1SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterSubzero, &subzeroAnimator, subzeroSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterSubzero, &subzeroAnimator, subzeroWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterSubzero, &subzeroAnimator, subzeroIdleFrames);
						}
						break;
					case 3:
						//Sonya
						if (p1Selected > -1)
						{
							if (p1SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterSonya, &sonyaAnimator, sonyaSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterSonya, &sonyaAnimator, sonyaWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterSonya, &sonyaAnimator, sonyaIdleFrames);
						}
						break;
					case 4:
						//Raiden
						if (p1Selected > -1)
						{
							if (p1SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterRaiden, &raidenAnimator, raidenSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterRaiden, &raidenAnimator, raidenWinsFrames);
							}							
						}
						else
						{
							fighterUpdateIdle(delta, &fighterRaiden, &raidenAnimator, raidenIdleFrames);
							updateSpriteAnimator(&lightningAnimator, lightningFrames, 30, true, true);
						}
						break;
					case 5:
						//Liu Kang
						if (p1Selected > -1)
						{
							if (p1SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterKang, &kangAnimator, kangSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterKang, &kangAnimator, kangWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterKang, &kangAnimator, kangIdleFrames);
						}
						break;
					case 6:
						//Scorpion
						if (p1Selected > -1)
						{
							if (p1SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterScorpion, &scorpionAnimator, scorpionSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterScorpion, &scorpionAnimator, subzeroWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterScorpion, &scorpionAnimator, scorpionIdleFrames);
						}
						break;
				}

				bool p2CursorChanged = false;

				if (p2Selected == -1)
				{
					if (pad2 & JAGPAD_LEFT)
					{
						p2CursorChanged = true;
						p2Cursor--;

						if (p2Cursor < 0)
							p2Cursor = 3;
						else if (p2Cursor == 3)
							p2Cursor = 6;
					}
					else if (pad2 & JAGPAD_RIGHT)
					{
						p2CursorChanged = true;
						p2Cursor++;

						if (p2Cursor == 4)
							p2Cursor = 0;
						else if (p2Cursor == 7)
							p2Cursor = 4;
					}
					else if (pad2 & JAGPAD_UP)
					{
						p2CursorChanged = true;
						if (p2Cursor == 4)
							p2Cursor = 1;
						else if (p2Cursor == 6)
							p2Cursor = 2;
					}
					else if (pad2 & JAGPAD_DOWN)
					{
						p2CursorChanged = true;
						if (p2Cursor == 1)
							p2Cursor = 4;
						else if (p2Cursor == 2)
							p2Cursor = 6;
					}
				}

				if (p2CursorChanged)
				{
					sfxP1Cursor(&soundHandler);
					SetPlayerPalettes();
				}

				switch (p2Cursor)
				{
					case 0:
						//Johnny Cage
						if (p2Selected > -1)
						{
							if (p2SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterCage2, &cageAnimator2, cageSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterCage2, &cageAnimator2, cageWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterCage2, &cageAnimator2, cageIdleFrames);
						}
						break;
					case 1:
						//Kano
						if (p2Selected > -1)
						{
							if (p2SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterKano2, &kanoAnimator2, kanoSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterKano2, &kanoAnimator2, kanoWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterKano2, &kanoAnimator2, kanoIdleFrames);
						}
						break;
					case 2:
						//Sub-Zero
						if (p2Selected > -1)
						{
							if (p2SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterSubzero2, &subzeroAnimator2, subzeroSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterSubzero2, &subzeroAnimator2, subzeroWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterSubzero2, &subzeroAnimator2, subzeroIdleFrames);
						}
						break;
					case 3:
						//Sonya
						if (p2Selected > -1)
						{
							if (p2SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterSonya2, &sonyaAnimator2, sonyaSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterSonya2, &sonyaAnimator2, sonyaWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterSonya2, &sonyaAnimator2, sonyaIdleFrames);
						}
						break;
					case 4:
						//Raiden
						if (p2Selected > -1)
						{
							if (p2SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterRaiden2, &raidenAnimator2, raidenSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterRaiden2, &raidenAnimator2, raidenWinsFrames);
							}							
						}
						else
						{
							fighterUpdateIdle(delta, &fighterRaiden2, &raidenAnimator2, raidenIdleFrames);
							updateSpriteAnimator(&lightning2Animator, lightningFrames, 30, true, true);
						}
						break;
					case 5:
						//Liu Kang
						if (p2Selected > -1)
						{
							if (p2SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterKang2, &kangAnimator2, kangSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterKang2, &kangAnimator2, kangWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterKang2, &kangAnimator2, kangIdleFrames);
						}
						break;
					case 6:
						//Scorpion
						if (p2Selected > -1)
						{
							if (p2SelectedSpecial)
							{
								fighterUpdateSpecialPose(delta, &fighterScorpion2, &scorpionAnimator2, scorpionSpecialFrames);
							}
							else
							{
								fighterUpdateVictoryPose(delta, &fighterScorpion2, &scorpionAnimator2, subzeroWinsFrames);
							}
						}
						else
						{
							fighterUpdateIdle(delta, &fighterScorpion2, &scorpionAnimator2, scorpionIdleFrames);
						}
						break;
				}

				if ((pad1 & JAGPAD_C || pad1 & JAGPAD_B || pad1 & JAGPAD_A || pad1 & JAGPAD_7 || pad1 & JAGPAD_8 || pad1 & JAGPAD_9 || rapTicks >= chooseTicks + CHOOSE_FIGHTER_TIME_TOTAL) && p1Selected == -1)
				{
					if (pad1 & JAGPAD_A)
					{
						p1SelectedSpecial = true;
					}
					else
					{
						p1SelectedSpecial = false;
					}

					p1Selected = p1Cursor;
					sprite[P1_CURSOR].active = R_is_inactive;
					myTicks = rapTicks;
					sfxSelected(&soundHandler);

					switch (p1Cursor)
					{
						case 0:
							sfxJohnnyCage(&soundHandler, true);
							fighter1Ptr = &fighterCage;							
							spriteAnimator1Ptr = &cageAnimator;
							break;
						case 1:
							sfxKano(&soundHandler, true);
							fighter1Ptr = &fighterKano;
							spriteAnimator1Ptr = &kanoAnimator;
							break;
						case 2:
							sfxSubzero(&soundHandler, true);
							fighter1Ptr = &fighterSubzero;
							spriteAnimator1Ptr = &subzeroAnimator;
							break;
						case 3:
							sfxSonya(&soundHandler, true);
							fighter1Ptr = &fighterSonya;
							spriteAnimator1Ptr = &sonyaAnimator;
							break;
						case 4:
							sfxRaiden(&soundHandler, true);
							fighter1Ptr = &fighterRaiden;
							spriteAnimator1Ptr = &raidenAnimator;
							sprite[LIGHTNING].active = R_is_inactive;
							break;
						case 5:
							sfxLiuKang(&soundHandler, true);
							fighter1Ptr = &fighterKang;
							spriteAnimator1Ptr = &kangAnimator;
							break;
						case 6:
							sfxScorpion(&soundHandler, true);
							fighter1Ptr = &fighterScorpion;
							spriteAnimator1Ptr = &scorpionAnimator;
							break; 
					}

					fighter1Ptr->spriteAnimator->currentFrame = 0;
				}

				if ((pad2 & JAGPAD_C || pad2 & JAGPAD_B || pad2 & JAGPAD_A || pad2 & JAGPAD_7 || pad2 & JAGPAD_8 || pad2 & JAGPAD_9 || rapTicks >= chooseTicks + CHOOSE_FIGHTER_TIME_TOTAL) && p2Selected == -1)
				{
					if (pad2 & JAGPAD_A)
					{
						p2SelectedSpecial = true;
					}
					else
					{
						p2SelectedSpecial = false;
					}

					p2Selected = p2Cursor;
					sprite[P2_CURSOR].active = R_is_inactive;
					myTicks = rapTicks;
					sfxSelected(&soundHandler);

					switch (p2Cursor)
					{
						case 0:
							sfxJohnnyCage(&soundHandler, false);
							fighter2Ptr = &fighterCage2;
							spriteAnimator2Ptr = &cageAnimator2;
							break;
						case 1:
							sfxKano(&soundHandler, false);
							fighter2Ptr = &fighterKano2;
							spriteAnimator2Ptr = &kanoAnimator2;
							break;
						case 2:
							sfxSubzero(&soundHandler, false);
							fighter2Ptr = &fighterSubzero2;
							spriteAnimator2Ptr = &subzeroAnimator2;
							break;
						case 3:
							sfxSonya(&soundHandler, false);
							fighter2Ptr = &fighterSonya2;
							spriteAnimator2Ptr = &sonyaAnimator2;
							break;
						case 4:
							sfxRaiden(&soundHandler, false);
							fighter2Ptr = &fighterRaiden2;
							spriteAnimator2Ptr = &raidenAnimator2;
							sprite[LIGHTNING2].active = R_is_inactive;
							break;
						case 5:
							sfxLiuKang(&soundHandler, false);
							fighter2Ptr = &fighterKang2;
							spriteAnimator2Ptr = &kangAnimator2;
							break;
						case 6:
							sfxScorpion(&soundHandler, false);
							fighter2Ptr = &fighterScorpion2;
							spriteAnimator2Ptr = &scorpionAnimator2;
							break;
					}

					fighter2Ptr->spriteAnimator->currentFrame = 0;
				}

				if (p1Selected != -1 && p1FlashCount <= 7)
				{
					if (rapTicks >= myTicks + 2)
					{
						if (sprite[P1_FLASH].active == R_is_active)
						{
							sprite[P1_FLASH].active = R_is_inactive;
						}
						else
						{
							sprite[P1_FLASH].active = R_is_active;
						}

						myTicks = rapTicks;
						p1FlashCount++;
					}
				}

				if (p2Selected != -1 && p2FlashCount <= 7)
				{
					if (rapTicks >= myTicks + 2)
					{
						if (sprite[P2_FLASH].active == R_is_active)
						{
							sprite[P2_FLASH].active = R_is_inactive;
						}
						else
						{
							sprite[P2_FLASH].active = R_is_active;
						}

						myTicks = rapTicks;
						p2FlashCount++;
					}
				}

				if (!chooseFighterDone && p1Selected > -1 && p2Selected > -1)
				{
					chooseFighterDone = true;
					myTicks = rapTicks;
				}
				
				if (chooseFighterDone && rapTicks > myTicks + 120)
				{
					for (int i = 0; i < 60; i++)
					{
						rapFadeClut(0,256,BLACKPAL);
						jsfVsync(0);
					}
					
					musicStop();
					stageSetNext();
					switchScreenVsBattle(p1Cursor, p2Cursor);				
					sfxIntro(&soundHandler);
					myTicks = rapTicks;
				}
			}
			else if (onScreenVsBattle)
			{
				if (rapTicks > myTicks + 240)
				{
					for (int i = 0; i < 80; i++)
					{
						rapFadeClut(0,256,BLACKPAL);
						jsfVsync(0);
					}

					roundFightSequenceComplete = false;
					myTicks = rapTicks;
					bgInit();
					bloodInit();
					spriteDelayInit();
					sleepInit();
					matchInit();		
					stageInit();
					fighterRestartMatch(fighter1Ptr);
					fighterRestartMatch(fighter2Ptr);
					switchScreenFight(p1Cursor, p2Cursor, true);
					stateMachineInit(&fighter1StateMachine, STATE_IDLE, fighter1Ptr, spriteAnimator1Ptr);
					stateMachineInit(&fighter2StateMachine, STATE_IDLE, fighter2Ptr, spriteAnimator2Ptr);
					displayWinnerMedals();
				}
			}
			else if (onScreenFight)
			{
				/////////////////////////////////////////
				// Fight!
				/////////////////////////////////////////
				pad1=jsfGetPad(LEFT_PAD);
				pad2=jsfGetPad(RIGHT_PAD);

				stateMachineUpdate(&fighter1StateMachine, fighter1Ptr, spriteAnimator1Ptr);
				stateMachineUpdate(&fighter2StateMachine, fighter2Ptr, spriteAnimator2Ptr);

				fighterCastShadow(fighter1Ptr, false);
				fighterCastShadow(fighter2Ptr, false);

				fighter1Ptr->pad = jsfGetPad(fighter1Ptr->PAD);
				fighter2Ptr->pad = jsfGetPad(fighter2Ptr->PAD);

				stateMachineHandleInput(&fighter1StateMachine, fighter1Ptr, spriteAnimator1Ptr);
				stateMachineHandleInput(&fighter2StateMachine, fighter2Ptr, spriteAnimator2Ptr);

				//clb uncomment here once things above work...
				displayWinnerMedals();

				if (pad1 & JAGPAD_5)
				{
					showMessageInt("Black Palette", BLACKPALx16[3]);
				}

				//match progression
				if (!matchUpdate(&soundHandler, fighter1Ptr, fighter2Ptr))
				{
					for (int i = 0; i < 90; i++)
					{
						rapFadeClut(0,256,BLACKPAL);
						jsfVsync(0);
					}
					
					//point the fighter's back to the choose your fighter sprite
					fighter1Ptr->spriteIndex = P1_FIGHTER;
					fighter2Ptr->spriteIndex = P2_FIGHTER;

					musicTitle(&soundHandler);
					switchScreenChooseFighter();
					continue;
				}

				if (matchIsComplete())
				{
					myTicks = rapTicks;
					bgInit();
					bloodInit();
					spriteDelayInit();
					sleepInit();
					matchReset();
					stateMachineInit(&fighter1StateMachine, STATE_IDLE, fighter1Ptr, spriteAnimator1Ptr);
					stateMachineInit(&fighter2StateMachine, STATE_IDLE, fighter2Ptr, spriteAnimator2Ptr);
					fighterResetFlagsAll(fighter1Ptr, fighter2Ptr);
					switchScreenFight(p1Cursor, p2Cursor, false);
				}

				if (sleepCheck())
				{
					//we're sleeping, so just loop again.
					continue;
				}
				
				fighter1Ptr->hasRoomToMove = fighterHasRoomToMove(fighter1Ptr, fighter2Ptr);
				fighter2Ptr->hasRoomToMove = fighterHasRoomToMove(fighter2Ptr, fighter1Ptr);  

				if (fighter1Ptr->fighterIndex == SCORPION || fighter2Ptr->fighterIndex == SCORPION)
				{
					if (fighter1Ptr->IsHarpoonReelingIn || fighter1Ptr->DoHarpoonReelingInSequence)
					{
						fighterHarpoonCheck(fighter2Ptr, fighter1Ptr);
					}
					else if (fighter2Ptr->IsHarpoonReelingIn || fighter2Ptr->DoHarpoonReelingInSequence)
					{
						fighterHarpoonCheck(fighter1Ptr, fighter2Ptr);
					}
				}
				fighterTurnCheck(fighter1Ptr, fighter2Ptr);
				fighterCloseCheck(fighter1Ptr, fighter2Ptr);
				fighterIsMaxDistance(fighter1Ptr, fighter2Ptr);
				fighterImpactCheck(&fighter1StateMachine, fighter1Ptr, spriteAnimator1Ptr, &fighter2StateMachine, fighter2Ptr, spriteAnimator2Ptr);
				fighterButtonCheck(fighter1Ptr);
				fighterButtonCheck(fighter2Ptr);
				playerinputUpdate(fighter1Ptr, fighter2Ptr);

				// jsfVsync(0);
				// continue;

				// //////////////////////////////////////
				// // Player 1 fighter
				// /////////////////////////////////////
				// switch (p1Cursor)
				// {
				// 	case 0:
				// 		//Johnny Cage
				// 		fighterUpdate(delta, &fighterCage, &cageAnimator);
				// 		break;
				// 	case 1:
				// 		//Kano
				// 		fighterUpdate(delta, &fighterKano, &kanoAnimator);
				// 		break;
				// 	case 2:
				// 		//Sub-Zero
				// 		fighterUpdate(delta, &fighterSubzero, &subzeroAnimator);
				// 		break;
				// 	case 3:
				// 		//Sonya
				// 		fighterUpdate(delta, &fighterSonya, &sonyaAnimator);
				// 		break;
				// 	case 4:
				// 		//Raiden
				// 		fighterUpdate(delta, &fighterRaiden, &raidenAnimator);

				// 		if (fighterRaiden.IsIdle)
				// 			updateSpriteAnimator(&lightningAnimator, lightningFrames, 30, true, true);
				// 		break;
				// 	case 5:
				// 		//Liu Kang
				// 		fighterUpdate(delta, &fighterKang, &kangAnimator);
				// 		break;
				// 	case 6:
				// 		//Scorpion
				// 		fighterUpdate(delta, &fighterScorpion, &scorpionAnimator);
				// 		break;
				// }
				
				// //////////////////////////////////////
				// // Player 2 fighter
				// /////////////////////////////////////
				// switch (p2Cursor)
				// {
				// 	case 0:
				// 		//Johnny Cage
				// 		fighterUpdate(delta, &fighterCage2, &cageAnimator2);
				// 		break;
				// 	case 1:
				// 		//Kano
				// 		fighterUpdate(delta, &fighterKano2, &kanoAnimator2);
				// 		break;
				// 	case 2:
				// 		//Sub-Zero
				// 		fighterUpdate(delta, &fighterSubzero2, &subzeroAnimator2);
				// 		break;
				// 	case 3:
				// 		//Sonya
				// 		fighterUpdate(delta, &fighterSonya2, &sonyaAnimator2);
				// 		break;
				// 	case 4:
				// 		//Raiden
				// 		fighterUpdate(delta, &fighterRaiden2, &raidenAnimator2);

				// 		if (fighterRaiden2.IsIdle)
				// 			updateSpriteAnimator(&lightning2Animator, lightningFrames, 30, true, true);
				// 		break;
				// 	case 5:
				// 		//Liu Kang
				// 		fighterUpdate(delta, &fighterKang2, &kangAnimator2);
				// 		break;
				// 	case 6:
				// 		//Scorpion
				// 		fighterUpdate(delta, &fighterScorpion2, &scorpionAnimator2);
				// 		break;
				// }
				
				bgUpdate(fighter1Ptr, fighter2Ptr);
				stageUpdate();

				if (stageGet() == STAGE_THRONE)
				{
					if (fighter1Ptr->IsDefeated || fighter2Ptr->IsDefeated)
					{
						updateSpriteAnimator(&shangTsungAnimator, shangTsungClapFrames, 6, true, true);
					}
					else
					{
						if (cameraGetX() < 40)
						{
							setAnimationFrame(shangTsungAnimator.spriteIndex, &shangTsungAnimator, &shangTsungSitFrames[4], sprite[shangTsungAnimator.spriteIndex].x_, sprite[shangTsungAnimator.spriteIndex].y_, 1);
						}
						else if (cameraGetX() < 80)
						{
							setAnimationFrame(shangTsungAnimator.spriteIndex, &shangTsungAnimator, &shangTsungSitFrames[3], sprite[shangTsungAnimator.spriteIndex].x_, sprite[shangTsungAnimator.spriteIndex].y_, 1);
						}
						else if (cameraGetX() > 120)
						{
							setAnimationFrame(shangTsungAnimator.spriteIndex, &shangTsungAnimator, &shangTsungSitFrames[1], sprite[shangTsungAnimator.spriteIndex].x_, sprite[shangTsungAnimator.spriteIndex].y_, 1);
						}
						else if (cameraGetX() > 130)
						{
							setAnimationFrame(shangTsungAnimator.spriteIndex, &shangTsungAnimator, &shangTsungSitFrames[2], sprite[shangTsungAnimator.spriteIndex].x_, sprite[shangTsungAnimator.spriteIndex].y_, 1);
						}
						else
						{
							setAnimationFrame(shangTsungAnimator.spriteIndex, &shangTsungAnimator, &shangTsungSitFrames[0], sprite[shangTsungAnimator.spriteIndex].x_, sprite[shangTsungAnimator.spriteIndex].y_, 1);
						}
					}
				}
				
				cameraUpdate(fighter1Ptr, fighter2Ptr);
				bloodUpdate(&soundHandler);
				spriteDelayUpdate();
				fighterDrawScores(fighter1Ptr, fighter2Ptr);
				
				if (debugMode)
				{
					rapDebugUpdate();
					//sleepAdd(40);
					//fighter->IsIdle && fighter->IsActive && !fighter->IsDefeated && !fighter->IsWinner
					jsfSetFontIndx(0);
					jsfSetFontSize(0);
					rapLocate(10, 60);
					js_r_textbuffer = ee_printf("%d",fighter1Ptr->positionX);
					rapPrint();
					rapLocate(10, 70);
					js_r_textbuffer = ee_printf("%d",fighter1Ptr->positionY);
					rapPrint();
					rapLocate(10, 80);
					js_r_textbuffer = ee_printf("%d",sprite[fighter1Ptr->spriteIndex].x_);
					rapPrint();
					rapLocate(10, 90);
					js_r_textbuffer = ee_printf("%d",sprite[fighter1Ptr->lightningSpriteIndex].x_);
					rapPrint();
					rapLocate(10, 100);
					js_r_textbuffer = ee_printf("%d",fighter1Ptr->direction);
					rapPrint();
					// rapLocate(10, 110);
					// js_r_textbuffer = ee_printf("%d",sprite[STAGE_GATES_FLAME].x_);
					// rapPrint();

					// rapLocate(290, 60);
					// js_r_textbuffer = ee_printf("%d",fighter2Ptr->positionX);
					// rapPrint();
					// rapLocate(290, 70);
					// js_r_textbuffer = ee_printf("%d",fighter2Ptr->positionY);
					// rapPrint();
					// rapLocate(290, 80);
					// js_r_textbuffer = ee_printf("%d",sprite[fighter2Ptr->spriteIndex].x_);
					// rapPrint();
					// rapLocate(290, 90);
					// js_r_textbuffer = ee_printf("%d",sprite[fighter2Ptr->spriteIndex].y_);
					// rapPrint();
					// rapLocate(290, 100);
					// js_r_textbuffer = ee_printf("%d",sprite[fighter2Ptr->lightningSpriteIndex].active);
					// rapPrint();
					// rapLocate(290, 110);
					// js_r_textbuffer = ee_printf("%d",fighter2Ptr->lightningSpriteIndex);
					// rapPrint();
				}
			}
			jsfVsync(0);
		}
	}
}

void initBlackPalettes()
{
	for (int i = 0; i < 8; i++)
	{
		BLACKPALx16[i] = 0;
	}

	for (int i = 0; i < 8; i++)
	{
		WHITEPALx16[i] = 256;
	}

	for (int i = 0; i < 128; i++)
	{
		BLACKPAL[i] = 0;
	}
}

void initAlphaScreen()
{
	rapParticleClear();
	rapUnpack(BMP_PREALPHA,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active=R_is_active;

	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
	onAlphaScreen = true;
}

void initTruFunScreen()
{
	rapParticleClear();
	rapUnpack(BMP_TRUFUN,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active=R_is_active;

	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
	onTruFunScreen = true;
}

void initTitleScreen()
{
	rapParticleClear();
	rapUnpack(BMP_TITLESCREEN,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active = R_is_active;
	
	jsfLoadClut((unsigned short *)(void *)(BLACKPAL),0,32);

	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
	onTitleScreen = true;
}

void initMenuScreen()
{
	rapParticleClear();
	rapUnpack(BMP_TS_BACKGROUND,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active = R_is_active;
	sprite[BACKGROUND16].active = R_is_inactive;
	sprite[FMV].active = R_is_inactive;
	sprite[TITLE_FIGHTERS].active = R_is_active;
	sprite[TITLE_FIGHTERS+1].active = R_is_active;
	sprite[TITLE_FIGHTERS+2].active = R_is_active;
	sprite[TITLE_FIGHTERS+3].active = R_is_active;
	sprite[TITLE_STONE].gfxbase = BMP_TS_MENU1;
	sprite[TITLE_STONE].active = R_is_active;
	
	jsfLoadClut((unsigned short *)(void *)(BMP_TS_BACKGROUND_clut),0,64);
	jsfLoadClut((unsigned short *)(void *)(BMP_TS_MENU1_clut),4,16);

	musicStageGoro(&soundHandler);

	menuSelected = false;
	menuChanged = false;
	menuIndex = 0;
	menuTicks = rapTicks;
	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
	onMenuScreen = true;
	attractModeTicks = rapTicks;
}

void initAttractMode()
{
	attractModeIndex = 0;
	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
	attractModeTicks = rapTicks;
	inAttractMode = true;
}

void switchAttractFMV()
{
	fmvIndex++;

	if (fmvIndex > 6)
	{
		fmvIndex = 0;
	}
	rapParticleClear();
	fmvAnimator.currentFrame = 0;
	rapUnpack(BMP_FMV_BACKGROUND,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND16].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active = R_is_inactive;
	sprite[BACKGROUND16].active = R_is_active;
	sprite[BACKGROUND16].CLUT = 8;

	char* name = "JOHNNY CAGE";
	int nameOffset = 116;
	char* line1 = "A MARTIAL ARTS SUPERSTAR TRAINED BY";
	int line1Offset = 12;
	char* line2 = "GREAT MASTERS FROM AROUND THE WORLD.";
	int line2Offset = 8;
	char* line3 = "CAGE USES HIS TALENTS ON THE BIG";
	int line3Offset = 24;
	char* line4 = "SCREEN HE IS THE CURRENT BOX-OFFICE";
	int line4Offset = 12;
	char* line5 = "CHAMP AND STAR OF SUCH MOVIES AS";
	int line5Offset = 24;
	char* line6 = "DRAGON FIST AND DRAGON FIST II AS WELL";
	int line6Offset = 0;
	char* line7 = "AS THE AWARE WINNING SUDDEN VIOLENCE.";
	int line7Offset = 4;

	switch (fmvIndex)
	{
		case 0:
			rapUnpack(BMP_FMV_CAGE,(int)(int*)imageBufferFMV);
			jsfLoadClut((unsigned short *)(void *)(BMP_FMV_CAGE_clut),0,128);
			break;
		case 1:
			rapUnpack(BMP_FMV_KANO,(int)(int*)imageBufferFMV);
			jsfLoadClut((unsigned short *)(void *)(BMP_FMV_KANO_clut),0,128);
			name = "KANO";
			nameOffset = 128;
			line1 = "A MERCENARY, THUG, EXTORTIONIST";
			line1Offset = 24;
			line2 = "THIEF - KANO LIVES A LIFE OF CRIME";
			line2Offset = 12;
			line3 = "AND INJUSTICE. HE IS A DEVOTED MEMBER";
			line3Offset = 0;
			line4 = "OF THE BLACK DRAGON, A DANGEROUS";
			line4Offset = 20;
			line5 = "GROUP OF CUT-THROAT MADMEN FEARED";
			line5Offset = 24;
			line6 = "AND RESPECTED THROUGHTOUT ALL OF";
			line6Offset = 28;
			line7 = "CRIME'S INNER CIRCLES.";
			line7Offset = 60;
			break;
		case 2:
			rapUnpack(BMP_FMV_RAIDEN,(int)(int*)imageBufferFMV);
			jsfLoadClut((unsigned short *)(void *)(BMP_FMV_RAIDEN_clut),0,128);
			name = "RAIDEN";
			nameOffset = 129;
			line1 = "THE NAME RAIDEN IS ACTUALLY THAT OF";
			line1Offset = 15;
			line2 = "A DEITY KNOWN AS THE THUNDER GOD.";
			line2Offset = 21;
			line3 = "IT IS RUMORED HE RECEIVED A PERSONAL";
			line3Offset = 9;
			line4 = "INVITATION BY SHANG TSUNG HIMSELF";
			line4Offset = 21;
			line5 = "AND TOOK THE FORM OF A HUMAN TO";
			line5Offset = 29;
			line6 = "COMPETE IN THE TOURNAMENT";
			line6Offset = 53;
			line7 = "";
			line7Offset = 0;
			break;
		case 3:
			rapUnpack(BMP_FMV_KANG,(int)(int*)imageBufferFMV);
			jsfLoadClut((unsigned short *)(void *)(BMP_FMV_KANG_clut),0,128);
			name = "LIU KANG";
			nameOffset = 135;
			line1 = "ONCE A MEMBER OF THE SUPER SECRET";
			line1Offset = 19;
			line2 = "WHITE LOTUS SOCIETY, LIU KANG LEFT";
			line2Offset = 23;
			line3 = "THE ORGANIZATION IN ORDER TO";
			line3Offset = 46;
			line4 = "REPRESENT SHAOLIN TEMPLES IN THE";
			line4Offset = 23;
			line5 = "TOURNAMENT. KANG IS STRONG IN HIS";
			line5Offset = 19;
			line6 = "BELIEFS AND DESPISES SHANG TSUNG.";
			line6Offset = 19;
			line7 = "";
			line7Offset = 0;
			break;
		case 4:
			rapUnpack(BMP_FMV_SCORPION,(int)(int*)imageBufferFMV);
			jsfLoadClut((unsigned short *)(void *)(BMP_FMV_SCORPION_clut),0,128);
			name = "SCORPION";
			nameOffset = 127;
			line1 = "LIKE SUB-ZERO, SCORPION'S TRUE";
			line1Offset = 33;
			line2 = "NAME AND ORIGIN ARE NOT KNOWN.";
			line2Offset = 33;
			line3 = "HE HAS SHOWN FROM TIME TO TIME";
			line3Offset = 33;
			line4 = "DISTRUST AND HATRED TOWARDS";
			line4Offset = 45;
			line5 = "SUB-ZERO. BETWEEN NINJAS, THIS";
			line5Offset = 33;
			line6 = "IS USUALLY A SIGN OF OPPOSING CLANS.";
			line6Offset = 8;
			line7 = "";
			line7Offset = 0;
			break;
		case 5:
			rapUnpack(BMP_FMV_SUBZERO,(int)(int*)imageBufferFMV);
			jsfLoadClut((unsigned short *)(void *)(BMP_FMV_SUBZERO_clut),0,128);
			name = "SUB-ZERO";
			nameOffset = 135;
			line1 = "THE ACTUAL NAME OR IDENTITY OF";
			line1Offset = 21;
			line2 = "THIS WARRIOR IS UNKNOWN. HOWEVER";
			line2Offset = 23;
			line3 = "BASED ON THE MARKINGS OF HIS";
			line3Offset = 39;
			line4 = "UNIFORM, IT IS BELIEVED HE BELONGS";
			line4Offset = 15;
			line5 = "TO THE LIN KUEI, A LEGENDARY";
			line5Offset = 39;
			line6 = "CLAN OF CHINESE NINJA.";
			line6Offset = 63;
			line7 = "";
			line7Offset = 0;
			break;
		case 6:
			rapUnpack(BMP_FMV_SONYA,(int)(int*)imageBufferFMV);
			jsfLoadClut((unsigned short *)(void *)(BMP_FMV_SONYA_clut),0,128);
			name = "SONYA";
			nameOffset = 144;
			line1 = "SONYA IS A MEMBER OF A TOP U.S.";
			line1Offset = 28;
			line2 = "SPECIAL FORCES UNIT. HER TEAM WAS";
			line2Offset = 20;
			line3 = "HOT ON THE TRAIL OF KANO'S BLACK";
			line3Offset = 24;
			line4 = "DRAGON ORGANIZATION. THEY";
			line4Offset = 52;
			line5 = "FOLLOWED THEM TO AN UNCHARTED";
			line5Offset = 36;
			line6 = "ISLAND WHERE THEY WERE AMBUSHED";
			line6Offset = 28;
			line7 = "BY SHANG TSUNG'S PERSONAL ARMY.";
			line7Offset = 28;
			break;
	}


	sprite[FMV].gfxbase=(int)imageBufferFMV;
	sprite[FMV].active = R_is_active;
	fmvAnimator.base = (int)imageBufferFMV;

	sprite[TITLE_FIGHTERS].active = R_is_inactive;
	sprite[TITLE_FIGHTERS+1].active = R_is_inactive;
	sprite[TITLE_FIGHTERS+2].active = R_is_inactive;
	sprite[TITLE_FIGHTERS+3].active = R_is_inactive;
	sprite[TITLE_STONE].active = R_is_inactive;
		
	jsfLoadClut((unsigned short *)(void *)(BMP_FMV_BACKGROUND_clut),8,16);
	
	rapUse8x8fontPalette(15);
	jsfSetFontSize(0);
	jsfSetFontIndx(0);
	rapLocate(8 + line1Offset, 128);
	js_r_textbuffer=line1;
	rapPrint();
	rapLocate(8 + line2Offset, 140);
	js_r_textbuffer=line2;
	rapPrint();
	rapLocate(8 + line3Offset, 152);
	js_r_textbuffer=line3;
	rapPrint();
	rapLocate(8 + line4Offset, 164);
	js_r_textbuffer=line4;
	rapPrint();
	rapLocate(8 + line5Offset, 176);
	js_r_textbuffer=line5;
	rapPrint();
	rapLocate(8 + line6Offset, 188);
	js_r_textbuffer=line6;
	rapPrint();
	rapLocate(8 + line7Offset, 200);
	js_r_textbuffer=line7;
	rapPrint();

	rapUse8x16fontPalette(15);
	jsfSetFontSize(1);
	jsfSetFontIndx(1);
	rapLocate(nameOffset,14);
	js_r_textbuffer=name;
	rapPrint();

	switch (fmvIndex)
	{
		case 0:
			sfxJohnnyCage(&soundHandler, true);
			break;
		case 1:
			sfxKano(&soundHandler, true);
			break;
		case 2:
			sfxRaiden(&soundHandler, true);
			break;
		case 3:
			sfxLiuKang(&soundHandler, true);
			break;
		case 4:
			sfxScorpion(&soundHandler, true);
			break;
		case 5:
			sfxSubzero(&soundHandler, true);
			break;
		case 6:
			sfxSonya(&soundHandler, true);
			break;
		default:
			break;
	}
	attractModeTicks = rapTicks;
}

void initLeaderboard()
{
	rapParticleClear();
	rapUnpack(BMP_ATTRACT_LEADERBOARD,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND16].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active = R_is_inactive;
	sprite[FMV].active = R_is_inactive;
	sprite[BACKGROUND16].active = R_is_active;
	sprite[TITLE_FIGHTERS].active = R_is_inactive;
	sprite[TITLE_FIGHTERS+1].active = R_is_inactive;
	sprite[TITLE_FIGHTERS+2].active = R_is_inactive;
	sprite[TITLE_FIGHTERS+3].active = R_is_inactive;
	sprite[TITLE_STONE].active = R_is_inactive;
	sprite[BACKGROUND16].CLUT = 8;
	jsfLoadClut((unsigned short *)(void *)(BMP_ATTRACT_LEADERBOARD_clut),8,16);

	rapUse8x16fontPalette(15);
	jsfSetFontSize(1);
	jsfSetFontIndx(1);
	rapLocate(70,42);
	js_r_textbuffer="LONGEST WINNING STREAKS";
	rapPrint();

	jsfSetFontIndx(0);
	int offsetY = 58;
	for (int i = 0; i < 10; i++)
	{
		rapLocate(24,offsetY);
		js_r_textbuffer = ee_printf("%02d. %s      %02d WINS      %08d", i+1, leaderboard[i].Name, leaderboard[i].Wins, leaderboard[i].Score);
		rapPrint();
		offsetY += 16;
	}
}

void initGoroLives()
{
	rapParticleClear();
	sprite[BACKGROUND].active=R_is_inactive;
	sprite[BACKGROUND16].active=R_is_inactive;
	sprite[FMV].active = R_is_inactive;

	rapUse8x16fontPalette(15);
	jsfSetFontSize(1);
	jsfSetFontIndx(0);
	rapLocate(112,114);
	js_r_textbuffer="GORO LIVES...";
	rapPrint();

	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
}

void initGoroProfile()
{
	rapParticleClear();
	rapUnpack(BMP_ATTRACT_GORO,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active=R_is_active;
	sprite[BACKGROUND16].active=R_is_inactive;
	sprite[FMV].active = R_is_inactive;
	jsfLoadClut((unsigned short *)(void *)(BMP_ATTRACT_GORO_clut),0,240);

	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
	goroProfileShown = false;
}

void initWinners()
{
	rapParticleClear();

	attractSlideIndex++;

	if (attractSlideIndex > 1)
	{
		attractSlideIndex = 0;
	}

	if (attractSlideIndex == 0)
	{
		rapUnpack(BMP_ATTRACT_WINNERS,(int)(int*)imageBuffer320x240);
		sprite[BACKGROUND16].gfxbase=(int)imageBuffer320x240;
		sprite[BACKGROUND16].active=R_is_active;
		sprite[BACKGROUND].active=R_is_inactive;
		sprite[BACKGROUND16].CLUT = 8;
		jsfLoadClut((unsigned short *)(void *)(BMP_ATTRACT_WINNERS_clut),8,16);
	}
	else if (attractSlideIndex == 1)
	{
		rapUnpack(BMP_ATTRACT_REAL,(int)(int*)imageBuffer320x240);
		sprite[BACKGROUND].gfxbase=(int)imageBuffer320x240;
		sprite[BACKGROUND].active=R_is_active;
		sprite[BACKGROUND16].active=R_is_inactive;
		jsfLoadClut((unsigned short *)(void *)(BMP_ATTRACT_REAL_clut),0,256);
	}
	
	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
}

void initGameAssets()
{
	//show Kano and Subzero by default on the Choose Your Fighter screen
	sprite[P1_FIGHTER].gfxbase = BMPKANO;
	sprite[P2_FIGHTER].gfxbase = BMPSUBZERO;
	sprite[P1_FIGHTER].active = R_is_active;
	sprite[P2_FIGHTER].active = R_is_active;
	jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),14,16);
	jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),15,16);
}

void switchScreenChooseFighter()
{
	unsigned short bg_color = (0 << 11) + (0 << 5) + 0;  //(red << 11) + (blue << 5) + green
	*(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.
	rapTicks = 0;
	lastTicks = rapTicks;
	bgResetTicks();
	stageResetTicks();
	cameraResetTicks();
	bloodResetTicks();
	matchResetTicks();
	rapParticleClear();
	fighterResetSpriteIndex(&fighterCage, &cageAnimator, true);
	fighterResetSpriteIndex(&fighterKano, &kanoAnimator, true);
	fighterResetSpriteIndex(&fighterRaiden, &raidenAnimator, true);
	fighterResetSpriteIndex(&fighterKang, &kangAnimator, true);
	fighterResetSpriteIndex(&fighterScorpion, &scorpionAnimator, true);
	fighterResetSpriteIndex(&fighterSubzero, &subzeroAnimator, true);
	fighterResetSpriteIndex(&fighterSonya, &sonyaAnimator, true);
	fighterResetSpriteIndex(&fighterCage2, &cageAnimator2, false);
	fighterResetSpriteIndex(&fighterKano2, &kanoAnimator2, false);
	fighterResetSpriteIndex(&fighterRaiden2, &raidenAnimator2, false);
	fighterResetSpriteIndex(&fighterKang2, &kangAnimator2, false);
	fighterResetSpriteIndex(&fighterScorpion2, &scorpionAnimator2, false);
	fighterResetSpriteIndex(&fighterSubzero2, &subzeroAnimator2, false);
	fighterResetSpriteIndex(&fighterSonya2, &sonyaAnimator2, false);
	lightningAnimator.lastTick = rapTicks;
	lightning2Animator.lastTick = rapTicks;
	lightningAnimator.spriteIndex = LIGHTNING;
	lightning2Animator.spriteIndex = LIGHTNING2;

	p1Cursor = 1;
	p2Cursor = 2;
	p1Selected = -1;
	p2Selected = -1;
	p1FlashCount = 0;
	p2FlashCount = 0;
	chooseFighterDone = false;
	rapUnpack(BMP_CHOOSEFIGHTER,(int)(int*)imageBuffer320x240);	
	sprite[BACKGROUND].gfxbase = (int)imageBuffer320x240;
	sprite[BACKGROUND].active = R_is_active;

	sprite[P1_CURSOR].active = R_is_active;
	sprite[P2_CURSOR].active = R_is_active;

	onTitleScreen = false;
	onMenuScreen = false;
	onScreenChooseFighter = true;
	onScreenVsBattle = false;
	onScreenFight = false;
	inAttractMode = false;
	
	rapSetActiveList(0);
	jsfLoadClut((unsigned short *)(void *)(BMP_CHOOSEFIGHTER_clut),0,96);
	jsfLoadClut((unsigned short *)(void *)(BMP_P2_SELECTOR_FLASH_clut),6,16);
	jsfLoadClut((unsigned short *)(void *)(BLACKPALx16),9,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_LIGHTNING_clut),13,3);
	SetPlayerPalettes();
	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
	chooseTicks = rapTicks;
}

void switchScreenVsBattle(int p1Cursor, int p2Cursor)
{
	chooseTicks = rapTicks;
	rapParticleClear();
	rapUnpack(BMP_BATTLESCREEN,(int)(int*)imageBuffer320x240);
	sprite[BATTLE_SCREEN].gfxbase=(int)imageBuffer320x240;
	sprite[BATTLE_SCREEN].active=R_is_active;

	jsfLoadClut((unsigned short *)(void *)(BMP_BATTLESCREEN_clut),0,16);

	switch (p1Cursor)
	{
		case 0:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_CAGE_clut),4,16);
			sprite[P1_PT_PORTRAIT].gfxbase = BMP_PT_CAGE;
			break;
		case 1:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_KANO_clut),4,16);
			sprite[P1_PT_PORTRAIT].gfxbase = BMP_PT_KANO;
			break;
		case 2:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_SUBZERO_clut),4,16);
			sprite[P1_PT_PORTRAIT].gfxbase = BMP_PT_SUBZERO;
			break;
		case 3:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_SONYA_clut),4,16);
			sprite[P1_PT_PORTRAIT].gfxbase = BMP_PT_SONYA;
			break;
		case 4:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_RAIDEN_clut),4,16);
			sprite[P1_PT_PORTRAIT].gfxbase = BMP_PT_RAIDEN;
			break;
		case 5:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_KANG_clut),4,16);
			sprite[P1_PT_PORTRAIT].gfxbase = BMP_PT_KANG;
			break;
		case 6:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_SCORPION_clut),4,16);
			sprite[P1_PT_PORTRAIT].gfxbase = BMP_PT_SCORPION;
			break;
	}

	switch (p2Cursor)
	{
		case 0:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_CAGE_clut),5,16);
			sprite[P2_PT_PORTRAIT].gfxbase = BMP_PT_CAGE;
			break;
		case 1:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_KANO_clut),5,16);
			sprite[P2_PT_PORTRAIT].gfxbase = BMP_PT_KANO;
			break;
		case 2:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_SUBZERO_clut),5,16);
			sprite[P2_PT_PORTRAIT].gfxbase = BMP_PT_SUBZERO;
			break;
		case 3:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_SONYA_clut),5,16);
			sprite[P2_PT_PORTRAIT].gfxbase = BMP_PT_SONYA;
			break;
		case 4:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_RAIDEN_clut),5,16);
			sprite[P2_PT_PORTRAIT].gfxbase = BMP_PT_RAIDEN;
			break;
		case 5:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_KANG_clut),5,16);
			sprite[P2_PT_PORTRAIT].gfxbase = BMP_PT_KANG;
			break;
		case 6:
			jsfLoadClut((unsigned short *)(void *)(BMP_PT_SCORPION_clut),5,16);
			sprite[P2_PT_PORTRAIT].gfxbase = BMP_PT_SCORPION;
			break;
	}

	stageLoadVsBattle();

	onScreenChooseFighter = false;
	onScreenVsBattle = true;
	rapSetActiveList(1);
}

void switchScreenFight(int p1Cursor, int p2Cursor, bool unpackBackground)
{
	rapTicks = 0;
	lastTicks = rapTicks;
	bgResetTicks();
	stageResetTicks();
	cameraResetTicks();
	bloodResetTicks();
	matchResetTicks();
	lightningAnimator.lastTick = rapTicks;
	lightning2Animator.lastTick = rapTicks;

	int currentStage = stageGet();
	unsigned short bg_color = (0 << 11) + (8 << 5) + 0;  //(red << 11) + (blue << 5) + green

	switch (currentStage)
    {
		case STAGE_GATES:			
            bg_color = (21 << 11) + (57 << 5) + 31;  //(red << 11) + (blue << 5) + green
            *(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.

            if (unpackBackground)
            {
                rapUnpack(BMP_GATES_MOUNTAIN,(int)(int*)imageBuffer320x240);
                rapUnpack(BMP_GATES_BACKGROUND,(int)(int*)imageBuffer);
            }

            sprite[STAGE_GATES_MOUNTAIN].gfxbase=(int)imageBuffer320x240;
			sprite[STAGE_GATES_MOUNTAIN].active = R_is_inactive;
            sprite[STAGE_PRIMARY_BACKGROUND].gfxbase=(int)imageBuffer;
			sprite[STAGE_PRIMARY_BACKGROUND].y_ = 0;
			sprite[STAGE_PRIMARY_BACKGROUND].height = 240;
            sprite[STAGE_PRIMARY_BACKGROUND].active=R_is_active;
			sprite[STAGE_WARRIOR_BUSH].gfxbase = BMP_GATES_BUSH;
			sprite[STAGE_WARRIOR_BUSH+1].gfxbase = BMP_GATES_BUSH;
			sprite[STAGE_WARRIOR_BUSH+2].gfxbase = BMP_GATES_BUSH;
			sprite[STAGE_WARRIOR_BUSH+3].gfxbase = BMP_GATES_BUSH;
			sprite[STAGE_WARRIOR_BUSH].width = 48;
			sprite[STAGE_WARRIOR_BUSH].height = 32;
			sprite[STAGE_WARRIOR_BUSH].y_ = 110;
			sprite[STAGE_WARRIOR_BUSH+1].width = 48;
			sprite[STAGE_WARRIOR_BUSH+1].height = 32;
			sprite[STAGE_WARRIOR_BUSH+1].y_ = 116;
			sprite[STAGE_WARRIOR_BUSH+2].width = 48;
			sprite[STAGE_WARRIOR_BUSH+2].height = 32;
			sprite[STAGE_WARRIOR_BUSH+2].y_ = 110;
			sprite[STAGE_WARRIOR_BUSH+3].width = 48;
			sprite[STAGE_WARRIOR_BUSH+3].height = 32;
			sprite[STAGE_WARRIOR_BUSH+3].y_ = 108;
			sprite[STAGE_WARRIOR_BUSH].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+1].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+2].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+3].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR].active = R_is_active;
			sprite[STAGE_GATES_FLAME].active = R_is_active;
			sprite[STAGE_GATES_FLAME+1].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+1].active = R_is_inactive;
			sprite[FOREGROUND_SPIKES].active = R_is_inactive;
			sprite[STAGE_GATES_TEMPLE].active = R_is_active;
			sprite[STAGE_GATES_TEMPLE].x_ = 110;
			sprite[STAGE_PIT_CLOUDS1].y_ = 8;
			sprite[STAGE_PIT_CLOUDS1+1].y_ = 8;
			
			sprite[STAGE_PIT_MOON].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR+1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+2].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+3].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+4].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+5].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+6].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+7].active = R_is_inactive;
			sprite[STAGE_GORO_EYES].active = R_is_inactive;
			sprite[STAGE_GORO_EYES+1].active = R_is_inactive;
			sprite[STAGE_SECONDARY_BACKGROUND].active=R_is_inactive;
			
			sprite[FOREGROUND_PILLAR].x_ = -150;
			sprite[STAGE_GATES_FLAME].x_ = -25;
			sprite[STAGE_GATES_FLAME+1].x_ = 499;

            jsfLoadClut((unsigned short *)(void *)(BMP_GATES_BACKGROUND_clut),0,80);
            jsfLoadClut((unsigned short *)(void *)(BMP_GATES_MOUNTAIN_clut),5,16);
            jsfLoadClut((unsigned short *)(void *)(BMP_GATES_TEMPLE_clut),6,16);
			jsfLoadClut((unsigned short *)(void *)(BMP_WARRIOR_PILLAR_clut),7,16);
			jsfLoadClut((unsigned short *)(void *)(BMP_FLAME_clut),8,16);

            musicStageGates(&soundHandler);
            break;
        case STAGE_WARRIOR:			
            bg_color = (0 << 11) + (8 << 5) + 0;  //(red << 11) + (blue << 5) + green
            *(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.

            if (unpackBackground)
            {
                rapUnpack(BMP_PIT_MOON,(int)(int*)imageBuffer320x240);
                rapUnpack(BMP_WARRIOR_BACKGROUND,(int)(int*)imageBuffer);
            }

            sprite[STAGE_PIT_MOON].gfxbase=(int)imageBuffer320x240;
            sprite[STAGE_PIT_MOON].active=R_is_active;
            sprite[STAGE_PRIMARY_BACKGROUND].gfxbase=(int)imageBuffer;
			sprite[STAGE_PRIMARY_BACKGROUND].y_ = 0;
			sprite[STAGE_PRIMARY_BACKGROUND].height = 240;
            sprite[STAGE_PRIMARY_BACKGROUND].active=R_is_active;
			sprite[STAGE_WARRIOR_BUSH].gfxbase = BMP_WARRIOR_BUSH;
			sprite[STAGE_WARRIOR_BUSH+1].gfxbase = BMP_WARRIOR_BUSH;
			sprite[STAGE_WARRIOR_BUSH+2].gfxbase = BMP_WARRIOR_BUSH;
			sprite[STAGE_WARRIOR_BUSH+3].gfxbase = BMP_WARRIOR_BUSH;
			sprite[STAGE_WARRIOR_BUSH].width = 48;
			sprite[STAGE_WARRIOR_BUSH].height = 80;
			sprite[STAGE_WARRIOR_BUSH].y_ = 66;
			sprite[STAGE_WARRIOR_BUSH+1].width = 48;
			sprite[STAGE_WARRIOR_BUSH+1].height = 80;
			sprite[STAGE_WARRIOR_BUSH+1].y_ = 86;
			sprite[STAGE_WARRIOR_BUSH+2].width = 48;
			sprite[STAGE_WARRIOR_BUSH+2].height = 80;
			sprite[STAGE_WARRIOR_BUSH+2].y_ = 62;
			sprite[STAGE_WARRIOR_BUSH+3].width = 48;
			sprite[STAGE_WARRIOR_BUSH+3].height = 80;
			sprite[STAGE_WARRIOR_BUSH+3].y_ = 70;
			sprite[STAGE_WARRIOR_BUSH].active = R_is_active;
			sprite[STAGE_WARRIOR_BUSH+1].active = R_is_active;
			sprite[STAGE_WARRIOR_BUSH+2].active = R_is_active;
			sprite[STAGE_WARRIOR_BUSH+3].active = R_is_active;
			sprite[FOREGROUND_PILLAR].active = R_is_active;
			sprite[FOREGROUND_PILLAR+1].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+2].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+3].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+4].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+5].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+6].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+7].active = R_is_inactive;
			sprite[FOREGROUND_SPIKES].active = R_is_inactive;
			sprite[STAGE_GORO_EYES].active = R_is_inactive;
			sprite[STAGE_GORO_EYES+1].active = R_is_inactive;
			sprite[STAGE_SECONDARY_BACKGROUND].active=R_is_inactive;
			sprite[STAGE_GATES_MOUNTAIN].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME+1].active = R_is_inactive;
			sprite[STAGE_GATES_TEMPLE].active = R_is_inactive;
			
			sprite[FOREGROUND_PILLAR].x_ = -216;
			sprite[FOREGROUND_PILLAR+1].x_ = 516;

            jsfLoadClut((unsigned short *)(void *)(BMP_WARRIOR_BACKGROUND_clut),0,80);
            jsfLoadClut((unsigned short *)(void *)(BMP_PIT_MOON_clut),5,16);
            jsfLoadClut((unsigned short *)(void *)(BMP_WARRIOR_BUSH_clut),8,16);
			jsfLoadClut((unsigned short *)(void *)(BMP_WARRIOR_PILLAR_clut),7,16);

            musicStageWarrior(&soundHandler);
            break;
        case STAGE_PIT:
            bg_color = (0 << 11) + (8 << 5) + 0;  //(red << 11) + (blue << 5) + green
            *(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.

            if (unpackBackground)
            {
                rapUnpack(BMP_PIT_MOON,(int)(int*)imageBuffer320x240);
                rapUnpack(BMP_PIT_BACKGROUND,(int)(int*)imageBuffer);
            }

            sprite[STAGE_PIT_MOON].gfxbase=(int)imageBuffer320x240;
            sprite[STAGE_PIT_MOON].active=R_is_active;
            sprite[STAGE_PRIMARY_BACKGROUND].gfxbase=(int)imageBuffer;
            sprite[STAGE_PRIMARY_BACKGROUND].active=R_is_active;
			sprite[STAGE_PRIMARY_BACKGROUND].y_ = 95;
			sprite[STAGE_PRIMARY_BACKGROUND].height = 176;
			sprite[STAGE_PIT_CLOUDS1].gfxbase = BMP_PIT_CLOUDS1;
			sprite[STAGE_PIT_CLOUDS1+1].gfxbase = BMP_PIT_CLOUDS1;
			sprite[STAGE_PIT_CLOUDS1].width = 128;
			sprite[STAGE_PIT_CLOUDS1].height = 48;
			sprite[STAGE_PIT_CLOUDS1+1].width = 128;
			sprite[STAGE_PIT_CLOUDS1+1].height = 48;
			sprite[STAGE_PIT_CLOUDS1].y_ = 42;
			sprite[STAGE_PIT_CLOUDS1+1].y_ = 42;
            sprite[STAGE_PIT_CLOUDS1].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1+1].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1+2].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1+3].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1+4].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1+5].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1+6].active = R_is_active;
			sprite[STAGE_PIT_CLOUDS1+7].active = R_is_active;
			sprite[STAGE_WARRIOR_BUSH].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+1].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+2].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+3].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR+1].active = R_is_inactive;
			sprite[FOREGROUND_SPIKES].active = R_is_inactive;
			sprite[STAGE_GORO_EYES].active = R_is_inactive;
			sprite[STAGE_GORO_EYES+1].active = R_is_inactive;
			sprite[STAGE_SECONDARY_BACKGROUND].active=R_is_inactive;
			sprite[STAGE_GATES_MOUNTAIN].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME+1].active = R_is_inactive;
			sprite[STAGE_GATES_TEMPLE].active = R_is_inactive;

            jsfLoadClut((unsigned short *)(void *)(BMP_PIT_BACKGROUND_clut),0,80);
            jsfLoadClut((unsigned short *)(void *)(BMP_PIT_MOON_clut),5,16);
            jsfLoadClut((unsigned short *)(void *)(BMP_PIT_CLOUDS1_clut),6,16);

            musicStagePit(&soundHandler);
            break;
		case STAGE_PIT_BOTTOM:
            bg_color = (0 << 11) + (8 << 5) + 0;  //(red << 11) + (blue << 5) + green
            *(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.

            if (unpackBackground)
            {
                rapUnpack(BMP_PIT_BACKGROUND,(int)(int*)imageBuffer);
            }

			sprite[FOREGROUND_SPIKES].active = R_is_active;
			sprite[FOREGROUND_SPIKES].x_ = -256;

            sprite[STAGE_PIT_MOON].active=R_is_inactive;
            sprite[STAGE_PRIMARY_BACKGROUND].gfxbase=(int)imageBuffer;
            sprite[STAGE_PRIMARY_BACKGROUND].active=R_is_active;
			sprite[STAGE_PRIMARY_BACKGROUND].y_ = 0;
			sprite[STAGE_PRIMARY_BACKGROUND].height = 240;
            sprite[STAGE_PIT_CLOUDS1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+2].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+3].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+4].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+5].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+6].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+7].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+1].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+2].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+3].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR+1].active = R_is_inactive;
			sprite[STAGE_GORO_EYES].active = R_is_inactive;
			sprite[STAGE_GORO_EYES+1].active = R_is_inactive;
			sprite[STAGE_SECONDARY_BACKGROUND].active=R_is_inactive;
			sprite[STAGE_GATES_MOUNTAIN].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME+1].active = R_is_inactive;
			sprite[STAGE_GATES_TEMPLE].active = R_is_inactive;

            jsfLoadClut((unsigned short *)(void *)(BMP_PIT_BACKGROUND_clut),0,80);
            jsfLoadClut((unsigned short *)(void *)(BMP_PIT_SPIKES_clut),5,16);

            musicStagePit(&soundHandler);
            break;
		case STAGE_THRONE:
			bg_color = (21 << 11) + (57 << 5) + 31;  //(red << 11) + (blue << 5) + green
            *(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.

            if (unpackBackground)
            {
                rapUnpack(BMP_THRONE_BACKGROUND,(int)(int*)imageBuffer);
            }

			sprite[THRONE_SHANG_TSUNG].active = R_is_active;
			sprite[THRONE_SHANG_TSUNG].x_ = 120;
			setAnimationFrame(shangTsungAnimator.spriteIndex, &shangTsungAnimator, &shangTsungSitFrames[0], sprite[shangTsungAnimator.spriteIndex].x_, sprite[shangTsungAnimator.spriteIndex].y_, 1);
			
            sprite[STAGE_PIT_MOON].active=R_is_inactive;
            sprite[STAGE_PRIMARY_BACKGROUND].gfxbase=(int)imageBuffer;
			sprite[STAGE_PRIMARY_BACKGROUND].y_ = 0;
			sprite[STAGE_PRIMARY_BACKGROUND].height = 240;
            sprite[STAGE_PRIMARY_BACKGROUND].active=R_is_active;
			sprite[STAGE_WARRIOR_BUSH].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+1].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+2].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+3].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR+1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+2].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+3].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+4].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+5].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+6].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+7].active = R_is_inactive;
			sprite[FOREGROUND_SPIKES].active = R_is_inactive;
			sprite[STAGE_GORO_EYES].active = R_is_inactive;
			sprite[STAGE_GORO_EYES+1].active = R_is_inactive;
			sprite[STAGE_SECONDARY_BACKGROUND].active=R_is_inactive;
			sprite[STAGE_GATES_MOUNTAIN].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME+1].active = R_is_inactive;
			sprite[STAGE_GATES_TEMPLE].active = R_is_inactive;

            jsfLoadClut((unsigned short *)(void *)(BMP_THRONE_BACKGROUND_clut),0,112);
            jsfLoadClut((unsigned short *)(void *)(BMP_THRONE_SHANG_clut),8,16);

            musicStageThrone(&soundHandler);
			break;
        case STAGE_GORO:
			bg_color = (0 << 11) + (8 << 5) + 0;  //(red << 11) + (blue << 5) + green
            *(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.

            if (unpackBackground)
            {
                rapUnpack(BMP_GORO_PARALAX,(int)(int*)imageBuffer320x240);
                rapUnpack(BMP_GORO_BACKGROUND,(int)(int*)imageBuffer);
            }

            sprite[STAGE_SECONDARY_BACKGROUND].gfxbase=(int)imageBuffer320x240;
            sprite[STAGE_SECONDARY_BACKGROUND].active=R_is_active;
            sprite[STAGE_PRIMARY_BACKGROUND].gfxbase=(int)imageBuffer;
			sprite[STAGE_PRIMARY_BACKGROUND].y_ = 0;
			sprite[STAGE_PRIMARY_BACKGROUND].height = 240;
            sprite[STAGE_PRIMARY_BACKGROUND].active=R_is_active;
			sprite[STAGE_GORO_EYES].active = R_is_active;
			sprite[STAGE_GORO_EYES+1].active = R_is_active;
			sprite[STAGE_WARRIOR_BUSH].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+1].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+2].active = R_is_inactive;
			sprite[STAGE_WARRIOR_BUSH+3].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR].active = R_is_inactive;
			sprite[FOREGROUND_PILLAR+1].active = R_is_inactive;
			sprite[STAGE_PIT_MOON].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+1].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+2].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+3].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+4].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+5].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+6].active = R_is_inactive;
			sprite[STAGE_PIT_CLOUDS1+7].active = R_is_inactive;
			sprite[STAGE_GATES_MOUNTAIN].active = R_is_inactive;
			sprite[FOREGROUND_SPIKES].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME].active = R_is_inactive;
			sprite[STAGE_GATES_FLAME+1].active = R_is_inactive;
			sprite[STAGE_GATES_TEMPLE].active = R_is_inactive;

            jsfLoadClut((unsigned short *)(void *)(BMP_GORO_BACKGROUND_clut),0,80);
            jsfLoadClut((unsigned short *)(void *)(BMP_GORO_PARALAX_clut),5,16);
			jsfLoadClut((unsigned short *)(void *)(BMP_GORO_EYES_clut),7,16);

            musicStageGoro(&soundHandler);
            break;
        default:
            break;
    }

	jsfLoadClut((unsigned short *)(void *)(BLACKPALx16),9,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_BLOOD_clut),10,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_MATCH_clut),11,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_HEALTHBAR_OFF_clut),12,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_LIGHTNING_clut),13,3);

	switch (p1Cursor)
	{
		case 0:
			//Johnny Cage
			jsfLoadClut((unsigned short *)(void *)(BMPCAGE_clut),14,16);
			fighterCage.defaultClut = BMPCAGE_clut;
			fighterCage.frozenClut = BMP_PAL_FROZEN_CAGE_clut;
			fighterCage.spriteIndex = P1_FIGHTER_PIT;
			cageAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterCage, true, &soundHandler, &cageImpactFrameLowPunch, &cageImpactFrameHighPunch, &cageImpactFrameLowKick, &cageImpactFrameHighKick, &cageImpactFrameUppercut, &cageImpactFrameSweep, &cageImpactFrameJumpPunch, &cageImpactFrameJumpKick, &cageImpactFrameRoundhouse, &cageImpactFrameBodyPunch, &cageImpactFrameBodyKick, &cageImpactFrameDuckKick, &cageImpactFrameThrow);
			fighterShow(&fighterCage);		
			sprite[P1_FIGHTER_PIT].gfxbase = BMPCAGE;
			setPlayer1Name((char*)"CAGE");
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),14,16);
			fighterKano.defaultClut = BMPKANO_clut;
			fighterKano.frozenClut = BMP_PAL_FROZEN_KANO_clut;
			fighterKano.spriteIndex = P1_FIGHTER_PIT;
			kanoAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterKano, true, &soundHandler, &kanoImpactFrameLowPunch, &kanoImpactFrameHighPunch, &kanoImpactFrameLowKick, &kanoImpactFrameHighKick, &kanoImpactFrameUppercut, &kanoImpactFrameSweep, &kanoImpactFrameJumpPunch, &kanoImpactFrameJumpKick, &kanoImpactFrameRoundhouse, &kanoImpactFrameBodyPunch, &kanoImpactFrameBodyKick, &kanoImpactFrameDuckKick, &kanoImpactFrameThrow);
			fighterShow(&fighterKano);
			setPlayer1Name((char*)"KANO");
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),14,16);
			fighterSubzero.defaultClut = BMPSUBZERO_clut;
			fighterSubzero.frozenClut = BMP_PAL_FROZEN_SUBZERO_clut;
			fighterSubzero.spriteIndex = P1_FIGHTER_PIT;
			subzeroAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterSubzero, true, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick, &subzeroImpactFrameRoundhouse, &subzeroImpactFrameBodyPunch, &subzeroImpactFrameBodyKick, &subzeroImpactFrameDuckKick, &subzeroImpactFrameThrow);
			fighterShow(&fighterSubzero);
			setPlayer1Name((char*)"SUB-ZERO");
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),14,16);
			fighterSonya.defaultClut = BMPSONYA_clut;
			fighterSonya.frozenClut = BMP_PAL_FROZEN_SONYA_clut;
			fighterSonya.spriteIndex = P1_FIGHTER_PIT;
			sonyaAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterSonya, true, &soundHandler, &sonyaImpactFrameLowPunch, &sonyaImpactFrameHighPunch, &sonyaImpactFrameLowKick, &sonyaImpactFrameHighKick, &sonyaImpactFrameUppercut, &sonyaImpactFrameSweep, &sonyaImpactFrameJumpPunch, &sonyaImpactFrameJumpKick, &sonyaImpactFrameRoundhouse, &sonyaImpactFrameBodyPunch, &sonyaImpactFrameBodyKick, &sonyaImpactFrameDuckKick, &sonyaImpactFrameThrow);
			fighterShow(&fighterSonya);
			setPlayer1Name((char*)"SONYA");
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),14,16);
			fighterRaiden.defaultClut = BMPRAIDEN_clut;
			fighterRaiden.frozenClut = BMP_PAL_FROZEN_RAIDEN_clut;
			fighterRaiden.spriteIndex = P1_FIGHTER_PIT;
			raidenAnimator.spriteIndex = P1_FIGHTER_PIT;
			lightningAnimator.spriteIndex = P1_PROJECTILE;
			fighterInitialize(&fighterRaiden, true, &soundHandler, &raidenImpactFrameLowPunch, &raidenImpactFrameHighPunch, &raidenImpactFrameLowKick, &raidenImpactFrameHighKick, &raidenImpactFrameUppercut, &raidenImpactFrameSweep, &raidenImpactFrameJumpPunch, &raidenImpactFrameJumpKick, &raidenImpactFrameRoundhouse, &raidenImpactFrameBodyPunch, &raidenImpactFrameBodyKick, &raidenImpactFrameDuckKick, &raidenImpactFrameThrow);
			fighterShow(&fighterRaiden);
			setPlayer1Name((char*)"RAIDEN");
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),14,16);
			fighterKang.defaultClut = BMPKANG_clut;
			fighterKang.frozenClut = BMP_PAL_FROZEN_KANG_clut;
			fighterKang.spriteIndex = P1_FIGHTER_PIT;
			kangAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterKang, true, &soundHandler, &kangImpactFrameLowPunch, &kangImpactFrameHighPunch, &kangImpactFrameLowKick, &kangImpactFrameHighKick, &kangImpactFrameUppercut, &kangImpactFrameSweep, &kangImpactFrameJumpPunch, &kangImpactFrameJumpKick, &kangImpactFrameRoundhouse, &kangImpactFrameBodyPunch, &kangImpactFrameBodyKick, &kangImpactFrameDuckKick, &kangImpactFrameThrow);
			fighterShow(&fighterKang);
			setPlayer1Name((char*)"LIU KANG");
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),14,16);
			fighterScorpion.defaultClut = PAL_SCORPION_clut;
			fighterScorpion.frozenClut = BMP_PAL_FROZEN_SCORPION_clut;
			fighterScorpion.spriteIndex = P1_FIGHTER_PIT;
			scorpionAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterScorpion, true, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick, &subzeroImpactFrameRoundhouse, &subzeroImpactFrameBodyPunch, &subzeroImpactFrameBodyKick, &subzeroImpactFrameDuckKick, &subzeroImpactFrameThrow);
			fighterShow(&fighterScorpion);
			setPlayer1Name((char*)"SCORPION");
			break;
	}

	switch (p2Cursor)
	{
		case 0:
			//Johnny Cage
			jsfLoadClut((unsigned short *)(void *)(BMPCAGE_clut),15,16);
			fighterCage2.defaultClut = BMPCAGE_clut;
			fighterCage2.frozenClut = BMP_PAL_FROZEN_CAGE_clut;
			fighterCage2.spriteIndex = P2_FIGHTER_PIT;
			cageAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterCage2, false, &soundHandler, &cageImpactFrameLowPunch, &cageImpactFrameHighPunch, &cageImpactFrameLowKick, &cageImpactFrameHighKick, &cageImpactFrameUppercut, &cageImpactFrameSweep, &cageImpactFrameJumpPunch, &cageImpactFrameJumpKick, &cageImpactFrameRoundhouse, &cageImpactFrameBodyPunch, &cageImpactFrameBodyKick, &cageImpactFrameDuckKick, &cageImpactFrameThrow);
			fighterShow(&fighterCage2);
			setPlayer2Name((char*)"CAGE", 4);
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),15,16);
			fighterKano2.defaultClut = BMPKANO_clut;
			fighterKano2.frozenClut = BMP_PAL_FROZEN_KANO_clut;
			fighterKano2.spriteIndex = P2_FIGHTER_PIT;
			kanoAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterKano2, false, &soundHandler, &kanoImpactFrameLowPunch, &kanoImpactFrameHighPunch, &kanoImpactFrameLowKick, &kanoImpactFrameHighKick, &kanoImpactFrameUppercut, &kanoImpactFrameSweep, &kanoImpactFrameJumpPunch, &kanoImpactFrameJumpKick, &kanoImpactFrameRoundhouse, &kanoImpactFrameBodyPunch, &kanoImpactFrameBodyKick, &kanoImpactFrameDuckKick, &kanoImpactFrameThrow);
			fighterShow(&fighterKano2);
			setPlayer2Name((char*)"KANO", 4);
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),15,16);
			fighterSubzero2.defaultClut = BMPSUBZERO_clut;
			fighterSubzero2.frozenClut = BMP_PAL_FROZEN_SUBZERO_clut;
			fighterSubzero2.spriteIndex = P2_FIGHTER_PIT;
			subzeroAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterSubzero2, false, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick, &subzeroImpactFrameRoundhouse, &subzeroImpactFrameBodyPunch, &subzeroImpactFrameBodyKick, &subzeroImpactFrameDuckKick, &subzeroImpactFrameThrow);
			fighterShow(&fighterSubzero2);
			setPlayer2Name((char*)"SUB-ZERO", 8);
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),15,16);
			fighterSonya2.defaultClut = BMPSONYA_clut;
			fighterSonya2.frozenClut = BMP_PAL_FROZEN_SONYA_clut;
			fighterSonya2.spriteIndex = P2_FIGHTER_PIT;
			sonyaAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterSonya2, false, &soundHandler, &sonyaImpactFrameLowPunch, &sonyaImpactFrameHighPunch, &sonyaImpactFrameLowKick, &sonyaImpactFrameHighKick, &sonyaImpactFrameUppercut, &sonyaImpactFrameSweep, &sonyaImpactFrameJumpPunch, &sonyaImpactFrameJumpKick, &sonyaImpactFrameRoundhouse, &sonyaImpactFrameBodyPunch, &sonyaImpactFrameBodyKick, &sonyaImpactFrameDuckKick, &sonyaImpactFrameThrow);
			fighterShow(&fighterSonya2);
			setPlayer2Name((char*)"SONYA", 5);
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),15,16);
			fighterRaiden2.defaultClut = BMPRAIDEN_clut;
			fighterRaiden2.frozenClut = BMP_PAL_FROZEN_RAIDEN_clut;
			fighterRaiden2.spriteIndex = P2_FIGHTER_PIT;
			raidenAnimator2.spriteIndex = P2_FIGHTER_PIT;
			lightning2Animator.spriteIndex = P2_PROJECTILE;
			fighterInitialize(&fighterRaiden2, false, &soundHandler, &raidenImpactFrameLowPunch, &raidenImpactFrameHighPunch, &raidenImpactFrameLowKick, &raidenImpactFrameHighKick, &raidenImpactFrameUppercut, &raidenImpactFrameSweep, &raidenImpactFrameJumpPunch, &raidenImpactFrameJumpKick, &raidenImpactFrameRoundhouse, &raidenImpactFrameBodyPunch, &raidenImpactFrameBodyKick, &raidenImpactFrameDuckKick, &raidenImpactFrameThrow);
			fighterShow(&fighterRaiden2);
			sprite[LIGHTNING2].active = R_is_active;
			setPlayer2Name((char*)"RAIDEN", 6);
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),15,16);
			fighterKang2.defaultClut = BMPKANG_clut;
			fighterKang2.frozenClut = BMP_PAL_FROZEN_KANG_clut;
			fighterKang2.spriteIndex = P2_FIGHTER_PIT;
			kangAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterKang2, false, &soundHandler, &kangImpactFrameLowPunch, &kangImpactFrameHighPunch, &kangImpactFrameLowKick, &kangImpactFrameHighKick, &kangImpactFrameUppercut, &kangImpactFrameSweep, &kangImpactFrameJumpPunch, &kangImpactFrameJumpKick, &kangImpactFrameRoundhouse, &kangImpactFrameBodyPunch, &kangImpactFrameBodyKick, &kangImpactFrameDuckKick, &kangImpactFrameThrow);
			fighterShow(&fighterKang2);
			setPlayer2Name((char*)"LIU KANG", 8);
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),15,16);
			fighterScorpion2.defaultClut = PAL_SCORPION_clut;
			fighterScorpion2.frozenClut = BMP_PAL_FROZEN_SCORPION_clut;
			fighterScorpion2.spriteIndex = P2_FIGHTER_PIT;
			scorpionAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterScorpion2, false, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick, &subzeroImpactFrameRoundhouse, &subzeroImpactFrameBodyPunch, &subzeroImpactFrameBodyKick, &subzeroImpactFrameDuckKick, &subzeroImpactFrameThrow);
			fighterShow(&fighterScorpion2);
			setPlayer2Name((char*)"SCORPION", 8);
			break;
	}

	setFighterAlternatePalette(p1Cursor, p2Cursor);
	hudInit();
	//sprite[P1_HEALTHBAR].scale_x = MAX_HEALTH;
	//sprite[P2_HEALTHBAR].scale_x = MAX_HEALTH;
	//sprite[P2_HEALTHBAR].x_ = 176;

	rapSetActiveList(2);
	
	cameraInit(STAGE_PRIMARY_BACKGROUND, stageGetStartX(), stageGetStartY(), 214, (int)imageBuffer);
	onScreenVsBattle = false;
	onScreenFight = true;
}

void SetPlayerPalettes()
{
	sprite[LIGHTNING].active = R_is_inactive;
	sprite[LIGHTNING2].active = R_is_inactive;

	switch (p1Cursor)
	{
		case 0:
			//Johnny Cage
			jsfLoadClut((unsigned short *)(void *)(BMPCAGE_clut),14,16);
			fighterMakeSelectable(&fighterCage, true);
			fighterShow(&fighterCage);
			sprite[P1_CURSOR].x_ = 7;
			sprite[P1_CURSOR].y_ = 42;
			sprite[P1_FLASH].x_ = 7;
			sprite[P1_FLASH].y_ = 46;
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),14,16);
			fighterMakeSelectable(&fighterKano, true);
			fighterShow(&fighterKano);
			sprite[P1_CURSOR].x_ = 68;
			sprite[P1_CURSOR].y_ = 42;
			sprite[P1_FLASH].x_ = 68;
			sprite[P1_FLASH].y_ = 46;
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),14,16);
			fighterMakeSelectable(&fighterSubzero, true);
			fighterShow(&fighterSubzero);
			sprite[P1_CURSOR].x_ = 189;
			sprite[P1_CURSOR].y_ = 42;
			sprite[P1_FLASH].x_ = 189;
			sprite[P1_FLASH].y_ = 46;
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),14,16);
			fighterMakeSelectable(&fighterSonya, true);
			fighterShow(&fighterSonya);
			sprite[P1_CURSOR].x_ = 250;
			sprite[P1_CURSOR].y_ = 42;
			sprite[P1_FLASH].x_ = 250;
			sprite[P1_FLASH].y_ = 46;
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),14,16);
			fighterMakeSelectable(&fighterRaiden, true);
			fighterShow(&fighterRaiden);
			sprite[P1_CURSOR].x_ = 68;
			sprite[P1_CURSOR].y_ = 116;
			sprite[P1_FLASH].x_ = 68;
			sprite[P1_FLASH].y_ = 120;
			sprite[LIGHTNING].active = R_is_active;
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),14,16);
			fighterMakeSelectable(&fighterKang, true);
			fighterShow(&fighterKang);
			sprite[P1_CURSOR].x_ = 129;
			sprite[P1_CURSOR].y_ = 116;
			sprite[P1_FLASH].x_ = 129;
			sprite[P1_FLASH].y_ = 120;
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),14,16);
			fighterMakeSelectable(&fighterScorpion, true);
			fighterShow(&fighterScorpion);
			sprite[P1_CURSOR].x_ = 189;
			sprite[P1_CURSOR].y_ = 116;
			sprite[P1_FLASH].x_ = 189;
			sprite[P1_FLASH].y_ = 120;
			break;
	}

	switch (p2Cursor)
	{
		case 0:
			//Johnny Cage
			jsfLoadClut((unsigned short *)(void *)(BMPCAGE_clut),15,16);
			fighterMakeSelectable(&fighterCage2, false);
			fighterShow(&fighterCage2);
			sprite[P2_CURSOR].x_ = 7;
			sprite[P2_CURSOR].y_ = 42;
			sprite[P2_FLASH].x_ = 7;
			sprite[P2_FLASH].y_ = 46;
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),15,16);
			fighterMakeSelectable(&fighterKano2, false);
			fighterShow(&fighterKano2);
			sprite[P2_CURSOR].x_ = 68;
			sprite[P2_CURSOR].y_ = 42;
			sprite[P2_FLASH].x_ = 68;
			sprite[P2_FLASH].y_ = 46;
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),15,16);
			fighterMakeSelectable(&fighterSubzero2, false);
			fighterShow(&fighterSubzero2);
			sprite[P2_CURSOR].x_ = 189;
			sprite[P2_CURSOR].y_ = 42;
			sprite[P2_FLASH].x_ = 189;
			sprite[P2_FLASH].y_ = 46;
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),15,16);
			fighterMakeSelectable(&fighterSonya2, false);
			fighterShow(&fighterSonya2);
			sprite[P2_CURSOR].x_ = 250;
			sprite[P2_CURSOR].y_ = 42;
			sprite[P2_FLASH].x_ = 250;
			sprite[P2_FLASH].y_ = 46;
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),15,16);
			fighterMakeSelectable(&fighterRaiden2, false);
			fighterShow(&fighterRaiden2);
			sprite[LIGHTNING2].active = R_is_active;
			sprite[P2_CURSOR].x_ = 68;
			sprite[P2_CURSOR].y_ = 116;
			sprite[P2_FLASH].x_ = 68;
			sprite[P2_FLASH].y_ = 120;
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),15,16);
			fighterMakeSelectable(&fighterKang2, false);
			fighterShow(&fighterKang2);
			sprite[P2_CURSOR].x_ = 129;
			sprite[P2_CURSOR].y_ = 116;
			sprite[P2_FLASH].x_ = 129;
			sprite[P2_FLASH].y_ = 120;
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),15,16);
			fighterMakeSelectable(&fighterScorpion2, false);
			fighterShow(&fighterScorpion2);
			sprite[P2_CURSOR].x_ = 189;
			sprite[P2_CURSOR].y_ = 116;
			sprite[P2_FLASH].x_ = 189;
			sprite[P2_FLASH].y_ = 120;
			break;
	}

	setFighterAlternatePalette(p1Cursor, p2Cursor);
}

void setFighterAlternatePalette(int fighter1Index, int fighter2Index)
{
    if (fighter1Index == fighter2Index)
    {
        //darken palette for player 2 if they are the same fighter
        //TODO show alternate palette for SONYA (red instead of dark green)
        for (int j = 0; j < 24; j++)
            rapFadeClut(15,16,BLACKPAL);
    }
}

void setPlayer1Name(char* name)
{
	rapUse8x8fontPalette(10);
	jsfSetFontSize(0);
	jsfSetFontIndx(1);
	rapLocate(26,29);
	js_r_textbuffer=name;
	rapPrint();
}

void setPlayer2Name(char* name, int length)
{
	rapUse8x8fontPalette(10);
	jsfSetFontSize(0);
	jsfSetFontIndx(1);
	rapLocate(301 - (length * 8),29);
	js_r_textbuffer=name;
	rapPrint();
}

void displayWinnerMedals()
{
	//rapUse16x16fontPalette(10);
	jsfSetFontSize(1);
	jsfSetFontIndx(0);

	switch(matchGetFighter1Wins())
	{
		case 1:
			rapLocate(136,29);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			break;
		case 2:
			rapLocate(136,29);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			rapLocate(128,29);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			break;
		default:
			rapLocate(136,29);
			js_r_textbuffer=(char *)" ";
			rapPrint();
			rapLocate(128,29);
			js_r_textbuffer=(char *)" ";
			rapPrint();
			break;
	}

	switch(matchGetFighter2Wins())
	{
		case 1:
			rapLocate(180,29);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			break;
		case 2:
			rapLocate(180,29);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			rapLocate(190,29);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			break;
		default:
			rapLocate(180,29);
			js_r_textbuffer=(char *)" ";
			rapPrint();
			rapLocate(190,29);
			js_r_textbuffer=(char *)" ";
			rapPrint();
			break;
	}
}

void doSpecial_Cage_GreenBolt(struct Fighter* fighter, struct SpriteAnimator* animator)
{
	if (!fighter->HasSetupSpecial1)
	{
		fighter->HasSetupSpecial1 = true;
		fighter->HasSetupProjectileEnd = false;
		fighter->ProjectileMadeContact = false;
		animator->currentFrame = 0;
		fighter->projectilePositionX = fighter->positionX;
		fighter->projectilePositionX += fighter->direction == -1 ? FIGHTER_WIDTH : 0;
		fighter->projectileAnimator->currentFrame = 0;
		fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
		fighter->projectileAnimator->base = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gwidth = 104;
		sprite[fighter->lightningSpriteIndex].hbox = 16;
		sprite[fighter->lightningSpriteIndex].vbox = 16;
		sprite[fighter->lightningSpriteIndex].active = R_is_active;
		jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_CAGE_clut),13,16);
		fighter->lastTicks = rapTicks;
		sfxCageGreenbolt(fighter->soundHandler, fighter->isPlayer1);
	}

	if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(animator, 6))
		{
			fighter->projectilePositionX += (8 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				fighter->IsDoingSpecial1 = false;
				playerinputInit(fighter);
				sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			}
		}

		updateSpriteAnimator(animator, *fighter->special1Frames, 6, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 8, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else
	{
		if (!fighter->HasSetupProjectileEnd)
		{
			fighter->HasSetupProjectileEnd = true;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (animationIsComplete(fighter->projectileAnimator, 5))
		{
			sprite[fighter->lightningSpriteIndex].was_hit = -1;
			fighter->IsDoingSpecial1 = false;
			sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			fighterResetRaidenLightning(fighter);
		}

		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 5, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
}

void doSpecial_Kano_Knife(struct Fighter* fighter, struct SpriteAnimator* animator)
{
	if (!fighter->HasSetupSpecial1)
	{
		fighter->HasSetupSpecial1 = true;
		fighter->HasSetupProjectileEnd = false;
		fighter->ProjectileMadeContact = false;
		fighter->HasSetupProjectileMovement = false;
		animator->currentFrame = 0;
		fighter->projectilePositionX = fighter->positionX;
		fighter->projectilePositionX += fighter->direction == -1 ? FIGHTER_WIDTH : 0;
		fighter->projectileAnimator->currentFrame = 0;
		fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
		fighter->projectileAnimator->base = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gwidth = 104;
		sprite[fighter->lightningSpriteIndex].hbox = 16;
		sprite[fighter->lightningSpriteIndex].vbox = 16;
		sprite[fighter->lightningSpriteIndex].active = R_is_active;
		jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_KANO_clut),13,16);
		fighter->lastTicks = rapTicks;
		sfxKanoKnife(fighter->soundHandler, fighter->isPlayer1);
	}

	if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(animator, 6))
		{
			if (!fighter->HasSetupProjectileMovement)
			{
				fighter->HasSetupProjectileMovement = true;
				fighter->projectilePositionX += (16 * fighter->direction);
			}

			fighter->projectilePositionX += (8 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				fighter->IsDoingSpecial1 = false;
				playerinputInit(fighter);
				sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			}
		}

		updateSpriteAnimator(animator, *fighter->special1Frames, 6, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 20, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else
	{
		if (!fighter->HasSetupProjectileEnd)
		{
			fighter->HasSetupProjectileEnd = true;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (animationIsComplete(fighter->projectileAnimator, 5))
		{
			sprite[fighter->lightningSpriteIndex].was_hit = -1;
			fighter->IsDoingSpecial1 = false;
			sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			fighterResetRaidenLightning(fighter);
		}

		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 5, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
}

void doSpecial_Raiden_Lightning(struct Fighter* fighter, struct SpriteAnimator* animator)
{
	if (!fighter->HasSetupSpecial1)
	{
		fighter->HasSetupSpecial1 = true;
		fighter->HasSetupProjectileEnd = false;
		fighter->HasSetupProjectileMovement = false;
		fighter->ProjectileMadeContact = false;
		animator->currentFrame = 0;
		fighter->IsIdle = false;
		fighter->projectilePositionX = fighter->positionX;
		fighter->projectilePositionX += fighter->direction == -1 ? FIGHTER_WIDTH : 0;
		fighter->projectileAnimator->currentFrame = 0;
		fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
		fighter->projectileAnimator->base = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gwidth = 104;
		sprite[fighter->lightningSpriteIndex].hbox = 16;
		sprite[fighter->lightningSpriteIndex].vbox = 16;
		sprite[fighter->lightningSpriteIndex].active = R_is_active;
		jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_RAIDEN_clut),13,16);
		fighter->lastTicks = rapTicks;
		sfxRaidenLightning(fighter->soundHandler, fighter->isPlayer1);
	}

	if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(fighter->projectileAnimator, 8))
		{
			if (!fighter->HasSetupProjectileMovement)
			{
				fighter->HasSetupProjectileMovement = true;
				fighter->projectilePositionX += (64 * fighter->direction);
			}
			
			fighter->projectilePositionX += (8 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				fighter->IsDoingSpecial1 = false;
				playerinputInit(fighter);
				sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
				fighterResetRaidenLightning(fighter);
			}
		}

		updateSpriteAnimator(animator, *fighter->special1Frames, 5, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 20, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else
	{
		if (!fighter->HasSetupProjectileEnd)
		{
			fighter->HasSetupProjectileEnd = true;
			fighter->projectileAnimator->currentFrame = 0;
			sfxRaidenLightningEnd(fighter->soundHandler, fighter->isPlayer1);
		}

		if (animationIsComplete(fighter->projectileAnimator, 5))
		{
			sprite[fighter->lightningSpriteIndex].was_hit = -1;
			fighter->IsDoingSpecial1 = false;
			sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			fighterResetRaidenLightning(fighter);
		}

		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 5, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
}

void doSpecial_Kang_Fireball(struct Fighter* fighter, struct SpriteAnimator* animator)
{
	if (!fighter->HasSetupSpecial1)
	{
		fighter->HasSetupSpecial1 = true;
		fighter->HasSetupProjectileEnd = false;
		fighter->ProjectileMadeContact = false;
		animator->currentFrame = 0;
		fighter->projectilePositionX = fighter->positionX;
		fighter->projectilePositionX += fighter->direction == -1 ? FIGHTER_WIDTH : 0;
		fighter->projectileAnimator->currentFrame = 0;
		fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
		fighter->projectileAnimator->base = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gwidth = 104;
		sprite[fighter->lightningSpriteIndex].hbox = 16;
		sprite[fighter->lightningSpriteIndex].vbox = 16;
		sprite[fighter->lightningSpriteIndex].active = R_is_active;
		jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_KANG_clut),13,16);
		fighter->lastTicks = rapTicks;
		sfxCageGreenbolt(fighter->soundHandler, fighter->isPlayer1);
	}

	if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(animator, 6))
		{
			fighter->projectilePositionX += (8 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				fighter->IsDoingSpecial1 = false;
				playerinputInit(fighter);
				sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			}
		}

		updateSpriteAnimator(animator, *fighter->special1Frames, 6, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 8, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else
	{
		if (!fighter->HasSetupProjectileEnd)
		{
			fighter->HasSetupProjectileEnd = true;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (animationIsComplete(fighter->projectileAnimator, 5))
		{
			sprite[fighter->lightningSpriteIndex].was_hit = -1;
			fighter->IsDoingSpecial1 = false;
			sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			//fighterResetRaidenLightning(fighter);
		}

		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 5, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
}

void doSpecial_Sonya_Rings(struct Fighter* fighter, struct SpriteAnimator* animator)
{
	if (!fighter->HasSetupSpecial1)
	{
		fighter->HasSetupSpecial1 = true;
		fighter->HasSetupProjectileEnd = false;
		fighter->ProjectileMadeContact = false;
		animator->currentFrame = 0;
		fighter->projectilePositionX = fighter->positionX;
		fighter->projectilePositionX += fighter->direction == -1 ? FIGHTER_WIDTH : 0;
		fighter->projectileAnimator->currentFrame = 0;
		fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
		fighter->projectileAnimator->base = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gwidth = 104;
		sprite[fighter->lightningSpriteIndex].hbox = 16;
		sprite[fighter->lightningSpriteIndex].vbox = 16;
		sprite[fighter->lightningSpriteIndex].active = R_is_active;
		jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SONYA_clut),13,16);
		fighter->lastTicks = rapTicks;
		sfxSonyaRings(fighter->soundHandler, fighter->isPlayer1);
	}

	if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(animator, 4))
		{
			fighter->projectilePositionX += (8 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				fighter->IsDoingSpecial1 = false;
				playerinputInit(fighter);
				sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			}
		}

		updateSpriteAnimator(animator, *fighter->special1Frames, 4, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 8, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else
	{
		if (!fighter->HasSetupProjectileEnd)
		{
			fighter->HasSetupProjectileEnd = true;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (animationIsComplete(fighter->projectileAnimator, 5))
		{
			sprite[fighter->lightningSpriteIndex].was_hit = -1;
			fighter->IsDoingSpecial1 = false;
			sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			fighterResetRaidenLightning(fighter);
		}

		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 5, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
}

void doSpecial_Subzero_Freeze(struct Fighter* fighter, struct SpriteAnimator* animator)
{
	if (!fighter->HasSetupSpecial1)
	{
		fighter->HasSetupSpecial1 = true;
		fighter->HasSetupProjectileEnd = false;
		fighter->ProjectileMadeContact = false;
		animator->currentFrame = 0;
		fighter->projectilePositionX = fighter->positionX;
		fighter->projectilePositionX += fighter->direction == -1 ? FIGHTER_WIDTH : 0;
		fighter->projectileAnimator->currentFrame = 0;
		fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
		fighter->projectileAnimator->base = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gwidth = 104;
		sprite[fighter->lightningSpriteIndex].hbox = 16;
		sprite[fighter->lightningSpriteIndex].vbox = 16;
		sprite[fighter->lightningSpriteIndex].active = R_is_active;
		jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SUBZERO_clut),13,16);
		fighter->lastTicks = rapTicks;
		sfxSubzeroFreeze(fighter->soundHandler, fighter->isPlayer1);
	}

	if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(fighter->projectileAnimator, 9))
		{
			fighter->projectilePositionX += (8 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				fighter->IsDoingSpecial1 = false;
				playerinputInit(fighter);
				sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			}
		}

		updateSpriteAnimator(animator, *fighter->special1Frames, 6, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 10, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else
	{
		if (!fighter->HasSetupProjectileEnd)
		{
			fighter->HasSetupProjectileEnd = true;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (animationIsComplete(fighter->projectileAnimator, 5))
		{
			sprite[fighter->lightningSpriteIndex].was_hit = -1;
			fighter->IsDoingSpecial1 = false;
			sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			fighterResetRaidenLightning(fighter);
		}

		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 5, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
}

void doSpecial_Scorpion_Harpoon(struct Fighter* fighter, struct SpriteAnimator* animator)
{
	if (!fighter->HasSetupSpecial1)
	{
		fighter->HarpoonBlocked = false;
		fighter->HasSetupSpecial1 = true;
		fighter->HasSetupProjectileEnd = false;
		fighter->IsHarpoonReelingIn = false;
		fighter->ProjectileMadeContact = false;
		fighter->HasSetupProjectileMovement = false;
		fighter->HarpoonFlashCount = 0;
		fighter->HarpoonFlashDirection = -1;
		animator->currentFrame = 0;
		fighter->projectilePositionX = fighter->positionX;
		fighter->projectilePositionX += fighter->direction == -1 ? FIGHTER_WIDTH : 0;
		fighter->projectileAnimator->currentFrame = 0;
		fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
		fighter->projectileAnimator->base = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
		sprite[fighter->lightningSpriteIndex].gwidth = 104;
		sprite[fighter->lightningSpriteIndex].hbox = 16;
		sprite[fighter->lightningSpriteIndex].vbox = 16;
		sprite[fighter->lightningSpriteIndex].scaled = R_spr_unscale;
		sprite[fighter->lightningSpriteIndex].active = R_is_active;
		jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SCORPION_clut),13,16);
		fighter->lastTicks = rapTicks;
	}

	if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(animator, 4))
		{
			if (!fighter->HasSetupProjectileMovement)
			{
				fighter->HasSetupProjectileMovement = true;
				sfxScorpionHarpoon(fighter->soundHandler, fighter->isPlayer1);
			}
			fighter->projectilePositionX += (6 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				fighter->IsDoingSpecial1 = false;
				playerinputInit(fighter);
				sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			}
		}

		updateSpriteAnimator(animator, *fighter->special1Frames, 4, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 19, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else if (fighter->HarpoonBlocked)
	{
		if (!fighter->HasSetupProjectileEnd)
		{
			fighter->HasSetupProjectileEnd = true;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (fighter->HarpoonFlashDirection == -1)
		{
			jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SCORPION_clut),13,16);
		}
		else
		{
			jsfLoadClut((unsigned short *)(void *)(BMP_P2_SELECTOR_FLASH_clut),13,16);
		}

		fighter->HarpoonFlashDirection *= -1;
		fighter->HarpoonFlashCount++;

		if (fighter->HarpoonFlashCount > 8)
		{
			fighter->IsDoingSpecial1 = false;
			sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
		}
	}
}