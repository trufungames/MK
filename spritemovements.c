#include "common.h"
#include "fighter.h"
#include "spritemovements.h"

bool IsScrollingUp = false;
bool IsScrollingDown = false;
bool IsShaking = false;
int LastTicks = 0;
int ShakeTicks = 40;
int bgYOffset = 0;
int bgYStart = 0;
int bgYInc = 0;
int shakeCount = 0;
int shakeDirection = 1;
bool scrollUpAfterShake = false;
int cloudTicks1 = 0;
int cloudTicks2 = 0;
int cloudTicks3 = 0;

void moveUp (void)
{
	//sprite[sprBugIndex].y_ -= 2;
}


void moveDown (void)
{
	//sprite[sprBugIndex].y_ += 2;
}

void bgInit()
{
	LastTicks = rapTicks;
	IsScrollingUp = false;
	IsScrollingDown = false;
	IsShaking = false;
	cloudTicks1 = rapTicks;
	cloudTicks2 = rapTicks;
	cloudTicks3 = rapTicks;
}

void bgScrollRight (float delta)
{
	// if (sprite[STAGE_PIT_BACKGROUND].x_ >= -692.0f)
	// {	
	// 	sprite[STAGE_PIT_BACKGROUND].x_ -= 2.0f * delta;

	// 	for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
	// 	{
	// 		sprite[BLOOD_DROP+i].x_ -= 2.0f * delta;
	// 		sprite[BLOOD_POOL+i].x_ -= 2.0f * delta;
	// 	}
	// }
}


void bgScrollLeft (float delta)
{
	// if (sprite[STAGE_PIT_BACKGROUND].x_ <= -2.0f)
	// {
	// 	sprite[STAGE_PIT_BACKGROUND].x_ += 2.0f * delta;

	// 	for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
	// 	{
	// 		sprite[BLOOD_DROP+i].x_ += 2.0f * delta;
	// 		sprite[BLOOD_POOL+i].x_ += 2.0f * delta;
	// 	}
	// }
}

void bgUpdate(struct Fighter* fighter1, struct Fighter* fighter2)
{
	if (rapTicks >= LastTicks + 1)
	{
		if (IsScrollingUp)
		{
			bgYOffset += 2;
			bgYInc = 2;

			if (bgYOffset >= 16)
			{
				bgYOffset = 0;
				bgYInc = 0;
				IsScrollingUp = false;
			}
		}
		else if (IsScrollingDown)
		{
			bgYOffset -= 2;
			bgYInc = -2;

			if (bgYOffset <= -16)
			{
				bgYInc = 0;
				bgYOffset = 0;
				IsScrollingDown = false;
				IsShaking = true;
				shakeCount = 0;
				shakeDirection = 1;
			}
		}
		else if (IsShaking)
		{
			bgYInc = (8 * shakeDirection);
			shakeDirection *= -1;
			shakeCount++;

			if (shakeCount > 6)
			{
				IsShaking = false;

				if (scrollUpAfterShake)
				{
					bgYOffset = 0;
					bgYInc = 0;
					IsScrollingUp = true;
					IsScrollingDown = false;
					LastTicks = rapTicks;
				}
			}
		}

		if (IsScrollingUp || IsScrollingDown || IsShaking)
		{
			sprite[STAGE_PRIMARY_BACKGROUND].y_ += bgYInc;
			//sprite[STAGE_PIT_MOON].y_ += bgYInc;
			fighter1->positionY += bgYInc;
			fighter2->positionY += bgYInc;
		}
		
		LastTicks = rapTicks;
	}
}

void bgScrollUp()
{
	if (!IsScrollingUp)
	{
		bgYOffset = 0;
		bgYInc = 0;
		IsScrollingUp = true;
		IsScrollingDown = false;
		LastTicks = rapTicks;
	}
}

void bgScrollDown()
{
	if (!IsScrollingDown)
	{
		bgYOffset = 0;
		bgYInc = 0;
		IsScrollingUp = false;
		IsScrollingDown = true;
		LastTicks = rapTicks;
	}
}

void bgShake(bool scrollUp)
{
	if (!IsShaking)
	{
		scrollUpAfterShake = scrollUp;
		bgYInc = 0;
		IsScrollingUp = false;
		IsScrollingDown = false;
		IsShaking = true;
		shakeCount = 0;
		shakeDirection = 1;
		LastTicks = rapTicks;
	}
}