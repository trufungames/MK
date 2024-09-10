#include "common.h"
#include "fighter.h"
#include "playerinput.h"

void playerinputInit(struct Fighter* fighter)
{
    fighter->input1->ButtonPressed = 0;
    fighter->input1->Ticks = 0;
    fighter->input2->ButtonPressed = 0;
    fighter->input2->Ticks = 0;
    fighter->input3->ButtonPressed = 0;
    fighter->input3->Ticks = 0;
    fighter->input4->ButtonPressed = 0;
    fighter->input4->Ticks = 0;
    fighter->input5->ButtonPressed = 0;
    fighter->input5->Ticks = 0;
    fighter->input6->ButtonPressed = 0;
    fighter->input6->Ticks = 0;
}

void playerinputPush(struct Fighter* fighter, int buttonPressed)
{
    //shift inputs down to make room for the newest input
    fighter->input6->ButtonPressed = fighter->input5->ButtonPressed;
    fighter->input6->Ticks = fighter->input5->Ticks;
    fighter->input5->ButtonPressed = fighter->input4->ButtonPressed;
    fighter->input5->Ticks = fighter->input4->Ticks;
    fighter->input4->ButtonPressed = fighter->input3->ButtonPressed;
    fighter->input4->Ticks = fighter->input3->Ticks;
    fighter->input3->ButtonPressed = fighter->input2->ButtonPressed;
    fighter->input3->Ticks = fighter->input2->Ticks;
    fighter->input2->ButtonPressed = fighter->input1->ButtonPressed;
    fighter->input2->Ticks = fighter->input1->Ticks;

    fighter->input1->ButtonPressed = playerinputGetValue(buttonPressed, fighter->direction);
    fighter->input1->Ticks = rapTicks;
}

int playerinputContains(struct Fighter* fighter, int checkInputs[], int checkCount)
{
    if (checkCount == 0)
        return false;
    
    switch (checkCount)
    {
        case 1:
            if (fighter->input1->ButtonPressed != checkInputs[0])
                return false;
            break;
        case 2:
            if (fighter->input1->ButtonPressed != checkInputs[0])
                return false;
            if (fighter->input2->ButtonPressed != checkInputs[1])
                return false;
            break;
        case 3:
            if (fighter->input1->ButtonPressed != checkInputs[0])
                return false;
            if (fighter->input2->ButtonPressed != checkInputs[1])
                return false;
            if (fighter->input3->ButtonPressed != checkInputs[2])
                return false;
            break;
        case 4:
            if (fighter->input1->ButtonPressed != checkInputs[0])
                return false;
            if (fighter->input2->ButtonPressed != checkInputs[1])
                return false;
            if (fighter->input3->ButtonPressed != checkInputs[2])
                return false;
            if (fighter->input4->ButtonPressed != checkInputs[3])
                return false;
            break;
        case 5:
            if (fighter->input1->ButtonPressed != checkInputs[0])
                return false;
            if (fighter->input2->ButtonPressed != checkInputs[1])
                return false;
            if (fighter->input3->ButtonPressed != checkInputs[2])
                return false;
            if (fighter->input4->ButtonPressed != checkInputs[3])
                return false;
            if (fighter->input5->ButtonPressed != checkInputs[4])
                return false;
            break;
        case 13:
            //this checks 3 buttons that have to all be ON at once
            break;
        case 14:
            //this checks 4 buttons that have to all be ON at once
            if (checkInputs[0] == INPUT_LK
                || checkInputs[1] == INPUT_LK
                || checkInputs[2] == INPUT_LK
                || checkInputs[3] == INPUT_LK)
                {
                    if (!(fighter->pad & JAGPAD_A))
                        return false;
                }
            
            if (checkInputs[0] == INPUT_LP
                || checkInputs[1] == INPUT_LP
                || checkInputs[2] == INPUT_LP
                || checkInputs[3] == INPUT_LP)
                {
                    if (!(fighter->pad & JAGPAD_C))
                        return false;
                }

            if (checkInputs[0] == INPUT_BLK
                || checkInputs[1] == INPUT_BLK
                || checkInputs[2] == INPUT_BLK
                || checkInputs[3] == INPUT_BLK)
                {
                    if (!(fighter->pad & JAGPAD_B) && !(fighter->pad & JAGPAD_8))
                        return false;
                }

            if (checkInputs[0] == INPUT_BACK
                || checkInputs[1] == INPUT_BACK
                || checkInputs[2] == INPUT_BACK
                || checkInputs[3] == INPUT_BACK)
                {
                    if (fighter->direction == 1 && !(fighter->pad & JAGPAD_LEFT))
                        return false;
                    else if (fighter->direction == -1 && !(fighter->pad & JAGPAD_RIGHT))
                        return false;
                }
            
            if (checkInputs[0] == INPUT_DOWN
                || checkInputs[1] == INPUT_DOWN
                || checkInputs[2] == INPUT_DOWN
                || checkInputs[3] == INPUT_DOWN)
                {
                    if (!(fighter->pad & JAGPAD_DOWN))
                        return false;
                }
            break;
            default:
                break;
    }

    //the last input indicates a BLOCK hold
    if (checkInputs[5] == INPUT_BLK && !(fighter->pad & JAGPAD_B) && !(fighter->pad & JAGPAD_8))
        return false;

    return true;
}

void playerinputUpdate(struct Fighter* fighter1, struct Fighter* fighter2)
{
    if (rapTicks > fighter1->input6->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter1->input6->ButtonPressed = 0;
        fighter1->input6->Ticks = 0;
    }
    if (rapTicks > fighter1->input5->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter1->input5->ButtonPressed = 0;
        fighter1->input5->Ticks = 0;
    }
    if (rapTicks > fighter1->input4->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter1->input4->ButtonPressed = 0;
        fighter1->input4->Ticks = 0;
    }
    if (rapTicks > fighter1->input3->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter1->input3->ButtonPressed = 0;
        fighter1->input3->Ticks = 0;
    }
    if (rapTicks > fighter1->input2->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter1->input2->ButtonPressed = 0;
        fighter1->input2->Ticks = 0;
    }
    if (rapTicks > fighter1->input1->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter1->input1->ButtonPressed = 0;
        fighter1->input1->Ticks = 0;
    }

    if (rapTicks > fighter2->input6->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter2->input6->ButtonPressed = 0;
        fighter2->input6->Ticks = 0;
    }
    if (rapTicks > fighter2->input5->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter2->input5->ButtonPressed = 0;
        fighter2->input5->Ticks = 0;
    }
    if (rapTicks > fighter2->input4->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter2->input4->ButtonPressed = 0;
        fighter2->input4->Ticks = 0;
    }
    if (rapTicks > fighter2->input3->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter2->input3->ButtonPressed = 0;
        fighter2->input3->Ticks = 0;
    }
    if (rapTicks > fighter2->input2->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter2->input2->ButtonPressed = 0;
        fighter2->input2->Ticks = 0;
    }
    if (rapTicks > fighter2->input1->Ticks + PLAYER_INPUT_TIMEOUT)
    {
        fighter2->input1->ButtonPressed = 0;
        fighter2->input1->Ticks = 0;
    }
}

void playerinputReset(struct Fighter* fighter1, struct Fighter* fighter2)
{
    playerinputInit(fighter1);
    playerinputInit(fighter2);
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
    else if (jagpadValue == (int)JAGPAD_0)
        return INPUT_ZERO;
    else if (jagpadValue == (int)JAGPAD_HASH)
        return INPUT_HASH;
    else if (jagpadValue == (int)JAGPAD_STAR)
        return INPUT_STAR;

    return 0;
}