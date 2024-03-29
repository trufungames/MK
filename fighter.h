struct Fighter {
    unsigned int fighterIndex;
    unsigned int spriteIndex;
    unsigned int spriteBase;
    unsigned int IDLE_FRAME_COUNT;
    unsigned int DIZZY_FRAME_COUNT;
    unsigned int WINS_FRAME_COUNT;
    unsigned int WALK_FRAME_COUNT;
    unsigned int TURN_FRAME_COUNT;
    unsigned int JUMP_FRAME_COUNT;
    unsigned int JUMP_ROLL_FRAME_COUNT;
    unsigned int DUCK_FRAME_COUNT;
    unsigned int BLOCK_FRAME_COUNT;
    unsigned int BLOCK_HIT_FRAME_COUNT;
    unsigned int BLOCK_DUCK_FRAME_COUNT;
    unsigned int BLOCK_DUCK_HIT_FRAME_COUNT;
    unsigned int LOW_PUNCH_FRAME_COUNT;
    unsigned int HIGH_PUNCH_FRAME_COUNT;
    unsigned int LOW_KICK_FRAME_COUNT;
    unsigned int HIGH_KICK_FRAME_COUNT;
    unsigned int JUMP_PUNCH_FRAME_COUNT;
    unsigned int JUMP_KICK_FRAME_COUNT;
    unsigned int UPPERCUT_FRAME_COUNT;
    unsigned int KIPUP_FRAME_COUNT;
    unsigned int SWEEP_FRAME_COUNT;
    unsigned int ROUNDHOUSE_FRAME_COUNT;
    unsigned int BODY_PUNCH_FRAME_COUNT;
    unsigned int BODY_KICK_FRAME_COUNT;
    unsigned int DUCK_KICK_FRAME_COUNT;
    unsigned int THROW_FRAME_COUNT;
    unsigned int BEING_THROWN_FRAME_COUNT;
    unsigned int HIT_LOW_FRAME_COUNT;
    unsigned int HIT_HIGH_FRAME_COUNT;
    unsigned int HIT_BACK_FRAME_COUNT;
    unsigned int HIT_FALL_FRAME_COUNT;
    unsigned int HIT_SWEEP_FRAME_COUNT;

    unsigned int lightningSpriteIndex;
    bool IsIdle;
    bool IsWinner;
    bool IsWalking;
    bool IsAttacking;
    bool IsJumping;
    bool IsJumpingRollForward;
    bool IsJumpingRollBackward;
    bool IsDucking;
    bool IsBlocking;
    bool IsBlockingHit;
    bool IsLowPunching;
    bool IsHighPunching;
    bool IsLowKicking;
    bool IsHighKicking;
    bool IsJumpPunching;
    bool IsJumpKicking;
    bool IsJumpDropKicking;
    bool IsUppercutting;
    bool IsSweeping;
    bool IsRoundhousing;
    bool IsBodyPunching;
    bool IsBodyKicking;
    bool IsDuckKicking;
    bool DPadReleased;
    bool ButtonReleased;
    bool IsHitLow;
    bool IsHitHigh;
    bool IsHitBack;
    bool IsHitBackLow;
    bool IsHitBackHigh;
    bool IsHitBackLight;
    bool IsHitBackLightKano;
    bool IsHitFall;
    bool IsHitSweep;
    bool IsHitDropKick;
    bool IsHitBodyKick;
    bool IsMidAir;
    bool IsFalling;
    bool IsLayingDown;
    bool IsGettingUp;
    bool IsBeingDamaged;
    bool IsPushing;
    bool IsTurning;
    bool IsThrowing;
    bool IsBeingThrown;
    bool IsBeingThrownInAir;
    bool IsBeingThrownLow;
    bool IsClose;
    bool IsActive;
    bool IsDizzy;
    bool IsDefeated;
    bool IsBeingPushed;
    bool DoBlockSequence;
    bool DoUppercutSequence;
    bool DoDefeatedSequence;
    bool DoWinSequence;
    bool DoThrowSequence;
    int ThrowX;
    int ThrowY;
    bool AcceptingInput;
    bool MadeContactUppercut;
    bool MadeContact;
    int CooldownTicksUppercut;
    int CooldownTicksImpact;
    bool JumpLanded;
    bool PlayedJumpRoll;
    int JumpRollTicks;
    unsigned int HB_ATTACK;
    int pad;
    unsigned int PAD;
    float playerMoveForwardSpeed;
    float playerMoveBackwardSpeed;
    float playerKnockbackSpeed;
    float playerUppercutXSpeed;
    float playerDropKickXSpeed;
    float playerThrowXSpeed;
    float playerJumpXSpeed;
    float playerXTraveled;
    float playerPushSpeed;
    bool airAttackPerformed;
    int touchTicks;
    int lastTicks;
    int damageTicks;
    int dropKickTicks;
    int positionX;
    int positionY;
    int hitPoints;
    int pendingDamage;
    bool shakeScreen;
    struct SoundHandler* soundHandler;
    int direction;
    bool justTurned;
    bool changedDirection;
    bool isPlayer1;
    float gravity;
    float momentumY;
    float jumpMomentumYStart;
    float uppercutMomentumYStart;
    float dropKickMomentemYStart;
    float throwMomentemYStart;
    int roundsLost;
    bool hasRoomToMove;
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
    struct AnimationFrame (*idleFrames)[12];
    struct AnimationFrame (*dizzyFrames)[7];
    struct AnimationFrame (*winsFrames)[15];
    struct AnimationFrame (*walkFrames)[9];
    struct AnimationFrame (*turnFrames)[2];
    struct AnimationFrame (*jumpFrames)[4];
    struct AnimationFrame (*jumpRollFrames)[8];
    struct AnimationFrame (*duckFrames)[3];
    struct AnimationFrame (*blockFrames)[3];
    struct AnimationFrame (*blockHitFrames)[6];
    struct AnimationFrame (*blockDuckFrames)[2];
    struct AnimationFrame (*blockDuckHitFrames)[6];
    struct AnimationFrame (*punchLowFrames)[5];
    struct AnimationFrame (*punchHighFrames)[5];
    struct AnimationFrame (*kickLowFrames)[7];
    struct AnimationFrame (*kickHighFrames)[8];
    struct AnimationFrame (*jumpPunchFrames)[3];
    struct AnimationFrame (*jumpKickFrames)[3];
    struct AnimationFrame (*jumpDropKickFrames)[3];
    struct AnimationFrame (*uppercutFrames)[6];
    struct AnimationFrame (*hitLowFrames)[6];
    struct AnimationFrame (*hitHighFrames)[6];
    struct AnimationFrame (*hitBackFrames)[7];
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
};

void fighterHide(struct Fighter* fighter);

void fighterShow(struct Fighter* fighter);

void fighterMakeSelectable(struct Fighter* fighter, bool isPlayer1);

void fighterInitialize(struct Fighter* fighter, bool isPlayer1, struct SoundHandler* soundHandler, struct ImpactFrame* impactFrameLowPunch, struct ImpactFrame* impactFrameHighPunch, struct ImpactFrame* impactFrameLowKick, struct ImpactFrame* impactFrameHighKick, struct ImpactFrame* impactFrameUppercut, struct ImpactFrame* impactFrameSweep, struct ImpactFrame* impactFrameJumpPunch, struct ImpactFrame* impactFrameJumpKick, struct ImpactFrame* impactFrameRoundhouse, struct ImpactFrame* impactFrameBodyPunch, struct ImpactFrame* impactFrameBodyKick, struct ImpactFrame* impactFrameDuckKick, struct ImpactFrame* impactFrameThrow);

void fighterRestartMatch(struct Fighter* fighter);

void fighterUpdateIdle(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame idleFrames[]);

void fighterUpdate(float delta, struct Fighter* fighter, struct SpriteAnimator* animator);

void fighterHandleDamage(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward);

void fighterHandleInput(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward);

void fighterPlayHiya(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayGroan(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayYell(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayJump(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayUppercutReaction(struct SoundHandler* soundHandler);

void fighterImpactCheck(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterHandleImpact(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterTurnCheck(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterUpdateHealthbars(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterCloseCheck(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterAddPendingDamage(struct Fighter* fighter, int damage, bool shakeScreen);

void fighterTakeDamage(struct Fighter* fighter, int damage, int sleepTicks);

void fighterShiftRight(struct Fighter* fighter);

void fighterShiftLeft(struct Fighter* fighter);

void fighterLockBoundaries(struct Fighter* fighter);

void fighterAlignSpriteAndHitbox(struct Fighter* fighter);

void fighterResetSpriteIndex(struct Fighter* fighter, struct SpriteAnimator* animator, bool isPlayer1);

void fighterSetOnFloor(struct Fighter* fighter);

bool fighterHasRoomToMove(struct Fighter* fighter, struct Fighter* otherFighter);

void fighterPositionXAdd(struct Fighter* fighter, int xAdd);

void fighterCastShadow(struct Fighter* fighter);

void fighterStartUp();

void fighterMakeDizzy(struct Fighter* fighter);

void fighterResetFlags(struct Fighter* fighter);

void fighterResetFlagsAll(struct Fighter* fighter1, struct Fighter* fighter2);