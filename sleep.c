#include "common.h"

bool isSleeping = false;
int lastTick = 0;
int totalSleepTicks = 0;

void sleepInit()
{
    isSleeping = false;
    lastTick = 0;
    totalSleepTicks = 0;
}

bool sleepCheck()
{
    if (isSleeping && rapTicks >= lastTick + totalSleepTicks)
    {
        isSleeping = false;
    }
    
    return isSleeping;
}

void sleepAdd(int totalTicks)
{
    isSleeping = true;
    lastTick = rapTicks;
    totalSleepTicks = totalTicks;
}

void sleep(int ticks)
{
    for (int i = 0; i < ticks; i++)
    {
        jsfVsync(0);
    }
}