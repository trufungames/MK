#include "common.h"
#include "camera.h"
#include "fighter.h"
#include "spriteanimator.h"

int cameraTicks = 0;
int cameraX = 0;
int cameraY = 0;
int cameraXMax = 400;
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
        if (fighter1->direction == 1)
        {
            cameraCheckBoundsLeft(fighter1, fighter2);
            cameraCheckBoundsRight(fighter1, fighter2);
        }
        else
        {
            cameraCheckBoundsLeft(fighter2, fighter1);
            cameraCheckBoundsRight(fighter2, fighter1);
        }

        setFrame(backgroundSpriteIndex, 336, 172, cameraX, cameraY, 2.0f, backgroundGfxBase);
        cameraTicks = rapTicks;
    }
}

void cameraCheckBoundsLeft(struct Fighter* fighterLeft, struct Fighter* fighterRight)
{
    if ((fighterLeft->IsWalking && cameraX > CAMERA_BOUND_LEFT && fighterLeft->positionX <= CAMERA_BOUND_LEFT && fighterRight->positionX + FIGHTER_WIDTH < CAMERA_BOUND_RIGHT)
        || (fighterRight->IsPushing && fighterLeft->IsBeingPushed && cameraX > CAMERA_BOUND_LEFT && fighterLeft->positionX <= CAMERA_BOUND_LEFT))
    {
        cameraX -= 1;
        fighterShiftRight(fighterRight);
        for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
        {
            sprite[BLOOD_DROP+i].x_ += 2.0f;
            sprite[BLOOD_POOL+i].x_ += 2.0f;
        }
    }
    // else if (cameraX > CAMERA_BOUND_LEFT && fighterLeft->positionX <= 20 && (fighterRight->positionX - fighterLeft->positionX) < 160)
    // {
    //     cameraX -= 1;
    //     fighterShiftRight(fighterLeft);
    //     fighterShiftRight(fighterRight);
    // }
}

void cameraCheckBoundsRight(struct Fighter* fighterLeft, struct Fighter* fighterRight)
{
    if ((fighterRight->IsWalking && cameraX < cameraXMax && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT && fighterLeft->positionX > CAMERA_BOUND_LEFT)
        || (fighterLeft->IsPushing && fighterRight->IsBeingPushed && cameraX < cameraXMax && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT))
    {
        cameraX += 1;
        fighterShiftLeft(fighterLeft);
        for (int i = 0; i < TOTAL_BLOOD_COUNT; i++)
        {
            sprite[BLOOD_DROP+i].x_ -= 2.0f;
            sprite[BLOOD_POOL+i].x_ -= 2.0f;
        }
    }
    // else if (cameraX < cameraXMax && fighterRight->positionX + FIGHTER_WIDTH >= CAMERA_BOUND_RIGHT - 20 && (fighterRight->positionX - fighterLeft->positionX) < 80)
    // {
    //     cameraX += 1;
    //     fighterShiftLeft(fighterLeft);
    //     fighterShiftLeft(fighterRight);
    // }
}

bool cameraCanMove()
{
    return cameraX > CAMERA_BOUND_LEFT && cameraX < cameraXMax;
}