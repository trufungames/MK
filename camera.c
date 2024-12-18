#include "common.h"
#include "camera.h"
#include "fighter.h"
#include "spriteanimator.h"
#include "spritemovements.h"
#include "stage.h"
#include "statemachine.h"
#include "debug.h"

short cameraTicks = 0;
short cameraX = 0;
short cameraY = 0;
short cameraXMax = 400;
bool backgroundChangedLeft = false;
bool backgroundChangedRight = false;
short xOffset = 0;
bool movingCamera = false;
short panDirection = 1;
unsigned int backgroundSpriteIndex;
unsigned int backgroundGfxBase;
unsigned int pitSpikesGfxBase = 0;
short targetCameraX = 0;
bool isScrollingPit = false;
short xStep = 8;

void cameraInit(int stage, int startX, int startY, int xMax, unsigned int gfxBase)
{
    xOffset = 0;

    switch (stage)
    {
        case STAGE_COURTYARD:
            backgroundSpriteIndex = STAGE_PRIMARY_BACKGROUND_4BIT;
            break;
        default:
            backgroundSpriteIndex = STAGE_PRIMARY_BACKGROUND;
            break;
    }
    
    cameraX = startX;
    cameraY = startY;
    targetCameraX = cameraX;
    cameraXMax = xMax;
    backgroundGfxBase = gfxBase;

    setFrame(backgroundSpriteIndex, 352, stageGetHeight(), cameraX, cameraY, 1.0f, backgroundGfxBase);

    if ((stageGet() == STAGE_PIT || stageGet() == STAGE_PIT_BOTTOM) && pitSpikesGfxBase == 0)
    {
        pitSpikesGfxBase = sprite[FOREGROUND_SPIKES].gfxbase;
        setFrame(FOREGROUND_SPIKES, 352, 58, cameraX, 0, 1.0f, pitSpikesGfxBase);
    }
    else if (stageGet() == STAGE_PIT || stageGet() == STAGE_PIT_BOTTOM)
    {
        setFrame(FOREGROUND_SPIKES, 352, 58, cameraX, 0, 1.0f, pitSpikesGfxBase);
    }

    sprite[backgroundSpriteIndex].x_ = xOffset;
    cameraTicks = rapTicks;
}

void cameraUpdate(struct Fighter* fighter1, struct Fighter* fighter2)
{
    //printMessageInt("camera x", cameraGetX(), 20, 0);
    //printMessageInt("offset x", xOffset, 20, 10);

    fighter1->positionX = fighter1->worldPositionX - cameraGetX();
    fighter2->positionX = fighter2->worldPositionX - cameraGetX();
    fighter1->projectilePositionX = fighter1->projectileWorldPositionX - cameraGetX();
    fighter2->projectilePositionX = fighter2->projectileWorldPositionX - cameraGetX();
    
    //bound the positionX to 1 so it displays correctly in animateFrame()
    fighter1->positionX = fighter1->positionX > 0 ? fighter1->positionX : 1;
    fighter2->positionX = fighter2->positionX > 0 ? fighter2->positionX : 1;
    fighter1->projectilePositionX = fighter1->projectilePositionX > 0 ? fighter1->projectilePositionX : 1;
    fighter2->projectilePositionX = fighter2->projectilePositionX > 0 ? fighter2->projectilePositionX : 1;

    if (rapTicks > cameraTicks + 1)
    {
        if (fighter1->direction == 1 && fighter1->worldPositionX - 16 < cameraX)
        {
            targetCameraX = fighter1->worldPositionX - 16;
        }
        else if (fighter2->direction == 1 && fighter2->worldPositionX - 16 < cameraX)
        {
            targetCameraX = fighter2->worldPositionX - 16;
        }
        else if (fighter1->direction == -1 && fighter1->worldPositionX > (cameraX + 284))
        {
            targetCameraX = fighter1->worldPositionX - 284;
        }
        else if (fighter2->direction == -1 && fighter2->worldPositionX > (cameraX + 284))
        {
            targetCameraX = fighter2->worldPositionX - 284;
        }

        panDirection = cameraX < targetCameraX ? 1 : -1;

        if (panDirection == 1 && targetCameraX - cameraX < xStep)
        {
            targetCameraX = cameraX;
        }
        else if (panDirection == -1 && cameraX - targetCameraX < xStep)
        {
            targetCameraX = cameraX;
        }

        if (cameraX != targetCameraX && !isScrollingPit)
        {
            // xOffset -= panDirection * 8;

            // if (xOffset >= 0
            //     || xOffset <= -16)
            // {
            //     xOffset = -8;

                if ((panDirection == 1 && targetCameraX - cameraX > xStep)
                    || (panDirection == -1 && cameraX - targetCameraX > xStep))
                {
                    cameraX += panDirection * xStep;
                }
                else
                {
                    cameraX += panDirection * xStep;
                }

                if (panDirection == 1 && cameraX > FIGHTER_MAX_WORLD_POSITION_X)
                {
                    panDirection *= -1;
                    cameraX = FIGHTER_MAX_WORLD_POSITION_X;
                }
                else if (panDirection == -1 && cameraX < FIGHTER_MIN_WORLD_POSITION_X)
                {
                    panDirection *= -1;
                    cameraX = FIGHTER_MIN_WORLD_POSITION_X;
                }       

                setFrame(backgroundSpriteIndex, 320, stageGetHeight(), cameraX, cameraY, 1.0f, backgroundGfxBase);
                
                if (stageGet() == STAGE_PIT || stageGet() == STAGE_PIT_BOTTOM)
                {
                    setFrame(FOREGROUND_SPIKES, 320, 58, cameraX, 0, 1.0f, pitSpikesGfxBase);
                }
            //}

            sprite[backgroundSpriteIndex].x_ = xOffset;
            stagePositionAssets();
        }
        else if (isScrollingPit)
        {
            if (sprite[backgroundSpriteIndex].y_ > 0)
            {
                if (fighter1->currentState->Name == STATE_PIT_FATALITY)
                {
                    //add the offset to the fighter, so we can clip the sprite along the top as they scroll
                    fighter1->vars[1] = 8;
                }
                else if (fighter2->currentState->Name == STATE_PIT_FATALITY)
                {
                    //add the offset to the fighter, so we can clip the sprite along the top as they scroll
                    fighter2->vars[1] = 8;
                }

                sprite[backgroundSpriteIndex].y_ -= 8;
                sprite[FOREGROUND_SPIKES].y_ -= 8;
                setFrame(backgroundSpriteIndex, 352, 240, cameraX, cameraY, 1.0f, backgroundGfxBase);
            }
            else if (cameraY < 400)
            {
                if (fighter1->currentState->Name == STATE_PIT_FATALITY)
                {
                    //add the offset to the fighter, so we can clip the sprite along the top as they scroll
                    fighter1->vars[1] = 8;
                }
                else if (fighter2->currentState->Name == STATE_PIT_FATALITY)
                {
                    //add the offset to the fighter, so we can clip the sprite along the top as they scroll
                    fighter2->vars[1] = 8;
                }
                
                cameraY += 8;
                sprite[FOREGROUND_SPIKES].active = R_is_active;
                sprite[FOREGROUND_SPIKES].y_ -= 8;
                setFrame(backgroundSpriteIndex, 352, 240, cameraX, cameraY, 1.0f, backgroundGfxBase);
            }
            else
            {
                isScrollingPit = false;
            }
        }
        
        cameraTicks = rapTicks;
    }
}

bool cameraCheckBoundsLeft(struct Fighter* fighterLeft, struct Fighter* fighterRight)
{
    return false;
    //if ((fighterLeft->IsWalking && cameraX > CAMERA_BOUND_LEFT && fighterLeft->positionX <= CAMERA_BOUND_LEFT && fighterRight->positionX + FIGHTER_WIDTH < CAMERA_BOUND_RIGHT)
    //    || (fighterRight->IsPushing && fighterLeft->IsBeingPushed && cameraX > CAMERA_BOUND_LEFT && fighterLeft->positionX <= CAMERA_BOUND_LEFT))
    if (!cameraIsAtLeftWall() && fighterLeft->positionX <= CAMERA_BOUND_LEFT
        && fighterRight->positionX + FIGHTER_WIDTH + 2 < CAMERA_BOUND_RIGHT)
    {
        //cameraX -= 1;
        fighterShiftRight(fighterRight);
        fighterShiftRight(fighterLeft);
        for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
        {
            sprite[BLOOD_DROP+i].x_ += 2.0f;
            sprite[BLOOD_POOL+i].x_ += 2.0f;
        }
        return true;
    }

    return false;
}

bool cameraCheckBoundsRight(struct Fighter* fighterLeft, struct Fighter* fighterRight)
{
    return false;
    // if ((fighterRight->IsWalking && cameraX < cameraXMax && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT && fighterLeft->positionX > CAMERA_BOUND_LEFT)
    //     || (fighterLeft->IsPushing && fighterRight->IsBeingPushed && cameraX < cameraXMax && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT))
    if (!cameraIsAtRightWall() && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT// - 4
        && fighterLeft->positionX > CAMERA_BOUND_LEFT)
    {
        //cameraX += 1;
        fighterShiftLeft(fighterLeft);
        fighterShiftLeft(fighterRight);
        for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
        {
            sprite[BLOOD_DROP+i].x_ -= 2.0f;
            sprite[BLOOD_POOL+i].x_ -= 2.0f;
        }

        return true;
    }
    
    return false;
}

bool cameraCanMove()
{
    return cameraX > CAMERA_BOUND_LEFT && cameraX < cameraXMax;
}

bool cameraIsAtLeftWall()
{
    return cameraX <= CAMERA_BOUND_LEFT;
}

bool cameraIsAtRightWall()
{
    return cameraX >= cameraXMax;
}

int cameraGetX()
{
    return cameraX + xOffset;
}

int cameraGetY()
{
    return cameraY;
}

int cameraGetParalaxX()
{
    return (cameraX / 2) + xOffset;
}

int cameraGetOffset()
{
    return xOffset;
}

void cameraResetTicks()
{
    cameraTicks = rapTicks;
}

bool cameraFighterIsAtBoundsRight(struct Fighter* fighter, int additionalOffset)
{
    return fighter->worldPositionX + FIGHTER_WIDTH + additionalOffset >= FIGHTER_MAX_WORLD_POSITION_X;
    //return cameraIsAtRightWall() && fighter->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT;
}

bool cameraFighterIsAtBoundsLeft(struct Fighter* fighter, int additionalOffset)
{
    return fighter->worldPositionX <= FIGHTER_MIN_WORLD_POSITION_X + FIGHTER_WIDTH + additionalOffset;
    //return cameraIsAtLeftWall() && fighter->positionX <= CAMERA_BOUND_LEFT;
}

void cameraScrollPit()
{
    isScrollingPit = true;
    sprite[backgroundSpriteIndex].height = 240;
}

bool cameraIsScrollingPit()
{
    return isScrollingPit;
}