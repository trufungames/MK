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
#include "debug.h"

int collision = 0;
int turnOffset = 32;
bool walkForward = false;
int shadowTicks = 0;

void fighterStartUp()
{
   // shadowTicks = rapTicks;
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
            //sprite[fighter->lightningSpriteIndex].active = R_is_active;
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
    if (isPlayer1)
    {
        sprite[fighter->spriteIndex].x_ = 14;
        sprite[fighter->spriteIndex].flip = R_is_normal;
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
        fighter->direction = -1;
    }

    fighter->positionX = sprite[fighter->spriteIndex].x_;
    fighter->positionY = sprite[fighter->spriteIndex].y_;
}

void fighterInitialize(struct Fighter *fighter, bool isPlayer1, struct SoundHandler* soundHandler, struct ImpactFrame* impactFrameLowPunch, struct ImpactFrame* impactFrameHighPunch, struct ImpactFrame* impactFrameLowKick, struct ImpactFrame* impactFrameHighKick, struct ImpactFrame* impactFrameUppercut, struct ImpactFrame* impactFrameSweep, struct ImpactFrame* impactFrameJumpPunch, struct ImpactFrame* impactFrameJumpKick, struct ImpactFrame* impactFrameRoundhouse, struct ImpactFrame* impactFrameBodyPunch, struct ImpactFrame* impactFrameBodyKick, struct ImpactFrame* impactFrameDuckKick, struct ImpactFrame* impactFrameThrow)
{
    //defaults
    fighter->gravity = 2.2f;
    fighter->momentumY = 0.0f;
    fighter->jumpMomentumYStart = -18.0f;
    fighter->uppercutMomentumYStart = -26.0f;
    fighter->dropKickMomentemYStart = -10.0f;
    fighter->throwMomentemYStart = 5.0f;

    //assignments
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
    fighter->playerMoveForwardSpeed = 2;
    fighter->playerMoveBackwardSpeed = 2;
    fighter->playerKnockbackSpeed = 4.5f;
    fighter->playerUppercutXSpeed = 3.5f;
    fighter->playerDropKickXSpeed = 6.5f;
    fighter->playerThrowXSpeed = 8.0f;
    fighter->playerXTraveled = 0.0f;
    fighter->playerJumpXSpeed = 7.5f;
    fighter->playerPushSpeed = 1;
    fighter->damageTicks = 1;
    fighter->dropKickTicks = 0;
    fighter->touchTicks = 0;
    fighter->IsActive = true;
    fighter->IsIdle = true;
    fighter->IsWinner = false;
    fighter->IsWalking = false;
    fighter->IsAttacking = false;
    fighter->IsTurning = false;
    fighter->IsJumping = false;
    fighter->IsJumpingRollForward = false;
    fighter->IsJumpingRollBackward = false;
    fighter->IsDucking = false;
    fighter->IsBlocking = false;
    fighter->IsBlockingHit = false;
    fighter->IsLowPunching = false;
    fighter->IsHighPunching = false;
    fighter->IsLowKicking = false;
    fighter->IsHighKicking = false;
    fighter->IsJumpPunching = false;
    fighter->IsJumpDropKicking = false;
    fighter->IsJumpKicking = false;
    fighter->IsUppercutting = false;
    fighter->ButtonReleased = true;
    fighter->DPadReleased = true;
    fighter->AcceptingInput = true;
    fighter->airAttackPerformed = false;
    fighter->IsSweeping = false;
    fighter->IsRoundhousing = false;
    fighter->IsBodyPunching = false;
    fighter->IsBodyKicking = false;
    fighter->IsDuckKicking = false;
    fighter->IsThrowing = false;
    fighter->IsBeingThrown = false;
    fighter->IsBeingThrownInAir = false;
    fighter->IsBeingThrownLow = false;
    fighter->IsClose = false;
    fighter->IsHitLow = false;
    fighter->IsHitHigh = false;
    fighter->IsHitBack = false;
    fighter->IsHitBackLow = false;
    fighter->IsHitBackHigh = false;
    fighter->IsHitBackLight = false;
    fighter->IsHitBackLightKano = false;
    fighter->IsHitFall = false;
    fighter->IsHitBodyKick = false;
    fighter->IsMidAir = false;
    fighter->IsFalling = false;
    fighter->IsLayingDown = false;
    fighter->IsGettingUp = false;
    fighter->IsBeingDamaged = false;
    fighter->IsPushing = false;
    fighter->IsDizzy = false;
    fighter->IsDefeated = false;
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
    fighter->hitPoints = 33;
    fighter->pendingDamage = 0;
    fighter->shakeScreen = false;
    fighter->justTurned = false;
    fighter->changedDirection = false;
    fighter->hasRoomToMove = true;
    sprite[fighter->spriteIndex].active = R_is_active;    

    if (isPlayer1)
    {
        fighter->HB_ATTACK = P1_HB_ATTACK;
        //fighter->lightningSpriteIndex = P1_LIGHTNING_PIT;
        fighter->PAD = LEFT_PAD;
        fighter->positionX = 50;
        sprite[fighter->spriteIndex].flip = R_is_normal;
        fighter->direction = 1;        
    }
    else
    {
        fighter->HB_ATTACK = P2_HB_ATTACK;
        //fighter->lightningSpriteIndex = P2_LIGHTNING_PIT;
        fighter->PAD = RIGHT_PAD;
        fighter->positionX = 210;
        sprite[fighter->spriteIndex].flip = R_is_flipped;
        fighter->direction = -1;
    }

    fighterSetOnFloor(fighter);
    fighterAlignSpriteAndHitbox(fighter);
    impactFrameReset(fighter);
}

void fighterRestartMatch(struct Fighter* fighter)
{
    fighter->roundsLost = 0;
}

void fighterUpdateIdle(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame idleFrames[])
{
    updateSpriteAnimator(animator, idleFrames, fighter->IDLE_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);

    //fighterCastShadow(fighter);
}

void fighterUpdate(float delta, struct Fighter *fighter, struct SpriteAnimator* animator)
{
    if (!fighter->IsActive)
        return;

    walkForward = fighter->direction == -1;

    if (fighter->DoDefeatedSequence)
    {
        fighter->DoDefeatedSequence = false;
        animator->currentFrame = 0;
        
        if (fighter->roundsLost >= 1 && !fighter->IsDizzy)
        {
            fighterMakeDizzy(fighter);
        }
        else
        {
            fighter->IsDefeated = true;
            fighter->IsDizzy = false;
            fighter->roundsLost++;
        }
    }

    if (fighter->DoWinSequence)
    {
        fighter->DoWinSequence = false;
        animator->currentFrame = 0;
        fighter->IsWinner = true;
        fighterSetOnFloor(fighter);

        switch(fighter->fighterIndex)
        {
            case CAGE:
                sfxCageYeah(fighter->soundHandler, fighter->isPlayer1);
                break;
            case KANO:
                sfxKanoYell(fighter->soundHandler, fighter->isPlayer1);
                break;
        }        
    }

    if (fighter->IsDefeated)
    {
        if (animationIsComplete(animator, fighter->HIT_FALL_FRAME_COUNT))
        {
            bgShake(false);
            sfxThud(fighter->soundHandler);
            fighter->IsActive = false;
        }

        updateSpriteAnimator(animator, *fighter->hitFallFrames, fighter->HIT_FALL_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        return;
    }


    if (fighter->IsDizzy)
    {
        if (!fighter->IsBeingDamaged)
        {
            updateSpriteAnimator(animator, *fighter->dizzyFrames, fighter->DIZZY_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
        }

        if ((fighter->pendingDamage > 0 || fighter->IsBeingDamaged))
        {            
            fighterHandleDamage(delta, fighter, animator, walkForward);
            
            if (!fighter->IsBeingDamaged)
            {
                fighter->IsDefeated = true;
                fighter->IsDizzy = false;
                fighter->roundsLost++;
                //showMessage("shit.");  //<<<<<<<<why is this happening?
            }
        }
        
        return;
    }
    
    if (fighter->IsWinner)
    {
        updateSpriteAnimator(animator, *fighter->winsFrames, fighter->WINS_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        return; 
    }

    if (fighter->DoBlockSequence && rapTicks > fighter->lastTicks + 6)
    {
        fighter->DoBlockSequence = false;
        animator->currentFrame = 0;
        sfxBlock(fighter->soundHandler, fighter->isPlayer1);
        fighterTakeDamage(fighter, DMG_BLOCKED, 0);
    }
    else if (fighter->DoThrowSequence)
    {
        fighter->DoThrowSequence = false;
        animator->currentFrame = 0;
        fighter->lastTicks = rapTicks;        
        fighter->positionX = fighter->ThrowX;
        fighter->positionY = fighter->ThrowY;
        fighter->ThrowX = 0;
        fighter->ThrowY = 0;
        fighter->IsBeingDamaged = true;
        fighter->IsBeingThrown = true;
    }
    else if (fighter->IsTurning && !fighter->IsJumping && !fighter->IsJumpingRollBackward && !fighter->IsJumpingRollForward && !fighter->IsBeingDamaged && !fighter->IsAttacking)
    {
        if (fighter->justTurned)
        {
            //we just turned, so reset the animation
            fighter->justTurned = false;
            animator->currentFrame = 0;
        }

        if (!fighter->changedDirection)
        {
            if (animationIsComplete(animator, fighter->TURN_FRAME_COUNT))
            {
                fighter->changedDirection = true;
                fighter->direction *= -1;
                
                if (fighter->direction == 1)
                {
                    sprite[fighter->spriteIndex].flip = R_is_normal;
                }
                else
                {
                    sprite[fighter->spriteIndex].flip = R_is_flipped;
                }
                
                impactFrameReset(fighter);
            }

            updateSpriteAnimator(animator, *fighter->turnFrames, fighter->TURN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        }
        else
        {
            if (animator->currentFrame <= 0)
            {
                fighter->IsTurning = false;
            }

            updateSpriteAnimator(animator, *fighter->turnFrames, fighter->TURN_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);
        }
        return;
    }

    // if (fighter->fighterIndex == RAIDEN)
    // {
    //     sprite[fighter->lightningSpriteIndex].x_ = sprite[fighter->spriteIndex].x_;		
    // }

    if (fighter->IsBeingPushed)
    {
        fighterPositionXAdd(fighter, fighter->playerPushSpeed * delta * -fighter->direction);

        if (rapTicks >= fighter->touchTicks + 4)
        {
            fighter->IsBeingPushed = false;
            sprite[fighter->spriteIndex].was_hit = -1;
        }
    }

    fighterHandleDamage(delta, fighter, animator, walkForward);
    fighterHandleInput(delta, fighter, animator, walkForward);
    fighterLockBoundaries(fighter);
    fighterAlignSpriteAndHitbox(fighter);
}

void fighterHandleDamage(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward)
{
    //**************************************
    //Impact Damage Checks
    //**************************************
    if (!fighter->IsBeingDamaged)
    {
        if (fighter->IsHitLow || fighter->IsHitHigh || fighter->IsHitBack || fighter->IsHitFall || fighter->IsHitSweep || fighter->IsHitBackHigh || fighter->IsHitBackLow || fighter->IsHitDropKick || fighter->IsHitBackLight || fighter->IsHitBodyKick || fighter->IsBeingThrown)        {
            if (fighter->IsHitFall)
            {
                fighterTakeDamage(fighter, fighter->pendingDamage, 0);    //no impact sleep for uppercut
            }
            else
            {
                fighterTakeDamage(fighter, fighter->pendingDamage, 0);
            }
            
            fighter->pendingDamage = 0;
            fighter->playerXTraveled = 0.0f;
            fighter->IsBeingDamaged = true;
            fighter->lastTicks = rapTicks;
            fighter->dropKickTicks = rapTicks;
            animator->currentFrame = 0;
            fighter->momentumY = fighter->uppercutMomentumYStart;

            if (fighter->IsHitDropKick || fighter->IsHitBodyKick)
            {
                fighter->momentumY = fighter->dropKickMomentemYStart;
            }
            else if (fighter->IsBeingThrown)
            {
                fighter->momentumY = 0.0f; //fighter->throwMomentemYStart;  HACK
            }

            if (fighter->IsHitLow || fighter->IsHitHigh || fighter->IsHitSweep || fighter->IsHitBackHigh || fighter->IsHitBackLow)
            {
                fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
            }
            else if (fighter->IsHitBackLight || fighter->IsHitBodyKick)
            {
                if (fighter->IsHitBackLightKano)
                {
                    sfxKanoHeadbutt(fighter->soundHandler, fighter->isPlayer1);
                }
                else
                {
                    sfxImpact(fighter->soundHandler);
                }
                
            }
            else if (fighter->IsHitBack || fighter->IsHitFall || fighter->IsHitDropKick)
            {
                sfxImpact(fighter->soundHandler);
                fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
            }

            if (fighter->IsHitHigh || fighter->IsHitBack || fighter->IsHitFall || fighter->IsHitBackHigh || fighter->IsHitBackLight)
            {
                int bloodX = fighter->positionX;

                if (fighter->direction == -1)
                {
                    bloodX += 40;
                }
                else if (fighter->direction == 1)
                {
                    bloodX -= 40;
                }

                if (fighter->IsHitHigh || fighter->IsHitBackHigh || fighter->IsHitBackLight)
                {
                    bloodSpray(bloodX, fighter->positionY - 10, fighter->direction);
                }
                else if (fighter->IsHitBack)
                {
                    bloodGlob(bloodX, fighter->positionY + 20, fighter->direction);
                    bloodDrop(bloodX + (40 * fighter->direction), fighter->positionY - 30, fighter->direction);
                }
                else if (fighter->IsHitFall)
                {
                    bgShake(false);
                    bloodSquirt(bloodX, fighter->positionY - 10);
                    bloodSquirt(bloodX+20, fighter->positionY - 30);
                    bloodSquirt(bloodX+10, fighter->positionY - 50);

                    bloodDrop(bloodX + (0 * fighter->direction), fighter->positionY - 40, fighter->direction);
                    bloodDrop(bloodX + (40 * fighter->direction * -1), fighter->positionY - 40, fighter->direction * -1);
                    bloodDrop(bloodX + (20 * fighter->direction), fighter->positionY - 50, fighter->direction);
                    bloodDrop(bloodX + (20 * fighter->direction * -1), fighter->positionY - 50, fighter->direction * -1);
                }
            }
        }
    }

    if (fighter->IsHitLow && fighter->IsBeingDamaged)
    {
        updateSpriteAnimator(animator, *fighter->hitLowFrames, fighter->HIT_LOW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (animationIsComplete(animator, fighter->HIT_LOW_FRAME_COUNT))
        {
            fighter->IsHitLow = false;
            fighter->IsBeingDamaged = false;
        }
    }
    else if (fighter->IsHitHigh && fighter->IsBeingDamaged)
    {
        updateSpriteAnimator(animator, *fighter->hitHighFrames, fighter->HIT_HIGH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (animationIsComplete(animator, fighter->HIT_HIGH_FRAME_COUNT))
        {
            fighter->IsHitHigh = false;
            fighter->IsBeingDamaged = false;
        }
    }
    else if ((fighter->IsHitBack || fighter->IsHitBackHigh) && fighter->IsBeingDamaged)
    {
        if (rapTicks >= fighter->lastTicks + fighter->damageTicks)
        {
            fighterPositionXAdd(fighter, fighter->playerKnockbackSpeed * -fighter->direction);
        }     

        updateSpriteAnimator(animator, *fighter->hitBackFrames, fighter->HIT_BACK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (animationIsComplete(animator, fighter->HIT_BACK_FRAME_COUNT))
        {
            fighter->IsHitBack = false;
            fighter->IsHitBackHigh = false;
            fighter->IsBeingDamaged = false;
        }
    }
    else if (fighter->IsHitBackLow && fighter->IsBeingDamaged)
    {
        if (rapTicks >= fighter->lastTicks + fighter->damageTicks)
        {
            fighterPositionXAdd(fighter, (fighter->playerKnockbackSpeed / 3) * -fighter->direction);
        }     

        updateSpriteAnimator(animator, *fighter->hitLowFrames, fighter->HIT_LOW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (animationIsComplete(animator, fighter->HIT_LOW_FRAME_COUNT))
        {
            fighter->IsHitBackLow = false;
            fighter->IsBeingDamaged = false;
        }
    }
    else if (fighter->IsHitBackLight && fighter->IsBeingDamaged)
    {
        if (rapTicks >= fighter->lastTicks + fighter->damageTicks)
        {
            fighterPositionXAdd(fighter, (fighter->playerKnockbackSpeed / 2) * -fighter->direction);
        }     

        updateSpriteAnimator(animator, *fighter->hitBackFrames, fighter->HIT_BACK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (animationIsComplete(animator, fighter->HIT_BACK_FRAME_COUNT))
        {
            fighter->IsHitBackLight = false;
            fighter->IsHitBackLightKano = false;
            fighter->IsBeingDamaged = false;
        }
    }
    else if (fighter->IsHitSweep && fighter->IsBeingDamaged)
    {       
        updateSpriteAnimator(animator, *fighter->hitSweepFrames, fighter->HIT_SWEEP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (animationIsComplete(animator, fighter->HIT_SWEEP_FRAME_COUNT))
        {
            sfxThud(fighter->soundHandler);
            bgShake(false);
            fighter->IsHitSweep = false;
            fighter->IsGettingUp = true;
            animator->currentFrame = 0;
        }
    }
    else if (fighter->IsBeingThrown && fighter->IsBeingDamaged)
    {
        if (!fighter->IsBeingThrownInAir)
        {
            if (fighter->IsBeingThrownLow)
            {
                updateSpriteAnimator(animator, *fighter->beingThrownLowFrames, fighter->BEING_THROWN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else
            {
                updateSpriteAnimator(animator, *fighter->beingThrownFrames, fighter->BEING_THROWN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);   
            }            
        }

        if (fighter->IsLayingDown)
        {
            if (rapTicks >= fighter->lastTicks + 20)
            {
                fighter->IsBeingThrown = false;
                fighter->IsBeingThrownInAir = false;
                fighter->IsLayingDown = false;
                fighter->IsGettingUp = true;
                animator->currentFrame = 0;
                fighterSetOnFloor(fighter);
            }
        }
        else if (animator->currentFrame >= 2 && rapTicks >= fighter->lastTicks + 1)
        {
            if (!fighter->IsBeingThrownInAir)
            {
                fighter->IsBeingThrownInAir = true;
                fighter->positionX += (16 * fighter->direction);
                fighter->positionY = 48;
            }
            else
            {
                if (fighter->positionY > FLOOR_LOCATION_Y_FIGHTER + 32)
                {
                    fighter->IsLayingDown = true;
                    fighter->lastTicks = rapTicks;
                    fighterSetOnFloor(fighter);

                    //show last frame of BeingThrown animation
                    animateFrame(fighter->spriteIndex, 5, *fighter->beingThrownFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

                    bgShake(false);
                    sfxThud(fighter->soundHandler);
                    fighterTakeDamage(fighter, DMG_THROW, 0);
                }
                else
                {
                    animateFrame(fighter->spriteIndex, 2, *fighter->beingThrownFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }

                fighterPositionXAdd(fighter, fighter->playerThrowXSpeed * fighter->direction);
                fighter->positionY += fighter->throwMomentemYStart;
                fighter->lastTicks = rapTicks;
                //fighter->momentumY += fighter->gravity;
            }
        }
    }
    else if ((fighter->IsHitDropKick || fighter->IsHitBodyKick) && fighter->IsBeingDamaged)
    {
        if (fighter->IsLayingDown)
        {
            if (rapTicks >= fighter->lastTicks + 20)
            {
                fighter->IsHitDropKick = false;
                fighter->IsHitBodyKick = false;
                fighter->IsMidAir = false;
                fighter->IsFalling = false;
                fighter->IsLayingDown = false;
                fighter->IsGettingUp = true;
                animator->currentFrame = 0;
                fighterSetOnFloor(fighter);
            }
        }
        else if (rapTicks >= fighter->lastTicks + 1)
        {
            fighterPositionXAdd(fighter, fighter->playerUppercutXSpeed * -fighter->direction);

            if (!fighter->IsMidAir)
            {
                fighter->positionY += fighter->momentumY;
                fighter->momentumY += fighter->gravity;
            }

            if (fighter->momentumY >= fighter->uppercutMomentumYStart && fighter->momentumY < 0.0f)
            {
                animateFrame(fighter->spriteIndex, 0, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                animator->currentFrame = 0;
            }
            else if (!fighter->IsFalling)
            {
                if (!fighter->IsMidAir && !fighter->IsHitBodyKick)
                {
                    fighterPlayUppercutReaction(fighter->soundHandler);
                }
                fighter->IsMidAir = true;
                
                //once we've reached the apex of the uppercut hit, finish the animation (-1 frame), then complete the fall
                updateSpriteAnimator(animator, *fighter->hitFallFrames, fighter->HIT_FALL_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

                if (animationIsComplete(animator, fighter->HIT_FALL_FRAME_COUNT-1))
                {
                    fighter->IsFalling = true;
                    fighter->IsMidAir = false;
                }
            }
            else
            {
                if (fighter->positionY > FLOOR_LOCATION_Y_FIGHTER)
                {
                    fighter->IsLayingDown = true;
                    fighter->lastTicks = rapTicks;
                    fighterSetOnFloor(fighter);

                    //show last frame of HitFall animation
                    animateFrame(fighter->spriteIndex, 6, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

                    bgShake(false);
                    sfxThud(fighter->soundHandler);
                }
                else
                {
                    animateFrame(fighter->spriteIndex, 5, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
            }

            fighter->lastTicks = rapTicks;      
        }  
    }
    else if (fighter->IsHitFall && fighter->IsBeingDamaged)
    {
        if (fighter->IsLayingDown)
        {
            if (rapTicks >= fighter->lastTicks + 20)
            {
                fighter->IsHitFall = false;
                fighter->IsMidAir = false;
                fighter->IsFalling = false;
                fighter->IsLayingDown = false;
                fighter->IsGettingUp = true;
                animator->currentFrame = 0;
                fighterSetOnFloor(fighter);
            }
        }
        else if (rapTicks >= fighter->lastTicks + 1)
        {
            fighterPositionXAdd(fighter, fighter->playerUppercutXSpeed * -fighter->direction);

            if (!fighter->IsMidAir)
            {
                fighter->positionY += fighter->momentumY;
                fighter->momentumY += fighter->gravity;
            }

            if (fighter->momentumY >= fighter->uppercutMomentumYStart && fighter->momentumY < 0.0f)
            {
                animateFrame(fighter->spriteIndex, 0, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                animator->currentFrame = 0;
            }
            else if (!fighter->IsFalling)
            {
                if (!fighter->IsMidAir)
                {
                    fighterPlayUppercutReaction(fighter->soundHandler);
                }
                fighter->IsMidAir = true;
                
                //once we've reached the apex of the uppercut hit, finish the animation (-1 frame), then complete the fall
                updateSpriteAnimator(animator, *fighter->hitFallFrames, fighter->HIT_FALL_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

                if (animationIsComplete(animator, fighter->HIT_FALL_FRAME_COUNT-1))
                {
                    fighter->IsFalling = true;
                    fighter->IsMidAir = false;
                }
            }
            else
            {
                if (fighter->positionY > FLOOR_LOCATION_Y_FIGHTER)
                {
                    fighter->IsLayingDown = true;
                    fighter->lastTicks = rapTicks;
                    fighterSetOnFloor(fighter);

                    //show last frame of HitFall animation
                    animateFrame(fighter->spriteIndex, 6, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

                    bgShake(false);
                    sfxThud(fighter->soundHandler);
                }
                else
                {
                    animateFrame(fighter->spriteIndex, 5, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
            }

            fighter->lastTicks = rapTicks;
        }
    }
    else if (fighter->IsGettingUp && fighter->IsBeingDamaged)
    {
        updateSpriteAnimator(animator, *fighter->kipUpFrames, fighter->KIPUP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (animationIsComplete(animator, fighter->KIPUP_FRAME_COUNT))
        {
            fighter->IsBeingDamaged = false;
            fighter->IsGettingUp = false;
        }
    }
}

void fighterHandleInput(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward)
{
    //**************************************
    //Player Input Handling
    //**************************************

    if (fighter->IsBeingDamaged || fighter->IsWalking || fighter->IsDucking || fighter->IsJumping || fighter->IsJumpingRollBackward || fighter->IsJumpingRollForward || fighter->IsAttacking)
    {
        fighter->IsIdle = false;
    }

    if (!fighter->IsBeingDamaged)
    {
        fighter->pad = jsfGetPad(fighter->PAD);

        if ((fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_9) && fighter->IsDucking && fighter->ButtonReleased && fighter->AcceptingInput || fighter->IsUppercutting)
        {
            if (!fighter->IsUppercutting && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsUppercutting = true;
                fighter->IsAttacking = true;
                fighter->IsDucking = false;
                //sprite[fighter->HB_BODY].active = R_is_active;
                animator->currentFrame = 0;
                sfxSwing(fighter->soundHandler);
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameUppercut);

            if (!fighter->MadeContactUppercut)
            {
                updateSpriteAnimator(animator, *fighter->uppercutFrames, fighter->UPPERCUT_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
            }

            if (fighter->MadeContactUppercut && rapTicks < fighter->lastTicks + fighter->CooldownTicksUppercut)
            {
                animateFrame(fighter->spriteIndex, 3, *fighter->uppercutFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->MadeContactUppercut && rapTicks >= fighter->lastTicks + fighter->CooldownTicksUppercut)
            {
                fighter->MadeContactUppercut = false;
            }

            if (!fighter->MadeContactUppercut && animationIsComplete(animator, fighter->UPPERCUT_FRAME_COUNT))
            {
                fighter->IsUppercutting = false;
                fighter->AcceptingInput = true;
            }
        }
        else if ((fighter->pad & JAGPAD_9 || (fighter->pad & JAGPAD_C && (fighter->pad & JAGPAD_RIGHT && fighter->direction == 1 || fighter->pad & JAGPAD_LEFT && fighter->direction == -1))) && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping && !fighter->IsPushing || fighter->IsHighPunching)
        {
            if (!fighter->IsHighPunching && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsHighPunching = true;
                fighter->IsAttacking = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }
            else if (animationIsComplete(animator, fighter->HIGH_PUNCH_FRAME_COUNT))
            {
                fighter->IsHighPunching = false;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameHighPunch);
            updateSpriteAnimator(animator, *fighter->punchHighFrames, fighter->HIGH_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        }
        else if ((fighter->pad & JAGPAD_9 || (fighter->pad & JAGPAD_C && (fighter->pad & JAGPAD_RIGHT && fighter->direction == 1 || fighter->pad & JAGPAD_LEFT && fighter->direction == -1))) && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping && fighter->IsPushing || fighter->IsBodyPunching)
        {
            if (!fighter->IsBodyPunching && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsBodyPunching = true;
                fighter->IsAttacking = true;
                animator->currentFrame = 0;
            }
            else if (animationIsComplete(animator, fighter->BODY_PUNCH_FRAME_COUNT))
            {
                fighter->IsBodyPunching = false;
                fighter->AcceptingInput = true;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameBodyPunch);
            updateSpriteAnimator(animator, *fighter->bodyPunchFrames, fighter->BODY_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        }
        else if (fighter->pad & JAGPAD_C && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping && fighter->IsClose || fighter->IsThrowing)
        {
            if (!fighter->IsThrowing && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsThrowing = true;
                fighter->IsAttacking = true;
                animator->currentFrame = 0;
                
                switch (fighter->fighterIndex)
                {
                    case SCORPION:
                    case SUBZERO:
                        sfxThrowNinja(fighter->soundHandler, fighter->isPlayer1);
                        break;
                    case SONYA:
                        sfxThrowFemale(fighter->soundHandler, fighter->isPlayer1);
                        break;
                    default:
                        sfxThrowMale(fighter->soundHandler, fighter->isPlayer1);
                        break;
                }
            }
            else if (animationIsComplete(animator, fighter->THROW_FRAME_COUNT))
            {
                fighter->IsThrowing = false;
                fighter->AcceptingInput = true;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameThrow);
            updateSpriteAnimator(animator, *fighter->throwFrames, fighter->THROW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        }
        else if (fighter->pad & JAGPAD_C && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping && !fighter->IsClose || fighter->IsLowPunching)
        {
            if (!fighter->IsLowPunching && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsLowPunching = true;
                fighter->IsAttacking = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }
            else if (animationIsComplete(animator, fighter->LOW_PUNCH_FRAME_COUNT))
            {
                fighter->IsLowPunching = false;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameLowPunch);
            updateSpriteAnimator(animator, *fighter->punchLowFrames, fighter->LOW_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        }        
        else if ((fighter->pad & JAGPAD_LEFT && fighter->pad & JAGPAD_DOWN && fighter->direction == 1 || fighter->pad & JAGPAD_RIGHT && fighter->pad & JAGPAD_DOWN && fighter->direction == -1) && fighter->pad & JAGPAD_A && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping || fighter->IsSweeping)
        {
            if (!fighter->IsSweeping && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsAttacking = true;
                fighter->IsSweeping = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }
            else if (animationIsComplete(animator, fighter->SWEEP_FRAME_COUNT))
            {
                fighter->IsSweeping = false;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameSweep);
            updateSpriteAnimator(animator, *fighter->sweepFrames, fighter->SWEEP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        }
        else if ((fighter->pad & JAGPAD_LEFT && fighter->direction == 1 || fighter->pad & JAGPAD_RIGHT && fighter->direction == -1) && fighter->pad & JAGPAD_A && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping || fighter->IsRoundhousing)
        {
            if (!fighter->IsRoundhousing && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsAttacking = true;
                fighter->IsRoundhousing = true;
                animator->currentFrame = 0;
                sfxSwing(fighter->soundHandler);
            }
            else if (animationIsComplete(animator, fighter->ROUNDHOUSE_FRAME_COUNT))
            {
                fighter->IsRoundhousing = false;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameRoundhouse);
            updateSpriteAnimator(animator, *fighter->roundhouseFrames, fighter->ROUNDHOUSE_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);            
        }
        else if ((fighter->pad & JAGPAD_7 || (fighter->pad & JAGPAD_A && (fighter->pad & JAGPAD_RIGHT && fighter->direction == 1 || fighter->pad & JAGPAD_LEFT && fighter->direction == -1))) && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping && !fighter->IsDucking && !fighter->IsPushing || fighter->IsHighKicking)
        {
            if (!fighter->IsHighKicking && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsHighKicking = true;
                fighter->IsAttacking = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }
            else if (animationIsComplete(animator, fighter->HIGH_KICK_FRAME_COUNT))
            {
                fighter->IsHighKicking = false;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameHighKick);
            updateSpriteAnimator(animator, *fighter->kickHighFrames, fighter->HIGH_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
            
        }
        else if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_7) && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping && !fighter->IsDucking && fighter->IsClose || fighter->IsBodyKicking)
        {
            if (!fighter->IsBodyKicking && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsBodyKicking = true;
                fighter->IsAttacking = true;
                animator->currentFrame = 0;                
            }
            else if (animationIsComplete(animator, fighter->BODY_KICK_FRAME_COUNT))
            {
                fighter->IsBodyKicking = false;
                fighter->AcceptingInput = true;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameBodyKick);
            updateSpriteAnimator(animator, *fighter->bodyKickFrames, fighter->BODY_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);            
        }
        else if (fighter->pad & JAGPAD_A && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping && !fighter->IsDucking && !fighter->IsPushing || fighter->IsLowKicking)
        {
            if (!fighter->IsLowKicking && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsLowKicking = true;
                fighter->IsAttacking = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }
            else if (animationIsComplete(animator, fighter->LOW_KICK_FRAME_COUNT))
            {
                fighter->IsLowKicking = false;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameLowKick);
            updateSpriteAnimator(animator, *fighter->kickLowFrames, fighter->LOW_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);            
        }
        else if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_7) && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping && fighter->IsDucking || fighter->IsDuckKicking)
        {
            if (!fighter->IsDuckKicking && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsDuckKicking = true;
                fighter->IsAttacking = true;
                animator->currentFrame = 0;
                sfxSwing(fighter->soundHandler);
            }
            else if (animationIsComplete(animator, fighter->DUCK_KICK_FRAME_COUNT))
            {
                fighter->IsDuckKicking = false;
                fighter->AcceptingInput = true;
                fighter->IsDucking = true;
                animator->currentFrame = 1;
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameDuckKick);
            updateSpriteAnimator(animator, *fighter->duckKickFrames, fighter->DUCK_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);            
        }
        else if (fighter->pad & JAGPAD_B && !fighter->IsJumping && fighter->AcceptingInput)
        {
            if (!fighter->IsBlocking)
            {
                fighter->IsBlocking = true;
                animator->currentFrame = 0;
            }

            if (fighter->pad & JAGPAD_DOWN && fighter->AcceptingInput)
            {
                if (!fighter->IsDucking)
                {
                    fighter->IsDucking = true;
                    fighter->IsWalking = false;
                    animator->currentFrame = 0;
                }

                if (!fighter->IsBlockingHit)
                {
                    updateSpriteAnimator(animator, *fighter->blockDuckFrames, fighter->BLOCK_DUCK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else
                {
                    updateSpriteAnimator(animator, *fighter->blockDuckHitFrames, fighter->BLOCK_DUCK_HIT_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

                    if (animationIsComplete(animator, fighter->BLOCK_DUCK_HIT_FRAME_COUNT))
                    {
                        fighter->IsBlockingHit = false;
                    }
                }
            }
            else
            {
                if (fighter->IsDucking)
                {
                    fighter->IsDucking = false;
                    //sprite[fighter->HB_BODY].active = R_is_active;
                }
                
                if (!fighter->IsBlockingHit)
                {
                    updateSpriteAnimator(animator, *fighter->blockFrames, fighter->BLOCK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else
                {
                    updateSpriteAnimator(animator, *fighter->blockHitFrames, fighter->BLOCK_HIT_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

                    if (animationIsComplete(animator, fighter->BLOCK_HIT_FRAME_COUNT))
                    {
                        fighter->IsBlockingHit = false;
                    }
                }
            }
        }
        else if (((fighter->pad & JAGPAD_UP && fighter->pad & JAGPAD_RIGHT && fighter->direction == 1) ||
                (fighter->pad & JAGPAD_UP && fighter->pad & JAGPAD_LEFT && fighter->direction == -1))
                && fighter->DPadReleased && fighter->AcceptingInput || fighter->IsJumpingRollForward)
        {
            if (!fighter->IsJumpingRollForward && fighter->DPadReleased)
            {
                fighter->AcceptingInput = false;
                fighter->airAttackPerformed = false;
                fighter->DPadReleased = false;
                fighter->IsJumpingRollForward = true;
                animator->currentFrame = 0;
                fighter->momentumY = fighter->jumpMomentumYStart;
                fighter->JumpLanded = false;
                fighter->JumpRollTicks = rapTicks;
                fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
            }

            if ((fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_9) && fighter->IsJumpingRollForward && !fighter->JumpLanded && !fighter->airAttackPerformed && !fighter->IsJumpDropKicking || fighter->IsJumpPunching && !fighter->JumpLanded && fighter->IsJumpingRollForward && !fighter->IsJumpDropKicking)
            {
                if (!fighter->IsJumpPunching)
                {
                    fighter->ButtonReleased = false;
                    fighter->airAttackPerformed = true;
                    fighter->IsJumpPunching = true;
                    fighter->IsAttacking = true;
                    animator->currentFrame = 0;
                    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                    sfxSwing(fighter->soundHandler);
                }

                if (!fighter->MadeContact)
                {
                    updateSpriteAnimator(animator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }

                if (fighter->MadeContact && rapTicks < fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    animateFrame(fighter->spriteIndex, 2, *fighter->jumpPunchFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->MadeContact && rapTicks >= fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    fighter->MadeContact = false;
                    fighter->IsJumpPunching = false;
                }

                impactFrameUpdate(animator, fighter, fighter->impactFrameJumpPunch);
            }

            if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_7) && fighter->IsJumpingRollForward && !fighter->JumpLanded && !fighter->airAttackPerformed && !fighter->IsJumpPunching || fighter->IsJumpDropKicking && !fighter->JumpLanded && fighter->IsJumpingRollForward && !fighter->IsJumpPunching)
            {
                if (!fighter->IsJumpDropKicking)
                {
                    fighter->ButtonReleased = false;
                    fighter->airAttackPerformed = true;
                    fighter->IsJumpDropKicking = true;
                    fighter->IsAttacking = true;
                    animator->currentFrame = 0;
                    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                    sfxSwing(fighter->soundHandler);
                }

                if (!fighter->MadeContact)
                {
                    updateSpriteAnimator(animator, *fighter->jumpDropKickFrames, fighter->JUMP_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }

                if (fighter->MadeContact && rapTicks < fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    animateFrame(fighter->spriteIndex, 2, *fighter->jumpDropKickFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->MadeContact && rapTicks >= fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    fighter->MadeContact = false;
                    fighter->IsJumpDropKicking = false;
                }
                
                impactFrameUpdate(animator, fighter, fighter->impactFrameJumpKick);
            }
            
            if (animator->currentFrame == 0 && !fighter->IsJumpPunching && !fighter->IsJumpDropKicking)
            {
                updateSpriteAnimator(animator, *fighter->jumpRollFrames, fighter->JUMP_ROLL_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->IsJumpingRollForward)
            {
                if (!fighter->JumpLanded)
                {
                    if (rapTicks >= fighter->lastTicks + 1)
                    {
                        if (!fighter->PlayedJumpRoll && rapTicks > fighter->JumpRollTicks + 10 && !fighter->IsJumpPunching && !fighter->IsJumpDropKicking)
                        {
                            sfxJumpRoll(fighter->soundHandler, fighter->isPlayer1);
                            fighter->PlayedJumpRoll = true;
                        }

                        if (!fighter->MadeContact)
                        {
                            fighterPositionXAdd(fighter, fighter->playerJumpXSpeed * fighter->direction);
                            fighter->positionY += fighter->momentumY;                            
                            fighter->momentumY += fighter->gravity;
                        }

                        if (!fighter->IsJumpPunching && !fighter->IsJumpDropKicking)
                        {
                            updateSpriteAnimator(animator, *fighter->jumpRollFrames, fighter->JUMP_ROLL_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
                        }
                    }
                }

                if (fighter->momentumY > 0 && fighter->positionY >= FLOOR_LOCATION_Y_FIGHTER)
                {
                    //landed
                    impactFrameReset(fighter);
                    fighter->IsJumpPunching = false;
                    fighter->IsJumpKicking = false;
                    fighter->IsJumpDropKicking = false;
                    fighter->JumpLanded = true;
                    fighter->momentumY = 0.0f;
                    fighterSetOnFloor(fighter);
                }
                else if (fighter->JumpLanded)
                {
                    updateSpriteAnimator(animator, *fighter->jumpFrames, fighter->JUMP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                    
                    if (animationIsComplete(animator, fighter->JUMP_FRAME_COUNT))
                    {
                        fighter->AcceptingInput = true;
                        fighter->IsJumpingRollForward = false;
                        fighter->IsJumpPunching = false;
                        fighter->IsJumpKicking = false;
                        fighter->IsJumpDropKicking = false;
                        fighter->PlayedJumpRoll = false;
                        impactFrameReset(fighter);
                    }
                }
            }
        }
        else if (((fighter->pad & JAGPAD_UP && fighter->pad & JAGPAD_LEFT && fighter->direction == 1) ||
                (fighter->pad & JAGPAD_UP && fighter->pad & JAGPAD_RIGHT && fighter->direction == -1))
                && fighter->DPadReleased && fighter->AcceptingInput || fighter->IsJumpingRollBackward)
        {
            if (!fighter->IsJumpingRollBackward && fighter->DPadReleased)
            {
                fighter->AcceptingInput = false;
                fighter->airAttackPerformed = false;
                fighter->DPadReleased = false;
                fighter->IsJumpingRollBackward = true;
                animator->currentFrame = 0;
                fighter->momentumY = fighter->jumpMomentumYStart;
                fighter->JumpLanded = false;
                fighter->JumpRollTicks = rapTicks;
                fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
            }

            if ((fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_9) && fighter->IsJumpingRollBackward && !fighter->JumpLanded && !fighter->airAttackPerformed && !fighter->IsJumpDropKicking || fighter->IsJumpPunching && !fighter->JumpLanded && fighter->IsJumpingRollBackward && !fighter->IsJumpDropKicking)
            {
                if (!fighter->IsJumpPunching)
                {
                    fighter->ButtonReleased = false;
                    fighter->airAttackPerformed = true;
                    fighter->IsJumpPunching = true;
                    fighter->IsAttacking = true;
                    animator->currentFrame = 0;
                    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                    sfxSwing(fighter->soundHandler);
                }

                if (!fighter->MadeContact)
                {
                    updateSpriteAnimator(animator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }

                if (fighter->MadeContact && rapTicks < fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    animateFrame(fighter->spriteIndex, 2, *fighter->jumpPunchFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->MadeContact && rapTicks >= fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    fighter->MadeContact = false;
                    fighter->IsJumpDropKicking = false;
                }

                impactFrameUpdate(animator, fighter, fighter->impactFrameJumpPunch);
            }

            if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_7) && fighter->IsJumpingRollBackward && !fighter->JumpLanded && !fighter->airAttackPerformed && !fighter->IsJumpPunching || fighter->IsJumpDropKicking && !fighter->JumpLanded && fighter->IsJumpingRollBackward && !fighter->IsJumpPunching)
            {
                if (!fighter->IsJumpDropKicking)
                {
                    fighter->ButtonReleased = false;
                    fighter->airAttackPerformed = true;
                    fighter->IsJumpDropKicking = true;
                    fighter->IsAttacking = true;
                    animator->currentFrame = 0;
                    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                    sfxSwing(fighter->soundHandler);
                }

                if (!fighter->MadeContact)
                {
                    updateSpriteAnimator(animator, *fighter->jumpDropKickFrames, fighter->JUMP_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }

                if (fighter->MadeContact && rapTicks < fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    animateFrame(fighter->spriteIndex, 2, *fighter->jumpDropKickFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->MadeContact && rapTicks >= fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    fighter->MadeContact = false;
                    fighter->IsJumpDropKicking = false;
                }

                impactFrameUpdate(animator, fighter, fighter->impactFrameJumpKick);
            }

            if (animator->currentFrame == 0 && !fighter->IsJumpPunching && !fighter->IsJumpDropKicking)
            {
                updateSpriteAnimator(animator, *fighter->jumpRollFrames, fighter->JUMP_ROLL_FRAME_COUNT, false, true, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->IsJumpingRollBackward)
            {
                if (!fighter->JumpLanded)
                {
                    if (rapTicks >= fighter->lastTicks + 1)
                    {
                        if (!fighter->PlayedJumpRoll && rapTicks > fighter->JumpRollTicks + 10 && !fighter->IsJumpPunching && !fighter->IsJumpDropKicking)
                        {
                            sfxJumpRoll(fighter->soundHandler, fighter->isPlayer1);
                            fighter->PlayedJumpRoll = true;
                        }

                        if (!fighter->MadeContact)
                        {
                            fighterPositionXAdd(fighter, -1 * fighter->playerJumpXSpeed * fighter->direction);
                            fighter->positionY += fighter->momentumY;
                            fighter->momentumY += fighter->gravity;
                        }

                        if (!fighter->IsJumpPunching && !fighter->IsJumpDropKicking)
                        {
                            updateSpriteAnimator(animator, *fighter->jumpRollFrames, fighter->JUMP_ROLL_FRAME_COUNT, false, true, fighter->positionX, fighter->positionY, fighter->direction);
                        }
                    }
                }

                if (fighter->momentumY > 0 && fighter->positionY >= FLOOR_LOCATION_Y_FIGHTER)
                {
                    //landed
                    impactFrameReset(fighter);
                    fighter->IsJumpPunching = false;
                    fighter->IsJumpKicking = false;
                    fighter->IsJumpDropKicking = false;
                    fighter->JumpLanded = true;
                    fighter->momentumY = 0.0f;
                    fighterSetOnFloor(fighter);
                }
                else if (fighter->JumpLanded)
                {
                    updateSpriteAnimator(animator, *fighter->jumpFrames, fighter->JUMP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                    
                    if (animationIsComplete(animator, fighter->JUMP_FRAME_COUNT))
                    {
                        fighter->AcceptingInput = true;
                        fighter->IsJumpingRollBackward = false;
                        fighter->IsJumpPunching = false;
                        fighter->IsJumpKicking = false;
                        fighter->IsJumpDropKicking = false;
                        fighter->PlayedJumpRoll = false;
                        impactFrameReset(fighter);
                    }
                }
            }
        }
        else if(fighter->pad & JAGPAD_LEFT && fighter->AcceptingInput && !fighter->IsJumping)
        {
            if (!fighter->IsWalking)
            {
                animator->currentFrame = 0;
            }

            updateSpriteAnimator(animator, *fighter->walkFrames, fighter->WALK_FRAME_COUNT, walkForward, true, fighter->positionX, fighter->positionY, fighter->direction);
            fighter->IsWalking = true;
            fighter->IsDucking = false;
            fighter->IsDuckKicking = false;
            fighter->IsBlocking  = false;
            fighter->IsAttacking = false;
            fighter->IsLowPunching = false;
            fighter->IsHighPunching = false;

            if (fighter->positionX > 0)
            {
                if (!fighter->IsPushing)
                {
                    float speed = fighter->playerMoveBackwardSpeed;

                    if (fighter->direction == -1)
                    {
                        speed = fighter->playerMoveForwardSpeed;
                    }

                    fighterPositionXAdd(fighter, -1 * speed * delta);
                }
                else if (cameraCanMove())
                {
                    fighterPositionXAdd(fighter, -1 * fighter->playerPushSpeed * delta);
                }
            }

            // if (fighter->direction == -1)
            // {
            //     //player 2, so we have to factor the idleFrameWidth into the offset
            //     //fighter->positionX += (*fighter->walkFrames[animator->currentFrame]).width - animator->idleFrameWidth;
            //     fighterPositionXAdd(fighter, getAnimationFrameWidth(*fighter->walkFrames, animator->currentFrame) - animator->idleFrameWidth);
            // }
        }
        else if(fighter->pad & JAGPAD_RIGHT && fighter->AcceptingInput && !fighter->IsJumping)
        {
            if (!fighter->IsWalking)
            {
                animator->currentFrame = 0;
            }
            
            updateSpriteAnimator(animator, *fighter->walkFrames, fighter->WALK_FRAME_COUNT, !walkForward, true, fighter->positionX, fighter->positionY, fighter->direction);
            fighter->IsWalking = true;
            fighter->IsDucking = false;
            fighter->IsDuckKicking = false;
            fighter->IsBlocking  = false;
            fighter->IsAttacking = false;
            fighter->IsLowPunching = false;
            fighter->IsHighPunching = false;
            
            if (fighter->positionX < CAMERA_BOUND_RIGHT - FIGHTER_WIDTH)
            {
                if (!fighter->IsPushing)
                {
                    float speed = fighter->playerMoveForwardSpeed;

                    if (fighter->direction == -1)
                    {
                        speed = fighter->playerMoveBackwardSpeed;
                    }

                    fighterPositionXAdd(fighter, speed * delta);
                }
                else
                {
                    fighterPositionXAdd(fighter, fighter->playerPushSpeed * delta);
                }
            }

            // if (fighter->direction == -1)
            // {
            //     //player 2, so we have to factor the idleFrameWidth into the offset
            //     //fighter->positionX += (*fighter->walkFrames[animator->currentFrame]).width - animator->idleFrameWidth;
            //     fighterPositionXAdd(fighter, getAnimationFrameWidth(*fighter->walkFrames, animator->currentFrame) - animator->idleFrameWidth);
            // }
        }
        else if (fighter->pad & JAGPAD_DOWN && fighter->AcceptingInput && !fighter->IsJumping)
        {
            if (!fighter->IsDucking)
            {
                fighter->IsDucking = true;
                fighter->IsWalking = false;
                fighter->IsAttacking = false;
                animator->currentFrame = 0;
            }
            updateSpriteAnimator(animator, *fighter->duckFrames, fighter->DUCK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        }        
        else if (fighter->pad & JAGPAD_UP && fighter->DPadReleased || fighter->IsJumping)
        {
            if (!fighter->IsJumping && fighter->DPadReleased)
            {
                fighter->DPadReleased = false;
                fighter->airAttackPerformed = false;
                fighter->IsJumping = true;
                animator->currentFrame = 0;
                fighter->momentumY = fighter->jumpMomentumYStart;
                fighter->JumpLanded = false;
                fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
            }

            if ((fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_9) && fighter->IsJumping && !fighter->JumpLanded && !fighter->airAttackPerformed && !fighter->IsJumpKicking || fighter->IsJumpPunching && !fighter->JumpLanded && fighter->IsJumping && !fighter->IsJumpKicking)
            {
                if (!fighter->IsJumpPunching)
                {
                    fighter->ButtonReleased = false;
                    fighter->airAttackPerformed = true;
                    fighter->IsAttacking = true;
                    fighter->IsJumpPunching = true;
                    animator->currentFrame = 0;
                    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                    sfxSwing(fighter->soundHandler);
                }

                if (!fighter->MadeContact)
                {
                    updateSpriteAnimator(animator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }

                if (fighter->MadeContact && rapTicks < fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    animateFrame(fighter->spriteIndex, 2, *fighter->jumpPunchFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->MadeContact && rapTicks >= fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    fighter->MadeContact = false;
                    fighter->IsJumpPunching = false;
                }

                impactFrameUpdate(animator, fighter, fighter->impactFrameJumpPunch);
            }

            if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_7) && fighter->IsJumping && !fighter->JumpLanded && !fighter->airAttackPerformed && !fighter->IsJumpPunching || fighter->IsJumpKicking && !fighter->JumpLanded && fighter->IsJumping && !fighter->IsJumpPunching)
            {
                if (!fighter->IsJumpKicking)
                {
                    fighter->ButtonReleased = false;
                    fighter->airAttackPerformed = true;
                    fighter->IsJumpKicking = true;
                    fighter->IsAttacking = true;
                    animator->currentFrame = 0;
                    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                    sfxSwing(fighter->soundHandler);
                }

                if (!fighter->MadeContact)
                {
                    updateSpriteAnimator(animator, *fighter->jumpKickFrames, fighter->JUMP_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }

                if (fighter->MadeContact && rapTicks < fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    animateFrame(fighter->spriteIndex, 2, *fighter->jumpKickFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->MadeContact && rapTicks >= fighter->lastTicks + fighter->CooldownTicksImpact)
                {
                    fighter->MadeContact = false;
                    fighter->IsJumpKicking = false;
                }

                impactFrameUpdate(animator, fighter, fighter->impactFrameJumpKick);
            }

            if (animator->currentFrame == 0 && !fighter->IsJumpPunching && !fighter->IsJumpKicking)
            {
                updateSpriteAnimator(animator, *fighter->jumpFrames, fighter->JUMP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->IsJumping)
            {
                if (!fighter->JumpLanded)
                {
                    if (rapTicks >= fighter->lastTicks + 1 && !fighter->MadeContact)
                    {
                        fighter->positionY += fighter->momentumY;
                        fighter->momentumY += fighter->gravity;
                        fighter->lastTicks = rapTicks;
                    }

                    if (!fighter->IsJumpPunching && !fighter->IsJumpKicking)
                    {
                        animator->currentFrame = 1;
                        animateFrame(fighter->spriteIndex, animator->currentFrame, *fighter->jumpFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                    }
                }

                if (fighter->momentumY > 0 && fighter->positionY >= FLOOR_LOCATION_Y_FIGHTER)
                {
                    //landed
                    impactFrameReset(fighter);
                    fighter->IsJumpPunching = false;
                    fighter->IsJumpKicking = false;
                    fighter->JumpLanded = true;
                    fighter->momentumY = 0.0f;
                    fighterSetOnFloor(fighter);
                }
                else if (fighter->JumpLanded)
                {
                    if (animationIsComplete(animator, fighter->JUMP_FRAME_COUNT))
                    {
                        fighter->AcceptingInput = true;
                        fighter->IsJumping = false;
                        fighter->IsJumpPunching = false;
                        fighter->IsJumpKicking = false;
                        impactFrameReset(fighter);
                    }

                    updateSpriteAnimator(animator, *fighter->jumpFrames, fighter->JUMP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                }
            }
        }
        else
        {
            if (fighter->IsDucking)
            {
                updateSpriteAnimator(animator, *fighter->duckFrames, fighter->DUCK_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);
                
                if (animator->currentFrame == 0)
                {
                    fighter->IsDucking = false;
                    //sprite[fighter->HB_BODY].active = R_is_active;
                }
            }
            else if (fighter->IsBlocking)
            {
                updateSpriteAnimator(animator, *fighter->blockFrames, fighter->BLOCK_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);
                
                if (animator->currentFrame == 0)
                {
                    fighter->IsBlocking = false;
                }
            }
            else
            {
                if (fighter->IsWalking)
                {
                    fighter->IsPushing = false;
                    fighter->IsWalking = false;
                    animator->currentFrame = 0;
                    impactFrameReset(fighter);
                }

                if (!fighter->IsIdle)
                {
                    fighter->IsIdle = true;
                    fighter->IsAttacking = false;
                }

                updateSpriteAnimator(animator, *fighter->idleFrames, fighter->IDLE_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
            
            //fighter->positionX = sprite[fighter->spriteIndex].x_;
            //fighter->positionY = sprite[fighter->spriteIndex].y_;
            }
        }

        if (!(fighter->pad & JAGPAD_C)
            && !(fighter->pad & JAGPAD_9)
            && !(fighter->pad & JAGPAD_A)
            && !(fighter->pad & JAGPAD_7))
        {
            fighter->ButtonReleased = true;
        }

        if (!(fighter->pad & JAGPAD_UP)
            && !(fighter->pad & JAGPAD_DOWN)
            && !(fighter->pad & JAGPAD_LEFT)
            && !(fighter->pad & JAGPAD_RIGHT))
        {
            fighter->DPadReleased = true;
        }
    }
}

void fighterPlayHiya(int fighter, struct SoundHandler* soundHandler, bool isPlayer1)
{
    switch (fighter)
    {
        case SONYA:
            sfxHiyaFemale(soundHandler, isPlayer1);
            break;
        case SUBZERO:
            sfxHiyaNinja(soundHandler, isPlayer1);
            break;
        case KANG:
            sfxHiyaKang(soundHandler, isPlayer1);
            break;
        default:
            sfxHiyaMale(soundHandler, isPlayer1);
    }
}

void fighterPlayGroan(int fighter, struct SoundHandler* soundHandler, bool isPlayer1)
{
    switch (fighter)
    {
        case SONYA:
            sfxGroanFemale(soundHandler, isPlayer1);
            break;
        default:
            sfxGroanMale(soundHandler, isPlayer1);
    }
}

void fighterPlayYell(int fighter, struct SoundHandler* soundHandler, bool isPlayer1)
{
    switch (fighter)
    {
        case SONYA:
            sfxYellFemale(soundHandler, isPlayer1);
            break;
        case KANG:
            sfxYellKang(soundHandler, isPlayer1);
            break;
        default:
            sfxYellMale(soundHandler, isPlayer1);
    }
}

void fighterPlayJump(int fighter, struct SoundHandler* soundHandler, bool isPlayer1)
{
    switch (fighter)
    {
        case SONYA:
            sfxJumpFemale(soundHandler, isPlayer1);
            break;
        case SUBZERO:
        case SCORPION:
            sfxJumpNinja(soundHandler, isPlayer1);
            break;
        default:
            sfxJumpMale(soundHandler, isPlayer1);
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
}

void fighterResetFlags(struct Fighter* fighter)
{
    sprite[fighter->HB_ATTACK].was_hit = -1;
    sprite[fighter->spriteIndex].was_hit = -1;
    fighter->IsWinner = false;
    fighter->IsWalking = false;
    fighter->IsAttacking = false;
    fighter->IsTurning = false;
    fighter->IsJumping = false;
    fighter->IsJumpingRollForward = false;
    fighter->IsJumpingRollBackward = false;
    fighter->IsDucking = false;
    fighter->IsBlocking = false;
    fighter->IsBlockingHit = false;
    fighter->IsLowPunching = false;
    fighter->IsHighPunching = false;
    fighter->IsLowKicking = false;
    fighter->IsHighKicking = false;
    fighter->IsJumpPunching = false;
    fighter->IsJumpDropKicking = false;
    fighter->IsJumpKicking = false;
    fighter->IsUppercutting = false;
    fighter->airAttackPerformed = false;
    fighter->IsSweeping = false;
    fighter->IsRoundhousing = false;
    fighter->IsBodyPunching = false;
    fighter->IsBodyKicking = false;
    fighter->IsDuckKicking = false;
    fighter->IsThrowing = false;
    fighter->IsBeingThrown = false;
    fighter->IsBeingThrownInAir = false;
    fighter->IsBeingThrownLow = false;
    fighter->IsHitLow = false;
    fighter->IsHitHigh = false;
    fighter->IsHitBack = false;
    fighter->IsHitBackLow = false;
    fighter->IsHitBackHigh = false;
    fighter->IsHitBackLight = false;
    fighter->IsHitBackLightKano = false;
    fighter->IsHitFall = false;
    fighter->IsHitBodyKick = false;
    fighter->IsMidAir = false;
    fighter->IsFalling = false;
    fighter->IsLayingDown = false;
    fighter->IsGettingUp = false;
    fighter->IsBeingDamaged = false;
    fighter->IsPushing = false;
    fighter->IsDefeated = false;
    fighter->IsBeingPushed = false;
    fighter->DoBlockSequence = false;
    fighter->DoWinSequence = false;
    fighter->DoThrowSequence = false;
    fighter->MadeContactUppercut = false;
    fighter->MadeContact = false;
    fighter->JumpLanded = false;
    fighter->PlayedJumpRoll = false;
    fighter->shakeScreen = false;
    fighter->justTurned = false;
    fighter->changedDirection = false;
    fighter->hasRoomToMove = true;
}

void fighterImpactCheck(struct Fighter* fighter1, struct Fighter* fighter2)
{
    // if (fighter1->IsBeingThrown || fighter2->IsBeingThrown)
    // {
    //     sprite[fighter1->spriteIndex].colchk = R_cant_hit;   
    //     sprite[fighter2->spriteIndex].colchk = R_cant_hit;
    // }
    // else
    // {
    //     sprite[fighter1->spriteIndex].colchk = R_can_hit;   
    //     sprite[fighter2->spriteIndex].colchk = R_can_hit;
    // }

    if (fighter1->IsPushing && sprite[fighter2->spriteIndex].was_hit == -1)
    {
        fighter1->IsPushing = false;
    }

    if (fighter2->IsPushing && sprite[fighter1->spriteIndex].was_hit == -1)
    {
        fighter2->IsPushing = false;
    }

    collision = rapCollide(18, 21, 18, 21);

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

                sprite[collisionSprIndex].was_hit = -1;
                sprite[collisionSprIndex2].was_hit = -1;

                if (collisionSprIndex == P1_HB_ATTACK && collisionSprIndex2 == P2_FIGHTER_PIT)
                {
                    fighterHandleImpact(fighter1, fighter2);
                }

                if (collisionSprIndex == P1_FIGHTER_PIT && collisionSprIndex2 == P2_FIGHTER_PIT)
                {
                    if (fighter1->IsWalking && fighter1->positionX > CAMERA_BOUND_LEFT && fighter1->positionX < CAMERA_BOUND_RIGHT && fighter2->positionX > CAMERA_BOUND_LEFT && fighter2->positionX < CAMERA_BOUND_RIGHT)
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
                
                if (fighter2->IsBeingPushed && (!collisionSprIndex == P1_FIGHTER_PIT && collisionSprIndex2 == P2_FIGHTER_PIT))
                {
                    fighter2->IsBeingPushed = false;
                }

                if (collisionSprIndex == P2_HB_ATTACK && collisionSprIndex2 == P1_FIGHTER_PIT)
                {
                    fighterHandleImpact(fighter2, fighter1);
                }

                if (collisionSprIndex == P2_FIGHTER_PIT && collisionSprIndex2 == P1_FIGHTER_PIT)
                {
                    if (fighter2->IsWalking)
                    {
                        fighter2->IsPushing = true;
                        fighter1->IsBeingPushed = true;
                        fighter1->touchTicks = rapTicks;
                    }
                }
                
                if (fighter1->IsBeingPushed && (!collisionSprIndex == P2_FIGHTER_PIT && collisionSprIndex2 == P1_FIGHTER_PIT))
                {
                    fighter1->IsBeingPushed = false;
                }
            }
            i++;
        }
    }
}

void fighterHandleImpact(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (!fighter2->IsBeingDamaged && !fighter2->IsBlocking || fighter2->IsDizzy)
    {
        if (fighter1->IsLowPunching && !fighter2->IsDucking)
        {
            fighter2->IsHitLow = true;
            fighterAddPendingDamage(fighter2, DMG_LP, false);
        }
        else if (fighter1->IsHighPunching && !fighter2->IsDucking)
        {
            fighter2->IsHitHigh = true;
            fighterAddPendingDamage(fighter2, DMG_HP, false);
        }
        else if (fighter1->IsLowKicking && !fighter2->IsDucking)
        {
            fighter2->IsHitLow = true;
            fighterAddPendingDamage(fighter2, DMG_LK, false);
        }
        else if (fighter1->IsHighKicking && !fighter2->IsDucking)
        {
            fighter2->IsHitBack = true;
            fighterAddPendingDamage(fighter2, DMG_HK, false);
        }
        else if (fighter1->IsRoundhousing && !fighter2->IsDucking)
        {
            fighter2->IsHitBack = true;
            fighterAddPendingDamage(fighter2, DMG_ROUNDHOUSE, true);
        }
        else if (fighter1->IsBodyPunching && !fighter2->IsDucking)
        {
            fighter2->IsHitBackLight = true;

            if (fighter1->fighterIndex == KANO)
            {
                fighter2->IsHitBackLightKano = true;
            }

            fighterAddPendingDamage(fighter2, DMG_BODY_PUNCH, true);
        }
        else if (fighter1->IsJumpPunching)
        {
            fighter2->IsHitBackHigh = true;
            fighter1->AcceptingInput = false;
            fighter1->MadeContact = true;
            fighter1->lastTicks = rapTicks;
            fighterAddPendingDamage(fighter2, DMG_JUMPPUNCH, true);
        }
        else if (fighter1->IsJumpKicking)
        {
            fighter2->IsHitBackHigh = true;
            fighter1->AcceptingInput = false;
            fighter1->MadeContact = true;
            fighter1->lastTicks = rapTicks;
            fighterAddPendingDamage(fighter2, DMG_JUMPKICK, false);
        }
        else if (fighter1->IsUppercutting)
        {
            fighter2->IsHitFall = true;
            fighter1->AcceptingInput = false;
            fighter1->MadeContactUppercut = true;
            fighter1->lastTicks = rapTicks;
            fighterAddPendingDamage(fighter2, DMG_UPPERCUT, false);
        }
        else if (fighter1->IsJumpDropKicking)
        {
            fighter2->IsHitDropKick = true;
            fighter1->AcceptingInput = false;
            fighter1->MadeContact = true;
            fighter1->lastTicks = rapTicks;
            fighterAddPendingDamage(fighter2, DMG_DROPKICK, false);
        }
        else if (fighter1->IsBodyKicking)
        {
            fighter2->IsHitBodyKick = true;
            fighter1->AcceptingInput = false;
            fighter1->MadeContact = true;
            fighter1->lastTicks = rapTicks;
            fighterAddPendingDamage(fighter2, DMG_BODY_KICK, false);
        }
    }
    else if (!fighter2->IsBeingDamaged && fighter2->IsBlocking)
    {
        fighter2->IsBlockingHit = true;
        fighter2->DoBlockSequence = true;
        fighter2->lastTicks = rapTicks;
    }

    if (!fighter2->IsBeingDamaged && !(fighter2->IsBlocking && fighter2->IsDucking))
    {
        if (fighter1->IsSweeping)
        {
            fighter2->IsHitSweep = true;
            fighterAddPendingDamage(fighter2, DMG_SWEEP, false);
        }
        else if (fighter1->IsDuckKicking)
        {
            fighter2->IsHitBackLow = true;
            fighter1->AcceptingInput = false;
            fighter1->lastTicks = rapTicks;
            fighterAddPendingDamage(fighter2, DMG_DUCK_KICK, false);
        }
    }
    else if (!fighter2->IsBeingDamaged && fighter2->IsBlocking && fighter2->IsDucking)
    {
        fighter2->IsBlockingHit = true;
        fighter2->DoBlockSequence = true;
        fighter2->lastTicks = rapTicks;
    }
    
    if (!fighter2->IsBeingDamaged && fighter1->IsThrowing)
    {
        fighter2->ThrowX = fighter1->positionX;
        fighter2->ThrowY = fighter1->positionY;
        
        switch (fighter1->fighterIndex)
        {
            case SONYA:
            case SCORPION:
            case SUBZERO:
                fighter2->IsBeingThrownLow = true;
                break;
            default:
                fighter2->IsBeingThrownLow = false;
                break;
        }

        fighter2->DoThrowSequence = true;        
        fighter1->AcceptingInput = false;
        fighter1->lastTicks = rapTicks;
    }
}

void fighterTurnCheck(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (fighter1->direction == 1
        && fighter1->positionX > fighter2->positionX + turnOffset
        && !fighter1->IsTurning)
    {
        fighter1->changedDirection = false;
        fighter1->IsTurning = true;
        fighter1->justTurned = true;
    }

    if (fighter1->direction == -1
        && fighter1->positionX + turnOffset < fighter2->positionX
        && !fighter1->IsTurning)
    {
        fighter1->changedDirection = false;
        fighter1->IsTurning = true;
        fighter1->justTurned = true;
    }

    if (fighter2->direction == 1
        && fighter2->positionX > fighter1->positionX + turnOffset
        && !fighter2->IsTurning)
    {
        fighter2->changedDirection = false;
        fighter2->IsTurning = true;
        fighter2->justTurned = true;
    }

    if (fighter2->direction == -1
        && fighter2->positionX + turnOffset < fighter1->positionX
        && !fighter2->IsTurning)
    {
        fighter2->changedDirection = false;
        fighter2->IsTurning = true;
        fighter2->justTurned = true;
    }
}

void fighterCloseCheck(struct Fighter* fighter1, struct Fighter* fighter2)
{
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
    sprite[P1_HEALTHBAR].scale_x = fighter1->hitPoints;
	sprite[P2_HEALTHBAR].scale_x = fighter2->hitPoints;
	sprite[P2_HEALTHBAR].x_ = 176 + ((MAX_HEALTH - fighter2->hitPoints) * 4);
}

void fighterAddPendingDamage(struct Fighter* fighter, int damage, bool shakeScreen)
{
    fighter->pendingDamage = damage;
    fighter->shakeScreen = shakeScreen;
}

void fighterTakeDamage(struct Fighter* fighter, int damage, int sleepTicks)
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

    if (fighter->isPlayer1)
    {
        sprite[P1_HEALTHBAR].scale_x = fighter->hitPoints;
    }
    else
    {
        sprite[P2_HEALTHBAR].scale_x = fighter->hitPoints;
        sprite[P2_HEALTHBAR].x_ = 176 + ((MAX_HEALTH - fighter->hitPoints) * 4);
    }

    sleepAdd(sleepTicks);
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

    bool changed = false;

    if (sprite[fighter->spriteIndex].x_ < CAMERA_BOUND_LEFT)
    {
        sprite[fighter->spriteIndex].x_ = CAMERA_BOUND_LEFT;
        changed = true;
    }
    else if (sprite[fighter->spriteIndex].x_ + FIGHTER_WIDTH > CAMERA_BOUND_RIGHT && !fighter->IsJumpingRollForward)
    {
        sprite[fighter->spriteIndex].x_ = CAMERA_BOUND_RIGHT - FIGHTER_WIDTH;
        changed = true;
    }
    // else if (sprite[fighter->spriteIndex].y_ < 0)
    // {
    //     sprite[fighter->spriteIndex].y_ = 0;
    //     changed = true;
    // }
    // else if (sprite[fighter->spriteIndex].y_ > FLOOR_LOCATION_Y - 98)
    // {
    //     sprite[fighter->spriteIndex].y_ = FLOOR_LOCATION_Y - 98;
    //     changed = true;
    // }

    if (changed)
    {
        fighter->positionX = sprite[fighter->spriteIndex].x_;
        //fighter->positionY = sprite[fighter->spriteIndex].y_;

        //sprite[fighter->HB_BODY].x_ = fighter->positionX + 12;
        
        // if (fighter->fighterIndex == CAGE)
        // {
        //     sprite[fighter->HB_BODY].x_ += 16;
        // }

        impactFrameReset(fighter);
    }
}

void fighterAlignSpriteAndHitbox(struct Fighter* fighter)
{
    //fighter->positionX and positionY are the new definitive position of the fighter
    //only positionX and Y will be affected by movement, jumping, attacks, and damage
    // sprite[fighter->spriteIndex].x_ = fighter->positionX;
    // sprite[fighter->spriteIndex].y_ = fighter->positionY;
    //sprite[fighter->HB_BODY].x_ = fighter->positionX + 4;
    //sprite[fighter->HB_BODY].y_ = fighter->positionY + 4;

    if (fighter->IsIdle)
    {
        //reset the attack hitbox when the fighter is idle
        sprite[fighter->HB_ATTACK].x_ = fighter->positionX + 12;
        sprite[fighter->HB_ATTACK].y_ = fighter->positionY + 160;
    }
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
}

void fighterSetOnFloor(struct Fighter* fighter)
{
    fighter->positionY = FLOOR_LOCATION_Y_FIGHTER;
}

bool fighterHasRoomToMove(struct Fighter* fighter, struct Fighter* otherFighter)
{
    if (fighter->direction == 1)
    {
        //fighter is facing RIGHT, so let's make sure they have room to the LEFT of them
        if (fighter->positionX <= CAMERA_BOUND_LEFT + 1 && cameraIsAtLeftWall())
            return false;

        if (fighter->positionX <= CAMERA_BOUND_LEFT + 1 && otherFighter->positionX >= CAMERA_BOUND_RIGHT - FIGHTER_WIDTH)
            return false;
    }
    else if (fighter-> direction == -1)
    {
        //fighter is facing LEFT, so let's make sure they have room to the RIGHT of them
        if (fighter->positionX >= CAMERA_BOUND_RIGHT && cameraIsAtRightWall())
            return false;

        if (fighter->positionX >= CAMERA_BOUND_RIGHT && otherFighter->positionX <= CAMERA_BOUND_LEFT)
            return false;
    }

    return true;
}

void fighterPositionXAdd(struct Fighter* fighter, int xAdd)
{
    if (fighter->direction == 1 && xAdd < 0 && !fighter->hasRoomToMove)
        return;

    if (fighter->direction == -1 && xAdd > 0 && !fighter->hasRoomToMove)
        return;
    
    fighter->positionX += xAdd;    
}

void fighterCastShadow(struct Fighter* fighter)
{
    return;
    
    if (rapTicks >= shadowTicks + 60)
    {
        sprite[fighter->spriteIndex - 1].x_ = sprite[fighter->spriteIndex].x_;
        sprite[fighter->spriteIndex - 1].width = sprite[fighter->spriteIndex].width;
        sprite[fighter->spriteIndex - 1].height = sprite[fighter->spriteIndex].height;
        sprite[fighter->spriteIndex - 1].bytewid = sprite[fighter->spriteIndex].bytewid;
        sprite[fighter->spriteIndex - 1].framesz = sprite[fighter->spriteIndex].framesz;
        sprite[fighter->spriteIndex - 1].gfxbase = sprite[fighter->spriteIndex].gfxbase;
        sprite[fighter->spriteIndex - 1].active = R_is_active;
    }
}