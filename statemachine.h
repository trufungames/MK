struct State {
    int Name;
    void (*enter)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
    void (*exit)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
    void (*update)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
    void (*handleInput)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
};

struct StateMachine {
    struct State* (states)[STATE_TOTAL_COUNT];
    struct State* currentState;
    int vars[3];
    bool exitingState;
};

void stateMachineAdd(struct StateMachine* stateMachine, int name, struct State* state);
void stateMachineInit(struct StateMachine* stateMachine, int name, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineUpdate(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineHandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineGoto(struct StateMachine* stateMachine, int newState, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);

void StateIdle_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdle_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdle_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdle_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBlocking_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDucking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDucking_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDucking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDucking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateWalkingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingForward_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateWalkingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingBackward_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumping_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumping_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumping_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumping_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingForward_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingBackward_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDuckBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckBlocking_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowPunching_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowRepeatPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowRepeatPunching_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowRepeatPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowRepeatPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighPunching_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighRepeatPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighRepeatPunching_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighRepeatPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighRepeatPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowKicking_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighKicking_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateRoundhouseKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRoundhouseKicking_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRoundhouseKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRoundhouseKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateUppercutting_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateUppercutting_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateUppercutting_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateUppercutting_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDuckKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckKicking_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpPunching_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpKicking_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSweeping_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSweeping_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSweeping_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSweeping_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingKickingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingForward_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingKickingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingBackward_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingPunchingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingForward_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingPunchingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingBackward_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitLow_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLow_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLow_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLow_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitHigh_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHigh_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHigh_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHigh_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitSweep_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSweep_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSweep_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSweep_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateGetUp_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateGetUp_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateGetUp_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateGetUp_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBack_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBack_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBack_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBack_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBackLow_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBackLow_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBackLow_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBackLow_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitUppercut_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitUppercut_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitUppercut_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitUppercut_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLaydown_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLaydown_Exit(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLaydown_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLaydown_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);