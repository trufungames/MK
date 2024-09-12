#include "common.h"
#include "camera.h"
#include "fighter.h"
#include "spriteanimator.h"
#include "stage.h"

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
    xOffset = -8;
    backgroundSpriteIndex = spriteIndex;
    cameraX = startX;
    cameraY = startY;
    cameraXMax = xMax;
    backgroundGfxBase = gfxBase;

    setFrame(backgroundSpriteIndex, 320, stageGetHeight(), cameraX, cameraY, 2.0f, backgroundGfxBase);
    cameraTicks = rapTicks;
}

void cameraUpdate(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (rapTicks > cameraTicks + 0)
    {
        fighter1->positionX = fighter1->worldPositionX - cameraX;
        fighter2->positionX = fighter2->worldPositionX - cameraX;

        if (fighter1->positionX < CAMERA_BOUND_LEFT
            || fighter2->positionX < CAMERA_BOUND_LEFT)
        {
            //Pan the camera to the LEFT
            xOffset += 2;
            stageMove(1, xOffset);
        }
        else if (fighter1->positionX > CAMERA_BOUND_RIGHT
            || fighter2->positionX > CAMERA_BOUND_RIGHT)
        {
            //Pan the camera to the RIGHT    
            xOffset -= 2;
            stageMove(-1, xOffset);
        }

        if (xOffset <= -16)
        {
            //Camera headed RIGHT
            cameraX += 4;
            setFrame(backgroundSpriteIndex, 320, stageGetHeight(), cameraX, cameraY, 2.0f, backgroundGfxBase);
            xOffset = -8;                
        }
        else if (xOffset >= 0)
        {
            //Camera headed LEFT
            cameraX -= 4;
            setFrame(backgroundSpriteIndex, 320, stageGetHeight(), cameraX, cameraY, 2.0f, backgroundGfxBase);
            xOffset = -8;
        }

        sprite[STAGE_PRIMARY_BACKGROUND].x_ = xOffset;

        // backgroundChangedLeft = false;
        // backgroundChangedRight = false;

        // //update the background every other frame
        // if (fighter1->direction == 1)
        // {
        //     if (cameraCheckBoundsLeft(fighter1, fighter2)) backgroundChangedLeft = true;
        //     if (cameraCheckBoundsRight(fighter1, fighter2)) backgroundChangedRight = true;
        // }
        // else
        // {
        //     if (cameraCheckBoundsLeft(fighter2, fighter1)) backgroundChangedLeft = true;
        //     if (cameraCheckBoundsRight(fighter2, fighter1)) backgroundChangedRight = true;
        // }

        // if (backgroundChangedLeft || backgroundChangedRight)
        // {
        //     xOffset += backgroundChangedLeft ? 2 : -2;
        //     stageMove(backgroundChangedLeft ? 1 : -1, xOffset);

        //     if (xOffset <= -16)
        //     {
        //         //Camera headed RIGHT
        //         cameraX += 4;
        //         setFrame(backgroundSpriteIndex, 320, stageGetHeight(), cameraX, cameraY, 2.0f, backgroundGfxBase);
        //         xOffset = -8;                
        //     }
        //     else if (xOffset >= 0)
        //     {
        //         //Camera headed LEFT
        //         cameraX -= 4;
        //         setFrame(backgroundSpriteIndex, 320, stageGetHeight(), cameraX, cameraY, 2.0f, backgroundGfxBase);
        //         xOffset = -8;
        //     }

        //     sprite[STAGE_PRIMARY_BACKGROUND].x_ = xOffset;            
        //}
        
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
    return cameraX;
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