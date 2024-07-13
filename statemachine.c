#include "common.h"
#include "fighter.h"
#include "spriteanimator.h"
#include "statemachine.h"
#include "impactFrame.h"
#include "debug.h"

static short JumpOffsets[20] = {-20, -16, -12, -10, -8, -6, -4, -2, 0, 0, 2, 4, 6, 8, 10, 12, 16, 20};
static short FlipOffsets[20] = {-20, -16, -12, -10, -8, -6, -4, -2, 0, 0, 2, 4, 6, 8, 10, 12, 16, 20};

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
    stateMachine->currentState->update(stateMachine, fighter, spriteAnimator);
}

void stateMachineHandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    stateMachine->currentState->handleInput(stateMachine, fighter, spriteAnimator);
}

void stateMachineGoto(struct StateMachine* stateMachine, int newState, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    stateMachine->currentState->exit(stateMachine, fighter, spriteAnimator);
    stateMachine->currentState = stateMachine->states[newState];
    stateMachine->currentState->enter(stateMachine, fighter, spriteAnimator);
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// IDLE

void StateIdle_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
   spriteAnimator->currentFrame = 0;
   spriteAnimator->lastTick = rapTicks;
   stateMachine->exitingState = false;
}

void StateIdle_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateIdle_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //showMessageInt("Idle Update", spriteAnimator->currentFrame);
    updateSpriteAnimator(spriteAnimator, *fighter->idleFrames, fighter->IDLE_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
}

void StateIdle_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->AcceptingInput)
    {
        if (fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8)
        {
            stateMachineGoto(stateMachine, STATE_BLOCKING, fighter, spriteAnimator);
        }
        else if (fighter->pad & JAGPAD_DOWN)
        {
            stateMachineGoto(stateMachine, STATE_DUCKING, fighter, spriteAnimator);
        }
        else if (fighter->pad & JAGPAD_UP && (fighter->direction == 1 && fighter->pad & JAGPAD_RIGHT || fighter->direction == -1 && fighter->pad & JAGPAD_LEFT))
        {
            stateMachineGoto(stateMachine, STATE_JUMPING_FORWARD, fighter, spriteAnimator);
        }
        else if (fighter->direction == 1 && fighter->pad & JAGPAD_RIGHT || fighter->direction == -1 && fighter->pad & JAGPAD_LEFT)
        {
            stateMachineGoto(stateMachine, STATE_WALKING_FORWARD, fighter, spriteAnimator);
        }
        else if (fighter->direction == 1 && fighter->pad & JAGPAD_LEFT || fighter->direction == -1 && fighter->pad & JAGPAD_RIGHT)
        {
            stateMachineGoto(stateMachine, STATE_WALKING_BACKWARD, fighter, spriteAnimator);
        }        
        else if (fighter->pad & JAGPAD_UP)
        {
            stateMachineGoto(stateMachine, STATE_JUMPING, fighter, spriteAnimator);
        }
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// BLOCKING

void StateBlocking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->exitingState = false;
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

void StateBlocking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8))
    {
        stateMachine->exitingState = true;
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// DUCKING

void StateDucking_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->exitingState = false;
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

void StateDucking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->pad & JAGPAD_DOWN))
    {
        stateMachine->exitingState = true;
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
}

void StateWalkingForward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateWalkingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->walkFrames, fighter->WALK_FRAME_COUNT, true, true, fighter->positionX, fighter->positionY, fighter->direction);
    fighterPositionXAdd(fighter, FIGHTER_WALK_SPEED_FORWARD * fighter->direction);
    stateMachine->vars[0] += FIGHTER_WALK_SPEED_FORWARD;

    if (stateMachine->exitingState && stateMachine->vars[0] >= FIGHTER_WALK_MIN_FORWARD)
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateWalkingForward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->direction == 1 && fighter->pad & JAGPAD_RIGHT || fighter->direction == -1 && fighter->pad & JAGPAD_LEFT))
    {
        stateMachine->exitingState = true;
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
}

void StateWalkingBackward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateWalkingBackward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->walkFrames, fighter->WALK_FRAME_COUNT, false, true, fighter->positionX, fighter->positionY, fighter->direction);
    fighterPositionXAdd(fighter, FIGHTER_WALK_SPEED_BACKWARD * fighter->direction * -1);
    stateMachine->vars[0] += FIGHTER_WALK_SPEED_BACKWARD;

    if (stateMachine->exitingState && stateMachine->vars[0] >= FIGHTER_WALK_MIN_BACKWARD)
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
}

void StateWalkingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->direction == 1 && fighter->pad & JAGPAD_LEFT || fighter->direction == -1 && fighter->pad & JAGPAD_RIGHT))
    {
        stateMachine->exitingState = true;
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

    if (rapTicks >= fighter->lastTicks + 3 && !fighter->MadeContact)
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

void StateJumping_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //TODO check for air punches and kicks
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING FORWARD
// vars[0] == JumpIndex (for the JumpOffset array)

void StateJumpingForward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->exitingState = false;
    stateMachine->vars[0] = 0;  //reset JumpIndex back to 0
}

void StateJumpingForward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    animateFrame(fighter->spriteIndex, stateMachine->vars[0], *fighter->jumpRollFrames, spriteAnimator->mulFactor, spriteAnimator->base, FIGHTER_WIDTH, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 3 && !fighter->MadeContact)
    {
        fighterPositionXAdd(fighter, FIGHTER_JUMP_X_SPEED * fighter->direction);
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

void StateJumpingForward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    //TODO check for air punches and kicks
}