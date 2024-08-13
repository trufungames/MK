#include "common.h"
#include "spritedelay.h"

struct SpriteDelay sprites[] = {
    { 0, 0, false },
    { 0, 0, false },
    { 0, 0, false },
    { 0, 0, false },
    { 0, 0, false },
    { 0, 0, false },
    { 0, 0, false },
    { 0, 0, false },
    { 0, 0, false },
    { 0, 0, false }
};

void spriteDelayInit()
{
    for (int i = 0; i < 10; i++)
    {
        sprites[i].inUse = false;
    }
}

void spriteDelayUpdate()
{
    for (int i = 0; i < 10; i++)
    {
        if (sprites[i].inUse && rapTicks >= sprites[i].ticks)
        {
            sprites[i].inUse = false;
            sprite[sprites[i].spriteIndex].active = R_is_inactive;
            (*sprites[i].inUseFlag) = false;
        }
    }
}

void spriteDelaySetInactive(int spriteIndex, int ticks, bool* inUseFlag)
{
    for (int i = 0; i < 10; i++)
    {
        if (!sprites[i].inUse)
        {
            sprites[i].spriteIndex = spriteIndex;
            sprites[i].ticks = ticks;
            sprites[i].inUse = true;
            sprites[i].inUseFlag = inUseFlag;
            break;
            
        }
    }
}