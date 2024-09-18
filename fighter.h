struct Fighter {
    short fighterIndex;
    unsigned int spriteIndex;
    unsigned int spriteBase;
    unsigned short IDLE_FRAME_COUNT;
    unsigned short DIZZY_FRAME_COUNT;
    unsigned short WINS_FRAME_COUNT;
    unsigned short SPECIAL_FRAME_COUNT;
    unsigned short WALK_FRAME_COUNT;
    unsigned short TURN_FRAME_COUNT;
    unsigned short JUMP_FRAME_COUNT;
    unsigned short JUMP_ROLL_FRAME_COUNT;
    unsigned short DUCK_FRAME_COUNT;
    unsigned short BLOCK_FRAME_COUNT;
    unsigned short BLOCK_HIT_FRAME_COUNT;
    unsigned short BLOCK_DUCK_FRAME_COUNT;
    unsigned short BLOCK_DUCK_HIT_FRAME_COUNT;
    unsigned short LOW_PUNCH_FRAME_COUNT;
    unsigned short LOW_PUNCH_REPEAT_FRAME_COUNT;
    unsigned short HIGH_PUNCH_FRAME_COUNT;
    unsigned short HIGH_PUNCH_REPEAT_FRAME_COUNT;
    unsigned short LOW_KICK_FRAME_COUNT;
    unsigned short HIGH_KICK_FRAME_COUNT;
    unsigned short JUMP_PUNCH_FRAME_COUNT;
    unsigned short JUMP_KICK_FRAME_COUNT;
    unsigned short UPPERCUT_FRAME_COUNT;
    unsigned short KIPUP_FRAME_COUNT;
    unsigned short SWEEP_FRAME_COUNT;
    unsigned short ROUNDHOUSE_FRAME_COUNT;
    unsigned short BODY_PUNCH_FRAME_COUNT;
    unsigned short BODY_KICK_FRAME_COUNT;
    unsigned short DUCK_KICK_FRAME_COUNT;
    unsigned short THROW_FRAME_COUNT;
    unsigned short BEING_THROWN_FRAME_COUNT;
    unsigned short HIT_LOW_FRAME_COUNT;
    unsigned short HIT_HIGH_FRAME_COUNT;
    unsigned short HIT_BACK_FRAME_COUNT;
    unsigned short HIT_UPPERCUT_FRAME_COUNT;
    unsigned short HIT_FALL_FRAME_COUNT;
    unsigned short HIT_SWEEP_FRAME_COUNT;
    unsigned short SPECIAL_1_FRAME_COUNT;
    unsigned short SPECIAL_2_FRAME_COUNT;
    unsigned short SPECIAL_3_FRAME_COUNT;
    unsigned short PROJECTILE_FRAME_COUNT;
    unsigned short PROJECTILE_END_FRAME_COUNT;
    unsigned int lightningSpriteIndex;
    short opponentIndex;
    bool IsWinner;
    bool DPadReleased;
    bool DPadUpReleased;
    bool ButtonReleased;
    bool DPadWasRecorded;
    bool NoBlood;
    bool NoSound;
    short HarpoonKnockbackDistance;
    short HarpoonSourceX;
    bool IsHarpoonComplete;
    bool DoHarpoonReelingInSequence;
    bool IsHarpoonReelingIn;
    short HarpoonCenterX;
    short HarpoonOffsetY;
    short HarpoonDistance;
    short HarpoonShakeDirection;
    short HarpoonShakeCount;
    bool IsBlocking;
    bool IsHitHarpoon;
    bool IsBeingTripped;
    bool HarpoonBlocked;
    short HarpoonFlashCount;
    bool IsSlidingToPositionX;
    int SlidePositionXTarget;
    bool IsBeingDamaged;
    bool IsPushing;
    bool IsTurning;
    bool IsClose;
    bool IsActive;
    bool IsDizzy;
    bool TookFinalBlow;
    bool IsStunned;
    bool IsDefeated;
    bool IsFrozen;
    bool FrozenShakeComplete;
    int FrozenShakeDirection;
    int FrozenShakeCount;
    int FrozenShakeTicks;
    bool IsBeingPushed;
    bool DoBlockSequence;
    bool DoUppercutSequence;
    bool DoDefeatedSequence;
    bool DoWinSequence;
    bool DoThrowSequence;
    bool DoImpaleBloodSequence;
    bool ResetTicks;
    short ThrowX;
    short ThrowY;
    bool AcceptingInput;
    bool MadeContactUppercut;
    bool MadeContact;
    bool ProjectileMadeContact;
    int CooldownTicksUppercut;
    int CooldownTicksImpact;
    bool JumpLanded;
    bool PlayedJumpRoll;
    int JumpRollTicks;
    unsigned int HB_ATTACK;
    int pad;
    unsigned int Score;
    bool ScoreChanged;
    unsigned int PAD;
    float playerKnockbackSpeed;
    float playerUppercutXSpeed;
    float playerDropKickXSpeed;
    float playerThrowXSpeed;
    float playerJumpXSpeed;
    float playerXTraveled;
    float playerPushSpeed;
    bool airAttackPerformed;
    short lastTicks;
    short touchTicks;
    short positionX;
    short positionY;
    short projectilePositionX;
    short projectilePositionY;
    short worldPositionX;
    short worldPositionY;
    short hitPoints;
    short pendingDamage;
    bool shakeScreen;
    struct SoundHandler* soundHandler;
    short direction;
    bool justTurned;
    bool changedDirection;
    bool isPlayer1;
    short roundsLost;
    bool hasRoomToMove;
    bool isMaxDistance;
    int defaultClut;
    int frozenClut;
    short vars[3];
    struct State* currentState;
    bool exitingState;
    bool isSleeping;
    short sleepTicks;
    struct PlayerInput* input1;
    struct PlayerInput* input2;
    struct PlayerInput* input3;
    struct PlayerInput* input4;
    struct PlayerInput* input5;
    struct PlayerInput* input6;
    int (*special1Inputs)[PLAYER_INPUT_STACK_SIZE];
    int (*special2Inputs)[PLAYER_INPUT_STACK_SIZE];
    int (*special3Inputs)[PLAYER_INPUT_STACK_SIZE];
    short special1InputCount;
    short special2InputCount;
    short special3InputCount;
    void (*doSpecialMove1)(struct StateMachine*,struct Fighter*, struct SpriteAnimator*);
    void (*doSpecialMove2)(struct StateMachine*,struct Fighter*, struct SpriteAnimator*);
    void (*doSpecialMove3)(struct StateMachine*,struct Fighter*, struct SpriteAnimator*);
    void (*doProjectileEnd)(struct StateMachine*,struct Fighter*, struct SpriteAnimator*);
    struct ImpactFrame* impactFrameLowPunch;
    struct ImpactFrame* impactFrameHighPunch;
    struct ImpactFrame* impactFrameLowKick;
    struct ImpactFrame* impactFrameHighKick;
    struct ImpactFrame* impactFrameJumpPunch;
    struct ImpactFrame* impactFrameJumpKick;
    struct ImpactFrame* impactFrameUppercut;
    struct ImpactFrame* impactFrameSweep;
    struct ImpactFrame* impactFrameRoundhouse;
    struct ImpactFrame* impactFrameBodyPunch;
    struct ImpactFrame* impactFrameBodyKick;
    struct ImpactFrame* impactFrameDuckKick;
    struct ImpactFrame* impactFrameThrow;
    struct ImpactFrame* impactFrameSpecial3;
    struct SpriteAnimator* spriteAnimator;
    struct SpriteAnimator* projectileAnimator;
    struct AnimationFrame (*idleFrames)[12];
    struct AnimationFrame (*dizzyFrames)[7];
    struct AnimationFrame (*winsFrames)[15];
    struct AnimationFrame (*specialFrames)[15];
    struct AnimationFrame (*walkFrames)[9];
    struct AnimationFrame (*turnFrames)[2];
    struct AnimationFrame (*jumpFrames)[4];
    struct AnimationFrame (*jumpRollFrames)[20];
    struct AnimationFrame (*duckFrames)[3];
    struct AnimationFrame (*blockFrames)[3];
    struct AnimationFrame (*blockHitFrames)[6];
    struct AnimationFrame (*blockDuckFrames)[2];
    struct AnimationFrame (*blockDuckHitFrames)[6];
    struct AnimationFrame (*punchLowFrames)[5];
    struct AnimationFrame (*punchLowRepeatFrames)[6];
    struct AnimationFrame (*punchHighFrames)[5];
    struct AnimationFrame (*punchHighRepeatFrames)[6];
    struct AnimationFrame (*kickLowFrames)[7];
    struct AnimationFrame (*kickHighFrames)[8];
    struct AnimationFrame (*jumpPunchFrames)[3];
    struct AnimationFrame (*jumpKickFrames)[3];
    struct AnimationFrame (*jumpDropKickFrames)[3];
    struct AnimationFrame (*uppercutFrames)[6];
    struct AnimationFrame (*hitLowFrames)[6];
    struct AnimationFrame (*hitHighFrames)[6];
    struct AnimationFrame (*hitBackFrames)[7];
    struct AnimationFrame (*hitUppercutFrames)[26];
    struct AnimationFrame (*hitFallFrames)[7];
    struct AnimationFrame (*hitSweepFrames)[6];
    struct AnimationFrame (*kipUpFrames)[5];
    struct AnimationFrame (*sweepFrames)[9];
    struct AnimationFrame (*roundhouseFrames)[7];
    struct AnimationFrame (*bodyPunchFrames)[5];
    struct AnimationFrame (*bodyKickFrames)[5];
    struct AnimationFrame (*duckKickFrames)[5];
    struct AnimationFrame (*throwFrames)[8];
    struct AnimationFrame (*beingThrownFrames)[6];
    struct AnimationFrame (*beingThrownLowFrames)[6];
    struct AnimationFrame (*special1Frames)[6];
    struct AnimationFrame (*special1EndFrames)[6];
    struct AnimationFrame (*special2Frames)[7];
    struct AnimationFrame (*special2EndFrames)[7];
    struct AnimationFrame (*special3Frames)[11];
    struct AnimationFrame (*projectileFrames)[28];
    struct AnimationFrame (*projectileEndFrames)[5];
    struct AnimationFrame (*hitNutsFrames)[2];
    struct AnimationFrame (*lightningFrames)[30];
    struct Fighter* Opponent;
};

void fighterHide(struct Fighter* fighter);

void fighterShow(struct Fighter* fighter);

void fighterMakeSelectable(struct Fighter* fighter, bool isPlayer1);

void fighterInitialize(struct Fighter* fighter, bool isPlayer1, struct SoundHandler* soundHandler, struct ImpactFrame* impactFrameLowPunch, struct ImpactFrame* impactFrameHighPunch, struct ImpactFrame* impactFrameLowKick, struct ImpactFrame* impactFrameHighKick, struct ImpactFrame* impactFrameUppercut, struct ImpactFrame* impactFrameSweep, struct ImpactFrame* impactFrameJumpPunch, struct ImpactFrame* impactFrameJumpKick, struct ImpactFrame* impactFrameRoundhouse, struct ImpactFrame* impactFrameBodyPunch, struct ImpactFrame* impactFrameBodyKick, struct ImpactFrame* impactFrameDuckKick, struct ImpactFrame* impactFrameThrow);

void fighterRestartMatch(struct Fighter* fighter);

void fighterUpdateIdle(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame idleFrames[]);

void fighterUpdateVictoryPose(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame winFrames[]);

void fighterUpdateSpecialPose(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame winFrames[]);

void fighterUpdate(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* animator);

void fighterHandleDamage(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward);

void fighterHandleInput(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* animator);

void fighterCaptureDpadInputs(struct Fighter* fighter);

bool fighterHandleSpecialMoves(struct StateMachine* stateMachine, struct Fighter* fighter, struct SpriteAnimator* animator);

void fighterPlayHiya(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayGroan(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayYell(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayJump(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayUppercutReaction(struct SoundHandler* soundHandler);

void fighterImpactCheck(struct StateMachine* stateMachine, struct Fighter* fighter1, struct SpriteAnimator* spriteAnimator1, struct Fighter* fighter2, struct SpriteAnimator* spriteAnimator2);

void fighterHandleImpact(struct StateMachine* stateMachine, struct Fighter* fighter1, struct SpriteAnimator* spriteAnimator1, struct Fighter* fighter2, struct SpriteAnimator* spriteAnimator2);

void fighterHandleProjectile(struct StateMachine* stateMachine, struct Fighter* fighter1, struct Fighter* fighter2);

void fighterTurnCheck(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterUpdateHealthbars(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterCloseCheck(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterAddPendingDamage(struct Fighter* fighter, int damage, bool shakeScreen, struct Fighter* attackingFighter, int points);

void fighterTakeDamage(struct Fighter* fighter, int damage);

void fighterShiftRight(struct Fighter* fighter);

void fighterShiftLeft(struct Fighter* fighter);

void fighterLockBoundaries(struct Fighter* fighter);

void fighterAlignSpriteAndHitbox(struct Fighter* fighter);

void fighterResetSpriteIndex(struct Fighter* fighter, struct SpriteAnimator* animator, bool isPlayer1);

void fighterSetOnFloor(struct Fighter* fighter);

bool fighterHasRoomToMove(struct Fighter* fighter, struct Fighter* otherFighter);

void fighterPositionXAdd(struct Fighter* fighter, int xAdd);

void fighterCastShadow(struct Fighter* fighter, bool includeY);

void fighterStartUp();

void fighterMakeDizzy(struct Fighter* fighter);

void fighterResetFlags(struct Fighter* fighter);

void fighterResetFlagsAll(struct Fighter* fighter1, struct Fighter* fighter2);

int fighterShadowHeightLookup(int height);

void fighterIsMaxDistance(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterTorpedoCheck(struct StateMachine* stateMachine, struct Fighter* fighter1, struct Fighter* fighter2);

void fighterResetTicks(struct Fighter* fighter);

void fighterDrawScores(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterLaydown(struct Fighter* fighter, struct SpriteAnimator* animator);

void fighterResetRaidenLightning(struct Fighter* fighter);

void fighterFreeze(struct Fighter* fighter);

void fighterUnfreeze(struct Fighter* fighter);

void fighterHarpoon(struct Fighter* fighter1, struct Fighter* scorpion);

void fighterHarpoonCheck(struct Fighter* fighter1, struct Fighter* scorpion);

void fighterSlideToPositionX(struct Fighter* fighter, int x);

void fighterButtonCheck(struct Fighter* fighter);

bool fighterCanTakeDamage(struct StateMachine* stateMachine, struct Fighter* fighter);

bool fighterIsBlocking(struct StateMachine* stateMachine, struct Fighter* fighter);

bool fighterIsDuckBlocking(struct StateMachine* stateMachine, struct Fighter* fighter);

bool fighterIsJumping(struct StateMachine* stateMachine, struct Fighter* fighter);

void fighterFaceOpponent(struct Fighter* fighter);

void fighterTurnInstantly(struct Fighter* fighter);