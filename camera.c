#include "common.h"
#include "camera.h"
#include "fighter.h"
#include "spriteanimator.h"

int cameraTicks = 0;
int cameraX = 0;
int cameraY = 0;
int cameraXMax = 400;
bool backgroundChangedLeft = false;
bool backgroundChangedRight = false;
int xOffset = 0;

unsigned int backgroundSpriteIndex;
unsigned int backgroundGfxBase;

void cameraInit(unsigned int spriteIndex, int startX, int startY, int xMax, unsigned int gfxBase)
{
    backgroundSpriteIndex = spriteIndex;
    cameraX = startX;
    cameraY = startY;
    cameraXMax = xMax;
    backgroundGfxBase = gfxBase;

    setFrame(backgroundSpriteIndex, 336, 172, cameraX, cameraY, 2.0f, backgroundGfxBase);
}

void cameraUpdate(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (rapTicks > cameraTicks + 0)
    {
        backgroundChangedLeft = false;
        backgroundChangedRight = false;

        //update the background every other frame
        if (fighter1->direction == 1)
        {
            if (cameraCheckBoundsLeft(fighter1, fighter2)) backgroundChangedLeft = true;
            if (cameraCheckBoundsRight(fighter1, fighter2)) backgroundChangedRight = true;
        }
        else
        {
            if (cameraCheckBoundsLeft(fighter2, fighter1)) backgroundChangedLeft = true;
            if (cameraCheckBoundsRight(fighter2, fighter1)) backgroundChangedRight = true;
        }

        if (backgroundChangedLeft || backgroundChangedRight)
        {
            xOffset += backgroundChangedLeft ? 2 : -2;

            if (xOffset <= -16)
            {
                //Camera headed RIGHT
                cameraX += 4;
                setFrame(backgroundSpriteIndex, 336, 172, cameraX, cameraY, 2.0f, backgroundGfxBase);
                xOffset = -8;
            }
            else if (xOffset >= 0)
            {
                //Camera headed LEFT
                cameraX -= 4;
                setFrame(backgroundSpriteIndex, 336, 172, cameraX, cameraY, 2.0f, backgroundGfxBase);
                xOffset = -8;
            }

            sprite[STAGE_PIT_BACKGROUND].x_ = xOffset;
            // if (sprite[STAGE_PIT_BACKGROUND].x_ == 0)
            // {
            //     setFrame(backgroundSpriteIndex, 336, 172, cameraX, cameraY, 2.0f, backgroundGfxBase);
            //     sprite[STAGE_PIT_BACKGROUND].x_ = backgroundChangedLeft ? 1 : -1;
            // }
            // else
            // {
            //     sprite[STAGE_PIT_BACKGROUND].x_ = 0;
            // }
            
        }
        
        cameraTicks = rapTicks;
    }
}

bool cameraCheckBoundsLeft(struct Fighter* fighterLeft, struct Fighter* fighterRight)
{
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
    // if ((fighterRight->IsWalking && cameraX < cameraXMax && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT && fighterLeft->positionX > CAMERA_BOUND_LEFT)
    //     || (fighterLeft->IsPushing && fighterRight->IsBeingPushed && cameraX < cameraXMax && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT))
    if (!cameraIsAtRightWall() && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT// - 10
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