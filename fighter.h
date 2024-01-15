struct Fighter {
    unsigned int fighterIndex;
    unsigned int spriteIndex;
    unsigned int spriteBase;
    unsigned int IDLE_FRAME_COUNT;
    unsigned int WALK_FRAME_COUNT;
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
    unsigned int HIT_LOW_FRAME_COUNT;
    unsigned int HIT_HIGH_FRAME_COUNT;
    unsigned int HIT_BACK_FRAME_COUNT;
    unsigned int HIT_FALL_FRAME_COUNT;
    unsigned int HIT_SWEEP_FRAME_COUNT;

    unsigned int lightningSpriteIndex;
    bool IsWalking;
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
    bool DPadReleased;
    bool ButtonReleased;
    bool IsHitLow;
    bool IsHitHigh;
    bool IsHitBack;
    bool IsHitBackHigh;
    bool IsHitFall;
    bool IsHitSweep;
    bool IsHitDropKick;
    bool IsMidAir;
    bool IsFalling;
    bool IsLayingDown;
    bool IsGettingUp;
    bool IsBeingDamaged;
    bool IsPushing;
    bool IsBeingPushed;
    bool DoBlockSequence;
    bool DoUppercutSequence;
    bool AcceptingInput;
    bool MadeContactUppercut;
    bool MadeContact;
    int CooldownTicksUppercut;
    int CooldownTicksImpact;
    bool JumpLanded;
    bool PlayedJumpRoll;
    int JumpRollTicks;
    unsigned int HB_BODY;
    unsigned int HB_ATTACK;
    int pad;
    unsigned int PAD;
    int playerMoveForwardSpeed;
    int playerMoveBackwardSpeed;
    float playerKnockbackSpeed;
    float playerUppercutXSpeed;
    float playerDropKickXSpeed;
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
    struct SoundHandler* soundHandler;
    int direction;
    bool isPlayer1;
    float gravity;
    float momentumY;
    float jumpMomentumYStart;
    float uppercutMomentumYStart;
    float dropKickMomentemYStart;
    float floorLocationY;
    struct ImpactFrame* impactFrameLowPunch;
    struct ImpactFrame* impactFrameHighPunch;
    struct ImpactFrame* impactFrameLowKick;
    struct ImpactFrame* impactFrameHighKick;
    struct ImpactFrame* impactFrameJumpPunch;
    struct ImpactFrame* impactFrameJumpKick;
    struct ImpactFrame* impactFrameUppercut;
    struct ImpactFrame* impactFrameSweep;
    struct AnimationFrame (*idleFrames)[12];
    struct AnimationFrame (*walkFrames)[9];
    struct AnimationFrame (*jumpFrames)[4];
    struct AnimationFrame (*jumpRollFrames)[7];
    struct AnimationFrame (*duckFrames)[3];
    struct AnimationFrame (*blockFrames)[3];
    struct AnimationFrame (*blockHitFrames)[6];
    struct AnimationFrame (*blockDuckFrames)[2];
    struct AnimationFrame (*blockDuckHitFrames)[6];
    struct AnimationFrame (*punchLowFrames)[5];
    struct AnimationFrame (*punchHighFrames)[5];
    struct AnimationFrame (*kickLowFrames)[7];
    struct AnimationFrame (*kickHighFrames)[7];
    struct AnimationFrame (*jumpPunchFrames)[3];
    struct AnimationFrame (*jumpKickFrames)[3];
    struct AnimationFrame (*jumpDropKickFrames)[3];
    struct AnimationFrame (*uppercutFrames)[6];
    struct AnimationFrame (*hitLowFrames)[6];
    struct AnimationFrame (*hitHighFrames)[6];
    struct AnimationFrame (*hitBackFrames)[6];
    struct AnimationFrame (*hitFallFrames)[6];
    struct AnimationFrame (*hitSweepFrames)[6];
    struct AnimationFrame (*kipUpFrames)[5];
    struct AnimationFrame (*sweepFrames)[9];
};

void fighterHide(struct Fighter* fighter);

void fighterShow(struct Fighter* fighter);

void fighterMakeSelectable(struct Fighter* fighter, bool isPlayer1);

void fighterInitialize(struct Fighter* fighter, bool isPlayer1, struct SoundHandler* soundHandler, struct ImpactFrame* impactFrameLowPunch, struct ImpactFrame* impactFrameHighPunch, struct ImpactFrame* impactFrameLowKick, struct ImpactFrame* impactFrameHighKick, struct ImpactFrame* impactFrameUppercut, struct ImpactFrame* impactFrameSweep, struct ImpactFrame* impactFrameJumpPunch, struct ImpactFrame* impactFrameJumpKick);

void fighterUpdateIdle(float delta, struct Fighter *fighter, struct SpriteAnimator* animator, struct AnimationFrame idleFrames[]);

void fighterUpdate(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward);

void fighterHandleDamage(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward);

void fighterHandleInput(float delta, struct Fighter* fighter, struct SpriteAnimator* animator, bool walkForward);

void fighterPlayHiya(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayGroan(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayYell(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayJump(int fighter, struct SoundHandler* soundHandler, bool isPlayer1);

void fighterPlayUppercutReaction(struct SoundHandler* soundHandler);

void fighterImpactCheck(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterHandleImpact(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterUpdateHealthbars(struct Fighter* fighter1, struct Fighter* fighter2);

void fighterAddPendingDamage(struct Fighter* fighter, int damage);

void fighterTakeDamage(struct Fighter* fighter, int damage);