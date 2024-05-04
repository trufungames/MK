struct ImpactFrame {
    short Frame;
    short RelativePositionX;
    short RelativePositionY;
};

void impactFrameReset(struct Fighter* fighter);

void impactFrameUpdate(struct SpriteAnimator* animator, struct Fighter* fighter, struct ImpactFrame* impactFrame);