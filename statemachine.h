struct State {
    short Name;
    void (*enter)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
    void (*update)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
    void (*sleep)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
    void (*handleInput)(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
};

struct StateMachine {
    struct State* (states)[STATE_TOTAL_COUNT];
};

void stateMachineAdd(struct StateMachine* stateMachine, short name, struct State* state);
void stateMachineInit(struct StateMachine* stateMachine, short name, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineUpdate(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator, struct Fighter* opponent);
void stateMachineHandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineGoto(struct StateMachine* stateMachine, short newState, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);
void stateMachineSleep(struct StateMachine* stateMachine, short ticks, struct Fighter* fighter, struct SpriteAnimator* spriteAnimator);

void StateIdle_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdle_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateIdle_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdle_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateBlocking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDucking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDucking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateDucking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDucking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateWalkingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateWalkingForward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateWalkingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateWalkingBackward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateWalkingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumping_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumping_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumping_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumping_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumpingForward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumpingBackward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDuckBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateDuckBlocking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateLowPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowRepeatPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowRepeatPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateLowRepeatPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowRepeatPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHighPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighRepeatPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighRepeatPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHighRepeatPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighRepeatPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLowKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateLowKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLowKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHighKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHighKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHighKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateRoundhouseKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRoundhouseKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateRoundhouseKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRoundhouseKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateUppercutting_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateUppercutting_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateUppercutting_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateUppercutting_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateDuckKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateDuckKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateDuckKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumpPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumpKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSweeping_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSweeping_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateSweeping_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSweeping_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingKickingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumpingKickingForward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingKickingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumpingKickingBackward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingKickingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingPunchingForward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingForward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumpingPunchingForward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingForward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateJumpingPunchingBackward_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingBackward_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateJumpingPunchingBackward_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateJumpingPunchingBackward_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitLow_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLow_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitLow_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLow_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitHigh_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHigh_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitHigh_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHigh_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitSweep_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSweep_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitSweep_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSweep_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateGetUp_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateGetUp_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateGetUp_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateGetUp_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBack_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBack_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitBack_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBack_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBackLow_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBackLow_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitBackLow_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBackLow_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitUppercut_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitUppercut_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitUppercut_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitUppercut_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateLaydown_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLaydown_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateLaydown_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateLaydown_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitDropKick_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDropKick_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitDropKick_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDropKick_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitAir_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitAir_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitAir_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitAir_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitBlocking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitDuckingBlocking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDuckingBlocking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitDuckingBlocking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitDuckingBlocking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitBlockingKnockback_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlockingKnockback_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitBlockingKnockback_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitBlockingKnockback_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBodyPunching_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyPunching_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateBodyPunching_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyPunching_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBodyKicking_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyKicking_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateBodyKicking_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBodyKicking_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateThrowing_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowing_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateThrowing_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowing_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateBeingThrown_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBeingThrown_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateBeingThrown_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateBeingThrown_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateTurningAround_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateTurningAround_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateTurningAround_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateTurningAround_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateThrowingProjectile_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowingProjectile_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateThrowingProjectile_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateThrowingProjectile_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateCageShadowKick_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageShadowKick_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateCageShadowKick_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageShadowKick_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateCageNutPunch_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageNutPunch_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateCageNutPunch_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageNutPunch_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitNuts_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitNuts_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitNuts_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitNuts_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateKanoCannonBall_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKanoCannonBall_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateKanoCannonBall_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKanoCannonBall_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateRaidenTorpedo_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRaidenTorpedo_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateRaidenTorpedo_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRaidenTorpedo_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitTorpedo_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitTorpedo_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitTorpedo_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitTorpedo_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateRaidenTeleport_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRaidenTeleport_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateRaidenTeleport_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRaidenTeleport_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateKangFlyingKick_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKangFlyingKick_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateKangFlyingKick_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKangFlyingKick_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateScorpionHarpoon_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateScorpionHarpoon_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateScorpionHarpoon_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateScorpionHarpoon_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitHarpoon_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHarpoon_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitHarpoon_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitHarpoon_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateScorpionReelingIn_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateScorpionReelingIn_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateScorpionReelingIn_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateScorpionReelingIn_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateStunned_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateStunned_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateStunned_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateStunned_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateScorpionTeleport_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateScorpionTeleport_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateScorpionTeleport_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateScorpionTeleport_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSubzeroFreeze_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSubzeroFreeze_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateSubzeroFreeze_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSubzeroFreeze_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitFreeze_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitFreeze_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitFreeze_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitFreeze_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateIdleFall_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdleFall_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateIdleFall_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIdleFall_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSubzeroSlide_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSubzeroSlide_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateSubzeroSlide_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSubzeroSlide_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSonyaLegGrab_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSonyaLegGrab_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateSonyaLegGrab_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSonyaLegGrab_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitLegGrab_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLegGrab_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitLegGrab_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitLegGrab_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSonyaSquareFlight_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSonyaSquareFlight_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateSonyaSquareFlight_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSonyaSquareFlight_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateKasumiFireball_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKasumiFireball_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateKasumiFireball_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKasumiFireball_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateKasumiRoll_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKasumiRoll_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateKasumiRoll_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKasumiRoll_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateIsLoser_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIsLoser_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateIsLoser_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIsLoser_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateIsWinner_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIsWinner_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateIsWinner_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateIsWinner_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateFinishHim_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateFinishHim_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateFinishHim_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateFinishHim_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateCageFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateCageFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateCageFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitCageFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitCageFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitCageFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitCageFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateKanoFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKanoFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateKanoFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKanoFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitKanoFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitKanoFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitKanoFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitKanoFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateRaidenFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRaidenFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateRaidenFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateRaidenFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitRaidenFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitRaidenFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitRaidenFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitRaidenFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateKangFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKangFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateKangFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKangFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateScorpionFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateScorpionFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateScorpionFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateScorpionFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitSkeleton_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSkeleton_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitSkeleton_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSkeleton_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSubzeroFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSubzeroFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateSubzeroFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSubzeroFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitSubzeroFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSubzeroFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitSubzeroFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitSubzeroFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateSonyaFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSonyaFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateSonyaFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateSonyaFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateKasumiFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKasumiFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateKasumiFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateKasumiFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitKasumiFatality1_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitKasumiFatality1_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitKasumiFatality1_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitKasumiFatality1_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StatePitFatality_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StatePitFatality_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StatePitFatality_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StatePitFatality_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);

void StateHitPitFatality_Enter(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitPitFatality_Update(struct StateMachine*, struct Fighter*, struct SpriteAnimator*, struct Fighter*);
void StateHitPitFatality_Sleep(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);
void StateHitPitFatality_HandleInput(struct StateMachine*, struct Fighter*, struct SpriteAnimator*);