#include "common.h"

static int currentStage = STAGE_GORO;
static int cloudTicks1 = 0;
static int cloudTicks2 = 0;
static int cloudTicks3 = 0;

void stageInit()
{
    cloudTicks1 = 0;
    cloudTicks2 = 0;
    cloudTicks3 = 0;
}

int stageGet()
{
    return currentStage;
}

void stageSetNext()
{
    currentStage++;
    
    if (currentStage > STAGE_GORO)
    {
        currentStage = STAGE_WARRIOR;
    }
}

void stageLoadVsBattle()
{
    switch (currentStage)
    {
        case STAGE_WARRIOR:
            jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_WARRIOR_clut),1,16);
            sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_WARRIOR;
            break;
        case STAGE_PIT:
            jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_THEPIT_clut),1,16);
            sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_THEPIT;
            break;
        case STAGE_GORO:
            jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_GORO_clut),1,16);
            sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_GORO;
            break;
        default:
            break;
    }
}

void stageUpdate()
{
    switch (currentStage)
    {
        case STAGE_WARRIOR:
            break;
        case STAGE_PIT:
            if (rapTicks >= cloudTicks1 + 2)
            {
                sprite[STAGE_PIT_CLOUDS1].x_ += 1.0f;
                sprite[STAGE_PIT_CLOUDS1+1].x_ += 1.0f;
                cloudTicks1 = rapTicks;
            }

            if (rapTicks >= cloudTicks2 + 4)
            {
                sprite[STAGE_PIT_CLOUDS1+2].x_ += 1.0f;
                sprite[STAGE_PIT_CLOUDS1+3].x_ += 1.0f;
                sprite[STAGE_PIT_CLOUDS1+4].x_ += 1.0f;
                cloudTicks2 = rapTicks;
            }
            
            if (rapTicks >= cloudTicks3 + 8)
            {
                sprite[STAGE_PIT_CLOUDS1+5].x_ += 1.0f;
                sprite[STAGE_PIT_CLOUDS1+6].x_ += 1.0f;
                sprite[STAGE_PIT_CLOUDS1+7].x_ += 1.0f;
                cloudTicks3 = rapTicks;
            }
            break;
        case STAGE_GORO:
            break;
        default:
            break;
    }
}

int stageGetFighterHitboxIndex()
{
    switch (currentStage)
    {
        case STAGE_WARRIOR:
            return 25;
        case STAGE_PIT:
            return 25;
        case STAGE_GORO:
            return 25;
        default:
            return 25;
    }
}

int stageGetHeight()
{
    switch (currentStage)
    {
        case STAGE_WARRIOR:
            return 240;
        case STAGE_PIT:
            return 176;
        case STAGE_GORO:
            return 240;
        default:
            return 240;
    }
}

int stageGetStartX()
{
    switch (currentStage)
    {
        case STAGE_WARRIOR:
            return 113;
        case STAGE_PIT:
            return 130;
        case STAGE_GORO:
            return 70;
        default:
            return 120;
    }
}

void stageMove(int direction)
{
    switch (currentStage)
    {
        case STAGE_WARRIOR:
            sprite[STAGE_WARRIOR_BUSH].x_ += 1.0f * direction;
            sprite[STAGE_WARRIOR_BUSH+1].x_ += 1.0f * direction;
            sprite[STAGE_WARRIOR_BUSH+2].x_ += 1.0f * direction;
            sprite[STAGE_WARRIOR_BUSH+3].x_ += 1.0f * direction;
            sprite[FOREGROUND_PILLAR].x_ += 2.0f * direction;
            sprite[FOREGROUND_PILLAR+1].x_ += 2.0f * direction;
            break;
        case STAGE_PIT:
        case STAGE_GORO:
            break;
        default:
            break;
    }
}