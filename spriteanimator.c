#include "common.h"
#include "spriteanimator.h"
#include "debug.h"

static int tempY = 0;

void animateFrame(unsigned int spriteIndex, unsigned int frame, struct AnimationFrame animationFrames[], float mulFactor, unsigned int base, int idleFrameWidth)
{
    animateFrame(spriteIndex, frame, animationFrames, mulFactor, base, idleFrameWidth, 0, 0, 1);
}

void animateFrame(unsigned int spriteIndex, unsigned int frame, struct AnimationFrame animationFrames[], float mulFactor, unsigned int base, int idleFrameWidth, int positionX, int positionY, int direction) {

    if (positionX == 0)
    {
        positionX = sprite[spriteIndex].x_;
    }

    if (positionY == 0)
    {
        positionY = sprite[spriteIndex].y_;
    }

    sprite[spriteIndex].width = animationFrames[frame].width;
    sprite[spriteIndex].height = animationFrames[frame].height;
    sprite[spriteIndex].bytewid = animationFrames[frame].width * mulFactor;
    sprite[spriteIndex].framesz = animationFrames[frame].width * animationFrames[frame].height * mulFactor;
    sprite[spriteIndex].gfxbase = base + (animationFrames[frame].x * mulFactor) + (animationFrames[frame].y * sprite[spriteIndex].gwidth);
    sprite[spriteIndex].x_ = positionX + (animationFrames[frame].offsetX * direction);

    tempY = positionY + (animationFrames[frame].offsetY);

    if (tempY < 0)
    {
        tempY = 0;
    }
    
    sprite[spriteIndex].y_ = tempY;

    if (direction == -1)// && spriteIndex != P1_PROJECTILE && spriteIndex != P1_PROJECTILE + 1)
    {
        //player 2, so we have to factor the idleFrameWidth into the offset
        sprite[spriteIndex].x_ -= animationFrames[frame].width - idleFrameWidth;
    }
}

void setFrame(unsigned int spriteIndex, short width, short height, short x, short y, float mulFactor, unsigned int base)
{
    sprite[spriteIndex].width = width;
    sprite[spriteIndex].height =  height;
    sprite[spriteIndex].bytewid = width * mulFactor;
    sprite[spriteIndex].framesz = width * height * mulFactor;
    sprite[spriteIndex].gfxbase = base + (x * mulFactor) + (y * sprite[spriteIndex].gwidth);
}

void setAnimationFrame(unsigned int spriteIndex, SpriteAnimator *animator, struct AnimationFrame* animationFrame, int x, int y, int direction)
{
    setFrame(spriteIndex, animationFrame->width, animationFrame->height, animationFrame->x, animationFrame->y, animator->mulFactor, animator->base);
    sprite[spriteIndex].x_ = x + (animationFrame->offsetX * direction);
    
    tempY = y + (animationFrame->offsetY);

    if (tempY < 0)
    {
        tempY = 0;
    }
    
    sprite[spriteIndex].y_ = tempY;

    if (direction == -1)
    {
        sprite[spriteIndex].x_ -= animationFrame->width - FIGHTER_WIDTH;
    }
}

short getAnimationFrameWidth(struct AnimationFrame animationFrames[], short currentFrame)
{
    return animationFrames[currentFrame].width;
}

bool animationIsComplete(struct SpriteAnimator *animator, short totalFrames)
{
    if (animator->currentFrame >= totalFrames - 1)
        return true;
    else
        return false;
}

void updateSpriteAnimator(struct SpriteAnimator *animator, struct AnimationFrame animationFrames[], short totalFrames, bool playForward, bool loop)
{
    updateSpriteAnimator(animator, animationFrames, totalFrames, playForward, loop, 0, 0, 1);
}

void updateSpriteAnimator(struct SpriteAnimator *animator, struct AnimationFrame animationFrames[], short totalFrames, bool playForward, bool loop, short positionX, short positionY, short direction)
{
    animator->currentAnimationFrame = &animationFrames[animator->currentFrame];
    //animateFrame(animator->spriteIndex, animator->currentFrame, animationFrames, animator->mulFactor, animator->base, animator->idleFrameWidth, positionX, positionY, direction);
    animateFrame(animator->spriteIndex, animator->currentFrame, animationFrames, animator->mulFactor, animator->base, FIGHTER_WIDTH, positionX, positionY, direction);

    if (rapTicks >= animator->lastTick + animationFrames[animator->currentFrame].ticks)
    {
        if (!playForward)
        {
            animator->currentFrame--;

            if (animator->currentFrame < 0)
            {
                if (loop)
                {
                    animator->currentFrame = totalFrames - 1;
                }
                else
                {
                    animator->currentFrame = 0;
                }
            }
        }
        else
        {
            animator->currentFrame++;

            if (animator->currentFrame >= totalFrames)
            {
                if (loop)
                {
                    animator->currentFrame = 0;
                }
                else
                {
                    animator->currentFrame = totalFrames - 1;
                }
            }
        }

        animator->lastTick = rapTicks;
    }
}


                
                // js_r_textbuffer = (char *)"Restart animation!";
                // jsfDebugMessage();