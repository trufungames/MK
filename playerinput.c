#include "common.h"
#include "fighter.h"
#include "playerinput.h"

int k = 0;

void playerinputInit(struct Fighter* fighter)
{
    for (k = 0; k < PLAYER_INPUT_STACK_SIZE; k++)
    {
        fighter->playerInputs[k]->ButtonPressed = 0;
        fighter->playerInputs[k]->Ticks = 0;
    }
}

void playerinputPush(struct Fighter* fighter, int buttonPressed)
{
    //shift inputs down to make room for the newest input
    for (k = PLAYER_INPUT_STACK_SIZE - 1; k > 0; k--)
    {        
        fighter->playerInputs[k]->ButtonPressed = fighter->playerInputs[k-1]->ButtonPressed;
        fighter->playerInputs[k]->Ticks = fighter->playerInputs[k-1]->Ticks;
    }

    fighter->playerInputs[0]->ButtonPressed = playerinputGetValue(buttonPressed, fighter->direction);
    fighter->playerInputs[0]->Ticks = rapTicks;
}

int playerinputContains(struct StateMachine* stateMachine, struct Fighter* fighter, int checkInputs[], int checkCount)
{
    if (checkCount == 0)
        return false;

    for (k = 0; k < checkCount; k++)
    {
        if (fighter->playerInputs[k]->ButtonPressed != checkInputs[k])
            return false;
    }

    //the last input indicates a BLOCK hold
    if (checkInputs[5] == INPUT_BLK && !fighterIsBlocking(stateMachine, fighter))
        return false;

    return true;
}

void playerinputUpdate(struct Fighter* fighter1, struct Fighter* fighter2)
{
    for (k = 0; k < PLAYER_INPUT_STACK_SIZE; k++)
    {
        if (rapTicks > fighter1->playerInputs[k]->Ticks + PLAYER_INPUT_TIMEOUT)
        {
            fighter1->playerInputs[k]->ButtonPressed = 0;
            fighter1->playerInputs[k]->Ticks = rapTicks;
        }

        if (rapTicks > fighter2->playerInputs[k]->Ticks + PLAYER_INPUT_TIMEOUT)
        {
            fighter2->playerInputs[k]->ButtonPressed = 0;
            fighter2->playerInputs[k]->Ticks = rapTicks;
        }
    }
}

void playerinputReset(struct Fighter* fighter1, struct Fighter* fighter2)
{
    for (k = 0; k < PLAYER_INPUT_STACK_SIZE; k++)
    {
        fighter1->playerInputs[k]->ButtonPressed = 0;
        fighter1->playerInputs[k]->Ticks = 0;
        fighter2->playerInputs[k]->ButtonPressed = 0;
        fighter2->playerInputs[k]->Ticks = 0;
    }
}

int playerinputGetValue(int jagpadValue, int direction)
{
    if (jagpadValue == (int)JAGPAD_UP)
        return INPUT_UP;
    else if (jagpadValue == (int)JAGPAD_DOWN)
        return INPUT_DOWN;
    else if (jagpadValue == (int)JAGPAD_LEFT)
        return direction == 1 ? INPUT_BACK : INPUT_FORWARD;
    else if (jagpadValue == (int)JAGPAD_RIGHT)
        return direction == 1 ? INPUT_FORWARD : INPUT_BACK;
    else if (jagpadValue == (int)JAGPAD_C)
        return INPUT_LP;
    else if (jagpadValue == (int)JAGPAD_7)
        return INPUT_HP;
    else if (jagpadValue == (int)JAGPAD_B || jagpadValue == (int)JAGPAD_8)
        return INPUT_BLK;
    else if (jagpadValue == (int)JAGPAD_A)
        return INPUT_LK;
    else if (jagpadValue == (int)JAGPAD_9)
        return INPUT_HK;

    return 0;
}