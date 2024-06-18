#include "common.h"
#include "stage.h"

static short currentStage = STAGE_PIT_BOTTOM;
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
        currentStage = STAGE_GATES;
    }
}

void stageLoadVsBattle()
{
    switch (currentStage)
    {
        case STAGE_GATES:
            jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_GATES_clut),1,16);
            sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_GATES;
            break;
        case STAGE_WARRIOR:
            jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_WARRIOR_clut),1,16);
            sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_WARRIOR;
            break;
        case STAGE_PIT:
        case STAGE_PIT_BOTTOM:
            jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_THEPIT_clut),1,16);
            sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_THEPIT;
            break;
        case STAGE_THRONE:
            jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_THRONE_clut),1,16);
            sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_THRONE;
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
        case STAGE_GATES:
            stageHideShowSprite(STAGE_GATES_FLAME, 16);
            stageHideShowSprite(STAGE_GATES_FLAME+1, 16);
            stageHideShowSprite(FOREGROUND_PILLAR, 32);
            stageHideShowSprite(FOREGROUND_PILLAR+1, 32);
            break;
        case STAGE_WARRIOR:
            stageHideShowSprite(STAGE_WARRIOR_BUSH, 48);
            stageHideShowSprite(STAGE_WARRIOR_BUSH+1, 48);
            stageHideShowSprite(STAGE_WARRIOR_BUSH+2, 48);
            stageHideShowSprite(STAGE_WARRIOR_BUSH+3, 48);
            stageHideShowSprite(FOREGROUND_PILLAR, 32);
            stageHideShowSprite(FOREGROUND_PILLAR+1, 32);
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
            stageHideShowSprite(STAGE_GORO_EYES, 16);
            stageHideShowSprite(STAGE_GORO_EYES+1, 16);
            break;
        case STAGE_THRONE:
            break;
        default:
            break;
    }
}

int stageGetFighterHitboxIndex()
{
    switch (currentStage)
    {
        case STAGE_GATES:
            return 25;
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
        case STAGE_GATES:
            return 240;
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
        case STAGE_GATES:
            return 80;
        case STAGE_WARRIOR:
            return 113;
        case STAGE_PIT:
            return 130;
        case STAGE_PIT_BOTTOM:
            return 130;
        case STAGE_THRONE:
            return 113;
        case STAGE_GORO:
            return 70;
        default:
            return 120;
    }
}

int stageGetStartY()
{
    switch (currentStage)
    {
        case STAGE_PIT_BOTTOM:
            return 400;
        default:
            return 0;
    }
}

void stageMove(int direction)
{
    switch (currentStage)
    {
        case STAGE_GATES:
            // sprite[STAGE_WARRIOR_BUSH].x_ += 1.0f * direction;
            // sprite[STAGE_WARRIOR_BUSH+1].x_ += 1.0f * direction;
            // sprite[STAGE_WARRIOR_BUSH+2].x_ += 1.0f * direction;
            // sprite[STAGE_WARRIOR_BUSH+3].x_ += 1.0f * direction;
            sprite[STAGE_GATES_TEMPLE].x_ += 1 * direction;
            sprite[FOREGROUND_PILLAR].x_ += 2 * direction;
            //sprite[FOREGROUND_PILLAR+2].x_ += 2.0f * direction;
            sprite[STAGE_GATES_FLAME].x_ += 2 * direction;
            sprite[STAGE_GATES_FLAME+1].x_ += 2 * direction;
            break;
        case STAGE_PIT_BOTTOM:
            sprite[FOREGROUND_SPIKES].x_ += 2 * direction;
            break;
        case STAGE_WARRIOR:
            sprite[STAGE_WARRIOR_BUSH].x_ += 1 * direction;
            sprite[STAGE_WARRIOR_BUSH+1].x_ += 1 * direction;
            sprite[STAGE_WARRIOR_BUSH+2].x_ += 1 * direction;
            sprite[STAGE_WARRIOR_BUSH+3].x_ += 1 * direction;
            sprite[FOREGROUND_PILLAR].x_ += 2 * direction;
            sprite[FOREGROUND_PILLAR+1].x_ += 2 * direction;
            break;
        case STAGE_PIT:
        case STAGE_GORO:
            break;
        case STAGE_THRONE:
            sprite[THRONE_SHANG_TSUNG].x_ += 2 * direction;
            break;
        default:
            break;
    }
}

void stageHideShowSprite(int spriteIndex, int width)
{
    if (sprite[spriteIndex].x_ < (width * -1) || sprite[spriteIndex].x_ >= 320)
    {
        sprite[spriteIndex].active = R_is_inactive;
    }
    else
    {
        sprite[spriteIndex].active = R_is_active;
    }
}

void stageResetTicks()
{
    cloudTicks1 = rapTicks;
    cloudTicks2 = rapTicks;
    cloudTicks3 = rapTicks;
}