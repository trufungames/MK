#include "common.h"
#include "fighter.h"
#include "match.h"
#include "sound.h"
#include "spriteanimator.h"
#include "spritemovements.h"
#include "debug.h"

int round = 0;
int matchState = 0;  //0 = Round #, FIGHT!, 1 = {fighting}, 2 = {fighter} WINS / FINISH HIM!
int matchTicks = 0;
bool fightZoomed = false;
int fightScale = 0;
int winner = 0;
int loser = 0;
bool matchComplete = false;
int fighter1Wins = 0;
int fighter2Wins = 0;
int winsTicks = 0;
bool playedName = false;
bool playedWins = false;

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

static AnimationFrame finishHimFrames[] = {
	{ 304, 48, 0, 0, 0, 0, 3 },
	{ 304, 48, 0, 48, 0, 0, 3 }
};

static AnimationFrame finishHerFrames[] = {
	{ 304, 48, 0, 96, 0, 0, 3 },
	{ 304, 48, 0, 144, 0, 0, 3 }
};

static AnimationFrame cageWinsFrames[] = {
	{ 192, 32, 304, 0, 0, 0, 3 },
	{ 192, 32, 496, 0, 0, 0, 3 }
};

static AnimationFrame kanoWinsFrames[] = {
	{ 192, 32, 304, 32, 0, 0, 3 },
	{ 192, 32, 496, 32, 0, 0, 3 }
};

static AnimationFrame raidenWinsFrames[] = {
	{ 192, 32, 304, 64, 0, 0, 3 },
	{ 192, 32, 496, 64, 0, 0, 3 }
};

static AnimationFrame kangWinsFrames[] = {
	{ 192, 32, 304, 96, 0, 0, 3 },
	{ 192, 32, 496, 96, 0, 0, 3 }
};

static AnimationFrame scorpionWinsFrames[] = {
	{ 192, 32, 304, 128, 0, 0, 3 },
	{ 192, 32, 496, 128, 0, 0, 3 }
};

static AnimationFrame subzeroWinsFrames[] = {
	{ 192, 32, 304, 160, 0, 0, 3 },
	{ 192, 32, 496, 160, 0, 0, 3 }
};

static AnimationFrame sonyaWinsFrames[] = {
	{ 192, 32, 304, 192, 0, 0, 3 },
	{ 192, 32, 496, 192, 0, 0, 3 }
};

static AnimationFrame reptileWinsFrames[] = {
	{ 192, 32, 304, 224, 0, 0, 3 },
	{ 192, 32, 496, 224, 0, 0, 3 }
};

static AnimationFrame kasumiWinsFrames[] = {
	{ 192, 32, 304, 256, 0, 0, 3 },
	{ 192, 32, 496, 256, 0, 0, 3 }
};

static AnimationFrame goroWinsFrames[] = {
	{ 192, 32, 304, 288, 0, 0, 3 },
	{ 192, 32, 496, 288, 0, 0, 3 }
};

static AnimationFrame shangWinsFrames[] = {
	{ 192, 32, 304, 304, 0, 0, 3 },
	{ 192, 32, 496, 304, 0, 0, 3 }
};

void matchReset()
{
	matchState = 0;
    matchTicks = 0;
    fightZoomed = false;
	fightScale = 0;
	winner = 0;
	loser = 0;
	matchComplete = false;
	winsTicks = 0;
	playedName = false;
	playedWins = false;
}

void matchInit()
{
    round = 0;
	fighter1Wins = 0;
	fighter2Wins = 0;
    matchReset();
}

bool matchUpdate(struct SoundHandler* soundHandler, struct Fighter* fighter1, struct Fighter* fighter2)
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
		if (fighter1->IsDefeated)
		{
			winner = fighter2->fighterIndex;
			loser = fighter1->fighterIndex;
			
			fighter2Wins++;

			if (fighter2Wins <= 2)
			{
				fighter2->DoWinSequence = true;
			}
		}
		else if (fighter2->IsDefeated)
		{
			winner = fighter1->fighterIndex;
			loser = fighter2->fighterIndex;
			
			fighter1Wins++;

			if (fighter1Wins <= 2)
			{
				fighter1->DoWinSequence = true;
			}
		}

		if (winner != 0)
		{
			matchState = 3;  //XXXXX WINS!
			sprite[FIGHT].x_ = 64;
			sprite[FIGHT].y_ = 48;
			sprite[FIGHT].scaled = R_spr_unscale;
			matchTicks = rapTicks;
			winsTicks = rapTicks;
		}
		else if (fighter1->IsDizzy || fighter2->IsDizzy)
		{
			fighterResetFlagsAll(fighter1, fighter2);

			matchState = 4;  //FINISH HIM/HER!

			if (fighter1->IsDizzy)
			{
				loser = fighter1->fighterIndex;
			}
			else if (fighter2->IsDizzy)
			{
				loser = fighter2->fighterIndex;
			}

			sprite[FIGHT].x_ = 8;
			sprite[FIGHT].y_ = 64;
			sprite[FIGHT].scaled = R_spr_unscale;
			matchTicks = rapTicks;

			if (loser == SONYA)
			{
				sfxFinishHer(soundHandler);
			}
			else
			{
				sfxFinishHim(soundHandler);
			}
		}
	}
	else if (matchState == 3)
	{
		if (rapTicks > matchTicks + 60)
		{
			if (!playedName)
			{
				playedName = true;
				winsTicks = rapTicks;
				switch (winner)
				{
					case CAGE:
						sfxJohnnyCage(soundHandler, true);
						break;
					case KANO:
						sfxKano(soundHandler, true);
						break;
					case RAIDEN:
						sfxRaiden(soundHandler, true);
						break;
					case KANG:
						sfxLiuKang(soundHandler, true);
						break;
					case SCORPION:
						sfxScorpion(soundHandler, true);
						break;
					case SUBZERO:
						sfxSubzero(soundHandler, true);
						break;
					case SONYA:
						sfxSonya(soundHandler, true);
						break;
					default:
						break;
				}
			}
			else if (!playedWins && rapTicks > winsTicks + 70)
			{
				playedWins = true;
				sfxWins(soundHandler);
			}

			switch (winner)
			{
				case CAGE:
					updateSpriteAnimator(&fightAnimator, cageWinsFrames, 2, true, true);
					break;
				case KANO:
					updateSpriteAnimator(&fightAnimator, kanoWinsFrames, 2, true, true);
					break;
				case RAIDEN:
					updateSpriteAnimator(&fightAnimator, raidenWinsFrames, 2, true, true);
					break;
				case KANG:
					updateSpriteAnimator(&fightAnimator, kangWinsFrames, 2, true, true);
					break;
				case SCORPION:
					updateSpriteAnimator(&fightAnimator, scorpionWinsFrames, 2, true, true);
					break;
				case SUBZERO:
					updateSpriteAnimator(&fightAnimator, subzeroWinsFrames, 2, true, true);
					break;
				case SONYA:
					updateSpriteAnimator(&fightAnimator, sonyaWinsFrames, 2, true, true);
					break;
				case REPTILE:
					updateSpriteAnimator(&fightAnimator, reptileWinsFrames, 2, true, true);
					break;
				case KASUMI:
					updateSpriteAnimator(&fightAnimator, kasumiWinsFrames, 2, true, true);
					break;
				case GORO:
					updateSpriteAnimator(&fightAnimator, goroWinsFrames, 2, true, true);
					break;
				case SHANG:
					updateSpriteAnimator(&fightAnimator, shangWinsFrames, 2, true, true);
					break;
				default:
					break;
			}

			sprite[FIGHT].active = R_is_active;

			if (rapTicks > matchTicks + MATCH_TIME_WINS)
			{
				if (!matchComplete)
				{
					matchComplete = true;
					
					if (round < 3 && fighter1Wins <= 1 && fighter2Wins <= 1)
					{
						round++;						
					}
					else
					{
						//switch back to Choose Your Fighter
						return false;
					}
				}				
			}
		}
	}
	else if (matchState == 4)
	{
		if (loser == SONYA)
		{
			//FINISH HER!
			updateSpriteAnimator(&fightAnimator, finishHerFrames, 2, true, true);
		}
		else
		{
			//FINISH HIM!
			updateSpriteAnimator(&fightAnimator, finishHimFrames, 2, true, true);
		}

		sprite[FIGHT].active = R_is_active;

		if (rapTicks >= matchTicks + 60)
		{
			matchState = 5;
			sprite[FIGHT].active = R_is_inactive;
			matchTicks = rapTicks;
		}
	}
	else if (matchState == 5)
	{
		if (rapTicks >= matchTicks + MATCH_TIME_FINISH)
		{
			if (fighter1->IsDizzy)
			{
				fighter1->DoDefeatedSequence = true;
				matchState = 2;
			}
			else if (fighter2->IsDizzy)
			{
				fighter2->DoDefeatedSequence = true;
				matchState = 2;
			}
		}
		
		if ((fighter1->IsDefeated && !fighter1->IsActive) || (fighter2->IsDefeated && !fighter2->IsActive))
		{
			matchState = 2;
		}
	}

	return true;
}

bool matchIsComplete()
{
	return matchComplete;
}

int matchGetFighter1Wins()
{
	return fighter1Wins;
}

int matchGetFighter2Wins()
{
	return fighter2Wins;
}