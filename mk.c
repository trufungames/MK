#include "common.h"
#include "spritemovements.h"
#include "spriteanimator.h"
#include "fighter.h"
#include "sound.h"

// -----------------------------------------------------------------------
// Global Variables
// -----------------------------------------------------------------------
static int pad1;
static int pad2;
static int buffer320x240[320*240/4];
static int BLACKPAL[128];
int p1Cursor = 1;
int p2Cursor = 2;
bool onTitleScreen = true;
bool onScreenChooseFighter = false;
bool fadedIn = false;
bool fadedOut = false;
int gameStartTicks = rapTicks;
int ticksPerSec = 60;
int lastTicks = 0;
static	SoundHandler soundHandler = {
	true,  //sound on/off
	false,  //music on/off
	1,  //sound volume
	1   //music volume
};

// *************************************************
//               User Prototypes
// *************************************************
void initTitleScreen();
void initGameAssets();
void switchScreenChooseFighter();
void SetPlayerPalettes();

///////////////////////////////
// Player 1 Fighters
///////////////////////////////
static Fighter fighterScorpion = {
	SCORPION, P1_FIGHTER, BMPSUBZERO,
	SCORPION_IDLE_FRAME_COUNT,
	SCORPION_WALK_FRAME_COUNT,
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
	pad1 = 0;
	pad2 = 0;
	int p1Selected = -1;
	int p2Selected = -1;
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
					rapFadeClut(0,256,(int *)(int)STRPTR(BMP_TITLESCREEN_clut));
					jsfVsync(0); 
				}
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
				// sfxP1Cursor(&soundHandler);
				// //cursor changed, so let's move the cursor and show the fighter
				// fighterHide(&fighterCage);
				// fighterHide(&fighterKano);
				// fighterHide(&fighterSubzero);
				// fighterHide(&fighterSonya);
				// fighterHide(&fighterRaiden);
				// fighterHide(&fighterKang);
				// fighterHide(&fighterScorpion);
				// sprite[LIGHTNING].active = R_is_inactive;

				SetPlayerPalettes();
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
				// sfxP1Cursor(&soundHandler);
				// //cursor changed, so let's move the cursor and show the fighter
				// fighterHide(&fighterCage);
				// fighterHide(&fighterKano);
				// fighterHide(&fighterSubzero);
				// fighterHide(&fighterSonya);
				// fighterHide(&fighterRaiden);
				// fighterHide(&fighterKang);
				// fighterHide(&fighterScorpion);
				// sprite[LIGHTNING].active = R_is_inactive;

				SetPlayerPalettes();
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

	rapUnpack((int)STRPTR(BMP_TITLESCREEN),(int)(int*)buffer320x240);
	sprite[BACKGROUND].gfxbase=(int)buffer320x240;
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
	rapUnpack((int)STRPTR(BMP_CHOOSEFIGHTER),(int)(int*)buffer320x240);
	sprite[BACKGROUND].gfxbase = (int)buffer320x240;
	sprite[BACKGROUND].active = R_is_active;

	sprite[P1_CURSOR].active = R_is_active;
	sprite[P2_CURSOR].active = R_is_active;

	onTitleScreen = false;
	onScreenChooseFighter = true;
	jsfLoadClut((unsigned short *)STRPTR(BMP_CHOOSEFIGHTER_clut),0,256);

	fadedIn = false;
	fadedOut = false;
	gameStartTicks = rapTicks;
}

void SetPlayerPalettes()
{
	switch (p1Cursor)
	{
		case 0:
			//Johnny Cage
			jsfLoadClut((unsigned short *)(void *)(BMPCAGE_clut),14,16);
			fighterMakeSelectable(&fighterCage, true);
			fighterShow(&fighterCage);
			sprite[P1_CURSOR].x_ = 7;
			sprite[P1_CURSOR].y_ = 42;
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),14,16);
			fighterMakeSelectable(&fighterKano, true);
			fighterShow(&fighterKano);
			sprite[P1_CURSOR].x_ = 68;
			sprite[P1_CURSOR].y_ = 42;
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),14,16);
			fighterMakeSelectable(&fighterSubzero, true);
			fighterShow(&fighterSubzero);
			sprite[P1_CURSOR].x_ = 189;
			sprite[P1_CURSOR].y_ = 42;
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),14,16);
			fighterMakeSelectable(&fighterSonya, true);
			fighterShow(&fighterSonya);
			sprite[P1_CURSOR].x_ = 250;
			sprite[P1_CURSOR].y_ = 42;
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),14,16);
			fighterMakeSelectable(&fighterRaiden, true);
			fighterShow(&fighterRaiden);
			sprite[P1_CURSOR].x_ = 68;
			sprite[P1_CURSOR].y_ = 116;
			// sprite[LIGHTNING].active = R_is_active;
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),14,16);
			fighterMakeSelectable(&fighterKang, true);
			fighterShow(&fighterKang);
			sprite[P1_CURSOR].x_ = 129;
			sprite[P1_CURSOR].y_ = 116;
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),14,16);
			fighterMakeSelectable(&fighterScorpion, true);
			fighterShow(&fighterScorpion);
			sprite[P1_CURSOR].x_ = 189;
			sprite[P1_CURSOR].y_ = 116;
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
			break;
		case 1:
			//Kano
			jsfLoadClut((unsigned short *)(void *)(BMPKANO_clut),15,16);
			fighterMakeSelectable(&fighterKano2, false);
			fighterShow(&fighterKano2);
			sprite[P2_CURSOR].x_ = 68;
			sprite[P2_CURSOR].y_ = 42;
			break;
		case 2:
			//Sub-Zero
			jsfLoadClut((unsigned short *)(void *)(BMPSUBZERO_clut),15,16);
			fighterMakeSelectable(&fighterSubzero2, false);
			fighterShow(&fighterSubzero2);
			sprite[P2_CURSOR].x_ = 189;
			sprite[P2_CURSOR].y_ = 42;
			break;
		case 3:
			//Sonya
			jsfLoadClut((unsigned short *)(void *)(BMPSONYA_clut),15,16);
			fighterMakeSelectable(&fighterSonya2, false);
			fighterShow(&fighterSonya2);
			sprite[P2_CURSOR].x_ = 250;
			sprite[P2_CURSOR].y_ = 42;
			break;
		case 4:
			//Raiden
			jsfLoadClut((unsigned short *)(void *)(BMPRAIDEN_clut),15,16);
			fighterMakeSelectable(&fighterRaiden2, false);
			fighterShow(&fighterRaiden2);
			// sprite[LIGHTNING2].active = R_is_active;
			sprite[P2_CURSOR].x_ = 68;
			sprite[P2_CURSOR].y_ = 116;
			break;
		case 5:
			//Liu Kang
			jsfLoadClut((unsigned short *)(void *)(BMPKANG_clut),15,16);
			fighterMakeSelectable(&fighterKang2, false);
			fighterShow(&fighterKang2);
			sprite[P2_CURSOR].x_ = 129;
			sprite[P2_CURSOR].y_ = 116;
			break;
		case 6:
			//Scorpion
			jsfLoadClut((unsigned short *)(void *)(PAL_SCORPION_clut),15,16);
			fighterMakeSelectable(&fighterScorpion2, false);
			fighterShow(&fighterScorpion2);
			sprite[P2_CURSOR].x_ = 189;
			sprite[P2_CURSOR].y_ = 116;
			break;
	}

	if (p1Cursor == p2Cursor)
	{
		for (int j = 0; j < 24; j++)
			rapFadeClut(15,16,BLACKPAL);
	}
}