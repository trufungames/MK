#include "common.h"
#include "stage.h"
#include "camera.h"
#include "spriteanimator.h"
#include "match.h"

static short currentStage = STAGE_GORO;
static int cloudTicks1 = 0;
static int cloudTicks2 = 0;
static int cloudTicks3 = 0;

static SpriteAnimator monksAnimator = {
	STAGE_MONKS, 0.5f, BMP_COURTYARD_MONKS, 0, 0, 0
};

static AnimationFrame monkFrames[] = {
	{ 576, 32, 0, 0, 0, 0, 10 },
    { 576, 32, 0, 32, 0, 0, 10 },
    { 576, 32, 0, 64, 0, 0, 10 },
    { 576, 32, 0, 96, 0, 0, 10 },
    { 576, 32, 0, 128, 0, 0, 10 },
    { 576, 32, 0, 96, 0, 0, 10 },
    { 576, 32, 0, 64, 0, 0, 10 },
    { 576, 32, 0, 32, 0, 0, 10 }
};

static AnimationFrame monkClapFrames[] = {
	{ 576, 32, 0, 160, 0, 0, 6 },
    { 576, 32, 0, 192, 0, 0, 6 },
    { 576, 32, 0, 224, 0, 0, 6 }
};

void stageInit()
{
    cloudTicks1 = 0;
    cloudTicks2 = 0;
    cloudTicks3 = 0;
    monksAnimator.currentFrame = 0;
    monksAnimator.lastTick = rapTicks;
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
        currentStage = STAGE_COURTYARD;
    }
}

void stageLoadVsBattle()
{
    switch (currentStage)
    {
        case STAGE_COURTYARD:
            jsfLoadClut((unsigned short *)(void *)(BMP_BATTLE_COURTYARD_clut),1,16);
            sprite[BATTLE_NAME].gfxbase = BMP_BATTLE_COURTYARD;
            break;
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
        case STAGE_COURTYARD:
            if (matchHasWinner())
            {
                updateSpriteAnimator(&monksAnimator, monkClapFrames, 3, true, true);
            }
            else
            {
                updateSpriteAnimator(&monksAnimator, monkFrames, 8, true, true);
            }
            break;
        case STAGE_GATES:
            if (rapTicks >= cloudTicks1 + 4)
            {
                sprite[STAGE_PALACE_CLOUDS1+0].x_ += 1.0f;
                sprite[STAGE_PALACE_CLOUDS1+1].x_ += 1.0f;
                cloudTicks1 = rapTicks;
            }
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
        case STAGE_COURTYARD:
            return 35;
        case STAGE_GATES:
            return 35;
        case STAGE_WARRIOR:
            return 35;
        case STAGE_PIT:
            return 35;
        case STAGE_GORO:
            return 35;
        default:
            return 35;
    }
}

int stageGetHeight()
{
    switch (currentStage)
    {
        case STAGE_COURTYARD:
            return 240;
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
        case STAGE_COURTYARD:
            return 192;
        case STAGE_GATES:
            return 192;
        case STAGE_WARRIOR:
            return 224;
        case STAGE_PIT:
            return 256;
        case STAGE_PIT_BOTTOM:
            return 256;
        case STAGE_THRONE:
            return 224;
        case STAGE_GORO:
            return 144;
        default:
            return 192;
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

void stageMove(int direction, int offset)
{
    switch (currentStage)
    {
        case STAGE_COURTYARD:
            sprite[STAGE_MONKS].x_ += 1 * direction;
            break;
        case STAGE_GATES:
            // sprite[STAGE_WARRIOR_BUSH].x_ += 1.0f * direction;
            // sprite[STAGE_WARRIOR_BUSH+1].x_ += 1.0f * direction;
            // sprite[STAGE_WARRIOR_BUSH+2].x_ += 1.0f * direction;
            // sprite[STAGE_WARRIOR_BUSH+3].x_ += 1.0f * direction;
           // sprite[STAGE_GATES_TEMPLE].x_ += 1 * direction;
            sprite[FOREGROUND_PILLAR].x_ += 2 * direction;
            //sprite[FOREGROUND_PILLAR+2].x_ += 2.0f * direction;
            sprite[STAGE_GATES_FLAME].x_ += 2 * direction;
            sprite[STAGE_GATES_FLAME+1].x_ += 2 * direction;
            break;
        case STAGE_PIT:
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
    // if (sprite[spriteIndex].x_ < (width * -1) || sprite[spriteIndex].x_ >= 320)
    // {
    //     sprite[spriteIndex].active = R_is_inactive;
    // }
    // else
    // {
    //     sprite[spriteIndex].active = R_is_active;
    // }
}

void stageResetTicks()
{
    cloudTicks1 = rapTicks;
    cloudTicks2 = rapTicks;
    cloudTicks3 = rapTicks;
    monksAnimator.lastTick = rapTicks;
}

void stagePositionAssets()
{
    switch (currentStage)
    {
        case STAGE_COURTYARD:
            sprite[STAGE_MONKS].x_ = 0 - cameraGetParalaxX();
            break;
        case STAGE_GATES:
            sprite[FOREGROUND_PILLAR].x_ = STAGE_PALACEGATES_PILLAR_X - cameraGetX();
            sprite[STAGE_GATES_FLAME].x_ = STAGE_PALACEGATES_FLAME1_X - cameraGetX();
            sprite[STAGE_GATES_FLAME+1].x_ = STAGE_PALACEGATES_FLAME2_X - cameraGetX();
            break;
        case STAGE_WARRIOR:
            sprite[STAGE_WARRIOR_BUSH].x_ = STAGE_WARRIOR_BUSH1_X - cameraGetParalaxX();
            sprite[STAGE_WARRIOR_BUSH+1].x_ = STAGE_WARRIOR_BUSH2_X - cameraGetParalaxX();
            sprite[STAGE_WARRIOR_BUSH+2].x_ = STAGE_WARRIOR_BUSH3_X - cameraGetParalaxX();
            sprite[STAGE_WARRIOR_BUSH+3].x_ = STAGE_WARRIOR_BUSH4_X - cameraGetParalaxX();
            sprite[FOREGROUND_PILLAR].x_ = STAGE_WARRIOR_PILLAR1_X - cameraGetX();
            sprite[FOREGROUND_PILLAR+1].x_ = STAGE_WARRIOR_PILLAR2_X - cameraGetX();
            sprite[STAGE_GATES_FLAME].x_ = STAGE_WARRIOR_FLAME1_X - cameraGetX();
            sprite[STAGE_GATES_FLAME+1].x_ = STAGE_WARRIOR_FLAME2_X - cameraGetX();
            sprite[STAGE_GATES_FLAME+2].x_ = STAGE_WARRIOR_FLAME3_X - cameraGetX();
            sprite[STAGE_GATES_FLAME+3].x_ = STAGE_WARRIOR_FLAME4_X - cameraGetX();
            break;
        case STAGE_PIT:
        case STAGE_PIT_BOTTOM:
            sprite[FOREGROUND_SPIKES].x_ = STAGE_PITBOTTOM_SPIKES_X - cameraGetX();
            break;
        case STAGE_THRONE:
            sprite[THRONE_SHANG_TSUNG].x_ = STAGE_THRONE_SHANGTSUNG_X - cameraGetX();
            break;
        default:
            break;
    }
}

int stageGetFatalityPalette()
{
    switch (currentStage)
    {
        case STAGE_COURTYARD:
            return 128;
        case STAGE_PIT:
            return 80;
        default:
            return 96;
    }
}