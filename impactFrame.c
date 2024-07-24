#include "common.h"
#include "impactFrame.h"
#include "fighter.h"
#include "spriteanimator.h"

void impactFrameReset(struct Fighter* fighter)
{
    if (fighter->isPlayer1)
    {
        sprite[P1_HB_ATTACK].x_ = fighter->positionX + 30;
        sprite[P1_HB_ATTACK].y_ = fighter->positionY + 200;
    }
    else
    {
        sprite[P2_HB_ATTACK].x_ = fighter->positionX + 30;
        sprite[P2_HB_ATTACK].y_ = fighter->positionY + 200;
    }
}

void impactFrameUpdate(struct SpriteAnimator* animator, struct Fighter* fighter, struct ImpactFrame* impactFrame)
{
    if (animator->currentFrame == impactFrame->Frame || impactFrame->IsImpactState)
    {
        if (fighter->direction == 1)
        {
            sprite[fighter->HB_ATTACK].x_ = sprite[fighter->spriteIndex].x_ + (impactFrame->RelativePositionX * fighter->direction);
            sprite[fighter->HB_ATTACK].y_ = sprite[fighter->spriteIndex].y_ + (impactFrame->RelativePositionY);
        }
        else
        {
            sprite[fighter->HB_ATTACK].x_ = sprite[fighter->spriteIndex].x_ + sprite[fighter->spriteIndex].width + ((48 + impactFrame->RelativePositionX) * fighter->direction);
            sprite[fighter->HB_ATTACK].y_ = sprite[fighter->spriteIndex].y_ + impactFrame->RelativePositionY;
        }
    }
    else
    {
        impactFrameReset(fighter);
    }    
}