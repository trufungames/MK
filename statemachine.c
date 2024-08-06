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

static short JumpOffsets[20] = {-20, -16, -12, -10, -8, -6, -4, -2, 0, 0, 2, 4, 6, 8, 10, 12, 16, 20};
static short FlipOffsets[20] = {-20, -16, -12, -10, -8, -6, -4, -2, 0, 0, 2, 4, 6, 8, 10, 12, 16, 20};
static short UppercutOffsets[26] = {-20, -20, -16, -14, -13, -10, -9, -6, -4, -3, -2, -1, 0, 0, 0, 2, 3, 4, 6, 9, 12, 13, 14, 20, 22, 24 };

void stateMachineAdd(struct StateMachine* stateMachine, int name, struct State* state)
{
    state->Name = name;
    stateMachine->states[name] = state;
};

void stateMachineInit(struct StateMachine* stateMachine, int name, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    stateMachine->currentState = stateMachine->states[name];
    stateMachine->currentState->enter(stateMachine, fighter, spriteAnimator);
    stateMachine->exitingState = false;
}

void stateMachineUpdate(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (stateMachine->isSleeping && rapTicks < stateMachine->sleepTicks)
    {
        return;
    }
    else if (stateMachine->isSleeping)
    {
        stateMachine->isSleeping = false;
    }

    /////////////////////////////////////////////////////
    // GLOBAL FIGHTER LOGIC - REGARDLESS OF STATE
    /////////////////////////////////////////////////////

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
        && stateMachine->currentState->Name != STATE_TURNING_AROUND
        && stateMachine->currentState->Name != STATE_JUMPING
        && stateMachine->currentState->Name != STATE_JUMPING_BACKWARD
        && stateMachine->currentState->Name != STATE_JUMPING_FORWARD
        && stateMachine->currentState->Name != STATE_JUMPING_KICKING_BACKWARD
        && stateMachine->currentState->Name != STATE_JUMPING_KICKING_FORWARD
        && stateMachine->currentState->Name != STATE_JUMPING_PUNCHING_BACKWARD
        && stateMachine->currentState->Name != STATE_JUMPING_PUNCHING_FORWARD
        && stateMachine->currentState->Name != STATE_JUMP_KICKING
        && stateMachine->currentState->Name != STATE_JUMP_PUNCHING
        && stateMachine->currentState->Name != STATE_BEING_THROWN
        && stateMachine->currentState->Name != STATE_THROWING
        && stateMachine->currentState->Name != STATE_LAYDOWN
        && stateMachine->currentState->Name != STATE_GETUP)
    {
        fighter->IsTurning = false;
        stateMachineGoto(stateMachine, STATE_TURNING_AROUND, fighter, spriteAnimator);
        return;
    }

    fighterHandleSpecialMoves(stateMachine, fighter, spriteAnimator);

    /////////////////////////////////////////////////////
    // END GLOBAL FIGHTER LOGIC
    /////////////////////////////////////////////////////

    stateMachine->currentState->update(stateMachine, fighter, spriteAnimator);
    fighter->CurrentState = stateMachine->currentState->Name;
}

void stateMachineHandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    stateMachine->currentState->handleInput(stateMachine, fighter, spriteAnimator);
}

void stateMachineGoto(struct StateMachine* stateMachine, int newState, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //if we're already at the current state, let's bail.
    if (stateMachine->currentState->Name == newState)
        return;

    stateMachine->currentState->exit(stateMachine, fighter, spriteAnimator);
    stateMachine->currentState = stateMachine->states[newState];
    stateMachine->currentState->enter(stateMachine, fighter, spriteAnimator);
}

void stateMachineSleep(struct StateMachine* stateMachine, int ticks, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    stateMachine->isSleeping = true;
    stateMachine->sleepTicks = rapTicks + ticks;
    stateMachine->currentState->sleep(stateMachine, fighter, spriteAnimator);
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////
// IDLE
// vars[0]  = has turned

void StateIdle_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
   spriteAnimator->currentFrame = 0;
   spriteAnimator->lastTick = rapTicks;
   stateMachine->exitingState = false;
   stateMachine->vars[0] = 0;
}

void StateIdle_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateIdle_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->idleFrames, fighter->IDLE_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
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
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateBlocking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateBlocking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!stateMachine->exitingState)
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
        stateMachine->exitingState = true;
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
    if (stateMachine->vars[0] != 1)
    {
        spriteAnimator->currentFrame = 0;
    }
    else
    {
        //we're coming from BlockDucking, so don't replay the ducking animation
        spriteAnimator->currentFrame = 2;
    }
    
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateDucking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateDucking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!stateMachine->exitingState)
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
        stateMachine->exitingState = true;
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
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;  //reset DistanceWalked back to 0
    fighter->lastTicks = rapTicks;
}

void StateWalkingForward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateWalkingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
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
        
        stateMachine->vars[0] += FIGHTER_WALK_SPEED_FORWARD;

        fighter->lastTicks = rapTicks;
    }

    if (stateMachine->exitingState && stateMachine->vars[0] >= FIGHTER_WALK_MIN_FORWARD)
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
        stateMachine->exitingState = true;
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
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;  //reset DistanceWalked back to 0
    fighter->lastTicks = rapTicks;
}

void StateWalkingBackward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateWalkingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->walkFrames, fighter->WALK_FRAME_COUNT, false, true, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_WALK_SPEED_BACKWARD * fighter->direction * -1);
        stateMachine->vars[0] += FIGHTER_WALK_SPEED_BACKWARD;

        fighter->lastTicks = rapTicks;
    }
    if (stateMachine->exitingState && stateMachine->vars[0] >= FIGHTER_WALK_MIN_BACKWARD)
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
        stateMachine->exitingState = true;
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
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;  //reset JumpIndex back to 0
    fighter->lastTicks = rapTicks;
    fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumping_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumping_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //updateSpriteAnimator(spriteAnimator, *fighter->jumpFrames, fighter->JUMP_FRAME_COUNT, false, true, fighter->positionX, fighter->positionY, fighter->direction);

    if (stateMachine->vars[0] == 0 || stateMachine->vars[0] == 1)
    {
        animateFrame(fighter->spriteIndex, 0, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else if (stateMachine->vars[0] == 18)
    {
        animateFrame(fighter->spriteIndex, 2, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else if (stateMachine->vars[0] == 19)
    {
        animateFrame(fighter->spriteIndex, 3, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        animateFrame(fighter->spriteIndex, 1, *fighter->jumpFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    }

    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighter->positionY += JumpOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (stateMachine->vars[0] > 19)
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
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;  //reset JumpIndex back to 0
    fighter->lastTicks = rapTicks;
    fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingForward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    animateFrame(fighter->spriteIndex, stateMachine->vars[0], *fighter->jumpRollFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction);
        fighter->positionY += FlipOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;

        if (stateMachine->vars[0] == 5)
        {
            sfxJumpRoll(fighter->soundHandler);
        }
    }

    if (stateMachine->vars[0] > 19)
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
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;  //reset JumpIndex back to 0
    fighter->lastTicks = rapTicks;
    fighterPlayJump(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingBackward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    animateFrame(fighter->spriteIndex, 19 - stateMachine->vars[0], *fighter->jumpRollFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction * -1);
        fighter->positionY += FlipOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;

        if (stateMachine->vars[0] == 5)
        {
            sfxJumpRoll(fighter->soundHandler);
        }
    }

    if (stateMachine->vars[0] > 19)
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
    stateMachine->vars[0] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateDuckBlocking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateDuckBlocking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!stateMachine->exitingState)
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
                stateMachine->vars[0] = 1;
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
        stateMachine->exitingState = true;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// LOW PUNCHING
// vars[0] = LP button tap count, if == 2, goto STATE_LOW_REPEAT_PUNCHINIG
// vars[2] = Played sound

void StateLowPunching_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->vars[0] = 0;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateLowPunching_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateLowPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->punchLowFrames, fighter->LOW_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (spriteAnimator->currentFrame == 2 && stateMachine->vars[2] == 0)
    {
        stateMachine->vars[2] = 1;
        fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);        
    }

    if (stateMachine->vars[0] >= 1)
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
        stateMachine->vars[0]++;
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
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = rapTicks;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateLowRepeatPunching_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateLowRepeatPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!stateMachine->exitingState)
    {
        impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowPunch);
        updateSpriteAnimator(spriteAnimator, *fighter->punchLowRepeatFrames, fighter->LOW_PUNCH_REPEAT_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);

        if (spriteAnimator->currentFrame == 3 && stateMachine->vars[2] == 0)
        {
            stateMachine->vars[2] = 1;
            fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
        }

        if (stateMachine->vars[0] > 0)
        {
            //stay here in this state, because the player keeps pressing LP
            stateMachine->vars[0] = 0;
            stateMachine->vars[1] = rapTicks; //extend the timer 
            stateMachine->vars[2] = 0;
        }
        else if (rapTicks >= stateMachine->vars[1] + 30)
        {
            stateMachine->exitingState = true;     
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
        stateMachine->vars[0]++;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIGH PUNCHING
// vars[0] = LP button tap count, if == 2, goto STATE_LOW_REPEAT_PUNCHINIG
// vars[2] = Played sound

void StateHighPunching_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->vars[0] = 0;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateHighPunching_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHighPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->punchHighFrames, fighter->HIGH_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (spriteAnimator->currentFrame == 2 && stateMachine->vars[2] == 0)
    {
        stateMachine->vars[2] = 1;
        fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);        
    }

    if (stateMachine->vars[0] >= 1)
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
        stateMachine->vars[0]++;
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
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = rapTicks;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateHighRepeatPunching_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHighRepeatPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!stateMachine->exitingState)
    {
        impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameHighPunch);
        updateSpriteAnimator(spriteAnimator, *fighter->punchHighRepeatFrames, fighter->HIGH_PUNCH_REPEAT_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);

        if (spriteAnimator->currentFrame == 3 && stateMachine->vars[2] == 0)
        {
            stateMachine->vars[2] = 1;
            fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
        }

        if (stateMachine->vars[0] > 0)
        {
            //stay here in this state, because the player keeps pressing LP
            stateMachine->vars[0] = 0;
            stateMachine->vars[1] = rapTicks; //extend the timer 
            stateMachine->vars[2] = 0;
        }
        else if (rapTicks >= stateMachine->vars[1] + 30)
        {
            stateMachine->exitingState = true;     
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
        stateMachine->vars[0]++;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// LOW KICKING
// vars[2] = Played sound

void StateLowKicking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateLowKicking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateLowKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowKick);
    updateSpriteAnimator(spriteAnimator, *fighter->kickLowFrames, fighter->LOW_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (spriteAnimator->currentFrame == 2 && stateMachine->vars[2] == 0)
    {
        stateMachine->vars[2] = 1;
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
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateHighKicking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateHighKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameHighKick);
    updateSpriteAnimator(spriteAnimator, *fighter->kickHighFrames, fighter->HIGH_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (spriteAnimator->currentFrame == 2 && stateMachine->vars[2] == 0)
    {
        stateMachine->vars[2] = 1;
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
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateRoundhouseKicking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateRoundhouseKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
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
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateUppercutting_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateUppercutting_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
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
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateDuckKicking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateDuckKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameDuckKick);
    updateSpriteAnimator(spriteAnimator, *fighter->duckKickFrames, fighter->DUCK_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->DUCK_KICK_FRAME_COUNT))
    {
        stateMachine->vars[0] = 1;
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
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpPunching_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighter->positionY += JumpOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (stateMachine->vars[0] > 19)
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
    animateFrame(spriteAnimator->spriteIndex, 1, *fighter->jumpPunchFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateJumpPunching_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMP KICKING

void StateJumpKicking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpKicking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpKickFrames, fighter->JUMP_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighter->positionY += JumpOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (stateMachine->vars[0] > 19)
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
    animateFrame(spriteAnimator->spriteIndex, 1, *fighter->jumpKickFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
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
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    sfxSwing(fighter->soundHandler);
}

void StateSweeping_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateSweeping_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
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
    stateMachine->exitingState = false;
    stateMachine->vars[1] = 0;
    fighter->lastTicks = rapTicks;

    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingKickingForward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingKickingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpDropKickFrames, 3, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (stateMachine->vars[1] == 0)
        {
            //we haven't made contact yet, so keep moving forward.
            fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction);        
        }
        
        fighter->positionY += FlipOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (stateMachine->vars[0] > 19)
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
    animateFrame(spriteAnimator->spriteIndex, 2, *fighter->jumpDropKickFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

    //stop moving forward
    stateMachine->vars[1] = 1;
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
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingKickingBackward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingKickingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpKick);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpDropKickFrames, 3, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction * -1);
        fighter->positionY += FlipOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (stateMachine->vars[0] > 19)
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
    animateFrame(spriteAnimator->spriteIndex, 1, *fighter->jumpDropKickFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
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
    stateMachine->exitingState = false;
    stateMachine->vars[1] = 0;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingPunchingForward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingPunchingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2)
    {
        if (stateMachine->vars[1] == 0)
        {
            fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction);
        }
        
        fighter->positionY += FlipOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (stateMachine->vars[0] > 19)
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
    animateFrame(spriteAnimator->spriteIndex, 1, *fighter->jumpPunchFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);    

    //drop to the floor
    stateMachine->vars[1] = 1;
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
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingPunchingBackward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingPunchingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameJumpPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction * -1);
        fighter->positionY += FlipOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;
        fighter->lastTicks = rapTicks;
    }

    if (stateMachine->vars[0] > 19)
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
    animateFrame(spriteAnimator->spriteIndex, 1, *fighter->jumpPunchFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateJumpingPunchingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// HIT LOW

void StateHitLow_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    fighterTakeDamage(fighter, fighter->pendingDamage);    
}

void StateHitLow_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitLow_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->hitLowFrames, fighter->HIT_LOW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_LOW_FRAME_COUNT))
    {
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
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    fighterTakeDamage(fighter, fighter->pendingDamage);    
    bloodSpray(fighter->positionX - (10 * fighter->direction), fighter->positionY - 10, fighter->direction);
}

void StateHitHigh_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitHigh_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->hitHighFrames, fighter->HIT_HIGH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_HIGH_FRAME_COUNT))
    {
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
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    fighterTakeDamage(fighter, fighter->pendingDamage);
}

void StateHitSweep_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitSweep_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->hitSweepFrames, fighter->HIT_SWEEP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_SWEEP_FRAME_COUNT))
    {
        sfxThud(fighter->soundHandler);
        bgShake(false);
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
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateGetUp_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateGetUp_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->kipUpFrames, fighter->KIPUP_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->KIPUP_FRAME_COUNT))
    {
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
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);

    if (fighter->NoBlood)
        return;

    bloodGlob(fighter->positionX - (40 * fighter->direction), fighter->positionY + 0, fighter->direction);
    bloodDrop(fighter->positionX - (40 * fighter->direction) + (40 * fighter->direction), fighter->positionY - 30, fighter->direction);
}

void StateHitBack_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
    fighter->NoBlood = false;
}

void StateHitBack_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (spriteAnimator->currentFrame == 2 && stateMachine->vars[0] == 0)
    {
        stateMachine->vars[0] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_KNOCKBACK_SPEED * -fighter->direction);
    }

    updateSpriteAnimator(spriteAnimator, *fighter->hitBackFrames, fighter->HIT_BACK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_BACK_FRAME_COUNT))
    {
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
    if (fighter->positionY < FLOOR_LOCATION_Y_FIGHTER)
    {
        stateMachineGoto(stateMachine, STATE_HIT_AIR, fighter, spriteAnimator);
        return;
    }

    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);
}

void StateHitBackLow_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitBackLow_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (spriteAnimator->currentFrame == 1 && stateMachine->vars[0] == 0)
    {
        stateMachine->vars[0] = 1;
        fighterPlayGroan(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_KNOCKBACK_SPEED * -fighter->direction);
    }

    updateSpriteAnimator(spriteAnimator, *fighter->hitLowFrames, fighter->HIT_LOW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->HIT_LOW_FRAME_COUNT))
    {
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
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
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

void StateHitUppercut_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitUppercut_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (stateMachine->vars[0] == 1 && stateMachine->vars[1] == 0)
    {
        stateMachine->vars[1] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }
    else if (stateMachine->vars[0] == 8 && stateMachine->vars[2] == 0)
    {
        stateMachine->vars[2] = 1;
        fighterPlayUppercutReaction(fighter->soundHandler);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_UPPERCUT_X_SPEED * -fighter->direction);
        fighter->positionY += UppercutOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;

        if (stateMachine->vars[0] == 25)
        {
            fighterSetOnFloor(fighter);
            bgShake(false);
            sfxThud(fighter->soundHandler);
            stateMachineGoto(stateMachine, STATE_LAYDOWN, fighter, spriteAnimator);
        }
        
        animateFrame(spriteAnimator->spriteIndex, stateMachine->vars[0], *fighter->hitUppercutFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
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
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
}

void StateLaydown_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateLaydown_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    animateFrame(spriteAnimator->spriteIndex, fighter->HIT_FALL_FRAME_COUNT-1, *fighter->hitFallFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);

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
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 4;  //start animation as they are falling
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);
}

void StateHitDropKick_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitDropKick_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (spriteAnimator->currentFrame == 1 && stateMachine->vars[1] == 0)
    {
        stateMachine->vars[1] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }
    else if (spriteAnimator->currentFrame == 3 && stateMachine->vars[2] == 0)
    {
        stateMachine->vars[2] = 1;
        fighterPlayUppercutReaction(fighter->soundHandler);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_DROPKICK_X_SPEED * -fighter->direction);
        fighter->positionY += UppercutOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;

        if (stateMachine->vars[0] == 25)
        {
            fighterSetOnFloor(fighter);
            bgShake(false);
            sfxThud(fighter->soundHandler);
            stateMachineGoto(stateMachine, STATE_LAYDOWN, fighter, spriteAnimator);
        }
        
        animateFrame(spriteAnimator->spriteIndex, stateMachine->vars[0], *fighter->hitUppercutFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
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
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 4;  //start animation as they are falling
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxImpact(fighter->soundHandler);
}

void StateHitAir_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitAir_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (spriteAnimator->currentFrame == 1 && stateMachine->vars[1] == 0)
    {
        stateMachine->vars[1] = 1;
        fighterPlayYell(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
    }

    if (rapTicks >= fighter->lastTicks + 2)
    {
        fighterPositionXAdd(fighter, FIGHTER_HITAIR_X_SPEED * -fighter->direction);
        fighter->positionY += UppercutOffsets[stateMachine->vars[0]];
        stateMachine->vars[0]++;

        if (stateMachine->vars[0] == 25)
        {
            fighterSetOnFloor(fighter);
            bgShake(false);
            sfxThud(fighter->soundHandler);
            stateMachineGoto(stateMachine, STATE_LAYDOWN, fighter, spriteAnimator);
        }
        
        animateFrame(spriteAnimator->spriteIndex, stateMachine->vars[0], *fighter->hitUppercutFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
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
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    stateMachine->vars[0] = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxBlock(fighter->soundHandler);
}

void StateHitBlocking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitBlocking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (rapTicks >= stateMachine->vars[0] + 10)
    {
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
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxBlock(fighter->soundHandler);
}

void StateHitDuckingBlocking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitDuckingBlocking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (animationIsComplete(spriteAnimator, fighter->BLOCK_DUCK_HIT_FRAME_COUNT))
    {
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
    spriteAnimator->currentFrame = 0;
    spriteAnimator->lastTick = rapTicks;
    stateMachine->exitingState = false;
    stateMachine->vars[0] = rapTicks;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    fighterTakeDamage(fighter, fighter->pendingDamage);
    sfxBlock(fighter->soundHandler);
}

void StateHitBlockingKnockback_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateHitBlockingKnockback_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //if (animationIsComplete(spriteAnimator, fighter->BLOCK_HIT_FRAME_COUNT))
    if (rapTicks >= stateMachine->vars[0] + 20)
    {
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
    stateMachine->exitingState = false;
    spriteAnimator->currentFrame = 0;
    fighter->lastTicks = rapTicks;
    stateMachine->vars[0] = 0;
}

void StateBodyPunching_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateBodyPunching_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameBodyPunch);
    updateSpriteAnimator(spriteAnimator, *fighter->bodyPunchFrames, fighter->BODY_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (stateMachine->vars[0] == 0 && spriteAnimator->currentFrame == 2)
    {
        stateMachine->vars[0] = 1;
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
    stateMachine->exitingState = false;
    spriteAnimator->currentFrame = 0;
    fighter->lastTicks = rapTicks;
    stateMachine->vars[0] = 0;
}

void StateBodyKicking_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateBodyKicking_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameBodyKick);
    updateSpriteAnimator(spriteAnimator, *fighter->bodyKickFrames, fighter->BODY_KICK_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (stateMachine->vars[0] == 0 && spriteAnimator->currentFrame == 2)
    {
        stateMachine->vars[0] = 1;
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
    stateMachine->exitingState = false;
    spriteAnimator->currentFrame = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsClose = false;
    stateMachine->vars[0] = 0;
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

void StateThrowing_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsClose = false;
}

void StateThrowing_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameThrow);
    updateSpriteAnimator(spriteAnimator, *fighter->throwFrames, fighter->THROW_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);

    if (animationIsComplete(spriteAnimator, fighter->THROW_FRAME_COUNT))
    {
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
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 8;  //start animation as they are falling
    stateMachine->vars[1] = 0;
    stateMachine->vars[2] = 0;
    fighter->lastTicks = rapTicks;
    fighter->IsBeingDamaged = true;
    //Snap forward 32 pixels
    fighterPositionXAdd(fighter, 32 * fighter->direction);
}

void StateBeingThrown_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsBeingDamaged = false;
}

void StateBeingThrown_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
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
            if (stateMachine->vars[0] < 22)
            {
                animateFrame(spriteAnimator->spriteIndex, 2, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (stateMachine->vars[0] == 22)
            {
                animateFrame(spriteAnimator->spriteIndex, 3, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (stateMachine->vars[0] == 23)
            {
                animateFrame(spriteAnimator->spriteIndex, 4, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }
            else if (stateMachine->vars[0] >= 24)
            {
                animateFrame(spriteAnimator->spriteIndex, 5, *fighter->beingThrownFrames, spriteAnimator->mulFactor, spriteAnimator->base, spriteAnimator->idleFrameWidth, fighter->positionX, fighter->positionY, fighter->direction);
            }

            fighterPositionXAdd(fighter, FIGHTER_THROWN_X_SPEED * fighter->direction);
            fighter->positionY += UppercutOffsets[stateMachine->vars[0]];
            stateMachine->vars[0]++;

            if (stateMachine->vars[0] == 25)
            {
                fighterTakeDamage(fighter, fighter->pendingDamage);
                fighterSetOnFloor(fighter);
                bgShake(false);
                sfxThud(fighter->soundHandler);
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
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;
    spriteAnimator->currentFrame = 0;
    fighter->lastTicks = rapTicks;
}

void StateTurningAround_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    fighter->IsTurning = false;
}

void StateTurningAround_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (stateMachine->vars[0] == 0)
    {
        //play turn animation forward
        if (animationIsComplete(spriteAnimator, fighter->TURN_FRAME_COUNT))
        {
            //turn the fighter around
            stateMachine->vars[0] = 1;
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

        updateSpriteAnimator(spriteAnimator, *fighter->turnFrames, fighter->TURN_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
    else
    {
        //play turn animation in reverse
        if (spriteAnimator->currentFrame <= 0)
        {
            stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
        }

        updateSpriteAnimator(spriteAnimator, *fighter->turnFrames, fighter->TURN_FRAME_COUNT, false, false, fighter->positionX, fighter->positionY, fighter->direction);
    }
}

void StateTurningAround_Sleep(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateTurningAround_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{    
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// CAGE SPECIAL GREENBOLT
// vars[0] = HasSetupProjectileEnd
// vars[1] = rapTicks

void StateThrowingProjectile_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    stateMachine->exitingState = false;
    spriteAnimator->currentFrame = 0;
    stateMachine->vars[0] = 0;
    stateMachine->vars[1] = rapTicks;
    fighter->ProjectileMadeContact = false;
    fighter->projectilePositionX = fighter->positionX;
    fighter->projectilePositionX += fighter->direction == -1 ? 0 : 0;
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
        default:
            break;
    }
}

void StateThrowingProjectile_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    sprite[fighter->lightningSpriteIndex].was_hit = -1;
    sprite[fighter->lightningSpriteIndex].active = R_is_inactive;
    playerinputInit(fighter);    
    fighterResetRaidenLightning(fighter);
}

void StateThrowingProjectile_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!fighter->ProjectileMadeContact)
	{
		if (animationIsComplete(spriteAnimator, fighter->SPECIAL_1_FRAME_COUNT))
		{
            if (rapTicks >= stateMachine->vars[1] + 2)
            {
                fighter->projectilePositionX += (FIGHTER_PROJECTILE_X_SPEED * fighter->direction);
                stateMachine->vars[1] = rapTicks;
            }

			if (fighter->direction == 1 && fighter->projectilePositionX > 320
				|| fighter->direction == -1 && fighter->projectilePositionX < 0)
			{
				stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
                return;
			}
		}

		updateSpriteAnimator(spriteAnimator, *fighter->special1Frames, fighter->SPECIAL_1_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileFrames, fighter->PROJECTILE_FRAME_COUNT, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
	}
	else
	{
		if (stateMachine->vars[0] == 0)
		{
			stateMachine->vars[0] = 1;
			fighter->projectileAnimator->currentFrame = 0;
		}

		if (animationIsComplete(fighter->projectileAnimator, fighter->PROJECTILE_END_FRAME_COUNT))
		{
			stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            return;
		}

		updateSpriteAnimator(fighter->projectileAnimator, *fighter->projectileEndFrames, fighter->PROJECTILE_END_FRAME_COUNT, true, false, fighter->projectilePositionX, fighter->positionY, fighter->direction);
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