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
short targetCameraX = 0;
bool isScrollingPit = false;

void cameraInit(unsigned int spriteIndex, int startX, int startY, int xMax, unsigned int gfxBase)
{
    xOffset = 0;
    backgroundSpriteIndex = spriteIndex;
    cameraX = startX;
    cameraY = startY;
    targetCameraX = cameraX;
    cameraXMax = xMax;
    backgroundGfxBase = gfxBase;

    setFrame(backgroundSpriteIndex, 352, stageGetHeight(), cameraX, cameraY, 1.0f, backgroundGfxBase);
    sprite[STAGE_PRIMARY_BACKGROUND].x_ = xOffset; 
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

        if (panDirection == 1 && targetCameraX - cameraX < 8)
        {
            targetCameraX = cameraX;
        }
        else if (panDirection == -1 && cameraX - targetCameraX < 8)
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

                if ((panDirection == 1 && targetCameraX - cameraX > 8)
                    || (panDirection == -1 && cameraX - targetCameraX > 8))
                {
                    cameraX += panDirection * 8;
                }
                else
                {
                    cameraX += panDirection * 8;
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

                setFrame(backgroundSpriteIndex, 352, stageGetHeight(), cameraX, cameraY, 1.0f, backgroundGfxBase);
            //}

            sprite[STAGE_PRIMARY_BACKGROUND].x_ = xOffset; 
            stagePositionAssets();
        }
        else if (isScrollingPit)
        {
            if (fighter1->currentState->Name == STATE_PIT_FATALITY)
            {
                sprite[fighter1->spriteIndex].y_ -= 8;

                if (sprite[fighter1->spriteIndex].y_ <= 0)
                {
                    //sprite[fighter1->spriteIndex].active = R_is_inactive;
                }
            }
            else if (fighter2->currentState->Name == STATE_PIT_FATALITY)
            {
                sprite[fighter2->spriteIndex].y_ -= 8;

                if (sprite[fighter2->spriteIndex].y_ <= 0)
                {
                    //sprite[fighter2->spriteIndex].active = R_is_inactive;
                }
            }

            if (sprite[STAGE_PRIMARY_BACKGROUND].y_ > 0)
            {
                sprite[STAGE_PRIMARY_BACKGROUND].y_ -= 8;
                setFrame(backgroundSpriteIndex, 352, 240, cameraX, cameraY, 1.0f, backgroundGfxBase);
            }
            else if (cameraY < 400)
            {
                cameraY += 8;
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

bool cameraFighterIsAtBoundsRight(struct Fighter* fighter)
{
    return cameraIsAtRightWall() && fighter->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT;
}

bool cameraFighterIsAtBoundsLeft(struct Fighter* fighter)
{
    return cameraIsAtLeftWall() && fighter->positionX <= CAMERA_BOUND_LEFT;
}

void cameraScrollPit()
{
    isScrollingPit = true;
    sprite[STAGE_PRIMARY_BACKGROUND].height = 240;
}

bool cameraIsScrollingPit()
{
    return isScrollingPit;
}