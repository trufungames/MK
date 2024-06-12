struct AnimationFrame {
    unsigned short width;
    unsigned short height;
    unsigned short x;
    unsigned short y;
    unsigned short offsetX;
    unsigned short offsetY;
    unsigned int ticks;
};

void animateFrame(unsigned int spriteIndex, unsigned int frame, struct AnimationFrame animationFrames[], float mulFactor, unsigned int base, int idleFrameWidth);

void animateFrame(unsigned int spriteIndex, unsigned int frame, struct AnimationFrame animationFrames[], float mulFactor, unsigned int base, int idleFrameWidth, int positionX, int positionY, int direction);

struct SpriteAnimator {
    unsigned int spriteIndex;
    float mulFactor;
    unsigned int base;
    int lastTick;
    short currentFrame;
    short idleFrameWidth;
    struct AnimationFrame* currentAnimationFrame;
};

void setFrame(unsigned int spriteIndex, short width, short height, short x, short y, float mulFactor, unsigned int base);

void setAnimationFrame(unsigned int spriteIndex, SpriteAnimator* animator, struct AnimationFrame* animationFrame, int x, int y, int direction);

short getAnimationFrameWidth(struct AnimationFrame animationFrames[], short currentFrame);

bool animationIsComplete(struct SpriteAnimator *animator, short totalFrames);

void updateSpriteAnimator(struct SpriteAnimator *animator, struct AnimationFrame animationFrames[], short totalFrames, bool playForward, bool loop);

void updateSpriteAnimator(struct SpriteAnimator *animator, struct AnimationFrame animationFrames[], short totalFrames, bool playForward, bool loop, short positionX, short positionY, short direction);