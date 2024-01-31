#include "common.h"
#include "fighter.h"
#include "sound.h"
#include "spriteanimator.h"
#include "spritemovements.h"

int round = 0;
int matchState = 0;  //0 = Round #, FIGHT!, 1 = {fighting}, 2 = {fighter} WINS / FINISH HIM!
int matchTicks = 0;
bool fightZoomed = false;
int fightScale = 0;

static SpriteAnimator fightAnimator = {
	FIGHT, 0.5f, BMP_MATCH, 0, 0
};

static AnimationFrame fightIdleFrames[] = {
	{ 160, 48, 0, 192, 0, 0, 3 }
};

static AnimationFrame fightFlashFrames[] = {
	{ 160, 48, 0, 192, 0, 0, 3 },
	{ 160, 48, 0, 240, 0, 0, 3 }
};

void matchInit()
{
    round = 0;
    matchState = 0;
    matchTicks = 0;
    fightZoomed = false;
	fightScale = 0;
}

void matchUpdate(struct SoundHandler* soundHandler, struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (matchState == 0)
    {
        if (matchTicks == 0)
        {
            fighter1->AcceptingInput = false;
            fighter2->AcceptingInput = false;
            setFrame(FIGHT, 80, 32, 160, 192 + (round * 32), 0.5f, BMP_MATCH);
			sprite[FIGHT].x_ = 130;
			sprite[FIGHT].y_ = 98;
            sprite[FIGHT].scaled = R_spr_unscale;
            sprite[FIGHT].active = R_is_active;
            matchTicks = rapTicks;
        }
        else if (rapTicks >= matchTicks + 120)
        {
			matchState = 1;
		}
	}
	else if (matchState == 1)
	{
		if (fightScale == 0)
		{
			setFrame(FIGHT, 160, 48, 0, 192, 0.5f, BMP_MATCH);
			sprite[FIGHT].x_ = 160;
			sprite[FIGHT].y_ = 98;
			sprite[FIGHT].scaled = R_spr_scale;
			sprite[FIGHT].scale_x = fightScale;
			sprite[FIGHT].scale_y = fightScale;
		}

		if (!fightZoomed)
		{
			if (rapTicks >= matchTicks + 60)
			{					
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
					sfxFight(soundHandler);
					fightZoomed = true;
					matchTicks = rapTicks;
					fightScale = 32;
				}
			}
		}
		else
		{
			updateSpriteAnimator(&fightAnimator, fightFlashFrames, 2, true, true);

			if (rapTicks >= matchTicks + 60)
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
					fighter1->AcceptingInput = true;
					fighter2->AcceptingInput = true;
					matchState = 2;
				}
			}
        }
    }
	else if (matchState == 2)
	{
		int winner = 0;
		
		if (fighter1->IsDefeated)
		{
			winner = fighter2->fighterIndex;
			fighter2->DoWinSequence = true;
		}
		else if (fighter2->IsDefeated)
		{
			winner = fighter1->fighterIndex;
			fighter1->DoWinSequence = true;
		}

		if (winner != 0)
		{
			matchState = 3;
			//TODO show "Fighter Wins" n stuff...
		}
	}
}