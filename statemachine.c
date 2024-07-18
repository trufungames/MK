#include "common.h"
#include "fighter.h"
#include "spriteanimator.h"
#include "statemachine.h"
#include "impactFrame.h"
#include "sound.h"
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
        else if (((fighter->pad & JAGPAD_LEFT && fighter->direction == 1) || (fighter->pad & JAGPAD_RIGHT && fighter->direction == -1)) && fighter->pad & JAGPAD_DOWN && fighter->pad & JAGPAD_A && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_SWEEPING, fighter, spriteAnimator);
        }
        else if (fighter->pad & JAGPAD_DOWN && (fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8))
        {
            stateMachineGoto(stateMachine, STATE_DUCK_BLOCKING, fighter, spriteAnimator);
        }
        else if (fighter->pad & JAGPAD_DOWN)
        {
            stateMachineGoto(stateMachine, STATE_DUCKING, fighter, spriteAnimator);
        }
        else if (fighter->pad & JAGPAD_UP && (fighter->direction == 1 && fighter->pad & JAGPAD_RIGHT || fighter->direction == -1 && fighter->pad & JAGPAD_LEFT))
        {
            stateMachineGoto(stateMachine, STATE_JUMPING_FORWARD, fighter, spriteAnimator);
        }
        else if (fighter->pad & JAGPAD_UP && (fighter->direction == 1 && fighter->pad & JAGPAD_LEFT || fighter->direction == -1 && fighter->pad & JAGPAD_RIGHT))
        {
            stateMachineGoto(stateMachine, STATE_JUMPING_BACKWARD, fighter, spriteAnimator);
        }
        else if (((((fighter->pad & JAGPAD_RIGHT && fighter->direction == 1) || (fighter->pad & JAGPAD_LEFT && fighter->direction == -1)) && fighter->pad & JAGPAD_C) || fighter->pad & JAGPAD_7) && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_HIGH_PUNCHING, fighter, spriteAnimator);
        }
        else if (((((fighter->pad & JAGPAD_RIGHT && fighter->direction == 1) || (fighter->pad & JAGPAD_LEFT && fighter->direction == -1)) && fighter->pad & JAGPAD_A) || fighter->pad & JAGPAD_9) && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_HIGH_KICKING, fighter, spriteAnimator);
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
        else if (fighter->pad & JAGPAD_C && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_LOW_PUNCHING, fighter, spriteAnimator);
        }
        else if (fighter->pad & JAGPAD_A && fighter->ButtonReleased)
        {
            stateMachineGoto(stateMachine, STATE_LOW_KICKING, fighter, spriteAnimator);
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

void StateDucking_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (!(fighter->pad & JAGPAD_DOWN))
    {
        stateMachine->exitingState = true;
    }
    else if (fighter->pad & JAGPAD_B || fighter->pad & JAGPAD_8)
    {
        stateMachineGoto(stateMachine, STATE_DUCK_BLOCKING, fighter, spriteAnimator);
    }
    else if (fighter->ButtonReleased && (fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7))
    {
        stateMachineGoto(stateMachine, STATE_UPPERCUTTING, fighter, spriteAnimator);
    }
    else if (fighter->ButtonReleased && (fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9))
    {
        stateMachineGoto(stateMachine, STATE_DUCK_KICKING, fighter, spriteAnimator);
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
    else if (fighter->pad & JAGPAD_UP)
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_FORWARD, fighter, spriteAnimator);
    }
    else if (fighter->pad & JAGPAD_7 && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_PUNCHING, fighter, spriteAnimator);
    }
    else if (fighter->pad & JAGPAD_C && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_PUNCHING, fighter, spriteAnimator);
    }
    else if (fighter->pad & JAGPAD_A && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_KICKING, fighter, spriteAnimator);
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
    else if (fighter->pad & JAGPAD_UP)
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_BACKWARD, fighter, spriteAnimator);
    }
    else if (fighter->pad & JAGPAD_A && fighter->pad & JAGPAD_DOWN && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_SWEEPING, fighter, spriteAnimator);
    }
    else if ((fighter->pad & JAGPAD_7 || fighter->pad & JAGPAD_C) && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_HIGH_PUNCHING, fighter, spriteAnimator);
    }
    else if (fighter->pad & JAGPAD_A && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_ROUNDHOUSE_KICKING, fighter, spriteAnimator);
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

void StateJumping_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if ((fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7) && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_JUMP_PUNCHING, fighter, spriteAnimator);
    }
    else if ((fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9) && fighter->ButtonReleased)
    {
        stateMachineGoto(stateMachine, STATE_JUMP_KICKING, fighter, spriteAnimator);
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
            sfxJumpRoll(fighter->soundHandler, fighter->isPlayer1);
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

void StateJumpingForward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->ButtonReleased && (fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9))
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_KICKING_FORWARD, fighter, spriteAnimator);
    }
    else if (fighter->ButtonReleased && (fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7))
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_PUNCHING_FORWARD, fighter, spriteAnimator);
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
            sfxJumpRoll(fighter->soundHandler, fighter->isPlayer1);
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

void StateJumpingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    if (fighter->ButtonReleased && (fighter->pad & JAGPAD_A || fighter->pad & JAGPAD_9))
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_KICKING_BACKWARD, fighter, spriteAnimator);
    }
    else if (fighter->ButtonReleased && (fighter->pad & JAGPAD_C || fighter->pad & JAGPAD_7))
    {
        stateMachineGoto(stateMachine, STATE_JUMPING_PUNCHING_BACKWARD, fighter, spriteAnimator);
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
            }
            else if (fighter->pad & JAGPAD_DOWN)
            {
                //tell the DUCKING state that we were blocking, so it doesn't reset the animation
                stateMachine->vars[0] = 1;
                stateMachineGoto(stateMachine, STATE_DUCKING, fighter, spriteAnimator);
            }
            else
            {
                stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
            }
        }
    }
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
    }
    else if (animationIsComplete(spriteAnimator, fighter->LOW_PUNCH_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
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
        impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameLowRepeatPunch);
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
    }
    else if (animationIsComplete(spriteAnimator, fighter->HIGH_PUNCH_FRAME_COUNT))
    {
        stateMachineGoto(stateMachine, STATE_IDLE, fighter, spriteAnimator);
    }
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
        impactFrameUpdate(spriteAnimator, fighter, fighter->impactFrameHighRepeatPunch);
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

void StateSweeping_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING KICKING FORWARD
// vars[0] == JumpIndex (for the JumpOffset array)

void StateJumpingKickingForward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingKickingForward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingKickingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->jumpDropKickFrames, 3, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
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

void StateJumpingKickingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
// JUMPING PUNCHING FORWARD
// vars[0] == JumpIndex (for the JumpOffset array)

void StateJumpingPunchingForward_Enter(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    spriteAnimator->currentFrame = 0;
    stateMachine->exitingState = false;
    fighter->lastTicks = rapTicks;
    fighter->ButtonReleased = false;
    fighterPlayHiya(fighter->fighterIndex, fighter->soundHandler, fighter->isPlayer1);
}

void StateJumpingPunchingForward_Exit(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}

void StateJumpingPunchingForward_Update(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
    updateSpriteAnimator(spriteAnimator, *fighter->jumpPunchFrames, fighter->JUMP_PUNCH_FRAME_COUNT, true, false, fighter->positionX, fighter->positionY, fighter->direction);
    
    if (rapTicks >= fighter->lastTicks + 2 && !fighter->MadeContact)
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

void StateJumpingPunchingBackward_HandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator)
{
}