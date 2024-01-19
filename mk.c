#include "common.h"
#include "spritemovements.h"
#include "spriteanimator.h"
#include "fighter.h"
#include "sound.h"
#include "impactFrame.h"
#include "blood.h"
#include "spritedelay.h"
#include "sleep.h"

// -----------------------------------------------------------------------
// Global Variables
// -----------------------------------------------------------------------
static int pad1;
static int pad2;
static int imageBuffer[1072*896/4];
static int imageBuffer320x240[320*240/4];
static int BLACKPAL[128];
int p1Cursor = 1;
int p2Cursor = 2;
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
	false,  //music on/off
	1,  //sound volume
	1   //music volume
};
static SpriteAnimator cageAnimator = {
	P1_FIGHTER, 0.5f, BMPCAGE, 0, 0, 96
};

static SpriteAnimator cageAnimator2 = {
	P2_FIGHTER, 0.5f, BMPCAGE, 0, 0, 96
};

struct ImpactFrame cageImpactFrameLowPunch = {
	2, 52, 30
};
struct ImpactFrame cageImpactFrameHighPunch = {
	2, 46, 10
};
struct ImpactFrame cageImpactFrameLowKick = {
	2, 62, 30
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
struct ImpactFrame cageImpactFrameJumpPunch = {
	1, 46, 60
};
struct ImpactFrame cageImpactFrameJumpKick = {
	1, 56, 46
};
static AnimationFrame cageHitLowFrames[] = {
	{ 80, 144, 288, 432, 11 , 0, 6 },
	{ 80, 144, 368, 432, 8, 0, 6 },
	{ 80, 144, 448, 432, 16, 0, 6 },
	{ 80, 144, 368, 432, 8, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame cageHitHighFrames[] = {
	{ 80, 144, 608, 432, 5 , 0, 6 },
	{ 80, 144, 528, 432, 13, 0, 6 },
	{ 80, 144, 608, 432, 5, 0, 6 },
	{ 80, 144, 448, 432, 16, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame cageHitBackFrames[] = {
	{ 80, 144, 608, 432, 5, 0, 6 },
	{ 64, 144, 688, 432, 8, 0, 6 },
	{ 64, 144, 752, 432, 16, 0, 6 },
	{ 48, 144, 816, 432, 8, 0, 6 },
	{ 64, 144, 864, 432, 8, 0, 6 },
	{ 80, 144, 448, 432, 16, 0, 6 }
};
static AnimationFrame cageHitFallFrames[] = {
	{ 80, 144, 208, 576, 6, 0, 6 },
	{ 96, 144, 288, 576, -15, 0, 6 },
	{ 112, 112, 0, 720, -24, 0, 6 },
	{ 96, 96, 928, 928, -25, 28, 6 },
	{ 96, 96, 352, 864, -24, 48, 6 },
	{ 128, 64, 896, 870, -41, 90, 6 }
};
static AnimationFrame cageHitSweepFrames[] = {
	{ 96, 144, 384, 576, 0, 0, 5 },
	{ 96, 144, 480, 576, 0, 0, 5 },
	{ 96, 144, 576, 576, 0, 0, 5 },
	{ 96, 144, 672, 576, 0, 0, 5 },
	{ 96, 144, 768, 576, 0, 0, 5 },
	{ 96, 144, 768, 576, 0, 0, 5 }
};
static AnimationFrame cageIdleFrames[] = {
	{ 96, 144, 0, 0, 0, 0, 6 },
	{ 96, 144, 96, 0, 0, 0, 6 },
	{ 96, 144, 192, 0, 0, 0, 6 },
	{ 96, 144, 288, 0, 0, 0, 6 },
	{ 96, 144, 384, 0, 0, 0, 6 },
	{ 96, 144, 480, 0, 0, 0, 6 },
	{ 96, 144, 576, 0, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame cageWalkFrames[] = {
	{ 96, 144, 672, 0, 0, 0, 6 },
	{ 96, 144, 768, 0, 0, 0, 6 },
	{ 96, 144, 864, 0, 0, 0, 6 },
	{ 96, 144, 0, 144, 0, 0, 6 },
	{ 96, 144, 96, 144, 0, 0, 6 },
	{ 96, 144, 192, 144, 0, 0, 6 },
	{ 96, 144, 288, 144, 0, 0, 6 },
	{ 96, 144, 384, 144, 0, 0, 6 },
	{ 96, 144, 480, 144, 0, 0, 6 }
};
static AnimationFrame cageTurnFrames[] = {
	{ 80, 144, 864, 576, 7, -1, 4 },
	{ 80, 144, 944, 576, 7, -1, 4 }
};
static AnimationFrame cageJumpFrames[] = {
	{ 96, 128, 576, 160, 0, 16, 3 },
	{ 48, 112, 272, 720, 0, 0, 3 },
	{ 96, 128, 576, 160, 0, 16, 3 },
	{ 96, 128, 576, 160, 0, 16, 3 }
};
static AnimationFrame cageJumpRollFrames[] = {
	{ 64, 64, 0, 960, 0, 0, 3 },
	{ 64, 64, 64, 960, 0, 0, 3 },
	{ 64, 64, 128, 960, 0, 0, 3 },
	{ 64, 64, 192, 960, 0, 0, 3 },
	{ 64, 64, 256, 960, 0, 0, 3 },
	{ 64, 64, 320, 960, 0, 0, 3 },
	{ 64, 64, 384, 960, 0, 0, 3 }
};
static AnimationFrame cageDuckFrames[] = {
	{ 96, 144, 576, 144, 6, 0, 3 },
	{ 80, 144, 672, 144, 6, 0, 3 },
	{ 80, 144, 752, 144, 6, 0, 3 }
};
static AnimationFrame cageBlockFrames[] = {
	{ 80, 144, 832, 144, 0, 0, 3 },
	{ 80, 144, 912, 144, 0, 0, 3 },
	{ 80, 144, 0, 288, 0, 0, 3 }
};
static AnimationFrame cageBlockHitFrames[] = {
	{ 80, 144, 912, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 },
	{ 80, 144, 912, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 },
	{ 80, 144, 912, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 }
};
static AnimationFrame cageBlockDuckFrames[] = {
	{ 80, 144, 80, 288, 6, 0, 3 },
	{ 80, 144, 160, 288, 6, 0, 3 }
};
static AnimationFrame cageBlockDuckHitFrames[] = {
	{ 80, 144, 80, 288, 6, 0, 1 },
	{ 80, 144, 160, 288, 6, 0, 1 },
	{ 80, 144, 80, 288, 6, 0, 1 },
	{ 80, 144, 160, 288, 6, 0, 1 },
	{ 80, 144, 80, 288, 6, 0, 1 },
	{ 80, 144, 160, 288, 6, 0, 1 }
};
static AnimationFrame cagePunchLowFrames[] = {
	{ 80, 144, 240, 288, 15, 0, 4 },
	{ 80, 144, 320, 288, 19, 0, 4 },
	{ 112, 144, 400, 288, 18, 0, 8 },
	{ 80, 144, 320, 288, 19, 0, 4 },
	{ 80, 144, 240, 288, 15, 0, 4 }
};
static AnimationFrame cagePunchHighFrames[] = {
	{ 80, 144, 240, 288, 15, 0, 4 },
	{ 80, 144, 320, 288, 19, 0, 4 },
	{ 96, 144, 688, 288, 31, 0, 8 },
	{ 80, 144, 320, 288, 19, 0, 4 },
	{ 80, 144, 240, 288, 15, 0, 4 }
};
static AnimationFrame cageKickLowFrames[] = {
	{ 48, 144, 880, 288, 40, 0, 4 },
	{ 96, 144, 928, 288, 41, 0, 4 },
	{ 128, 144, 0, 432, 33, 0, 8 },
	{ 96, 144, 928, 288, 41, 0, 4 },
	{ 48, 144, 880, 288, 40, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 0, 0, 0, 0, 0, 0}
};
static AnimationFrame cageKickHighFrames[] = {
	{ 48, 144, 880, 288, 40, 0, 4 },
	{ 48, 144, 128, 432, 39, 0, 4 },
	{ 96, 144, 928, 288, 41, 0, 4 },
	{ 112, 144, 176, 432, 39, 0, 8 },
	{ 96, 144, 928, 288, 41, 0, 4 },
	{ 48, 144, 128, 432, 39, 0, 4 },
	{ 48, 144, 880, 288, 40, 0, 4 }
};
static AnimationFrame cageJumpPunchFrames[] = {
	{ 64, 112, 320, 720, 0, 0, 4 },
	{ 80, 112, 384, 720, 5, 0, 24 },
	{ 80, 112, 384, 720, 5, 0, 4 }
};
static AnimationFrame cageJumpKickFrames[] = {
	{ 96, 112, 672, 720, 0, 0, 4 },
	{ 112, 112, 768, 720, 10, 14, 24 },
	{ 112, 112, 768, 720, 10, 14, 4 }
};
static AnimationFrame cageJumpDropKickFrames[] = {
	{ 96, 96, 464, 736, 0, 0, 4 },
	{ 112, 96, 560, 736, 0, 0, 24 },
	{ 112, 96, 560, 736, 0, 0, 4 }
};
static AnimationFrame cageUppercutFrames[] = {
	{ 96, 80, 448, 944, 6, 64, 4 },
	{ 96, 112, 544, 912, 2, 32, 4 },
	{ 80, 144, 640, 880, 21, 1, 4 },
	{ 64, 160, 720, 864, 28, -15, 12 },
	{ 80, 144, 784, 880, 7, 1, 4 },
	{ 80, 144, 784, 880, 7, 1, 4 }
};
static AnimationFrame cageKipUpFrames[] = {
	{ 48, 144, 928, 432, 20, 0, 5 },
	{ 48, 144, 976, 432, 19, 0, 5 },
	{ 48, 112, 208, 720, 11, 32, 5 },
	{ 96, 112, 112, 720, 0, 32, 5 },
	{ 96, 112, 112, 720, 0, 32, 5 }
};
static AnimationFrame cageSweepFrames[] = {
	{ 48, 144, 880, 288, 25, 0, 5 },
	{ 80, 144, 128, 576, 9, 0, 5 },
	{ 64, 80, 864, 944, 9, 64, 5 },
	{ 64, 64, 0, 896, 10, 80, 5 },
	{ 128, 80, 64, 880, 5, 64, 5 },
	{ 64, 96, 192, 864, 6, 48, 5 },
	{ 96, 96, 256, 864, -12, 48, 5 },
	{ 80, 144, 128, 576, 9, 0, 5 },
	{ 80, 144, 128, 576, 9, 0, 5 }
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
struct ImpactFrame kangImpactFrameJumpPunch = {
	1, 80, 60
};
struct ImpactFrame kangImpactFrameJumpKick = {
	1, 56, 46
};

static SpriteAnimator kangAnimator = {
	P1_FIGHTER, 0.5f, BMPKANG, 0, 0, 80
};

static SpriteAnimator kangAnimator2 = {
	P2_FIGHTER, 0.5f, BMPKANG, 0, 0, 80
};

static AnimationFrame kangHitLowFrames[] = {
	{ 80, 144, 304, 432, 8 , 0, 6 },
	{ 80, 144, 384, 432, 5, 0, 6 },
	{ 80, 144, 464, 432, 4, 0, 6 },
	{ 80, 144, 384, 432, 5, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangHitHighFrames[] = {
	{ 80, 144, 544, 432, 14, 0, 6 },
	{ 80, 144, 624, 432, 14, 0, 6 },
	{ 80, 144, 544, 432, 14, 0, 6 },
	{ 80, 144, 624, 432, 14, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangHitBackFrames[] = {
	{ 80, 144, 384, 432, 5, 0, 6 },
	{ 80, 144, 624, 432, 5, 0, 6 },
	{ 80, 144, 704, 432, 15, 0, 6 },
	{ 80, 144, 784, 432, 12, 0, 6 },
	{ 80, 144, 864, 432, 4, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangHitFallFrames[] = {
	{ 112, 144, 80, 576, -12, 0, 6 },
	{ 112, 128, 192, 576, -16, 16, 6 },
	{ 96, 80, 304, 576, -7, 64, 6 },
	{ 80, 80, 400, 576, -6, 64, 6 },
	{ 80, 80, 480, 576, -4, 64, 6 },
	{ 128, 32, 304, 656, -6, 115, 6 }
};
static AnimationFrame kangHitSweepFrames[] = {
	{ 80, 128, 0, 720, 8, 16, 5 },
	{ 112, 64, 592, 656, -12, 80, 5 },
	{ 80, 64, 912, 576, 0, 80, 5 },
	{ 128, 48, 704, 672, -15, 96, 5 },
	{ 96, 48, 912, 640, -10, 110, 5 },
	{ 96, 48, 912, 640, -10, 110, 5 }
};
static AnimationFrame kangIdleFrames[] = {
	{ 80, 144, 0, 0, 0, 0, 7 },
	{ 80, 144, 80, 0, 0, 0, 7 },
	{ 80, 144, 160, 0, 0, 0, 7 },
	{ 80, 144, 240, 0, 0, 0, 7 },
	{ 80, 144, 320, 0, 0, 0, 7 },
	{ 80, 144, 400, 0, 0, 0, 7 },
	{ 80, 144, 480, 0, 0, 0, 7 },
	{ 80, 144, 560, 0, 0, 0, 7 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangWalkFrames[] = {
	{ 80, 144, 640, 0, 0, 0, 6 },
	{ 80, 144, 720, 0, 0, 0, 6 },
	{ 80, 144, 800, 0, 0, 0, 6 },
	{ 80, 144, 880, 0, 0, 0, 6 },
	{ 80, 144, 0, 144, 0, 0, 6 },
	{ 80, 144, 80, 144, 0, 0, 6 },
	{ 80, 144, 160, 144, 0, 0, 6 },
	{ 80, 144, 240, 144, 0, 0, 6 },
	{ 80, 144, 320, 144, 0, 0, 6 }
};
static AnimationFrame kangTurnFrames[] = {
	{ 80, 144, 928, 720, 2, -3, 4 },
	{ 80, 144, 80, 816, 0, -4, 4 }
};
static AnimationFrame kangJumpFrames[] = {
	{ 80, 144, 224, 704, 0, 0, 3 },
	{ 80, 96, 144, 720, 0, 0, 3 },
	{ 80, 144, 224, 704, 0, 0, 3 },
	{ 80, 144, 224, 704, 0, 0, 3 }
};
static AnimationFrame kangJumpRollFrames[] = {
	{ 48, 64, 0, 960, 0, 0, 3 },
	{ 64, 64, 48, 960, 0, 0, 3 },
	{ 64, 64, 112, 960, -10, -7, 3 },
	{ 64, 64, 176, 960, -7, -3, 3 },
	{ 48, 64, 240, 960, 0, -5, 3 },
	{ 64, 64, 288, 960, 0, -6, 3 },
	{ 64, 64, 352, 960, 0, -4, 3 }
};
static AnimationFrame kangDuckFrames[] = {
	{ 80, 144, 400, 144, 0, 0, 3 },
	{ 80, 144, 480, 144, 0, 0, 3 },
	{ 80, 144, 560, 144, 0, 0, 3 }
};
static AnimationFrame kangBlockFrames[] = {
	{ 80, 144, 640, 144, 0, 0, 3 },
	{ 80, 144, 720, 144, 0, 0, 3 },
	{ 80, 144, 800, 144, 0, 0, 3 }
};
static AnimationFrame kangBlockHitFrames[] = {
	{ 80, 144, 720, 144, 0, 0, 1 },
	{ 80, 144, 800, 144, 0, 0, 1 },
	{ 80, 144, 720, 144, 0, 0, 1 },
	{ 80, 144, 800, 144, 0, 0, 1 },
	{ 80, 144, 720, 144, 0, 0, 1 },
	{ 80, 144, 800, 144, 0, 0, 1 }
};
static AnimationFrame kangBlockDuckFrames[] = {
	{ 80, 144, 880, 144, 0, 0, 3 },
	{ 80, 144, 0, 288, 0, 0, 3 }
};
static AnimationFrame kangBlockDuckHitFrames[] = {
	{ 80, 144, 880, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 },
	{ 80, 144, 880, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 },
	{ 80, 144, 880, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 }
};
static AnimationFrame kangPunchLowFrames[] = {
	{ 80, 144, 80, 288, 8, 0, 4 },
	{ 80, 144, 160, 288, 11, 0, 4 },
	{ 112, 144, 240, 288, 12, 0, 8 },
	{ 80, 144, 160, 288, 11, 0, 4 },
	{ 80, 144, 80, 288, 8, 0, 4 }
};
static AnimationFrame kangPunchHighFrames[] = {
	{ 80, 144, 80, 288, 8, 0, 4 },
	{ 80, 144, 160, 288, 11, 0, 4 },
	{ 112, 144, 640, 288, 12, 0, 8 },
	{ 80, 144, 160, 288, 11, 0, 4 },
	{ 80, 144, 80, 288, 8, 0, 4 }
};
static AnimationFrame kangKickLowFrames[] = {
	{ 80, 144, 864, 288, 17, 0, 4 },
	{ 80, 144, 944, 288, 11, 0, 4 },
	{ 112, 144, 0, 432, 0, 0, 8 },
	{ 80, 144, 944, 288, 11, 0, 4 },
	{ 80, 144, 864, 288, 17, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kangKickHighFrames[] = {
	{ 80, 144, 864, 288, 17, 0, 4 },
	{ 80, 144, 944, 288, 11, 0, 4 },
	{ 80, 144, 112, 432, 8, 0, 4 },
	{ 112, 144, 192, 432, 2, 0, 8 },
	{ 80, 144, 112, 432, 8, 0, 4 },
	{ 80, 144, 944, 288, 11, 0, 4 },
	{ 80, 144, 864, 288, 17, 0, 4 }
};
static AnimationFrame kangJumpPunchFrames[] = {
	{ 96, 80, 304, 752, 0, 0, 4 },
	{ 144, 80, 400, 720, 5, 0, 24 },
	{ 144, 80, 400, 720, 5, 0, 4 }
};
static AnimationFrame kangJumpKickFrames[] = {
	{ 96, 144, 736, 720, 0, 0, 4 },
	{ 96, 144, 832, 720, 10, 0, 24 },
	{ 96, 144, 832, 720, 10, 0, 4 }
};
static AnimationFrame kangJumpDropKickFrames[] = {
	{ 80, 80, 544, 720, 0, 0, 4 },
	{ 112, 80, 624, 720, 0, 0, 24 },
	{ 112, 80, 624, 720, 0, 0, 4 }
};
static AnimationFrame kangUppercutFrames[] = {
	{ 80, 112, 416, 912, 0, 32, 4 },
	{ 80, 128, 496, 896, 0, 16, 4 },
	{ 96, 144, 592, 880, 0, 0, 4 },
	{ 64, 144, 688, 880, 0, 0, 12 },
	{ 96, 128, 752, 880, 0, 0, 4 },
	{ 96, 128, 752, 880, 0, 0, 4 }
};
static AnimationFrame kangKipUpFrames[] = {
	{ 64, 80, 80, 720, 0, 64, 5 },
	{ 112, 96, 848, 928, 0, 48, 5 },
	{ 96, 64, 304, 688, 0, 80, 5 },
	{ 48, 128, 960, 896, 28, 16, 5 },
	{ 48, 128, 960, 896, 28, 16, 5 }
};
static AnimationFrame kangSweepFrames[] = {
	{ 80, 144, 80, 288, 0, 0, 5 },
	{ 80, 80, 560, 576, 0, 64, 5 },
	{ 64, 64, 432, 656, 0, 80, 5 },
	{ 96, 64, 496, 656, 0, 80, 5 },
	{ 128, 64, 640, 576, 0, 80, 5 },
	{ 48, 96, 768, 576, 3, 74, 5 },
	{ 96, 96, 816, 576, -11, 48, 5 },
	{ 80, 144, 80, 288, 0, 0, 5 },
	{ 80, 144, 80, 288, 0, 0, 5 }
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
struct ImpactFrame raidenImpactFrameJumpPunch = {
	1, 46, 50
};
struct ImpactFrame raidenImpactFrameJumpKick = {
	1, 70, 46
};
static SpriteAnimator raidenAnimator = {
	P1_FIGHTER, 0.5f, BMPRAIDEN, 0, 0, 80
};

static SpriteAnimator raidenAnimator2 = {
	P2_FIGHTER, 0.5f, BMPRAIDEN, 0, 0, 80
};

static AnimationFrame raidenHitLowFrames[] = {
	{ 80, 144, 224, 432, 0 , 0, 6 },
	{ 80, 144, 304, 432, 0, 0, 6 },
	{ 80, 144, 384, 432, 0, 0, 6 },
	{ 80, 144, 304, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenHitHighFrames[] = {
	{ 80, 144, 464, 432, 0, 0, 6 },
	{ 80, 144, 544, 432, 0, 0, 6 },
	{ 80, 144, 464, 432, 0, 0, 6 },
	{ 80, 144, 544, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenHitBackFrames[] = {
	{ 80, 144, 464, 432, 0, 0, 6 },
	{ 80, 144, 624, 432, 0, 0, 6 },
	{ 80, 144, 704, 432, 0, 0, 6 },
	{ 64, 144, 784, 432, 0, 0, 6 },
	{ 48, 144, 864, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenHitFallFrames[] = {
	{ 96, 128, 80, 592, -14, 16, 6 },
	{ 112, 80, 176, 640, -16, 64, 6 },
	{ 112, 64, 288, 656, -19, 80, 6 },
	{ 112, 64, 288, 656, -19, 80, 6 },
	{ 112, 64, 288, 656, -19, 80, 6 },
	{ 128, 32, 624, 688, -29, 112, 6 }
};
static AnimationFrame raidenHitSweepFrames[] = {
	{ 80, 112, 336, 720, 0, 32, 5 },
	{ 48, 96, 416, 736, 16, 48, 5 },
	{ 80, 80, 464, 752, -4, 57, 5 },
	{ 112, 64, 544, 768, -16, 73, 5 },
	{ 112, 64, 496, 576, -15, 100, 5 },
	{ 112, 64, 496, 576, -15, 100, 5 }
};
static AnimationFrame raidenIdleFrames[] = {
	{ 80, 144, 0, 0, 0, 0, 6 },
	{ 80, 144, 80, 0, 0, 0, 6 },
	{ 80, 144, 160, 0, 0, 0, 6 },
	{ 80, 144, 240, 0, 0, 0, 6 },
	{ 80, 144, 320, 0, 0, 0, 6 },
	{ 80, 144, 400, 0, 0, 0, 6 },
	{ 80, 144, 480, 0, 0, 0, 6 },
	{ 80, 144, 560, 0, 0, 0, 6 },
	{ 80, 144, 640, 0, 0, 0, 6 },
	{ 80, 144, 720, 0, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenWalkFrames[] = {
	{ 80, 144, 800, 0, 0, 0, 6 },
	{ 80, 144, 880, 0, 0, 0, 6 },
	{ 80, 144, 0, 144, 0, 0, 6 },
	{ 80, 144, 80, 144, 0, 0, 6 },
	{ 80, 144, 160, 144, 0, 0, 6 },
	{ 80, 144, 240, 144, 0, 0, 6 },
	{ 80, 144, 320, 144, 0, 0, 6 },
	{ 80, 144, 400, 144, 0, 0, 6 },
	{ 80, 144, 480, 144, 0, 0, 6 }
};
static AnimationFrame raidenTurnFrames[] = {
	{ 80, 144, 0, 1024, 6, -2, 4 },
	{ 80, 144, 80, 1024, 6, -2, 4 }
};
static AnimationFrame raidenJumpFrames[] = {
	{ 80, 144, 656, 720, 0, 0, 3 },
	{ 64, 112, 736, 720, 0, 0, 3 },
	{ 80, 144, 656, 720, 0, 0, 3 },
	{ 80, 144, 656, 720, 0, 0, 3 }
};
static AnimationFrame raidenJumpRollFrames[] = {
	{ 80, 80, 0, 944, 0, 0, 3 },
	{ 80, 80, 80, 944, 0, 0, 3 },
	{ 80, 80, 160, 944, 0, 0, 3 },
	{ 80, 80, 240, 944, 0, 0, 3 },
	{ 64, 64, 320, 960, 0, 0, 3 },
	{ 64, 64, 400, 960, 0, 0, 3 },
	{ 80, 64, 480, 960, 0, 0, 3 }
};
static AnimationFrame raidenDuckFrames[] = {
	{ 80, 144, 560, 144, 0, 0, 3 },
	{ 80, 144, 640, 144, 0, 0, 3 },
	{ 80, 144, 720, 144, 0, 0, 3 }
};
static AnimationFrame raidenBlockFrames[] = {
	{ 80, 144, 800, 144, 0, 0, 3 },
	{ 80, 144, 880, 144, 0, 0, 3 },
	{ 80, 144, 0, 288, 0, 0, 3 }
};
static AnimationFrame raidenBlockHitFrames[] = {
	{ 80, 144, 880, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 },
	{ 80, 144, 880, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 },
	{ 80, 144, 880, 144, 0, 0, 1 },
	{ 80, 144, 0, 288, 0, 0, 1 }
};
static AnimationFrame raidenBlockDuckFrames[] = {
	{ 80, 144, 80, 288, 0, 0, 3 },
	{ 80, 144, 160, 288, 0, 0, 3 }
};
static AnimationFrame raidenBlockDuckHitFrames[] = {
	{ 80, 144, 80, 288, 0, 0, 1 },
	{ 80, 144, 160, 288, 0, 0, 1 },
	{ 80, 144, 80, 288, 0, 0, 1 },
	{ 80, 144, 160, 288, 0, 0, 1 },
	{ 80, 144, 80, 288, 0, 0, 1 },
	{ 80, 144, 160, 288, 0, 0, 1 }
};
static AnimationFrame raidenPunchLowFrames[] = {
	{ 80, 144, 240, 288, 3, 0, 4 },
	{ 80, 144, 320, 288, 4, 0, 4 },
	{ 112, 144, 400, 288, 5, 0, 8 },
	{ 80, 144, 320, 288, 4, 0, 4 },
	{ 80, 144, 240, 288, 3, 0, 4 }
};
static AnimationFrame raidenPunchHighFrames[] = {
	{ 80, 144, 240, 288, 3, 0, 4 },
	{ 80, 144, 320, 288, 4, 0, 4 },
	{ 112, 144, 736, 288, 6, 0, 8 },
	{ 80, 144, 320, 288, 4, 0, 4 },
	{ 80, 144, 240, 288, 3, 0, 4 }
};
static AnimationFrame raidenKickLowFrames[] = {
	{ 80, 144, 848, 288, 0, 0, 4 },
	{ 96, 144, 928, 288, 0, 0, 4 },
	{ 112, 144, 0, 432, 0, 0, 8 },
	{ 96, 144, 928, 288, 0, 0, 4 },
	{ 80, 144, 848, 288, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenKickHighFrames[] = {
	{ 80, 144, 848, 288, 0, 0, 4 },
	{ 96, 144, 928, 288, 0, 0, 4 },
	{ 112, 144, 112, 432, 0, 0, 8 },
	{ 96, 144, 928, 288, 0, 0, 4 },
	{ 80, 144, 848, 288, 0, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame raidenJumpPunchFrames[] = {
	{ 80, 96, 800, 720, 0, 0, 4 },
	{ 80, 80, 880, 720, 5, 0, 24 },
	{ 80, 80, 880, 720, 5, 0, 4 }
};
static AnimationFrame raidenJumpKickFrames[] = {
	{ 128, 112, 224, 832, 0, 0, 4 },
	{ 128, 128, 352, 832, 0, 0, 24 },
	{ 128, 128, 352, 832, 0, 0, 4 }
};
static AnimationFrame raidenJumpDropKickFrames[] = {
	{ 96, 96, 0, 832, 0, 0, 4 },
	{ 128, 96, 96, 832, 0, 0, 24 },
	{ 128, 96, 96, 832, 0, 0, 4 }
};
static AnimationFrame raidenUppercutFrames[] = {
	{ 80, 96, 560, 928, 2, 46, 4 },
	{ 80, 128, 640, 896, 3, 17, 4 },
	{ 112, 144, 720, 880, 0, -1, 4 },
	{ 64, 144, 832, 880, 20, 0, 12 },
	{ 80, 128, 912, 896, 5, 13, 4 },
	{ 80, 128, 912, 896, 5, 13, 4 }
};
static AnimationFrame raidenKipUpFrames[] = {
	{ 80, 96, 752, 624, 1, 47, 5 },
	{ 80, 112, 624, 576, 3, 31, 5 },
	{ 80, 144, 832, 576, 3, -1, 5 },
	{ 80, 144, 912, 576, 3, -1, 5 },
	{ 80, 144, 912, 576, 3, -1, 5 }
};
static AnimationFrame raidenSweepFrames[] = {
	{ 80, 144, 864, 432, 0, 0, 5 },
	{ 80, 112, 0, 720, -5, 32, 5 },
	{ 96, 80, 80, 753, -5, 63, 5 },
	{ 80, 64, 176, 576, -7, 86, 5 },
	{ 128, 64, 368, 576, -2, 89, 5 },
	{ 64, 96, 176, 736, -1, 53, 5 },
	{ 96, 96, 240, 736, -2, 48, 5 },
	{ 80, 144, 864, 432, 0, 0, 5 },
	{ 80, 144, 864, 432, 0, 0, 5 }
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
struct ImpactFrame subzeroImpactFrameJumpPunch = {
	1, 85, 60
};
struct ImpactFrame subzeroImpactFrameJumpKick = {
	1, 56, 46
};
static SpriteAnimator subzeroAnimator = {
	P1_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 80
};

static SpriteAnimator subzeroAnimator2 = {
	P2_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 80
};

static AnimationFrame subzeroHitLowFrames[] = {
	{ 64, 144, 272, 432, 0, 0, 8 },
	{ 80, 144, 336, 432, 0, 0, 6 },
	{ 80, 144, 416, 432, 0, 0, 6 },
	{ 80, 144, 336, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame subzeroHitHighFrames[] = {
	{ 64, 144, 496, 432, 0, 0, 6 },
	{ 80, 144, 560, 432, 0, 0, 6 },
	{ 80, 144, 640, 432, 0, 0, 6 },
	{ 80, 144, 560, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame subzeroHitBackFrames[] = {
	{ 80, 144, 336, 432, 0, 0, 6 },
	{ 48, 144, 720, 432, 8, 0, 6 },
	{ 64, 144, 768, 432, 16, 0, 6 },
	{ 64, 144, 832, 432, 8, 0, 6 },
	{ 64, 144, 272, 432, 0, 0, 8 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame subzeroHitFallFrames[] = {
	{ 112, 128, 0, 576, -12, 16, 6 },
	{ 112, 96, 112, 576, -14, 48, 6 },
	{ 80, 112, 224, 576, -10, 32, 6 },
	{ 64, 96, 304, 576, -10, 48, 6 },
	{ 64, 96, 304, 576, -10, 48, 6 },
	{ 144, 32, 368, 576, -16, 116, 6 }
};
static AnimationFrame subzeroHitSweepFrames[] = {
	{ 96, 112, 464, 624, -14, 32, 5 },
	{ 96, 64, 576, 672, -16, 52, 5 },
	{ 96, 96, 672, 640, -14, 48, 5 },
	{ 96, 64, 672, 576, -19, 80, 5 },
	{ 96, 64, 768, 576, -24, 102, 5 },
	{ 96, 64, 768, 576, -24, 102, 5 }
};
static AnimationFrame subzeroJumpPunchFrames[] = {
	{ 80, 96, 304, 672, 0, 0, 4 },
	{ 144, 80, 816, 944, 0, 0, 24 },
	{ 144, 80, 816, 944, 0, 0, 4 }
};
static AnimationFrame subzeroJumpKickFrames[] = {
	{ 80, 112, 384, 704, 0, 0, 4 },
	{ 112, 96, 144, 768, 0, 0, 24 },
	{ 112, 96, 144, 768, 0, 0, 4 }
};
static AnimationFrame subzeroJumpDropKickFrames[] = {
	{ 96, 96, 464, 736, 0, 0, 4 },
	{ 128, 96, 560, 736, 0, 0, 24 },
	{ 128, 96, 560, 736, 0, 0, 4 }
};
static AnimationFrame subzeroUppercutFrames[] = {
	{ 80, 112, 416, 912, 2, 30, 4 },
	{ 80, 128, 496, 896, 6, 14, 4 },
	{ 96, 144, 576, 880, 14, -1, 4 },
	{ 64, 160, 672, 864, 8, -17, 12 },
	{ 80, 128, 736, 896, 3, 14, 4 },
	{ 80, 128, 736, 896, 3, 14, 4 }
};
static AnimationFrame subzeroKipUpFrames[] = {
	{ 48, 64, 368, 608, 7, 80, 5 },
	{ 64, 96, 416, 608, 8, 48, 5 },
	{ 64, 48, 512, 576, 0, 96, 5 },
	{ 96, 96, 576, 576, -10, 48, 5 },
	{ 96, 96, 576, 576, -10, 48, 5 }
};
static AnimationFrame subzeroSweepFrames[] = {
	{ 64, 96, 544, 192, 0, 48, 5 },
	{ 64, 64, 768, 640, -1, 80, 5 },
	{ 64, 64, 832, 640, -2, 80, 5 },
	{ 112, 64, 864, 576, 0, 80, 5 },
	{ 128, 64, 896, 640, 0, 80, 5 },		
	{ 64, 80, 144, 672, -10, 79, 5 },
	{ 96, 80, 208, 688, -28, 74, 5 },
	{ 64, 128, 480, 160, 0, 16, 5 },
	{ 64, 128, 480, 160, 0, 16, 5 }
};
static AnimationFrame subzeroIdleFrames[] = {
	{ 80, 144, 0, 0, 0, 0, 6 },
	{ 80, 144, 80, 0, 0, 0, 6 },
	{ 80, 144, 160, 0, 0, 0, 6 },
	{ 80, 144, 240, 0, 0, 0, 6 },
	{ 80, 144, 320, 0, 0, 0, 6 },
	{ 80, 144, 400, 0, 0, 0, 6 },
	{ 80, 144, 480, 0, 0, 0, 6 },
	{ 80, 144, 560, 0, 0, 0, 6 },
	{ 80, 144, 640, 0, 0, 0, 6 },
	{ 80, 144, 720, 0, 0, 0, 6 },
	{ 80, 144, 800, 0, 0, 0, 6 },
	{ 80, 144, 880, 0, 0, 0, 6 }
};
static AnimationFrame subzeroWalkFrames[] = {
	{ 80, 144, 768, 704, 0, 0, 6 },
	{ 80, 144, 848, 704, 0, 0, 6 },
	{ 80, 144, 928, 704, 0, 0, 6 },
	{ 80, 144,   0, 144, 0, 0, 6 },
	{ 80, 144,  80, 144, 0, 0, 6 },
	{ 80, 144, 160, 144, 0, 0, 6 },
	{ 80, 144, 240, 144, 0, 0, 6 },
	{ 80, 144, 320, 144, 0, 0, 6 },
	{ 80, 144, 400, 144, 0, 0, 6 }
};
static AnimationFrame subzeroTurnFrames[] = {
	{ 64, 144, 256, 768, 6, -2, 3 },
	{ 64, 144, 320, 768, 6, -2, 3 }
};
static AnimationFrame subzeroJumpFrames[] = {
	{ 80, 144, 0, 704, 0, 0, 3 },
	{ 64, 96, 80, 704, 0, 0, 3 },
	{ 80, 144, 0, 704, 0, 0, 3 },
	{ 80, 144, 0, 704, 0, 0, 3 }
};
static AnimationFrame subzeroJumpRollFrames[] = {
	{ 48, 64, 0, 960, 0, 0, 3 },
	{ 64, 64, 48, 960, 0, 0, 3 },
	{ 64, 64, 112, 960, 0, 0, 3 },
	{ 64, 64, 176, 960, 0, 0, 3 },
	{ 48, 64, 240, 960, 0, 0, 3 },
	{ 64, 64, 288, 960, 0, 0, 3 },
	{ 64, 64, 352, 960, 0, 0, 3 }
};
static AnimationFrame subzeroDuckFrames[] = {
	{ 64, 144, 480, 144, 12, 0, 3 },
	{ 64, 144, 544, 144, 12, 0, 3 },
	{ 64, 144, 608, 144, 12, 0, 3 }
};
static AnimationFrame subzeroBlockFrames[] = {
	{ 64, 144, 672, 144, 12, 0, 3 },
	{ 64, 144, 736, 144, 12, 0, 3 },
	{ 64, 144, 800, 144, 12, 0, 3 }
};
static AnimationFrame subzeroBlockHitFrames[] = {
	{ 64, 144, 736, 144, 12, 0, 1 },
	{ 64, 144, 800, 144, 12, 0, 1 },
	{ 64, 144, 736, 144, 12, 0, 1 },
	{ 64, 144, 800, 144, 12, 0, 1 },
	{ 64, 144, 736, 144, 12, 0, 1 },
	{ 64, 144, 800, 144, 12, 0, 1 }
};
static AnimationFrame subzeroBlockDuckFrames[] = {
	{ 64, 144, 864, 144, 12, 0, 3 },
	{ 64, 144, 928, 144, 12, 0, 3 }
};
static AnimationFrame subzeroBlockDuckHitFrames[] = {
	{ 64, 144, 864, 144, 12, 0, 1 },
	{ 64, 144, 928, 144, 12, 0, 1 },
	{ 64, 144, 864, 144, 12, 0, 1 },
	{ 64, 144, 928, 144, 12, 0, 1 },
	{ 64, 144, 864, 144, 12, 0, 1 },
	{ 64, 144, 928, 144, 12, 0, 1 }
};
static AnimationFrame subzeroPunchLowFrames[] = {
	{ 80, 144, 0, 288, 8, 0, 4 },
	{ 96, 144, 80, 288, 11, 0, 4 },
	{ 112, 144, 176, 288, 12, 0, 8 },
	{ 96, 144, 80, 288, 11, 0, 4 },
	{ 80, 144, 0, 288, 8, 0, 4 }
};
static AnimationFrame subzeroPunchHighFrames[] = {
	{ 80, 144, 0, 288, 8, 0, 4 },
	{ 80, 144, 480, 288, 11, 0, 4 },
	{ 112, 144, 560, 288, 12, 0, 8 },
	{ 80, 144, 480, 288, 11, 0, 4 },
	{ 80, 144, 0, 288, 8, 0, 4 }
};
static AnimationFrame subzeroKickLowFrames[] = {
	{ 64, 144, 784, 288, 10, 0, 4 },
	{ 80, 144, 848, 288, 20, 0, 4 },
	{ 112, 144, 0, 432, 17, 0, 8 },
	{ 80, 144, 848, 288, 20, 0, 4 },
	{ 64, 144, 784, 288, 10, 0, 4 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame subzeroKickHighFrames[] = {
	{ 64, 144, 784, 288, 10, 0, 4 },
	{ 48, 144, 112, 432, 20, 0, 4 },
	{ 80, 144, 848, 288, 20, 0, 4 },
	{ 112, 144, 160, 432, 17, 0, 8 },
	{ 80, 144, 848, 288, 20, 0, 4 },
	{ 48, 144, 112, 432, 20, 0, 4 },
	{ 64, 144, 784, 288, 10, 0, 4 }
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
struct ImpactFrame sonyaImpactFrameJumpPunch = {
	1, 80, 60
};
struct ImpactFrame sonyaImpactFrameJumpKick = {
	1, 56, 46
};
static SpriteAnimator sonyaAnimator = {
	P1_FIGHTER, 0.5f, BMPSONYA, 0, 0, 80
};

static SpriteAnimator sonyaAnimator2 = {
	P2_FIGHTER, 0.5f, BMPSONYA, 0, 0, 80
};

static AnimationFrame sonyaHitLowFrames[] = {
	{ 64, 144, 880, 288, 0, 0, 6 },
	{ 80, 144, 0, 432, -6, 0, 6 },
	{ 64, 144, 880, 288, 0, 0, 6 },
	{ 80, 144, 80, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaHitHighFrames[] = {
	{ 80, 144, 160, 432, 0, 0, 6 },
	{ 80, 144, 240, 432, 0, 0, 6 },
	{ 80, 144, 320, 432, 0, 0, 6 },
	{ 80, 144, 240, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaHitBackFrames[] = {
	{ 80, 144, 80, 432, 0, 0, 6 },
	{ 80, 144, 400, 432, 8, 0, 6 },
	{ 80, 144, 480, 432, 16, 0, 6 },
	{ 80, 144, 560, 432, 8, 0, 6 },
	{ 80, 144, 640, 432, 8, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaHitFallFrames[] = {
	{ 80, 128, 0, 576, -4, 12, 6 },
	{ 112, 80, 80, 576, -8, 62, 6 },
	{ 112, 80, 192, 576, -12, 62, 6 },
	{ 64, 96, 304, 576, -14, 52, 6 },
	{ 96, 80, 880, 432, -12, 68, 6 },
	{ 128, 32, 880, 512, -16, 116, 6 }
};
static AnimationFrame sonyaHitSweepFrames[] = {
	{ 96, 112, 0, 704, -7, 32, 5 },
	{ 64, 80, 512, 576, 2, 64, 5 },
	{ 80, 80, 576, 576, 0, 64, 5 },
	{ 96, 48, 144, 656, -6, 96, 5 },
	{ 96, 64, 656, 576, -10, 102, 5 },
	{ 96, 64, 656, 576, -10, 102, 5 }
};
static AnimationFrame sonyaJumpPunchFrames[] = {
	{ 96, 80, 400, 672, 0, 0, 4 },
	{ 160, 80, 496, 672, -32, 0, 24 },
	{ 160, 80, 496, 672, -32, 0, 4 }
};
static AnimationFrame sonyaJumpKickFrames[] = {
	{ 64, 144, 928, 880, 0, 0, 4 },
	{ 80, 96, 224, 720, 0, 0, 24 },
	{ 80, 96, 224, 720, 0, 0, 4 }
};
static AnimationFrame sonyaJumpDropKickFrames[] = {
	{ 80, 80, 656, 656, 0, 0, 4 },
	{ 112, 80, 736, 656, 0, 0, 24 },
	{ 112, 80, 736, 656, 0, 0, 4 }
};
static AnimationFrame sonyaUppercutFrames[] = {
	{ 64, 80, 432, 944, 7, 62, 4 },
	{ 80, 96, 496, 928, 9, 47, 4 },
	{ 96, 144, 576, 880, 5, -1, 4 },
	{ 64, 160, 672, 864, 9, -17, 12 },
	{ 64, 128, 736, 896, 8, 15, 4 },
	{ 64, 128, 736, 896, 8, 15, 4 }
};
static AnimationFrame sonyaKipUpFrames[] = {
	{ 48, 80, 368, 576, 14, 64, 5 },
	{ 64, 48, 80, 656, 7, 96, 5 },
	{ 48, 80, 416, 576, 14, 62, 5 },
	{ 48, 96, 464, 576, 16, 46, 5 },
	{ 48, 96, 464, 576, 16, 46, 5 }
};
static AnimationFrame sonyaSweepFrames[] = {
	{ 64, 112, 176, 176, 6, 34, 5 },
	{ 64, 64, 240, 656, 0, 80, 5 },
	{ 80, 80, 752, 576, 2, 64, 5 },
	{ 112, 80, 832, 576, 2, 64, 5 },
	{ 128, 80, 96, 704, 0, 67, 5 },
	{ 64, 96, 944, 576, 0, 48, 5 },
	{ 96, 96, 304, 672, 0, 48, 5 },
	{ 96, 96, 304, 672, 0, 48, 5 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaIdleFrames[] = {
	{ 80, 144, 0, 0, 0, 0, 6 },
	{ 80, 144, 80, 0, 0, 0, 6 },
	{ 80, 144, 160, 0, 0, 0, 6 },
	{ 80, 144, 240, 0, 0, 0, 6 },
	{ 80, 144, 320, 0, 0, 0, 6 },
	{ 80, 144, 400, 0, 0, 0, 6 },
	{ 80, 144, 480, 0, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaWalkFrames[] = {
	{ 80, 144, 560, 0, 0, 0, 6 },
	{ 80, 144, 640, 0, 0, 0, 6 },
	{ 80, 144, 720, 0, 0, 0, 6 },
	{ 80, 144, 800, 0, 0, 0, 6 },
	{ 80, 144, 880, 0, 0, 0, 6 },
	{ 80, 144, 0, 144, 0, 0, 6 },
	{ 80, 144, 80, 144, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaTurnFrames[] = {
	{ 48, 144, 848, 672, 15, -2, 3 },
	{ 48, 144, 896, 672, 15, -2, 3 }
};
static AnimationFrame sonyaJumpFrames[] = {
	{ 64, 128, 800, 896, 0, 0, 3 },
	{ 64, 112, 864, 896, 0, 0, 3 },
	{ 64, 128, 800, 896, 0, 0, 3 },
	{ 64, 128, 800, 896, 0, 0, 3 }
};
static AnimationFrame sonyaJumpRollFrames[] = {
	{ 48, 80, 0, 944, 0, 0, 3 },
	{ 64, 64, 48, 960, 0, 0, 3 },
	{ 80, 48, 112, 976, 0, 0, 3 },
	{ 64, 64, 192, 960, 0, 0, 3 },
	{ 48, 80, 256, 944, 0, 0, 3 },
	{ 64, 64, 304, 960, 0, 0, 3 },
	{ 64, 48, 368, 976, 0, 0, 3 }
};
static AnimationFrame sonyaDuckFrames[] = {
	{ 80, 144, 160, 144, 0, 0, 3 },
	{ 80, 144, 240, 144, 0, 0, 3 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame sonyaBlockFrames[] = {
	{ 80, 144, 320, 144, 0, 0, 3 },
	{ 80, 144, 400, 144, 0, 0, 3 },
	{ 80, 144, 480, 144, 0, 0, 3 }
};
static AnimationFrame sonyaBlockHitFrames[] = {
	{ 80, 144, 400, 144, 0, 0, 1 },
	{ 80, 144, 480, 144, 0, 0, 1 },
	{ 80, 144, 400, 144, 0, 0, 1 },
	{ 80, 144, 480, 144, 0, 0, 1 },
	{ 80, 144, 400, 144, 0, 0, 1 },
	{ 80, 144, 480, 144, 0, 0, 1 }
};
static AnimationFrame sonyaBlockDuckFrames[] = {
	{ 80, 144, 560, 144, 0, 0, 3 },
	{ 80, 144, 640, 144, 0, 0, 3 }
};
static AnimationFrame sonyaBlockDuckHitFrames[] = {
	{ 80, 144, 560, 144, 0, 0, 1 },
	{ 80, 144, 640, 144, 0, 0, 1 },
	{ 80, 144, 560, 144, 0, 0, 1 },
	{ 80, 144, 640, 144, 0, 0, 1 },
	{ 80, 144, 560, 144, 0, 0, 1 },
	{ 80, 144, 640, 144, 0, 0, 1 }
};
static AnimationFrame sonyaPunchLowFrames[] = {
	{ 80, 144, 720, 144, 8, 0, 4 },
	{ 80, 144, 800, 144, 8, 0, 4 },
	{ 112, 144, 880, 144, 11, 0, 8 },
	{ 80, 144, 800, 144, 8, 0, 4 },
	{ 80, 144, 720, 144, 8, 0, 4 }
};
static AnimationFrame sonyaPunchHighFrames[] = {
	{ 80, 144, 720, 144, 8, 0, 4 },
	{ 80, 144, 800, 144, 8, 0, 4 },
	{ 112, 144, 192, 288, 12, 0, 8 },
	{ 80, 144, 800, 144, 8, 0, 4 },
	{ 80, 144, 720, 144, 8, 0, 4 }
};
static AnimationFrame sonyaKickLowFrames[] = {
	{ 80, 144, 416, 288, 8, 0, 4 },
	{ 80, 144, 496, 288, 27, 0, 4 },
	{ 80, 144, 576, 288, 27, 0, 4 },
	{ 112, 144, 656, 288, 19, 0, 8 },
	{ 80, 144, 576, 288, 27, 0, 4 },
	{ 80, 144, 496, 288, 27, 0, 4 },
	{ 80, 144, 416, 288, 8, 0, 4 }
};
static AnimationFrame sonyaKickHighFrames[] = {
	{ 80, 144, 416, 288, 8, 0, 4 },
	{ 80, 144, 496, 288, 27, 0, 4 },
	{ 80, 144, 576, 288, 27, 0, 4 },
	{ 112, 144, 768, 288, 19, 0, 8 },
	{ 80, 144, 576, 288, 27, 0, 4 },
	{ 80, 144, 496, 288, 27, 0, 4 },
	{ 80, 144, 416, 288, 8, 0, 4 }
};

//Scorpion animation frames
static SpriteAnimator scorpionAnimator = {
	P1_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 80
};

static SpriteAnimator scorpionAnimator2 = {
	P2_FIGHTER, 0.5f, BMPSUBZERO, 0, 0, 80
};

static AnimationFrame scorpionIdleFrames[] = {
	{ 80, 144, 0, 1024, 0, 0, 6 },
	{ 80, 144, 80, 1024, 0, 0, 6 },
	{ 80, 144, 160, 1024, 0, 0, 6 },
	{ 80, 144, 240, 1024, 0, 0, 6 },
	{ 80, 144, 320, 1024, 0, 0, 6 },
	{ 80, 144, 400, 1024, 0, 0, 6 },
	{ 80, 144, 480, 1024, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame scorpionWalkFrames[] = {
	{ 96, 144, 560, 1024, 0, 0, 6 },
	{ 96, 144, 656, 1024, 0, 0, 6 },
	{ 96, 144, 752, 1024, 0, 0, 6 },
	{ 96, 144, 848, 1024, 0, 0, 6 },
	{ 96, 144, 0, 1168, 0, 0, 6 },
	{ 96, 144, 96, 1168, 0, 0, 6 },
	{ 96, 144, 192, 1168, 0, 0, 6 },
	{ 96, 144, 288, 1168, 0, 0, 6 },
	{ 96, 144, 384, 1168, 0, 0, 6 }
};

//Kano animation frames
static SpriteAnimator kanoAnimator = {
	P1_FIGHTER, 0.5f, BMPKANO, 0, 0, 80
};

static SpriteAnimator kanoAnimator2 = {
	P2_FIGHTER, 0.5f, BMPKANO, 0, 0, 80
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
struct ImpactFrame kanoImpactFrameJumpPunch = {
	1, 46, 60
};
struct ImpactFrame kanoImpactFrameJumpKick = {
	1, 56, 46
};

static AnimationFrame kanoHitLowFrames[] = {
	{ 80, 144, 384, 432, 0, 0, 12 },
	{ 80, 144, 464, 432, 0, 0, 6 },
	{ 80, 144, 544, 432, 0, 0, 6 },
	{ 80, 144, 464, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoHitHighFrames[] = {
	{ 80, 144, 704, 432, 0, 0, 6 },
	{ 80, 144, 624, 432, 0, 0, 6 },
	{ 80, 144, 704, 432, 0, 0, 6 },
	{ 80, 144, 624, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoHitBackFrames[] = {
	{ 80, 144, 704, 432, 0, 0, 6 },
	{ 80, 144, 384, 432, 0, 0, 12 },
	{ 80, 144, 784, 432, 0, 0, 6 },
	{ 80, 144, 544, 432, 0, 0, 6 },
	{ 96, 144, 864, 432, 0, 0, 6 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoHitFallFrames[] = {
	{ 64, 144, 960, 432, 3, 0, 6 },
	{ 96, 144, 160, 576, -17, 0, 6 },
	{ 112, 96, 256, 624, -20, 48, 6 },
	{ 96, 80, 368, 640, -16, 64, 6 },
	{ 96, 64, 368, 576, -17, 80, 6 },
	{ 128, 48, 464, 672, -17, 96, 6 }
};
static AnimationFrame kanoHitSweepFrames[] = {
	{ 96, 128, 592, 592, 0, 16, 5 },
	{ 96, 64, 464, 608, 0, 80, 5 },
	{ 64, 80, 688, 640, 13, 64, 5 },
	{ 112, 48, 256, 576, -12, 96, 5 },
	{ 96, 32, 464, 576, -3, 112, 5 },
	{ 96, 32, 464, 576, -3, 112, 5 }
};
static AnimationFrame kanoIdleFrames[] = {
	{ 80, 144, 0, 0, 0, 0, 5 },
	{ 80, 144, 80, 0, 0, 0, 5 },
	{ 80, 144, 160, 0, 0, 0, 5 },
	{ 80, 144, 240, 0, 0, 0, 5 },
	{ 80, 144, 320, 0, 0, 0, 5 },
	{ 80, 144, 400, 0, 0, 0, 5 },
	{ 80, 144, 480, 0, 0, 0, 5 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 0, 0 }
};
static AnimationFrame kanoWalkFrames[] = {
	{ 80, 144, 560, 0, 0, 0, 6 },
	{ 80, 144, 640, 0, 0, 0, 6 },
	{ 80, 144, 720, 0, 0, 0, 6 },
	{ 80, 144, 800, 0, 0, 0, 6 },
	{ 80, 144, 880, 0, 0, 0, 6 },
	{ 80, 144, 0, 144, 0, 0, 6 },
	{ 80, 144, 80, 144, 0, 0, 6 },
	{ 80, 144, 160, 144, 0, 0, 6 },
	{ 80, 144, 240, 144, 0, 0, 6 }
};
static AnimationFrame kanoTurnFrames[] = {
	{ 64, 144, 832, 720, 8, -2, 4 },
	{ 64, 144, 896, 720, 8, -2, 4 }
};
static AnimationFrame kanoJumpFrames[] = {
	{ 80, 144, 0, 288, 0, 0, 3 },
	{ 80, 128, 80, 288, 0, 0, 3 },
	{ 80, 144, 0, 288, 0, 0, 3 },
	{ 80, 144, 0, 288, 0, 0, 3 }
};
static AnimationFrame kanoJumpRollFrames[] = {
	{ 64, 80, 0, 944, 0, 0, 3 },
	{ 64, 80, 80, 944, 0, 0, 3 },
	{ 64, 64, 160, 960, -10, -7, 3 },
	{ 64, 64, 240, 960, -7, -3, 3 },
	{ 80, 80, 304, 944, 0, -5, 3 },
	{ 80, 80, 384, 944, 0, -6, 3 },
	{ 80, 64, 464, 960, 0, -4, 3 }
};
static AnimationFrame kanoDuckFrames[] = {
	{ 80, 144, 320, 144, 0, 0, 3 },
	{ 80, 144, 400, 144, 0, 0, 3 },
	{ 80, 144, 480, 144, 0, 0, 3 }
};
static AnimationFrame kanoBlockFrames[] = {
	{ 80, 144, 560, 144, 0, 0, 3 },
	{ 80, 144, 640, 144, 0, 0, 3 },
	{ 80, 144, 720, 144, 0, 0, 3 }
};
static AnimationFrame kanoBlockHitFrames[] = {
	{ 80, 144, 640, 144, 0, 0, 1 },
	{ 80, 144, 720, 144, 0, 0, 1 },
	{ 80, 144, 640, 144, 0, 0, 1 },
	{ 80, 144, 720, 144, 0, 0, 1 },
	{ 80, 144, 640, 144, 0, 0, 1 },
	{ 80, 144, 720, 144, 0, 0, 1 }
};
static AnimationFrame kanoBlockDuckFrames[] = {
	{ 80, 144, 800, 144, 0, 0, 3 },
	{ 80, 144, 880, 144, 0, 0, 3 }
};
static AnimationFrame kanoBlockDuckHitFrames[] = {
	{ 80, 144, 800, 144, 0, 0, 1 },
	{ 80, 144, 880, 144, 0, 0, 1 },
	{ 80, 144, 800, 144, 0, 0, 1 },
	{ 80, 144, 880, 144, 0, 0, 1 },
	{ 80, 144, 800, 144, 0, 0, 1 },
	{ 80, 144, 880, 144, 0, 0, 1 }
};
static AnimationFrame kanoPunchLowFrames[] = {
	{ 80, 144, 160, 288, 3, 0, 4 },
	{ 80, 144, 240, 288, 15, 0, 4 },
	{ 112, 144, 320, 288, 6, 0, 8 },
	{ 80, 144, 240, 288, 15, 0, 4 },
	{ 80, 144, 160, 288, 3, 0, 4 }
};
static AnimationFrame kanoPunchHighFrames[] = {
	{ 80, 144, 160, 288, 3, 0, 4 },
	{ 80, 144, 240, 288, 15, 0, 4 },
	{ 112, 144, 656, 288, 17, 0, 8 },
	{ 80, 144, 240, 288, 15, 0, 4 },
	{ 80, 144, 160, 288, 3, 0, 4 }
};
static AnimationFrame kanoKickLowFrames[] = {
	{ 80, 144, 0, 432, 0, 0, 4 },
	{ 80, 144, 80, 432, 0, 0, 4 },
	{ 112, 144, 160, 432, 0, 0, 4 },
	{ 112, 144, 880, 288, 0, 0, 8 },
	{ 80, 144, 160, 432, 0, 0, 4 },
	{ 80, 144, 80, 432, 0, 0, 4 },
	{ 80, 144, 0, 432, 0, 0, 4 }
};
static AnimationFrame kanoKickHighFrames[] = {
	{ 80, 144, 0, 432, 0, 0, 4 },
	{ 80, 144, 80, 432, 0, 0, 4 },
	{ 112, 144, 160, 432, 0, 0, 4 },
	{ 112, 144, 272, 432, 0, 0, 8 },
	{ 80, 144, 160, 432, 0, 0, 4 },
	{ 80, 144, 80, 432, 0, 0, 4 },
	{ 80, 144, 0, 432, 0, 0, 4 }
};
static AnimationFrame kanoJumpPunchFrames[] = {
	{ 64, 96, 320, 720, 0, 0, 4 },
	{ 80, 96, 384, 720, 5, 0, 24 },
	{ 80, 96, 384, 720, 5, 0, 4 }
};
static AnimationFrame kanoJumpKickFrames[] = {
	{ 64, 144, 656, 720, 0, 0, 4 },
	{ 112, 112, 720, 720, 5, 0, 24 },
	{ 112, 112, 720, 720, 5, 0, 4 }
};
static AnimationFrame kanoJumpDropKickFrames[] = {
	{ 64, 96, 464, 720, 0, 0, 4 },
	{ 128, 96, 528, 720, 0, 0, 24 },
	{ 128, 96, 528, 720, 0, 0, 4 }
};
static AnimationFrame kanoUppercutFrames[] = {
	{ 96, 96, 544, 928, -10, 48, 4 },
	{ 64, 144, 640, 880, 10, 0, 4 },
	{ 96, 144, 704, 880, 13, 2, 4 },
	{ 80, 144, 800, 880, 21, 2, 12 },
	{ 80, 144, 880, 880, 5, 0, 4 },
	{ 80, 144, 880, 880, 5, 0, 4 }
};
static AnimationFrame kanoKipUpFrames[] = {
	{ 112, 48, 256, 576, 0, 96, 5 },
	{ 48, 96, 752, 624, 26, 42, 5 },
	{ 48, 64, 688, 576, 16, 77, 5 },
	{ 64, 112, 800, 608, 13, 33, 5 },
	{ 80, 144, 864, 576, 13, 0, 5 }
};
static AnimationFrame kanoSweepFrames[] = {
	{ 112, 128, 208, 720, -11, 12, 5 },
	{ 80, 80, 944, 640, 0, 64, 5 },
	{ 80, 64, 944, 576, 0, 80, 5 },
	{ 112, 64, 0, 720, 0, 80, 5 },
	{ 112, 80, 0, 784, 0, 82, 5 },
	{ 96, 96, 112, 720, -23, 48, 5 },
	{ 112, 128, 208, 720, -11, 12, 5 },
	{ 80, 144, 160, 288, 0, 0, 5 },
	{ 80, 144, 160, 288, 0, 0, 5 },
};

static SpriteAnimator lightningAnimator = {
	LIGHTNING, 0.5f, BMP_LIGHTNING, 0, 0
};

static SpriteAnimator lightning2Animator = {
	LIGHTNING2, 0.5f, BMP_LIGHTNING, 0, 0
};

static AnimationFrame lightningFrames[] = {
	{ 80, 144, 0, 0, 0, 0, 4 },
	{ 80, 144, 80, 0, 0, 0, 4 },
	{ 80, 144, 160, 0, 0, 0, 4 },
	{ 80, 144, 240, 0, 0, 0, 4 },
	{ 80, 144, 320, 0, 0, 0, 4 },
	{ 80, 144, 400, 0, 0, 0, 4 },
	{ 80, 144, 480, 0, 0, 0, 4 },
	{ 80, 144, 560, 0, 0, 0, 4 },
	{ 80, 144, 640, 0, 0, 0, 4 },
	{ 80, 144, 720, 0, 0, 0, 4 },
	{ 80, 144, 0, 144, 0, 0, 4 },
	{ 80, 144, 80, 144, 0, 0, 4 },
	{ 80, 144, 160, 144, 0, 0, 4 },
	{ 80, 144, 240, 144, 0, 0, 4 },
	{ 80, 144, 320, 144, 0, 0, 4 },
	{ 80, 144, 400, 144, 0, 0, 4 },
	{ 80, 144, 480, 144, 0, 0, 4 },
	{ 80, 144, 560, 144, 0, 0, 4 },
	{ 80, 144, 640, 144, 0, 0, 4 },
	{ 80, 144, 720, 144, 0, 0, 4 },
	{ 80, 144, 0, 288, 0, 0, 4 },
	{ 80, 144, 80, 288, 0, 0, 4 },
	{ 80, 144, 160, 288, 0, 0, 4 },
	{ 80, 144, 240, 288, 0, 0, 4 },
	{ 80, 144, 320, 288, 0, 0, 4 },
	{ 80, 144, 400, 288, 0, 0, 4 },
	{ 80, 144, 480, 288, 0, 0, 4 },
	{ 80, 144, 560, 288, 0, 0, 4 },
	{ 80, 144, 640, 288, 0, 0, 4 },
	{ 80, 144, 720, 288, 0, 0, 4 }
};

static SpriteAnimator fightAnimator = {
	FIGHT, 0.5f, BMP_FIGHT, 0, 0
};

static AnimationFrame fightIdleFrames[] = {
	{ 160, 48, 0, 0, 0, 0, 3 }
};

static AnimationFrame fightFlashFrames[] = {
	{ 160, 48, 0, 0, 0, 0, 3 },
	{ 160, 48, 0, 48, 0, 0, 3 }
};

// *************************************************
//               User Prototypes
// *************************************************
void initTitleScreen();
void initGameAssets();
void switchScreenChooseFighter();
void switchScreenVsBattle(int p1Cursor, int p2Cursor);
void switchScreenFight(int p1Cursor, int p2Cursor);
void SetPlayerPalettes();

///////////////////////////////
// Player 1 Fighters
///////////////////////////////
static Fighter fighterScorpion = {
	SCORPION, P1_FIGHTER, BMPSUBZERO,
	SCORPION_IDLE_FRAME_COUNT,
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
	SUBZERO_HIT_LOW_FRAME_COUNT,
	SUBZERO_HIT_HIGH_FRAME_COUNT,
	SUBZERO_HIT_BACK_FRAME_COUNT,
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKano = {
	KANO, P1_FIGHTER, BMPKANO,
	KANO_IDLE_FRAME_COUNT,
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
	KANO_HIT_LOW_FRAME_COUNT,
	KANO_HIT_HIGH_FRAME_COUNT,
	KANO_HIT_BACK_FRAME_COUNT,
	KANO_HIT_FALL_FRAME_COUNT,
	KANO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterCage = {
	CAGE, P1_FIGHTER, BMPCAGE,
	CAGE_IDLE_FRAME_COUNT,
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
	CAGE_HIT_LOW_FRAME_COUNT,
	CAGE_HIT_HIGH_FRAME_COUNT,
	CAGE_HIT_BACK_FRAME_COUNT,
	CAGE_HIT_FALL_FRAME_COUNT,
	CAGE_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKang = {
	KANG, P1_FIGHTER, BMPKANG,
	KANG_IDLE_FRAME_COUNT,
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
	KANG_HIT_LOW_FRAME_COUNT,
	KANG_HIT_HIGH_FRAME_COUNT,
	KANG_HIT_BACK_FRAME_COUNT,
	KANG_HIT_FALL_FRAME_COUNT,
	KANG_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterRaiden = {
	RAIDEN, P1_FIGHTER, BMPRAIDEN,
	RAIDEN_IDLE_FRAME_COUNT,
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
	RAIDEN_HIT_LOW_FRAME_COUNT,
	RAIDEN_HIT_HIGH_FRAME_COUNT,
	RAIDEN_HIT_BACK_FRAME_COUNT,
	RAIDEN_HIT_FALL_FRAME_COUNT,
	RAIDEN_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSubzero = {
	SUBZERO, P1_FIGHTER, BMPSUBZERO,
	SUBZERO_IDLE_FRAME_COUNT,
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
	SUBZERO_HIT_LOW_FRAME_COUNT,
	SUBZERO_HIT_HIGH_FRAME_COUNT,
	SUBZERO_HIT_BACK_FRAME_COUNT,
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSonya = {
	SONYA, P1_FIGHTER, BMPSONYA,
	SONYA_IDLE_FRAME_COUNT,
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
	SUBZERO_HIT_LOW_FRAME_COUNT,
	SUBZERO_HIT_HIGH_FRAME_COUNT,
	SUBZERO_HIT_BACK_FRAME_COUNT,
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKano2 = {
	KANO, P2_FIGHTER, BMPKANO,
	KANO_IDLE_FRAME_COUNT,
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
	KANO_HIT_LOW_FRAME_COUNT,
	KANO_HIT_HIGH_FRAME_COUNT,
	KANO_HIT_BACK_FRAME_COUNT,
	KANO_HIT_FALL_FRAME_COUNT,
	KANO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterCage2 = {
	CAGE, P2_FIGHTER, BMPCAGE,
	CAGE_IDLE_FRAME_COUNT,
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
	CAGE_HIT_LOW_FRAME_COUNT,
	CAGE_HIT_HIGH_FRAME_COUNT,
	CAGE_HIT_BACK_FRAME_COUNT,
	CAGE_HIT_FALL_FRAME_COUNT,
	CAGE_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterKang2 = {
	KANG, P2_FIGHTER, BMPKANG,
	KANG_IDLE_FRAME_COUNT,
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
	KANG_HIT_LOW_FRAME_COUNT,
	KANG_HIT_HIGH_FRAME_COUNT,
	KANG_HIT_BACK_FRAME_COUNT,
	KANG_HIT_FALL_FRAME_COUNT,
	KANG_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterRaiden2 = {
	RAIDEN, P2_FIGHTER, BMPRAIDEN,
	RAIDEN_IDLE_FRAME_COUNT,
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
	RAIDEN_HIT_LOW_FRAME_COUNT,
	RAIDEN_HIT_HIGH_FRAME_COUNT,
	RAIDEN_HIT_BACK_FRAME_COUNT,
	RAIDEN_HIT_FALL_FRAME_COUNT,
	RAIDEN_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSubzero2 = {
	SUBZERO, P2_FIGHTER, BMPSUBZERO,
	SUBZERO_IDLE_FRAME_COUNT,
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
	SUBZERO_HIT_LOW_FRAME_COUNT,
	SUBZERO_HIT_HIGH_FRAME_COUNT,
	SUBZERO_HIT_BACK_FRAME_COUNT,
	SUBZERO_HIT_FALL_FRAME_COUNT,
	SUBZERO_HIT_SWEEP_FRAME_COUNT
};

static Fighter fighterSonya2 = {
	SONYA, P2_FIGHTER, BMPSONYA,
	SONYA_IDLE_FRAME_COUNT,
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
	SONYA_HIT_LOW_FRAME_COUNT,
	SONYA_HIT_HIGH_FRAME_COUNT,
	SONYA_HIT_BACK_FRAME_COUNT,
	SONYA_HIT_FALL_FRAME_COUNT,
	SONYA_HIT_SWEEP_FRAME_COUNT
};

void basicmain()
{
	int testingBackgroundX = 0;
	int testingBackgroundDirection = 1;

	pad1 = 0;
	pad2 = 0;
	int myTicks = 0;
	int p1Selected = -1;
	int p2Selected = -1;
	bool chooseFighterDone = false;
	bool roundFightSequenceComplete = false;
	int fightScale = 0;
	int barScale = 0;
	int barDirection = 1;
	int p1FlashCount = 0;
	int p2FlashCount = 0;
	struct Fighter* fighter1Ptr;
	struct Fighter* fighter2Ptr; 

	fighterCage.idleFrames = &cageIdleFrames;
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
	fighterCage2.idleFrames = &cageIdleFrames;
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
	//Kano
	fighterKano.idleFrames = &kanoIdleFrames;
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
	fighterKano.hitLowFrames = &kanoHitLowFrames;
	fighterKano.hitHighFrames = &kanoHitHighFrames;
	fighterKano.hitBackFrames = &kanoHitBackFrames;
	fighterKano.hitFallFrames = &kanoHitFallFrames;
	fighterKano.hitSweepFrames = &kanoHitSweepFrames;
	fighterKano.kipUpFrames = &kanoKipUpFrames;
	fighterKano2.idleFrames = &kanoIdleFrames;
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
	fighterKano2.hitLowFrames = &kanoHitLowFrames;
	fighterKano2.hitHighFrames = &kanoHitHighFrames;
	fighterKano2.hitBackFrames = &kanoHitBackFrames;
	fighterKano2.hitFallFrames = &kanoHitFallFrames;
	fighterKano2.hitSweepFrames = &kanoHitSweepFrames;
	fighterKano2.kipUpFrames = &kanoKipUpFrames;
	//Raiden
	fighterRaiden.idleFrames = &raidenIdleFrames;
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
	fighterRaiden.kipUpFrames = &raidenKipUpFrames;
	fighterRaiden.hitLowFrames = &raidenHitLowFrames;
	fighterRaiden.hitHighFrames = &raidenHitHighFrames;
	fighterRaiden.hitBackFrames = &raidenHitBackFrames;
	fighterRaiden.hitFallFrames = &raidenHitFallFrames;
	fighterRaiden.hitSweepFrames = &raidenHitSweepFrames;
	fighterRaiden2.idleFrames = &raidenIdleFrames;
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
	fighterRaiden2.kipUpFrames = &raidenKipUpFrames;
	fighterRaiden2.hitLowFrames = &raidenHitLowFrames;
	fighterRaiden2.hitHighFrames = &raidenHitHighFrames;
	fighterRaiden2.hitBackFrames = &raidenHitBackFrames;
	fighterRaiden2.hitFallFrames = &raidenHitFallFrames;
	fighterRaiden2.hitSweepFrames = &raidenHitSweepFrames;
	//Liu Kang
	fighterKang.idleFrames = &kangIdleFrames;
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
	fighterKang.hitLowFrames = &kangHitLowFrames;
	fighterKang.hitHighFrames = &kangHitHighFrames;
	fighterKang.hitBackFrames = &kangHitBackFrames;
	fighterKang.hitFallFrames = &kangHitFallFrames;
	fighterKang.hitSweepFrames = &kangHitSweepFrames;
	fighterKang2.idleFrames = &kangIdleFrames;
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
	fighterKang2.hitLowFrames = &kangHitLowFrames;
	fighterKang2.hitHighFrames = &kangHitHighFrames;
	fighterKang2.hitBackFrames = &kangHitBackFrames;
	fighterKang2.hitFallFrames = &kangHitFallFrames;
	fighterKang2.hitSweepFrames = &kangHitSweepFrames;
	//Scorpion
	fighterScorpion.idleFrames = &scorpionIdleFrames;
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
	fighterScorpion.hitLowFrames = &subzeroHitLowFrames;
	fighterScorpion.hitHighFrames = &subzeroHitHighFrames;
	fighterScorpion.hitBackFrames = &subzeroHitBackFrames;
	fighterScorpion.hitFallFrames = &subzeroHitFallFrames;
	fighterScorpion.hitSweepFrames = &subzeroHitSweepFrames;
	fighterScorpion2.idleFrames = &scorpionIdleFrames;
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
	fighterScorpion2.hitLowFrames = &subzeroHitLowFrames;
	fighterScorpion2.hitHighFrames = &subzeroHitHighFrames;
	fighterScorpion2.hitBackFrames = &subzeroHitBackFrames;
	fighterScorpion2.hitFallFrames = &subzeroHitFallFrames;
	fighterScorpion2.hitSweepFrames = &subzeroHitSweepFrames;
	//Sub-Zero
	fighterSubzero.idleFrames = &subzeroIdleFrames;
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
	fighterSubzero.hitLowFrames = &subzeroHitLowFrames;
	fighterSubzero.hitHighFrames = &subzeroHitHighFrames;
	fighterSubzero.hitBackFrames = &subzeroHitBackFrames;
	fighterSubzero.hitFallFrames = &subzeroHitFallFrames;
	fighterSubzero.hitSweepFrames = &subzeroHitSweepFrames;
	fighterSubzero2.idleFrames = &subzeroIdleFrames;
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
	fighterSubzero2.hitLowFrames = &subzeroHitLowFrames;
	fighterSubzero2.hitHighFrames = &subzeroHitHighFrames;
	fighterSubzero2.hitBackFrames = &subzeroHitBackFrames;
	fighterSubzero2.hitFallFrames = &subzeroHitFallFrames;
	fighterSubzero2.hitSweepFrames = &subzeroHitSweepFrames;
	//Sonya
	fighterSonya.idleFrames = &sonyaIdleFrames;
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
	fighterSonya.hitLowFrames = &sonyaHitLowFrames;
	fighterSonya.hitHighFrames = &sonyaHitHighFrames;
	fighterSonya.hitBackFrames = &sonyaHitBackFrames;
	fighterSonya.hitFallFrames = &sonyaHitFallFrames;
	fighterSonya.hitSweepFrames = &sonyaHitSweepFrames;
	fighterSonya2.idleFrames = &sonyaIdleFrames;
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
					switchScreenChooseFighter();
					//sfxGong(&soundHandler);
					u235PlayModule((int)STRPTR(MOD_TITLE),MOD_STEREO);
					u235ModuleVol(15);
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
				switchScreenFight(p1Cursor, p2Cursor);
				u235StopModule();
				u235Silence();
				u235PlayModule((int)STRPTR(MOD_STAGE),MOD_STEREO);
				u235ModuleVol(15);
			}
		}
		else if (onScreenFight)
		{

			/////////////////////////////////////////
			// Fight!
			/////////////////////////////////////////
			pad1=jsfGetPad(LEFT_PAD);
			pad2=jsfGetPad(RIGHT_PAD);

			if (roundFightSequenceComplete == false)
			{
				if (rapTicks >= myTicks + ticksPerSec)
				{
					sprite[FIGHT].active = R_is_active;

					if (fightScale <= 32)
					{
						sprite[FIGHT].scale_x = fightScale;
						sprite[FIGHT].scale_y = fightScale;
						sprite[FIGHT].x_ -= 8;
						sprite[FIGHT].y_ -= 4;

						fightScale += 4;
					}
					else
					{
						sfxFight(&soundHandler);
						roundFightSequenceComplete = true;
						myTicks = rapTicks;
						fightScale = 32;
					}
				}
			}

			if (sprite[FIGHT].active == R_is_active && roundFightSequenceComplete)
			{
				updateSpriteAnimator(&fightAnimator, fightFlashFrames, 2, true, true);

				if (rapTicks >= myTicks + ticksPerSec)
				{
					fightAnimator.currentFrame = 0;

					updateSpriteAnimator(&fightAnimator, fightIdleFrames, 1, true, true);

					if (fightScale > 0)
					{
						sprite[FIGHT].scale_x = fightScale;
						sprite[FIGHT].scale_y = fightScale;
						sprite[FIGHT].x_ += 8;
						sprite[FIGHT].y_ += 4;
						fightScale -= 4;
					}
					else
					{
						sprite[FIGHT].active = R_is_inactive;
					}
				}
			}

			// if (roundFightSequenceComplete && sprite[FIGHT].active == R_is_inactive)
			// {
			// 	if (rapTicks >= myTicks + 10)
			// 	{
			// 		sprite[P1_HEALTHBAR].scale_x = barScale;
			// 		sprite[P2_HEALTHBAR].scale_x = barScale;
			// 		sprite[P2_HEALTHBAR].x_ = 180 + ((33 - barScale) * 4);

			// 		barScale += 1 * barDirection;

			// 		if (barDirection == 1 && barScale > 33)
			// 		{
			// 			barDirection = -1;
			// 		}
			// 		else if (barDirection == -1 && barScale <= 0)
			// 		{
			// 			barDirection = 1;
			// 		}

			// 		myTicks = rapTicks;
			// 	}
			// }

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

			fighterTurnCheck(fighter1Ptr, fighter2Ptr);
			fighterImpactCheck(fighter1Ptr, fighter2Ptr);
			bgUpdate(fighter1Ptr, fighter2Ptr);
			bloodUpdate(&soundHandler);
			spriteDelayUpdate();
			
			if (rapTicks >= myTicks + 1)
			{
				testingBackgroundX += 1 * testingBackgroundDirection;

				if (testingBackgroundDirection == 1 && testingBackgroundX > 300)
				{
					testingBackgroundDirection = -1;
				}
				else if (testingBackgroundDirection == -1 && testingBackgroundX <= 0)
				{
					testingBackgroundDirection = 1;
				}
				myTicks = rapTicks;
			}

			setFrame(BACKGROUND, 336, 172, testingBackgroundX, 0, 0.5f, (int)imageBuffer);

			if(pad1 & JAGPAD_STAR)
			{
				setFrame(P1_HB_BODY, 48, 128, 0, 0, 0.5f, BMP_HITBOX);
				setFrame(P2_HB_BODY, 48, 128, 0, 0, 0.5f, BMP_HITBOX);
				setFrame(P1_HB_ATTACK, 48, 16, 0, 0, 0.5f, BMP_HITBOX_ATTACK);
				setFrame(P2_HB_ATTACK, 48, 16, 0, 0, 0.5f, BMP_HITBOX_ATTACK);
				//rapDebugSetVisible(DEBUG_SHOW);
			}
			else if (pad1 & JAGPAD_HASH)
			{
				setFrame(P1_HB_BODY, 48, 128, 0, 0, 0.5f, BMP_HITBOX_OFF);
				setFrame(P2_HB_BODY, 48, 128, 0, 0, 0.5f, BMP_HITBOX_OFF);
				setFrame(P1_HB_ATTACK, 48, 16, 0, 0, 0.5f, BMP_HITBOX_ATTACK_OFF);
				setFrame(P2_HB_ATTACK, 48, 16, 0, 0, 0.5f, BMP_HITBOX_ATTACK_OFF);
				//rapDebugSetVisible(DEBUG_HIDE);
			}
		}
		jsfVsync(0);
	}
}

void initTitleScreen()
{
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
	rapUnpack(BMP_CHOOSEFIGHTER,(int)(int*)imageBuffer320x240);
	sprite[BACKGROUND].gfxbase = (int)imageBuffer320x240;
	sprite[BACKGROUND].active = R_is_active;

	sprite[P1_CURSOR].active = R_is_active;
	sprite[P2_CURSOR].active = R_is_active;

	onTitleScreen = false;
	onScreenChooseFighter = true;
	jsfLoadClut((unsigned short *)(void *)(BMP_CHOOSEFIGHTER_clut),0,96);
	jsfLoadClut((unsigned short *)(void *)(BMP_P2_SELECTOR_FLASH_clut),6,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_LIGHTNING_clut),13,3);
	jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),14,16);
	fighterMakeSelectable(&fighterKano, true);
	fighterShow(&fighterKano);

	jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),15,16);
	fighterMakeSelectable(&fighterSubzero2, false);
	fighterShow(&fighterSubzero2);
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

void switchScreenFight(int p1Cursor, int p2Cursor)
{
	unsigned short bg_color = (0 << 11) + (8 << 5) + 0;  //(red << 11) + (blue << 5) + green
	*(volatile unsigned short*)(BG)=(volatile unsigned short)bg_color;		// Set Background colour.

	rapUnpack(BMP_PIT_MOON,(int)(int*)imageBuffer320x240);
	sprite[STAGE_PIT_MOON].gfxbase=(int)imageBuffer320x240;
	sprite[STAGE_PIT_MOON].active=R_is_active;

	rapUnpack(BMP_PIT_BACKGROUND,(int)(int*)imageBuffer);
	sprite[STAGE_PIT_BACKGROUND].gfxbase=(int)imageBuffer;
	sprite[STAGE_PIT_BACKGROUND].active=R_is_active;

	jsfLoadClut((unsigned short *)(void *)(BMP_PIT_BACKGROUND_clut),0,64);
	jsfLoadClut((unsigned short *)(void *)(BMP_PIT_MOON_clut),4,16);
	jsfLoadClut((unsigned short *)(void *)(BMP_PIT_CLOUDS1_clut),5,16);
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
			fighterInitialize(&fighterCage, true, &soundHandler, &cageImpactFrameLowPunch, &cageImpactFrameHighPunch, &cageImpactFrameLowKick, &cageImpactFrameHighKick, &cageImpactFrameUppercut, &cageImpactFrameSweep, &cageImpactFrameJumpPunch, &cageImpactFrameJumpKick);
			fighterShow(&fighterCage);		
			sprite[P1_NAME].gfxbase = BMP_NAME_CAGE;
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),14,16);
			fighterKano.spriteIndex = P1_FIGHTER_PIT;
			kanoAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterKano, true, &soundHandler, &kanoImpactFrameLowPunch, &kanoImpactFrameHighPunch, &kanoImpactFrameLowKick, &kanoImpactFrameHighKick, &kanoImpactFrameUppercut, &kanoImpactFrameSweep, &kanoImpactFrameJumpPunch, &kanoImpactFrameJumpKick);
			fighterShow(&fighterKano);
			sprite[P1_NAME].gfxbase = BMP_NAME_KANO;
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),14,16);
			fighterSubzero.spriteIndex = P1_FIGHTER_PIT;
			subzeroAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterSubzero, true, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick);
			fighterShow(&fighterSubzero);
			sprite[P1_NAME].gfxbase = BMP_NAME_SUBZERO;
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),14,16);
			fighterSonya.spriteIndex = P1_FIGHTER_PIT;
			sonyaAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterSonya, true, &soundHandler, &sonyaImpactFrameLowPunch, &sonyaImpactFrameHighPunch, &sonyaImpactFrameLowKick, &sonyaImpactFrameHighKick, &sonyaImpactFrameUppercut, &sonyaImpactFrameSweep, &sonyaImpactFrameJumpPunch, &sonyaImpactFrameJumpKick);
			fighterShow(&fighterSonya);
			sprite[P1_NAME].gfxbase = BMP_NAME_SONYA;
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),14,16);
			fighterRaiden.spriteIndex = P1_FIGHTER_PIT;
			raidenAnimator.spriteIndex = P1_FIGHTER_PIT;
			//lightningAnimator.spriteIndex = P1_LIGHTNING_PIT;
			fighterInitialize(&fighterRaiden, true, &soundHandler, &raidenImpactFrameLowPunch, &raidenImpactFrameHighPunch, &raidenImpactFrameLowKick, &raidenImpactFrameHighKick, &raidenImpactFrameUppercut, &raidenImpactFrameSweep, &raidenImpactFrameJumpPunch, &raidenImpactFrameJumpKick);
			fighterShow(&fighterRaiden);
			sprite[LIGHTNING].active = R_is_active;
			sprite[P1_NAME].gfxbase = BMP_NAME_RAIDEN;
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),14,16);
			fighterKang.spriteIndex = P1_FIGHTER_PIT;
			kangAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterKang, true, &soundHandler, &kangImpactFrameLowPunch, &kangImpactFrameHighPunch, &kangImpactFrameLowKick, &kangImpactFrameHighKick, &kangImpactFrameUppercut, &kangImpactFrameSweep, &kangImpactFrameJumpPunch, &kangImpactFrameJumpKick);
			fighterShow(&fighterKang);
			sprite[P1_NAME].gfxbase = BMP_NAME_LIUKANG;
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),14,16);
			fighterScorpion.spriteIndex = P1_FIGHTER_PIT;
			scorpionAnimator.spriteIndex = P1_FIGHTER_PIT;
			fighterInitialize(&fighterScorpion, true, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick);
			fighterShow(&fighterScorpion);
			sprite[P1_NAME].gfxbase = BMP_NAME_SCORPION;
			break;
	}

	switch (p2Cursor)
	{
		case 0:
			//Johnny Cage
			jsfLoadClut((unsigned short *)(void *)(BMPCAGE_clut),15,16);
			fighterCage2.spriteIndex = P2_FIGHTER_PIT;
			cageAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterCage2, false, &soundHandler, &cageImpactFrameLowPunch, &cageImpactFrameHighPunch, &cageImpactFrameLowKick, &cageImpactFrameHighKick, &cageImpactFrameUppercut, &cageImpactFrameSweep, &cageImpactFrameJumpPunch, &cageImpactFrameJumpKick);
			fighterShow(&fighterCage2);
			sprite[P2_NAME].gfxbase = BMP_NAME_CAGE;
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),15,16);
			fighterKano2.spriteIndex = P2_FIGHTER_PIT;
			kanoAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterKano2, false, &soundHandler, &kanoImpactFrameLowPunch, &kanoImpactFrameHighPunch, &kanoImpactFrameLowKick, &kanoImpactFrameHighKick, &kanoImpactFrameUppercut, &kanoImpactFrameSweep, &kanoImpactFrameJumpPunch, &kanoImpactFrameJumpKick);
			fighterShow(&fighterKano2);
			sprite[P2_NAME].gfxbase = BMP_NAME_KANO;
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),15,16);
			fighterSubzero2.spriteIndex = P2_FIGHTER_PIT;
			subzeroAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterSubzero2, false, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick);
			fighterShow(&fighterSubzero2);
			sprite[P2_NAME].gfxbase = BMP_NAME_SUBZERO;
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),15,16);
			fighterSonya2.spriteIndex = P2_FIGHTER_PIT;
			sonyaAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterSonya2, false, &soundHandler, &sonyaImpactFrameLowPunch, &sonyaImpactFrameHighPunch, &sonyaImpactFrameLowKick, &sonyaImpactFrameHighKick, &sonyaImpactFrameUppercut, &sonyaImpactFrameSweep, &sonyaImpactFrameJumpPunch, &sonyaImpactFrameJumpKick);
			fighterShow(&fighterSonya2);
			sprite[P2_NAME].gfxbase = BMP_NAME_SONYA;
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),15,16);
			fighterRaiden2.spriteIndex = P2_FIGHTER_PIT;
			raidenAnimator2.spriteIndex = P2_FIGHTER_PIT;
			//lightning2Animator.spriteIndex = P2_LIGHTNING_PIT;
			fighterInitialize(&fighterRaiden2, false, &soundHandler, &raidenImpactFrameLowPunch, &raidenImpactFrameHighPunch, &raidenImpactFrameLowKick, &raidenImpactFrameHighKick, &raidenImpactFrameUppercut, &raidenImpactFrameSweep, &raidenImpactFrameJumpPunch, &raidenImpactFrameJumpKick);
			fighterShow(&fighterRaiden2);
			sprite[LIGHTNING2].active = R_is_active;
			sprite[P2_NAME].gfxbase = BMP_NAME_RAIDEN;
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),15,16);
			fighterKang2.spriteIndex = P2_FIGHTER_PIT;
			kangAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterKang2, false, &soundHandler, &kangImpactFrameLowPunch, &kangImpactFrameHighPunch, &kangImpactFrameLowKick, &kangImpactFrameHighKick, &kangImpactFrameUppercut, &kangImpactFrameSweep, &kangImpactFrameJumpPunch, &kangImpactFrameJumpKick);
			fighterShow(&fighterKang2);
			sprite[P2_NAME].gfxbase = BMP_NAME_LIUKANG;
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),15,16);
			fighterScorpion2.spriteIndex = P2_FIGHTER_PIT;
			scorpionAnimator2.spriteIndex = P2_FIGHTER_PIT;
			fighterInitialize(&fighterScorpion2, false, &soundHandler, &subzeroImpactFrameLowPunch, &subzeroImpactFrameHighPunch, &subzeroImpactFrameLowKick, &subzeroImpactFrameHighKick, &subzeroImpactFrameUppercut, &subzeroImpactFrameSweep, &subzeroImpactFrameJumpPunch, &subzeroImpactFrameJumpKick);
			fighterShow(&fighterScorpion2);
			sprite[P2_NAME].gfxbase = BMP_NAME_SCORPION;
			break;
	}

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

	if (p1Cursor == p2Cursor)
	{
		for (int j = 0; j < 24; j++)
			rapFadeClut(15,16,BLACKPAL);
	}
}