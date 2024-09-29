struct BloodDrop {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
    short LastTicks;
    short Direction;
    short X;
    short Y;
    float MomentumY;
    float MomentumX;
};

struct BloodBall {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
    short LastTicks;
    short Direction;
    float MomentumX;
    short X;
    short Y;
};

struct BloodPool {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
    short X;
    short Y;
};

struct BloodSquirt {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
    short X;
    short Y;
};

struct BloodSpray {
    unsigned int SpriteIndex;
    struct SpriteAnimator* Animator;
    bool InUse;
    short X;
    short Y;
    short LastTicks;
};

void bloodInit();

void bloodUpdate(struct SoundHandler* soundHandler);

void bloodSpray(short x, short y, short direction);

void bloodGlob(short x, short y, short direction);

void bloodDrop(short x, short y, short direction);

void bloodDrip(short x, short y);

void bloodBall(short x, short y, short direction);

void bloodPool(short x, short y);

void bloodSquirt(short x, short y);

void bloodResetTicks();

void bloodImpale(short x, short y, short direction);