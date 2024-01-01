#include "common.h"
#include "fighter.h"
#include "sound.h"
#include "spriteanimator.h"
#include "spritemovements.h"
#include "impactFrame.h"
#include "blood.h"

int collision = 0;

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
    if (isPlayer1)
    {
        sprite[fighter->spriteIndex].x_ = 4;
        sprite[fighter->spriteIndex].flip = R_is_normal;
        fighter->direction = 1;
    }
    else
    {
        sprite[fighter->spriteIndex].x_ = 227;

        if (fighter->fighterIndex == CAGE)
        {
            sprite[fighter->spriteIndex].x_ -= 16;
        }

        sprite[fighter->spriteIndex].flip = R_is_flipped;
        fighter->direction = -1;
    }

    fighter->positionX = sprite[fighter->spriteIndex].x_;
    fighter->positionY = sprite[fighter->spriteIndex].y_;
}

void fighterInitialize(struct Fighter *fighter, bool isPlayer1, struct SoundHandler* soundHandler, struct ImpactFrame* impactFrameLowPunch, struct ImpactFrame* impactFrameHighPunch, struct ImpactFrame* impactFrameLowKick, struct ImpactFrame* impactFrameHighKick, struct ImpactFrame* impactFrameUppercut, struct ImpactFrame* impactFrameSweep, struct ImpactFrame* impactFrameJumpPunch, struct ImpactFrame* impactFrameJumpKick)
{
    //defaults
    fighter->gravity = 2.2f;
    fighter->momentumY = 0.0f;
    fighter->jumpMomentumYStart = -18.0f;
    fighter->uppercutMomentumYStart = -26.0f;
    fighter->floorLocationY = 188;

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
    fighter->pad = 0;
    fighter->playerMoveForwardSpeed = 2;
    fighter->playerMoveBackwardSpeed = 2;
    fighter->playerKnockbackSpeed = 4.5f;
    fighter->playerUppercutXSpeed = 3.5f;
    fighter->playerPushSpeed = 1;
    fighter->damageTicks = 1;
    fighter->touchTicks = 0;
    fighter->IsWalking = false;
    fighter->IsJumping = false;
    fighter->IsDucking = false;
    fighter->IsBlocking = false;
    fighter->IsBlockingHit = false;
    fighter->IsLowPunching = false;
    fighter->IsHighPunching = false;
    fighter->IsLowKicking = false;
    fighter->IsHighKicking = false;
    fighter->IsJumpPunching = false;
    fighter->IsJumpKicking = false;
    fighter->IsUppercutting = false;
    fighter->ButtonReleased = true;
    fighter->DPadReleased = true;
    fighter->AcceptingInput = true;
    fighter->IsHitLow = false;
    fighter->IsHitHigh = false;
    fighter->IsHitBack = false;
    fighter->IsHitBackHigh = false;
    fighter->IsHitFall = false;
    fighter->IsMidAir = false;
    fighter->IsFalling = false;
    fighter->IsLayingDown = false;
    fighter->IsGettingUp = false;
    fighter->IsBeingDamaged = false;
    fighter->IsPushing = false;
    fighter->IsBeingPushed = false;
    fighter->DoBlockSequence = false;
    fighter->MadeContactUppercut = false;
    fighter->JumpLanded = false;
    fighter->CooldownTicksUppercut = 50;
    fighter->isPlayer1 = isPlayer1;
    sprite[fighter->spriteIndex].active = R_is_active;

    if (isPlayer1)
    {
        fighter->HB_ATTACK = P1_HB_ATTACK;
        fighter->HB_BODY = P1_HB_BODY;
        fighter->HB_DUCK = P1_HB_DUCK;
        fighter->PAD = LEFT_PAD;
        sprite[fighter->spriteIndex].x_ = 50;
        fighter->direction = 1;
    }
    else
    {
        fighter->HB_ATTACK = P2_HB_ATTACK;
        fighter->HB_BODY = P2_HB_BODY;
        fighter->HB_DUCK = P2_HB_DUCK;
        fighter->PAD = RIGHT_PAD;
        sprite[fighter->spriteIndex].x_ = 210;

        if (fighter->fighterIndex == CAGE)
        {
            sprite[fighter->spriteIndex].x_ -= 16;
        }

        fighter->direction = -1;
    }

    fighter->positionX = sprite[fighter->spriteIndex].x_;
    fighter->positionY = sprite[fighter->spriteIndex].y_;
    impactFrameReset(fighter);
}

void fighterUpdateIdle(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame idleFrames[])
{
    updateSpriteAnimator(animator, idleFrames, fighter->IDLE_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
}

void fighterUpdate(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, bool walkForward)
{
    if (fighter->DoBlockSequence)
    {
        fighter->DoBlockSequence = false;
        animator->currentFrame = 0;
        sfxBlock(fighter->soundHandler, fighter->isPlayer1);
    }

    if (fighter->IsBeingPushed)
    {
        sprite[fighter->spriteIndex].x_ += fighter->playerPushSpeed * delta * -fighter->direction;
        sprite[fighter->HB_BODY].x_ += fighter->playerPushSpeed * delta * -fighter->direction;
        sprite[fighter->HB_DUCK].x_ += fighter->playerPushSpeed * delta * -fighter->direction;
        sprite[fighter->HB_ATTACK].x_ += fighter->playerPushSpeed * delta * -fighter->direction;

        fighter->positionX = sprite[fighter->spriteIndex].x_;
        fighter->positionY = sprite[fighter->spriteIndex].y_;

        if (rapTicks >= fighter->touchTicks + 4)
        {
            fighter->IsBeingPushed = false;
            sprite[fighter->HB_BODY].was_hit = -1;
            sprite[fighter->HB_DUCK].was_hit = -1;
        }
    }

    //**************************************
    //Impact Damage Checks
    //**************************************
    if (!fighter->IsBeingDamaged)
    {
        if (fighter->IsHitLow || fighter->IsHitHigh || fighter->IsHitBack || fighter->IsHitFall || fighter->IsHitSweep || fighter->IsHitBackHigh)
        {
            fighter->IsBeingDamaged = true;
            fighter->lastTicks = rapTicks;
            animator->currentFrame = 0;
            fighter->momentumY = fighter->uppercutMomentumYStart;

            if (fighter->IsHitLow || fighter->IsHitHigh || fighter->IsHitSweep || fighter->IsHitBackHigh)
            {
                fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
            }
            else if (fighter->IsHitBack || fighter->IsHitFall)
            {
                sfxImpact(fighter->soundHandler);
                fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
            }

            if (fighter->IsHitHigh || fighter->IsHitBack || fighter->IsHitFall || fighter->IsHitBackHigh)
            {
                int bloodX = sprite[fighter->spriteIndex].x_;

                if (fighter->direction == -1)
                {
                    bloodX += 40;
                }
                else if (fighter->direction == 1)
                {
                    bloodX -= 40;
                }

                if (fighter->IsHitHigh || fighter->IsHitBackHigh)
                {
                    bloodSpray(bloodX, sprite[fighter->spriteIndex].y_ - 10, fighter->direction);
                }
                else if (fighter->IsHitBack)
                {
                    bloodGlob(bloodX, sprite[fighter->spriteIndex].y_ + 20, fighter->direction);
                    bloodDrop(bloodX + (40 * fighter->direction), sprite[fighter->spriteIndex].y_ - 30, fighter->direction);
                }
                else if (fighter->IsHitFall)
                {
                    bgShake(false);
                    bloodSquirt(bloodX, sprite[fighter->spriteIndex].y_ - 10);
                    bloodSquirt(bloodX+20, sprite[fighter->spriteIndex].y_ - 30);
                    bloodSquirt(bloodX+10, sprite[fighter->spriteIndex].y_ - 50);

                    bloodDrop(bloodX + (0 * fighter->direction), sprite[fighter->spriteIndex].y_ - 40, fighter->direction);
                    bloodDrop(bloodX + (40 * fighter->direction * -1), sprite[fighter->spriteIndex].y_ - 40, fighter->direction * -1);
                    bloodDrop(bloodX + (20 * fighter->direction), sprite[fighter->spriteIndex].y_ - 50, fighter->direction);
                    bloodDrop(bloodX + (20 * fighter->direction * -1), sprite[fighter->spriteIndex].y_ - 50, fighter->direction * -1);
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
            //sprite[fighter->spriteIndex].x_ += fighter->playerKnockbackSpeed * -fighter->direction;
            sprite[fighter->HB_BODY].x_ += fighter->playerKnockbackSpeed * -fighter->direction;
            sprite[fighter->HB_DUCK].x_ += fighter->playerKnockbackSpeed * -fighter->direction;
            sprite[fighter->HB_ATTACK].x_ += fighter->playerKnockbackSpeed * -fighter->direction;
            fighter->positionX += fighter->playerKnockbackSpeed * -fighter->direction;
            fighter->lastTicks = rapTicks;
        }     

        updateSpriteAnimator(animator, *fighter->hitBackFrames, fighter->HIT_BACK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (animationIsComplete(animator, fighter->HIT_BACK_FRAME_COUNT))
        {
            fighter->IsHitBack = false;
            fighter->IsHitBackHigh = false;
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
                fighter->positionY = fighter->floorLocationY - 98;
            }
        }
        else if (rapTicks >= fighter->lastTicks + 1)
        {
            sprite[fighter->HB_BODY].x_ += fighter->playerUppercutXSpeed * -fighter->direction;
            sprite[fighter->HB_DUCK].x_ += fighter->playerUppercutXSpeed * -fighter->direction;
            sprite[fighter->HB_ATTACK].x_ += fighter->playerUppercutXSpeed * -fighter->direction;
            fighter->positionX += fighter->playerUppercutXSpeed * -fighter->direction;

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
                if (fighter->positionY > fighter->floorLocationY - 94)
                {
                    fighter->IsLayingDown = true;
                    fighter->lastTicks = rapTicks;
                    fighter->positionY = fighter->floorLocationY - 94;

                    //show last frame of HitFall animation
                    animateFrame(fighter->spriteIndex, 5, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

                    //play thud
                    //shake screen
                    bgShake(false);
                    sfxThud(fighter->soundHandler);
                }
                else
                {
                    animateFrame(fighter->spriteIndex, 4, *fighter->hitFallFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
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

    //**************************************
    //Player Input Handling
    //**************************************
    if (!fighter->IsBeingDamaged)
    {
        fighter->pad = jsfGetPad(fighter->PAD);

        if ((fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_9) && fighter->IsDucking && fighter->ButtonReleased && fighter->AcceptingInput || fighter->IsUppercutting)
        {
            if (!fighter->IsUppercutting && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsUppercutting = true;
                fighter->IsDucking = false;
                sprite[fighter->HB_BODY].active = R_is_active;
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
        else if (fighter->pad & JAGPAD_C && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping || fighter->IsLowPunching)
        {
            if (!fighter->IsLowPunching && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsLowPunching = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameLowPunch);
            updateSpriteAnimator(animator, *fighter->punchLowFrames, fighter->LOW_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

            if (animationIsComplete(animator, fighter->LOW_PUNCH_FRAME_COUNT))
            {
                fighter->IsLowPunching = false;
            }
        }
        else if (fighter->pad & JAGPAD_9 && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping || fighter->IsHighPunching)
        {
            if (!fighter->IsHighPunching && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsHighPunching = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameHighPunch);
            updateSpriteAnimator(animator, *fighter->punchHighFrames, fighter->HIGH_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

            if (animationIsComplete(animator, fighter->HIGH_PUNCH_FRAME_COUNT))
            {
                fighter->IsHighPunching = false;
            }
        }
        else if ((fighter->pad & JAGPAD_LEFT && fighter->direction == 1 || fighter->pad & JAGPAD_RIGHT && fighter->direction == -1) && fighter->pad & JAGPAD_A && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping || fighter->IsSweeping)
        {
            if (!fighter->IsSweeping && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsSweeping = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameSweep);
            updateSpriteAnimator(animator, *fighter->sweepFrames, fighter->SWEEP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

            if (animationIsComplete(animator, fighter->SWEEP_FRAME_COUNT))
            {
                fighter->IsSweeping = false;
            }
        }
        else if (fighter->pad & JAGPAD_A && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping || fighter->IsLowKicking)
        {
            if (!fighter->IsLowKicking && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsLowKicking = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameLowKick);
            updateSpriteAnimator(animator, *fighter->kickLowFrames, fighter->LOW_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

            if (animationIsComplete(animator, fighter->LOW_KICK_FRAME_COUNT))
            {
                fighter->IsLowKicking = false;
            }
        }
        else if (fighter->pad & JAGPAD_7 && fighter->ButtonReleased && fighter->AcceptingInput && !fighter->IsJumping || fighter->IsHighKicking)
        {
            if (!fighter->IsHighKicking && fighter->ButtonReleased)
            {
                fighter->ButtonReleased = false;
                fighter->IsHighKicking = true;
                animator->currentFrame = 0;
                fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                sfxSwing(fighter->soundHandler);
            }

            impactFrameUpdate(animator, fighter, fighter->impactFrameHighKick);
            updateSpriteAnimator(animator, *fighter->kickHighFrames, fighter->HIGH_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

            if (animationIsComplete(animator, fighter->HIGH_KICK_FRAME_COUNT))
            {
                fighter->IsHighKicking = false;
            }
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
                    sprite[fighter->HB_BODY].active = R_is_active;
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
        else if(fighter->pad & JAGPAD_LEFT && fighter->AcceptingInput && !fighter->IsJumping)
        {
            if (!fighter->IsWalking)
            {
                animator->currentFrame = 0;
            }

            updateSpriteAnimator(animator, *fighter->walkFrames, fighter->WALK_FRAME_COUNT, walkForward, true, fighter->positionX, fighter->positionY, fighter->direction);
            fighter->IsWalking = true;
            fighter->IsDucking = false;
            fighter->IsBlocking  = false;
            fighter->IsLowPunching = false;
            fighter->IsHighPunching = false;

            if (sprite[fighter->spriteIndex].x_ > 0)
            {
                if (!fighter->IsPushing)
                {
                    sprite[fighter->spriteIndex].x_ -= fighter->playerMoveBackwardSpeed * delta;
                    sprite[fighter->HB_BODY].x_ -= fighter->playerMoveBackwardSpeed * delta;
                    sprite[fighter->HB_DUCK].x_ -= fighter->playerMoveBackwardSpeed * delta;
                    sprite[fighter->HB_ATTACK].x_ -= fighter->playerMoveBackwardSpeed * delta;
                }
                else
                {
                    sprite[fighter->spriteIndex].x_ -= fighter->playerPushSpeed * delta;
                    sprite[fighter->HB_BODY].x_ -= fighter->playerPushSpeed * delta;
                    sprite[fighter->HB_DUCK].x_ -= fighter->playerPushSpeed * delta;
                    sprite[fighter->HB_ATTACK].x_ -= fighter->playerPushSpeed * delta;
                }
            }
            else
            {
                bgScrollLeft(delta);
            }

            fighter->positionX = sprite[fighter->spriteIndex].x_;
            fighter->positionY = sprite[fighter->spriteIndex].y_;

            if (fighter->direction == -1)
            {
                //player 2, so we have to factor the idleFrameWidth into the offset
                //fighter->positionX += (*fighter->walkFrames[animator->currentFrame]).width - animator->idleFrameWidth;
                fighter->positionX += getAnimationFrameWidth(*fighter->walkFrames, animator->currentFrame) - animator->idleFrameWidth;
            }
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
            fighter->IsBlocking = false;
            fighter->IsLowPunching = false;
            fighter->IsHighPunching = false;
            
            if (sprite[fighter->spriteIndex].x_ < 260)
            {
                if (!fighter->IsPushing)
                {
                    sprite[fighter->spriteIndex].x_ += fighter->playerMoveForwardSpeed * delta;
                    sprite[fighter->HB_BODY].x_ += fighter->playerMoveForwardSpeed * delta;
                    sprite[fighter->HB_DUCK].x_ += fighter->playerMoveForwardSpeed * delta;
                    sprite[fighter->HB_ATTACK].x_ += fighter->playerMoveForwardSpeed * delta;
                }
                else
                {
                    sprite[fighter->spriteIndex].x_ += fighter->playerPushSpeed * delta;
                    sprite[fighter->HB_BODY].x_ += fighter->playerPushSpeed * delta;
                    sprite[fighter->HB_DUCK].x_ += fighter->playerPushSpeed * delta;
                    sprite[fighter->HB_ATTACK].x_ += fighter->playerPushSpeed * delta;
                }
            }
            else
            {
                bgScrollRight(delta);
            }

            fighter->positionX = sprite[fighter->spriteIndex].x_;
            fighter->positionY = sprite[fighter->spriteIndex].y_;

            if (fighter->direction == -1)
            {
                //player 2, so we have to factor the idleFrameWidth into the offset
                //fighter->positionX += (*fighter->walkFrames[animator->currentFrame]).width - animator->idleFrameWidth;
                fighter->positionX += getAnimationFrameWidth(*fighter->walkFrames, animator->currentFrame) - animator->idleFrameWidth;
            }
        }
        else if (fighter->pad & JAGPAD_DOWN && fighter->AcceptingInput && !fighter->IsJumping)
        {
            if (!fighter->IsDucking)
            {
                fighter->IsDucking = true;
                animator->currentFrame = 0;
            }
            updateSpriteAnimator(animator, *fighter->duckFrames, fighter->DUCK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
            sprite[fighter->HB_BODY].active = R_is_inactive;
        }
        else if (fighter->pad & JAGPAD_UP && fighter->DPadReleased || fighter->IsJumping)
        {
            if (!fighter->IsJumping && fighter->DPadReleased)
            {
                fighter->DPadReleased = false;
                fighter->IsJumping = true;
                animator->currentFrame = 0;
                fighter->momentumY = fighter->jumpMomentumYStart;
                fighter->JumpLanded = false;
                fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
            }

            if ((fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_9) && fighter->IsJumping && !fighter->JumpLanded && !fighter->IsJumpKicking || fighter->IsJumpPunching && !fighter->JumpLanded && fighter->IsJumping && !fighter->IsJumpKicking)
            {
                if (!fighter->IsJumpPunching)
                {
                    fighter->ButtonReleased = false;
                    fighter->IsJumpPunching = true;
                    animator->currentFrame = 0;
                    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                    sfxSwing(fighter->soundHandler);
                }

                impactFrameUpdate(animator, fighter, fighter->impactFrameJumpPunch);
                updateSpriteAnimator(animator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
            }

            if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_7) && fighter->IsJumping && !fighter->JumpLanded && !fighter->IsJumpPunching || fighter->IsJumpKicking && !fighter->JumpLanded && fighter->IsJumping && !fighter->IsJumpPunching)
            {
                if (!fighter->IsJumpKicking)
                {
                    fighter->ButtonReleased = false;
                    fighter->IsJumpKicking = true;
                    animator->currentFrame = 0;
                    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
                    sfxSwing(fighter->soundHandler);
                }

                impactFrameUpdate(animator, fighter, fighter->impactFrameJumpKick);
                updateSpriteAnimator(animator, *fighter->jumpKickFrames, fighter->JUMP_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
            }

            if (animator->currentFrame == 0 && !fighter->IsJumpPunching && !fighter->IsJumpKicking)
            {
                updateSpriteAnimator(animator, *fighter->jumpFrames, fighter->JUMP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->IsJumping)
            {
                if (!fighter->JumpLanded)
                {
                    fighter->positionY += fighter->momentumY;
                    fighter->momentumY += fighter->gravity;

                    if (!fighter->IsJumpPunching && !fighter->IsJumpKicking)
                    {
                        animator->currentFrame = 1;
                        animateFrame(fighter->spriteIndex, animator->currentFrame, *fighter->jumpFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                    }
                }

                if (fighter->momentumY > 0 && fighter->positionY >= fighter->floorLocationY - 98)
                {
                    //landed
                    impactFrameReset(fighter);
                    fighter->IsJumpPunching = false;
                    fighter->IsJumpKicking = false;
                    fighter->JumpLanded = true;
                    fighter->momentumY = 0.0f;
                    fighter->positionY = fighter->floorLocationY - 98;
                }
                else if (fighter->JumpLanded)
                {
                    updateSpriteAnimator(animator, *fighter->jumpFrames, fighter->JUMP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
                    
                    if (animationIsComplete(animator, fighter->JUMP_FRAME_COUNT))
                    {
                        fighter->AcceptingInput = true;
                        fighter->IsJumping = false;
                        fighter->IsJumpPunching = false;
                        fighter->IsJumpKicking = false;
                        impactFrameReset(fighter);
                    }
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
                    sprite[fighter->HB_BODY].active = R_is_active;
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

void fighterImpactCheck(struct Fighter* fighter1, struct Fighter* fighter2)
{
    collision = rapCollide(P1_HB_BODY-1,P2_HB_ATTACK-1,P1_HB_BODY-1,P2_HB_ATTACK-1);

    if (collision > -1)
    {
        int i = 0;
        int collisionSprAddr = 0;
        int collisionSprAddr2 = 0;

        while (collisionSprAddr2 >= 0)
        {
            collisionSprAddr = colliders[i].objectSourceHitAddr;
            collisionSprAddr2 = colliders[i].objectHitAddr;

            if (collisionSprAddr > -1)
            {
                int collisionSprIndex = jsfGetSpriteIndex(collisionSprAddr);
                int collisionSprIndex2 = jsfGetSpriteIndex(collisionSprAddr2);
                sprite[collisionSprIndex].was_hit = -1;
                sprite[collisionSprIndex2].was_hit = -1;

                if (collisionSprIndex == P1_HB_ATTACK && collisionSprIndex2 == P2_HB_BODY)
                {
                    if (!fighter2->IsBeingDamaged && !fighter2->IsBlocking)
                    {
                        if (fighter1->IsLowPunching)
                        {
                            fighter2->IsHitLow = true;
                        }
                        else if (fighter1->IsHighPunching)
                        {
                            fighter2->IsHitHigh = true;
                        }
                        else if (fighter1->IsLowKicking)
                        {
                            fighter2->IsHitLow = true;
                        }
                        else if (fighter1->IsHighKicking)
                        {
                            fighter2->IsHitBack = true;
                        }
                        else if (fighter1->IsJumpPunching)
                        {
                            fighter2->IsHitBackHigh = true;
                        }
                        else if (fighter1->IsJumpKicking)
                        {
                            fighter2->IsHitBackHigh = true;
                        }
                        else if (fighter1->IsUppercutting)
                        {
                            fighter2->IsHitFall = true;
                            fighter1->AcceptingInput = false;
                            fighter1->MadeContactUppercut = true;
                            fighter1->lastTicks = rapTicks;
                        }
                    }
                    else if (!fighter2->IsBeingDamaged && fighter2->IsBlocking)
                    {
                        fighter2->IsBlockingHit = true;
                        fighter2->DoBlockSequence = true;
                    }
                }

                if (collisionSprIndex == P1_HB_DUCK && collisionSprIndex2 == P2_HB_DUCK)
                {
                    if (fighter1->IsWalking)
                    {
                        fighter1->IsPushing = true;
                        fighter2->IsBeingPushed = true;
                        fighter2->touchTicks = rapTicks;
                    }
                }
                
                if (fighter2->IsBeingPushed && (!collisionSprIndex == P1_HB_DUCK && collisionSprIndex2 == P2_HB_DUCK))
                {
                    fighter2->IsBeingPushed = false;
                }

                if (collisionSprIndex == P1_HB_ATTACK && collisionSprIndex2 == P2_HB_DUCK)
                {
                    if (!fighter2->IsBeingDamaged && !(fighter2->IsBlocking && fighter2->IsDucking))
                    {
                        if (fighter1->IsSweeping)
                        {
                            fighter2->IsHitSweep = true;
                        }
                    }
                    else if (!fighter2->IsBeingDamaged && fighter2->IsBlocking && fighter2->IsDucking)
                    {
                        fighter2->IsBlockingHit = true;
                        fighter2->DoBlockSequence = true;
                    }
                }

                if (collisionSprIndex == P2_HB_ATTACK && collisionSprIndex2 == P1_HB_BODY)
                {
                    if (!fighter1->IsBeingDamaged && !fighter1->IsBlocking)
                    {
                        if (fighter2->IsLowPunching)
                        {
                            fighter1->IsHitLow = true;
                        }
                        else if (fighter2->IsHighPunching)
                        {
                            fighter1->IsHitHigh = true;
                        }
                        else if (fighter2->IsLowKicking)
                        {
                            fighter1->IsHitLow = true;
                        }
                        else if (fighter2->IsHighKicking)
                        {
                            fighter1->IsHitBack = true;
                        }
                        else if (fighter2->IsJumpPunching)
                        {
                            fighter1->IsHitBackHigh = true;
                        }
                        else if (fighter2->IsJumpKicking)
                        {
                            fighter1->IsHitBackHigh = true;
                        }
                        else if (fighter2->IsUppercutting)
                        {
                            fighter1->IsHitFall = true;
                            fighter2->AcceptingInput = false;
                            fighter2->MadeContactUppercut = true;
                            fighter2->lastTicks = rapTicks;
                        }
                    }
                    else if (!fighter1->IsBeingDamaged && fighter1->IsBlocking)
                    {
                        fighter1->IsBlockingHit = true;
                        fighter1->DoBlockSequence = true;
                    }
                }

                if (collisionSprIndex == P2_HB_ATTACK && collisionSprIndex2 == P1_HB_DUCK)
                {
                    if (!fighter1->IsBeingDamaged && !(fighter1->IsBlocking && fighter1->IsDucking))
                    {
                        if (fighter2->IsSweeping)
                        {
                            fighter1->IsHitSweep = true;
                        }
                    }
                    else if (!fighter1->IsBeingDamaged && fighter1->IsBlocking && fighter1->IsDucking)
                    {
                        fighter1->IsBlockingHit = true;
                        fighter1->DoBlockSequence = true;
                    }
                }

                if (collisionSprIndex == P2_HB_DUCK && collisionSprIndex2 == P1_HB_DUCK)
                {
                    if (fighter2->IsWalking)
                    {
                        fighter2->IsPushing = true;
                        fighter1->IsBeingPushed = true;
                        fighter1->touchTicks = rapTicks;
                    }
                }
                
                if (fighter1->IsBeingPushed && (!collisionSprIndex == P2_HB_DUCK && collisionSprIndex2 == P1_HB_DUCK))
                {
                    fighter1->IsBeingPushed = false;
                }
            }
            i++;
        }
    }
}