void matchInit();
void matchReset();
bool matchUpdate(struct SoundHandler* soundHandler, struct StateMachine* stateMachine, struct Fighter* fighter1, struct Fighter* fighter2);
bool matchIsComplete();
int matchGetFighter1Wins();
int matchGetFighter2Wins();
void matchResetTicks();
void matchPrepForFatality();