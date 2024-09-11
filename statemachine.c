#include "common.h"
#include "fighter.h"
#include "spriteanimator.h"
#include "spritemovements.h"
#include "statemachine.h"
#include "impactFrame.h"
#include "sound.h"
#include "debug.h"
#include "blood.h"
#include "playerinput.h"
#include "stage.h"
#include "camera.h"

static short JumpOffsets[20] = {-20, -16, -12, -10, -8, -6, -4, -2, 0, 0, 2, 4, 6, 8, 10, 12, 16, 20};
static short FlipOffsets[20] = {-20, -16, -12, -10, -8, -6, -4, -2, 0, 0, 2, 4, 6, 8, 10, 12, 16, 20};
static short UppercutOffsets[26] = {-20, -20, -16, -14, -13, -10, -9, -6, -4, -3, -2, -1, 0, 0, 0, 2, 3, 4, 6, 9, 12, 13, 14, 20, 22, 24 };
static AnimationFrame cageShadowKickFrames[] = {
	{ 96, 96, 0, 736, 0, 16, 6 },
};
static AnimationFrame scorpionTeleportFrames[] = {
	{ 64, 96, 96, 736, 0, 16, 6 },
};
static struct ImpactFrame sonyaImpactLegGrab = {
	5, 0, 30, false, 99
};

void stateMachineAdd(struct StateMachine* stateMachine, short name, struct State* state)
{
    state->Name = name;
    stateMachine->states[name] = state;
};

void stateMachineInit(struct StateMachine* stateMachine, short name, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->currentState = stateMachine->states[name];
    fighter->currentState->enter(stateMachine, fighter, spriteAnimator);
    fighter->exitingState = false;
}

void stateMachineUpdate(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->isSleeping && rapTicks < fighter->sleepTicks)
    {
        return;
    }
    else if (fighter->isSleeping)
    {
        fighter->isSleeping = false;
    }

    /////////////////////////////////////////////////////
    // GLOBAL FIGHTER LOGIC - REGARDLESS OF STATE
    /////////////////////////////////////////////////////

    if (fighter->currentState->Name == STATE_CAGE_SHADOW_KICK
        && sprite[fighter->spriteIndex-1].active == R_is_active
        && sprite[fighter->spriteIndex].active == R_is_active
        && sprite[fighter->spriteIndex+1].active == R_is_active
        && sprite[fighter->spriteIndex+2].active == R_is_active
        && sprite[fighter->spriteIndex+3].active == R_is_active)
    {
        //both the fighter and the projectile are on screen at once, let's z-sort them
        //rapSortSprites(stageGetFighterHitboxIndex()+1, R_sprite_y, 3, SPRSORT_LOW);
    }

    if (fighter->IsBeingPushed)
    {
        fighterPositionXAdd(fighter, FIGHTER_WALK_PUSH_SPEED * -fighter->direction);

        if (rapTicks >= fighter->touchTicks + 4)
        {
            fighter->IsBeingPushed = false;
            sprite[fighter->spriteIndex].was_hit = -1;
        }
    }
    else if (fighter->IsTurning
        && fighter->currentState->Name != STATE_TURNING_AROUND
        && fighter->currentState->Name != STATE_JUMPING
        && fighter->currentState->Name != STATE_JUMPING_BACKWARD
        && fighter->currentState->Name != STATE_JUMPING_FORWARD
        && fighter->currentState->Name != STATE_JUMPING_KICKING_BACKWARD
        && fighter->currentState->Name != STATE_JUMPING_KICKING_FORWARD
        && fighter->currentState->Name != STATE_JUMPING_PUNCHING_BACKWARD
        && fighter->currentState->Name != STATE_JUMPING_PUNCHING_FORWARD
        && fighter->currentState->Name != STATE_JUMP_KICKING
        && fighter->currentState->Name != STATE_JUMP_PUNCHING
        && fighter->currentState->Name != STATE_BEING_THROWN
        && fighter->currentState->Name != STATE_THROWING
        && fighter->currentState->Name != STATE_LAYDOWN
        && fighter->currentState->Name != STATE_GETUP)
    {
        fighter->IsTurning = false;
        stateMachineGoto(stateMachine, STATE_TURNING_AROUND, fighter, spriteAnimator);
        return;
    }

    fighterHandleSpecialMoves(stateMachine, fighter, spriteAnimator);

    if (fighter->DoImpaleBloodSequence)
    {
        fighter->DoImpaleBloodSequence = false;        
        bloodImpale(fighter->positionX, fighter->positionY, fighter->direction);
    }

    /////////////////////////////////////////////////////
    // END GLOBAL FIGHTER LOGIC
    /////////////////////////////////////////////////////

    fighter->currentState->update(stateMachine, fighter, spriteAnimator, opponent);
}

void stateMachineHandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->currentState->handleInput(stateMachine, fighter, spriteAnimator);
}

void stateMachineGoto(struct StateMachine* stateMachine, short newState, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //if we're already at the current state, let's bail.
    if (fighter->currentState->Name == newState)
        return;

    sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    fighter->currentState = stateMachine->states[newState];
    fighter->currentState->enter(stateMachine, fighter, spriteAnimator);
}

void stateMachineSleep(struct StateMachine* stateMachine, short ticks, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->isSleeping = true;
    fighter->sleepTicks = rapTicks + ticks;
    fighter->currentState->sleep(stateMachine, fighter, spriteAnimator);
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////
// IDLE
// vars[0]  = has turned
// vars[1] = rapTicks (raiden's zap sound)

void StateIdle_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->MadeContact = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = 0;
    fighter->vars[1] = rapTicks;
    sprite[fighter->HB_ATTACK].x_ = fighter->positionX + 12;
    sprite[fighter->HB_ATTACK].y_ = fighter->positionY + 160;

    if (fighter->fighterIndex == RAIDEN)
    {
        sfxRaidenIdleZap(fighter->soundHandler);
        fighterResetRaidenLightning(fighter);
        sprite[fighter->lightningSpriteIndex].active = R_is_active;
        sprite[fighter->lightningSpriteIndex].x_ = fighter->direction == 1 ? fighter->positionX - 4 : fighter->positionX - 12;
        sprite[fighter->lightningSpriteIndex].y_ = fighter->positionY;
    }
    else
    {
        sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    }

    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_IDLE_FALL, fighter, spriteAnimator);
        return;
    }
}

void StateIdle_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->fighterIndex == RAIDEN && rapTicks >= fighter->vars[1] + 120)
    {
        sfxRaidenIdleZap(fighter->soundHandler);
        fighter->vars[1] = rapTicks;
    }

    updateSpriteAnimator(spriteAnimator, *fighter->idleFrames, fighter->IDLE_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
    fighterSetOnFloor(fighter);

    if (fighter->fighterIndex == RAIDEN)
    {
        sprite[fighter->lightningSpriteIndex].x_ = fighter->direction == 1 ? fighter->positionX - 4 : fighter->positionX - 12;
        sprite[fighter->lightningSpriteIndex].y_ = fighter->positionY;
        updateSpriteAnimator(fighter->projectileAnimator, *fighter->lightningFrames, 30, true, true);
    }
}

void StateIdle_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateIdle_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->AcceptingInput)
    {
        fighterCaptureDpadInputs(fighter);
        //if we're doing a special move, let's bail
        if (fighterHandleSpecialMoves(stateMachine, fighter, spriteAnimator))
            return;

        if (fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8)
        {
            stateMachineGoto(stateMachine, STATE_BLOCKING, fighter, spriteAnimator);
            return;
        }
        else if (((fighter->pad & JAGPAD_LEFT && fighter->direction == 1) || (fighter->pad & JAGPAD_RIGHT && fighter->direction == -1)) && fighter->pad & JAGPAD_DOWN && fighter->pad & JAGPAD_A && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_SWEEPING, fighter, spriteAnimator);
            return;
        }
        else if (fighter->pad & JAGPAD_DOWN && (fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8))
        {
            stateMachineGoto(stateMachine, STATE_DUCK_BLOCKING, fighter, spriteAnimator);
            return;
        }
        else if (fighter->pad & JAGPAD_DOWN)
        {
            stateMachineGoto(stateMachine, STATE_DUCKING, fighter, spriteAnimator);
            return;
        }
        else if (fighter->pad & JAGPAD_UP && (fighter->direction == 1 && fighter->pad & JAGPAD_RIGHT || fighter->direction == -1 && fighter->pad & JAGPAD_LEFT))
        {
            stateMachineGoto(stateMachine, STATE_JUMPING_FORWARD, fighter, spriteAnimator);
            return;
        }
        else if (fighter->pad & JAGPAD_UP && (fighter->direction == 1 && fighter->pad & JAGPAD_LEFT || fighter->direction == -1 && fighter->pad & JAGPAD_RIGHT))
        {
            stateMachineGoto(stateMachine, STATE_JUMPING_BACKWARD, fighter, spriteAnimator);
            return;
        }
        else if (((((fighter->pad & JAGPAD_RIGHT && fighter->direction == 1) || (fighter->pad & JAGPAD_LEFT && fighter->direction == -1)) && fighter->pad & JAGPAD_C) || fighter->pad & JAGPAD_7) && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_HIGH_PUNCHING, fighter, spriteAnimator);
            return;
        }
        else if (((((fighter->pad & JAGPAD_RIGHT && fighter->direction == 1) || (fighter->pad & JAGPAD_LEFT && fighter->direction == -1)) && fighter->pad & JAGPAD_A) || fighter->pad & JAGPAD_9) && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_HIGH_KICKING, fighter, spriteAnimator);
            return;
        }
        else if (fighter->direction == 1 && fighter->pad & JAGPAD_RIGHT || fighter->direction == -1 && fighter->pad & JAGPAD_LEFT)
        {
            stateMachineGoto(stateMachine, STATE_WALKING_FORWARD, fighter, spriteAnimator);
            return;
        }
        else if (fighter->direction == 1 && fighter->pad & JAGPAD_LEFT || fighter->direction == -1 && fighter->pad & JAGPAD_RIGHT)
        {
            stateMachineGoto(stateMachine, STATE_WALKING_BACKWARD, fighter, spriteAnimator);
            return;
        }        
        else if (fighter->pad & JAGPAD_UP)
        {
            stateMachineGoto(stateMachine, STATE_JUMPING, fighter, spriteAnimator);
            return;
        }
        else if (fighter->pad & JAGPAD_C && fighter->IsClose && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_THROWING, fighter, spriteAnimator);
            return;
        }    
        else if (fighter->pad & JAGPAD_C && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_LOW_PUNCHING, fighter, spriteAnimator);
            return;
        }
        else if (fighter->pad & JAGPAD_A && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_LOW_KICKING, fighter, spriteAnimator);
            return;
        }
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// BLOCKING

void StateBlocking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateBlocking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (!fighter->exitingState)
    {
        updateSpriteAnimator(spriteAnimator, *fighter->blockFrames, fighter->BLOCK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);    
    }
    else
    {
        updateSpriteAnimator(spriteAnimator, *fighter->blockFrames, fighter->BLOCK_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (spriteAnimator->currentFrame == 0)
        {
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        }
    }
}

void StateBlocking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateBlocking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8))
    {
        fighter->exitingState = true;
    }
    else if (fighter->pad & JAGPAD_DOWN)
    {
        stateMachineGoto(stateMachine, STATE_DUCK_BLOCKING, fighter, spriteAnimator);
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// DUCKING
// vars[0] checks to see if they were DUCK BLOCKING before this state

void StateDucking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->vars[0] != 1)
    {
        spriteAnimator->currentFrame = 0;
    }
    else
    {
        //we're coming from BlockDucking, so don't replay the ducking animation
        spriteAnimator->currentFrame = 2;
    }
    
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateDucking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (!fighter->exitingState)
    {
        updateSpriteAnimator(spriteAnimator, *fighter->duckFrames, fighter->DUCK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        updateSpriteAnimator(spriteAnimator, *fighter->duckFrames, fighter->DUCK_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (spriteAnimator->currentFrame == 0)
        {
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        }
    }
}

void StateDucking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateDucking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->pad & JAGPAD_DOWN))
    {
        fighter->exitingState = true;
    }
    else if (fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8)
    {
        stateMachineGoto(stateMachine, STATE_DUCK_BLOCKING, fighter, spriteAnimator);
        return;
    }
    else if (fighter->ButtonReleased && (fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7))
    {
        stateMachineGoto(stateMachine, STATE_UPPERCUTTING, fighter, spriteAnimator);
        return;
    }
    else if (fighter->ButtonReleased && (fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9))
    {
        stateMachineGoto(stateMachine, STATE_DUCK_KICKING, fighter, spriteAnimator);
        return;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// WALKING FORWARD
// vars[0] == DistanceWalked (in pixels)

void StateWalkingForward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->vars[0] = 0;  //reset DistanceWalked back to 0
    fighter->lastTicks = rapTicks;
}

void StateWalkingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    updateSpriteAnimator(spriteAnimator, *fighter->walkFrames, fighter->WALK_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (fighter->IsPushing)
        {
            fighterPositionXAdd(fighter, FIGHTER_WALK_PUSH_SPEED * fighter->direction);
        }
        else
        {
            fighterPositionXAdd(fighter, FIGHTER_WALK_SPEED_FORWARD * fighter->direction);
        }
        
        fighter->vars[0] += FIGHTER_WALK_SPEED_FORWARD;

        fighter->lastTicks = rapTicks;
    }

    fighterSetOnFloor(fighter);

    if (fighter->exitingState && fighter->vars[0] >= FIGHTER_WALK_MIN_FORWARD)
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateWalkingForward_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateWalkingForward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->direction == 1 && fighter->pad & JAGPAD_RIGHT || fighter->direction == -1 && fighter->pad & JAGPAD_LEFT))
    {
        fighter->exitingState = true;
    }
    else if (fighter->pad & JAGPAD_UP)
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_FORWARD, fighter, spriteAnimator);
        return;
    }
    else if (fighter->pad & JAGPAD_C && fighter->IsPushing && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_BODY_PUNCHING, fighter, spriteAnimator);
        return;
    }
    else if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9) && fighter->IsPushing && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_BODY_KICKING, fighter, spriteAnimator);
        return;
    }
    else if (fighter->pad & JAGPAD_7 && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_PUNCHING, fighter, spriteAnimator);
        return;
    }
    else if (fighter->pad & JAGPAD_C && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_PUNCHING, fighter, spriteAnimator);
        return;
    }
    else if (fighter->pad & JAGPAD_A && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_KICKING, fighter, spriteAnimator);
        return;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// WALKING BACKWARD
// vars[0] == DistanceWalked (in pixels)

void StateWalkingBackward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->vars[0] = 0;  //reset DistanceWalked back to 0
    fighter->lastTicks = rapTicks;
}

void StateWalkingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    updateSpriteAnimator(spriteAnimator, *fighter->walkFrames, fighter->WALK_FRAME_COUNT, false, true, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_WALK_SPEED_BACKWARD * fighter->direction * -1);
        fighter->vars[0] += FIGHTER_WALK_SPEED_BACKWARD;

        fighter->lastTicks = rapTicks;
    }

    fighterSetOnFloor(fighter);

    if (fighter->exitingState && fighter->vars[0] >= FIGHTER_WALK_MIN_BACKWARD)
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateWalkingBackward_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateWalkingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->direction == 1 && fighter->pad & JAGPAD_LEFT || fighter->direction == -1 && fighter->pad & JAGPAD_RIGHT))
    {
        fighter->exitingState = true;
    }
    else if (fighter->pad & JAGPAD_UP)
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_BACKWARD, fighter, spriteAnimator);
        return;
    }
    else if (fighter->pad & JAGPAD_A && fighter->pad & JAGPAD_DOWN && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_SWEEPING, fighter, spriteAnimator);
        return;
    }
    else if ((fighter->pad & JAGPAD_7 || fighter->pad & JAGPAD_C) && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_PUNCHING, fighter, spriteAnimator);
        return;
    }
    else if (fighter->pad & JAGPAD_A && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_ROUNDHOUSE_KICKING, fighter, spriteAnimator);
        return;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING
// vars[0] == JumpIndex (for the JumpOffset array)

void StateJumping_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->vars[0] = 0;  //reset JumpIndex back to 0
    fighter->lastTicks = rapTicks;
    fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumping_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //updateSpriteAnimator(spriteAnimator, *fighter->jumpFrames, fighter->JUMP_FRAME_COUNT, false, true, fighter->positionX, fighter->positionY, fighter->direction);

    if (fighter->vars[0] == 0 || fighter->vars[0] == 1)
    {
        animateFrame(spriteAnimator, fighter->spriteIndex, 0, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else if (fighter->vars[0] == 18)
    {
        animateFrame(spriteAnimator, fighter->spriteIndex, 2, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else if (fighter->vars[0] == 19)
    {
        animateFrame(spriteAnimator, fighter->spriteIndex, 3, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        animateFrame(spriteAnimator, fighter->spriteIndex, 1, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    }

    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighter->positionY += JumpOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumping_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumping_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if ((fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7) && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_JUMP_PUNCHING, fighter, spriteAnimator);
        return;
    }
    else if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9) && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_JUMP_KICKING, fighter, spriteAnimator);
        return;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING FORWARD
// vars[0] == JumpIndex (for the JumpOffset array)

void StateJumpingForward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->vars[0] = 0;  //reset JumpIndex back to 0
    fighter->lastTicks = rapTicks;
    fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    animateFrame(spriteAnimator, fighter->spriteIndex, fighter->vars[0], *fighter->jumpRollFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction);
        fighter->positionY += FlipOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;

        if (fighter->vars[0] == 5)
        {
            sfxJumpRoll(fighter->soundHandler);
        }
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumpingForward_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingForward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->ButtonReleased && (fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9))
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_KICKING_FORWARD, fighter, spriteAnimator);
        return;
    }
    else if (fighter->ButtonReleased && (fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7))
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_PUNCHING_FORWARD, fighter, spriteAnimator);
        return;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING BACKWARD
// vars[0] == JumpIndex (for the JumpOffset array)

void StateJumpingBackward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->vars[0] = 0;  //reset JumpIndex back to 0
    fighter->lastTicks = rapTicks;
    fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    animateFrame(spriteAnimator, fighter->spriteIndex, 19 - fighter->vars[0], *fighter->jumpRollFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction * -1);
        fighter->positionY += FlipOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;

        if (fighter->vars[0] == 5)
        {
            sfxJumpRoll(fighter->soundHandler);
        }
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumpingBackward_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->ButtonReleased && (fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9))
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_KICKING_BACKWARD, fighter, spriteAnimator);
        return;
    }
    else if (fighter->ButtonReleased && (fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7))
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_PUNCHING_BACKWARD, fighter, spriteAnimator);
        return;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// DUCK BLOCKING
// vars[0] flag to tell DUCKING state that we were blocking

void StateDuckBlocking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateDuckBlocking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (!fighter->exitingState)
    {
        updateSpriteAnimator(spriteAnimator, *fighter->blockDuckFrames, fighter->BLOCK_DUCK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        updateSpriteAnimator(spriteAnimator, *fighter->blockDuckFrames, fighter->BLOCK_DUCK_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);

        if (spriteAnimator->currentFrame == 0)
        {
            if (fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8)
            {
                stateMachineGoto(stateMachine, STATE_BLOCKING, fighter, spriteAnimator);
                return;
            }
            else if (fighter->pad & JAGPAD_DOWN)
            {
                //tell the DUCKING state that we were blocking, so it doesn't reset the animation
                fighter->vars[0] = 1;
                stateMachineGoto(stateMachine, STATE_DUCKING, fighter, spriteAnimator);
                return;
            }
            else
            {
                stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
                return;
            }
        }
    }
}

void StateDuckBlocking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateDuckBlocking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->pad & JAGPAD_DOWN && (fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8)))
    {
        fighter->exitingState = true;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// LOW PUNCHING
// vars[0] = LP button tap count, if == 2, goto STATE_LOW_REPEAT_PUNCHINIG
// vars[2] = Played sound

void StateLowPunching_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateLowPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->punchLowFrames, fighter->LOW_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (spriteAnimator->currentFrame == 2 && fighter->vars[2] == 0)
    {
        fighter->vars[2] = 1;
        fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);        
    }

    if (fighter->vars[0] >= 1)
    {
        stateMachineGoto(stateMachine, STATE_LOW_REPEAT_PUNCHING, fighter, spriteAnimator);
        return;
    }
    else if (animationIsComplete(spriteAnimator, fighter->LOW_PUNCH_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }
}

void StateLowPunching_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateLowPunching_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->ButtonReleased && fighter->pad & JAGPAD_C)
    {
        fighter->vars[0]++;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// LOW REPEAT PUNCHING
// vars[0] = LP button tap count to see if the player is spamming the LP button
// vars[1] = TIMEOUT
// vars[2] = Played sound

void StateLowRepeatPunching_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = rapTicks;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateLowRepeatPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (!fighter->exitingState)
    {
        impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowPunch);
        updateSpriteAnimator(spriteAnimator, *fighter->punchLowRepeatFrames, fighter->LOW_PUNCH_REPEAT_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);

        if (spriteAnimator->currentFrame == 3 && fighter->vars[2] == 0)
        {
            fighter->vars[2] = 1;
            fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
        }

        if (fighter->vars[0] > 0)
        {
            //stay here in this state, because the player keeps pressing LP
            fighter->vars[0] = 0;
            fighter->vars[1] = rapTicks; //extend the timer 
            fighter->vars[2] = 0;
        }
        else if (rapTicks >= fighter->vars[1] + 30)
        {
            fighter->exitingState = true;     
            spriteAnimator->currentFrame = 3;
            spriteAnimator->lastTick = rapTicks;
        }
    }
    else
    {
        //we're exiting, so play the Low Punch exit animation
        updateSpriteAnimator(spriteAnimator, *fighter->punchLowFrames, fighter->LOW_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateLowRepeatPunching_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateLowRepeatPunching_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->ButtonReleased && fighter->pad & JAGPAD_C)
    {
        fighter->vars[0]++;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIGH PUNCHING
// vars[0] = LP button tap count, if == 2, goto STATE_LOW_REPEAT_PUNCHINIG
// vars[2] = Played sound

void StateHighPunching_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateHighPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->punchHighFrames, fighter->HIGH_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (spriteAnimator->currentFrame == 2 && fighter->vars[2] == 0)
    {
        fighter->vars[2] = 1;
        fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);        
    }

    if (fighter->vars[0] >= 1)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_REPEAT_PUNCHING, fighter, spriteAnimator);
        return;
    }
    else if (animationIsComplete(spriteAnimator, fighter->HIGH_PUNCH_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }
}

void StateHighPunching_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHighPunching_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->ButtonReleased && (fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7))
    {
        fighter->vars[0]++;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIGH REPEAT PUNCHING
// vars[0] = LP button tap count to see if the player is spamming the LP button
// vars[1] = TIMEOUT
// vars[2] = Played sound

void StateHighRepeatPunching_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = rapTicks;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateHighRepeatPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (!fighter->exitingState)
    {
        impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameHighPunch);
        updateSpriteAnimator(spriteAnimator, *fighter->punchHighRepeatFrames, fighter->HIGH_PUNCH_REPEAT_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);

        if (spriteAnimator->currentFrame == 3 && fighter->vars[2] == 0)
        {
            fighter->vars[2] = 1;
            fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
        }

        if (fighter->vars[0] > 0)
        {
            //stay here in this state, because the player keeps pressing LP
            fighter->vars[0] = 0;
            fighter->vars[1] = rapTicks; //extend the timer 
            fighter->vars[2] = 0;
        }
        else if (rapTicks >= fighter->vars[1] + 30)
        {
            fighter->exitingState = true;     
            spriteAnimator->currentFrame = 3;
            spriteAnimator->lastTick = rapTicks;
        }
    }
    else
    {
        //we're exiting, so play the Low Punch exit animation
        updateSpriteAnimator(spriteAnimator, *fighter->punchLowFrames, fighter->LOW_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateHighRepeatPunching_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHighRepeatPunching_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->ButtonReleased && (fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7))
    {
        fighter->vars[0]++;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// LOW KICKING
// vars[2] = Played sound

void StateLowKicking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateLowKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowKick);
    updateSpriteAnimator(spriteAnimator, *fighter->kickLowFrames, fighter->LOW_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (spriteAnimator->currentFrame == 2 && fighter->vars[2] == 0)
    {
        fighter->vars[2] = 1;
        fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);        
    }

    if (animationIsComplete(spriteAnimator, fighter->LOW_KICK_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateLowKicking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateLowKicking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIGH KICKING
// vars[2] = Played sound

void StateHighKicking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateHighKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameHighKick);
    updateSpriteAnimator(spriteAnimator, *fighter->kickHighFrames, fighter->HIGH_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (spriteAnimator->currentFrame == 2 && fighter->vars[2] == 0)
    {
        fighter->vars[2] = 1;
        fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);        
    }

    if (animationIsComplete(spriteAnimator, fighter->HIGH_KICK_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateHighKicking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHighKicking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// ROUNDHOUSE KICKING
// vars[2] = Played sound

void StateRoundhouseKicking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateRoundhouseKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameRoundhouse);
    updateSpriteAnimator(spriteAnimator, *fighter->roundhouseFrames, fighter->ROUNDHOUSE_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->ROUNDHOUSE_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateRoundhouseKicking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateRoundhouseKicking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// UPPERCUT
// vars[2] = Played sound

void StateUppercutting_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateUppercutting_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameUppercut);
    updateSpriteAnimator(spriteAnimator, *fighter->uppercutFrames, fighter->UPPERCUT_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->UPPERCUT_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateUppercutting_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateUppercutting_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// DUCK KICKING
// vars[2] = Played sound

void StateDuckKicking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateDuckKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameDuckKick);
    updateSpriteAnimator(spriteAnimator, *fighter->duckKickFrames, fighter->DUCK_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->DUCK_KICK_FRAME_COUNT))
    {
        fighter->vars[0] = 1;
        stateMachineGoto(stateMachine, STATE_DUCKING, fighter, spriteAnimator);
    }
}

void StateDuckKicking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateDuckKicking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMP PUNCHING

void StateJumpPunching_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighter->positionY += JumpOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumpPunching_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //show key frame
    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 1, *fighter->jumpPunchFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateJumpPunching_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMP KICKING

void StateJumpKicking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpKickFrames, fighter->JUMP_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighter->positionY += JumpOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumpKicking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //show key frame
    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 1, *fighter->jumpKickFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateJumpKicking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SWEEPING
// vars[2] = Played sound

void StateSweeping_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateSweeping_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameSweep);
    updateSpriteAnimator(spriteAnimator, *fighter->sweepFrames, fighter->SWEEP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->SWEEP_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateSweeping_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateSweeping_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING KICKING FORWARD
// vars[0] == JumpIndex (for the JumpOffset array)
// vars[1] == Contact Made, drop to the floor and stop the X movement

void StateJumpingKickingForward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->vars[1] = 0;
    fighter->lastTicks = rapTicks;

    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingKickingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpDropKickFrames, 3, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (fighter->vars[1] == 0)
        {
            //we haven't made contact yet, so keep moving forward.
            fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction);        
        }
        
        fighter->positionY += FlipOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumpingKickingForward_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //show key frame
    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 2, *fighter->jumpDropKickFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

    //stop moving forward
    fighter->vars[1] = 1;
}

void StateJumpingKickingForward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING KICKING BACKWARD
// vars[0] == JumpIndex (for the JumpOffset array)

void StateJumpingKickingBackward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingKickingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpDropKickFrames, 3, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction * -1);
        fighter->positionY += FlipOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumpingKickingBackward_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //show key frame
    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 1, *fighter->jumpDropKickFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateJumpingKickingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING PUNCHING FORWARD
// vars[0] == JumpIndex (for the JumpOffset array)
// vars[1] == Made Contact

void StateJumpingPunchingForward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->vars[1] = 0;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingPunchingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (fighter->vars[1] == 0)
        {
            fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction);
        }
        
        fighter->positionY += FlipOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumpingPunchingForward_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //show key frame
    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 1, *fighter->jumpPunchFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);    

    //drop to the floor
    fighter->vars[1] = 1;
}

void StateJumpingPunchingForward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING PUNCHING BACKWARD
// vars[0] == JumpIndex (for the JumpOffset array)

void StateJumpingPunchingBackward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingPunchingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction * -1);
        fighter->positionY += FlipOffsets[fighter->vars[0]];
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateJumpingPunchingBackward_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //show key frame
    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 1, *fighter->jumpPunchFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateJumpingPunchingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT LOW

void StateHitLow_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    fighterTakeDamage(fighter, fighter->pendingDamage);    
}

void StateHitLow_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    updateSpriteAnimator(spriteAnimator, *fighter->hitLowFrames, fighter->HIT_LOW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_LOW_FRAME_COUNT))
    {
        fighter->IsBeingDamaged = false;
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateHitLow_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitLow_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT HIGH

void StateHitHigh_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);

    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    fighterTakeDamage(fighter, fighter->pendingDamage);    
    bloodSpray(fighter->positionX - (10 * fighter->direction), fighter->positionY - 10, fighter->direction);
}

void StateHitHigh_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    updateSpriteAnimator(spriteAnimator, *fighter->hitHighFrames, fighter->HIT_HIGH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_HIGH_FRAME_COUNT))
    {
        fighter->IsBeingDamaged = false;
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateHitHigh_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitHigh_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT SWEEP

void StateHitSweep_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    fighterTakeDamage(fighter, fighter->pendingDamage);
}

void StateHitSweep_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    updateSpriteAnimator(spriteAnimator, *fighter->hitSweepFrames, fighter->HIT_SWEEP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_SWEEP_FRAME_COUNT))
    {
        sfxThud(fighter->soundHandler);
        bgShake(false);
        fighter->IsBeingDamaged = false;
        stateMachineGoto(stateMachine, STATE_GETUP, fighter, spriteAnimator);
    }
}

void StateHitSweep_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitSweep_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// GET UP

void StateGetUp_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;

    if (fighter->fighterIndex == RAIDEN)
    {
        sfxRaidenTeleport(fighter->soundHandler);
    }
}

void StateGetUp_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    updateSpriteAnimator(spriteAnimator, *fighter->kipUpFrames, fighter->KIPUP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->KIPUP_FRAME_COUNT))
    {
        fighter->IsBeingDamaged = false;
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateGetUp_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateGetUp_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT BACK
// vars[0] = Played Sound

void StateHitBack_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);

    if (fighter->NoBlood)
        return;

    bloodGlob(fighter->positionX - (40 * fighter->direction), fighter->positionY + 0, fighter->direction);
    bloodDrop(fighter->positionX - (40 * fighter->direction) + (40 * fighter->direction), fighter->positionY - 30, fighter->direction);
}

void StateHitBack_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (spriteAnimator->currentFrame == 2 && fighter->vars[0] == 0)
    {
        fighter->vars[0] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_KNOCKBACK_SPEED * -fighter->direction);
    }

    updateSpriteAnimator(spriteAnimator, *fighter->hitBackFrames, fighter->HIT_BACK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_BACK_FRAME_COUNT))
    {
        fighter->IsBeingDamaged = false;
        fighter->NoBlood = false;
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateHitBack_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitBack_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT BACK LOW
// vars[0] = Played Sound

void StateHitBackLow_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);
}

void StateHitBackLow_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (spriteAnimator->currentFrame == 1 && fighter->vars[0] == 0)
    {
        fighter->vars[0] = 1;
        fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_KNOCKBACK_SPEED * -fighter->direction);
    }

    updateSpriteAnimator(spriteAnimator, *fighter->hitLowFrames, fighter->HIT_LOW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_LOW_FRAME_COUNT))
    {
        fighter->IsBeingDamaged = false;
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateHitBackLow_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitBackLow_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT UPPERCUT
// vars[0] = Fall index
// vars[1] = Played Sound
// vars[2] = Played Sound

void StateHitUppercut_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);
    bgShake(false);
    //bloodSquirt(fighter->positionX - (40 * fighter->direction), fighter->positionY - 10);
    bloodSquirt(fighter->positionX - (40 * fighter->direction)+20, fighter->positionY - 30);
    //bloodSquirt(fighter->positionX - (40 * fighter->direction)+10, fighter->positionY - 50);

    //bloodDrop(fighter->positionX - (40 * fighter->direction) + (0 * fighter->direction), fighter->positionY - 40, fighter->direction);
    bloodDrop(fighter->positionX - (40 * fighter->direction) + (40 * fighter->direction * -1), fighter->positionY - 40, fighter->direction * -1);
    bloodDrop(fighter->positionX - (40 * fighter->direction) + (20 * fighter->direction), fighter->positionY - 50, fighter->direction);
    bloodDrop(fighter->positionX - (40 * fighter->direction) + (20 * fighter->direction * -1), fighter->positionY - 50, fighter->direction * -1);
}

void StateHitUppercut_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->vars[0] == 1 && fighter->vars[1] == 0)
    {
        fighter->vars[1] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }
    else if (fighter->vars[0] == 8 && fighter->vars[2] == 0)
    {
        fighter->vars[2] = 1;
        fighterPlayUppercutReaction(fighter->soundHandler);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_UPPERCUT_X_SPEED * -fighter->direction);
        fighter->positionY += UppercutOffsets[fighter->vars[0]];
        fighter->vars[0]++;

        if (fighter->vars[0] == 25)
        {
            fighterSetOnFloor(fighter);
            bgShake(false);
            sfxThud(fighter->soundHandler);
            fighter->IsBeingDamaged = false;
            stateMachineGoto(stateMachine, STATE_LAYDOWN, fighter, spriteAnimator);
        }
        
        animateFrame(spriteAnimator, spriteAnimator->spriteIndex, fighter->vars[0], *fighter->hitUppercutFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
        fighter->lastTicks = rapTicks;
    }
}

void StateHitUppercut_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitUppercut_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// LAY DOWN

void StateLaydown_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateLaydown_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, fighter->HIT_FALL_FRAME_COUNT-1, *fighter->hitFallFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 20)
    {
        stateMachineGoto(stateMachine, STATE_GETUP, fighter, spriteAnimator);
    }
}

void StateLaydown_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateLaydown_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT DROPKICK
// vars[0] = Frame index
// vars[1] = Played Sound
// vars[2] = Played Sound

void StateHitDropKick_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = 4;  //start animation as they are falling
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);
}

void StateHitDropKick_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (spriteAnimator->currentFrame == 1 && fighter->vars[1] == 0)
    {
        fighter->vars[1] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }
    else if (spriteAnimator->currentFrame == 3 && fighter->vars[2] == 0)
    {
        fighter->vars[2] = 1;
        fighterPlayUppercutReaction(fighter->soundHandler);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_DROPKICK_X_SPEED * -fighter->direction);
        fighter->positionY += UppercutOffsets[fighter->vars[0]];
        fighter->vars[0]++;

        if (fighter->vars[0] == 25)
        {
            fighterSetOnFloor(fighter);
            bgShake(false);
            sfxThud(fighter->soundHandler);
            fighter->IsBeingDamaged = false;
            stateMachineGoto(stateMachine, STATE_LAYDOWN, fighter, spriteAnimator);
        }
        
        animateFrame(spriteAnimator, spriteAnimator->spriteIndex, fighter->vars[0], *fighter->hitUppercutFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
        fighter->lastTicks = rapTicks;
    }
}

void StateHitDropKick_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitDropKick_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT AIR
// vars[0] = Frame index
// vars[1] = Played Sound

void StateHitAir_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = 4;  //start animation as they are falling
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);
}

void StateHitAir_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (spriteAnimator->currentFrame == 1 && fighter->vars[1] == 0)
    {
        fighter->vars[1] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_HITAIR_X_SPEED * -fighter->direction);
        fighter->positionY += UppercutOffsets[fighter->vars[0]];
        fighter->vars[0]++;

        if (fighter->vars[0] == 25)
        {
            fighterSetOnFloor(fighter);
            bgShake(false);
            sfxThud(fighter->soundHandler);
            fighter->IsBeingDamaged = false;
            stateMachineGoto(stateMachine, STATE_LAYDOWN, fighter, spriteAnimator);
        }
        
        animateFrame(spriteAnimator, spriteAnimator->spriteIndex, fighter->vars[0], *fighter->hitUppercutFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
        fighter->lastTicks = rapTicks;
    }
}

void StateHitAir_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitAir_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT BLOCKING
// vars[0] = rapTicks for timing

void StateHitBlocking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxBlock(fighter->soundHandler);
}

void StateHitBlocking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (rapTicks >= fighter->vars[0] + 10)
    {
        fighter->IsBeingDamaged = false;
        stateMachineGoto(stateMachine, STATE_BLOCKING, fighter, spriteAnimator);
    }

    updateSpriteAnimator(spriteAnimator, *fighter->blockHitFrames, fighter->BLOCK_HIT_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateHitBlocking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitBlocking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT DUCKING BLOCKING

void StateHitDuckingBlocking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxBlock(fighter->soundHandler);
}

void StateHitDuckingBlocking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (animationIsComplete(spriteAnimator, fighter->BLOCK_DUCK_HIT_FRAME_COUNT))
    {
        fighter->IsBeingDamaged = false;
        stateMachineGoto(stateMachine, STATE_BLOCKING, fighter, spriteAnimator);
    }

    updateSpriteAnimator(spriteAnimator, *fighter->blockDuckHitFrames, fighter->BLOCK_DUCK_HIT_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateHitDuckingBlocking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitDuckingBlocking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT BLOCKING W/ KNOCKBACK
// vars[0]  = TICKS
void StateHitBlockingKnockback_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxBlock(fighter->soundHandler);
}

void StateHitBlockingKnockback_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //if (animationIsComplete(spriteAnimator, fighter->BLOCK_HIT_FRAME_COUNT))
    if (rapTicks >= fighter->vars[0] + 20)
    {
        fighter->IsBeingDamaged = false;
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_BLOCKING_KNOCKBACK_X_SPEED * -fighter->direction);
        fighter->lastTicks = rapTicks;
    }

    updateSpriteAnimator(spriteAnimator, *fighter->blockHitFrames, fighter->BLOCK_HIT_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateHitBlockingKnockback_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitBlockingKnockback_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// BODY PUNCHING
// vars[0] = Played Sound

void StateBodyPunching_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    fighter->lastTicks = rapTicks;
    fighter->vars[0] = 0;
}

void StateBodyPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameBodyPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->bodyPunchFrames, fighter->BODY_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (fighter->vars[0] == 0 && spriteAnimator->currentFrame == 2)
    {
        fighter->vars[0] = 1;
        if (fighter->fighterIndex == KANO)
        {
            sfxKanoHeadbutt(fighter->soundHandler);
        }
        else
        {
            sfxImpact(fighter->soundHandler);
        }
    }

    if (animationIsComplete(spriteAnimator, fighter->BODY_PUNCH_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateBodyPunching_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateBodyPunching_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// BODY KICKING
// vars[0] = Played Sound

void StateBodyKicking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    fighter->lastTicks = rapTicks;
    fighter->vars[0] = 0;
}

void StateBodyKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameBodyKick);
    updateSpriteAnimator(spriteAnimator, *fighter->bodyKickFrames, fighter->BODY_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (fighter->vars[0] == 0 && spriteAnimator->currentFrame == 2)
    {
        fighter->vars[0] = 1;
        sfxImpact(fighter->soundHandler);
    }

    if (animationIsComplete(spriteAnimator, fighter->BODY_KICK_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateBodyKicking_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateBodyKicking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// THROWING

void StateThrowing_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsClose = false;
    fighter->vars[0] = 0;
    switch (fighter->fighterIndex)
    {
        case SCORPION:
        case SUBZERO:
            sfxThrowNinja(fighter->soundHandler);
            break;
        case SONYA:
            sfxThrowFemale(fighter->soundHandler);
            break;
        default:
            sfxThrowMale(fighter->soundHandler);
            break;
    }
}

void StateThrowing_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameThrow);
    updateSpriteAnimator(spriteAnimator, *fighter->throwFrames, fighter->THROW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->THROW_FRAME_COUNT))
    {
        fighter->IsClose = false;
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateThrowing_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateThrowing_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// BEING THROWN
// vars[0] = thrown index

void StateBeingThrown_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = 8;  //start animation as they are falling
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    //Snap forward 32 pixels
    fighterPositionXAdd(fighter, 32 * fighter->direction);
}

void StateBeingThrown_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (spriteAnimator->currentFrame < 2)
    {
        //lift 'em
        updateSpriteAnimator(spriteAnimator, *fighter->beingThrownFrames, fighter->BEING_THROWN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        //throw 'em
        if (rapTicks >= fighter->lastTicks + 2)
        {
            if (fighter->vars[0] < 22)
            {
                animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 2, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->vars[0] == 22)
            {
                animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 3, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->vars[0] == 23)
            {
                animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 4, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->vars[0] >= 24)
            {
                animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 5, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }

            fighterPositionXAdd(fighter, FIGHTER_THROWN_X_SPEED * fighter->direction);
            fighter->positionY += UppercutOffsets[fighter->vars[0]];
            fighter->vars[0]++;

            if (fighter->vars[0] == 25)
            {
                fighterTakeDamage(fighter, fighter->pendingDamage);
                fighterSetOnFloor(fighter);
                bgShake(false);
                sfxThud(fighter->soundHandler);
                fighter->IsBeingDamaged = false;
                stateMachineGoto(stateMachine, STATE_LAYDOWN, fighter, spriteAnimator);
            }
            
            fighter->lastTicks = rapTicks;
        }
    }
}

void StateBeingThrown_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateBeingThrown_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// TURNING AROUND
// vars[0] = Turned Around

void StateTurningAround_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->vars[0] = 0;
    spriteAnimator->currentFrame = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = false;
}

void StateTurningAround_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->vars[0] == 0)
    {
        //play turn animation forward
        if (animationIsComplete(spriteAnimator, fighter->TURN_FRAME_COUNT))
        {
            //turn the fighter around
            fighter->vars[0] = 1;
            fighterTurnInstantly(fighter);
            impactFrameReset(fighter);            
        }

        updateSpriteAnimator(spriteAnimator, *fighter->turnFrames, fighter->TURN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        //play turn animation in reverse
        if (spriteAnimator->currentFrame <= 0)
        {
            fighter->IsTurning = false;
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        }

        updateSpriteAnimator(spriteAnimator, *fighter->turnFrames, fighter->TURN_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
}

void StateTurningAround_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!animationIsComplete(spriteAnimator, fighter->TURN_FRAME_COUNT))
    {
        //turn the fighter around
        fighter->vars[0] = 1;
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
        
        impactFrameReset(fighter);            
    }

    fighter->IsBeingDamaged = false;
    fighter->IsTurning = false;
    stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
}

void StateTurningAround_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// CAGE SPECIAL GREENBOLT
// vars[0] = HasSetupProjectileEnd
// vars[1] = rapTicks
// vars[2] = HasSetupProjectileMovement

void StateThrowingProjectile_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = 0;
    fighter->vars[1] = rapTicks;
    fighter->vars[2] = 0;
    fighter->ProjectileMadeContact = false;
    fighter->projectilePositionX = fighter->positionX;
    fighter->projectilePositionX += fighter->direction == -1 ? 0 : 0;
    fighter->projectilePositionY = fighter->positionY;

    if (fighter->fighterIndex == KANO || fighter->fighterIndex == CAGE)
    {
        fighter->projectilePositionY -= 8;
    }

    fighter->projectileAnimator->currentFrame = 0;
    fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
    fighter->projectileAnimator->base = BMP_PROJECTILES;
    fighter->lastTicks = rapTicks;
    sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gwidth = 104;
    sprite[fighter->lightningSpriteIndex].hbox = 16;
    sprite[fighter->lightningSpriteIndex].vbox = 16; 

    switch(fighter->fighterIndex)
    {
        case CAGE:
            jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_CAGE_clut),13,16);
            sfxCageGreenbolt(fighter->soundHandler);
            break;
        case KANO:
            jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_KANO_clut),13,16);
            sfxKanoKnife(fighter->soundHandler);
            break;
        case RAIDEN:
            jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_RAIDEN_clut),13,16);
            sfxRaidenLightning(fighter->soundHandler);
            break;
        case KANG:
            jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_KANG_clut),13,16);
            sfxCageGreenbolt(fighter->soundHandler);
            break;
            case SONYA:
            jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SONYA_clut),13,16);
            sfxSonyaRings(fighter->soundHandler);
            break;
        default:
            break;
    }
}

void StateThrowingProjectile_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (!fighter->ProjectileMadeContact)
	{
		if (fighter->fighterIndex != RAIDEN && animationIsComplete(spriteAnimator, fighter->SPECIAL_1_FRAME_COUNT)
            || fighter->fighterIndex == RAIDEN && animationIsComplete(fighter->projectileAnimator, 8))
		{
            if (fighter->fighterIndex == KANO && fighter->vars[2] == 0)
            {
                fighter->vars[2] = 1;
                fighter->projectilePositionX += 16 * fighter->direction;
            }
            else if (fighter->fighterIndex == RAIDEN && fighter->vars[2] == 0)
            {
                fighter->vars[2] = 1;
                fighter->projectilePositionX += 64 * fighter->direction;
            }

            if (rapTicks >= fighter->vars[1] + 2)
            {
                fighter->projectilePositionX += (FIGHTER_PROJECTILE_X_SPEED * fighter->direction);
                fighter->vars[1] = rapTicks;
            }

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
                sprite[fighter->lightningSpriteIndex].was_hit = -1;
                sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
                playerinputInit(fighter);
				stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
                return;
			}
		}

		updateSpriteAnimator(spriteAnimator, *fighter->special1Frames, fighter->SPECIAL_1_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, fighter->PROJECTILE_FRAME_COUNT, true, false, fighter->projectilePositionX, fighter->projectilePositionY, fighter->direction);
	}
	else
	{
		if (fighter->vars[0] == 0)
		{
			fighter->vars[0] = 1;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (animationIsComplete(fighter->projectileAnimator, fighter->PROJECTILE_END_FRAME_COUNT))
		{
            sprite[fighter->lightningSpriteIndex].was_hit = -1;
            sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
            playerinputInit(fighter);    
            //fighterResetRaidenLightning(fighter);
			stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
		}

        updateSpriteAnimator(spriteAnimator, *fighter->special1Frames, fighter->SPECIAL_1_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, fighter->PROJECTILE_END_FRAME_COUNT, true, false, fighter->projectilePositionX, fighter->projectilePositionY, fighter->direction);
	}

    if (sprite[fighter->lightningSpriteIndex].active == R_is_inactive)
        sprite[fighter->lightningSpriteIndex].active = R_is_active;
}

void StateThrowingProjectile_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateThrowingProjectile_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// CAGE SHADOW KICK
// vars[0] = ticks
// vars[1] = distance traveled
// vars[2] = current frame

void StateCageShadowKick_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    fighter->vars[0] = rapTicks;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->ProjectileMadeContact = false;
    fighter->projectilePositionX = fighter->positionX;
    
    fighter->projectileAnimator->currentFrame = 0;
    fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
    fighter->projectileAnimator->base = BMP_PROJECTILES;
    fighter->lastTicks = rapTicks;
    sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gwidth = 104;
    sprite[fighter->lightningSpriteIndex].hbox = 16;
    sprite[fighter->lightningSpriteIndex].vbox = 16;
    sprite[fighter->lightningSpriteIndex].x_ = fighter->projectilePositionX;
    sprite[fighter->lightningSpriteIndex].y_ = fighter->positionY - 1;
    sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    
    switch(fighter->fighterIndex)
    {
        case CAGE:
            jsfLoadClut((unsigned short *)(void *)(BMP_PAL_CAGE_SHADOW_clut),13,16);
            sfxCageGreenbolt(fighter->soundHandler);
            break;
        default:
            break;
    }
}

void StateCageShadowKick_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //using impactFrameJumpKick because it's always ON.
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);

    if (fighter->vars[2] < 3 || fighter->vars[2] > 3)
    {
        //animate the first 3 frames and the last 3 frames
        if (rapTicks >= fighter->vars[0] + 5)
        {
            fighter->vars[2]++;
            fighter->vars[0] = rapTicks;
        }

        if (fighter->vars[2] > 6)
        {
            //out animation is done, go back to idle
            sprite[fighter->lightningSpriteIndex].was_hit = -1;
            sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
            playerinputInit(fighter);    
            fighterResetRaidenLightning(fighter);
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
        }
    }
    else if (fighter->vars[2] == 3) //leg extended, shadow kick frame
    {
        if (sprite[fighter->lightningSpriteIndex].active == R_is_inactive)
        {
            sprite[fighter->lightningSpriteIndex].active = R_is_active;
        }

        if (fighter->vars[1] < FIGHTER_CAGE_SHADOW_KICK_TOTAL_DISTANCE && rapTicks >= fighter->vars[0] + 2 && !fighter->ProjectileMadeContact)
        {
            fighterPositionXAdd(fighter, FIGHTER_CAGE_SHADOW_KICK_X_SPEED * fighter->direction);
            fighter->vars[1] += FIGHTER_CAGE_SHADOW_KICK_X_SPEED;
            fighter->vars[0] = rapTicks;
        }
        else if (fighter->vars[1] >= FIGHTER_CAGE_SHADOW_KICK_TOTAL_DISTANCE || fighter->ProjectileMadeContact)
        {
            if (rapTicks >= fighter->vars[0] + 2)
            {
                //zip the shadow back behind Johnny Cage
                fighter->projectilePositionX += FIGHTER_CAGE_SHADOW_KICK_ZIPBACK_X_SPEED * fighter->direction;

                if ((fighter->direction == 1 && sprite[fighter->lightningSpriteIndex].x_ > sprite[fighter->spriteIndex].x_)
                    || (fighter->direction == -1 && sprite[fighter->lightningSpriteIndex].x_ < sprite[fighter->spriteIndex].x_))
                {
                    //shadow kick is done, let's animate out and go back to idle
                    sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
                    fighter->vars[2] = 4;
                    fighter->vars[0] = rapTicks;
                }

                fighter->vars[0] = rapTicks;
            }
        }
    }

    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, fighter->vars[2], *fighter->kickLowFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
    updateSpriteAnimator(fighter->projectileAnimator, cageShadowKickFrames, 1, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
}

void StateCageShadowKick_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->ProjectileMadeContact = true;
}

void StateCageShadowKick_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// CAGE NUT PUNCH
// vars[0] = frameIndex for non-nut punch
// vars[1] = direction for non-nut punch

void StateCageNutPunch_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
}

void StateCageNutPunch_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->opponentIndex == CAGE || fighter->opponentIndex == SONYA)
    {
        animateFrame(spriteAnimator, spriteAnimator->spriteIndex, fighter->vars[0], *fighter->special3Frames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

        if (rapTicks >= fighter->lastTicks + 4)
        {
            if (fighter->vars[1] == 0)
            {
                fighter->vars[0]++;

                if (fighter->vars[0] == 4)
                {
                    fighter->vars[0] = 3;  //stop at frame 3 and go back up
                    fighter->vars[1] = 1;  //change direction to undo the nut punch animation
                }
            }
            else
            {
                fighter->vars[0]--;
            }

            if (fighter->vars[0] == 0 && fighter->vars[1] == 1)
            {
                stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
                return;
            }

            fighter->lastTicks = rapTicks;
        }
    }
    else
    {
        impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameSpecial3);

        if (animationIsComplete(spriteAnimator, fighter->SPECIAL_3_FRAME_COUNT))
        {
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
        }

        updateSpriteAnimator(spriteAnimator, *fighter->special3Frames, fighter->SPECIAL_3_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
}

void StateCageNutPunch_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateCageNutPunch_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT NUTS
// vars[0] = rapTicks
// vars[1] = played sound

void StateHitNuts_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->vars[0] = rapTicks;
    fighter->vars[1] = 0;
    sfxImpact(fighter->soundHandler);
    bgShake(false);
}

void StateHitNuts_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (rapTicks >= fighter->vars[0] + 10 && fighter->vars[1] == 0)
    {
        fighter->vars[1] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }

    if (rapTicks >= fighter->vars[0] + 60)
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }

    updateSpriteAnimator(spriteAnimator, *fighter->hitNutsFrames, 2, true, true, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateHitNuts_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitNuts_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// KANO CANNON BALL
// vars[0] = rapTicks
// vars[1] = charged forward
// vars[2] = jump index

void StateKanoCannonBall_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->MadeContact = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->vars[0] = rapTicks;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    sfxKanoCannonBallStart(fighter->soundHandler);
}

void StateKanoCannonBall_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //using impactFrameJumpKick because it's always ON.
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);
    
    if ((rapTicks >= fighter->vars[0] + (3 * 60) || (!(fighter->pad & JAGPAD_B) && !(fighter->pad & JAGPAD_8))) && fighter->vars[1] == 0)
    {
        fighter->vars[1] = 1;
        sfxKanoCannonBall(fighter->soundHandler);
    }

    if (fighter->vars[1] == 1 && !fighter->MadeContact)
    {
        //Kano's CannonBall is charging forward
        fighterPositionXAdd(fighter, FIGHTER_KANO_CANNONBALL_X_SPEED * fighter->direction);
    }

    if (fighter->MadeContact)
    {
        //Made Contact - follow the jump pattern along the Y to bounce up, then land back in IDLE
        if (rapTicks >= fighter->lastTicks + 2)
        {
            fighter->positionY += JumpOffsets[fighter->vars[2]];
            fighter->vars[2]++;
            fighter->lastTicks = rapTicks;
        }

        if (fighter->vars[2] > 19)
        {
            //landed
            fighterSetOnFloor(fighter);
            impactFrameReset(fighter);
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
        }
    }

    updateSpriteAnimator(spriteAnimator, *fighter->special2Frames, fighter->SPECIAL_2_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateKanoCannonBall_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->MadeContact = true;
}

void StateKanoCannonBall_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// RAIDEN TORPEDO
// vars[0] = made contact
// vars[1] = jump index
// vars[2] = distance traveled

void StateRaidenTorpedo_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->MadeContact = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;

    sfxRaidenTorpedo(fighter->soundHandler);
}

void StateRaidenTorpedo_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //using impactFrameJumpKick because it's always ON.
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);

    if (animationIsComplete(spriteAnimator, fighter->SPECIAL_2_FRAME_COUNT) && fighter->vars[0] == 0)
    {
        //Raiden is torpedo-ing forward
        fighterPositionXAdd(fighter, FIGHTER_RAIDEN_TORPEDO_X_SPEED * fighter->direction);
        fighter->vars[2] += FIGHTER_RAIDEN_TORPEDO_X_SPEED;
    }

    if (fighter->vars[2] >= FIGHTER_RAIDEN_TORPEDO_MAX_DISTANCE
         || fighter->direction == 1 && cameraFighterIsAtBoundsRight(fighter)
         || fighter->direction == -1 && cameraFighterIsAtBoundsLeft(fighter)
         || fighter->vars[0] == 1)
    {
        if (fighter->vars[0] == 0)
        {
            fighter->vars[0] = 1;
            sfxImpact(fighter->soundHandler);
            bgShake(false);
        }
        //We've reached the end of this Torpedo move, follow the jump pattern along the Y to bounce up, then land back in IDLE
        if (rapTicks >= fighter->lastTicks + 2)
        {
            fighterPositionXAdd(fighter, FIGHTER_RAIDEN_TORPEDO_DONE_X_SPEED * fighter->direction * -1);
            fighter->positionY += JumpOffsets[fighter->vars[1]];
            fighter->vars[1]++;
            fighter->lastTicks = rapTicks;
        }

        if (fighter->vars[1] > 19)
        {
            //landed
            fighterSetOnFloor(fighter);
            impactFrameReset(fighter);
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
        }
    }

    if (fighter->vars[0] == 0 && !fighter->MadeContact)
    {
        updateSpriteAnimator(spriteAnimator, *fighter->special2Frames, fighter->SPECIAL_2_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        updateSpriteAnimator(spriteAnimator, *fighter->special2EndFrames, 7, true, true, fighter->positionX, fighter->positionY, fighter->direction);
    }
}

void StateRaidenTorpedo_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->vars[0] = 1;
}

void StateRaidenTorpedo_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT TORPEDO

void StateHitTorpedo_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    fighter->exitingState = false;
    fighter->MadeContact = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
}

void StateHitTorpedo_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{    
    if ((fighter->direction == 1 && !cameraFighterIsAtBoundsLeft(fighter))
        || (fighter->direction == -1 && !cameraFighterIsAtBoundsRight(fighter)))
    {
        //Fighter is being knocked back by Raiden's torpedo
        fighterPositionXAdd(fighter, FIGHTER_RAIDEN_TORPEDO_X_SPEED * fighter->direction * -1);
    }

    setAnimationFrame(fighter->spriteIndex, spriteAnimator, fighter->hitUppercutFrames[0], fighter->positionX, fighter->positionY, fighter->direction);
}

void StateHitTorpedo_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->MadeContact = true;
}

void StateHitTorpedo_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// RAIDEN TELEPORT
// vars[0] = teleported

void StateRaidenTeleport_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->MadeContact = false;
    spriteAnimator->currentFrame = fighter->SPECIAL_3_FRAME_COUNT - 1;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->vars[0] = 0;
    sfxRaidenTeleport(fighter->soundHandler);
}

void StateRaidenTeleport_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (spriteAnimator->currentFrame == 0 && fighter->vars[0] == 0)
    {
        if (fighter->direction == 1)
        {
            if (!cameraFighterIsAtBoundsRight(opponent))
            {
                fighter->positionX = opponent->positionX + FIGHTER_WIDTH + FIGHTER_RAIDEN_TELEPORT_DISTANCE;
                //Turn Raiden Around
                fighter->direction *= -1;
                sprite[fighter->spriteIndex].flip = R_is_flipped;
                sprite[fighter->spriteIndex-1].flip = R_is_flipped;
                sprite[fighter->lightningSpriteIndex].flip = R_is_flipped;
                impactFrameReset(fighter);                
            }
            else
            {
                fighter->positionX = opponent->positionX - FIGHTER_WIDTH - FIGHTER_RAIDEN_TELEPORT_DISTANCE;
            }
        }
        else if (fighter->direction == -1)
        {
            if (!cameraFighterIsAtBoundsLeft(opponent))
            {
                fighter->positionX = opponent->positionX - FIGHTER_WIDTH - FIGHTER_RAIDEN_TELEPORT_DISTANCE;
                //Turn Raiden Around
                fighter->direction *= -1;
                sprite[fighter->spriteIndex].flip = R_is_normal;
                sprite[fighter->spriteIndex-1].flip = R_is_normal;
                sprite[fighter->lightningSpriteIndex].flip = R_is_normal;
                impactFrameReset(fighter);
            }
            else
            {
                fighter->positionX = opponent->positionX + FIGHTER_WIDTH + FIGHTER_RAIDEN_TELEPORT_DISTANCE;
            }
        }
        
        
        fighter->vars[0] = 1;
    }
    else if (animationIsComplete(spriteAnimator, fighter->SPECIAL_3_FRAME_COUNT) && fighter->vars[0] == 1)
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }

    if (fighter->vars[0] == 0)
    {
        updateSpriteAnimator(spriteAnimator, *fighter->special3Frames, fighter->SPECIAL_3_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        updateSpriteAnimator(spriteAnimator, *fighter->special3Frames, fighter->SPECIAL_3_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
}

void StateRaidenTeleport_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateRaidenTeleport_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// LIU KANG FLYING KICK
// vars[0] = jump index

void StateKangFlyingKick_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->MadeContact = false;
    fighter->vars[0] = 0;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    sfxKangFlyingKick(fighter->soundHandler);
}

void StateKangFlyingKick_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //using impactFrameJumpKick because it's always ON.
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);

    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (!fighter->MadeContact)
        {
            fighterPositionXAdd(fighter, FIGHTER_KANG_FLYING_KICK_X_SPEED * fighter->direction);
        }

        fighter->positionY += JumpOffsets[fighter->vars[0]] > -4 ? JumpOffsets[fighter->vars[0]] : -4;
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->vars[0] > 19)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }

    updateSpriteAnimator(spriteAnimator, *fighter->jumpDropKickFrames, 3, true, false, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateKangFlyingKick_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->MadeContact = true;
}

void StateKangFlyingKick_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SCORPION HARPOON
// vars[0] = HasSetupProjectileMovement
// vars[1] = HasSetupProjectileEnd
// vars[2] = HarpoonFlashDirection

void StateScorpionHarpoon_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->HarpoonBlocked = false;
    fighter->ProjectileMadeContact = false;
    fighter->HarpoonFlashCount = 0;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = 1;
    fighter->projectilePositionX = fighter->positionX;
    fighter->projectilePositionX += fighter->direction == -1 ? FIGHTER_WIDTH : 0;
    fighter->projectileAnimator->currentFrame = 0;
    fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
    fighter->projectileAnimator->base = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gwidth = 104;
    sprite[fighter->lightningSpriteIndex].hbox = 16;
    sprite[fighter->lightningSpriteIndex].vbox = 16;
    sprite[fighter->lightningSpriteIndex].flip = fighter->direction == -1 ? R_is_flipped : R_is_normal;
    sprite[fighter->lightningSpriteIndex].scaled = R_spr_unscale;
    sprite[fighter->lightningSpriteIndex].active = R_is_active;
    sprite[fighter->lightningSpriteIndex].x_ = fighter->projectilePositionX;
    jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SCORPION_clut),13,16);
    sfxScorpionHarpoon(fighter->soundHandler);
    fighter->lastTicks = rapTicks;
}

void StateScorpionHarpoon_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(spriteAnimator, fighter->SPECIAL_1_FRAME_COUNT))
		{
			if (!fighter->vars[0] == 0)
			{
				fighter->vars[0] = 1;
				sfxScorpionHarpoon(fighter->soundHandler);
			}

			fighter->projectilePositionX += (6 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				sprite[fighter->lightningSpriteIndex].was_hit = -1;
                sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
                playerinputInit(fighter);    
				stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
                return;
			}
		}

		updateSpriteAnimator(spriteAnimator, *fighter->special1Frames, fighter->SPECIAL_1_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 19, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else if (fighter->HarpoonBlocked)
	{
		if (!fighter->vars[1] == 0)
		{
			fighter->vars[1] = 1;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (fighter->vars[2] == -1)
		{
			jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SCORPION_clut),13,16);
		}
		else
		{
			jsfLoadClut((unsigned short *)(void *)(BMP_P2_SELECTOR_FLASH_clut),13,16);
		}

		fighter->vars[2] *= -1;
		fighter->HarpoonFlashCount++;

		if (fighter->HarpoonFlashCount > 8)
		{
            sprite[fighter->lightningSpriteIndex].was_hit = -1;
            sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
            playerinputInit(fighter);    
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
		}
	}
}

void StateScorpionHarpoon_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateScorpionHarpoon_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT HARPOON
// vars[0] = set HarpoonKnockbackDistance
// vars[1] = rapTicks, so has waited 60 ticks
// vars[2] = set final reeling distance

void StateHitHarpoon_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    bloodImpale(fighter->positionX, fighter->positionY, fighter->direction);
    fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    fighter->vars[0] = 0;
    fighter->vars[1] = rapTicks;
    fighter->vars[2] = 0;
}

void StateHitHarpoon_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->vars[0] == 0)
    {
        fighter->vars[0] = 1;
        if (fighter->direction == -1)
        {
            fighter->HarpoonKnockbackDistance = fighter->positionX - opponent->positionX + FIGHTER_WIDTH;
        }
        else
        {
            fighter->HarpoonKnockbackDistance = opponent->positionX - fighter->positionX + FIGHTER_WIDTH;
        }

        if (fighter->HarpoonKnockbackDistance < HARPOON_MINIMUM_DISTANCE)
        {   
            fighter->HarpoonKnockbackDistance = HARPOON_MINIMUM_DISTANCE - fighter->HarpoonKnockbackDistance;
            fighterSlideToPositionX(fighter, fighter->positionX + (fighter->HarpoonKnockbackDistance * fighter->direction * -1));
        }
        else
        {
            //this fighter is being harpooned far away, so no need to knockback
            fighter->HarpoonKnockbackDistance = 0;
        }

        if (fighter->direction == -1)
        {
            fighter->HarpoonSourceX = opponent->positionX + FIGHTER_WIDTH;
        }
        else
        {
            fighter->HarpoonSourceX = opponent->positionX - FIGHTER_WIDTH;
        }

        fighter->lastTicks = rapTicks;

        sprite[opponent->lightningSpriteIndex].active = R_is_inactive;
    }
    
    if (fighter->HarpoonKnockbackDistance > 0 && fighter->IsSlidingToPositionX && fighter->vars[2] == 0)
    {
        if (fighter->SlidePositionXTarget > fighter->positionX)
        {
            fighterPositionXAdd(fighter, 8);

            if (fighter->positionX >= fighter->SlidePositionXTarget)
            {
                fighter->IsSlidingToPositionX = false;
            }
        }
        else if (fighter->SlidePositionXTarget < fighter->positionX)
        {
            fighterPositionXAdd(fighter, -8);

            if (fighter->positionX <= fighter->SlidePositionXTarget)
            {
                fighter->IsSlidingToPositionX = false;
            }
        }
        fighter->vars[1] = rapTicks;
    }
    else if (rapTicks >= fighter->vars[1] + 60)
    {
        if (fighter->vars[2] == 0)
        {
            fighter->vars[2] = 1;
            fighterSlideToPositionX(fighter, fighter->HarpoonSourceX);
        }

        if (fighter->IsSlidingToPositionX && rapTicks >= fighter->lastTicks + 2)
        {
            if (fighter->SlidePositionXTarget > fighter->positionX)
            {
                fighterPositionXAdd(fighter, 8);

                if (fighter->positionX >= fighter->SlidePositionXTarget)
                {
                    fighter->IsSlidingToPositionX = false;
                }
            }
            else if (fighter->SlidePositionXTarget < fighter->positionX)
            {
                fighterPositionXAdd(fighter, -8);

                if (fighter->positionX <= fighter->SlidePositionXTarget)
                {
                    fighter->IsSlidingToPositionX = false;
                }
            }

            if (fighter->IsSlidingToPositionX == false)
            {
                stateMachineGoto(stateMachine, STATE_STUNNED, fighter, spriteAnimator);
                return;
            }

            fighter->lastTicks = rapTicks;
        }
    }

    setAnimationFrame(fighter->spriteIndex, spriteAnimator, fighter->hitUppercutFrames[0], fighter->positionX, fighter->positionY, fighter->direction);
}

void StateHitHarpoon_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitHarpoon_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SCORPION REELING IN
// vars[0] = Played sound
// vars[1] = HarpoonShakeCount
// vars[2] = rapTicks update scale
void StateScorpionReelingIn_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->vars[2] = rapTicks;
    fighter->HarpoonShakeDirection = 1;
    fighter->HarpoonOffsetY = 32;
    fighter->projectileAnimator->currentFrame = 0;
    fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
    fighter->projectileAnimator->base = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gwidth = 104;
    sprite[fighter->lightningSpriteIndex].hbox = 16;
    sprite[fighter->lightningSpriteIndex].vbox = 16;
    sprite[fighter->lightningSpriteIndex].active = R_is_active;
    sprite[fighter->lightningSpriteIndex].scaled = R_spr_scale;
    jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SCORPION_clut),13,16);
}

void StateScorpionReelingIn_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (rapTicks >= fighter->vars[2] + 2)
    {
        //sprite[fighter->lightningSpriteIndex].scale_x = fighter->HarpoonDistance - 64;
        //sprite[fighter->lightningSpriteIndex].scale_y = 32;
        fighter->vars[2] = rapTicks;
    }

    if (fighter->vars[1] < 8 && rapTicks >= fighter->lastTicks + 2)
    {
        fighter->HarpoonOffsetY += 2 * fighter->HarpoonShakeDirection;
        fighter->HarpoonShakeDirection *= -1;
        fighter->vars[1]++;
        fighter->lastTicks = rapTicks;
    }
    else if (fighter->vars[1] == 8)
    {
        if (fighter->vars[0] == 0)
        {
            fighter->vars[0] = 1;
            sfxScorpionGetOverHere(fighter->soundHandler);
        }

        if (opponent->currentState->Name == STATE_STUNNED)
        {
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
        }
        updateSpriteAnimator(spriteAnimator, *fighter->special1EndFrames, 6, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }

    if (sprite[fighter->lightningSpriteIndex].active == R_is_inactive)
    {
        sprite[fighter->lightningSpriteIndex].active = R_is_active;
    }

    if (fighter->direction == -1)
    {
        fighter->HarpoonDistance = opponent->positionX - fighter->positionX + FIGHTER_WIDTH;
        //fighter->HarpoonCenterX = opponent->positionX + (FIGHTER_WIDTH / 2) - 8;// - FIGHTER_WIDTH + (fighter->HarpoonDistance / 2);// + ((fighter->HarpoonDistance - 32) / 2);

        fighter->HarpoonCenterX = fighter->positionX + (fighter->HarpoonDistance / 2) - ((fighter->HarpoonDistance - 64) / 2) - FIGHTER_WIDTH - 32;
    }
    else
    {
        fighter->HarpoonDistance = fighter->positionX - opponent->positionX + FIGHTER_WIDTH;
        fighter->HarpoonCenterX = fighter->positionX + (FIGHTER_WIDTH / 2) + 8;// + (fighter->HarpoonDistance / 2);// + ((fighter->HarpoonDistance - 64) / 2);
    }

    if (fighter->HarpoonDistance < 0)
    {
        fighter->HarpoonDistance *= -1;
    }

    sprite[fighter->lightningSpriteIndex].scale_x = fighter->HarpoonDistance + (fighter->direction == 1 ? 48 : 50);
    sprite[fighter->lightningSpriteIndex].scale_y = 32;
    //fighter->HarpoonCenterX += (32 * fighter->direction);

    updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 1, true, false, fighter->HarpoonCenterX, fighter->positionY + fighter->HarpoonOffsetY, fighter->direction);
}

void StateScorpionReelingIn_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateScorpionReelingIn_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// STUNNED
// vars[0] = rapTicks

void StateStunned_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->vars[0] = rapTicks;
    fighter->lastTicks = rapTicks;
}

void StateStunned_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (rapTicks >= fighter->vars[0] + 120)
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }

    updateSpriteAnimator(spriteAnimator, *fighter->dizzyFrames, fighter->DIZZY_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateStunned_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateStunned_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SCORPION TELEPORT
// vars[0] = jump index
// vars[1] = teleported

void StateScorpionTeleport_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    fighter->lastTicks = rapTicks;
    //Turn Scorpion Around
    sprite[fighter->spriteIndex].flip = fighter->direction == 1 ? R_is_flipped : R_is_normal;
    sprite[fighter->spriteIndex-1].flip = fighter->direction == 1 ? R_is_flipped : R_is_normal;
    sprite[fighter->lightningSpriteIndex].flip = fighter->direction == -1 ? R_is_flipped : R_is_normal;
    fighter->direction *= -1;
    fighter->projectilePositionX = fighter->positionX - (16 * fighter->direction);
    fighter->projectilePositionY = fighter->positionY;
    fighter->projectileAnimator->currentFrame = 0;
    fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
    fighter->projectileAnimator->base = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gwidth = 104;
    sprite[fighter->lightningSpriteIndex].hbox = 16;
    sprite[fighter->lightningSpriteIndex].vbox = 16;
    sprite[fighter->lightningSpriteIndex].scaled = R_spr_unscale;
    sprite[fighter->lightningSpriteIndex].x_ = fighter->projectilePositionX;
    sprite[fighter->lightningSpriteIndex].y_ = fighter->projectilePositionY;
    sprite[fighter->lightningSpriteIndex].active = R_is_active;
    jsfLoadClut((unsigned short *)(void *)(BMP_PAL_SCORPION_TELEPORT_clut),13,16);
    sfxScorpionTeleport(fighter->soundHandler);
}

void StateScorpionTeleport_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //using impactFrameJumpKick because it's always ON.
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);

    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (!fighter->MadeContact)
        {
            //this already does our boundary check to make sure we aren't going past the stage boundaries...
            fighterPositionXAdd(fighter, FIGHTER_SCORPION_TELEPORT_X_SPEED * fighter->direction);
        }

        fighter->positionY += JumpOffsets[fighter->vars[0]] > -4 ? JumpOffsets[fighter->vars[0]] : -4;
        fighter->vars[0]++;
        fighter->lastTicks = rapTicks;

        if (fighter->vars[0] == 6 || fighter->vars[0] == 10)
        {
            sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
        }
        else if (fighter->vars[0] == 8)
        {
            sprite[fighter->lightningSpriteIndex].active = R_is_active;
        }
    }

    if (fighter->vars[0] > 14)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }

    if (fighter->vars[1] == 0)
    {
        if (fighter->direction == -1 && fighter->positionX <= CAMERA_BOUND_LEFT)
        {
            //we've hit the LEFT camera bound, so let's teleport to the other side
            fighter->positionX = CAMERA_BOUND_RIGHT - 1 + FIGHTER_WIDTH;
            opponent->IsTurning = true;

            // //Turn Scorpion Around
            // sprite[fighter->spriteIndex].flip = fighter->direction == 1 ? R_is_flipped : R_is_normal;
            // sprite[fighter->spriteIndex-1].flip = fighter->direction == 1 ? R_is_flipped : R_is_normal;
            // fighter->direction *= -1;
            fighter->vars[1] = 1;
        }
        else if (fighter->direction == 1 && fighter->positionX >= CAMERA_BOUND_RIGHT)
        {
            //we've hit the RIGHT camera bound, so let's teleport to the other side
            fighter->positionX = CAMERA_BOUND_LEFT + 1 - FIGHTER_WIDTH;
            opponent->IsTurning = true;

            // //Turn Scorpion Around
            // sprite[fighter->spriteIndex].flip = fighter->direction == 1 ? R_is_flipped : R_is_normal;
            // sprite[fighter->spriteIndex-1].flip = fighter->direction == 1 ? R_is_flipped : R_is_normal;
            // fighter->direction *= -1;
            fighter->vars[1] = 1;
        }
    }    

    updateSpriteAnimator(spriteAnimator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    updateSpriteAnimator(fighter->projectileAnimator, scorpionTeleportFrames, 1, true, false, fighter->projectilePositionX, fighter->projectilePositionY, fighter->direction);
}

void StateScorpionTeleport_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->MadeContact = true;
}

void StateScorpionTeleport_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SUBZERO FREEZE
// vars[0] = HasSetupProjectileEnd

void StateSubzeroFreeze_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->vars[0] = 0;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->ProjectileMadeContact = false;
    fighter->projectilePositionX = fighter->positionX;
    fighter->projectilePositionX += fighter->direction == -1 ? 0 : 0;
    fighter->projectilePositionY = fighter->positionY;
    fighter->projectileAnimator->currentFrame = 0;
    fighter->projectileAnimator->spriteIndex = fighter->lightningSpriteIndex;
    fighter->projectileAnimator->base = BMP_PROJECTILES;
    fighter->lastTicks = rapTicks;
    sprite[fighter->lightningSpriteIndex].gfxbase = BMP_PROJECTILES;
    sprite[fighter->lightningSpriteIndex].gwidth = 104;
    sprite[fighter->lightningSpriteIndex].hbox = 16;
    sprite[fighter->lightningSpriteIndex].vbox = 16; 
    jsfLoadClut((unsigned short *)(void *)(BMP_PAL_PROJ_SUBZERO_clut),13,16);
    sfxSubzeroFreeze(fighter->soundHandler);
    fighter->lastTicks = rapTicks;
    sprite[fighter->lightningSpriteIndex].active = R_is_active;
}

void StateSubzeroFreeze_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(fighter->projectileAnimator, 9))
		{
			fighter->projectilePositionX += (8 * fighter->direction);

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				playerinputInit(fighter);
				sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
                stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
                return;
			}
		}

		updateSpriteAnimator(spriteAnimator, *fighter->special1Frames, 6, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, 10, true, false, fighter->projectilePositionX, fighter->projectilePositionY, fighter->direction);
	}
	else
	{
		if (fighter->vars[0] == 0)
		{
            //reset the projectileAnimator for the ending animation
			fighter->vars[0] = 1;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (animationIsComplete(fighter->projectileAnimator, 5))
		{
			sprite[fighter->lightningSpriteIndex].was_hit = -1;
			sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
			fighterResetRaidenLightning(fighter);
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
		}

		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, 5, true, false, fighter->projectilePositionX, fighter->projectilePositionY, fighter->direction);
    }
}

void StateSubzeroFreeze_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterUnfreeze(fighter);
}

void StateSubzeroFreeze_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT FREEZE
// vars[0] = FrozenShakeComplete
// vars[1] = FrozenShakeDirection
// vars[2] = FrozenShakeCount

void StateHitFreeze_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->vars[0] = 0;
    fighter->vars[1] = 1;
    fighter->vars[2] = 0;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsFrozen = true;
    fighter->IsFrozen = true;
    fighter->AcceptingInput = false;
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
    fighterTakeDamage(fighter, fighter->pendingDamage);    
}

void StateHitFreeze_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->vars[0] == 0)
    {
        if (rapTicks > fighter->FrozenShakeTicks + 2)
        {
            fighter->positionX += (2 * fighter->vars[1]);
            fighter->vars[1] *= -1;
            fighter->vars[2]++;
            fighter->FrozenShakeTicks = rapTicks;
        }

        if (fighter->vars[2] >= 6)
        {
            fighter->vars[0] = 1;
        }
    }

    if (rapTicks > fighter->lastTicks + 60 * 3)
    {
        fighterUnfreeze(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }

    setAnimationFrame(fighter->spriteIndex, spriteAnimator, spriteAnimator->currentAnimationFrame, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateHitFreeze_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitFreeze_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// IDLE FALLING

void StateIdleFall_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->IsBeingDamaged = false;
    fighter->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateIdleFall_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
        animateFrame(spriteAnimator, fighter->spriteIndex, 1, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
 
    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighter->positionY += FIGHTER_FALL_Y_SPEED;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->positionY >= FLOOR_LOCATION_Y_FIGHTER)
    {
        //landed
        impactFrameReset(fighter);
        fighterSetOnFloor(fighter);
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateIdleFall_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateIdleFall_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SUBZERO SLIDE
// vars[0] = distance traveled

void StateSubzeroSlide_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->MadeContact = false;
    fighter->vars[0] = 0;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;
    sfxSubzeroSlide(fighter->soundHandler);
}

void StateSubzeroSlide_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //using impactFrameJumpKick because it's always ON.
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);

    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (!fighter->MadeContact)
        {
            fighterPositionXAdd(fighter, FIGHTER_SUBZERO_SLIDE_X_SPEED * fighter->direction);
        }

        fighter->vars[0] += FIGHTER_SUBZERO_SLIDE_X_SPEED;
        fighter->lastTicks = rapTicks;
    }

    if (fighter->MadeContact || fighter->vars[0] >= FIGHTER_SUBZERO_SLIDE_TOTAL_DISTANCE)
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }

    updateSpriteAnimator(spriteAnimator, *fighter->special2Frames, 2, true, false, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateSubzeroSlide_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->MadeContact = true;
}

void StateSubzeroSlide_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SONYA LEG GRAB
// vars[0] = played sound
// vars[1] = direction

void StateSonyaLegGrab_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->exitingState = false;
    fighter->MadeContact = false;
    fighter->vars[0] = 0;
    fighter->vars[1] = 0;
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->lastTicks = rapTicks;    
}

void StateSonyaLegGrab_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    //check for impact on the 5th frame of the leg grab animation
    impactFrameUpdate(spriteAnimator, fighter, &sonyaImpactLegGrab);

    if (fighter->vars[0] == 0 && spriteAnimator->currentFrame == 2)
    {
        fighter->vars[0] = 1;
        sfxSwing(fighter->soundHandler);
    }

    if (fighter->vars[1] == 0)
    {
        //animate forwards
        if (animationIsComplete(spriteAnimator, fighter->SPECIAL_2_FRAME_COUNT))
        {
            fighter->vars[1] = 1;
        }

        updateSpriteAnimator(spriteAnimator, *fighter->special2Frames, fighter->SPECIAL_2_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        //animate backwards
        if (spriteAnimator->currentFrame == 0)
        {
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
        }

        updateSpriteAnimator(spriteAnimator, *fighter->special2Frames, fighter->SPECIAL_2_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
}

void StateSonyaLegGrab_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->MadeContact = true;
}

void StateSonyaLegGrab_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT LEG GRAB
// vars[0] = stun ended
// vars[1] = thrown index
// vars[2] = did second bounce

void StateHitLegGrab_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighterFaceOpponent(fighter);
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    fighter->exitingState = false;
    fighter->vars[0] = 0;
    fighter->vars[1] = 6; //start at index 8 of the throw index
    fighter->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    if (fighter->direction == -1)
    {
        fighter->positionX = fighter->Opponent->positionX + (FIGHTER_WIDTH * 2) + 16;
    }
    else if (fighter->direction == 1)
    {
        fighter->positionX = fighter->Opponent->positionX - (FIGHTER_WIDTH * 2) - 16;
    }
    fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateHitLegGrab_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->vars[0] == 0)
    {
        if (rapTicks >= fighter->lastTicks + 30)
        {
            fighter->vars[0] = 1;
        }

        //they're stunned because they were just caught by the leg grab
        setAnimationFrame(fighter->spriteIndex, spriteAnimator, fighter->hitUppercutFrames[0], fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        //throw 'em
        if (rapTicks >= fighter->lastTicks + 2)
        {
            if (fighter->vars[2] == 0)
            {
                if (fighter->vars[1] < 22)
                {
                    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 2, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->vars[1] == 22)
                {
                    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 3, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->vars[1] == 23)
                {
                    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 4, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->vars[1] >= 24)
                {
                    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 5, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }

                fighterPositionXAdd(fighter, FIGHTER_HIT_LEG_GRAB_X_SPEED * fighter->direction);
                fighter->positionY += UppercutOffsets[fighter->vars[1]];
                fighter->vars[1]++;

                if (fighter->vars[1] == 25)
                {
                    fighterTakeDamage(fighter, fighter->pendingDamage);
                    fighterSetOnFloor(fighter);
                    bgShake(false);
                    sfxThud(fighter->soundHandler);
                    fighter->vars[2] = 1;  //start the second bounce
                    fighter->vars[1] = 10;
                }
            }
            else
            {
                if (fighter->vars[1] <= 23)
                {
                    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 4, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }
                else if (fighter->vars[1] >= 24)
                {
                    animateFrame(spriteAnimator, spriteAnimator->spriteIndex, 5, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
                }

                fighterPositionXAdd(fighter, FIGHTER_HIT_LEG_GRAB_BOUNCE_X_SPEED * fighter->direction);
                fighter->positionY += UppercutOffsets[fighter->vars[1]];
                fighter->vars[1]++;

                if (fighter->vars[1] == 25)
                {
                    fighterTakeDamage(fighter, fighter->pendingDamage);
                    fighterSetOnFloor(fighter);
                    bgShake(false);
                    sfxThud(fighter->soundHandler);
                    fighter->IsBeingDamaged = false;
                    stateMachineGoto(stateMachine, STATE_LAYDOWN, fighter, spriteAnimator);
                }
            }
            
            fighter->lastTicks = rapTicks;
        }
    }
}

void StateHitLegGrab_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHitLegGrab_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// Sonya Square Flight
// vars[0] == JumpIndex (for the JumpOffset array)
// vars[1] = current state: 0 rising, 1 charging, 2 falling
// vars[2] == distance traveled

void StateSonyaSquareFlight_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->MadeContact = false;
    fighter->vars[0] = 0;  //reset JumpIndex back to 0
    fighter->vars[1] = 0;
    fighter->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateSonyaSquareFlight_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (fighter->vars[1] == 0)
        {
            //rising
            if (fighter->vars[0] == 0 || fighter->vars[0] == 1)
            {
                animateFrame(spriteAnimator, fighter->spriteIndex, 0, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else
            {
                animateFrame(spriteAnimator, fighter->spriteIndex, 1, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
            }

            if (fighter->vars[0] == 7)
            {
                fighter->vars[1] = 1; //start charging forward!
                sfxSubzeroSlide(fighter->soundHandler);
            }

            fighter->positionY += JumpOffsets[fighter->vars[0]];
            fighter->vars[0]++;            
        }
        else if (fighter->vars[1] == 1)
        {
            //charging
            //using impactFrameJumpKick because it's always ON.
            impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);

            if (fighter->vars[2] <= FIGHTER_SONYA_SQUARE_FLIGHT_TOTAL_DISTANCE && !fighter->MadeContact)
            {
                fighterPositionXAdd(fighter, FIGHTER_SONYA_SQUARE_FLIGHT_X_SPEED * fighter->direction);
                fighter->vars[2] += FIGHTER_SONYA_SQUARE_FLIGHT_X_SPEED;
            }
            else
            {
                fighter->vars[1] = 2;  //start falling
                fighter->vars[0] = 10;
            }

            animateFrame(spriteAnimator, fighter->spriteIndex, 1, *fighter->jumpPunchFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
        }
        else
        {
            //falling
            if (fighter->vars[0] == 18)
            {
                animateFrame(spriteAnimator, fighter->spriteIndex, 2, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (fighter->vars[0] == 19)
            {
                animateFrame(spriteAnimator, fighter->spriteIndex, 3, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else
            {
                animateFrame(spriteAnimator, fighter->spriteIndex, 1, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
            }

            fighter->positionY += JumpOffsets[fighter->vars[0]];

            if (fighter->MadeContact)
            {
                fighterPositionXAdd(fighter, -2 * fighter->direction);
            }

            fighter->vars[0]++;

            if (fighter->vars[0] > 19)
            {
                //landed
                impactFrameReset(fighter);
                fighterSetOnFloor(fighter);
                stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            }
        }

        fighter->lastTicks = rapTicks;
    }
}

void StateSonyaSquareFlight_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->MadeContact = 1;
}

void StateSonyaSquareFlight_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// Kasumi Fireball
// vars[0] = played sound

void StateKasumiFireball_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    fighter->exitingState = false;
    fighter->vars[0] = 0;
    fighter->lastTicks = rapTicks;
}

void StateKasumiFireball_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent)
{
    if (fighter->vars[0] == 0 && animationIsComplete(spriteAnimator, fighter->SPECIAL_1_FRAME_COUNT))
    {
        sfxKasumiFireball(fighter->soundHandler);
        //TODO ignite fireball
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        return;
    }

    updateSpriteAnimator(spriteAnimator, *fighter->special1Frames, fighter->SPECIAL_1_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateKasumiFireball_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateKasumiFireball_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}