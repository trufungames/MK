#include "common.h"
#include "fighter.h"
#include "sound.h"
#include "spriteanimator.h"
#include "blood.h"
#include "spritedelay.h"

SpriteAnimator bloodSpray1Animator = {
	BLOOD_SPRAY, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodSpray2Animator = {
	BLOOD_SPRAY+1, 0.5f, BMP_BLOOD, 0, 0
};

AnimationFrame bloodSprayFrames[] = {
	{ 16, 32, 0, 0, 0, 0, 4 },
	{ 16, 32, 16, 0, 0, 0, 4 },
	{ 16, 32, 32, 0, 0, 0, 4 },
	{ 16, 32, 48, 0, 0, 0, 4 },
	{ 16, 32, 64, 0, 0, 0, 4 }
};

SpriteAnimator bloodGlobAnimator = {
	BLOOD_GLOB, 0.5f, BMP_BLOOD, 0, 0
};

AnimationFrame bloodGlobFrames[] = {
	{ 32, 32, 80, 0, 0, 0, 6 },
	{ 32, 32, 112, 0, 0, 0, 6 },
	{ 16, 32, 144, 0, 16, 0, 6 },
	{ 32, 32, 160, 0, 0, 0, 6 },
	{ 32, 32, 192, 0, 0, 0, 6 },
    { 32, 32, 224, 0, 0, 0, 6 }
};

BloodSpray bloodGlobObject = {
    BLOOD_GLOB, &bloodGlobAnimator, false, 0, 0
};

SpriteAnimator bloodDrop1Animator = {
	BLOOD_DROP, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodDrop2Animator = {
	BLOOD_DROP+1, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodDrop3Animator = {
	BLOOD_DROP+2, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodDrop4Animator = {
	BLOOD_DROP+3, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodDrop5Animator = {
	BLOOD_DROP+4, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodDrop6Animator = {
	BLOOD_DROP+5, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodDrop7Animator = {
	BLOOD_DROP+6, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodDrop8Animator = {
	BLOOD_DROP+7, 0.5f, BMP_BLOOD, 0, 0
};

AnimationFrame bloodDropFrames[] = {
	{ 32, 16, 112, 80, 0, 0, 2 },
	{ 16, 32, 144, 80, 7, -8, 2 },
	{ 16, 32, 160, 80, 8, -11, 2 },
	{ 16, 32, 176, 80, 7, -11, 2 },
	{ 16, 32, 192, 80, 8, -10, 2 },
    { 16, 32, 208, 80, 8, -11, 2 },
    { 16, 16, 224, 80, 7, 0, 2 },
    { 16, 16, 240, 80, 7, 0, 2 }
};

SpriteAnimator bloodBall1Animator = {
	BLOOD_BALL, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodBall2Animator = {
	BLOOD_BALL+1, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodBall3Animator = {
	BLOOD_BALL+2, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodBall4Animator = {
	BLOOD_BALL+3, 0.5f, BMP_BLOOD, 0, 0
};

AnimationFrame bloodBallFrames[] = {
	{ 32, 32, 352, 80, 0, 0, 6 },
	{ 32, 32, 16, 128, 0, 0, 6 },
	{ 32, 32, 64, 128, 0, 0, 6 },
	{ 32, 32, 112, 128, 0, 0, 6 },
    { 32, 32, 112, 128, 0, 0, 6 }
};

SpriteAnimator bloodPool1Animator = {
	BLOOD_POOL, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodPool2Animator = {
	BLOOD_POOL+1, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodPool3Animator = {
	BLOOD_POOL+2, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodPool4Animator = {
	BLOOD_POOL+3, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodPool5Animator = {
	BLOOD_POOL+4, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodPool6Animator = {
	BLOOD_POOL+5, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodPool7Animator = {
	BLOOD_POOL+6, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodPool8Animator = {
	BLOOD_POOL+7, 0.5f, BMP_BLOOD, 0, 0
};

AnimationFrame bloodPoolFrames[] = {
	{ 32, 16, 32, 64, 0, 0, 6 },
	{ 32, 16, 48, 80, 0, 0, 4 },
    { 32, 16, 80, 80, 0, 0, 4 }
};

BloodSpray bloodSprays[] = {
    { BLOOD_SPRAY, &bloodSpray1Animator, false, 0, 0 },
    { BLOOD_SPRAY+1, &bloodSpray2Animator, false, 0, 0 }
};

BloodDrop bloodDrops[] = {
    { BLOOD_DROP, &bloodDrop1Animator, false, 0, 0, 0 },
    { BLOOD_DROP+1, &bloodDrop2Animator, false, 0, 0, 0 },
    { BLOOD_DROP+2, &bloodDrop3Animator, false, 0, 0, 0 },
    { BLOOD_DROP+3, &bloodDrop4Animator, false, 0, 0, 0 },
    { BLOOD_DROP+4, &bloodDrop5Animator, false, 0, 0, 0 },
    { BLOOD_DROP+5, &bloodDrop6Animator, false, 0, 0, 0 },
    { BLOOD_DROP+6, &bloodDrop7Animator, false, 0, 0, 0 },
    { BLOOD_DROP+7, &bloodDrop8Animator, false, 0, 0, 0 }
};

BloodBall bloodBalls[] = {
    { BLOOD_BALL, &bloodBall1Animator, false, 0, 0 },
    { BLOOD_BALL+1, &bloodBall2Animator, false, 0, 0 },
    { BLOOD_BALL+2, &bloodBall3Animator, false, 0, 0 },
    { BLOOD_BALL+3, &bloodBall4Animator, false, 0, 0 }
};

BloodPool bloodPools[] = {
    { BLOOD_POOL, &bloodPool1Animator, false },
    { BLOOD_POOL+1, &bloodPool2Animator, false },
    { BLOOD_POOL+2, &bloodPool3Animator, false },
    { BLOOD_POOL+3, &bloodPool4Animator, false },
    { BLOOD_POOL+4, &bloodPool5Animator, false },
    { BLOOD_POOL+5, &bloodPool6Animator, false },
    { BLOOD_POOL+6, &bloodPool7Animator, false },
    { BLOOD_POOL+7, &bloodPool8Animator, false }
};

AnimationFrame bloodSquirtFrames[] = {
	{ 48, 64, 0, 64, 0, 0, 8 },
	{ 48, 64, 48, 64, 0, 0, 8 },
    { 48, 64, 96, 64, 0, 0, 8 },
    { 48, 64, 144, 64, 0, 0, 8 },
    { 48, 64, 192, 64, 0, 0, 8 },
    { 48, 64, 240, 64, 0, 0, 8 },
    { 48, 64, 288, 64, 0, 0, 8 }
};

SpriteAnimator bloodSquirt1Animator = {
	BLOOD_SQUIRT, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodSquirt2Animator = {
	BLOOD_SQUIRT+1, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodSquirt3Animator = {
	BLOOD_SQUIRT+2, 0.5f, BMP_BLOOD, 0, 0
};

SpriteAnimator bloodSquirt4Animator = {
	BLOOD_SQUIRT+3, 0.5f, BMP_BLOOD, 0, 0
};

BloodSquirt bloodSquirts[] = {
    { BLOOD_SQUIRT, &bloodSquirt1Animator, false },
    { BLOOD_SQUIRT+1, &bloodSquirt2Animator, false },
    { BLOOD_SQUIRT+2, &bloodSquirt3Animator, false },
    { BLOOD_SQUIRT+3, &bloodSquirt4Animator, false }
};

short bloodDirection = 1;
float gravity = 0.0f;
short bloodStayDelay = 0;
int bloodSpeedRnd = 0;
bool impaled = false;
int impaledTicks = 0;

void bloodInit()
{
    bloodStayDelay = 180;
    gravity = 2.0f;
    bloodDirection = 1;
    impaled = false;
    impaledTicks = 0;
}

void bloodUpdate(struct SoundHandler* soundHandler)
{
    if (impaled && rapTicks > impaledTicks + 30)
    {
        impaled = false;
    }

    if (bloodSprays[0].InUse)
    {
        if (animationIsComplete(bloodSprays[0].Animator, 5))
        {
            bloodSprays[0].InUse = false;
            sprite[bloodSprays[0].SpriteIndex].active = R_is_inactive;
        }

        if (rapTicks >= bloodSprays[0].LastTicks + 1)
        {
            bloodSprays[0].X += 1 * -bloodDirection;
            bloodSprays[0].LastTicks = rapTicks;
        }

        updateSpriteAnimator(bloodSprays[0].Animator, bloodSprayFrames, 5, true, false, bloodSprays[0].X, bloodSprays[0].Y, bloodDirection);

        if (bloodSprays[0].Animator->currentFrame == 3 && !bloodSprays[1].InUse)
        {
            bloodSprays[1].InUse = true;
            bloodSprays[1].LastTicks = rapTicks;
            bloodSprays[1].X = bloodSprays[0].X - (12 * bloodDirection);
            bloodSprays[1].Y = bloodSprays[0].Y - (4 * bloodDirection);

            sprite[bloodSprays[1].SpriteIndex].x_ = bloodSprays[1].X;
            sprite[bloodSprays[1].SpriteIndex].y_ = bloodSprays[1].Y;
            sprite[bloodSprays[1].SpriteIndex].flip = bloodDirection == 1 ? R_is_flipped : R_is_normal;
            sprite[bloodSprays[1].SpriteIndex].active = R_is_active;
            bloodSprays[1].Animator->currentFrame = 0;
        }
    }
    
    if (bloodSprays[1].InUse)
    {
        if (rapTicks >= bloodSprays[1].LastTicks + 1)
        {
            bloodSprays[1].X += 1 * -bloodDirection;
            bloodSprays[1].LastTicks = rapTicks;
        }

        updateSpriteAnimator(bloodSprays[1].Animator, bloodSprayFrames, 5, true, false, bloodSprays[1].X, bloodSprays[1].Y, bloodDirection);

        if (animationIsComplete(bloodSprays[1].Animator, 5))
        {
            bloodSprays[1].InUse = false;
            sprite[bloodSprays[1].SpriteIndex].active = R_is_inactive;
        }
    }

    if (bloodGlobObject.InUse)
    {
        if (rapTicks >= bloodGlobObject.LastTicks + 1)
        {
            bloodGlobObject.X += 1 * -bloodDirection;
            bloodGlobObject.LastTicks = rapTicks;
        }

        updateSpriteAnimator(bloodGlobObject.Animator, bloodGlobFrames, 6, true, false, bloodGlobObject.X, bloodGlobObject.Y, bloodDirection);
        if (animationIsComplete(bloodGlobObject.Animator, 6))
        {
            bloodGlobObject.InUse = false;
            sprite[bloodGlobObject.SpriteIndex].active = R_is_inactive;
        }
    }

    for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
    {
        if (bloodDrops[i].InUse)
        {
            updateSpriteAnimator(bloodDrops[i].Animator, bloodDropFrames, 8, bloodDrops[i].Direction == -1 ? true : false, true, bloodDrops[i].X, bloodDrops[i].Y, bloodDrops[i].Direction);

            if (rapTicks >= bloodDrops[i].LastTicks + FIGHTER_BLOOD_TICKS)
            {
                bloodDrops[i].X -= bloodDrops[i].MomentumX * bloodDrops[i].Direction;
                bloodDrops[i].Y += bloodDrops[i].MomentumY;

                if (sprite[bloodDrops[i].SpriteIndex].y_ > FLOOR_LOCATION_Y)
                {
                    bloodPool(sprite[bloodDrops[i].SpriteIndex].x_, FLOOR_LOCATION_Y + (rapRND() & 4));
                    sfxBlood(soundHandler);
                    sprite[bloodDrops[i].SpriteIndex].active = R_is_inactive;
                    bloodDrops[i].InUse  = false;
                }

                bloodDrops[i].MomentumY += gravity;
                bloodDrops[i].LastTicks = rapTicks;
            }
        }
    }

    for (int i = 0; i < TOTAL_BLOOD_SQUIRT_COUNT; i++)
    {
        if (bloodBalls[i].InUse)
        {
            updateSpriteAnimator(bloodBalls[i].Animator, bloodBallFrames, 5, bloodBalls[i].Direction == -1 ? true : false, false);

            if (rapTicks >= bloodBalls[i].LastTicks + FIGHTER_BLOOD_TICKS)
            {
                sprite[bloodBalls[i].SpriteIndex].x_ -= bloodBalls[i].MomentumX * bloodBalls[i].Direction;
                sprite[bloodBalls[i].SpriteIndex].y_ += 7.0f;

                if (sprite[bloodBalls[i].SpriteIndex].y_ > FLOOR_LOCATION_Y)
                {
                    bloodPool(sprite[bloodBalls[i].SpriteIndex].x_, FLOOR_LOCATION_Y + (rapRND() & 4));
                    sfxBlood(soundHandler);
                    sprite[bloodBalls[i].SpriteIndex].active = R_is_inactive;
                    bloodBalls[i].InUse  = false;
                }

                bloodBalls[i].LastTicks = rapTicks;
            }
        }
    }

    for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
    {
        if (bloodPools[i].InUse)
        {
            updateSpriteAnimator(bloodPools[i].Animator, bloodPoolFrames, 3, true, false);     
        }
    }

    for (int i = 0; i < TOTAL_BLOOD_SQUIRT_COUNT; i++)
    {
        if (bloodSquirts[i].InUse)
        {
            updateSpriteAnimator(bloodSquirts[i].Animator, bloodSquirtFrames, 6, true, false);     

            if (animationIsComplete(bloodSquirts[i].Animator, 6))
            {
                bloodSquirts[i].InUse = false;
                sprite[bloodSquirts[i].SpriteIndex].active = R_is_inactive;
            }
        }
    }
}

void bloodSpray(short x, short y, short direction)
{
    if (!bloodSprays[0].InUse)
    {
        bloodSprays[0].X = x;
        bloodSprays[0].Y = y;
        bloodSprays[0].InUse = true;
        bloodDirection = direction;
        sprite[bloodSprays[0].SpriteIndex].x_ = x;
        sprite[bloodSprays[0].SpriteIndex].y_ = y;
        sprite[bloodSprays[0].SpriteIndex].flip = direction == 1 ? R_is_flipped : R_is_normal;
        sprite[bloodSprays[0].SpriteIndex].active = R_is_active;
        bloodSprays[0].Animator->currentFrame = 0;
        bloodSprays[0].LastTicks = rapTicks;
    }
}

void bloodGlob(short x, short y, short direction)
{
    if (!bloodGlobObject.InUse)
    {
        bloodGlobObject.InUse = true;
        bloodDirection = direction;
        bloodGlobObject.X = x;
        bloodGlobObject.Y = y;
        bloodGlobObject.LastTicks = rapTicks;
        sprite[bloodGlobObject.SpriteIndex].x_ = x;
        sprite[bloodGlobObject.SpriteIndex].y_ = y;
        sprite[bloodGlobObject.SpriteIndex].flip = direction == 1 ? R_is_flipped : R_is_normal;
        sprite[bloodGlobObject.SpriteIndex].active = R_is_active;
        bloodGlobObject.Animator->currentFrame = 0;
    }
}

void bloodDrop(short x, short y, short direction)
{
    //bloodSpeedRnd = bloodSpeed + (rapRND() & 2);

    for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
    {
        if (!bloodDrops[i].InUse)
        {
            bloodDrops[i].InUse = true;
            bloodDrops[i].Direction = direction;
            bloodDrops[i].X = x;
            bloodDrops[i].Y = y;
            sprite[bloodDrops[i].SpriteIndex].x_ = bloodDrops[i].X;
            sprite[bloodDrops[i].SpriteIndex].y_ = bloodDrops[i].Y;
            sprite[bloodDrops[i].SpriteIndex].flip = direction == 1 ? R_is_flipped : R_is_normal;
            sprite[bloodDrops[i].SpriteIndex].active = R_is_active;
            bloodDrops[i].Animator->currentFrame = 0;
            bloodDrops[i].MomentumY = FIGHTER_BLOOD_DROP_MOMENTUM_Y + (rapRND() & 2);
            bloodDrops[i].MomentumX = FIGHTER_BLOOD_SPEED_X + (rapRND() & 2);
            break;
        }
    }
}

void bloodBall(short x, short y, short direction)
{
    for (int i = 0; i < TOTAL_BLOOD_SQUIRT_COUNT; i++)
    {
        if (!bloodBalls[i].InUse)
        {
            bloodBalls[i].InUse = true;
            bloodBalls[i].Direction = direction;
            bloodBalls[i].LastTicks = rapTicks;
            sprite[bloodBalls[i].SpriteIndex].x_ = x;
            sprite[bloodBalls[i].SpriteIndex].y_ = y;
            sprite[bloodBalls[i].SpriteIndex].flip = direction == -1 ? R_is_flipped : R_is_normal;
            sprite[bloodBalls[i].SpriteIndex].active = R_is_active;
            bloodBalls[i].Animator->currentFrame = 0;
            bloodBalls[i].MomentumX = FIGHTER_BLOOD_SPEED_X + (rapRND() & 2);
            break;
        }
    }
}

void bloodPool(short x, short y)
{
    for (short i = 0; i < TOTAL_BLOOD_COUNT; i++)
    {
        if (!bloodPools[i].InUse)
        {
            bloodPools[i].InUse = true;
            sprite[bloodPools[i].SpriteIndex].x_ = x;
            sprite[bloodPools[i].SpriteIndex].y_ = y;
            sprite[bloodPools[i].SpriteIndex].active = R_is_active;
            bloodPools[i].Animator->currentFrame = 0;
            spriteDelaySetInactive(bloodPools[i].SpriteIndex, rapTicks+bloodStayDelay, &bloodPools[i].InUse);
            break;
        }
    }
}

void bloodSquirt(short x, short y)
{
    for (int i = 0; i < TOTAL_BLOOD_SQUIRT_COUNT; i++)
    {
        if (!bloodSquirts[i].InUse)
        {
            bloodSquirts[i].InUse = true;
            sprite[bloodSquirts[i].SpriteIndex].x_ = x;
            sprite[bloodSquirts[i].SpriteIndex].y_ = y;
            sprite[bloodSquirts[i].SpriteIndex].active = R_is_active;
            bloodSquirts[i].Animator->currentFrame = 0;
            break;
        }
    }
}

void bloodResetTicks()
{
    for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
    {
        bloodDrops[i].LastTicks = rapTicks;
        bloodDrops[i].Animator->lastTick = rapTicks;
        bloodPools[i].Animator->lastTick = rapTicks;
    }

    for (int i = 0; i < TOTAL_BLOOD_SQUIRT_COUNT; i++)
    {
        bloodSquirts[i].Animator->lastTick = rapTicks;
    }
    
    bloodSpray1Animator.lastTick = rapTicks;
    bloodSpray2Animator.lastTick = rapTicks;
    bloodGlobAnimator.lastTick = rapTicks;
}

void bloodImpale(short x, short y, short direction)
{
    if (!impaled)
    {
        bloodGlob(x - 20, y + 20, direction * -1);
        bloodSpray(x - 10, y, direction * -1);
        bloodSpray(x - 15, y + 10, direction * -1);
        bloodDrop(x + (20 * direction), y + 20, direction * -1);
        bloodDrop(x + (22 * direction), y + 25, direction * -1);
        bloodDrop(x + (18 * direction), y + 15, direction * -1);
        bloodBall(x + (18 * direction), y + 20, direction * -1);
        bloodBall(x + (22 * direction), y + 25, direction * -1);
        bloodBall(x + (20 * direction), y + 10, direction * -1);
        bloodBall(x + (16 * direction), y + 5, direction * -1);

        impaled = true;
        impaledTicks = rapTicks;
    }    
}