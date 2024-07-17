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
void stateMachineGoto(struct StateMachine* stateMachine, int name);

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