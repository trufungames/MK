struct State {
    short Name;
    void (*enter)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
    void (*update)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
    void (*sleep)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
    void (*handleInput)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
};

struct StateMachine {
    struct State* (states)[STATE_TOTAL_COUNT];
};

void stateMachineAdd(struct StateMachine* stateMachine, short name, struct State* state);
void stateMachineInit(struct StateMachine* stateMachine, short name, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineUpdate(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineHandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineGoto(struct StateMachine* stateMachine, short newState, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineSleep(struct StateMachine* stateMachine, short ticks, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);

void StateIdle_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdle_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdle_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdle_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBlocking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDucking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDucking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDucking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDucking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateWalkingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingForward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateWalkingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingBackward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumping_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumping_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumping_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumping_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingForward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingBackward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDuckBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckBlocking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowRepeatPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowRepeatPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowRepeatPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowRepeatPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighRepeatPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighRepeatPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighRepeatPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighRepeatPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateRoundhouseKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRoundhouseKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRoundhouseKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRoundhouseKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateUppercutting_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateUppercutting_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateUppercutting_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateUppercutting_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDuckKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSweeping_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSweeping_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSweeping_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSweeping_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingKickingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingForward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingKickingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingBackward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingPunchingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingForward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingPunchingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingBackward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitLow_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLow_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLow_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLow_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitHigh_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHigh_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHigh_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHigh_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitSweep_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSweep_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSweep_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSweep_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateGetUp_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateGetUp_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateGetUp_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateGetUp_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBack_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBack_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBack_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBack_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBackLow_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBackLow_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBackLow_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBackLow_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitUppercut_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitUppercut_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitUppercut_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitUppercut_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLaydown_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLaydown_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLaydown_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLaydown_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitDropKick_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDropKick_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDropKick_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDropKick_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitAir_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitAir_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitAir_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitAir_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlocking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitDuckingBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDuckingBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDuckingBlocking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDuckingBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBlockingKnockback_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlockingKnockback_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlockingKnockback_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlockingKnockback_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBodyPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBodyKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateThrowing_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowing_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowing_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowing_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBeingThrown_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBeingThrown_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBeingThrown_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBeingThrown_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateTurningAround_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateTurningAround_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateTurningAround_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateTurningAround_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateThrowingProjectile_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowingProjectile_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowingProjectile_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowingProjectile_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateCageShadowKick_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageShadowKick_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageShadowKick_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageShadowKick_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateCageNutPunch_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageNutPunch_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageNutPunch_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageNutPunch_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitNuts_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitNuts_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitNuts_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitNuts_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateKanoCannonBall_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKanoCannonBall_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKanoCannonBall_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKanoCannonBall_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);


//TODOs
//[X] Add HIT_BLOCKING state
//[X] Add HIT_BLOCKING_KNOCKBACK state (when blocking a dropkick the fighter gets knocked back a few pixels)
//[X] Add Body-To-Body states
//[X] Add ImpactFrame(s) to the PunchRepeat High and Low states
//[X] Add Throw States
//[X] Add Turn Around State
//[X] Add Collision Detection between fighters, push them out if on top of each other
//[ ] Add Projectiles back in using states
//[X] Fix flames on Palace Gates
//[x] Add new background image to Palace Gates
//[X] Fix Sound to use round-robin
//[ ] Fix the camera, once and for all!!
//[ ] Fix match progression