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
#include "debug.h"

// -----------------------------------------------------------------------
// Global Variables
// -----------------------------------------------------------------------
static int pad1;
static int pad2;
static int imageBuffer[768*608/4];
static int imageBuffer320x240[320*240/4];
//static int imageBufferFighter1[1024*1456/4];
//static int imageBufferFighter2[1024*1456/4];
static int BLACKPALx16[8];
static int BLACKPAL[128];
int p1Cursor = 1;
int p2Cursor = 2;
int p1Selected = -1;
int p2Selected = -1;
bool chooseFighterDone = false;
bool onTitleScreen = true;
bool onScreenChooseFighter = false;
bool onScreenVsBattle = false;
bool onScreenFight = false;
bool fadedIn = false;
bool fadedOut = false;
int gameStartTicks = rapTicks;
int ticksPerSec = 60;
int lastTicks = 0;

static SoundHandler soundHandler = {
	true,  //sound on/off
	true,  //music on/off
	163,  //sound volume
	20   //music volume
};
static SpriteAnimator cageAnimator = {
	P1_FIGHTER, 0.5f, BMPCAGE, 0, 0, 48
};

static SpriteAnimator cageAnimator2 = {
	P2_FIGHTER, 0.5f, BMPCAGE, 0, 0, 48
};

struct ImpactFrame cageImpactFrameLowPunch = {
	2, 52, 30
};
struct ImpactFrame cageImpactFrameHighPunch = {
	2, 46, 10
};
struct ImpactFrame cageImpactFrameLowKick = {
	3, 62, 30
};
struct ImpactFrame cageImpactFrameHighKick = {
	3, 58, 10
};
struct ImpactFrame cageImpactFrameUppercut = {
	3, 32, 30
};
struct ImpactFrame cageImpactFrameSweep = {
	4, 96, 60
};
struct ImpactFrame cageImpactFrameRoundhouse = {
	2, 58, 20
};
struct ImpactFrame cageImpactFrameJumpPunch = {
	1, 46, 60
};
struct ImpactFrame cageImpactFrameJumpKick = {
	1, 56, 46
};

struct ImpactFrame cageImpactFrameBodyPunch = {
	2, 0, 30
};

struct ImpactFrame cageImpactFrameBodyKick = {
	2, 20, 30
};

struct ImpactFrame cageImpactFrameDuckKick = {
	2, 40, 30
};

struct ImpactFrame cageImpactFrameThrow = {
	1, 20, 30
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
	{ 64, 80, 320, 672, -30, 0, 12},
	{ 64, 64, 384, 704, 10, 0, 12},
	{ 64, 48, 448, 704, 0, 0, 32},
	{ 80, 80, 816, 448, 0, 32, 6},
	{ 96, 48, 656, 1072, 0, 64, 6},
	{ 96, 48, 656, 1072, 0, 64, 6}
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
	{ 48, 64, 96, 112, 0, 0, 3 },
	{ 64, 48, 144, 112, 0, 0, 3 },
	{ 64, 48, 208, 112, 0, 0, 3 },
	{ 48, 48, 272, 112, 0, 0, 3 },
	{ 48, 48, 320, 112, 0, 0, 3 },
	{ 48, 48, 368, 112, 0, 0, 3 },
	{ 48, 48, 416, 112, 0, 0, 3 },
	{ 0, 0, 0, 0, 0, 0, 0 }
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
	{ 80, 112, 352, 432, 0, 0, 8 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 0, 208, 0, 0, 4 },
};
static AnimationFrame cagePunchHighFrames[] = {
	{ 80, 112, 0, 208, 0, 0, 4 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 144, 160, 0, 0, 8 },
	{ 64, 112, 80, 192, 0, 0, 4 },
	{ 80, 112, 0, 208, 0, 0, 4 },
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
	{ 48, 80, 912, 96, 0, 0, 4 },
	{ 64, 80, 960, 96, 2, 0, 24 },
	{ 64, 80, 960, 96, 2, 0, 4 }
};
static AnimationFrame cageJumpKickFrames[] = {
	{ 80, 64, 528, 112, 0, 0, 4 },
	{ 80, 80, 608, 112, 0, 0, 24 },
	{ 80, 80, 608, 112, 0, 0, 4 }
};
static AnimationFrame cageJumpDropKickFrames[] = {
	{ 48, 64, 688, 80, 0, 0, 4 },
	{ 96, 80, 816, 96, 0, 0, 24 },
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
	2, 62, 30
};
struct ImpactFrame kangImpactFrameHighPunch = {
	2, 62, 10
};
struct ImpactFrame kangImpactFrameLowKick = {
	2, 62, 30
};
struct ImpactFrame kangImpactFrameHighKick = {
	3, 48, 10
};
struct ImpactFrame kangImpactFrameUppercut = {
	3, 60, 30
};
struct ImpactFrame kangImpactFrameSweep = {
	4, 96, 40
};
struct ImpactFrame kangImpactFrameRoundhouse = {
	3, 48, 10
};
struct ImpactFrame kangImpactFrameJumpPunch = {
	1, 80, 60
};
struct ImpactFrame kangImpactFrameJumpKick = {
	1, 56, 46
};
struct ImpactFrame kangImpactFrameBodyPunch = {
	2, 0, 30
};

struct ImpactFrame kangImpactFrameBodyKick = {
	2, 20, 30
};

struct ImpactFrame kangImpactFrameDuckKick = {
	2, 40, 30
};

static SpriteAnimator kangAnimator = {
	P1_FIGHTER, 0.5f, BMPKANG, 0, 0, 48
};

static SpriteAnimator kangAnimator2 = {
	P2_FIGHTER, 0.5f, BMPKANG, 0, 0, 48
};

struct ImpactFrame kangImpactFrameThrow = {
	1, 20, 30
};

static AnimationFrame kangThrowFrames[] = {
	{ 80, 96, 704, 688, 0, 16, 6},
	{ 80, 80, 784, 688, 0, 32, 6},
	{ 80, 96, 864, 688, 0, 16, 6},
	{ 64, 112, 944, 688, 0, 0, 6},
	{ 64, 128, 0, 752, 0, -16, 6},
	{ 64, 112, 64, 768, -5, 0, 6},
	{ 80, 96, 128, 768, -15, 16, 6},
	{ 80, 96, 128, 768, -15, 16, 6}
};

static AnimationFrame kangBeingThrownFrames[] = {
	{ 64, 80, 208, 800, -40, 0, 12},
	{ 80, 64, 272, 832, -20, 0, 12},
	{ 64, 80, 352, 848, 0, 0, 32},
	{ 64, 80, 416, 848, 0, 0, 6},
	{ 96, 32, 272, 1040, 0, 80, 6},
	{ 96, 32, 272, 1040, 0, 80, 6}
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
static AnimationFrame kangHitFallFrames[] = {
	{ 96, 112, 272, 336, 0, 0, 6 },
	{ 96, 96, 368, 336, -5, 16, 6 },
	{ 80, 64, 464, 336, 0, 48, 6 },
	{ 64, 64, 672, 336, 0, 52, 6 },
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
	{ 48, 64, 544, 560, -3, 0, 3 },
	{ 48, 48, 496, 640, -13, -6, 3 },
	{ 64, 32, 544, 640, -12, 0, 3 },
	{ 48, 48, 608, 640, -2, 0, 3 },
	{ 48, 48, 656, 640, -6, 0, 3 },
	{ 48, 48, 704, 640, 0, 0, 3 },
	{ 48, 48, 768, 576, 0, -4, 3 }
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
static AnimationFrame kangPunchHighFrames[] = {
	{ 64, 112, 896, 0, 0, 0, 4 },
	{ 64, 112, 960, 0, 2, 0, 4 },
	{ 96, 112, 0, 112, 8, 0, 8 },
	{ 64, 112, 960, 0, 2, 0, 4 },
	{ 64, 112, 896, 0, 0, 0, 4 }
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
	{ 80, 64, 64, 704, 0, 0, 4 },
	{ 112, 64, 144, 704, -23, 1, 24 },
	{ 112, 64, 144, 704, -23, 1, 4 }
};
static AnimationFrame kangJumpKickFrames[] = {
	{ 80, 112, 240, 592, 0, 0, 4 },
	{ 80, 112, 320, 624, 1, 1, 24 },
	{ 80, 112, 320, 624, 1, 1, 4 }
};
static AnimationFrame kangJumpDropKickFrames[] = {
	{ 80, 64, 832, 592, 0, 0, 4 },
	{ 96, 64, 912, 624, 0, -5, 24 },
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
	2, 62, 30
};
struct ImpactFrame raidenImpactFrameHighPunch = {
	2, 62, 10
};
struct ImpactFrame raidenImpactFrameLowKick = {
	2, 62, 30
};
struct ImpactFrame raidenImpactFrameHighKick = {
	2, 62, 10
};
struct ImpactFrame raidenImpactFrameUppercut = {
	3, 50, 30
};
struct ImpactFrame raidenImpactFrameSweep = {
	4, 96, 40
};
struct ImpactFrame raidenImpactFrameRoundhouse = {
	2, 62, 30
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
	1, 46, 50
};
struct ImpactFrame raidenImpactFrameJumpKick = {
	1, 70, 46
};
static SpriteAnimator raidenAnimator = {
	P1_FIGHTER, 0.5f, BMPRAIDEN, 0, 0, 48
};

static SpriteAnimator raidenAnimator2 = {
	P2_FIGHTER, 0.5f, BMPRAIDEN, 0, 0, 48
};

struct ImpactFrame raidenImpactFrameThrow = {
	1, 20, 30
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
	{ 64, 80, 928, 288, -40, 0, 12},
	{ 80, 80, 928, 368, -20, 0, 12},
	{ 80, 80, 0, 400, 0, 0, 32},
	{ 80, 64, 496, 880, 0, 48, 6},
	{ 96, 32, 832, 1008, 0, 80, 6},
	{ 96, 32, 832, 1008, 0, 80, 6}
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
static AnimationFrame raidenHitFallFrames[] = {
	{ 80, 96, 208, 896, 0, 16, 6 },
	{ 96, 80, 288, 912, 0, 20, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 96, 48, 384, 912, 0, 54, 6 },
	{ 80, 64, 496, 880, 0, 48, 6 },
	{ 96, 64, 576, 880, 0, 49, 6 },
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
	{ 64, 96, 256, 208, 0, 0, 3 },
	{ 48, 64, 320, 208, 0, 0, 3 },
	{ 64, 64, 368, 176, 0, 0, 3 },
	{ 64, 48, 432, 176, -13, 0, 3 },
	{ 64, 64, 496, 176, -12, 0, 3 },
	{ 48, 64, 560, 144, 0, 0, 3 },
	{ 48, 64, 608, 160, -6, 0, 3 },
	{ 64, 48, 656, 176, 0, 0, 3 }
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
static AnimationFrame raidenPunchHighFrames[] = {
	{ 64, 112, 512, 576, 0, 0, 4 },
	{ 64, 112, 576, 576, 0, 0, 4 },
	{ 96, 112, 640, 608, 0, 0, 8 },
	{ 64, 112, 576, 576, 0, 0, 4 },
	{ 64, 112, 512, 576, 0, 0, 4 }
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
	{ 64, 80, 0, 304, 0, 0, 4 },
	{ 64, 64, 64, 336, 7, -2, 24 },
	{ 64, 64, 64, 336, 7, -2, 4 }
};
static AnimationFrame raidenJumpKickFrames[] = {
	{ 96, 96, 128, 320, 0, 0, 4 },
	{ 96, 96, 224, 320, -4, -10, 24 },
	{ 96, 96, 224, 320, -4, -10, 4 }
};
static AnimationFrame raidenJumpDropKickFrames[] = {
	{ 80, 80, 784, 224, 0, 0, 4 },
	{ 112, 64, 864, 224, -6, 10, 24 },
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
	2, 62, 30
};
struct ImpactFrame subzeroImpactFrameHighPunch = {
	2, 62, 10
};
struct ImpactFrame subzeroImpactFrameLowKick = {
	2, 62, 30
};
struct ImpactFrame subzeroImpactFrameHighKick = {
	3, 62, 10
};
struct ImpactFrame subzeroImpactFrameUppercut = {
	3, 46, 30
};
struct ImpactFrame subzeroImpactFrameSweep = {
	4, 96, 40
};
struct ImpactFrame subzeroImpactFrameRoundhouse = {
	2, 62, 10
};
struct ImpactFrame subzeroImpactFrameBodyPunch = {
	2, 10, 30
};
struct ImpactFrame subzeroImpactFrameBodyKick = {
	2, 20, 30
};
struct ImpactFrame subzeroImpactFrameDuckKick = {
	2, 40, 30
};
struct ImpactFrame subzeroImpactFrameJumpPunch = {
	1, 85, 60
};
struct ImpactFrame subzeroImpactFrameJumpKick = {
	1, 56, 46
};
static SpriteAnimator subzeroAnimator = {
	P1_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 48
};

static SpriteAnimator subzeroAnimator2 = {
	P2_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 48
};

struct ImpactFrame subzeroImpactFrameThrow = {
	1, 20, 30
};

static AnimationFrame subzeroThrowFrames[] = {
	{ 64, 112, 240, 688, 0, 0, 6},
	{ 96, 112, 304, 688, 0, 0, 6},
	{ 64, 80, 400, 704, 0, 32, 6},
	{ 64, 48, 656, 672, 0, 64, 6},
	{ 80, 64, 480, 688, 0, 48, 6},
	{ 96, 80, 560, 688, 0, 32, 6},
	{ 96, 80, 560, 688, 0, 32, 6},
	{ 0, 0, 0, 0, 0, 0, 0}
};

static AnimationFrame subzeroBeingThrownFrames[] = {
	{ 64, 80, 208, 800, -40, 0, 12},
	{ 80, 64, 272, 832, -20, 0, 12},
	{ 64, 80, 352, 848, 0, 0, 32},
	{ 64, 80, 416, 848, 0, 0, 6},
	{ 96, 32, 272, 1040, 0, 80, 6},
	{ 96, 32, 272, 1040, 0, 80, 6}
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
static AnimationFrame subzeroHitFallFrames[] = {
	{ 80, 96, 672, 576, 0, 16, 6 },
	{ 96, 80, 752, 640, 0, 32, 6 },
	{ 80, 96, 944, 480, 0, 16, 6 },
	{ 80, 96, 944, 480, 0, 16, 6 },
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
	{ 64, 80, 144, 432, 0, 0, 4 },
	{ 112, 64, 208, 448, -20, -2, 24 },
	{ 112, 64, 208, 448, -20, -2, 4 }
};
static AnimationFrame subzeroJumpKickFrames[] = {
	{ 64, 96, 320, 448, 0, 0, 4 },
	{ 96, 80, 384, 400, 0, 0, 24 },
	{ 96, 80, 384, 400, 0, 0, 4 }
};
static AnimationFrame subzeroJumpDropKickFrames[] = {
	{ 80, 80, 928, 400, 0, 0, 4 },
	{ 96, 80, 0, 448, -4, 0, 24 },
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
	{ 48, 112, 448, 0, 1, 0, 6 },
	{ 48, 112, 496, 0, 2, 0, 6 },
	{ 48, 112, 544, 0, 2, 0, 6 },
	{ 48, 112, 592, 0, 2, -1, 6 },
	{ 48, 112, 640, 0, 2, -1, 6 },
	{ 48, 112, 688, 0, 2, -1, 6 },
	{ 48, 112, 736, 0, 3, 0, 6 },
	{ 48, 112, 688, 0, 2, -1, 6 },
	{ 48, 112, 640, 0, 2, -1, 6 },
	{ 48, 112, 592, 0, 2, -1, 6 },
	{ 48, 112, 544, 0, 2, 0, 6 },
	{ 48, 112, 496, 0, 2, 0, 6 }
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
	{ 48, 48, 816, 464, 0, 0, 3 }
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
static AnimationFrame subzeroPunchHighFrames[] = {
	{ 64, 112, 912, 112, 0, 0, 4 },
	{ 64, 112, 0, 224, 5, 0, 4 },
	{ 96, 112, 64, 208, 6, 0, 8 },
	{ 80, 112, 832, 112, 5, 0, 4 },
	{ 64, 112, 912, 112, 0, 0, 4 }
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
	2, 62, 30
};
struct ImpactFrame sonyaImpactFrameHighPunch = {
	2, 50, 10
};
struct ImpactFrame sonyaImpactFrameLowKick = {
	3, 62, 30
};
struct ImpactFrame sonyaImpactFrameHighKick = {
	3, 50, 10
};
struct ImpactFrame sonyaImpactFrameUppercut = {
	3, 46, 30
};
struct ImpactFrame sonyaImpactFrameSweep = {
	4, 86, 60
};
struct ImpactFrame sonyaImpactFrameRoundhouse = {
	2, 60, 10
};
struct ImpactFrame sonyaImpactFrameBodyPunch = {
	2, 10, 30
};
struct ImpactFrame sonyaImpactFrameBodyKick = {
	2, 20, 30
};
struct ImpactFrame sonyaImpactFrameDuckKick = {
	2, 40, 30
};
struct ImpactFrame sonyaImpactFrameJumpPunch = {
	1, 80, 60
};
struct ImpactFrame sonyaImpactFrameJumpKick = {
	1, 56, 46
};
static SpriteAnimator sonyaAnimator = {
	P1_FIGHTER, 0.5f, BMPSONYA, 0, 0, 48
};

static SpriteAnimator sonyaAnimator2 = {
	P2_FIGHTER, 0.5f, BMPSONYA, 0, 0, 48
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
	{ 96, 64, 608, 112, 1, 48, 32},
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
static AnimationFrame sonyaHitFallFrames[] = {
	{ 64, 96, 432, 576, 0, 16, 6 },
	{ 96, 64, 496, 576, 0, 48, 6 },
	{ 96, 64, 592, 576, 0, 48, 6 },
	{ 96, 64, 592, 576, 0, 48, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
	{ 64, 80, 688, 560, 0, 36, 6 },
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
	{ 80, 64, 560, 288, 0, 0, 4 },
	{ 128, 64, 640, 288, -22, 0, 24 },
	{ 128, 64, 640, 288, -22, 0, 4 }
};
static AnimationFrame sonyaJumpKickFrames[] = {
	{ 48, 112, 448, 288, 0, 0, 4 },
	{ 64, 80, 496, 272, 0, 0, 24 },
	{ 64, 80, 496, 272, 0, 0, 4 }
};
static AnimationFrame sonyaJumpDropKickFrames[] = {
	{ 64, 64, 304, 304, 0, 0, 4 },
	{ 80, 64, 368, 304, 0, -3, 24 },
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
	{ 32, 96, 768, 336, 0, 0, 3 },
	{ 48, 64, 800, 336, 0, 0, 3 },
	{ 48, 64, 848, 336, -7, 0, 3 },
	{ 64, 48, 896, 336, -15, 0, 3 },
	{ 64, 48, 960, 336, -18, 0, 3 },
	{ 48, 64, 800, 400, -5, -16, 3 },
	{ 48, 64, 848, 400, -7, -15, 3 },
	{ 64, 48, 896, 384, -9, 0, 3 }
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
static AnimationFrame sonyaPunchHighFrames[] = {
	{ 64, 112, 816, 112, 0, 0, 4 },
	{ 64, 112, 880, 112, 0, 0, 4 },
	{ 80, 112, 944, 112, 0, 0, 8 },
	{ 64, 112, 880, 112, 0, 0, 4 },
	{ 64, 112, 816, 112, 0, 0, 4 }
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
	2, 62, 30
};
struct ImpactFrame kanoImpactFrameHighPunch = {
	2, 62, 10
};
struct ImpactFrame kanoImpactFrameLowKick = {
	3, 62, 30
};
struct ImpactFrame kanoImpactFrameHighKick = {
	3, 62, 10
};
struct ImpactFrame kanoImpactFrameUppercut = {
	3, 50, 30
};
struct ImpactFrame kanoImpactFrameSweep = {
	4, 96, 45
};
struct ImpactFrame kanoImpactFrameRoundhouse = {
	2, 62, 10
};

struct ImpactFrame kanoImpactFrameBodyPunch = {
	2, 10, 30
};

struct ImpactFrame kanoImpactFrameBodyKick = {
	2, 20, 30
};

struct ImpactFrame kanoImpactFrameDuckKick = {
	2, 40, 30
};

struct ImpactFrame kanoImpactFrameJumpPunch = {
	1, 46, 60
};
struct ImpactFrame kanoImpactFrameJumpKick = {
	1, 56, 46
};

struct ImpactFrame kanoImpactFrameThrow = {
	1, 20, 30
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
	{ 80, 80, 0, 752, -40, 0, 12},
	{ 80, 64, 80, 768, -20, 0, 12},
	{ 48, 80, 160, 768, 0, 0, 32},
	{ 80, 80, 208, 720, 0, 32, 6},
	{ 96, 32, 752, 1072, 0, 80, 6},
	{ 96, 32, 752, 1072, 0, 80, 6}
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
static AnimationFrame kanoHitFallFrames[] = {
	{ 64, 112, 640, 608, 0, 0, 6 },
	{ 80, 112, 704, 624, 0, 0, 6 },
	{ 96, 80, 784, 624, 0, 32, 6 },
	{ 80, 64, 880, 624, 5, 48, 6 },
	{ 80, 48, 128, 720, 0, 64, 6 },
	{ 96, 48, 256, 624, -8, 76, 6 },
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
	{ 48, 64, 288, 352, 0, 0, 3 },
	{ 48, 64, 336, 368, 0, 0, 3 },
	{ 64, 48, 384, 384, -12, 4, 3 },
	{ 64, 48, 448, 384, -12, 4, 3 },
	{ 48, 64, 512, 416, 0, -18, 3 },
	{ 48, 64, 560, 416, 0, -18, 3 },
	{ 64, 48, 608, 416, 0, 0, 3 },
	{ 0, 0, 0, 0, 0, 0, 0 }
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
static AnimationFrame kanoPunchHighFrames[] = {
	{ 64, 112, 640, 112, -2, 0, 4 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 80, 112, 768, 112, 10, -1, 8 },
	{ 64, 112, 704, 112, 8, 0, 4 },
	{ 64, 112, 640, 112, -2, 0, 4 }
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
	{ 48, 64, 912, 448, 0, 0, 4 },
	{ 64, 64, 0, 544, 0, 0, 24 },
	{ 64, 64, 0, 544, 0, 0, 4 }
};
static AnimationFrame kanoJumpKickFrames[] = {
	{ 48, 112, 368, 432, 0, 0, 4 },
	{ 96, 96, 416, 432, 0, 0, 24 },
	{ 96, 96, 416, 432, 0, 0, 4 }
};
static AnimationFrame kanoJumpDropKickFrames[] = {
	{ 48, 80, 672, 416, 0, 0, 4 },
	{ 96, 64, 816, 448, 0, 0, 24 },
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

// *************************************************
//               User Prototypes
// *************************************************
void initTitleScreen();
void initGameAssets();
void switchScreenChooseFighter();
void switchScreenVsBattle(int p1Cursor, int p2Cursor);
void switchScreenFight(int p1Cursor, int p2Cursor, bool unpackBackground);
void SetPlayerPalettes();
void setFighterAlternatePalette(int fighter1Index, int fighter2Index);
void setPlayer1Name(char* name);
void setPlayer2Name(char* name, int length);
void displayWinnerMedals();

///////////////////////////////
// Player 1 Fighters
///////////////////////////////
static Fighter fighterScorpion = {
	SCORPION, P1_FIGHTER, BMPSUBZERO,
	SCORPION_IDLE_FRAME_COUNT,
	SUBZERO_DIZZY_FRAME_COUNT,
	SUBZERO_WINS_FRAME_COUNT,
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
	SUBZERO_HIGH_PUNCH_FRAME_COUNT,
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
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKano = {
	KANO, P1_FIGHTER, BMPKANO,
	KANO_IDLE_FRAME_COUNT,
	KANO_DIZZY_FRAME_COUNT,
	KANO_WINS_FRAME_COUNT,
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
	KANO_HIGH_PUNCH_FRAME_COUNT,
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
	KANO_HIT_FALL_FRAME_COUNT,
	KANO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterCage = {
	CAGE, P1_FIGHTER, BMPCAGE,
	CAGE_IDLE_FRAME_COUNT,
	CAGE_DIZZY_FRAME_COUNT,
	CAGE_WINS_FRAME_COUNT,
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
	CAGE_HIGH_PUNCH_FRAME_COUNT,
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
	CAGE_HIT_FALL_FRAME_COUNT,
	CAGE_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKang = {
	KANG, P1_FIGHTER, BMPKANG,
	KANG_IDLE_FRAME_COUNT,
	KANG_DIZZY_FRAME_COUNT,
	KANG_WINS_FRAME_COUNT,
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
	KANG_HIGH_PUNCH_FRAME_COUNT,
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
	KANG_HIT_FALL_FRAME_COUNT,
	KANG_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterRaiden = {
	RAIDEN, P1_FIGHTER, BMPRAIDEN,
	RAIDEN_IDLE_FRAME_COUNT,
	RAIDEN_DIZZY_FRAME_COUNT,
	RAIDEN_WINS_FRAME_COUNT,
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
	RAIDEN_HIGH_PUNCH_FRAME_COUNT,
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
	RAIDEN_HIT_FALL_FRAME_COUNT,
	RAIDEN_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSubzero = {
	SUBZERO, P1_FIGHTER, BMPSUBZERO,
	SUBZERO_IDLE_FRAME_COUNT,
	SUBZERO_DIZZY_FRAME_COUNT,
	SUBZERO_WINS_FRAME_COUNT,
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
	SUBZERO_HIGH_PUNCH_FRAME_COUNT,
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
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSonya = {
	SONYA, P1_FIGHTER, BMPSONYA,
	SONYA_IDLE_FRAME_COUNT,
	SONYA_DIZZY_FRAME_COUNT,
	SONYA_WINS_FRAME_COUNT,
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
	SONYA_HIGH_PUNCH_FRAME_COUNT,
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
	SUBZERO_HIGH_PUNCH_FRAME_COUNT,
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
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKano2 = {
	KANO, P2_FIGHTER, BMPKANO,
	KANO_IDLE_FRAME_COUNT,
	KANO_DIZZY_FRAME_COUNT,
	KANO_WINS_FRAME_COUNT,
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
	KANO_HIGH_PUNCH_FRAME_COUNT,
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
	KANO_HIT_FALL_FRAME_COUNT,
	KANO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterCage2 = {
	CAGE, P2_FIGHTER, BMPCAGE,
	CAGE_IDLE_FRAME_COUNT,
	CAGE_DIZZY_FRAME_COUNT,
	CAGE_WINS_FRAME_COUNT,
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
	CAGE_HIGH_PUNCH_FRAME_COUNT,
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
	CAGE_HIT_FALL_FRAME_COUNT,
	CAGE_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKang2 = {
	KANG, P2_FIGHTER, BMPKANG,
	KANG_IDLE_FRAME_COUNT,
	KANG_DIZZY_FRAME_COUNT,
	KANG_WINS_FRAME_COUNT,
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
	KANG_HIGH_PUNCH_FRAME_COUNT,
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
	KANG_HIT_FALL_FRAME_COUNT,
	KANG_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterRaiden2 = {
	RAIDEN, P2_FIGHTER, BMPRAIDEN,
	RAIDEN_IDLE_FRAME_COUNT,
	RAIDEN_DIZZY_FRAME_COUNT,
	RAIDEN_WINS_FRAME_COUNT,
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
	RAIDEN_HIGH_PUNCH_FRAME_COUNT,
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
	RAIDEN_HIT_FALL_FRAME_COUNT,
	RAIDEN_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSubzero2 = {
	SUBZERO, P2_FIGHTER, BMPSUBZERO,
	SUBZERO_IDLE_FRAME_COUNT,
	SUBZERO_DIZZY_FRAME_COUNT,
	SUBZERO_WINS_FRAME_COUNT,
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
	SUBZERO_HIGH_PUNCH_FRAME_COUNT,
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
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSonya2 = {
	SONYA, P2_FIGHTER, BMPSONYA,
	SONYA_IDLE_FRAME_COUNT,
	SONYA_DIZZY_FRAME_COUNT,
	SONYA_WINS_FRAME_COUNT,
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
	SONYA_HIGH_PUNCH_FRAME_COUNT,
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
	SONYA_HIT_FALL_FRAME_COUNT,
	SONYA_HIT_SWEEP_FRAME_COUNT
};

void basicmain()
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
	int fightScale = 0;
	int barScale = 0;
	int barDirection = 1;
	int p1FlashCount = 0;
	int p2FlashCount = 0;
	struct Fighter* fighter1Ptr;
	struct Fighter* fighter2Ptr; 

	fighterCage.idleFrames = &cageIdleFrames;
	fighterCage.dizzyFrames = &cageDizzyFrames;
	fighterCage.winsFrames = &cageWinsFrames;
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
	fighterCage.punchHighFrames = &cagePunchHighFrames;
	fighterCage.kickLowFrames = &cageKickLowFrames;
	fighterCage.kickHighFrames = &cageKickHighFrames;
	fighterCage.jumpPunchFrames = &cageJumpPunchFrames;
	fighterCage.jumpKickFrames = &cageJumpKickFrames;
	fighterCage.jumpDropKickFrames = &cageJumpDropKickFrames;
	fighterCage.uppercutFrames = &cageUppercutFrames;
	fighterCage.hitLowFrames = &cageHitLowFrames;
	fighterCage.hitHighFrames = &cageHitHighFrames;
	fighterCage.hitBackFrames = &cageHitBackFrames;
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
	fighterCage2.idleFrames = &cageIdleFrames;
	fighterCage2.dizzyFrames = &cageDizzyFrames;
	fighterCage2.winsFrames = &cageWinsFrames;
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
	fighterCage2.punchHighFrames = &cagePunchHighFrames;
	fighterCage2.kickLowFrames = &cageKickLowFrames;
	fighterCage2.kickHighFrames = &cageKickHighFrames;
	fighterCage2.jumpPunchFrames = &cageJumpPunchFrames;
	fighterCage2.jumpKickFrames = &cageJumpKickFrames;
	fighterCage2.jumpDropKickFrames = &cageJumpDropKickFrames;
	fighterCage2.uppercutFrames = &cageUppercutFrames;
	fighterCage2.hitLowFrames = &cageHitLowFrames;
	fighterCage2.hitHighFrames = &cageHitHighFrames;
	fighterCage2.hitBackFrames = &cageHitBackFrames;
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
	//Kano
	fighterKano.idleFrames = &kanoIdleFrames;
	fighterKano.dizzyFrames = &kanoDizzyFrames;
	fighterKano.winsFrames = &kanoWinsFrames;
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
	fighterKano.punchHighFrames = &kanoPunchHighFrames;
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
	fighterKano.hitLowFrames = &kanoHitLowFrames;
	fighterKano.hitHighFrames = &kanoHitHighFrames;
	fighterKano.hitBackFrames = &kanoHitBackFrames;
	fighterKano.hitFallFrames = &kanoHitFallFrames;
	fighterKano.hitSweepFrames = &kanoHitSweepFrames;
	fighterKano.kipUpFrames = &kanoKipUpFrames;
	fighterKano2.idleFrames = &kanoIdleFrames;
	fighterKano2.dizzyFrames = &kanoDizzyFrames;
	fighterKano2.winsFrames = &kanoWinsFrames;
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
	fighterKano2.punchHighFrames = &kanoPunchHighFrames;
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
	fighterKano2.hitLowFrames = &kanoHitLowFrames;
	fighterKano2.hitHighFrames = &kanoHitHighFrames;
	fighterKano2.hitBackFrames = &kanoHitBackFrames;
	fighterKano2.hitFallFrames = &kanoHitFallFrames;
	fighterKano2.hitSweepFrames = &kanoHitSweepFrames;
	fighterKano2.kipUpFrames = &kanoKipUpFrames;
	//Raiden
	fighterRaiden.idleFrames = &raidenIdleFrames;
	fighterRaiden.dizzyFrames = &raidenDizzyFrames;
	fighterRaiden.winsFrames = &raidenWinsFrames;
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
	fighterRaiden.punchHighFrames = &raidenPunchHighFrames;
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
	fighterRaiden.kipUpFrames = &raidenKipUpFrames;
	fighterRaiden.hitLowFrames = &raidenHitLowFrames;
	fighterRaiden.hitHighFrames = &raidenHitHighFrames;
	fighterRaiden.hitBackFrames = &raidenHitBackFrames;
	fighterRaiden.hitFallFrames = &raidenHitFallFrames;
	fighterRaiden.hitSweepFrames = &raidenHitSweepFrames;
	fighterRaiden2.idleFrames = &raidenIdleFrames;
	fighterRaiden2.dizzyFrames = &raidenDizzyFrames;
	fighterRaiden2.winsFrames = &raidenWinsFrames;
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
	fighterRaiden2.punchHighFrames = &raidenPunchHighFrames;
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
	fighterRaiden2.kipUpFrames = &raidenKipUpFrames;
	fighterRaiden2.hitLowFrames = &raidenHitLowFrames;
	fighterRaiden2.hitHighFrames = &raidenHitHighFrames;
	fighterRaiden2.hitBackFrames = &raidenHitBackFrames;
	fighterRaiden2.hitFallFrames = &raidenHitFallFrames;
	fighterRaiden2.hitSweepFrames = &raidenHitSweepFrames;
	//Liu Kang
	fighterKang.idleFrames = &kangIdleFrames;
	fighterKang.dizzyFrames = &kangDizzyFrames;
	fighterKang.winsFrames = &kangWinsFrames;
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
	fighterKang.punchHighFrames = &kangPunchHighFrames;
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
	fighterKang.hitLowFrames = &kangHitLowFrames;
	fighterKang.hitHighFrames = &kangHitHighFrames;
	fighterKang.hitBackFrames = &kangHitBackFrames;
	fighterKang.hitFallFrames = &kangHitFallFrames;
	fighterKang.hitSweepFrames = &kangHitSweepFrames;
	fighterKang2.idleFrames = &kangIdleFrames;
	fighterKang2.dizzyFrames = &kangDizzyFrames;
	fighterKang2.winsFrames = &kangWinsFrames;
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
	fighterKang2.punchHighFrames = &kangPunchHighFrames;
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
	fighterKang2.hitLowFrames = &kangHitLowFrames;
	fighterKang2.hitHighFrames = &kangHitHighFrames;
	fighterKang2.hitBackFrames = &kangHitBackFrames;
	fighterKang2.hitFallFrames = &kangHitFallFrames;
	fighterKang2.hitSweepFrames = &kangHitSweepFrames;
	//Scorpion
	fighterScorpion.idleFrames = &scorpionIdleFrames;
	fighterScorpion.dizzyFrames = &subzeroDizzyFrames;
	fighterScorpion.winsFrames = &subzeroWinsFrames;
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
	fighterScorpion.punchHighFrames = &subzeroPunchHighFrames;
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
	fighterScorpion.hitLowFrames = &subzeroHitLowFrames;
	fighterScorpion.hitHighFrames = &subzeroHitHighFrames;
	fighterScorpion.hitBackFrames = &subzeroHitBackFrames;
	fighterScorpion.hitFallFrames = &subzeroHitFallFrames;
	fighterScorpion.hitSweepFrames = &subzeroHitSweepFrames;
	fighterScorpion2.idleFrames = &scorpionIdleFrames;
	fighterScorpion2.dizzyFrames = &subzeroDizzyFrames;
	fighterScorpion2.winsFrames = &subzeroWinsFrames;
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
	fighterScorpion2.punchHighFrames = &subzeroPunchHighFrames;
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
	fighterScorpion2.hitLowFrames = &subzeroHitLowFrames;
	fighterScorpion2.hitHighFrames = &subzeroHitHighFrames;
	fighterScorpion2.hitBackFrames = &subzeroHitBackFrames;
	fighterScorpion2.hitFallFrames = &subzeroHitFallFrames;
	fighterScorpion2.hitSweepFrames = &subzeroHitSweepFrames;
	//Sub-Zero
	fighterSubzero.idleFrames = &subzeroIdleFrames;
	fighterSubzero.dizzyFrames = &subzeroDizzyFrames;
	fighterSubzero.winsFrames = &subzeroWinsFrames;
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
	fighterSubzero.punchHighFrames = &subzeroPunchHighFrames;
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
	fighterSubzero.hitLowFrames = &subzeroHitLowFrames;
	fighterSubzero.hitHighFrames = &subzeroHitHighFrames;
	fighterSubzero.hitBackFrames = &subzeroHitBackFrames;
	fighterSubzero.hitFallFrames = &subzeroHitFallFrames;
	fighterSubzero.hitSweepFrames = &subzeroHitSweepFrames;
	fighterSubzero2.idleFrames = &subzeroIdleFrames;
	fighterSubzero2.dizzyFrames = &subzeroDizzyFrames;
	fighterSubzero2.winsFrames = &subzeroWinsFrames;
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
	fighterSubzero2.punchHighFrames = &subzeroPunchHighFrames;
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
	fighterSubzero2.hitLowFrames = &subzeroHitLowFrames;
	fighterSubzero2.hitHighFrames = &subzeroHitHighFrames;
	fighterSubzero2.hitBackFrames = &subzeroHitBackFrames;
	fighterSubzero2.hitFallFrames = &subzeroHitFallFrames;
	fighterSubzero2.hitSweepFrames = &subzeroHitSweepFrames;
	//Sonya
	fighterSonya.idleFrames = &sonyaIdleFrames;
	fighterSonya.dizzyFrames = &sonyaDizzyFrames;
	fighterSonya.winsFrames = &sonyaWinsFrames;
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
	fighterSonya.punchHighFrames = &sonyaPunchHighFrames;
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
	fighterSonya.hitLowFrames = &sonyaHitLowFrames;
	fighterSonya.hitHighFrames = &sonyaHitHighFrames;
	fighterSonya.hitBackFrames = &sonyaHitBackFrames;
	fighterSonya.hitFallFrames = &sonyaHitFallFrames;
	fighterSonya.hitSweepFrames = &sonyaHitSweepFrames;
	fighterSonya2.idleFrames = &sonyaIdleFrames;
	fighterSonya2.dizzyFrames = &sonyaDizzyFrames;
	fighterSonya2.winsFrames = &sonyaWinsFrames;
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
	fighterSonya2.punchHighFrames = &sonyaPunchHighFrames;
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
	fighterSonya2.hitLowFrames = &sonyaHitLowFrames;
	fighterSonya2.hitHighFrames = &sonyaHitHighFrames;
	fighterSonya2.hitBackFrames = &sonyaHitBackFrames;
	fighterSonya2.hitFallFrames = &sonyaHitFallFrames;
	fighterSonya2.hitSweepFrames = &sonyaHitSweepFrames;

	unsigned short bg_color = (0 << 11) + (8 << 5) + 0;  //(red << 11) + (blue << 5) + green
	*(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.
	rapDebugSetXY(5,20);
	initTitleScreen();
	
	//Main game loop
	while(1)
	{
		int delta = rapTicks - lastTicks;
		lastTicks = rapTicks;

		if (onTitleScreen)
		{
			/////////////////////////////////////////
			// Attract Mode
			/////////////////////////////////////////
			if (!fadedIn)
			{
				fadedIn = true;

				for (int i = 0; i < 60; i++)
				{
					rapFadeClut(0,256,(int *)(int)(void *)(BMP_TITLESCREEN_clut));
					jsfVsync(0); 
				}
				
				//sfxIntro(&soundHandler);
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
					//fighterStartUp();
					switchScreenChooseFighter();
					musicTitle(&soundHandler);
					//initGameAssets();
				}
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
					fighterUpdateIdle(delta, &fighterCage, &cageAnimator, cageIdleFrames);
					break;
				case 1:
					//Kano
					fighterUpdateIdle(delta, &fighterKano, &kanoAnimator, kanoIdleFrames);
					break;
				case 2:
					//Sub-Zero
					fighterUpdateIdle(delta, &fighterSubzero, &subzeroAnimator, subzeroIdleFrames);
					break;
				case 3:
					//Sonya
					fighterUpdateIdle(delta, &fighterSonya, &sonyaAnimator, sonyaIdleFrames);
					break;
				case 4:
					//Raiden
					fighterUpdateIdle(delta, &fighterRaiden, &raidenAnimator, raidenIdleFrames);
					updateSpriteAnimator(&lightningAnimator, lightningFrames, 30, true, true);
					break;
				case 5:
					//Liu Kang
					fighterUpdateIdle(delta, &fighterKang, &kangAnimator, kangIdleFrames);
					break;
				case 6:
					//Scorpion
					fighterUpdateIdle(delta, &fighterScorpion, &scorpionAnimator, scorpionIdleFrames);
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
					fighterUpdateIdle(delta, &fighterCage2, &cageAnimator2, cageIdleFrames);
					break;
				case 1:
					//Kano
					fighterUpdateIdle(delta, &fighterKano2, &kanoAnimator2, kanoIdleFrames);
					break;
				case 2:
					//Sub-Zero
					fighterUpdateIdle(delta, &fighterSubzero2, &subzeroAnimator2, subzeroIdleFrames);
					break;
				case 3:
					//Sonya
					fighterUpdateIdle(delta, &fighterSonya2, &sonyaAnimator2, sonyaIdleFrames);
					break;
				case 4:
					//Raiden
					fighterUpdateIdle(delta, &fighterRaiden2, &raidenAnimator2, raidenIdleFrames);
					updateSpriteAnimator(&lightning2Animator, lightningFrames, 30, true, true);
					break;
				case 5:
					//Liu Kang
					fighterUpdateIdle(delta, &fighterKang2, &kangAnimator2, kangIdleFrames);
					break;
				case 6:
					//Scorpion
					fighterUpdateIdle(delta, &fighterScorpion2, &scorpionAnimator2, scorpionIdleFrames);
					break;
			}

			if ((pad1 & JAGPAD_C || pad1 & JAGPAD_B || pad1 & JAGPAD_A) && p1Selected == -1)
			{
				p1Selected = p1Cursor;
				sprite[P1_CURSOR].active = R_is_inactive;
				myTicks = rapTicks;
				sfxSelected(&soundHandler);

				switch (p1Cursor)
				{
					case 0:
						sfxJohnnyCage(&soundHandler, true);
						fighter1Ptr = &fighterCage;
						break;
					case 1:
						sfxKano(&soundHandler, true);
						fighter1Ptr = &fighterKano;
						break;
					case 2:
						sfxSubzero(&soundHandler, true);
						fighter1Ptr = &fighterSubzero;
						break;
					case 3:
						sfxSonya(&soundHandler, true);
						fighter1Ptr = &fighterSonya;
						break;
					case 4:
						sfxRaiden(&soundHandler, true);
						fighter1Ptr = &fighterRaiden;
						break;
					case 5:
						sfxLiuKang(&soundHandler, true);
						fighter1Ptr = &fighterKang;
						break;
					case 6:
						sfxScorpion(&soundHandler, true);
						fighter1Ptr = &fighterScorpion;
						break;
				}
			}

			if ((pad2 & JAGPAD_C || pad2 & JAGPAD_B || pad2 & JAGPAD_A) && p2Selected == -1)
			{
				p2Selected = p2Cursor;
				sprite[P2_CURSOR].active = R_is_inactive;
				myTicks = rapTicks;
				sfxSelected(&soundHandler);

				switch (p2Cursor)
				{
					case 0:
						sfxJohnnyCage(&soundHandler, false);
						fighter2Ptr = &fighterCage2;
						break;
					case 1:
						sfxKano(&soundHandler, false);
						fighter2Ptr = &fighterKano2;
						break;
					case 2:
						sfxSubzero(&soundHandler, false);
						fighter2Ptr = &fighterSubzero2;
						break;
					case 3:
						sfxSonya(&soundHandler, false);
						fighter2Ptr = &fighterSonya2;
						break;
					case 4:
						sfxRaiden(&soundHandler, false);
						fighter2Ptr = &fighterRaiden2;
						break;
					case 5:
						sfxLiuKang(&soundHandler, false);
						fighter2Ptr = &fighterKang2;
						break;
					case 6:
						sfxScorpion(&soundHandler, false);
						fighter2Ptr = &fighterScorpion2;
						break;
				}
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
				switchScreenFight(p1Cursor, p2Cursor, true);
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

			displayWinnerMedals();		

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
				switchScreenFight(p1Cursor, p2Cursor, false);
			}

			if (sleepCheck())
			{
				//we're sleeping, so just loop again.
				continue;
			}

			//////////////////////////////////////
			// Player 1 fighter
			/////////////////////////////////////
			switch (p1Cursor)
			{
				case 0:
					//Johnny Cage
					fighterUpdate(delta, &fighterCage, &cageAnimator);
					break;
				case 1:
					//Kano
					fighterUpdate(delta, &fighterKano, &kanoAnimator);
					break;
				case 2:
					//Sub-Zero
					fighterUpdate(delta, &fighterSubzero, &subzeroAnimator);
					break;
				case 3:
					//Sonya
					fighterUpdate(delta, &fighterSonya, &sonyaAnimator);
					break;
				case 4:
					//Raiden
					fighterUpdate(delta, &fighterRaiden, &raidenAnimator);
					//updateSpriteAnimator(&lightningAnimator, lightningFrames, 30, true, true);
					break;
				case 5:
					//Liu Kang
					fighterUpdate(delta, &fighterKang, &kangAnimator);
					break;
				case 6:
					//Scorpion
					fighterUpdate(delta, &fighterScorpion, &scorpionAnimator);
					break;
			}
			
			//////////////////////////////////////
			// Player 2 fighter
			/////////////////////////////////////
			switch (p2Cursor)
			{
				case 0:
					//Johnny Cage
					fighterUpdate(delta, &fighterCage2, &cageAnimator2);
					break;
				case 1:
					//Kano
					fighterUpdate(delta, &fighterKano2, &kanoAnimator2);
					break;
				case 2:
					//Sub-Zero
					fighterUpdate(delta, &fighterSubzero2, &subzeroAnimator2);
					break;
				case 3:
					//Sonya
					fighterUpdate(delta, &fighterSonya2, &sonyaAnimator2);
					break;
				case 4:
					//Raiden
					fighterUpdate(delta, &fighterRaiden2, &raidenAnimator2);
					//updateSpriteAnimator(&lightning2Animator, lightningFrames, 30, true, true);
					break;
				case 5:
					//Liu Kang
					fighterUpdate(delta, &fighterKang2, &kangAnimator2);
					break;
				case 6:
					//Scorpion
					fighterUpdate(delta, &fighterScorpion2, &scorpionAnimator2);
					break;
			}

			fighter1Ptr->hasRoomToMove = fighterHasRoomToMove(fighter1Ptr, fighter2Ptr);
			fighter2Ptr->hasRoomToMove = fighterHasRoomToMove(fighter2Ptr, fighter1Ptr);
			fighterTurnCheck(fighter1Ptr, fighter2Ptr);
			fighterCloseCheck(fighter1Ptr, fighter2Ptr);
			fighterImpactCheck(fighter1Ptr, fighter2Ptr);			
			bgUpdate(fighter1Ptr, fighter2Ptr);

			//if (fighter1Ptr->IsWalking || fighter2Ptr->IsWalking)
			//{
				cameraUpdate(fighter1Ptr, fighter2Ptr);
			//}
			
			bloodUpdate(&soundHandler);
			spriteDelayUpdate();
			
			if(pad1 & JAGPAD_STAR)
			{
				debugMode = true;
				sleepAdd(40);
				setFrame(P1_HB_ATTACK, 48, 16, 0, 0, 0.5f, BMP_HITBOX_ATTACK);
				setFrame(P2_HB_ATTACK, 48, 16, 0, 0, 0.5f, BMP_HITBOX_ATTACK);
				//rapDebugSetVisible(DEBUG_SHOW);
			}
			else if (pad1 & JAGPAD_HASH)
			{
				debugMode = false;
				setFrame(P1_HB_ATTACK, 48, 16, 0, 0, 0.5f, BMP_HITBOX_ATTACK_OFF);
				setFrame(P2_HB_ATTACK, 48, 16, 0, 0, 0.5f, BMP_HITBOX_ATTACK_OFF);
				//rapDebugSetVisible(DEBUG_HIDE);
			}

			if (debugMode)
			{
				sleepAdd(40);

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
				js_r_textbuffer = ee_printf("%d",sprite[fighter1Ptr->spriteIndex].y_);
				rapPrint();
				rapLocate(10, 100);
				js_r_textbuffer = ee_printf("%d",fighter1Ptr->IsClose);
				rapPrint();

				rapLocate(290, 60);
				js_r_textbuffer = ee_printf("%d",fighter2Ptr->positionX);
				rapPrint();
				rapLocate(290, 70);
				js_r_textbuffer = ee_printf("%d",fighter2Ptr->positionY);
				rapPrint();
				rapLocate(290, 80);
				js_r_textbuffer = ee_printf("%d",sprite[fighter2Ptr->spriteIndex].x_);
				rapPrint();
				rapLocate(290, 90);
				js_r_textbuffer = ee_printf("%d",sprite[fighter2Ptr->spriteIndex].y_);
				rapPrint();
				rapLocate(290, 100);
				js_r_textbuffer = ee_printf("%d", fighter2Ptr->IsClose);
				rapPrint();
			}
		}
		jsfVsync(0);
	}
}

void initTitleScreen()
{
	for (int i = 0; i < 8; i++)
	{
		BLACKPALx16[i] = 0;
	}

	for (int i = 0; i < 128; i++)
	{
		BLACKPAL[i] = 0;
	}

	rapUnpack(BMP_TITLESCREEN,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND].gfxbase=(int)imageBuffer320x240;
	sprite[BACKGROUND].active=R_is_active;

	jsfLoadClut((unsigned short *)(void *)(BLACKPAL),0,256);

	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
	onTitleScreen = true;
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

	p1Cursor = 1;
	p2Cursor = 2;
	p1Selected = -1;
	p2Selected = -1;
	chooseFighterDone = false;
	rapUnpack(BMP_CHOOSEFIGHTER,(int)(int*)imageBuffer320x240);	
	sprite[BACKGROUND].gfxbase = (int)imageBuffer320x240;
	sprite[BACKGROUND].active = R_is_active;

	sprite[P1_CURSOR].active = R_is_active;
	sprite[P2_CURSOR].active = R_is_active;

	onTitleScreen = false;
	onScreenChooseFighter = true;
	onScreenVsBattle = false;
	onScreenFight = false;
	
	rapSetActiveList(0);
	jsfLoadClut((unsigned short *)(void *)(BMP_CHOOSEFIGHTER_clut),0,96);
	jsfLoadClut((unsigned short *)(void *)(BMP_P2_SELECTOR_FLASH_clut),6,16);
	jsfLoadClut((unsigned short *)(void *)(BLACKPALx16),12,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_LIGHTNING_clut),13,3);
	SetPlayerPalettes();
	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
}

void switchScreenVsBattle(int p1Cursor, int p2Cursor)
{
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

	jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_THEPIT_clut),1,16);
	sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_THEPIT;

	// rapUse16x16fontPalette(15);
	// jsfSetFontSize(0);
	// jsfSetFontIndx(1);	
	// rapLocate(100,190);
	// js_r_textbuffer=(char *)"KOMBAT ZONE:";
	// rapPrint();

	// jsfSetFontIndx(0);	
	// rapLocate(116,206);
	// js_r_textbuffer=(char *)"THE PIT";
	// rapPrint();
	
	onScreenChooseFighter = false;
	onScreenVsBattle = true;
	rapSetActiveList(1);
}

void switchScreenFight(int p1Cursor, int p2Cursor, bool unpackBackground)
{
	unsigned short bg_color = (0 << 11) + (8 << 5) + 0;  //(red << 11) + (blue << 5) + green
	*(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.

	if (unpackBackground)
	{
		rapUnpack(BMP_PIT_MOON,(int)(int*)imageBuffer320x240);
		rapUnpack(BMP_PIT_BACKGROUND,(int)(int*)imageBuffer);
	}

	sprite[STAGE_PIT_MOON].gfxbase=(int)imageBuffer320x240;
	sprite[STAGE_PIT_MOON].active=R_is_active;
	sprite[STAGE_PIT_BACKGROUND].gfxbase=(int)imageBuffer;
	sprite[STAGE_PIT_BACKGROUND].active=R_is_active;

	jsfLoadClut((unsigned short *)(void *)(BMP_PIT_BACKGROUND_clut),0,64);
	jsfLoadClut((unsigned short *)(void *)(BMP_PIT_MOON_clut),4,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_PIT_CLOUDS1_clut),5,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_MATCH_clut),11,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_HUD_clut),12,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_LIGHTNING_clut),13,3);
	jsfLoadClut((unsigned short *)(void *)(BMP_BLOOD_clut),13,16);

	switch (p1Cursor)
	{
		case 0:
			//Johnny Cage
			jsfLoadClut((unsigned short *)(void *)(BMPCAGE_clut),14,16);
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
			fighterKano.spriteIndex = P1_FIGHTER_PIT;
			kanoAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterKano, true, &soundHandler, &kanoImpactFrameLowPunch, &kanoImpactFrameHighPunch, &kanoImpactFrameLowKick, &kanoImpactFrameHighKick, &kanoImpactFrameUppercut, &kanoImpactFrameSweep, &kanoImpactFrameJumpPunch, &kanoImpactFrameJumpKick, &kanoImpactFrameRoundhouse, &kanoImpactFrameBodyPunch, &kanoImpactFrameBodyKick, &kanoImpactFrameDuckKick, &kanoImpactFrameThrow);
			fighterShow(&fighterKano);
			setPlayer1Name((char*)"KANO");
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),14,16);
			fighterSubzero.spriteIndex = P1_FIGHTER_PIT;
			subzeroAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterSubzero, true, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick, &subzeroImpactFrameRoundhouse, &subzeroImpactFrameBodyPunch, &subzeroImpactFrameBodyKick, &subzeroImpactFrameDuckKick, &subzeroImpactFrameThrow);
			fighterShow(&fighterSubzero);
			setPlayer1Name((char*)"SUB-ZERO");
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),14,16);
			fighterSonya.spriteIndex = P1_FIGHTER_PIT;
			sonyaAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterSonya, true, &soundHandler, &sonyaImpactFrameLowPunch, &sonyaImpactFrameHighPunch, &sonyaImpactFrameLowKick, &sonyaImpactFrameHighKick, &sonyaImpactFrameUppercut, &sonyaImpactFrameSweep, &sonyaImpactFrameJumpPunch, &sonyaImpactFrameJumpKick, &sonyaImpactFrameRoundhouse, &sonyaImpactFrameBodyPunch, &sonyaImpactFrameBodyKick, &sonyaImpactFrameDuckKick, &cageImpactFrameThrow);
			fighterShow(&fighterSonya);
			setPlayer1Name((char*)"SONYA");
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),14,16);
			fighterRaiden.spriteIndex = P1_FIGHTER_PIT;
			raidenAnimator.spriteIndex = P1_FIGHTER_PIT;
			//lightningAnimator.spriteIndex = P1_LIGHTNING_PIT;
			fighterInitialize(&fighterRaiden, true, &soundHandler, &raidenImpactFrameLowPunch, &raidenImpactFrameHighPunch, &raidenImpactFrameLowKick, &raidenImpactFrameHighKick, &raidenImpactFrameUppercut, &raidenImpactFrameSweep, &raidenImpactFrameJumpPunch, &raidenImpactFrameJumpKick, &raidenImpactFrameRoundhouse, &raidenImpactFrameBodyPunch, &raidenImpactFrameBodyKick, &raidenImpactFrameDuckKick, &raidenImpactFrameThrow);
			fighterShow(&fighterRaiden);
			setPlayer1Name((char*)"RAIDEN");
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),14,16);
			fighterKang.spriteIndex = P1_FIGHTER_PIT;
			kangAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterKang, true, &soundHandler, &kangImpactFrameLowPunch, &kangImpactFrameHighPunch, &kangImpactFrameLowKick, &kangImpactFrameHighKick, &kangImpactFrameUppercut, &kangImpactFrameSweep, &kangImpactFrameJumpPunch, &kangImpactFrameJumpKick, &kangImpactFrameRoundhouse, &kangImpactFrameBodyPunch, &kangImpactFrameBodyKick, &kangImpactFrameDuckKick, &kangImpactFrameThrow);
			fighterShow(&fighterKang);
			setPlayer1Name((char*)"LIU KANG");
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),14,16);
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
			fighterCage2.spriteIndex = P2_FIGHTER_PIT;
			cageAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterCage2, false, &soundHandler, &cageImpactFrameLowPunch, &cageImpactFrameHighPunch, &cageImpactFrameLowKick, &cageImpactFrameHighKick, &cageImpactFrameUppercut, &cageImpactFrameSweep, &cageImpactFrameJumpPunch, &cageImpactFrameJumpKick, &cageImpactFrameRoundhouse, &cageImpactFrameBodyPunch, &cageImpactFrameBodyKick, &cageImpactFrameDuckKick, &cageImpactFrameThrow);
			fighterShow(&fighterCage2);
			setPlayer2Name((char*)"CAGE", 4);
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),15,16);
			fighterKano2.spriteIndex = P2_FIGHTER_PIT;
			kanoAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterKano2, false, &soundHandler, &kanoImpactFrameLowPunch, &kanoImpactFrameHighPunch, &kanoImpactFrameLowKick, &kanoImpactFrameHighKick, &kanoImpactFrameUppercut, &kanoImpactFrameSweep, &kanoImpactFrameJumpPunch, &kanoImpactFrameJumpKick, &kanoImpactFrameRoundhouse, &kanoImpactFrameBodyPunch, &kanoImpactFrameBodyKick, &kanoImpactFrameDuckKick, &kanoImpactFrameThrow);
			fighterShow(&fighterKano2);
			setPlayer2Name((char*)"KANO", 4);
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),15,16);
			fighterSubzero2.spriteIndex = P2_FIGHTER_PIT;
			subzeroAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterSubzero2, false, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick, &subzeroImpactFrameRoundhouse, &subzeroImpactFrameBodyPunch, &subzeroImpactFrameBodyKick, &subzeroImpactFrameDuckKick, &subzeroImpactFrameThrow);
			fighterShow(&fighterSubzero2);
			setPlayer2Name((char*)"SUB-ZERO", 8);
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),15,16);
			fighterSonya2.spriteIndex = P2_FIGHTER_PIT;
			sonyaAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterSonya2, false, &soundHandler, &sonyaImpactFrameLowPunch, &sonyaImpactFrameHighPunch, &sonyaImpactFrameLowKick, &sonyaImpactFrameHighKick, &sonyaImpactFrameUppercut, &sonyaImpactFrameSweep, &sonyaImpactFrameJumpPunch, &sonyaImpactFrameJumpKick, &sonyaImpactFrameRoundhouse, &sonyaImpactFrameBodyPunch, &sonyaImpactFrameBodyKick, &sonyaImpactFrameDuckKick, &cageImpactFrameThrow);
			fighterShow(&fighterSonya2);
			setPlayer2Name((char*)"SONYA", 5);
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),15,16);
			fighterRaiden2.spriteIndex = P2_FIGHTER_PIT;
			raidenAnimator2.spriteIndex = P2_FIGHTER_PIT;
			//lightning2Animator.spriteIndex = P2_LIGHTNING_PIT;
			fighterInitialize(&fighterRaiden2, false, &soundHandler, &raidenImpactFrameLowPunch, &raidenImpactFrameHighPunch, &raidenImpactFrameLowKick, &raidenImpactFrameHighKick, &raidenImpactFrameUppercut, &raidenImpactFrameSweep, &raidenImpactFrameJumpPunch, &raidenImpactFrameJumpKick, &raidenImpactFrameRoundhouse, &raidenImpactFrameBodyPunch, &raidenImpactFrameBodyKick, &raidenImpactFrameDuckKick, &raidenImpactFrameThrow);
			fighterShow(&fighterRaiden2);
			sprite[LIGHTNING2].active = R_is_active;
			setPlayer2Name((char*)"RAIDEN", 6);
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),15,16);
			fighterKang2.spriteIndex = P2_FIGHTER_PIT;
			kangAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterKang2, false, &soundHandler, &kangImpactFrameLowPunch, &kangImpactFrameHighPunch, &kangImpactFrameLowKick, &kangImpactFrameHighKick, &kangImpactFrameUppercut, &kangImpactFrameSweep, &kangImpactFrameJumpPunch, &kangImpactFrameJumpKick, &kangImpactFrameRoundhouse, &kangImpactFrameBodyPunch, &kangImpactFrameBodyKick, &kangImpactFrameDuckKick, &kangImpactFrameThrow);
			fighterShow(&fighterKang2);
			setPlayer2Name((char*)"LIU KANG", 8);
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),15,16);
			fighterScorpion2.spriteIndex = P2_FIGHTER_PIT;
			scorpionAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterScorpion2, false, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick, &subzeroImpactFrameRoundhouse, &subzeroImpactFrameBodyPunch, &subzeroImpactFrameBodyKick, &subzeroImpactFrameDuckKick, &subzeroImpactFrameThrow);
			fighterShow(&fighterScorpion2);
			setPlayer2Name((char*)"SCORPION", 8);
			break;
	}

	setFighterAlternatePalette(p1Cursor, p2Cursor);
	sprite[P1_HEALTHBAR].scale_x = MAX_HEALTH;
	sprite[P2_HEALTHBAR].scale_x = MAX_HEALTH;
	sprite[P2_HEALTHBAR].x_ = 176;

	sprite[STAGE_PIT_CLOUDS1].active = R_is_active;
	//sprite[FIGHT].active = R_is_active;
	//sprite[HUD].active = R_is_active;
	// sprite[HEALTHBAR_P1].active = R_is_active;
	// sprite[HEALTHBAR_P2].active = R_is_active;
	// sprite[NAME_SCORPION_P1].active = R_is_active;
	// sprite[NAME_KANO_P2].active = R_is_active;

	rapSetActiveList(2);
	musicStage(&soundHandler);
	cameraInit(STAGE_PIT_BACKGROUND, 130, 0, 300, (int)imageBuffer);
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
	rapUse8x16fontPalette(10);
	jsfSetFontSize(1);
	jsfSetFontIndx(1);
	rapLocate(20,27);
	js_r_textbuffer=name;
	rapPrint();
}

void setPlayer2Name(char* name, int length)
{
	rapUse8x16fontPalette(10);
	jsfSetFontSize(1);
	jsfSetFontIndx(1);
	rapLocate(300 - (length * 8),27);
	js_r_textbuffer=name;
	rapPrint();
}

void displayWinnerMedals()
{
	//rapUse16x16fontPalette(10);
	jsfSetFontSize(2);
	jsfSetFontIndx(0);

	switch(matchGetFighter1Wins())
	{
		case 1:
			rapLocate(8,42);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			break;
		case 2:
			rapLocate(8,42);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			rapLocate(22,42);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			break;
		default:
			rapLocate(8,42);
			js_r_textbuffer=(char *)" ";
			rapPrint();
			rapLocate(22,42);
			js_r_textbuffer=(char *)" ";
			rapPrint();
			break;
	}

	switch(matchGetFighter2Wins())
	{
		case 1:
			rapLocate(306,42);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			break;
		case 2:
			rapLocate(292,42);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			rapLocate(306,42);
			js_r_textbuffer=(char *)"*";
			rapPrint();
			break;
		default:
			rapLocate(292,42);
			js_r_textbuffer=(char *)" ";
			rapPrint();
			rapLocate(306,42);
			js_r_textbuffer=(char *)" ";
			rapPrint();
			break;
	}
}