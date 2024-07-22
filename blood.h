struct BloodDrop {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
    int LastTicks;
    short Direction;
    float MomentumY;
    float MomentumX;
};

struct BloodBall {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
    int LastTicks;
    short Direction;
    float MomentumX;
};

struct BloodPool {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
};

struct BloodSquirt {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
};

struct BloodSpray {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
    int X;
    int Y;
    int LastTicks;
};

void bloodInit();

void bloodUpdate(struct SoundHandler* soundHandler);

void bloodSpray(short x, short y, short direction);

void bloodGlob(short x, short y, short direction);

void bloodDrop(short x, short y, short direction);

void bloodBall(short x, short y, short direction);

void bloodPool(short x, short y);

void bloodSquirt(short x, short y);

void bloodResetTicks();

void bloodImpale(short x, short y, short direction);