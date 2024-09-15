#include "common.h"
#include "camera.h"
#include "fighter.h"
#include "match.h"
#include "sound.h"
#include "spriteanimator.h"
#include "spritemovements.h"
#include "impactFrame.h"
#include "blood.h"
#include "sleep.h"
#include "stage.h"
#include "debug.h"
#include "playerinput.h"
#include "hud.h"
#include "statemachine.h"

int collision = 0;
int turnOffset = 32;
bool walkForward = false;
int shadowY = 0;
unsigned int tempScore;
int scoreLength = 4;
static short JumpOffsets[20] = {-20, -16, -12, -10, -8, -6, -4, -2, 0, 0, 2, 4, 6, 8, 10, 12, 16, 20};
static short FlipOffsets[20] = {-20, -16, -12, -10, -8, -6, -4, -2, 0, 0, 2, 4, 6, 8, 10, 12, 16, 20};
static short UppercutOffsets[26] = {-20, -20, -16, -14, -13, -10, -9, -6, -4, -3, -2, -1, 0, 0, 0, 2, 3, 4, 6, 9, 12, 13, 14, 20, 22, 24 };

void fighterStartUp()
{
    shadowY = sprite[P1_FIGHTER_SHADOW].y_;
}

void fighterHide(struct Fighter *fighter)
{
    sprite[fighter->spriteIndex].active = R_is_inactive;
}

void fighterShow(struct Fighter *fighter)
{
    switch (fighter->fighterIndex)
    {
        case CAGE:
            sprite[fighter->spriteIndex].gfxbase = BMPCAGE;
            break;
        case KANO:
            sprite[fighter->spriteIndex].gfxbase = BMPKANO;
            break;
        case RAIDEN:
            sprite[fighter->spriteIndex].gfxbase = BMPRAIDEN;
            break;
        case KANG:
            sprite[fighter->spriteIndex].gfxbase = BMPKANG;
            break;
        case SCORPION:
            sprite[fighter->spriteIndex].gfxbase = BMPSUBZERO;
            break;
        case SUBZERO:
            sprite[fighter->spriteIndex].gfxbase = BMPSUBZERO;
            break;
        case SONYA:
            sprite[fighter->spriteIndex].gfxbase = BMPSONYA;
            break;
        default:
            break;
    }
    
    sprite[fighter->spriteIndex].active = R_is_active;
}

void fighterMakeSelectable(struct Fighter* fighter, bool isPlayer1)
{
    fighter->Score = 0;
    fighter->ScoreChanged = true;
    
    if (isPlayer1)
    {
        sprite[fighter->spriteIndex].x_ = 14;
        sprite[fighter->spriteIndex].flip = R_is_normal;
        sprite[fighter->spriteIndex-1].flip = R_is_normal;
        fighter->direction = 1;
    }
    else
    {
        sprite[fighter->spriteIndex].x_ = 256;

        // if (fighter->fighterIndex == CAGE)
        // {
        //     sprite[fighter->spriteIndex].x_ -= 16;
        // }

        sprite[fighter->spriteIndex].flip = R_is_flipped;
        sprite[fighter->spriteIndex-1].flip = R_is_flipped;
        fighter->direction = -1;
    }

    sprite[fighter->spriteIndex].y_ = 106;

    fighter->positionX = sprite[fighter->spriteIndex].x_;
    fighter->positionY = sprite[fighter->spriteIndex].y_;
}

void fighterInitialize(struct Fighter *fighter, bool isPlayer1, struct SoundHandler* soundHandler, struct ImpactFrame* impactFrameLowPunch, struct ImpactFrame* impactFrameHighPunch, struct ImpactFrame* impactFrameLowKick, struct ImpactFrame* impactFrameHighKick, struct ImpactFrame* impactFrameUppercut, struct ImpactFrame* impactFrameSweep, struct ImpactFrame* impactFrameJumpPunch, struct ImpactFrame* impactFrameJumpKick, struct ImpactFrame* impactFrameRoundhouse, struct ImpactFrame* impactFrameBodyPunch, struct ImpactFrame* impactFrameBodyKick, struct ImpactFrame* impactFrameDuckKick, struct ImpactFrame* impactFrameThrow)
{
    //defaults
    fighter->NoBlood = false;
    fighter->NoSound = false;
    fighter->DoImpaleBloodSequence = false;

    //assignments
    fighter->ResetTicks = false;
    fighter->soundHandler = soundHandler;
    fighter->impactFrameLowPunch = impactFrameLowPunch;
    fighter->impactFrameHighPunch = impactFrameHighPunch;
    fighter->impactFrameLowKick = impactFrameLowKick;
    fighter->impactFrameHighKick = impactFrameHighKick;
    fighter->impactFrameUppercut = impactFrameUppercut;
    fighter->impactFrameSweep = impactFrameSweep;
    fighter->impactFrameJumpPunch = impactFrameJumpPunch;
    fighter->impactFrameJumpKick = impactFrameJumpKick;
    fighter->impactFrameRoundhouse = impactFrameRoundhouse;
    fighter->impactFrameBodyPunch = impactFrameBodyPunch;
    fighter->impactFrameBodyKick = impactFrameBodyKick;
    fighter->impactFrameDuckKick = impactFrameDuckKick;
    fighter->impactFrameThrow = impactFrameThrow;
    fighter->pad = 0;
    fighter->touchTicks = 0;
    fighter->HarpoonKnockbackDistance = 0;
    fighter->IsActive = true;
    fighter->IsWinner = false;
    fighter->IsTurning = false;
    fighter->ButtonReleased = true;
    fighter->DPadReleased = true;
    fighter->DPadWasRecorded = false;
    fighter->DPadUpReleased = true;
    fighter->AcceptingInput = true;
    fighter->airAttackPerformed = false;
    fighter->IsClose = false;
    fighter->IsHitHarpoon = false;
    fighter->IsBeingTripped = false;
    fighter->IsBeingDamaged = false;
    fighter->IsPushing = false;
    fighter->IsDizzy = false;
    fighter->IsStunned = false;
    fighter->IsDefeated = false;
    fighter->IsFrozen = false;
    fighter->IsBeingPushed = false;
    fighter->DoBlockSequence = false;
    fighter->DoWinSequence = false;
    fighter->DoThrowSequence = false;
    fighter->ThrowX = 0;
    fighter->ThrowY = 0;
    fighter->MadeContactUppercut = false;
    fighter->MadeContact = false;
    fighter->JumpLanded = false;
    fighter->PlayedJumpRoll = false;
    fighter->JumpRollTicks = 0;
    fighter->CooldownTicksUppercut = 50;
    fighter->CooldownTicksImpact = 20;
    fighter->isPlayer1 = isPlayer1;
    fighter->hitPoints = MAX_HEALTH;
    fighter->pendingDamage = 0;
    fighter->shakeScreen = false;
    fighter->justTurned = false;
    fighter->changedDirection = false;
    fighter->hasRoomToMove = true;
    sprite[fighter->spriteIndex].active = R_is_active;    

    if (isPlayer1)
    {
        fighter->HB_ATTACK = P1_HB_ATTACK;
        fighter->lightningSpriteIndex = P1_PROJECTILE;
        fighter->PAD = LEFT_PAD;
        fighter->worldPositionX = 100 + stageGetStartX();
        sprite[fighter->lightningSpriteIndex].flip = R_is_normal;
        sprite[fighter->spriteIndex].flip = R_is_normal;
        sprite[fighter->spriteIndex-1].flip = R_is_normal;
        fighter->direction = 1;        
    }
    else
    {
        fighter->HB_ATTACK = P2_HB_ATTACK;
        fighter->lightningSpriteIndex = P2_PROJECTILE;
        fighter->PAD = RIGHT_PAD;
        fighter->worldPositionX = 240 + stageGetStartX();
        sprite[fighter->lightningSpriteIndex].flip = R_is_flipped;
        sprite[fighter->spriteIndex].flip = R_is_flipped;
        sprite[fighter->spriteIndex-1].flip = R_is_flipped;
        fighter->direction = -1;
    }

    sprite[fighter->spriteIndex-1].active = R_is_active;
    fighterResetRaidenLightning(fighter);
    fighterSetOnFloor(fighter);
    fighterAlignSpriteAndHitbox(fighter);
    impactFrameReset(fighter);
    fighterResetTicks(fighter);
    playerinputInit(fighter);
}

void fighterRestartMatch(struct Fighter* fighter)
{
    fighter->roundsLost = 0;
}

void fighterUpdateIdle(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame idleFrames[])
{
    updateSpriteAnimator(animator, idleFrames, fighter->IDLE_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);

    fighterCastShadow(fighter, false);
}

void fighterUpdateVictoryPose(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame winFrames[])
{
    updateSpriteAnimator(animator, winFrames, fighter->WINS_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    fighterCastShadow(fighter, false);
}

void fighterUpdateSpecialPose(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame specialFrames[])
{
    updateSpriteAnimator(animator, specialFrames, fighter->SPECIAL_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    fighterCastShadow(fighter, false);
}

void fighterUpdate(struct StateMachine* stateMachine, struct Fighter *fighter, struct SpriteAnimator* animator)
{
    //this is not called anymore...
    return;
    //fighterHandleInput(stateMachine, fighter, animator);
    
    return;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //old logic

    // if (fighter->IsBeingPushed)
    // {
    //     fighterPositionXAdd(fighter, FIGHTER_WALK_PUSH_SPEED * delta * -fighter->direction);

    //     if (rapTicks >= fighter->touchTicks + 4)
    //     {
    //         fighter->IsBeingPushed = false;
    //         sprite[fighter->spriteIndex].was_hit = -1;
    //     }
    // }
    
    // if (fighter->ResetTicks)
    // {
    //     fighter->ResetTicks = false;
    //     fighter->lastTicks = rapTicks;
    //     fighter->touchTicks = rapTicks;
    //     fighter->dropKickTicks = rapTicks;
    //     fighter->JumpRollTicks = rapTicks;
    //     animator->lastTick = rapTicks;
    // }

    // 
    // else if (fighter->DoHarpoonReelingInSequence && rapTicks >= fighter->lastTicks + 60)
    // {
    //     fighter->DoHarpoonReelingInSequence = false;
    //     fighter->IsDoingSpecial1 = false;
    //     fighter->IsHarpoonReelingIn = true;
    //     animator->currentFrame = 0;
    //     sfxScorpionGetOverHere(fighter->soundHandler);
    // }
    // else if (fighter->DoHarpoonReelingInSequence)
    // {
    //     if (sprite[fighter->lightningSpriteIndex].active == R_is_inactive)
    //     {
    //         fighter->projectileAnimator->currentFrame = 0;
    //         fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
    //         fighter->projectileAnimator->base = BMP_PROJECTILES;
    //         sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
    //         sprite[fighter->lightningSpriteIndex].gwidth = 104;
    //         sprite[fighter->lightningSpriteIndex].hbox = 16;
    //         sprite[fighter->lightningSpriteIndex].vbox = 16;
    //         sprite[fighter->lightningSpriteIndex].active = R_is_active;
    //         sprite[fighter->lightningSpriteIndex].scaled = R_spr_scale;
    //         jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SCORPION_clut),13,16);
    //     }

    //     if (fighter->HarpoonShakeCount < 8)
    //     {
    //         fighter->HarpoonOffsetY += 2 * fighter->HarpoonShakeDirection;
    //         fighter->HarpoonShakeDirection *= -1;
    //         fighter->HarpoonShakeCount++;
    //     }
    // }

    // if (fighter->IsHarpoonReelingIn || fighter->DoHarpoonReelingInSequence)
    // {
    //     updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 1, true, false, fighter->HarpoonCenterX, fighter->positionY + fighter->HarpoonOffsetY, fighter->direction);
    // }

    // if (fighter->IsSlidingToPositionX)
    // {
    //     if (fighter->SlidePositionXTarget > fighter->positionX)
    //     {
    //         fighterPositionXAdd(fighter, 8);

    //         if (fighter->positionX >= fighter->SlidePositionXTarget)
    //         {
    //             fighter->IsSlidingToPositionX = false;
    //         }
    //     }
    //     else if (fighter->SlidePositionXTarget < fighter->positionX)
    //     {
    //         fighterPositionXAdd(fighter, -8);

    //         if (fighter->positionX <= fighter->SlidePositionXTarget)
    //         {
    //             fighter->IsSlidingToPositionX = false;
    //         }
    //     }
    // }

    // if (fighter->IsFrozen)
    // {
    //     if (!fighter->FrozenShakeComplete)
    //     {
    //         if (rapTicks > fighter->FrozenShakeTicks + 2)
    //         {
    //             fighter->positionX += (2 * fighter->FrozenShakeDirection);
    //             fighter->FrozenShakeDirection *= -1;
    //             fighter->FrozenShakeCount++;
    //             fighter->FrozenShakeTicks = rapTicks;
    //         }

    //         if (fighter->FrozenShakeCount >= 6)
    //         {
    //             fighter->FrozenShakeComplete = true;
    //         }
    //     }

    //     if (rapTicks > fighter->lastTicks + 60 * 3)
    //     {
    //         fighterUnfreeze(fighter);
    //     }

    //     fighterHandleDamage(delta, fighter, animator, walkForward);
    //     setAnimationFrame(fighter->spriteIndex, animator, animator->currentAnimationFrame, fighter->positionX, fighter->positionY, fighter->direction);
    //     fighterCastShadow(fighter, true);

    //     if (fighter->IsBeingDamaged)
    //     {
    //         fighterUnfreeze(fighter);
    //     }
    //     return;
    // }
    // else if (fighter->IsHitHarpoon)
    // {
    //     setAnimationFrame(fighter->spriteIndex, animator, fighter->hitUppercutFrames[0], fighter->positionX, fighter->positionY, fighter->direction);

    //     if (!fighter->IsSlidingToPositionX && rapTicks > fighter->lastTicks + 60 && !fighter->IsHarpoonComplete)
    //     {
    //         fighterSlideToPositionX(fighter, fighter->HarpoonSourceX);
    //         fighter->lastTicks = rapTicks;
    //         fighter->IsHarpoonComplete = true;
    //     }
    //     else if (!fighter->IsSlidingToPositionX && fighter->IsHarpoonComplete)
    //     {
    //         fighter->IsHitHarpoon = false;
    //         fighter->IsStunned = true;
    //         animator->currentFrame = 0;
    //         fighter->lastTicks = rapTicks;
    //     }
    //     fighterCastShadow(fighter, true);
    //     return;
    // }
    // else if (fighter->IsHarpoonReelingIn)
    // {
    //     updateSpriteAnimator(animator, *fighter->special1EndFrames, 6, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    //     fighterCastShadow(fighter, true);
    //     return;
    // }
    // else if (fighter->IsStunned)
    // {
    //     if (rapTicks >= fighter->lastTicks + 120 || fighter->IsBeingDamaged)
    //     {
    //         fighter->IsStunned = false;
    //     }

    //     fighterHandleDamage(1, fighter, animator, walkForward);
    //     updateSpriteAnimator(animator, *fighter->dizzyFrames, fighter->DIZZY_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
    //     fighterCastShadow(fighter, true);
    //     return;
    // }

    // fighterCastShadow(fighter, true);

    // if (fighter->fighterIndex == RAIDEN)
    // {
    //     sprite[fighter->lightningSpriteIndex].x_ = sprite[fighter->spriteIndex].x_ - (4 * fighter->direction);

    //     if ((fighter->IsIdle && fighter->IsActive && !fighter->IsDefeated && !fighter->IsWinner) || fighter->IsDoingSpecial1)
    //     {
    //         sprite[fighter->lightningSpriteIndex].active = R_is_active;						
    //     }
    //     else
    //     {
    //         sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    //     }
    // }
    // else
    // {
    //     //TODO CLB HACK
    //     //sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    // }
    
    // if (!fighter->IsActive)
    //     return;

    // walkForward = fighter->direction == -1;

    // if (fighter->DoDefeatedSequence && !fighter->IsHitFall && !fighter->IsHitUppercut)
    // {
    //     fighter->DoDefeatedSequence = false;
    //     fighterSetOnFloor(fighter);
    //     sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    //     animator->currentFrame = 0;
        
    //     if (fighter->roundsLost >= 1 && !fighter->IsDizzy)
    //     {
    //         fighterMakeDizzy(fighter);
    //     }
    //     else
    //     {
    //         fighter->IsDefeated = true;
    //         fighter->IsDizzy = false;
    //         fighter->roundsLost++;
    //     }
    //     return;
    // }

    // if (fighter->DoWinSequence)
    // {
    //     fighter->DoWinSequence = false;
    //     sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    //     animator->currentFrame = 0;
    //     fighter->IsWinner = true;
    //     fighterSetOnFloor(fighter);

    //     switch(fighter->fighterIndex)
    //     {
    //         case CAGE:
    //             sfxCageYeah(fighter->soundHandler);
    //             break;
    //         case KANO:
    //             sfxKanoYell(fighter->soundHandler);
    //             break;
    //     }

    //     return;
    // }
    
    // if (fighter->DoBlockSequence && rapTicks > fighter->lastTicks + 6)
    // {
    //     fighter->DoBlockSequence = false;
    //     animator->currentFrame = 0;
    //     sfxBlock(fighter->soundHandler);
    //     fighterTakeDamage(fighter, DMG_BLOCKED);
    // }
    // else if (fighter->DoThrowSequence)
    // {
    //     fighter->DoThrowSequence = false;
    //     animator->currentFrame = 0;
    //     fighter->lastTicks = rapTicks;        
    //     fighter->positionX = fighter->ThrowX;
    //     fighter->positionY = fighter->ThrowY;
    //     fighter->ThrowX = 0;
    //     fighter->ThrowY = 0;
    //     fighter->IsBeingDamaged = true;
    //     fighter->IsBeingThrown = true;
    // }
    // else if (fighter->IsTurning && !fighter->IsJumping && !fighter->IsJumpingRollBackward && !fighter->IsJumpingRollForward && !fighter->IsBeingDamaged && !fighter->IsAttacking)
    // {
    //     if (fighter->justTurned)
    //     {
    //         //we just turned, so reset the animation
    //         fighter->justTurned = false;
    //         animator->currentFrame = 0;
    //     }

    //     if (!fighter->changedDirection)
    //     {
    //         if (animationIsComplete(animator, fighter->TURN_FRAME_COUNT))
    //         {
    //             fighter->changedDirection = true;
    //             fighter->direction *= -1;
                
    //             if (fighter->direction == 1)
    //             {
    //                 sprite[fighter->spriteIndex].flip = R_is_normal;
    //                 sprite[fighter->spriteIndex-1].flip = R_is_normal;
    //                 sprite[fighter->lightningSpriteIndex].flip = R_is_normal;
    //             }
    //             else
    //             {
    //                 sprite[fighter->spriteIndex].flip = R_is_flipped;
    //                 sprite[fighter->spriteIndex-1].flip = R_is_flipped;
    //                 sprite[fighter->lightningSpriteIndex].flip = R_is_flipped;
    //             }
                
    //             impactFrameReset(fighter);
    //         }

    //         updateSpriteAnimator(animator, *fighter->turnFrames, fighter->TURN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    //     }
    //     else
    //     {
    //         if (animator->currentFrame <= 0)
    //         {
    //             fighter->IsTurning = false;
    //         }

    //         updateSpriteAnimator(animator, *fighter->turnFrames, fighter->TURN_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);
    //     }
    //     return;
    // }

    // if (fighter->IsDefeated)
    // {
    //     if (animationIsComplete(animator, fighter->HIT_FALL_FRAME_COUNT))
    //     {
    //         bgShake(false);
    //         sfxThud(fighter->soundHandler);
    //         fighter->IsActive = false;
    //     }

    //     updateSpriteAnimator(animator, *fighter->hitFallFrames, fighter->HIT_FALL_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    //     return;
    // }

    // if (fighter->IsDizzy)
    // {
    //     if (!fighter->IsBeingDamaged)
    //     {
    //         updateSpriteAnimator(animator, *fighter->dizzyFrames, fighter->DIZZY_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
    //     }

    //     if ((fighter->pendingDamage > 0 || fighter->IsBeingDamaged))
    //     {            
    //         fighterHandleDamage(delta, fighter, animator, walkForward);
            
    //         if (!fighter->IsBeingDamaged)
    //         {
    //             fighter->IsDefeated = true;
    //             fighter->IsDizzy = false;
    //             fighter->roundsLost++;
    //         }
    //     }
        
    //     return;
    // }
    
    // if (fighter->IsWinner)
    // {
    //     fighterSetOnFloor(fighter);
    //     updateSpriteAnimator(animator, *fighter->winsFrames, fighter->WINS_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    //     return;
    // }

    

    // fighterHandleDamage(stateMachine, fighter, animator);
    // fighterHandleInput(stateMachine, fighter, animator);
    // fighterLockBoundaries(fighter);
    // fighterAlignSpriteAndHitbox(fighter);    
}

void fighterHandleDamage(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward)
{
    return;
    //**************************************
    //Impact Damage Checks
    //**************************************
    // if (!fighter->IsBeingDamaged)
    // {
    //     if (fighter->IsHitLow || fighter->IsHitHigh || fighter->IsHitBack || fighter->IsHitFall || fighter->IsHitUppercut || fighter->IsHitSweep || fighter->IsHitBackHigh || fighter->IsHitBackLow || fighter->IsHitDropKick || fighter->IsHitBackLight || fighter->IsHitBodyKick || fighter->IsBeingThrown)        
    //     {
    //         fighterTakeDamage(fighter, fighter->pendingDamage);
            
    //         fighter->pendingDamage = 0;
    //         fighter->playerXTraveled = 0.0f;
    //         fighter->IsBeingDamaged = true;
    //         fighter->lastTicks = rapTicks;
    //         fighter->dropKickTicks = rapTicks;
    //         animator->currentFrame = 0;
    //         fighter->momentumY = fighter->uppercutMomentumYStart;

    //         if (fighter->IsHitDropKick || fighter->IsHitBodyKick)
    //         {
    //             fighter->momentumY = fighter->dropKickMomentemYStart;
    //         }
    //         else if (fighter->IsBeingThrown)
    //         {
    //             fighter->momentumY = 0.0f; //fighter->throwMomentemYStart;  HACK
    //         }

    //         if ((fighter->IsHitLow || fighter->IsHitHigh || fighter->IsHitSweep || fighter->IsHitBackHigh || fighter->IsHitBackLow) && !fighter->NoSound)
    //         {
    //             fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    //         }
    //         else if ((fighter->IsHitBackLight || fighter->IsHitBodyKick) && !fighter->NoSound)
    //         {
    //             if (fighter->IsHitBackLightKano)
    //             {
    //                 sfxKanoHeadbutt(fighter->soundHandler);
    //             }
    //             else
    //             {
    //                 sfxImpact(fighter->soundHandler);
    //             }
                
    //         }
    //         else if ((fighter->IsHitBack || fighter->IsHitFall || fighter->IsHitUppercut || fighter->IsHitDropKick) && !fighter->NoSound)
    //         {
    //             sfxImpact(fighter->soundHandler);
    //             fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    //         }

    //         if (fighter->NoSound)
    //             fighter->NoSound = false;

    //         if (fighter->IsHitHigh || fighter->IsHitBack || fighter->IsHitFall || fighter->IsHitUppercut || fighter->IsHitBackHigh || fighter->IsHitBackLight)
    //         {
    //             int bloodX = fighter->positionX;

    //             if (fighter->direction == -1)
    //             {
    //                 bloodX += 40;
    //             }
    //             else if (fighter->direction == 1)
    //             {
    //                 bloodX -= 40;
    //             }

    //             if (fighter->NoBlood == false)
    //             {
    //                 if (fighter->IsHitHigh || fighter->IsHitBackHigh || fighter->IsHitBackLight)
    //                 {
    //                     bloodSpray(bloodX, fighter->positionY - 10, fighter->direction);
    //                 }
    //                 else if (fighter->IsHitBack)
    //                 {
    //                     bloodGlob(bloodX, fighter->positionY + 20, fighter->direction);
    //                     bloodDrop(bloodX + (40 * fighter->direction), fighter->positionY - 30, fighter->direction);
    //                 }
    //                 else if (fighter->IsHitFall || fighter->IsHitUppercut)
    //                 {
    //                     bgShake(false);
    //                     bloodSquirt(bloodX, fighter->positionY - 10);
    //                     bloodSquirt(bloodX+20, fighter->positionY - 30);
    //                     bloodSquirt(bloodX+10, fighter->positionY - 50);

    //                     bloodDrop(bloodX + (0 * fighter->direction), fighter->positionY - 40, fighter->direction);
    //                     bloodDrop(bloodX + (40 * fighter->direction * -1), fighter->positionY - 40, fighter->direction * -1);
    //                     bloodDrop(bloodX + (20 * fighter->direction), fighter->positionY - 50, fighter->direction);
    //                     bloodDrop(bloodX + (20 * fighter->direction * -1), fighter->positionY - 50, fighter->direction * -1);
    //                 }
    //             }
    //             else
    //             {
    //                 fighter->NoBlood = false;
    //             }
    //         }
    //     }
    // }

    // if (fighter->IsHitLow && fighter->IsBeingDamaged)
    // {
    //     updateSpriteAnimator(animator, *fighter->hitLowFrames, fighter->HIT_LOW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    //     if (animationIsComplete(animator, fighter->HIT_LOW_FRAME_COUNT))
    //     {
    //         fighter->IsHitLow = false;
    //         fighter->IsBeingDamaged = false;
    //     }
    // }
    // else if (fighter->IsHitHigh && fighter->IsBeingDamaged)
    // {
    //     updateSpriteAnimator(animator, *fighter->hitHighFrames, fighter->HIT_HIGH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    //     if (animationIsComplete(animator, fighter->HIT_HIGH_FRAME_COUNT))
    //     {
    //         fighter->IsHitHigh = false;
    //         fighter->IsBeingDamaged = false;
    //     }
    // }
    // else if ((fighter->IsHitBack || fighter->IsHitBackHigh) && fighter->IsBeingDamaged)
    // {
    //     if (rapTicks >= fighter->lastTicks + fighter->damageTicks)
    //     {
    //         fighterPositionXAdd(fighter, fighter->playerKnockbackSpeed * -fighter->direction);
    //     }     

    //     updateSpriteAnimator(animator, *fighter->hitBackFrames, fighter->HIT_BACK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    //     if (animationIsComplete(animator, fighter->HIT_BACK_FRAME_COUNT))
    //     {
    //         fighter->IsHitBack = false;
    //         fighter->IsHitBackHigh = false;
    //         fighter->IsBeingDamaged = false;
    //     }
    // }
    // else if (fighter->IsHitBackLow && fighter->IsBeingDamaged)
    // {
    //     if (rapTicks >= fighter->lastTicks + fighter->damageTicks)
    //     {
    //         fighterPositionXAdd(fighter, (fighter->playerKnockbackSpeed) * -fighter->direction);
    //     }     

    //     updateSpriteAnimator(animator, *fighter->hitLowFrames, fighter->HIT_LOW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    //     if (animationIsComplete(animator, fighter->HIT_LOW_FRAME_COUNT))
    //     {
    //         fighter->IsHitBackLow = false;
    //         fighter->IsBeingDamaged = false;
    //     }
    // }
    // else if (fighter->IsHitBackLight && fighter->IsBeingDamaged)
    // {
    //     if (rapTicks >= fighter->lastTicks + fighter->damageTicks)
    //     {
    //         fighterPositionXAdd(fighter, (fighter->playerKnockbackSpeed) * -fighter->direction);
    //     }     

    //     updateSpriteAnimator(animator, *fighter->hitBackFrames, fighter->HIT_BACK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    //     if (animationIsComplete(animator, fighter->HIT_BACK_FRAME_COUNT))
    //     {
    //         fighter->IsHitBackLight = false;
    //         fighter->IsHitBackLightKano = false;
    //         fighter->IsBeingDamaged = false;
    //     }
    // }
    // else if (fighter->IsHitSweep && fighter->IsBeingDamaged)
    // {       
    //     updateSpriteAnimator(animator, *fighter->hitSweepFrames, fighter->HIT_SWEEP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    //     if (animationIsComplete(animator, fighter->HIT_SWEEP_FRAME_COUNT))
    //     {
    //         sfxThud(fighter->soundHandler);
    //         bgShake(false);
    //         fighter->IsHitSweep = false;
    //         fighter->IsGettingUp = true;
    //         animator->currentFrame = 0;
    //     }
    // }
    // else if (fighter->IsBeingThrown && fighter->IsBeingDamaged)
    // {
    //     if (!fighter->IsBeingThrownInAir)
    //     {
    //         if (fighter->IsBeingThrownLow)
    //         {
    //             updateSpriteAnimator(animator, *fighter->beingThrownLowFrames, fighter->BEING_THROWN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    //         }
    //         else
    //         {
    //             updateSpriteAnimator(animator, *fighter->beingThrownFrames, fighter->BEING_THROWN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);   
    //         }            
    //     }

    //     if (fighter->IsLayingDown)
    //     {
    //         fighterLaydown(fighter, animator);
    //     }
    //     else if (animator->currentFrame >= 2 && rapTicks >= fighter->lastTicks + 0)
    //     {
    //         if (!fighter->IsBeingThrownInAir)
    //         {
    //             fighter->IsBeingThrownInAir = true;
    //             //fighter->positionX += (16 * fighter->direction);
    //             fighterPositionXAdd(fighter, 16 * fighter->direction);
    //             fighter->positionY = 48;
    //         }
    //         else
    //         {
    //             if (fighter->positionY > FLOOR_LOCATION_Y_FIGHTER + 32)
    //             {
    //                 fighter->IsLayingDown = true;
    //                 fighter->lastTicks = rapTicks;
    //                 fighterSetOnFloor(fighter);

    //                 //show last frame of BeingThrown animation
    //                 animateFrame(fighter->spriteIndex, 5, *fighter->beingThrownFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

    //                 bgShake(false);
    //                 sfxThud(fighter->soundHandler);
    //                 fighterTakeDamage(fighter, DMG_THROW);
    //             }
    //             else
    //             {
    //                 animateFrame(fighter->spriteIndex, 2, *fighter->beingThrownFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
    //             }

    //             fighterPositionXAdd(fighter, fighter->playerThrowXSpeed * fighter->direction);
    //             fighter->positionY += fighter->throwMomentemYStart;
    //             fighter->lastTicks = rapTicks;
    //             //fighter->momentumY += fighter->gravity;
    //         }
    //     }
    // }
    // else if ((fighter->IsHitDropKick || fighter->IsHitBodyKick) && fighter->IsBeingDamaged)
    // {
    //     if (fighter->IsLayingDown)
    //     {
    //         fighterLaydown(fighter, animator);
    //     }
    //     else if (rapTicks >= fighter->lastTicks + 0)
    //     {
    //         fighterPositionXAdd(fighter, fighter->playerUppercutXSpeed * -fighter->direction);
    //         if (!fighter->IsMidAir)
    //         {
    //             fighter->positionY += fighter->momentumY;
    //             fighter->momentumY += fighter->gravity;
    //         }

    //         if (fighter->momentumY >= fighter->uppercutMomentumYStart && fighter->momentumY < 0.0f)
    //         {
    //             animateFrame(fighter->spriteIndex, 0, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
    //             animator->currentFrame = 0;
    //         }
    //         else if (!fighter->IsFalling)
    //         {
    //             if (!fighter->IsMidAir && !fighter->IsHitBodyKick)
    //             {
    //                 fighterPlayUppercutReaction(fighter->soundHandler);
    //             }
    //             fighter->IsMidAir = true;
                
    //             //once we've reached the apex of the uppercut hit, finish the animation (-1 frame), then complete the fall
    //             updateSpriteAnimator(animator, *fighter->hitFallFrames, fighter->HIT_FALL_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    //             if (animationIsComplete(animator, fighter->HIT_FALL_FRAME_COUNT-1))
    //             {
    //                 fighter->IsFalling = true;
    //                 fighter->IsMidAir = false;
    //             }
    //         }
    //         else
    //         {
    //             if (fighter->positionY > FLOOR_LOCATION_Y_FIGHTER)
    //             {
    //                 fighter->IsLayingDown = true;
    //                 fighter->lastTicks = rapTicks;
    //                 fighterSetOnFloor(fighter);

    //                 //show last frame of HitFall animation
    //                 animateFrame(fighter->spriteIndex, 6, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

    //                 bgShake(false);
    //                 sfxThud(fighter->soundHandler);
    //             }
    //             else
    //             {
    //                 animateFrame(fighter->spriteIndex, 5, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
    //             }
    //         }

    //         fighter->lastTicks = rapTicks;      
    //     }  
    // }
    // else if (fighter->IsHitUppercut && fighter->IsBeingDamaged)
    // {
    //     if (fighter->IsLayingDown)
    //     {
    //         fighterLaydown(fighter, animator);
    //     }
    //     else if (rapTicks >= fighter->lastTicks + 3)
    //     {
    //         fighterPositionXAdd(fighter, fighter->playerUppercutXSpeed * -fighter->direction);
    //         fighter->positionY += UppercutOffsets[fighter->jumpIndex];
    //         fighter->jumpIndex++;

    //         if (fighter->jumpIndex == 8)
    //         {
    //             fighterPlayUppercutReaction(fighter->soundHandler);
    //         }

    //         if (fighter->jumpIndex == 25)
    //         {
    //             fighter->IsLayingDown = true;
    //             fighter->lastTicks = rapTicks;
    //             fighter->jumpIndex = 0;
    //             fighterSetOnFloor(fighter);
    //             bgShake(false);
    //             sfxThud(fighter->soundHandler);
    //         }
            
    //         animateFrame(animator->spriteIndex, fighter->jumpIndex, *fighter->hitUppercutFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

    //         fighter->lastTicks = rapTicks;
    //     }
    // }
    // else if (fighter->IsHitFall && fighter->IsBeingDamaged)
    // {
    //     if (fighter->IsLayingDown)
    //     {
    //         fighterLaydown(fighter, animator);
    //     }
    //     else if (rapTicks >= fighter->lastTicks + 3)
    //     {
    //         fighterPositionXAdd(fighter, fighter->playerUppercutXSpeed * -fighter->direction);
    //         fighter->positionY += UppercutOffsets[fighter->jumpIndex];
    //         fighter->jumpIndex++;

    //         if (fighter->jumpIndex == 8)
    //         {
    //             fighterPlayUppercutReaction(fighter->soundHandler);
    //         }

    //         if (fighter->jumpIndex == 25)
    //         {
    //             fighter->IsLayingDown = true;
    //             fighter->lastTicks = rapTicks;
    //             fighter->jumpIndex = 0;
    //             fighterSetOnFloor(fighter);
    //             bgShake(false);
    //             sfxThud(fighter->soundHandler);
    //         }
            
    //         animateFrame(animator->spriteIndex, fighter->jumpIndex, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

    //         fighter->lastTicks = rapTicks;
    //     }
    // }
    // else if (fighter->IsGettingUp && fighter->IsBeingDamaged)
    // {
    //     updateSpriteAnimator(animator, *fighter->kipUpFrames, fighter->KIPUP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    //     if (animationIsComplete(animator, fighter->KIPUP_FRAME_COUNT))
    //     {
    //         fighter->IsBeingDamaged = false;
    //         fighter->IsGettingUp = false;
    //     }
    // }
}

void fighterCaptureDpadInputs(struct Fighter* fighter)
{
    if (fighter->direction == 1)
    {
        //js_r_textbuffer = ee_printf("%d %d %d %d %d %d", fighter->playerInputs[0]->ButtonPressed,fighter->playerInputs[1]->ButtonPressed,fighter->playerInputs[2]->ButtonPressed,fighter->playerInputs[3]->ButtonPressed,fighter->playerInputs[4]->ButtonPressed,fighter->playerInputs[5]->ButtonPressed);
        //jsfDebugMessage();
        // rapUse8x16fontPalette(10);
        // jsfSetFontSize(1);
        // jsfSetFontIndx(1);
        // rapLocate(120,60);
        // js_r_textbuffer = ee_printf("%d %d %d %d %d %d", fighter->playerInputs[0]->ButtonPressed,fighter->playerInputs[1]->ButtonPressed,fighter->playerInputs[2]->ButtonPressed,fighter->playerInputs[3]->ButtonPressed,fighter->playerInputs[4]->ButtonPressed,fighter->playerInputs[5]->ButtonPressed);;
        // rapPrint();
    }

    if (fighter->pad & JAGPAD_LEFT && fighter->DPadReleased && !fighter->DPadWasRecorded)
    {
        fighter->DPadWasRecorded = true;
        playerinputPush(fighter, JAGPAD_LEFT);
    }
    
    if (fighter->pad & JAGPAD_RIGHT && fighter->DPadReleased && !fighter->DPadWasRecorded)
    {
        fighter->DPadWasRecorded = true;
        playerinputPush(fighter, JAGPAD_RIGHT);
    }

    if (fighter->pad & JAGPAD_DOWN && fighter->DPadReleased && !fighter->DPadWasRecorded)
    {
        fighter->DPadWasRecorded = true;
        playerinputPush(fighter, JAGPAD_DOWN);
    }

    if (fighter->pad & JAGPAD_UP && fighter->DPadReleased && !fighter->DPadWasRecorded)
    {
        fighter->DPadWasRecorded = true;
        playerinputPush(fighter, JAGPAD_UP);
    }
}

bool fighterHandleSpecialMoves(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* animator)
{
    if (fighter->IsBeingDamaged || fighter->IsFrozen)
        return false;

    if (fighter->pad & JAGPAD_C && fighter->ButtonReleased)
    {
        playerinputPush(fighter, JAGPAD_C);
    }

    if (fighter->pad & JAGPAD_A && fighter->ButtonReleased)
    {
        playerinputPush(fighter, JAGPAD_A);
    }

    //***********************************************************************************
    // SPECIAL MOVES
    //***********************************************************************************
    if (playerinputContains(fighter, *fighter->special1Inputs, fighter->special1InputCount))
    {
        (fighter->doSpecialMove1)(stateMachine, fighter, animator);
        return true;
    }
    else if (playerinputContains(fighter, *fighter->special2Inputs, fighter->special2InputCount))
    {
        (fighter->doSpecialMove2)(stateMachine, fighter, animator);
        return true;
    }
    else if (playerinputContains(fighter, *fighter->special3Inputs, fighter->special3InputCount))
    {
        (fighter->doSpecialMove3)(stateMachine, fighter, animator);
        return true;
    }

    return false;
}

void fighterHandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* animator)
{
    return;
}

void fighterButtonCheck(struct Fighter* fighter)
{
    if (!(fighter->pad & JAGPAD_C)
        && !(fighter->pad & JAGPAD_9)
        && !(fighter->pad & JAGPAD_A)
        && !(fighter->pad & JAGPAD_B)
        && !(fighter->pad & JAGPAD_8)
        && !(fighter->pad & JAGPAD_7)
        && !(fighter->pad & JAGPAD_0)
        && !(fighter->pad & JAGPAD_HASH)
        && !(fighter->pad & JAGPAD_STAR))
    {
        fighter->ButtonReleased = true;
    }

    fighterCaptureDpadInputs(fighter);

    if (!(fighter->pad & JAGPAD_UP)
        && !(fighter->pad & JAGPAD_DOWN)
        && !(fighter->pad & JAGPAD_LEFT)
        && !(fighter->pad & JAGPAD_RIGHT))
    {
        fighter->DPadReleased = true;
        fighter->DPadWasRecorded = false;
    }

    if (!(fighter->pad & JAGPAD_UP))
    {
        fighter->DPadUpReleased = true;
    }
}

void fighterPlayHiya(int fighter, struct SoundHandler* soundHandler, bool isPlayer1)
{
    switch (fighter)
    {
        case SONYA:
            sfxHiyaFemale(soundHandler);
            break;
        case SUBZERO:
            sfxHiyaNinja(soundHandler);
            break;
        case KANG:
            sfxHiyaKang(soundHandler);
            break;
        default:
            sfxHiyaMale(soundHandler);
    }
}

void fighterPlayGroan(int fighter, struct SoundHandler* soundHandler, bool isPlayer1)
{
    switch (fighter)
    {
        case SONYA:
            sfxGroanFemale(soundHandler);
            break;
        default:
            sfxGroanMale(soundHandler);
    }
}

void fighterPlayYell(int fighter, struct SoundHandler* soundHandler, bool isPlayer1)
{
    switch (fighter)
    {
        case SONYA:
            sfxYellFemale(soundHandler);
            break;
        case KANG:
            sfxYellKang(soundHandler);
            break;
        default:
            sfxYellMale(soundHandler);
    }
}

void fighterPlayJump(int fighter, struct SoundHandler* soundHandler, bool isPlayer1)
{
    switch (fighter)
    {
        case SONYA:
            sfxJumpFemale(soundHandler);
            break;
        case SUBZERO:
        case SCORPION:
            sfxJumpNinja(soundHandler);
            break;
        default:
            sfxJumpMale(soundHandler);
    }
}

void fighterPlayUppercutReaction(struct SoundHandler* soundHandler)
{
    if (rapRND() & 255 > 100)
	{
        sfxCrowdAww(soundHandler);
    }
    else if (rapRND() & 255 > 100)
	{
        sfxAnnouncerExcellent(soundHandler);
    }
    else
    {
        sfxAnnouncerLaugh(soundHandler);
    }
}

void fighterMakeDizzy(struct Fighter* fighter)
{
    fighterResetFlags(fighter);
    fighter->IsDizzy = true;
    fighter->pendingDamage = 0;
    fighter->lastTicks = rapTicks;
}

void fighterResetFlagsAll(struct Fighter* fighter1, struct Fighter* fighter2)
{
    fighterResetFlags(fighter1);
    fighterResetFlags(fighter2);
    impactFrameReset(fighter1);
    impactFrameReset(fighter2);
    fighterResetRaidenLightning(fighter1);
    fighterResetRaidenLightning(fighter2);
}

void fighterResetFlags(struct Fighter* fighter)
{
    sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    sprite[fighter->HB_ATTACK].was_hit = -1;
    sprite[fighter->spriteIndex].was_hit = -1;
    fighter->IsWinner = false;
    fighter->IsTurning = false;
    fighter->IsBlocking = false;
    fighter->IsBeingDamaged = false;
    fighter->IsPushing = false;
    fighter->IsDefeated = false;
    fighter->IsFrozen = false;
    fighter->IsBeingPushed = false;
    fighter->IsStunned = false;
    fighter->DoBlockSequence = false;
    fighter->DoWinSequence = false;
    fighter->DoThrowSequence = false;
    fighter->MadeContactUppercut = false;
    fighter->shakeScreen = false;
    fighter->justTurned = false;
    fighter->changedDirection = false;
    fighter->hasRoomToMove = true;
}

void fighterImpactCheck(struct StateMachine* stateMachine, struct Fighter* fighter1, struct SpriteAnimator* spriteAnimator1, struct Fighter* fighter2, struct SpriteAnimator* spriteAnimator2)
{
    if (fighter1->IsPushing && sprite[fighter2->spriteIndex].was_hit == -1)
    {
        fighter1->IsPushing = false;
    }

    if (fighter2->IsPushing && sprite[fighter1->spriteIndex].was_hit == -1)
    {
        fighter2->IsPushing = false;
    }

    collision = rapCollide(stageGetFighterHitboxIndex(), stageGetFighterHitboxIndex() + 12, stageGetFighterHitboxIndex(), stageGetFighterHitboxIndex() + 12);

    if (collision > -1)
    { 
        int i = 0;
        int collisionSprAddr = 0;
        int collisionSprAddr2 = 0;

        while (collisionSprAddr2 >= 0)
        {
            collisionSprAddr = colliders[i].objectSourceHitAddr;
            collisionSprAddr2 = colliders[i].objectHitAddr;

            if (collisionSprAddr > -1 && collisionSprAddr2 >= 0)
            {
                int collisionSprIndex = jsfGetSpriteIndex(collisionSprAddr);
                int collisionSprIndex2 = jsfGetSpriteIndex(collisionSprAddr2);

                if (collisionSprIndex != fighter1->lightningSpriteIndex && collisionSprIndex != fighter2->lightningSpriteIndex)
                    sprite[collisionSprIndex].was_hit = -1;

                if (collisionSprIndex2 != fighter1->lightningSpriteIndex && collisionSprIndex2 != fighter2->lightningSpriteIndex)
                    sprite[collisionSprIndex2].was_hit = -1;

                if (collisionSprIndex == P1_HB_ATTACK && collisionSprIndex2 == P2_FIGHTER_PIT)
                {
                    fighterHandleImpact(stateMachine, fighter1, spriteAnimator1, fighter2, spriteAnimator2);
                }

                if (collisionSprIndex == P1_FIGHTER_PIT && collisionSprIndex2 == P2_FIGHTER_PIT)
                {
                    if (fighter1->currentState->Name == STATE_WALKING_FORWARD)// && fighter1->positionX > CAMERA_BOUND_LEFT && fighter1->positionX < CAMERA_BOUND_RIGHT && fighter2->positionX > CAMERA_BOUND_LEFT && fighter2->positionX < CAMERA_BOUND_RIGHT)
                    {
                        fighter1->IsPushing = true;
                        fighter2->IsBeingPushed = true;
                        fighter2->touchTicks = rapTicks;
                    }
                    // else
                    // {
                    //     //align the fighter hitboxes, so they don't overlap
                    //     if (fighter1->direction == 1)
                    //     {
                    //         sprite[fighter1->HB_BODY].x_ = sprite[fighter2->HB_BODY].x_ - HITBOX_WIDTH;
                    //         fighterAlignSpriteAndHitbox(fighter1);
                    //     }
                    //     else if (fighter1->direction == -1)
                    //     {
                    //         sprite[fighter2->HB_BODY].x_ = sprite[fighter1->HB_BODY].x_ - HITBOX_WIDTH;
                    //         fighterAlignSpriteAndHitbox(fighter2);
                    //     }
                    // }
                }
                
                // if (fighter2->IsBeingPushed && (!collisionSprIndex == P1_FIGHTER_PIT && collisionSprIndex2 == P2_FIGHTER_PIT))
                // {
                //     fighter2->IsBeingPushed = false;
                // }

                if (collisionSprIndex == P2_HB_ATTACK && collisionSprIndex2 == P1_FIGHTER_PIT)
                {
                    fighterHandleImpact(stateMachine, fighter2, spriteAnimator2, fighter1, spriteAnimator1);
                }

                if ((fighter1->currentState->Name == STATE_THROWING_PROJECTILE || fighter1->currentState->Name == STATE_SCORPION_HARPOON || fighter1->currentState->Name == STATE_SUBZERO_FREEZE || fighter1->currentState->Name == STATE_KASUMI_FIREBALL) && collisionSprIndex == fighter1->lightningSpriteIndex && collisionSprIndex2 == P2_FIGHTER_PIT)
                {
                    fighterHandleProjectile(stateMachine, fighter1, fighter2);
                }
                
                if ((fighter2->currentState->Name == STATE_THROWING_PROJECTILE || fighter2->currentState->Name == STATE_SCORPION_HARPOON || fighter2->currentState->Name == STATE_SUBZERO_FREEZE || fighter2->currentState->Name == STATE_KASUMI_FIREBALL) && collisionSprIndex == fighter2->lightningSpriteIndex && collisionSprIndex2 == P1_FIGHTER_PIT)
                {
                    fighterHandleProjectile(stateMachine, fighter2, fighter1);
                }

                if (collisionSprIndex == P2_FIGHTER_PIT && collisionSprIndex2 == P1_FIGHTER_PIT)
                {
                    if (fighter2->currentState->Name == STATE_WALKING_FORWARD)
                    {
                        fighter2->IsPushing = true;
                        fighter1->IsBeingPushed = true;
                        fighter1->touchTicks = rapTicks;
                    }
                }
                
                // if (fighter1->IsBeingPushed && (!collisionSprIndex == P2_FIGHTER_PIT && collisionSprIndex2 == P1_FIGHTER_PIT))
                // {
                //     fighter1->IsBeingPushed = false;
                // }
            }
            i++;
        }
    }
}

void fighterHandleProjectile(struct StateMachine* stateMachine, struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (fighter1->fighterIndex == CAGE)
    {
        fighter1->ProjectileMadeContact = true;

        if (!fighterIsBlocking(stateMachine, fighter2) && fighter2->currentState->Name != STATE_HIT_BLOCKING)
        {
            fighter2->NoBlood = true;
            fighterAddPendingDamage(fighter2, DMG_GREENBOLT, false, fighter1, POINTS_PROJECTILE);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, fighter2->spriteAnimator);
            return;
        }
        else
        {
            stateMachineGoto(stateMachine, STATE_HIT_BLOCKING, fighter2, fighter2->spriteAnimator);
            return;
        }
    }
    else if (fighter1->fighterIndex == KANO)
    {
        fighter1->ProjectileMadeContact = true;

        if (!fighterIsBlocking(stateMachine, fighter2) && fighter2->currentState->Name != STATE_HIT_BLOCKING)
        {
            fighter2->DoImpaleBloodSequence = true;
            fighter2->NoBlood = true;
            fighterAddPendingDamage(fighter2, DMG_KNIFE, false, fighter1, POINTS_PROJECTILE);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, fighter2->spriteAnimator);
            return;
        }
        else
        {
            stateMachineGoto(stateMachine, STATE_HIT_BLOCKING, fighter2, fighter2->spriteAnimator);
            return;
        }
    }
    else if (fighter1->fighterIndex == RAIDEN)
    {
        fighter1->ProjectileMadeContact = true;

        if (!fighterIsBlocking(stateMachine, fighter2) && fighter2->currentState->Name != STATE_HIT_BLOCKING)
        {
            fighter2->NoBlood = true;
            fighterAddPendingDamage(fighter2, DMG_LIGHTNING, false, fighter1, POINTS_PROJECTILE);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, fighter2->spriteAnimator);
            return;
        }
        else
        {
            stateMachineGoto(stateMachine, STATE_HIT_BLOCKING, fighter2, fighter2->spriteAnimator);
            return;
        }
    }
    else if (fighter1->fighterIndex == KANG)
    {
        fighter1->ProjectileMadeContact = true;

        if (!fighterIsBlocking(stateMachine, fighter2) && fighter2->currentState->Name != STATE_HIT_BLOCKING)
        {
            fighter2->NoBlood = true;
            fighterAddPendingDamage(fighter2, DMG_FIREBALL, false, fighter1, POINTS_PROJECTILE);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, fighter2->spriteAnimator);
            return;
        }
        else
        {
            stateMachineGoto(stateMachine, STATE_HIT_BLOCKING, fighter2, fighter2->spriteAnimator);
            return;
        }
    }
    else if (fighter1->fighterIndex == SCORPION)
    {
        fighter1->ProjectileMadeContact = true;

        if (!fighterIsBlocking(stateMachine, fighter2))
        {
            fighter1->HarpoonShakeDirection = -1;
            fighter1->HarpoonOffsetY = 32;
            fighter1->HarpoonShakeCount = 0;
            //fighterHarpoon(fighter2, fighter1);
            fighterAddPendingDamage(fighter2, DMG_HARPOON, false, fighter1, POINTS_PROJECTILE);
            stateMachineGoto(stateMachine, STATE_HIT_HARPOON, fighter2, fighter2->spriteAnimator);
            stateMachineGoto(stateMachine, STATE_SCORPION_REELING_IN, fighter1, fighter1->spriteAnimator);
        }
        else
        {
            fighter1->HarpoonBlocked = true;
        }
    }
    else if (fighter1->fighterIndex == SUBZERO)
    {
        if (!fighter1->ProjectileMadeContact)
        {
            fighter1->ProjectileMadeContact = true;

            if (fighter2->IsFrozen)
            {
                //unfreeze the opponent, freeze Sub-Zero
                stateMachineSleep(stateMachine, 8, fighter2, fighter2->spriteAnimator);
                fighterUnfreeze(fighter2);
                stateMachineGoto(stateMachine, STATE_IDLE, fighter2, fighter2->spriteAnimator);
                stateMachineGoto(stateMachine, STATE_HIT_FREEZE, fighter1, fighter1->spriteAnimator);
                return;
            }

            if (!fighterIsBlocking(stateMachine, fighter2))
            {
                fighterAddPendingDamage(fighter2, DMG_FREEZE, false, fighter1, POINTS_PROJECTILE);
                stateMachineGoto(stateMachine, STATE_HIT_FREEZE, fighter2, fighter2->spriteAnimator);
                return;
            }
            else
            {
                stateMachineGoto(stateMachine, STATE_HIT_BLOCKING, fighter2, fighter2->spriteAnimator);
                return;
            }
        }
    }
    else if (fighter1->fighterIndex == SONYA)
    {
        fighter1->ProjectileMadeContact = true;

        if (!fighterIsBlocking(stateMachine, fighter2) && fighter2->currentState->Name != STATE_HIT_BLOCKING)
        {
            fighter2->NoBlood = true;
            fighterAddPendingDamage(fighter2, DMG_RINGS, false, fighter1, POINTS_PROJECTILE);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, fighter2->spriteAnimator);
            return;
        }
        else
        {
            stateMachineGoto(stateMachine, STATE_HIT_BLOCKING, fighter2, fighter2->spriteAnimator);
            return;
        }
    }
    else if (fighter1->fighterIndex == KASUMI)
    {
        fighter1->ProjectileMadeContact = true;

        if (!fighterIsJumping(stateMachine, fighter2))
        {
            fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_PROJECTILE);
            stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, fighter2->spriteAnimator);
            return;
        }
    }
}

void fighterHandleImpact(struct StateMachine* stateMachine, struct Fighter* fighter1, struct SpriteAnimator* spriteAnimator1, struct Fighter* fighter2, struct SpriteAnimator* spriteAnimator2)
{
    if (!fighterIsBlocking(stateMachine, fighter2) && fighterCanTakeDamage(stateMachine, fighter2))
    {
        if (fighter1->currentState->Name == STATE_LOW_PUNCHING)
        {
            fighterAddPendingDamage(fighter2, DMG_LP, false, fighter1, POINTS_PUNCH);
            stateMachineGoto(stateMachine, STATE_HIT_LOW, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_LOW_REPEAT_PUNCHING)
        {
            fighterAddPendingDamage(fighter2, DMG_LP, false, fighter1, POINTS_PUNCH);
            stateMachineGoto(stateMachine, STATE_HIT_LOW, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_LOW_KICKING)
        {
            fighterAddPendingDamage(fighter2, DMG_LK, false, fighter1, POINTS_KICK);
            stateMachineGoto(stateMachine, STATE_HIT_LOW, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_HIGH_PUNCHING)
        {
            fighterAddPendingDamage(fighter2, DMG_HP, false, fighter1, POINTS_PUNCH);
            stateMachineGoto(stateMachine, STATE_HIT_HIGH, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_HIGH_REPEAT_PUNCHING)
        {
            fighterAddPendingDamage(fighter2, DMG_HP, false, fighter1, POINTS_PUNCH);
            stateMachineGoto(stateMachine, STATE_HIT_HIGH, fighter2, spriteAnimator2);
        }        
        else if (fighter1->currentState->Name == STATE_ROUNDHOUSE_KICKING)
        {
            fighterAddPendingDamage(fighter2, DMG_ROUNDHOUSE, false, fighter1, POINTS_ROUNDHOUSE);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_HIGH_KICKING)
        {
            fighterAddPendingDamage(fighter2, DMG_HK, false, fighter1, POINTS_KICK);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_DUCK_KICKING)
        {
            fighterAddPendingDamage(fighter2, DMG_DUCK_KICK, false, fighter1, POINTS_DUCK_KICK);
            stateMachineGoto(stateMachine, STATE_HIT_BACK_LOW, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_UPPERCUTTING)
        {
            fighterAddPendingDamage(fighter2, DMG_UPPERCUT, false, fighter1, POINTS_UPPERCUT);
            stateMachineSleep(stateMachine, 50, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_UPPERCUT, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_JUMPING_KICKING_FORWARD)
        {
            fighterAddPendingDamage(fighter2, DMG_DROPKICK, false, fighter1, POINTS_JUMP_KICK);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_JUMPING_KICKING_BACKWARD)
        {
            fighterAddPendingDamage(fighter2, DMG_DROPKICK, false, fighter1, POINTS_JUMP_KICK);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_JUMPING_PUNCHING_FORWARD)
        {
            fighterAddPendingDamage(fighter2, DMG_JUMPPUNCH, false, fighter1, POINTS_JUMP_PUNCH);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_JUMPING_PUNCHING_BACKWARD)
        {
            fighterAddPendingDamage(fighter2, DMG_JUMPPUNCH, false, fighter1, POINTS_JUMP_PUNCH);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_JUMP_PUNCHING)
        {
            fighterAddPendingDamage(fighter2, DMG_JUMPPUNCH, false, fighter1, POINTS_JUMP_PUNCH);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_JUMP_KICKING)
        {
            fighterAddPendingDamage(fighter2, DMG_JUMPKICK, false, fighter1, POINTS_JUMP_KICK);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_BODY_PUNCHING)
        {
            fighterAddPendingDamage(fighter2, DMG_BODY_PUNCH, false, fighter1, POINTS_BODY_TO_BODY_PUNCH);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_BODY_KICKING)
        {
            fighterAddPendingDamage(fighter2, DMG_BODY_KICK, false, fighter1, POINTS_BODY_TO_BODY_KICK);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
            stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_THROWING)
        {
            fighterAddPendingDamage(fighter2, DMG_THROW, false, fighter1, POINTS_THROW);
            stateMachineGoto(stateMachine, STATE_BEING_THROWN, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_CAGE_SHADOW_KICK)
        {
            if (fighter2->currentState->Name != STATE_DUCKING)
            {
                fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
                stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
                stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, spriteAnimator2);
            }
        }
        else if (fighter1->currentState->Name == STATE_CAGE_NUTPUNCH)
        {
            fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
            stateMachineGoto(stateMachine, STATE_HIT_NUTS, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_KANO_CANNONBALL)
        {
            if (fighter2->currentState->Name != STATE_DUCKING)
            {
                fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
                stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
                stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, spriteAnimator2);
            }
        }
        else if (fighter1->currentState->Name == STATE_RAIDEN_TORPEDO)
        {
            fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
            stateMachineGoto(stateMachine, STATE_HIT_TORPEDO, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_KANG_FLYING_KICK)
        {
            if (fighter2->currentState->Name != STATE_DUCKING)
            {
                fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
                stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
                stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, spriteAnimator2);
            }
        }
        else if (fighter1->currentState->Name == STATE_SCORPION_TELEPORT)
        {
            if (fighter2->currentState->Name != STATE_DUCKING)
            {
                fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
                stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
                stateMachineGoto(stateMachine, STATE_HIT_BACK, fighter2, spriteAnimator2);
            }
        }
        else if (fighter1->currentState->Name == STATE_SWEEPING)
        {
            fighterAddPendingDamage(fighter2, DMG_SWEEP, false, fighter1, POINTS_SWEEP);
            stateMachineSleep(stateMachine, 1, fighter1, spriteAnimator2);
            stateMachineGoto(stateMachine, STATE_HIT_SWEEP, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_SUBZERO_SLIDE)
        {
            fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator2);
            stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_SONYA_LEG_GRAB)
        {
            fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator2);
            stateMachineGoto(stateMachine, STATE_HIT_LEG_GRAB, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_SONYA_SQUARE_FLIGHT)
        {
            fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
            stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator2);
            stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, spriteAnimator2);
        }
        else if (fighter1->currentState->Name == STATE_KASUMI_ROLL)
        {
            fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
            fighter2->IsBeingTripped = true;
            stateMachineGoto(stateMachine, STATE_BEING_THROWN, fighter2, spriteAnimator2);
        }

        if (fighter2->IsFrozen)
        {
            fighterUnfreeze(fighter2);
        }
    }
    else if (fighterIsBlocking(stateMachine, fighter2))
    {
        if (!fighterIsDuckBlocking(stateMachine, fighter2))
        {
            if (fighter1->currentState->Name == STATE_SWEEPING)
            {
                fighterAddPendingDamage(fighter2, DMG_SWEEP, false, fighter1, POINTS_SWEEP);
                stateMachineSleep(stateMachine, 1, fighter2, spriteAnimator2);
                stateMachineGoto(stateMachine, STATE_HIT_SWEEP, fighter2, spriteAnimator2);
                return;
            }
            else if (fighter1->currentState->Name == STATE_KASUMI_ROLL)
            {
                fighterAddPendingDamage(fighter2, DMG_SPECIAL_MOVE, false, fighter1, POINTS_SPECIAL);
                fighter2->IsBeingTripped = true;
                stateMachineGoto(stateMachine, STATE_BEING_THROWN, fighter2, spriteAnimator2);
                return;
            }
        }

        fighterAddPendingDamage(fighter2, DMG_BLOCKED, false, fighter1, 0);

        if (fighter2->currentState->Name == STATE_DUCK_BLOCKING)
        {
            if (fighter1->currentState->Name == STATE_RAIDEN_TORPEDO
                || fighter1->currentState->Name == STATE_KASUMI_ROLL)
            {
                stateMachineSleep(stateMachine, 1, fighter1, spriteAnimator1);
            }

            stateMachineGoto(stateMachine, STATE_HIT_DUCKING_BLOCKING, fighter2, spriteAnimator2);
            return;
        }
        else
        {
            if (fighter1->currentState->Name == STATE_JUMPING_KICKING_FORWARD
                || fighter1->currentState->Name == STATE_JUMPING_PUNCHING_FORWARD
                || fighter1->currentState->Name == STATE_RAIDEN_TORPEDO
                || fighter1->currentState->Name == STATE_SCORPION_TELEPORT
                || fighter1->currentState->Name == STATE_SUBZERO_SLIDE
                || fighter1->currentState->Name == STATE_SONYA_LEG_GRAB)
            {
                stateMachineSleep(stateMachine, 8, fighter1, spriteAnimator1);
                stateMachineGoto(stateMachine, STATE_HIT_BLOCKING_KNOCKBACK, fighter2, spriteAnimator2);
            }
            else
            {
                stateMachineGoto(stateMachine, STATE_HIT_BLOCKING, fighter2, spriteAnimator2);
            }
        }
    }

    return;
}

void fighterTurnCheck(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (fighter1->direction == 1
        && fighter1->positionX > fighter2->positionX + turnOffset
        && !fighter1->IsTurning
        && !fighter1->IsFrozen
        && fighter1->currentState->Name != STATE_KANG_FLYING_KICK
        && fighter1->currentState->Name != STATE_SCORPION_TELEPORT
        && fighter2->currentState->Name != STATE_SCORPION_TELEPORT
        && fighter1->currentState->Name != STATE_SONYA_LEG_GRAB
        && fighter2->currentState->Name != STATE_SONYA_LEG_GRAB
        && fighter1->currentState->Name != STATE_HIT_LEG_GRAB
        && fighter2->currentState->Name != STATE_HIT_LEG_GRAB
        && fighter1->currentState->Name != STATE_SONYA_SQUARE_FLIGHT
        && fighter1->currentState->Name != STATE_KASUMI_ROLL)
    {
        fighter1->IsTurning = true;
    }

    if (fighter1->direction == -1
        && fighter1->positionX + turnOffset < fighter2->positionX
        && !fighter1->IsTurning
        && !fighter1->IsFrozen
        && fighter1->currentState->Name != STATE_KANG_FLYING_KICK
        && fighter1->currentState->Name != STATE_SCORPION_TELEPORT
        && fighter2->currentState->Name != STATE_SCORPION_TELEPORT
        && fighter1->currentState->Name != STATE_SONYA_LEG_GRAB
        && fighter2->currentState->Name != STATE_SONYA_LEG_GRAB
        && fighter1->currentState->Name != STATE_HIT_LEG_GRAB
        && fighter2->currentState->Name != STATE_HIT_LEG_GRAB
        && fighter1->currentState->Name != STATE_SONYA_SQUARE_FLIGHT
        && fighter1->currentState->Name != STATE_KASUMI_ROLL)
    {
        fighter1->IsTurning = true;
    }

    if (fighter2->direction == 1
        && fighter2->positionX > fighter1->positionX + turnOffset
        && !fighter2->IsTurning
        && !fighter2->IsFrozen
        && fighter2->currentState->Name != STATE_KANG_FLYING_KICK
        && fighter2->currentState->Name != STATE_SCORPION_TELEPORT
        && fighter1->currentState->Name != STATE_SCORPION_TELEPORT
        && fighter1->currentState->Name != STATE_SONYA_LEG_GRAB
        && fighter2->currentState->Name != STATE_SONYA_LEG_GRAB
        && fighter1->currentState->Name != STATE_HIT_LEG_GRAB
        && fighter2->currentState->Name != STATE_HIT_LEG_GRAB
        && fighter2->currentState->Name != STATE_SONYA_SQUARE_FLIGHT
        && fighter2->currentState->Name != STATE_KASUMI_ROLL)
    {
        fighter2->IsTurning = true;
    }

    if (fighter2->direction == -1
        && fighter2->positionX + turnOffset < fighter1->positionX
        && !fighter2->IsTurning
        && !fighter2->IsFrozen
        && fighter2->currentState->Name != STATE_KANG_FLYING_KICK
        && fighter2->currentState->Name != STATE_SCORPION_TELEPORT
        && fighter1->currentState->Name != STATE_SCORPION_TELEPORT
        && fighter1->currentState->Name != STATE_SONYA_LEG_GRAB
        && fighter2->currentState->Name != STATE_SONYA_LEG_GRAB
        && fighter1->currentState->Name != STATE_HIT_LEG_GRAB
        && fighter2->currentState->Name != STATE_HIT_LEG_GRAB
        && fighter2->currentState->Name != STATE_SONYA_SQUARE_FLIGHT
        && fighter2->currentState->Name != STATE_KASUMI_ROLL)
    {
        fighter2->IsTurning = true;
    }
}

void fighterCloseCheck(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (fighter1->currentState->Name == STATE_THROWING
        || fighter2->currentState->Name == STATE_THROWING
        || fighter1->currentState->Name == STATE_BLOCKING
        || fighter2->currentState->Name == STATE_BLOCKING
        || fighter1->currentState->Name == STATE_DUCK_BLOCKING
        || fighter2->currentState->Name == STATE_DUCK_BLOCKING)
    {
        fighter1->IsClose = false;
        fighter2->IsClose = false;
        return;
    }
        

    if (fighter1->direction == 1
        && fighter2->positionX <= fighter1->positionX + FIGHTER_WIDTH + 24)
    {
        fighter1->IsClose = true;
        fighter2->IsClose = true;
        return;
    }

    if (fighter1->direction == -1
        && fighter2->positionX >= fighter1->positionX - FIGHTER_WIDTH - 24)
    {
        fighter1->IsClose = true;
        fighter2->IsClose = true;
        return;
    }

    fighter1->IsClose = false;
    fighter2->IsClose = false;
}

void fighterUpdateHealthbars(struct Fighter* fighter1, struct Fighter* fighter2)
{
    //sprite[P1_HEALTHBAR].scale_x = fighter1->hitPoints;
	//sprite[P2_HEALTHBAR].scale_x = fighter2->hitPoints;
	//sprite[P2_HEALTHBAR].x_ = 176 + ((MAX_HEALTH - fighter2->hitPoints) * 4);
    hudUpdate(fighter1, fighter2);
}

void fighterAddPendingDamage(struct Fighter* fighter, int damage, bool shakeScreen, struct Fighter* attackingFighter, int points)
{
    fighter->pendingDamage = damage;
    fighter->shakeScreen = shakeScreen;
    attackingFighter->Score += points;
    attackingFighter->ScoreChanged = true;
}

void fighterTakeDamage(struct Fighter* fighter, int damage)
{
    if (fighter->IsDizzy)
        return;

    if (fighter->shakeScreen)
    {
        fighter->shakeScreen = false;
        bgShake(false);
    }

    fighter->hitPoints -= damage;

    if (fighter->hitPoints <= 0)
    {
        fighter->hitPoints = 0;
        fighter->DoDefeatedSequence = true;
    }

    hudUpdateFighter(fighter);
}

void fighterShiftRight(struct Fighter* fighter)
{
    fighterPositionXAdd(fighter, 2);
}

void fighterShiftLeft(struct Fighter* fighter)
{
    fighterPositionXAdd(fighter, -2);
}

void fighterLockBoundaries(struct Fighter* fighter)
{
    return;

    // bool changed = false;

    // if (sprite[fighter->spriteIndex].x_ < CAMERA_BOUND_LEFT)
    // {
    //     sprite[fighter->spriteIndex].x_ = CAMERA_BOUND_LEFT;
    //     changed = true;
    // }
    // else if (sprite[fighter->spriteIndex].x_ + FIGHTER_WIDTH > CAMERA_BOUND_RIGHT && !fighter->IsJumpingRollForward)
    // {
    //     sprite[fighter->spriteIndex].x_ = CAMERA_BOUND_RIGHT - FIGHTER_WIDTH;
    //     changed = true;
    // }
    // // else if (sprite[fighter->spriteIndex].y_ < 0)
    // // {
    // //     sprite[fighter->spriteIndex].y_ = 0;
    // //     changed = true;
    // // }
    // // else if (sprite[fighter->spriteIndex].y_ > FLOOR_LOCATION_Y - 98)
    // // {
    // //     sprite[fighter->spriteIndex].y_ = FLOOR_LOCATION_Y - 98;
    // //     changed = true;
    // // }

    // if (changed)
    // {
    //     fighter->positionX = sprite[fighter->spriteIndex].x_;
    //     //fighter->positionY = sprite[fighter->spriteIndex].y_;

    //     //sprite[fighter->HB_BODY].x_ = fighter->positionX + 12;
        
    //     // if (fighter->fighterIndex == CAGE)
    //     // {
    //     //     sprite[fighter->HB_BODY].x_ += 16;
    //     // }

    //     impactFrameReset(fighter);
    // }
}

void fighterAlignSpriteAndHitbox(struct Fighter* fighter)
{
    //fighter->positionX and positionY are the new definitive position of the fighter
    //only positionX and Y will be affected by movement, jumping, attacks, and damage
    // sprite[fighter->spriteIndex].x_ = fighter->positionX;
    // sprite[fighter->spriteIndex].y_ = fighter->positionY;
    //sprite[fighter->HB_BODY].x_ = fighter->positionX + 4;
    //sprite[fighter->HB_BODY].y_ = fighter->positionY + 4;

    // if (fighter->CurrentState == STATE_IDLE)
    // {
    //     //reset the attack hitbox when the fighter is idle
    //     sprite[fighter->HB_ATTACK].x_ = fighter->positionX + 12;
    //     sprite[fighter->HB_ATTACK].y_ = fighter->positionY + 160;
    // }
}

void fighterResetSpriteIndex(struct Fighter* fighter, struct SpriteAnimator* animator, bool isPlayer1)
{
    if (isPlayer1)
    {
        fighter->spriteIndex = P1_FIGHTER;
        animator->spriteIndex = P1_FIGHTER;
    }
    else
    {
        fighter->spriteIndex = P2_FIGHTER;
        animator->spriteIndex = P2_FIGHTER;
    }

    animator->lastTick = rapTicks;
}

void fighterSetOnFloor(struct Fighter* fighter)
{
    fighter->positionY = FLOOR_LOCATION_Y_FIGHTER;
}

bool fighterHasRoomToMove(struct Fighter* fighter, struct Fighter* otherFighter)
{
    // if (fighter->direction == 1)
    // {
        //fighter is facing RIGHT, so let's make sure they have room to the LEFT of them
        if (fighter->positionX <= CAMERA_BOUND_LEFT + 1 && cameraIsAtLeftWall())
            return false;

        if (fighter->positionX <= CAMERA_BOUND_LEFT + 1 && otherFighter->positionX >= CAMERA_BOUND_RIGHT - FIGHTER_WIDTH)
            return false;

        if (fighter->positionX <= CAMERA_BOUND_LEFT + 1 && cameraIsAtLeftWall())
            return false;
    // }
    // else if (fighter-> direction == -1)
    // {
        //fighter is facing LEFT, so let's make sure they have room to the RIGHT of them
        if (fighter->positionX >= CAMERA_BOUND_RIGHT - FIGHTER_WIDTH && cameraIsAtRightWall())
            return false;

        if (fighter->positionX >= CAMERA_BOUND_RIGHT && otherFighter->positionX <= CAMERA_BOUND_LEFT)
            return false;
    // }

    return true;
}

void fighterPositionXAdd(struct Fighter* fighter, int xAdd)
{
    if (fighter->direction == 1
        && fighter->Opponent->worldPositionX - fighter->worldPositionX >= FIGHTER_MAX_DISTANCE_FROM_OPPONENT
        && xAdd < 0)
        return;
    else if (fighter->direction == -1
        && fighter->worldPositionX - fighter->Opponent->worldPositionX >= FIGHTER_MAX_DISTANCE_FROM_OPPONENT
        && xAdd > 0)
        return;

    fighter->worldPositionX += xAdd;

    if (fighter->worldPositionX < FIGHTER_MIN_WORLD_POSITION_X)
        fighter->worldPositionX = FIGHTER_MIN_WORLD_POSITION_X;
    else if (fighter->worldPositionX > FIGHTER_MAX_WORLD_POSITION_X)
        fighter->worldPositionX = FIGHTER_MAX_WORLD_POSITION_X;
}

void fighterCastShadow(struct Fighter* fighter, bool includeY)
{
    sprite[fighter->spriteIndex - 1].x_ = sprite[fighter->spriteIndex].x_;
    sprite[fighter->spriteIndex - 1].width = sprite[fighter->spriteIndex].width;
    sprite[fighter->spriteIndex - 1].height = sprite[fighter->spriteIndex].height;
    sprite[fighter->spriteIndex - 1].bytewid = sprite[fighter->spriteIndex].bytewid;
    sprite[fighter->spriteIndex - 1].framesz = sprite[fighter->spriteIndex].framesz;
    sprite[fighter->spriteIndex - 1].gfxbase = sprite[fighter->spriteIndex].gfxbase;
    sprite[fighter->spriteIndex - 1].active = R_is_active;

    if (includeY)
    {
        sprite[fighter->spriteIndex - 1].y_ = sprite[fighter->spriteIndex].y_ + sprite[fighter->spriteIndex].height - fighterShadowHeightLookup(sprite[fighter->spriteIndex].height) - 10 + FLOOR_LOCATION_Y_FIGHTER - fighter->positionY + sprite[fighter->spriteIndex].height - fighterShadowHeightLookup(sprite[fighter->spriteIndex].height);

        if (sprite[fighter->spriteIndex - 1].y_ > FLOOR_LOCATION_Y_FIGHTER + 112 - fighterShadowHeightLookup(sprite[fighter->spriteIndex].height) - 10)
        {
            sprite[fighter->spriteIndex - 1].y_ = FLOOR_LOCATION_Y_FIGHTER + 112 - fighterShadowHeightLookup(sprite[fighter->spriteIndex].height) - 10;
        }
    }
}

int fighterShadowHeightLookup(int height)
{
    switch (height)
    {
        case 16:
            return 3;
        case 32:
            return 6;
        case 48:
            return 9;
        case 64:
            return 12;
        case 80:
            return 15;
        case 96:
            return 18;
        case 128:
            return 24;
        default:
            return 21;
    }
}

void fighterIsMaxDistance(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (fighter1->direction == 1)
    {
        if (fighter2->positionX - fighter1->positionX >= 260)
        {
            fighter1->isMaxDistance = true;
            fighter2->isMaxDistance = true;
            return;
        }
    }
    else
    {
        if (fighter1->positionX - (fighter2->positionX) >= 260)
        {
            fighter1->isMaxDistance = true;
            fighter2->isMaxDistance = true;
            return;
        }
    }

    fighter1->isMaxDistance = false;
    fighter2->isMaxDistance = false;
}

void fighterTorpedoCheck(struct StateMachine* stateMachine, struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (fighter1->fighterIndex != RAIDEN && fighter2->fighterIndex != RAIDEN)
        return;  //Raiden's not here, gtfo
    
    if (fighter1->fighterIndex == RAIDEN && fighter1->currentState->Name == STATE_RAIDEN_TORPEDO && fighter1->vars[0] == 1 && fighter2->currentState->Name == STATE_HIT_TORPEDO)
    {
        stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter2, fighter2->spriteAnimator);
    }
    else if (fighter2->fighterIndex == RAIDEN && fighter2->currentState->Name == STATE_RAIDEN_TORPEDO && fighter2->vars[0] == 1 && fighter1->currentState->Name == STATE_HIT_TORPEDO)
    {
        stateMachineGoto(stateMachine, STATE_HIT_DROPKICK, fighter1, fighter1->spriteAnimator);
    }
}

void fighterResetTicks(struct Fighter* fighter)
{
    fighter->ResetTicks = true;
}

void fighterDrawScores(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (fighter1->ScoreChanged || fighter2->ScoreChanged)
    {
        rapUse8x8fontPalette(10);
        jsfSetFontSize(0);
        jsfSetFontIndx(1);

        if (fighter1->ScoreChanged)
        {
            rapLocate(26,10);
            js_r_textbuffer= ee_printf("%02ld00",fighter1->Score);
            rapPrint();
        }
        
        if (fighter2->ScoreChanged)
        {
            fighter2->ScoreChanged = false;
            tempScore = fighter2->Score;
            scoreLength = 2;  //2 for the dummy digits at the end

            if (tempScore == 0)
            {
                scoreLength = 4;
            }
            else
            {
                while (tempScore != 0)  
                {  
                    tempScore = tempScore / 10;  
                    scoreLength++;
                }

                if (scoreLength < 4)
                {
                    scoreLength = 4;
                }
            }

            rapLocate(302 - (scoreLength * 8),10);
            js_r_textbuffer= ee_printf("%02ld00",fighter2->Score);
            rapPrint();
        }
    }
}

void fighterLaydown(struct Fighter* fighter, struct SpriteAnimator* animator)
{
    animateFrame(animator, animator->spriteIndex, fighter->HIT_FALL_FRAME_COUNT-1, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 20)
    {
        fighter->AcceptingInput = true;
        animator->currentFrame = 0;
        fighterSetOnFloor(fighter);
    }
}

void fighterResetRaidenLightning(struct Fighter* fighter)
{
    fighter->projectileAnimator->currentFrame = 0;
    fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
    fighter->projectileAnimator->base = BMP_LIGHTNING;
    sprite[fighter->lightningSpriteIndex].gfxbase = BMP_LIGHTNING;
    sprite[fighter->lightningSpriteIndex].gwidth = 320;
    jsfLoadClut((unsigned short *)(void *)(BMP_LIGHTNING_clut),13,3);
}

void fighterFreeze(struct Fighter* fighter)
{
    if (!fighter->IsFrozen)
    {
        fighter->IsFrozen = true;
        fighter->AcceptingInput = false;
        fighter->FrozenShakeComplete = false;
        fighter->FrozenShakeDirection = -1;
        fighter->FrozenShakeCount = 0;
        fighter->FrozenShakeTicks = rapTicks;
        fighter->lastTicks = rapTicks;
        fighter->NoSound = true;

        if (fighter->isPlayer1)
        {
            jsfLoadClut((unsigned short *)(void *)(fighter->frozenClut),14,16);
        }
        else
        {
            jsfLoadClut((unsigned short *)(void *)(fighter->frozenClut),15,16);
        }
        
        sfxSubzeroFreezeEnd(fighter->soundHandler);
    }
}

void fighterUnfreeze(struct Fighter* fighter)
{
    fighter->IsFrozen = false;
    fighter->AcceptingInput = true;

    if (fighter->isPlayer1)
    {
        jsfLoadClut((unsigned short *)(void *)fighter->defaultClut, 14, 16);
    }
    else
    {
        jsfLoadClut((unsigned short *)(void *)fighter->defaultClut, 15, 16);
    }
}

void fighterHarpoon(struct Fighter* fighter1, struct Fighter* scorpion)
{
    if (!fighter1->IsHitHarpoon)
    {
        fighter1->IsHitHarpoon = true;
        fighter1->IsHarpoonComplete = false;

        //calculate distance between the two fighters
        if (fighter1->direction == -1)
        {
            fighter1->HarpoonKnockbackDistance = fighter1->positionX - scorpion->positionX + FIGHTER_WIDTH;
        }
        else
        {
            fighter1->HarpoonKnockbackDistance = scorpion->positionX - fighter1->positionX + FIGHTER_WIDTH;
        }

        if (fighter1->HarpoonKnockbackDistance < HARPOON_MINIMUM_DISTANCE)
        {   
            fighter1->HarpoonKnockbackDistance = HARPOON_MINIMUM_DISTANCE - fighter1->HarpoonKnockbackDistance;
            fighterSlideToPositionX(fighter1, fighter1->positionX + (fighter1->HarpoonKnockbackDistance * fighter1->direction * -1));
        }
        else
        {
            //this fighter is being harpooned far away, so no need to knockback
            fighter1->HarpoonKnockbackDistance = 0;
        }

        //fighterPlayYell(fighter1->fighterIndex, fighter1->soundHandler, fighter1->isPlayer1);

        if (fighter1->direction == -1)
        {
            fighter1->HarpoonSourceX = scorpion->positionX + FIGHTER_WIDTH;
        }
        else
        {
            fighter1->HarpoonSourceX = scorpion->positionX - FIGHTER_WIDTH;
        }

        fighter1->lastTicks = rapTicks;

        sprite[scorpion->lightningSpriteIndex].active = R_is_inactive;
        fighterResetRaidenLightning(scorpion);
        //show fighter->HitUppercutFrames[0]
        //if close to other fighter, knock them back
        //do impaled blood sequence
        //play "yell" sfx
        //zip them closer to other fighter
        //make dizzy
        //animate harpoon cord
    }
}

void fighterSlideToPositionX(struct Fighter* fighter, int x)
{
    if (!fighter->IsSlidingToPositionX)
    {
        fighter->IsSlidingToPositionX = true;
        fighter->SlidePositionXTarget = x;
    }
}

void fighterHarpoonCheck(struct Fighter* fighter1, struct Fighter* scorpion)
{
    if (scorpion->IsHarpoonReelingIn && !fighter1->IsSlidingToPositionX && fighter1->IsHarpoonComplete)
    {
        scorpion->IsHarpoonReelingIn = false;
        fighterResetRaidenLightning(scorpion);
        sprite[scorpion->lightningSpriteIndex].active = R_is_inactive;
    }
    else if (scorpion->IsHarpoonReelingIn || scorpion->DoHarpoonReelingInSequence)
    {
        if (fighter1->direction == -1)
        {
            scorpion->HarpoonDistance = fighter1->positionX - scorpion->positionX + FIGHTER_WIDTH;
            scorpion->HarpoonCenterX = scorpion->positionX + (scorpion->HarpoonDistance / 2) - ((scorpion->HarpoonDistance - 64) / 2);
        }
        else
        {
            scorpion->HarpoonDistance = scorpion->positionX - fighter1->positionX + FIGHTER_WIDTH;
            scorpion->HarpoonCenterX = fighter1->positionX + (scorpion->HarpoonDistance / 2) + ((scorpion->HarpoonDistance - 64) / 2);
        }

        if (scorpion->IsHarpoonReelingIn)
        {
            sprite[scorpion->lightningSpriteIndex].scale_x = scorpion->HarpoonDistance - 64;
        }
        else
        {
            sprite[scorpion->lightningSpriteIndex].scale_x = scorpion->HarpoonDistance - 96;
            scorpion->HarpoonCenterX += (32 * scorpion->direction);
        }
    }
}

bool fighterCanTakeDamage(struct StateMachine* stateMachine, struct Fighter* fighter)
{
    return !fighter->IsBeingDamaged;
}

bool fighterIsBlocking(struct StateMachine* stateMachine, struct Fighter* fighter)
{
    if ((fighter->currentState->Name == STATE_BLOCKING || fighter->currentState->Name == STATE_DUCK_BLOCKING))
        return true;

    return false;
}

bool fighterIsDuckBlocking(struct StateMachine* stateMachine, struct Fighter* fighter)
{
    if (fighter->currentState->Name == STATE_DUCK_BLOCKING)
        return true;

    return false;
}

bool fighterIsJumping(struct StateMachine* stateMachine, struct Fighter* fighter)
{
    if (fighter->currentState->Name == STATE_JUMPING
        || fighter->currentState->Name == STATE_JUMP_KICKING
        || fighter->currentState->Name == STATE_JUMP_PUNCHING
        || fighter->currentState->Name == STATE_JUMPING_BACKWARD
        || fighter->currentState->Name == STATE_JUMPING_FORWARD
        || fighter->currentState->Name == STATE_JUMPING_KICKING_BACKWARD
        || fighter->currentState->Name == STATE_JUMPING_KICKING_FORWARD
        || fighter->currentState->Name == STATE_JUMPING_PUNCHING_BACKWARD
        || fighter->currentState->Name == STATE_JUMPING_PUNCHING_FORWARD)
        return true;

    return false;
}

void fighterFaceOpponent(struct Fighter* fighter)
{
    if (fighter->direction == 1
        && fighter->positionX > fighter->Opponent->positionX + turnOffset)
    {
        fighterTurnInstantly(fighter);
    }

    if (fighter->direction == -1
        && fighter->positionX + turnOffset < fighter->Opponent->positionX)
    {
        fighterTurnInstantly(fighter);
    }
}

void fighterTurnInstantly(struct Fighter* fighter)
{
    fighter->direction *= -1;
                    
    if (fighter->direction == 1)
    {
        sprite[fighter->spriteIndex].flip = R_is_normal;
        sprite[fighter->spriteIndex-1].flip = R_is_normal;
        sprite[fighter->lightningSpriteIndex].flip = R_is_normal;
    }
    else
    {
        sprite[fighter->spriteIndex].flip = R_is_flipped;
        sprite[fighter->spriteIndex-1].flip = R_is_flipped;
        sprite[fighter->lightningSpriteIndex].flip = R_is_flipped;
    }
}